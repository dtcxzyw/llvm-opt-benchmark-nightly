Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_do_get_structure_auto:bb.a

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
  br i1 %epil.iter275.cmp.not, label %._crit_edge19.i.loopexit, label %.lr.ph18.i.epil, !llvm.loop !540

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
  %i.j = mul nuw nsw i64 %i.d, %wide.trip.count
  %i.k = add nsw i32 %2, -3
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.n = add nuw i64 %i.j, %i.l
  %i.o = shl i64 %i.n, 3
  %5 = getelementptr i8, ptr %0, i64 %i.o
  %i.p = getelementptr i8, ptr %5, i64 24
  %6 = shl nuw nsw i64 %i.d, 4
  %scevgep = getelementptr i8, ptr %0, i64 %6
  %i.q = shl nuw nsw i64 %wide.trip.count, 3
  %i.r = add nsw i64 %i.q, -8
  %i.s = mul i64 %i.r, %i.d                       ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 %i.m
  %scevgep202 = getelementptr i8, ptr %i.u, i64 24
  %i.v = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %scevgep203 = getelementptr i8, ptr %0, i64 %i.v
  %7 = add nuw nsw i64 %wide.trip.count, 2305843009213693950
  %i.w = mul i64 %7, %i.d
  %i.x = add i64 %i.w, %i.l
  %i.y = shl i64 %i.x, 3
  %scevgep204 = getelementptr i8, ptr %0, i64 %i.y
  %scevgep205 = getelementptr i8, ptr %scevgep204, i64 24
  %i.z = getelementptr i8, ptr %1, i64 %i.s
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.m
  %scevgep206 = getelementptr i8, ptr %i.aa, i64 16 ; 3 uses
  %i.ab = getelementptr i8, ptr %1, i64 %i.v
  %scevgep207 = getelementptr i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ac = zext i32 %i.i to i64                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 4
  %bound0 = icmp ult ptr %scevgep207, %scevgep205
  %bound1 = icmp ult ptr %0, %scevgep206
  %found.conflict = and i1 %bound0, %bound1
  %bound0208 = icmp ult ptr %scevgep207, %scevgep202
  %bound1209 = icmp ult ptr %scevgep203, %scevgep206
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx = or i1 %found.conflict, %found.conflict210
  %bound0211 = icmp ult ptr %scevgep207, %i.p
  %bound1212 = icmp ult ptr %scevgep, %scevgep206
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx214 = or i1 %conflict.rdx, %found.conflict213
  %n.vec = and i64 %i.ac, 4294967292              ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ae = trunc nuw i64 %n.vec to i32
  %i.af = or disjoint i32 %i.ae, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %.sroa.speculated174, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert215 = insertelement <4 x double> poison, double %.sroa.speculated170, i64 0
  %broadcast.splat216 = shufflevector <4 x double> %broadcast.splatinsert215, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert217 = insertelement <4 x double> poison, double %.sroa.speculated166, i64 0
  %broadcast.splat218 = shufflevector <4 x double> %broadcast.splatinsert217, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert219 = insertelement <4 x double> poison, double %.sroa.speculated162, i64 0
  %broadcast.splat220 = shufflevector <4 x double> %broadcast.splatinsert219, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br label %.preheader88.lr.ph

.preheader87:                                     ; preds = %._crit_edge, %bb.a
  %i.ag = icmp sgt i32 %3, 0
  br i1 %i.ag, label %.preheader.lr.ph, label %._crit_edge112.split

.preheader.lr.ph:                                 ; preds = %.lr.ph, %.preheader87
  %i.ah = icmp sgt i32 %2, 0
  %i.ai = sext i32 %2 to i64                      ; 3 uses
  %i.aj = add nsw i32 %2, -1                      ; 2 uses
  br i1 %i.ah, label %.preheader.preheader, label %._crit_edge112.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ak = zext nneg i32 %i.b to i64
  %wide.trip.count137 = zext i32 %3 to i64
  %wide.trip.count132 = zext nneg i32 %2 to i64   ; 2 uses
  %diff.check = icmp ult i32 %2, 16
  %i.al = and i32 %2, 12
  %n.vec273 = and i32 %2, 2147483632              ; 4 uses
  %cmp.n282 = icmp eq i32 %2, %n.vec273
  %min.epilog.iters.check286 = icmp eq i32 %i.al, 0
  %n.vec289 = and i32 %2, 2147483644              ; 3 uses
  %cmp.n295 = icmp eq i32 %2, %n.vec289
  %xtraiter = and i64 %wide.trip.count132, 7      ; 3 uses
  %i.am = icmp ult i32 %2, 8
  %unroll_iter = and i64 %wide.trip.count132, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod299 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader88.lr.ph:                               ; preds = %.preheader88.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 1, %.preheader88.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.an = mul nuw nsw i64 %indvars.iv, %i.d       ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx214
  br i1 %brmerge, label %.preheader88.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader88.lr.ph
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ad
  %i.ar = getelementptr i8, ptr %i.ap, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.as ; 3 uses
  %next.gep221 = getelementptr i8, ptr %i.ap, i64 %i.as
  %i.at = getelementptr i8, ptr %next.gep, i64 8  ; 5 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.f
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %wide.load = load <4 x double>, ptr %i.av, align 8, !tbaa !166, !alias.scope !565
  %i.aw = getelementptr [8 x i8], ptr %i.at, i64 %i.g
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %wide.load222 = load <4 x double>, ptr %i.ax, align 8, !tbaa !166, !alias.scope !565
  %i.ay = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat, %wide.load222
  %i.az = fadd reassoc nsz arcp contract afn <4 x double> %i.ay, %wide.load
  %i.ba = getelementptr [8 x i8], ptr %i.at, i64 %i.h
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %wide.load223 = load <4 x double>, ptr %i.bb, align 8, !tbaa !166, !alias.scope !565 ; 2 uses
  %i.bc = fneg reassoc nsz arcp contract afn <4 x double> %wide.load223
  %i.bd = select reassoc nsz arcp contract afn i1 %i.a, <4 x double> %i.bc, <4 x double> %wide.load223
  %i.be = fadd reassoc nsz arcp contract afn <4 x double> %i.bd, %i.az
  %wide.load224 = load <4 x double>, ptr %next.gep, align 8, !tbaa !166, !alias.scope !566
  %i.bf = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat216, %wide.load224
  %i.bg = fadd reassoc nsz arcp contract afn <4 x double> %i.bf, %i.be
  %wide.load225 = load <4 x double>, ptr %i.at, align 8, !tbaa !166, !alias.scope !566
  %i.bh = fmul reassoc nsz arcp contract afn <4 x double> %wide.load225, zeroinitializer
  %i.bi = fadd reassoc nsz arcp contract afn <4 x double> %i.bh, %i.bg
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load226 = load <4 x double>, ptr %i.bj, align 8, !tbaa !166, !alias.scope !566
  %i.bk = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat218, %wide.load226
  %i.bl = fadd reassoc nsz arcp contract afn <4 x double> %i.bk, %i.bi
  %i.bm = getelementptr [8 x i8], ptr %i.at, i64 %i.d ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %wide.load227 = load <4 x double>, ptr %i.bn, align 8, !tbaa !166, !alias.scope !567 ; 2 uses
  %i.bo = fneg reassoc nsz arcp contract afn <4 x double> %wide.load227
  %i.bp = select reassoc nsz arcp contract afn i1 %i.a, <4 x double> %wide.load227, <4 x double> %i.bo
  %i.bq = fadd reassoc nsz arcp contract afn <4 x double> %i.bp, %i.bl
  %wide.load228 = load <4 x double>, ptr %i.bm, align 8, !tbaa !166, !alias.scope !567
  %i.br = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat220, %wide.load228
  %i.bs = fadd reassoc nsz arcp contract afn <4 x double> %i.br, %i.bq
  %i.bt = getelementptr i8, ptr %i.bm, i64 8
  %wide.load229 = load <4 x double>, ptr %i.bt, align 8, !tbaa !166, !alias.scope !567
  %i.bu = fsub reassoc nsz arcp contract afn <4 x double> %i.bs, %wide.load229
  %i.bv = getelementptr inbounds nuw i8, ptr %next.gep221, i64 8
  store <4 x double> %i.bu, ptr %i.bv, align 8, !tbaa !166, !alias.scope !568, !noalias !569
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !558

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.preheader88.preheader

.preheader88.preheader:                           ; preds = %.preheader88.lr.ph, %middle.block
  %.pn.ph = phi ptr [ %i.aq, %middle.block ], [ %i.ao, %.preheader88.lr.ph ]
  %.pn115.ph = phi ptr [ %i.ar, %middle.block ], [ %i.ap, %.preheader88.lr.ph ]
  %.07995.ph = phi i32 [ %i.af, %middle.block ], [ 1, %.preheader88.lr.ph ]
  br label %.preheader88

.preheader88:                                     ; preds = %.preheader88.preheader, %.preheader88
  %.pn = phi ptr [ %.08197, %.preheader88 ], [ %.pn.ph, %.preheader88.preheader ] ; 4 uses
  %.pn115 = phi ptr [ %.08096, %.preheader88 ], [ %.pn115.ph, %.preheader88.preheader ]
  %.07995 = phi i32 [ %i.dk, %.preheader88 ], [ %.07995.ph, %.preheader88.preheader ] ; 2 uses
  %.08197 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 7 uses
  %i.bx = getelementptr [8 x i8], ptr %.08197, i64 %i.f
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !166
  %i.ca = getelementptr [8 x i8], ptr %.08197, i64 %i.g
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !166
  %i.cd = fmul reassoc nsz arcp contract afn double %.sroa.speculated174, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn double %i.cd, %i.bz
  %i.cf = getelementptr [8 x i8], ptr %.08197, i64 %i.h
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !166 ; 2 uses
  %i.ci = fneg reassoc nsz arcp contract afn double %i.ch
  %i.cj = select reassoc nsz arcp contract afn i1 %i.a, double %i.ci, double %i.ch
  %i.ck = fadd reassoc nsz arcp contract afn double %i.cj, %i.ce
  %i.cl = load double, ptr %.pn, align 8, !tbaa !166
  %i.cm = fmul reassoc nsz arcp contract afn double %.sroa.speculated170, %i.cl
  %i.cn = fadd reassoc nsz arcp contract afn double %i.cm, %i.ck
  %i.co = getelementptr i8, ptr %.pn, i64 8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !166
  %i.cq = fmul reassoc nsz arcp contract afn double %i.cp, 0.000000e+00
  %i.cr = fadd reassoc nsz arcp contract afn double %i.cq, %i.cn
  %i.cs = getelementptr i8, ptr %.pn, i64 16
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !166
  %i.cu = fmul reassoc nsz arcp contract afn double %.sroa.speculated166, %i.ct
  %i.cv = fadd reassoc nsz arcp contract afn double %i.cu, %i.cr
  %i.cw = getelementptr [8 x i8], ptr %.08197, i64 %i.d
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !166 ; 2 uses
  %i.cz = fneg reassoc nsz arcp contract afn double %i.cy
  %i.da = select reassoc nsz arcp contract afn i1 %i.a, double %i.cy, double %i.cz
  %i.db = fadd reassoc nsz arcp contract afn double %i.da, %i.cv
  %i.dc = getelementptr [8 x i8], ptr %.08197, i64 %i.d
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !166
  %i.de = fmul reassoc nsz arcp contract afn double %.sroa.speculated162, %i.dd
  %i.df = fadd reassoc nsz arcp contract afn double %i.de, %i.db
  %i.dg = getelementptr [8 x i8], ptr %.08197, i64 %i.d
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %i.di = load double, ptr %i.dh, align 8, !tbaa !166
  %i.dj = fsub reassoc nsz arcp contract afn double %i.df, %i.di
  %.08096 = getelementptr inbounds nuw i8, ptr %.pn115, i64 8 ; 2 uses
  store double %i.dj, ptr %.08096, align 8, !tbaa !166
  %i.dk = add nuw nsw i32 %.07995, 1
  %exitcond.not = icmp eq i32 %.07995, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.preheader88, !llvm.loop !559

._crit_edge:                                      ; preds = %.preheader88, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond123.not, label %.preheader87, label %.preheader88.lr.ph

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge102
  %indvars.iv134 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next135, %._crit_edge102 ] ; 6 uses
  %i.dl = mul nuw nsw i64 %indvars.iv134, %i.ai
  %i.dm = getelementptr [8 x i8], ptr %1, i64 %i.dl ; 15 uses
  %.not = icmp eq i64 %indvars.iv134, 0
  %i.dn = add nsw i64 %indvars.iv134, -1
  %i.do = mul nuw nsw i64 %i.dn, %i.ai
  %i.dp = getelementptr [8 x i8], ptr %1, i64 %i.do ; 3 uses
  %i.dq = sub nuw nsw i64 1, %indvars.iv134
  %i.dr = mul nuw nsw i64 %i.dq, %i.ai
  %i.ds = getelementptr [8 x i8], ptr %1, i64 %i.dr ; 9 uses
  %i.dt = icmp samesign ult i64 %indvars.iv134, %i.ak ; 2 uses
  %spec.select = select i1 %i.dt, i32 %i.aj, i32 1
  br i1 %.not, label %iter.check, label %.lr.ph101.split

iter.check:                                       ; preds = %.preheader
  br i1 %i.am, label %.lr.ph101.split.us.split.us.epil.preheader, label %.lr.ph101.split.us.split.us

.lr.ph101.split.us.split.us:                      ; preds = %iter.check, %.lr.ph101.split.us.split.us
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.7, %.lr.ph101.split.us.split.us ], [ 0, %iter.check ] ; 10 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph101.split.us.split.us ], [ 0, %iter.check ]
  %i.du = getelementptr [8 x i8], ptr %i.dm, i64 %indvars.iv129
  %i.dv = getelementptr [8 x i8], ptr %i.ds, i64 %indvars.iv129
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !166
  store double %i.dw, ptr %i.du, align 8, !tbaa !166
  %indvars.iv.next130 = or disjoint i64 %indvars.iv129, 1 ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %i.dm, i64 %indvars.iv.next130
  %i.dy = getelementptr [8 x i8], ptr %i.ds, i64 %indvars.iv.next130
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !166
  store double %i.dz, ptr %i.dx, align 8, !tbaa !166
end_hunk_0
begin_hunk_1_@llvm.sqrt.v4f32
!369 = distinct !{!369, i1 true, !"mat3mulv"}
!370 = distinct !{!370, !369, !"mat3mulv: argument 1"}
!371 = distinct !{!371, !369, !"mat3mulv: argument 0"}
!372 = !{!33, !8, i64 132}
!373 = !{!142, !8, i64 0}
!374 = !{!371, !370}
!375 = distinct !{null}
!376 = distinct !{!376, !49, !50}
!377 = distinct !{!377, !49, !50}
!378 = distinct !{!378, !50, !49}
!379 = distinct !{!379, !49, !50}
!380 = distinct !{!380, !50, !49}
!381 = distinct !{!381, !49, !50}
!382 = distinct !{!382, !50, !49}
!383 = !{!33, !18, i64 0}
!384 = !{!123, !11, i64 376}
!385 = !{!100, !70, i64 128}
!386 = !{!"p1 _ZTS16_DtBauhausWidget", !11, i64 0}
!387 = !{!"_GtkBorder", !26, i64 0, !26, i64 2, !26, i64 4, !26, i64 6}
!388 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!389 = !{!"dt_bauhaus_popup_t", !98, i64 0, !98, i64 8, !387, i64 16, !388, i64 24, !8, i64 40, !8, i64 44, !14, i64 48}
!390 = !{!"p1 _ZTS21_PangoFontDescription", !11, i64 0}
!391 = !{!"_GdkRGBA", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24}
!392 = !{!"dt_bauhaus_t", !386, i64 0, !389, i64 8, !98, i64 64, !14, i64 72, !14, i64 76, !8, i64 80, !8, i64 84, !14, i64 88, !7, i64 92, !8, i64 272, !8, i64 276, !7, i64 280, !8, i64 288, !30, i64 296, !30, i64 304, !14, i64 312, !14, i64 316, !8, i64 320, !14, i64 324, !14, i64 328, !14, i64 332, !390, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !391, i64 360, !391, i64 392, !391, i64 424, !391, i64 456, !391, i64 488, !391, i64 520, !391, i64 552, !391, i64 584, !391, i64 616, !391, i64 648, !391, i64 680, !391, i64 712, !391, i64 744, !391, i64 776, !391, i64 808, !7, i64 840, !7, i64 936}
!393 = !{!392, !390, i64 336}
!394 = !{!"_PangoRectangle", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!395 = !{!394, !8, i64 8}
!396 = !{!394, !8, i64 12}
!397 = !{!150, !23, i64 304}
!398 = !{!150, !8, i64 260}
!399 = !{!31, !31, i64 0}
!400 = !{!146, !146, i64 0}
!401 = distinct !{!401, !49, !50}
!402 = distinct !{!402, !50, !49}
!403 = distinct !{!403, i1 true, !"mat3mulv"}
!404 = distinct !{!404, !403, !"mat3mulv: argument 1"}
!405 = distinct !{!405, !403, !"mat3mulv: argument 0"}
!406 = distinct !{!406, !223}
!407 = !{!405, !404}
!408 = !{!150, !14, i64 384}
!409 = !{!150, !14, i64 388}
!410 = distinct !{!410, !49, !50}
!411 = distinct !{!411, !49, !50}
!412 = distinct !{!412, !50, !49}
!413 = distinct !{!413, !49, !50}
!414 = distinct !{!414, !49, !50}
!415 = distinct !{!415, !50, !49}
!416 = distinct !{!416, !223}
!417 = distinct !{!417, !223}
!418 = !{i64 0, i64 12, !177, i64 12, i64 12, !177, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 4, !15, i64 36, i64 4, !17, i64 48, i64 12, !177}
!419 = distinct !{!419, !49, !50}
!420 = distinct !{!420, !49, !50}
!421 = distinct !{!421, !50, !49}
!422 = distinct !{!422, !49, !50}
!423 = distinct !{!423, !49, !50}
!424 = distinct !{!424, !50, !49}
!425 = distinct !{!425, i1 true, !"mat3mulv"}
!426 = distinct !{!426, !425, !"mat3mulv: argument 1"}
!427 = distinct !{!427, !425, !"mat3mulv: argument 0"}
!428 = distinct !{!428, i1 true, !"mat3mulv"}
!429 = distinct !{!429, !428, !"mat3mulv: argument 1"}
!430 = distinct !{!430, !428, !"mat3mulv: argument 0"}
!431 = !{!427, !426}
!432 = !{!430, !429}
!433 = !{!172, !14, i64 40}
!434 = !{!172, !14, i64 44}
!435 = !{!123, !8, i64 676}
!436 = !{!113, !8, i64 4}
!437 = !{!113, !14, i64 24}
!438 = !{!113, !14, i64 32}
!439 = !{!123, !11, i64 688}
!440 = !{!142, !8, i64 2064}
!441 = !{!123, !98, i64 824}
!442 = !{!150, !147, i64 440}
!443 = !{!150, !98, i64 72}
!444 = !{!150, !98, i64 80}
!445 = !{!100, !8, i64 3312}
!446 = !{!100, !66, i64 96}
!447 = !{!"p1 _ZTS24dt_introspection_field_t", !11, i64 0}
!448 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !84, i64 8, !23, i64 16, !447, i64 24, !23, i64 32, !23, i64 40}
!449 = !{!448, !8, i64 0}
!450 = distinct !{!450, !49, !50}
!451 = distinct !{!451, !49, !50}
!452 = distinct !{!452, !223}
!453 = distinct !{!453, !223}
!454 = distinct !{!454, !49}
!455 = distinct !{!455, !223}
!456 = distinct !{!456, !223}
!457 = distinct !{!457, !223}
!458 = distinct !{!458, !49, !50}
!459 = distinct !{!459, !49, !50}
!460 = distinct !{!460, !223}
!461 = distinct !{!461, !49, !50}
!462 = distinct !{!462, !49, !50}
!463 = distinct !{!463, !50, !49}
!464 = distinct !{!464, !49}
!465 = distinct !{!465, !49, !50}
!466 = distinct !{!466, !49, !50}
!467 = distinct !{!467, !223}
!468 = distinct !{!468, !49}
!469 = distinct !{!469, !49, !50}
!470 = distinct !{!470, !49, !50}
!471 = distinct !{!471, !50, !49}
!472 = distinct !{!472, !49, !50}
!473 = distinct !{!473, !49, !50}
!474 = distinct !{!474, !223}
!475 = distinct !{!475, !49, !50}
!476 = distinct !{!476, !49, !50}
!477 = distinct !{!477, !223}
!478 = distinct !{!478, !49}
!479 = distinct !{!479, !49}
!480 = distinct !{!480, !49, !50}
!481 = distinct !{!481, !49, !50}
!482 = distinct !{!482, !223}
!483 = distinct !{!483, !49, !50}
!484 = distinct !{!484, !49, !50}
!485 = distinct !{!485, !50, !49}
!486 = distinct !{!486, !49}
!487 = distinct !{!487, !49, !50}
!488 = distinct !{!488, !49, !50}
!489 = distinct !{!489, !223}
!490 = distinct !{!490, !49}
!491 = distinct !{!491, i1 false, !"LVerDomain"}
!492 = distinct !{!492, !491}
!493 = distinct !{!493, !491}
!494 = distinct !{!494, !49, !50}
!495 = distinct !{!495, !49, !50}
!496 = distinct !{!496, !223}
!497 = distinct !{!497, !49}
!498 = distinct !{!498, !49, !50}
!499 = distinct !{!499, !49, !50}
!500 = distinct !{!500, !50, !49}
!501 = distinct !{!501, !49, !50}
!502 = distinct !{!502, !49, !50}
!503 = distinct !{!503, !50, !49}
!504 = distinct !{!504, !223}
!505 = distinct !{!505, !49, !50}
!506 = distinct !{!506, !49, !50}
!507 = distinct !{!507, !223}
!508 = distinct !{!508, !49}
!509 = !{ptr @crop_constraint}
!510 = !{ptr @crop_fitness, ptr @model_fitness}
!511 = !{!492}
!512 = !{!493}
!513 = distinct !{!513, i1 true, !"mat3mulv"}
!514 = distinct !{!514, !513, !"mat3mulv: argument 1"}
!515 = distinct !{!515, !513, !"mat3mulv: argument 0"}
!516 = !{!241, !14, i64 8}
!517 = !{!241, !14, i64 12}
!518 = !{!515, !514}
!519 = !{!270, !8, i64 0}
!520 = !{!270, !14, i64 36}
!521 = distinct !{!521, !223}
!522 = distinct !{!522, !49, !50}
!523 = distinct !{!523, !50, !49}
!524 = distinct !{!524, !49, !50}
!525 = distinct !{!525, !50, !49}
!526 = distinct !{!526, !49, !50}
!527 = distinct !{!527, !50, !49}
!528 = distinct !{!528, !49, !50}
!529 = distinct !{!529, !49, !50}
!530 = distinct !{!530, !223}
!531 = distinct !{!531, !49, !50}
!532 = distinct !{!532, !49, !50}
!533 = distinct !{!533, !223}
!534 = distinct !{!534, !49}
!535 = distinct !{!535, !49}
!536 = distinct !{!536, !223}
!537 = distinct !{!537, !49, !50}
!538 = distinct !{!538, !50, !49}
!539 = distinct !{!539, !223}
!540 = distinct !{!540, !223}
!541 = !{!"ntuple_list_s", !8, i64 0, !8, i64 4, !8, i64 8, !12, i64 16}
!542 = !{!541, !8, i64 0}
!543 = !{!541, !8, i64 4}
!544 = !{!541, !8, i64 8}
!545 = !{!541, !12, i64 16}
!546 = !{!"p1 _ZTS8coorlist", !11, i64 0}
!547 = !{!546, !546, i64 0}
!548 = !{!"coorlist", !8, i64 0, !8, i64 4, !546, i64 8}
!549 = !{!548, !546, i64 8}
!550 = !{!548, !8, i64 0}
!551 = !{!548, !8, i64 4}
!552 = !{!187, !14, i64 28}
!553 = distinct !{!553, i1 false, !"LVerDomain"}
!554 = distinct !{!554, !553}
!555 = distinct !{!555, !553}
!556 = distinct !{!556, !553}
!557 = distinct !{!557, !553}
!558 = distinct !{!558, !49, !50}
!559 = distinct !{!559, !49}
!560 = distinct !{!560, !49}
!561 = distinct !{!561, !49, !50}
!562 = distinct !{!562, !49, !50}
!563 = distinct !{!563, !223}
!564 = distinct !{!564, !49}
!565 = !{!554}
!566 = !{!555}
!567 = !{!556}
!568 = !{!557}
!569 = !{!554, !555, !556}
!570 = distinct !{!570, !49, !50}
!571 = distinct !{!571, !49, !50}
!572 = distinct !{!572, !50, !49}
!573 = distinct !{!573, !49, !50}
!574 = distinct !{!574, !49, !50}
!575 = distinct !{!575, !50, !49}
!576 = distinct !{!576, !49, !50}
!577 = distinct !{!577, !50, !49}
!578 = !{!296, !92, i64 80}
!579 = !{!312, !92, i64 72}
!580 = !{!312, !92, i64 64}
!581 = distinct !{!581, !49, !50}
!582 = distinct !{!582, !49, !50}
!583 = distinct !{!583, !50, !49}
!584 = distinct !{!584, !49, !50}
!585 = distinct !{!585, !49, !50}
!586 = distinct !{!586, !50, !49}
!587 = distinct !{!587, i1 true, !"mat3mulv"}
!588 = distinct !{!588, !587, !"mat3mulv: argument 1"}
!589 = distinct !{!589, i1 true, !"mat3mulv"}
!590 = distinct !{!590, !589, !"mat3mulv: argument 1"}
!591 = !{!588}
!592 = !{!590}
!593 = distinct !{!593, !49, !50}
!594 = distinct !{!594, !49, !50}
!595 = distinct !{!595, !50, !49}
end_hunk_1
