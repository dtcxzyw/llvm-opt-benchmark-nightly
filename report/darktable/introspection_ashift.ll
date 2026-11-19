Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_do_get_structure_auto:bb.a
  store i32 %i.bhw, ptr %i.bhv, align 4, !tbaa !17
  %i.bhx = getelementptr inbounds [4 x i8], ptr %i.bdh, i64 %i.bhu
  store i32 0, ptr %i.bhx, align 4, !tbaa !17
  %i.bhy = add nsw i32 %.197.i, 1
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.197.i.1 = phi i32 [ %.197.i, %bb.go ], [ %i.bhy, %bb.gp ] ; 3 uses
  %indvars.iv.next28.i.1 = add nuw nsw i64 %indvars.iv27.i, 2 ; 2 uses
  %niter273.next.1 = add i64 %niter273, 2         ; 2 uses
  %niter273.ncmp.1 = icmp eq i64 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %._crit_edge13.i.unr-lcssa, label %bb.gm

.thread43.i:                                      ; preds = %._crit_edge13.i
  %i.bhz = getelementptr inbounds nuw i8, ptr %.val, i64 236
  %i.bia = load float, ptr %i.bhz, align 4, !tbaa !233
  tail call fastcc void @ransac(ptr noundef nonnull %i.bex, ptr noundef %i.bdg, ptr noundef %i.bdh, i32 noundef %.197.i.lcssa, float noundef %i.bia, i32 noundef %i.bcw, i32 noundef %i.bcz, i32 noundef %i.bcy, i32 noundef %i.bda)
  %.pre20 = load ptr, ptr %i.bdk, align 8, !tbaa !179
  br label %.lr.ph18.preheader.i

bb.gr:                                            ; preds = %._crit_edge13.i
  %i.bib = icmp sgt i32 %.197.i.lcssa, 0
  br i1 %i.bib, label %.lr.ph18.preheader.i, label %._crit_edge19.i

.lr.ph18.preheader.i:                             ; preds = %bb.gr, %.thread43.i
  %i.bic = phi ptr [ %i.bex, %bb.gr ], [ %.pre20, %.thread43.i ] ; 5 uses
  %wide.trip.count35.i = zext nneg i32 %.197.i.lcssa to i64 ; 2 uses
  %xtraiter274 = and i64 %wide.trip.count35.i, 3  ; 3 uses
  %i.bid = add i32 %.197.i.lcssa, -1
  %i.bie = icmp ult i32 %i.bid, 3
  br i1 %i.bie, label %.lr.ph18.i.epil.preheader, label %.lr.ph18.preheader.i.new

.lr.ph18.preheader.i.new:                         ; preds = %.lr.ph18.preheader.i
  %unroll_iter279 = and i64 %wide.trip.count35.i, 2147483644
  br label %.lr.ph18.i

._crit_edge19.i.loopexit.unr-lcssa:               ; preds = %.lr.ph18.i
  %lcmp.mod276.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod276.not, label %._crit_edge19.i.loopexit, label %.lr.ph18.i.epil.preheader

.lr.ph18.i.epil.preheader:                        ; preds = %._crit_edge19.i.loopexit.unr-lcssa, %.lr.ph18.preheader.i
  %indvars.iv32.i.epil.init = phi i64 [ 0, %.lr.ph18.preheader.i ], [ %indvars.iv.next33.i.3, %._crit_edge19.i.loopexit.unr-lcssa ]
  %.09515.i.epil.init = phi i32 [ 0, %.lr.ph18.preheader.i ], [ %.1.i.3, %._crit_edge19.i.loopexit.unr-lcssa ]
  %lcmp.mod278 = icmp ne i64 %xtraiter274, 0
  tail call void @llvm.assume(i1 %lcmp.mod278)
  br label %.lr.ph18.i.epil

.lr.ph18.i.epil:                                  ; preds = %.lr.ph18.i.epil, %.lr.ph18.i.epil.preheader
  %indvars.iv32.i.epil = phi i64 [ %indvars.iv32.i.epil.init, %.lr.ph18.i.epil.preheader ], [ %indvars.iv.next33.i.epil, %.lr.ph18.i.epil ] ; 3 uses
  %.09515.i.epil = phi i32 [ %.09515.i.epil.init, %.lr.ph18.i.epil.preheader ], [ %.1.i.epil, %.lr.ph18.i.epil ]
  %epil.iter275 = phi i64 [ 0, %.lr.ph18.i.epil.preheader ], [ %epil.iter275.next, %.lr.ph18.i.epil ]
  %i.bif = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %indvars.iv32.i.epil
  %i.big = load i32, ptr %i.bif, align 4, !tbaa !17
  %i.bih = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %indvars.iv32.i.epil
  %i.bii = load i32, ptr %i.bih, align 4, !tbaa !17
  %i.bij = icmp eq i32 %i.bii, 1                  ; 2 uses
  %i.bik = sext i32 %i.big to i64
  %i.bil = getelementptr inbounds [64 x i8], ptr %i.bic, i64 %i.bik
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bil, i64 36 ; 2 uses
  %i.bin = load i32, ptr %i.bim, align 4, !tbaa !189
  %i.bio = and i32 %i.bin, -5
  %masksel145.epil = select i1 %i.bij, i32 4, i32 0
  %.sink18.epil = or disjoint i32 %i.bio, %masksel145.epil
  %i.bip = zext i1 %i.bij to i32
  %.1.i.epil = add nuw nsw i32 %.09515.i.epil, %i.bip ; 2 uses
  store i32 %.sink18.epil, ptr %i.bim, align 4, !tbaa !189
  %indvars.iv.next33.i.epil = add nuw nsw i64 %indvars.iv32.i.epil, 1
  %epil.iter275.next = add i64 %epil.iter275, 1   ; 2 uses
  %epil.iter275.cmp.not = icmp eq i64 %epil.iter275.next, %xtraiter274
  br i1 %epil.iter275.cmp.not, label %._crit_edge19.i.loopexit, label %.lr.ph18.i.epil, !llvm.loop !539

._crit_edge19.i.loopexit:                         ; preds = %.lr.ph18.i.epil, %._crit_edge19.i.loopexit.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.3, %._crit_edge19.i.loopexit.unr-lcssa ], [ %.1.i.epil, %.lr.ph18.i.epil ]
  %.pre21 = load i32, ptr %i.bfa, align 4, !tbaa !183
  br label %._crit_edge19.i

._crit_edge19.i:                                  ; preds = %._crit_edge19.i.loopexit, %bb.gr, %._crit_edge7.i
  %i.biq = phi i32 [ %i.bfc, %bb.gr ], [ %i.bfc, %._crit_edge7.i ], [ %.pre21, %._crit_edge19.i.loopexit ]
  %.095.lcssa.i = phi i32 [ 0, %bb.gr ], [ 0, %._crit_edge7.i ], [ %.1.i.lcssa, %._crit_edge19.i.loopexit ]
  %i.bir = getelementptr inbounds nuw i8, ptr %.val, i64 224
  store i32 %.095.lcssa.i, ptr %i.bir, align 8, !tbaa !232
  %i.bis = add nsw i32 %i.biq, 1
  store i32 %i.bis, ptr %i.bfa, align 4, !tbaa !183
  tail call void @free(ptr noundef %i.bdh) #34
  tail call void @free(ptr noundef %i.bdg) #34
  br label %_remove_outliers.exit.thread

.lr.ph18.i:                                       ; preds = %.lr.ph18.i, %.lr.ph18.preheader.i.new
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph18.preheader.i.new ], [ %indvars.iv.next33.i.3, %.lr.ph18.i ] ; 6 uses
  %.09515.i = phi i32 [ 0, %.lr.ph18.preheader.i.new ], [ %.1.i.3, %.lr.ph18.i ]
  %niter280 = phi i64 [ 0, %.lr.ph18.preheader.i.new ], [ %niter280.next.3, %.lr.ph18.i ]
  %i.bit = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %indvars.iv32.i
  %i.biu = load i32, ptr %i.bit, align 4, !tbaa !17
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %indvars.iv32.i
  %i.biw = load i32, ptr %i.biv, align 4, !tbaa !17
  %i.bix = icmp eq i32 %i.biw, 1                  ; 2 uses
  %i.biy = sext i32 %i.biu to i64
  %i.biz = getelementptr inbounds [64 x i8], ptr %i.bic, i64 %i.biy
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biz, i64 36 ; 2 uses
  %i.bjb = load i32, ptr %i.bja, align 4, !tbaa !189
  %i.bjc = and i32 %i.bjb, -5
  %masksel145 = select i1 %i.bix, i32 4, i32 0
  %.sink18 = or disjoint i32 %i.bjc, %masksel145
  %i.bjd = zext i1 %i.bix to i32
  %.1.i = add nuw nsw i32 %.09515.i, %i.bjd
  store i32 %.sink18, ptr %i.bja, align 4, !tbaa !189
  %indvars.iv.next33.i = or disjoint i64 %indvars.iv32.i, 1 ; 2 uses
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %indvars.iv.next33.i
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !17
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %indvars.iv.next33.i
  %i.bjh = load i32, ptr %i.bjg, align 4, !tbaa !17
  %i.bji = icmp eq i32 %i.bjh, 1                  ; 2 uses
  %i.bjj = sext i32 %i.bjf to i64
  %i.bjk = getelementptr inbounds [64 x i8], ptr %i.bic, i64 %i.bjj
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 36 ; 2 uses
  %i.bjm = load i32, ptr %i.bjl, align 4, !tbaa !189
  %i.bjn = and i32 %i.bjm, -5
  %masksel145.1 = select i1 %i.bji, i32 4, i32 0
  %.sink18.1 = or disjoint i32 %i.bjn, %masksel145.1
  %i.bjo = zext i1 %i.bji to i32
  %.1.i.1 = add nuw nsw i32 %.1.i, %i.bjo
  store i32 %.sink18.1, ptr %i.bjl, align 4, !tbaa !189
  %indvars.iv.next33.i.1 = or disjoint i64 %indvars.iv32.i, 2 ; 2 uses
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %indvars.iv.next33.i.1
  %i.bjq = load i32, ptr %i.bjp, align 4, !tbaa !17
  %i.bjr = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %indvars.iv.next33.i.1
  %i.bjs = load i32, ptr %i.bjr, align 4, !tbaa !17
  %i.bjt = icmp eq i32 %i.bjs, 1                  ; 2 uses
  %i.bju = sext i32 %i.bjq to i64
  %i.bjv = getelementptr inbounds [64 x i8], ptr %i.bic, i64 %i.bju
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 36 ; 2 uses
  %i.bjx = load i32, ptr %i.bjw, align 4, !tbaa !189
  %i.bjy = and i32 %i.bjx, -5
  %masksel145.2 = select i1 %i.bjt, i32 4, i32 0
  %.sink18.2 = or disjoint i32 %i.bjy, %masksel145.2
  %i.bjz = zext i1 %i.bjt to i32
  %.1.i.2 = add nuw nsw i32 %.1.i.1, %i.bjz
  store i32 %.sink18.2, ptr %i.bjw, align 4, !tbaa !189
  %indvars.iv.next33.i.2 = or disjoint i64 %indvars.iv32.i, 3 ; 2 uses
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %indvars.iv.next33.i.2
  %i.bkb = load i32, ptr %i.bka, align 4, !tbaa !17
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %i.bdh, i64 %indvars.iv.next33.i.2
  %i.bkd = load i32, ptr %i.bkc, align 4, !tbaa !17
  %i.bke = icmp eq i32 %i.bkd, 1                  ; 2 uses
  %i.bkf = sext i32 %i.bkb to i64
  %i.bkg = getelementptr inbounds [64 x i8], ptr %i.bic, i64 %i.bkf
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 36 ; 2 uses
  %i.bki = load i32, ptr %i.bkh, align 4, !tbaa !189
  %i.bkj = and i32 %i.bki, -5
  %masksel145.3 = select i1 %i.bke, i32 4, i32 0
  %.sink18.3 = or disjoint i32 %i.bkj, %masksel145.3
  %i.bkk = zext i1 %i.bke to i32
  %.1.i.3 = add nuw nsw i32 %.1.i.2, %i.bkk       ; 3 uses
  store i32 %.sink18.3, ptr %i.bkh, align 4, !tbaa !189
  %indvars.iv.next33.i.3 = add nuw nsw i64 %indvars.iv32.i, 4 ; 2 uses
  %niter280.next.3 = add i64 %niter280, 4         ; 2 uses
  %niter280.ncmp.3 = icmp eq i64 %niter280.next.3, %unroll_iter279
  br i1 %niter280.ncmp.3, label %._crit_edge19.i.loopexit.unr-lcssa, label %.lr.ph18.i

_remove_outliers.exit:                            ; preds = %bb.gg, %bb.gh
  tail call void @free(ptr noundef %i.bdh) #34
  tail call void @free(ptr noundef %i.bdg) #34
  %i.bkl = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.107, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.bkl) #34
  br label %_remove_outliers.exit.thread

_remove_outliers.exit.thread:                     ; preds = %._crit_edge19.i, %bb.gf, %bb.c, %bb.ge, %_remove_outliers.exit
  %.0 = phi i32 [ 1, %._crit_edge19.i ], [ 0, %_remove_outliers.exit ], [ 0, %bb.ge ], [ 0, %bb.c ], [ 1, %bb.gf ]
  store i32 0, ptr %i.f, align 4, !tbaa !178
  br label %bb.gs

bb.gs:                                            ; preds = %bb.a, %_remove_outliers.exit.thread
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
  %5 = add nuw nsw i64 %wide.trip.count, 2305843009213693950
  %6 = mul i64 %5, %i.d
  %i.j = add nsw i32 %2, -3
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %7 = shl nuw nsw i64 %i.k, 3                    ; 2 uses
  %8 = add i64 %6, %i.k
  %i.l = shl i64 %8, 3
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.m, i64 24
  %i.n = shl nuw nsw i64 %wide.trip.count, 3
  %9 = add nsw i64 %i.n, -8
  %10 = mul i64 %9, %i.d                          ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %10
  %i.p = getelementptr i8, ptr %i.o, i64 %7
  %scevgep202 = getelementptr i8, ptr %i.p, i64 24
  %11 = shl nuw nsw i64 %i.d, 3                   ; 2 uses
  %scevgep203 = getelementptr i8, ptr %0, i64 %11
  %12 = mul nuw nsw i64 %i.d, %wide.trip.count
  %13 = add nuw i64 %12, %i.k
  %i.q = shl i64 %13, 3
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %scevgep204.a = getelementptr i8, ptr %i.r, i64 24
  %14 = shl nuw nsw i64 %i.d, 4
  %scevgep205 = getelementptr i8, ptr %0, i64 %14
  %i.s = getelementptr i8, ptr %1, i64 %10
  %i.t = getelementptr i8, ptr %i.s, i64 %7
  %scevgep206 = getelementptr i8, ptr %i.t, i64 16 ; 3 uses
  %i.u = getelementptr i8, ptr %1, i64 %11
  %scevgep207 = getelementptr i8, ptr %i.u, i64 8 ; 3 uses
  %i.v = zext i32 %i.i to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 4
  %bound0 = icmp ult ptr %scevgep207, %scevgep204.a
  %bound1 = icmp ult ptr %scevgep205, %scevgep206
  %found.conflict = and i1 %bound0, %bound1
  %bound0208 = icmp ult ptr %scevgep207, %scevgep202
  %bound1209 = icmp ult ptr %scevgep203, %scevgep206
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx = or i1 %found.conflict, %found.conflict210
  %bound0211 = icmp ult ptr %scevgep207, %scevgep
  %bound1212 = icmp ult ptr %0, %scevgep206
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx214 = or i1 %conflict.rdx, %found.conflict213
  %n.vec = and i64 %i.v, 4294967292               ; 4 uses
  %i.w = shl nuw nsw i64 %n.vec, 3                ; 2 uses
  %i.x = trunc nuw i64 %n.vec to i32
  %i.y = or disjoint i32 %i.x, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %.sroa.speculated174, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert215 = insertelement <4 x double> poison, double %.sroa.speculated170, i64 0
  %broadcast.splat216 = shufflevector <4 x double> %broadcast.splatinsert215, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert217 = insertelement <4 x double> poison, double %.sroa.speculated166, i64 0
  %broadcast.splat218 = shufflevector <4 x double> %broadcast.splatinsert217, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert219 = insertelement <4 x double> poison, double %.sroa.speculated162, i64 0
  %broadcast.splat220 = shufflevector <4 x double> %broadcast.splatinsert219, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br label %.preheader88.lr.ph

.preheader87:                                     ; preds = %._crit_edge, %bb.a
  %i.z = icmp sgt i32 %3, 0
  br i1 %i.z, label %.preheader.lr.ph, label %._crit_edge112.split

.preheader.lr.ph:                                 ; preds = %.lr.ph, %.preheader87
  %i.aa = icmp sgt i32 %2, 0
  %i.ab = sext i32 %2 to i64                      ; 3 uses
  %i.ac = add nsw i32 %2, -1                      ; 2 uses
  br i1 %i.aa, label %.preheader.preheader, label %._crit_edge112.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ad = zext nneg i32 %i.b to i64
  %wide.trip.count137 = zext i32 %3 to i64
  %wide.trip.count132 = zext nneg i32 %2 to i64   ; 2 uses
  %diff.check = icmp ult i32 %2, 16
  %i.ae = and i32 %2, 12
  %n.vec273 = and i32 %2, 2147483632              ; 4 uses
  %cmp.n282 = icmp eq i32 %2, %n.vec273
  %min.epilog.iters.check286 = icmp eq i32 %i.ae, 0
  %n.vec289 = and i32 %2, 2147483644              ; 3 uses
  %cmp.n295 = icmp eq i32 %2, %n.vec289
  %xtraiter = and i64 %wide.trip.count132, 7      ; 3 uses
  %i.af = icmp ult i32 %2, 8
  %unroll_iter = and i64 %wide.trip.count132, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod299 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader88.lr.ph:                               ; preds = %.preheader88.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 1, %.preheader88.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ag = mul nuw nsw i64 %indvars.iv, %i.d       ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ag ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx214
  br i1 %brmerge, label %.preheader88.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader88.lr.ph
  %i.aj = getelementptr i8, ptr %i.ah, i64 %i.w
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.al ; 3 uses
  %next.gep221 = getelementptr i8, ptr %i.ai, i64 %i.al
  %i.am = getelementptr i8, ptr %next.gep, i64 8  ; 5 uses
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.f
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  %wide.load = load <4 x double>, ptr %i.ao, align 8, !tbaa !166, !alias.scope !564
  %i.ap = getelementptr [8 x i8], ptr %i.am, i64 %i.g
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  %wide.load222 = load <4 x double>, ptr %i.aq, align 8, !tbaa !166, !alias.scope !564
  %i.ar = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat, %wide.load222
  %i.as = fadd reassoc nsz arcp contract afn <4 x double> %i.ar, %wide.load
  %i.at = getelementptr [8 x i8], ptr %i.am, i64 %i.h
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %wide.load223 = load <4 x double>, ptr %i.au, align 8, !tbaa !166, !alias.scope !564 ; 2 uses
  %i.av = fneg reassoc nsz arcp contract afn <4 x double> %wide.load223
  %i.aw = select reassoc nsz arcp contract afn i1 %i.a, <4 x double> %i.av, <4 x double> %wide.load223
  %i.ax = fadd reassoc nsz arcp contract afn <4 x double> %i.aw, %i.as
  %wide.load224 = load <4 x double>, ptr %next.gep, align 8, !tbaa !166, !alias.scope !565
  %i.ay = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat216, %wide.load224
  %i.az = fadd reassoc nsz arcp contract afn <4 x double> %i.ay, %i.ax
  %wide.load225 = load <4 x double>, ptr %i.am, align 8, !tbaa !166, !alias.scope !565
  %i.ba = fmul reassoc nsz arcp contract afn <4 x double> %wide.load225, zeroinitializer
  %i.bb = fadd reassoc nsz arcp contract afn <4 x double> %i.ba, %i.az
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load226 = load <4 x double>, ptr %i.bc, align 8, !tbaa !166, !alias.scope !565
  %i.bd = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat218, %wide.load226
  %i.be = fadd reassoc nsz arcp contract afn <4 x double> %i.bd, %i.bb
  %i.bf = getelementptr [8 x i8], ptr %i.am, i64 %i.d ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %wide.load227 = load <4 x double>, ptr %i.bg, align 8, !tbaa !166, !alias.scope !566 ; 2 uses
  %i.bh = fneg reassoc nsz arcp contract afn <4 x double> %wide.load227
  %i.bi = select reassoc nsz arcp contract afn i1 %i.a, <4 x double> %wide.load227, <4 x double> %i.bh
  %i.bj = fadd reassoc nsz arcp contract afn <4 x double> %i.bi, %i.be
  %wide.load228 = load <4 x double>, ptr %i.bf, align 8, !tbaa !166, !alias.scope !566
  %i.bk = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat220, %wide.load228
  %i.bl = fadd reassoc nsz arcp contract afn <4 x double> %i.bk, %i.bj
  %i.bm = getelementptr i8, ptr %i.bf, i64 8
  %wide.load229 = load <4 x double>, ptr %i.bm, align 8, !tbaa !166, !alias.scope !566
  %i.bn = fsub reassoc nsz arcp contract afn <4 x double> %i.bl, %wide.load229
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep221, i64 8
  store <4 x double> %i.bn, ptr %i.bo, align 8, !tbaa !166, !alias.scope !567, !noalias !568
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !557

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.preheader88.preheader

.preheader88.preheader:                           ; preds = %.preheader88.lr.ph, %middle.block
  %.pn.ph = phi ptr [ %i.aj, %middle.block ], [ %i.ah, %.preheader88.lr.ph ]
  %.pn115.ph = phi ptr [ %i.ak, %middle.block ], [ %i.ai, %.preheader88.lr.ph ]
  %.07995.ph = phi i32 [ %i.y, %middle.block ], [ 1, %.preheader88.lr.ph ]
  br label %.preheader88

.preheader88:                                     ; preds = %.preheader88.preheader, %.preheader88
  %.pn = phi ptr [ %.08197, %.preheader88 ], [ %.pn.ph, %.preheader88.preheader ] ; 4 uses
  %.pn115 = phi ptr [ %.08096, %.preheader88 ], [ %.pn115.ph, %.preheader88.preheader ]
  %.07995 = phi i32 [ %i.dd, %.preheader88 ], [ %.07995.ph, %.preheader88.preheader ] ; 2 uses
  %.08197 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 7 uses
  %i.bq = getelementptr [8 x i8], ptr %.08197, i64 %i.f
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !166
  %i.bt = getelementptr [8 x i8], ptr %.08197, i64 %i.g
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !166
  %i.bw = fmul reassoc nsz arcp contract afn double %.sroa.speculated174, %i.bv
  %i.bx = fadd reassoc nsz arcp contract afn double %i.bw, %i.bs
  %i.by = getelementptr [8 x i8], ptr %.08197, i64 %i.h
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !166 ; 2 uses
  %i.cb = fneg reassoc nsz arcp contract afn double %i.ca
  %i.cc = select reassoc nsz arcp contract afn i1 %i.a, double %i.cb, double %i.ca
  %i.cd = fadd reassoc nsz arcp contract afn double %i.cc, %i.bx
  %i.ce = load double, ptr %.pn, align 8, !tbaa !166
  %i.cf = fmul reassoc nsz arcp contract afn double %.sroa.speculated170, %i.ce
  %i.cg = fadd reassoc nsz arcp contract afn double %i.cf, %i.cd
  %i.ch = getelementptr i8, ptr %.pn, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !166
  %i.cj = fmul reassoc nsz arcp contract afn double %i.ci, 0.000000e+00
  %i.ck = fadd reassoc nsz arcp contract afn double %i.cj, %i.cg
  %i.cl = getelementptr i8, ptr %.pn, i64 16
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !166
  %i.cn = fmul reassoc nsz arcp contract afn double %.sroa.speculated166, %i.cm
  %i.co = fadd reassoc nsz arcp contract afn double %i.cn, %i.ck
  %i.cp = getelementptr [8 x i8], ptr %.08197, i64 %i.d
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !166 ; 2 uses
  %i.cs = fneg reassoc nsz arcp contract afn double %i.cr
  %i.ct = select reassoc nsz arcp contract afn i1 %i.a, double %i.cr, double %i.cs
  %i.cu = fadd reassoc nsz arcp contract afn double %i.ct, %i.co
  %i.cv = getelementptr [8 x i8], ptr %.08197, i64 %i.d
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !166
  %i.cx = fmul reassoc nsz arcp contract afn double %.sroa.speculated162, %i.cw
  %i.cy = fadd reassoc nsz arcp contract afn double %i.cx, %i.cu
  %i.cz = getelementptr [8 x i8], ptr %.08197, i64 %i.d
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %i.db = load double, ptr %i.da, align 8, !tbaa !166
  %i.dc = fsub reassoc nsz arcp contract afn double %i.cy, %i.db
  %.08096 = getelementptr inbounds nuw i8, ptr %.pn115, i64 8 ; 2 uses
  store double %i.dc, ptr %.08096, align 8, !tbaa !166
  %i.dd = add nuw nsw i32 %.07995, 1
  %exitcond.not = icmp eq i32 %.07995, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.preheader88, !llvm.loop !558

._crit_edge:                                      ; preds = %.preheader88, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond123.not, label %.preheader87, label %.preheader88.lr.ph

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge102
  %indvars.iv134 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next135, %._crit_edge102 ] ; 6 uses
  %i.de = mul nuw nsw i64 %indvars.iv134, %i.ab
  %i.df = getelementptr [8 x i8], ptr %1, i64 %i.de ; 15 uses
  %.not = icmp eq i64 %indvars.iv134, 0
  %i.dg = add nsw i64 %indvars.iv134, -1
  %i.dh = mul nuw nsw i64 %i.dg, %i.ab
  %i.di = getelementptr [8 x i8], ptr %1, i64 %i.dh ; 3 uses
  %i.dj = sub nuw nsw i64 1, %indvars.iv134
  %i.dk = mul nuw nsw i64 %i.dj, %i.ab
  %i.dl = getelementptr [8 x i8], ptr %1, i64 %i.dk ; 9 uses
  %i.dm = icmp samesign ult i64 %indvars.iv134, %i.ad ; 2 uses
  %spec.select = select i1 %i.dm, i32 %i.ac, i32 1
  br i1 %.not, label %iter.check, label %.lr.ph101.split

iter.check:                                       ; preds = %.preheader
  br i1 %i.af, label %.lr.ph101.split.us.split.us.epil.preheader, label %.lr.ph101.split.us.split.us

.lr.ph101.split.us.split.us:                      ; preds = %iter.check, %.lr.ph101.split.us.split.us
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.7, %.lr.ph101.split.us.split.us ], [ 0, %iter.check ] ; 10 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph101.split.us.split.us ], [ 0, %iter.check ]
  %i.dn = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv129
end_hunk_0
