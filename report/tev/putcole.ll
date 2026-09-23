Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/putcole?download=true
inline.NumInlined: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ffpcne:bb.a

bb.w:                                             ; preds = %bb.v
  %i.cf = load i32, ptr %7, align 4, !tbaa !18    ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 412
  br i1 %i.cg, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %7, align 4, !tbaa !18
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.v
  %.2 = phi i32 [ %.0154, %bb.u ], [ 1, %bb.x ], [ %.0154, %bb.v ]
  %i.ch = add nsw i64 %.0123151, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %bb.y
  %.2128 = phi i64 [ %i.bu, %bb.t ], [ 0, %bb.y ] ; 2 uses
  %.2125 = phi i64 [ 0, %bb.t ], [ %i.ch, %bb.y ] ; 2 uses
  %.3 = phi i32 [ %.0154, %bb.t ], [ %.2, %bb.y ] ; 2 uses
  %i.ci = add nuw nsw i64 %.0122152, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ci, %4
  br i1 %exitcond.not, label %._crit_edge.loopexit162, label %.lr.ph.split, !llvm.loop !40

._crit_edge.loopexit162:                          ; preds = %bb.z
  %i.cj = icmp ne i32 %.3, 0
  br label %._crit_edge

.thread196:                                       ; preds = %bb.l, %.thread173
  %i.ck = load i32, ptr %7, align 4, !tbaa !18
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.q, %._crit_edge.loopexit162
  %i.cl = phi i64 [ %i.aq, %._crit_edge.loopexit162 ], [ %i.ai, %bb.q ] ; 2 uses
  %spec.select141175 = phi i64 [ %spec.select140, %._crit_edge.loopexit162 ], [ %spec.select, %bb.q ] ; 4 uses
  %.0126.lcssa = phi i64 [ %.2128, %._crit_edge.loopexit162 ], [ %.2128.us, %bb.q ] ; 3 uses
  %.0123.lcssa = phi i64 [ %.2125, %._crit_edge.loopexit162 ], [ %.2125.us, %bb.q ] ; 3 uses
  %.0.lcssa = phi i1 [ %i.cj, %._crit_edge.loopexit162 ], [ false, %bb.q ]
  %.not134 = icmp eq i64 %.0126.lcssa, 0
  br i1 %.not134, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  br i1 %i.w, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = sub nsw i64 %4, %.0126.lcssa            ; 2 uses
  %i.cn = add nsw i64 %i.cm, %i.cl                ; 2 uses
  %i.co = add nsw i64 %i.cn, -1
  %i.cp = sdiv i64 %i.co, %spec.select141175      ; 2 uses
  %i.cq = mul nsw i64 %i.cp, %spec.select141175
  %i.cr = sub nsw i64 %i.cn, %i.cq
  %i.cs = add nsw i64 %i.cp, 1
  %i.ct = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cm
  %i.cu = tail call i32 @ffpcle(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.cs, i64 noundef %i.cr, i64 noundef %.0126.lcssa, ptr noundef %i.ct, ptr noundef nonnull %7) ; 0 uses
  br label %bb.ae

bb.ac:                                            ; preds = %._crit_edge
  %.not135 = icmp eq i64 %.0123.lcssa, 0
  br i1 %.not135, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = sub nsw i64 %4, %.0123.lcssa
  %i.cw = add nsw i64 %i.cv, %i.cl                ; 2 uses
  %i.cx = add nsw i64 %i.cw, -1
  %i.cy = sdiv i64 %i.cx, %spec.select141175      ; 2 uses
  %i.cz = add nsw i64 %i.cy, 1
  %i.da = mul nsw i64 %i.cy, %spec.select141175
  %i.db = sub nsw i64 %i.cw, %i.da
  %i.dc = tail call i32 @ffpcluc(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.cz, i64 noundef %i.db, i64 noundef %.0123.lcssa, ptr noundef nonnull %7) #8 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa, %bb.ab
  %i.dd = load i32, ptr %7, align 4, !tbaa !18    ; 2 uses
  %i.de = icmp slt i32 %i.dd, 1
  %or.cond = select i1 %i.de, i1 %.0.lcssa, i1 false
  br i1 %or.cond, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  store i32 412, ptr %7, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.ae, %bb.af, %.thread196, %bb.j, %bb.a, %.split.us, %bb.f
  %.0129 = phi i32 [ %i.o, %bb.f ], [ %i.bt, %.split.us ], [ %i.ae, %bb.j ], [ %i.ck, %.thread196 ], [ %i.a, %bb.a ], [ 412, %bb.af ], [ %i.dd, %bb.ae ], [ %i.cf, %bb.w ]
  ret i32 %.0129
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffp2de(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ffp3de(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %4, i64 noundef %3, i64 noundef %4, i64 noundef 1, ptr noundef %5, ptr noundef %6) ; 0 uses
  %i.b = load i32, ptr %6, align 4, !tbaa !18
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffp3de(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 4 uses
  %i.b = alloca [3 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.ffp3de.fpixel, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = tail call i32 @fits_is_compressed_image(ptr noundef %0, ptr noundef %8) #8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %2, ptr %i.b, align 16, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %6, ptr %i.e, align 16, !tbaa !22
  %i.f = call i32 @fits_write_compressed_img(ptr noundef %0, i32 noundef 42, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef %7, ptr noundef null, ptr noundef %8) #8 ; 0 uses
  %i.g = load i32, ptr %8, align 4, !tbaa !18
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @llvm.smax.i64(i64 %1, i64 1) ; 2 uses
  %i.i = icmp eq i64 %2, %4
  %i.j = icmp eq i64 %3, %5
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = mul nsw i64 %3, %2
  %i.l = mul nsw i64 %i.k, %6
  %i.m = tail call i32 @ffpcle(ptr noundef %0, i32 noundef 2, i64 noundef %i.h, i64 noundef 1, i64 noundef %i.l, ptr noundef %7, ptr noundef %8) ; 0 uses
  %i.n = load i32, ptr %8, align 4, !tbaa !18
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = icmp slt i64 %2, %4
  %i.p = icmp slt i64 %3, %5
  %or.cond62 = or i1 %i.o, %i.p
  br i1 %or.cond62, label %bb.f, label %.preheader63

.preheader63:                                     ; preds = %bb.e
  %i.q = icmp sgt i64 %6, 0
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge73.split

.preheader.lr.ph:                                 ; preds = %.preheader63
  %i.r = icmp sgt i64 %5, 0
  %i.s = sub nsw i64 %3, %5
  %i.t = mul nsw i64 %i.s, %2
  br i1 %i.r, label %.preheader, label %._crit_edge73.split

bb.f:                                             ; preds = %bb.e
  store i32 320, ptr %8, align 4, !tbaa !18
  br label %bb.j

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.072 = phi i64 [ %i.ab, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.05171 = phi i64 [ %i.y, %._crit_edge ], [ 1, %.preheader.lr.ph ]
  %.05370 = phi i64 [ %i.ac, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.i
  %.168 = phi i64 [ %.072, %.preheader ], [ %i.z, %bb.i ] ; 2 uses
  %.15267 = phi i64 [ %.05171, %.preheader ], [ %i.y, %bb.i ] ; 2 uses
  %.05466 = phi i64 [ 0, %.preheader ], [ %i.aa, %bb.i ]
  %i.u = getelementptr inbounds [4 x i8], ptr %7, i64 %.168
  %i.v = tail call i32 @ffpcle(ptr noundef %0, i32 noundef 2, i64 noundef %i.h, i64 noundef %.15267, i64 noundef %4, ptr noundef %i.u, ptr noundef %8)
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %8, align 4, !tbaa !18
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.y = add nsw i64 %.15267, %4                  ; 2 uses
  %i.z = add nsw i64 %.168, %2                    ; 2 uses
  %i.aa = add nuw nsw i64 %.05466, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.i
  %i.ab = add nsw i64 %i.z, %i.t
  %i.ac = add nuw nsw i64 %.05370, 1              ; 2 uses
  %exitcond75.not = icmp eq i64 %i.ac, %6
  br i1 %exitcond75.not, label %._crit_edge73.split, label %.preheader, !llvm.loop !58

._crit_edge73.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader63
  %i.ad = load i32, ptr %8, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge73.split, %bb.h, %bb.f, %bb.d, %bb.b
  %.055 = phi i32 [ %i.g, %bb.b ], [ %i.n, %bb.d ], [ 320, %bb.f ], [ %i.x, %bb.h ], [ %i.ad, %._crit_edge73.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.055
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @fits_write_compressed_img(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ffpsse(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [7 x i64], align 16               ; 14 uses
  %i.b = alloca [7 x i64], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i32, ptr %7, align 4, !tbaa !18     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @fits_is_compressed_image(ptr noundef %0, ptr noundef nonnull %7) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @fits_write_compressed_img(ptr noundef %0, i32 noundef 42, ptr noundef %4, ptr noundef %5, i32 noundef 0, ptr noundef %6, ptr noundef null, ptr noundef nonnull %7) #8 ; 0 uses
  %i.g = load i32, ptr %7, align 4, !tbaa !18
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = add i64 %2, -8
  %or.cond = icmp ult i64 %i.h, -7
  br i1 %or.cond, label %bb.e, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.d
  store i32 320, ptr %7, align 4, !tbaa !18
  br label %bb.h

.lr.ph.preheader:                                 ; preds = %bb.d
  store <4 x i64> splat (i64 1), ptr %i.a, align 16, !tbaa !20
  store <4 x i64> splat (i64 1), ptr %i.b, align 16, !tbaa !20
  %.32..32..sroa_idx306 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %.32..32..sroa_idx306, align 16, !tbaa !20
  %.32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 1, ptr %.32..32..sroa_idx, align 16, !tbaa !20
  %.40..40..sroa_idx308 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.40..40..sroa_idx308, align 8, !tbaa !20
  %.40..40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 1, ptr %.40..40..sroa_idx, align 8, !tbaa !20
  %.48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 1, ptr %.48..48..sroa_idx, align 16, !tbaa !20
  %i.i = tail call i64 @llvm.smax.i64(i64 %1, i64 1)
  %i.j = shl nuw nsw i64 %2, 3                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %4, i64 %i.j, i1 false), !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 8 %3, i64 %i.j, i1 false), !tbaa !30
  %i.k = load i64, ptr %4, align 8, !tbaa !22
  %i.l = load i64, ptr %5, align 8, !tbaa !22
  %reass.sub = sub i64 %i.l, %i.k
  %i.m = add i64 %reass.sub, 1
  %.sroa.0.0.vec.insert = insertelement <4 x i64> <i64 poison, i64 1, i64 1, i64 1>, i64 %i.m, i64 0 ; 2 uses
  %exitcond.not = icmp eq i64 %2, 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22
  %reass.sub.1 = sub i64 %i.q, %i.o
  %i.r = add i64 %reass.sub.1, 1
  %.sroa.0.8.vec.insert = insertelement <4 x i64> %.sroa.0.0.vec.insert, i64 %i.r, i64 1 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22
  %reass.sub.2 = sub i64 %i.v, %i.t
  %i.w = add i64 %reass.sub.2, 1
  %.sroa.0.16.vec.insert = insertelement <4 x i64> %.sroa.0.8.vec.insert, i64 %i.w, i64 2 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !22
  %reass.sub.3 = sub i64 %i.aa, %i.y
  %i.ab = add i64 %reass.sub.3, 1
  %.sroa.0.24.vec.insert = insertelement <4 x i64> %.sroa.0.16.vec.insert, i64 %i.ab, i64 3 ; 4 uses
  %exitcond.not.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22
  %reass.sub.4 = sub i64 %i.af, %i.ad
  %i.ag = add i64 %reass.sub.4, 1                 ; 3 uses
  %exitcond.not.4 = icmp eq i64 %2, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !22
  %reass.sub.5 = sub i64 %i.ak, %i.ai
  %i.al = add i64 %reass.sub.5, 1                 ; 2 uses
  %exitcond.not.5 = icmp eq i64 %2, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !22
  %reass.sub.6 = sub i64 %i.ap, %i.an
  %i.aq = add i64 %reass.sub.6, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %.sroa.15.0 = phi i64 [ 1, %.lr.ph.preheader ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.2 ], [ 1, %.lr.ph.3 ], [ 1, %.lr.ph.4 ], [ 1, %.lr.ph.5 ], [ %i.aq, %.lr.ph.6 ] ; 2 uses
  %.sroa.14.0 = phi i64 [ 1, %.lr.ph.preheader ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.2 ], [ 1, %.lr.ph.3 ], [ 1, %.lr.ph.4 ], [ %i.al, %.lr.ph.5 ], [ %i.al, %.lr.ph.6 ] ; 2 uses
  %.sroa.11.0 = phi i64 [ 1, %.lr.ph.preheader ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.2 ], [ 1, %.lr.ph.3 ], [ %i.ag, %.lr.ph.4 ], [ %i.ag, %.lr.ph.5 ], [ %i.ag, %.lr.ph.6 ] ; 2 uses
  %.sroa.0.0 = phi <4 x i64> [ %.sroa.0.0.vec.insert, %.lr.ph.preheader ], [ %.sroa.0.8.vec.insert, %.lr.ph.1 ], [ %.sroa.0.16.vec.insert, %.lr.ph.2 ], [ %.sroa.0.24.vec.insert, %.lr.ph.3 ], [ %.sroa.0.24.vec.insert, %.lr.ph.4 ], [ %.sroa.0.24.vec.insert, %.lr.ph.5 ], [ %.sroa.0.24.vec.insert, %.lr.ph.6 ] ; 4 uses
  %.sroa.0.0.vec.extract = extractelement <4 x i64> %.sroa.0.0, i64 0 ; 2 uses
  %.0..0..pre = load i64, ptr %i.b, align 16, !tbaa !20 ; 3 uses
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8..8..pre = load i64, ptr %.8..8..sroa_idx, align 8, !tbaa !20
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.16..16..pre = load i64, ptr %.16..16..sroa_idx, align 16, !tbaa !20
  %.24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.24..24..pre = load i64, ptr %.24..24..sroa_idx, align 8, !tbaa !20
  %.32..32..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.32..32..pre = load i64, ptr %.32..32..sroa_idx.a, align 16, !tbaa !20
  %.40..40..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.40..40..pre = load i64, ptr %.40..40..sroa_idx.a, align 8, !tbaa !20
  %.16..16..sroa_idx304 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16.250.pre = load i64, ptr %.16..16..sroa_idx304, align 16, !tbaa !20
  %.24..24..sroa_idx305 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.24..24.253.pre = load i64, ptr %.24..24..sroa_idx305, align 8, !tbaa !20
  %.32..32..sroa_idx306.a = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32.256.pre = load i64, ptr %.32..32..sroa_idx306.a, align 16, !tbaa !20
  %.40..40..sroa_idx307 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.40..40.259.pre = load i64, ptr %.40..40..sroa_idx307, align 8, !tbaa !20
  %i.ar = mul nsw i64 %.8..8..pre, %.0..0..pre    ; 3 uses
  %i.as = mul nsw i64 %i.ar, %.16..16..pre        ; 3 uses
  %i.at = mul nsw i64 %i.as, %.24..24..pre        ; 3 uses
  %i.au = mul nsw i64 %i.at, %.32..32..pre        ; 3 uses
  %i.av = mul nsw i64 %i.au, %.40..40..pre        ; 2 uses
  %i.aw = add nsw i64 %.16..16.250.pre, -1
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = add nsw i64 %.24..24.253.pre, -1
  %i.az = mul nsw i64 %i.ay, %i.as
  %i.ba = add nsw i64 %.32..32.256.pre, -1
  %i.bb = mul nsw i64 %i.ba, %i.at
  %i.bc = add nsw i64 %.40..40.259.pre, -1
  %i.bd = mul nsw i64 %i.bc, %i.au
  %i.be = icmp sgt i64 %.sroa.15.0, 0
  br i1 %i.be, label %.preheader134.lr.ph, label %._crit_edge212.split

.preheader134.lr.ph:                              ; preds = %._crit_edge
  %.8..8..sroa_idx303 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..8.247 = load i64, ptr %.8..8..sroa_idx303, align 8, !tbaa !20
  %i.bf = add nsw i64 %.8..8.247, -1
  %i.bg = mul nsw i64 %i.bf, %.0..0..pre
  %.0..0.245 = load i64, ptr %i.a, align 16, !tbaa !20
  %i.bh = icmp slt i64 %.sroa.14.0, 1
  %.sroa.0.24.vec.extract = extractelement <4 x i64> %.sroa.0.0, i64 3 ; 2 uses
  %i.bi = icmp slt i64 %.sroa.0.24.vec.extract, 1
  %.sroa.0.16.vec.extract = extractelement <4 x i64> %.sroa.0.0, i64 2 ; 2 uses
  %i.bj = icmp slt i64 %.sroa.0.16.vec.extract, 1
  %i.bk = add nsw i64 %i.bg, %.0..0.245
  %.sroa.0.8.vec.extract = extractelement <4 x i64> %.sroa.0.0, i64 1 ; 2 uses
  %i.bl = icmp slt i64 %.sroa.0.8.vec.extract, 1
  %i.bm = icmp slt i64 %.sroa.11.0, 1
  %or.cond288.not296 = select i1 %i.bh, i1 true, i1 %i.bm
  %brmerge = select i1 %or.cond288.not296, i1 true, i1 %i.bi
  %brmerge291 = select i1 %brmerge, i1 true, i1 %i.bj
  %brmerge293 = select i1 %brmerge291, i1 true, i1 %i.bl
  br i1 %brmerge293, label %._crit_edge212.split, label %.preheader134.us.us.us.us.preheader

.preheader134.us.us.us.us.preheader:              ; preds = %.preheader134.lr.ph
  %.48..48..sroa_idx308 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..pre = load i64, ptr %.48..48..sroa_idx308, align 16, !tbaa !20
  %i.bn = add nsw i64 %.48..48..pre, -1
  %i.bo = mul nsw i64 %i.bn, %i.av
  br label %.preheader134.us.us.us.us

.preheader134.us.us.us.us:                        ; preds = %.preheader134.us.us.us.us.preheader, %._crit_edge189.split.us.split.us.split.us.split.us.us.us.us.us
  %.0211.us.us.us.us = phi i64 [ %i.cf, %._crit_edge189.split.us.split.us.split.us.split.us.us.us.us.us ], [ 0, %.preheader134.us.us.us.us.preheader ]
  %.0106210.us.us.us.us = phi i64 [ %i.ce, %._crit_edge189.split.us.split.us.split.us.split.us.us.us.us.us ], [ %i.bo, %.preheader134.us.us.us.us.preheader ] ; 2 uses
  %.0124209.us.us.us.us = phi i64 [ %i.bt, %._crit_edge189.split.us.split.us.split.us.split.us.us.us.us.us ], [ 0, %.preheader134.us.us.us.us.preheader ]
  %invariant.op190.us.us.us.us = add i64 %.0106210.us.us.us.us, %i.bk
  br label %.preheader133.us.us.us.us.us.us.us.us

.preheader133.us.us.us.us.us.us.us.us:            ; preds = %._crit_edge172.split.us.split.us.split.us.us.us.us.us.us.us.us.us, %.preheader134.us.us.us.us
  %.0100188.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader134.us.us.us.us ], [ %i.cd, %._crit_edge172.split.us.split.us.split.us.us.us.us.us.us.us.us.us ]
  %.1108187.us.us.us.us.us.us.us.us = phi i64 [ %i.bd, %.preheader134.us.us.us.us ], [ %i.cc, %._crit_edge172.split.us.split.us.split.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.1125186.us.us.us.us.us.us.us.us = phi i64 [ %.0124209.us.us.us.us, %.preheader134.us.us.us.us ], [ %i.bt, %._crit_edge172.split.us.split.us.split.us.us.us.us.us.us.us.us.us ]
  %invariant.op173.reass.us.us.us.us.us.us.us.us = add i64 %.1108187.us.us.us.us.us.us.us.us, %invariant.op190.us.us.us.us
  br label %.preheader132.us.us.us.us.us.us.us.us.us.us.us

.preheader132.us.us.us.us.us.us.us.us.us.us.us:   ; preds = %._crit_edge161.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader133.us.us.us.us.us.us.us.us
  %.0101171.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader133.us.us.us.us.us.us.us.us ], [ %i.cb, %._crit_edge161.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.2170.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %i.bb, %.preheader133.us.us.us.us.us.us.us.us ], [ %i.ca, %._crit_edge161.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.2126169.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %.1125186.us.us.us.us.us.us.us.us, %.preheader133.us.us.us.us.us.us.us.us ], [ %i.bt, %._crit_edge161.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us ]
  %invariant.op162.reass.us.us.us.us.us.us.us.us.us.us.us = add i64 %.2170.us.us.us.us.us.us.us.us.us.us.us, %invariant.op173.reass.us.us.us.us.us.us.us.us
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge156.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader132.us.us.us.us.us.us.us.us.us.us.us
  %.0102160.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader132.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bz, %._crit_edge156.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.3159.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %i.az, %.preheader132.us.us.us.us.us.us.us.us.us.us.us ], [ %i.by, %._crit_edge156.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.3127158.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %.2126169.us.us.us.us.us.us.us.us.us.us.us, %.preheader132.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bt, %._crit_edge156.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.reass.reass.us.us.us.us.us.us.us.us.us.us.us.us.us = add i64 %.3159.us.us.us.us.us.us.us.us.us.us.us.us.us, %invariant.op162.reass.us.us.us.us.us.us.us.us.us.us.us
  br label %.lr.ph147.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.lr.ph147.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge148.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0103154.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bx, %._crit_edge148.us.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.4153.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %i.ax, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bw, %._crit_edge148.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.4128152.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %.3127158.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bt, %._crit_edge148.us.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  %i.bp = add i64 %.reass.reass.us.us.us.us.us.us.us.us.us.us.us.us.us, %.4153.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph147.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0104145.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.lr.ph147.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bv, %bb.g ]
  %.0123144.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %i.bp, %.lr.ph147.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bu, %bb.g ] ; 2 uses
  %.5143.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %.4128152.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph147.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bt, %bb.g ] ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %6, i64 %.5143.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.br = tail call i32 @ffpcle(ptr noundef %0, i32 noundef 2, i64 noundef %i.i, i64 noundef %.0123144.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i64 noundef %.sroa.0.0.vec.extract, ptr noundef %i.bq, ptr noundef nonnull %7)
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = add nsw i64 %.5143.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.sroa.0.0.vec.extract ; 6 uses
  %i.bu = add nsw i64 %.0123144.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.0..0..pre
  %i.bv = add nuw nsw i64 %.0104145.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.bv, %.sroa.0.8.vec.extract
  br i1 %exitcond234.not, label %._crit_edge148.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.f, !llvm.loop !59

._crit_edge148.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %bb.g
  %i.bw = add nsw i64 %.4153.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.ar
  %i.bx = add nuw nsw i64 %.0103154.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %i.bx, %.sroa.0.16.vec.extract
  br i1 %exitcond235.not, label %._crit_edge156.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph147.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !60

._crit_edge156.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge148.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.by = add nsw i64 %.3159.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.as
  %i.bz = add nuw nsw i64 %.0102160.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %i.bz, %.sroa.0.24.vec.extract
  br i1 %exitcond236.not, label %._crit_edge161.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !61

._crit_edge161.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge156.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ca = add nsw i64 %.2170.us.us.us.us.us.us.us.us.us.us.us, %i.at
  %i.cb = add nuw nsw i64 %.0101171.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %i.cb, %.sroa.11.0
  br i1 %exitcond237.not, label %._crit_edge172.split.us.split.us.split.us.us.us.us.us.us.us.us.us, label %.preheader132.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !62

._crit_edge172.split.us.split.us.split.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge161.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us
  %i.cc = add nsw i64 %.1108187.us.us.us.us.us.us.us.us, %i.au
  %i.cd = add nuw nsw i64 %.0100188.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %i.cd, %.sroa.14.0
  br i1 %exitcond238.not, label %._crit_edge189.split.us.split.us.split.us.split.us.us.us.us.us, label %.preheader133.us.us.us.us.us.us.us.us, !llvm.loop !63

._crit_edge189.split.us.split.us.split.us.split.us.us.us.us.us: ; preds = %._crit_edge172.split.us.split.us.split.us.us.us.us.us.us.us.us.us
  %i.ce = add nsw i64 %.0106210.us.us.us.us, %i.av
  %i.cf = add nuw nsw i64 %.0211.us.us.us.us, 1   ; 2 uses
  %exitcond239.not = icmp eq i64 %i.cf, %.sroa.15.0
  br i1 %exitcond239.not, label %._crit_edge212.split, label %.preheader134.us.us.us.us, !llvm.loop !64

.split.us:                                        ; preds = %bb.f
  %i.cg = load i32, ptr %7, align 4, !tbaa !18
  br label %bb.h

._crit_edge212.split:                             ; preds = %._crit_edge189.split.us.split.us.split.us.split.us.us.us.us.us, %.preheader134.lr.ph, %._crit_edge
  %i.ch = load i32, ptr %7, align 4, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %._crit_edge212.split, %.split.us, %bb.e, %bb.c
  %.0129 = phi i32 [ %i.ch, %._crit_edge212.split ], [ %i.g, %bb.c ], [ 320, %bb.e ], [ %i.cg, %.split.us ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0129
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffpgpe(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @llvm.smax.i64(i64 %1, i64 1)
  %i.b = tail call i32 @ffpcle(ptr noundef %0, i32 noundef 1, i64 noundef %i.a, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) ; 0 uses
  %i.c = load i32, ptr %5, align 4, !tbaa !18
  ret i32 %i.c
}

declare i32 @ffgcprll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ffcfmt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffmbyt(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffpr4b(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @ffr4fr4(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = fcmp oeq double %2, 1.000000e+00
  %i.d = fcmp oeq double %3, 0.000000e+00
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i64 %1, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %1, 4
  %i.f = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.f, -16
  %or.cond18 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond18, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, 9223372036854775804        ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat17 = shufflevector <4 x double> %broadcast.splatinsert16, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x float>, ptr %i.g, align 4, !tbaa !26
  %i.h = fpext <4 x float> %wide.load to <4 x double>
  %i.i = fsub <4 x double> %i.h, %broadcast.splat
  %i.j = fdiv <4 x double> %i.i, %broadcast.splat17
  %i.k = fptrunc <4 x double> %i.j to <4 x float>
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  store <4 x float> %i.k, ptr %i.l, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.015.ph, 1
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader19
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.ph
  %i.o = load float, ptr %i.n, align 4, !tbaa !26
  %i.p = fpext float %i.o to double
  %i.q = fsub double %i.p, %3
  %i.r = fdiv double %i.q, %2
  %i.s = fptrunc double %i.r to float
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.015.ph
  store float %i.s, ptr %i.t, align 4, !tbaa !26
  %i.u = or disjoint i64 %.015.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader19
  %.015.unr = phi i64 [ %.015.ph, %.lr.ph.preheader19 ], [ %i.u, %.lr.ph.prol ]
  %i.v = icmp eq i64 %1, %.neg
  br i1 %i.v, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.w = shl i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %0, i64 %i.w, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.015 = phi i64 [ %i.am, %.lr.ph ], [ %.015.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015
  %i.y = load float, ptr %i.x, align 4, !tbaa !26
  %i.z = fpext float %i.y to double
  %i.aa = fsub double %i.z, %3
  %i.ab = fdiv double %i.aa, %2
  %i.ac = fptrunc double %i.ab to float
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.015
  store float %i.ac, ptr %i.ad, align 4, !tbaa !26
  %i.ae = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !26
  %i.ah = fpext float %i.ag to double
  %i.ai = fsub double %i.ah, %3
  %i.aj = fdiv double %i.ai, %2
  %i.ak = fptrunc double %i.aj to float
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ae
  store float %i.ak, ptr %i.al, align 4, !tbaa !26
  %i.am = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.am, %1
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !66

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader, %bb.b
  %i.an = load i32, ptr %5, align 4, !tbaa !18
  ret i32 %i.an
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @ffr4fi8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp oeq double %2, 1.000000e+00         ; 2 uses
  %i.b = fcmp oeq double %3, f0x43E0000000000000
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i64 %1, 0
  br i1 %i.c, label %.lr.ph74, label %.loopexit

.lr.ph74:                                         ; preds = %.preheader, %bb.f
  %.073 = phi i64 [ %i.l, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.073
  %i.e = load float, ptr %i.d, align 4, !tbaa !26 ; 3 uses
  %i.f = fpext float %i.e to double
  %i.g = fcmp olt double %i.f, -4.900000e-01
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph74
  store i32 -11, ptr %5, align 4, !tbaa !18
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph74
  %i.h = fcmp ogt float %i.e, f0x5F800000
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -11, ptr %5, align 4, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = fptosi float %i.e to i64
  %i.j = xor i64 %i.i, -9223372036854775808
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.sink = phi i64 [ -9223372036854775808, %bb.b ], [ %i.j, %bb.e ], [ 9223372036854775807, %bb.d ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.073
  store i64 %.sink, ptr %i.k, align 8, !tbaa !20
  %i.l = add nuw nsw i64 %.073, 1                 ; 2 uses
  %exitcond78.not = icmp eq i64 %i.l, %1
  br i1 %exitcond78.not, label %.loopexit, label %.lr.ph74, !llvm.loop !0

bb.g:                                             ; preds = %bb.a
  %i.m = fcmp oeq double %3, 0.000000e+00
  %or.cond3 = and i1 %i.a, %i.m
  %i.n = icmp sgt i64 %1, 0                       ; 2 uses
  br i1 %or.cond3, label %.preheader66, label %.preheader68

.preheader68:                                     ; preds = %bb.g
  br i1 %i.n, label %.lr.ph, label %.loopexit

.preheader66:                                     ; preds = %bb.g
  br i1 %i.n, label %.lr.ph72, label %.loopexit
end_hunk_0
