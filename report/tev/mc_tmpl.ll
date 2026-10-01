Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/mc_tmpl?download=true
inline.NumInlined: 87
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 22
begin_hunk_0_@put_8tap_c:bb.a
  %i.rz = getelementptr [2 x i8], ptr %i.oh, i64 %indvars.iv241
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !10
  %i.sb = zext i16 %i.sa to i32
  %i.sc = mul nsw i32 %i.sb, %i.ry
  %i.sd = load i8, ptr %i.mb, align 1, !tbaa !13
  %i.se = sext i8 %i.sd to i32
  %i.sf = getelementptr [2 x i8], ptr %i.oi, i64 %indvars.iv241
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !10
  %i.sh = zext i16 %i.sg to i32
  %i.si = mul nsw i32 %i.sh, %i.se
  %i.sj = load i8, ptr %i.mc, align 1, !tbaa !13
  %i.sk = sext i8 %i.sj to i32
  %i.sl = getelementptr [2 x i8], ptr %i.oj, i64 %indvars.iv241
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !10
  %i.sn = zext i16 %i.sm to i32
  %i.so = mul nsw i32 %i.sn, %i.sk
  %i.sp = add nsw i32 %i.qw, 32
  %i.sq = add nsw i32 %i.sp, %i.rd
  %i.sr = add nsw i32 %i.sq, %i.rk
  %i.ss = add nsw i32 %i.sr, %i.rq
  %i.st = add nsw i32 %i.ss, %i.rw
  %i.su = add nsw i32 %i.st, %i.sc
  %i.sv = add nsw i32 %i.su, %i.si
  %i.sw = add nsw i32 %i.sv, %i.so
  %i.sx = ashr i32 %i.sw, 6                       ; 2 uses
  %i.sy = icmp slt i32 %i.sx, 0
  %i.sz = tail call i32 @llvm.smin.i32(i32 %i.sx, i32 %9)
  %i.ta = trunc i32 %i.sz to i16
  %i.tb = select i1 %i.sy, i16 0, i16 %i.ta
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %indvars.iv241
  store i16 %i.tb, ptr %i.tc, align 2, !tbaa !10
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %wide.trip.count244
  br i1 %exitcond245.not, label %._crit_edge228, label %scalar.ph446, !llvm.loop !205

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @put_c(ptr noundef %0, i64 noundef %i.ah, ptr noundef %2, i64 noundef %i.aj, i32 noundef %4, i32 noundef %5)
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %._crit_edge224, %._crit_edge228, %.preheader212, %.preheader, %bb.m, %.split220
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @put_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef range(i64 -4611686018427387904, 4611686018427387904) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 -4611686018427387904, 4611686018427387904) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %i.a = shl i32 %4, 1
  %i.b = sext i32 %i.a to i64                     ; 5 uses
  %i.c = add nsw i32 %5, -1
  %xtraiter = and i32 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.a, %.prol.preheader
  %.08.prol = phi ptr [ %i.e, %.prol.preheader ], [ %2, %bb.a ] ; 2 uses
  %.07.prol = phi ptr [ %i.d, %.prol.preheader ], [ %0, %bb.a ] ; 2 uses
  %.0.prol = phi i32 [ %i.f, %.prol.preheader ], [ %5, %bb.a ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.a ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.07.prol, ptr align 2 %.08.prol, i64 %i.b, i1 false)
  %i.d = getelementptr inbounds [2 x i8], ptr %.07.prol, i64 %1 ; 2 uses
  %i.e = getelementptr inbounds [2 x i8], ptr %.08.prol, i64 %3 ; 2 uses
  %i.f = add nsw i32 %.0.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !223

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.a
  %.08.unr = phi ptr [ %2, %bb.a ], [ %i.e, %.prol.preheader ]
  %.07.unr = phi ptr [ %0, %bb.a ], [ %i.d, %.prol.preheader ]
  %.0.unr = phi i32 [ %5, %bb.a ], [ %i.f, %.prol.preheader ]
  %i.g = icmp ult i32 %i.c, 3
  br i1 %i.g, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.08 = phi ptr [ %i.o, %.new ], [ %.08.unr, %.prol.loopexit ] ; 2 uses
  %.07 = phi ptr [ %i.n, %.new ], [ %.07.unr, %.prol.loopexit ] ; 2 uses
  %.0 = phi i32 [ %i.p, %.new ], [ %.0.unr, %.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.07, ptr align 2 %.08, i64 %i.b, i1 false)
  %i.h = getelementptr inbounds [2 x i8], ptr %.07, i64 %1 ; 2 uses
  %i.i = getelementptr inbounds [2 x i8], ptr %.08, i64 %3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.h, ptr align 2 %i.i, i64 %i.b, i1 false)
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.i, i64 %3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.j, ptr align 2 %i.k, i64 %i.b, i1 false)
  %i.l = getelementptr inbounds [2 x i8], ptr %i.j, i64 %1 ; 2 uses
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.l, ptr align 2 %i.m, i64 %i.b, i1 false)
  %i.n = getelementptr inbounds [2 x i8], ptr %i.l, i64 %1
  %i.o = getelementptr inbounds [2 x i8], ptr %i.m, i64 %3
  %i.p = add nsw i32 %.0, -4                      ; 2 uses
  %.not.3 = icmp eq i32 %i.p, 0
  br i1 %.not.3, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @put_8tap_scaled_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef range(i32 0, 11) %10, i32 noundef %11) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [1024 x i16], align 16            ; 10 uses
  %i.c = alloca [8 x ptr], align 16               ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = and i64 %3, 1
  %.not.i = icmp eq i64 %i.d, 0
  tail call void @llvm.assume(i1 %.not.i)
  store ptr %i.b, ptr %i.c, align 16, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.8..8..sroa_idx319 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %.8..8..sroa_idx319, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %.16..16..sroa_idx, align 16, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %.24..24..sroa_idx322 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.g, ptr %.24..24..sroa_idx322, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  %.32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %.32..32..sroa_idx, align 16, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1280
  %.40..40..sroa_idx323 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.i, ptr %.40..40..sroa_idx323, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1536
  %.48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.j, ptr %.48..48..sroa_idx, align 16, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1792 ; 2 uses
  %.56..56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.k, ptr %.56..56..sroa_idx, align 8, !tbaa !17
  %i.l = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %11, i1 true) ; 3 uses
  %i.m = add nsw i32 %i.l, -18                    ; 6 uses
  %i.n = shl nuw nsw i32 1, %i.m
  %i.o = lshr i32 %i.n, 1                         ; 4 uses
  %i.p = icmp sgt i32 %5, 0
  br i1 %i.p, label %.lr.ph149, label %._crit_edge150

.lr.ph149:                                        ; preds = %bb.a
  %i.q = ashr exact i64 %3, 1
  %.idx = mul i64 %i.q, -6
  %i.r = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.s = icmp samesign ugt i32 %5, 4
  %i.t = lshr i32 %10, 2                          ; 2 uses
  %i.u = and i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.v
  %i.x = zext nneg i32 %i.t to i64
  %i.y = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.x
  %i.z = icmp sgt i32 %4, 0                       ; 2 uses
  %i.aa = icmp sgt i32 %4, 4
  %i.ab = and i32 %10, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.ac
  %i.ae = and i32 %10, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.af
  %i.ah = sub nsw i32 24, %i.l                    ; 2 uses
  %i.ai = shl nuw nsw i32 1, %i.ah
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = add nsw i32 %i.l, -12                   ; 3 uses
  %i.al = shl nuw nsw i32 1, %i.ak
  %i.am = lshr i32 %i.al, 1                       ; 2 uses
  %i.an = and i64 %1, 1
  %.not.i128 = icmp eq i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i128)
  %wide.trip.count = zext i32 %4 to i64           ; 8 uses
  %wide.trip.count165 = zext nneg i32 %4 to i64
  %wide.trip.count170 = zext nneg i32 %4 to i64
  %i.ao = add nsw i32 %5, -1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul i64 %1, %i.ap
  %i.ar = shl nuw nsw i64 %wide.trip.count, 1     ; 9 uses
  %i.as = getelementptr i8, ptr %0, i64 %i.aq
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.ar ; 2 uses
  %i.at = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.au = shufflevector <8 x ptr> %i.at, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.av = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.aw = shufflevector <8 x ptr> %i.av, <8 x ptr> poison, <8 x i32> zeroinitializer
  %.8..8..sroa_idx315 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx326 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx324 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.8..8..sroa_idx316 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx327 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.8..8..sroa_idx317 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.8..8..sroa_idx318 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx329 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %12 = shl i64 %3, 2
  %.8..8..sroa_idx314 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx325 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.16..16..sroa_idx321 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.8..8..sroa_idx320 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.40..40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %min.iters.check = icmp ult i32 %4, 8           ; 2 uses
  %stride.check227 = icmp slt i64 %1, 0
  %n.vec266 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert283 = insertelement <8 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat284 = shufflevector <8 x i32> %broadcast.splatinsert283, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert285 = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat286 = shufflevector <8 x i32> %broadcast.splatinsert285, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x i32> poison, i32 %11, i64 0
  %broadcast.splat288 = shufflevector <8 x i32> %broadcast.splatinsert287, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n301 = icmp eq i64 %n.vec266, %wide.trip.count
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert210 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat211 = shufflevector <8 x i32> %broadcast.splatinsert210, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert212 = insertelement <8 x i32> poison, i32 %11, i64 0
  %broadcast.splat213 = shufflevector <8 x i32> %broadcast.splatinsert212, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter310 = and i64 %wide.trip.count, 1
  %lcmp.mod311.not = icmp eq i64 %xtraiter310, 0
  %i.ax = add nsw i64 %wide.trip.count, -1
  br label %bb.b

._crit_edge150:                                   ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void

bb.b:                                             ; preds = %.lr.ph149, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph149 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.56.187 = phi ptr [ %i.k, %.lr.ph149 ], [ %.56.200, %._crit_edge ]
  %.0111147 = phi i32 [ 0, %.lr.ph149 ], [ %i.kj, %._crit_edge ]
  %.0113146 = phi i32 [ -8, %.lr.ph149 ], [ %.1114.lcssa202, %._crit_edge ] ; 7 uses
  %.0115144 = phi ptr [ %0, %.lr.ph149 ], [ %i.ki, %._crit_edge ] ; 7 uses
  %.0116143 = phi ptr [ %i.r, %.lr.ph149 ], [ %.1117.lcssa201, %._crit_edge ] ; 4 uses
  %.0118142 = phi i32 [ %7, %.lr.ph149 ], [ %i.kh, %._crit_edge ] ; 3 uses
  %i.ay = mul i64 %1, %indvar
  %i.az = add i64 %i.ay, %i.a
  %i.ba = ashr i32 %.0118142, 10                  ; 8 uses
  %i.bb = lshr i32 %.0118142, 6
  %i.bc = and i32 %i.bb, 15                       ; 2 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.be = getelementptr [8 x i8], ptr %i.y, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bg = getelementptr [8 x i8], ptr %i.w, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 352
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.bi = phi ptr [ null, %bb.b ], [ %i.bf, %bb.d ], [ %i.bh, %bb.e ] ; 12 uses
  %i.bj = icmp slt i32 %.0113146, %i.ba
  br i1 %i.bj, label %.lr.ph138, label %.preheader

.lr.ph138:                                        ; preds = %bb.f
  br i1 %i.z, label %.lr.ph138.split.us, label %.lr.ph138.split.preheader

.lr.ph138.split.preheader:                        ; preds = %.lr.ph138
  %i.bk = sub i32 %i.ba, %.0113146
  %xtraiter = and i32 %i.bk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph138.split.prol.loopexit, label %.lr.ph138.split.prol

.lr.ph138.split.prol:                             ; preds = %.lr.ph138.split.preheader, %.lr.ph138.split.prol
  %.1114136.prol = phi i32 [ %i.bm, %.lr.ph138.split.prol ], [ %.0113146, %.lr.ph138.split.preheader ]
  %.1117135.prol = phi ptr [ %i.bl, %.lr.ph138.split.prol ], [ %.0116143, %.lr.ph138.split.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph138.split.prol ], [ 0, %.lr.ph138.split.preheader ]
  %.0..0..prol = load ptr, ptr %i.c, align 16, !tbaa !17 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx315, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..prol, ptr %.56..56..sroa_idx326, align 8, !tbaa !17
  %i.bl = getelementptr inbounds i8, ptr %.1117135.prol, i64 %3 ; 3 uses
  %i.bm = add nsw i32 %.1114136.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph138.split.prol.loopexit, label %.lr.ph138.split.prol, !llvm.loop !224

.lr.ph138.split.prol.loopexit:                    ; preds = %.lr.ph138.split.prol, %.lr.ph138.split.preheader
  %.0..lcssa.unr = phi ptr [ poison, %.lr.ph138.split.preheader ], [ %.0..0..prol, %.lr.ph138.split.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph138.split.preheader ], [ %i.bl, %.lr.ph138.split.prol ]
  %.1114136.unr = phi i32 [ %.0113146, %.lr.ph138.split.preheader ], [ %i.bm, %.lr.ph138.split.prol ]
  %.1117135.unr = phi ptr [ %.0116143, %.lr.ph138.split.preheader ], [ %i.bl, %.lr.ph138.split.prol ]
  %i.bn = sub i32 %.0113146, %i.ba
  %i.bo = icmp ugt i32 %i.bn, -4
  br i1 %i.bo, label %._crit_edge, label %.lr.ph138.split

.lr.ph138.split.us:                               ; preds = %.lr.ph138, %._crit_edge.us
  %.1114136.us = phi i32 [ %i.ct, %._crit_edge.us ], [ %.0113146, %.lr.ph138 ]
  %.1117135.us = phi ptr [ %i.cs, %._crit_edge.us ], [ %.0116143, %.lr.ph138 ] ; 3 uses
  %.0..0.174 = load ptr, ptr %i.c, align 16, !tbaa !17 ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx314, i64 56, i1 false), !tbaa !17
  store ptr %.0..0.174, ptr %.56..56..sroa_idx325, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph138.split.us, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph138.split.us ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.0108134.us = phi i32 [ 0, %.lr.ph138.split.us ], [ %i.cq, %bb.j ] ; 3 uses
  %.0109133.us = phi i32 [ %6, %.lr.ph138.split.us ], [ %i.cr, %bb.j ] ; 2 uses
  %i.bp = ashr i32 %.0109133.us, 6                ; 2 uses
  %.not126.us = icmp eq i32 %i.bp, 0
  br i1 %.not126.us, label %.thread.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.ad, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 352
  %i.bt = getelementptr [8 x i8], ptr %i.ag, i64 %i.bq
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %i.bv = select i1 %i.aa, ptr %i.bu, ptr %i.bs   ; 2 uses
  %.not127.us = icmp eq ptr %i.bv, null
  br i1 %.not127.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = sext i32 %.0108134.us to i64
  %i.bx = getelementptr [2 x i8], ptr %.1117135.us, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -6
  %i.bz = load <8 x i8>, ptr %i.bv, align 8, !tbaa !13
  %i.ca = sext <8 x i8> %i.bz to <8 x i32>
  %i.cb = load <8 x i16>, ptr %i.by, align 2, !tbaa !10
  %i.cc = zext <8 x i16> %i.cb to <8 x i32>
  %i.cd = mul nsw <8 x i32> %i.cc, %i.ca
  %i.ce = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.cd)
  %op.rdx304 = add i32 %i.ce, %i.aj
  %i.cf = ashr i32 %op.rdx304, %i.ah
  br label %bb.j

.thread.us:                                       ; preds = %bb.h, %bb.g
  %i.cg = sext i32 %.0108134.us to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %.1117135.us, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !10
  %i.cj = zext i16 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, %i.m
  br label %bb.j

bb.j:                                             ; preds = %.thread.us, %bb.i
  %i.cl = phi i32 [ %i.cf, %bb.i ], [ %i.ck, %.thread.us ]
  %i.cm = trunc i32 %i.cl to i16
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.0..0.174, i64 %indvars.iv
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !10
  %i.co = add nsw i32 %.0109133.us, %8            ; 2 uses
  %i.cp = ashr i32 %i.co, 10
  %i.cq = add nsw i32 %i.cp, %.0108134.us
  %i.cr = and i32 %i.co, 1023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond160.not, label %._crit_edge.us, label %bb.g

._crit_edge.us:                                   ; preds = %bb.j
  %i.cs = getelementptr inbounds i8, ptr %.1117135.us, i64 %3 ; 2 uses
  %i.ct = add nsw i32 %.1114136.us, 1             ; 2 uses
  %exitcond161.not = icmp eq i32 %i.ct, %i.ba
  br i1 %exitcond161.not, label %.preheader, label %.lr.ph138.split.us

.preheader:                                       ; preds = %._crit_edge.us, %bb.f
  %.56. = phi ptr [ %.56.187, %bb.f ], [ %.0..0.174, %._crit_edge.us ] ; 10 uses
  %.1117.lcssa = phi ptr [ %.0116143, %bb.f ], [ %i.cs, %._crit_edge.us ] ; 6 uses
  %.1114.lcssa = phi i32 [ %.0113146, %bb.f ], [ %i.ba, %._crit_edge.us ] ; 6 uses
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.not125 = icmp eq ptr %i.bi, null
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  %.16..16. = load ptr, ptr %.16..16..sroa_idx321, align 16 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bi, i64 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bi, i64 5 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 6 ; 2 uses
  %.0.313 = load <2 x ptr>, ptr %i.c, align 16
  %.8..8. = load ptr, ptr %.8..8..sroa_idx320, align 8 ; 3 uses
  %.0..0.173 = load ptr, ptr %i.c, align 16       ; 3 uses
  %.24. = load <2 x ptr>, ptr %.24..24..sroa_idx, align 8 ; 4 uses
  %i.da = extractelement <2 x ptr> %.24., i64 0   ; 8 uses
  %.40. = load <2 x ptr>, ptr %.40..40..sroa_idx, align 8 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bi, i64 7 ; 2 uses
  br i1 %.not125, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check, label %.lr.ph.split.preheader306, label %vector.memcheck214

vector.memcheck214:                               ; preds = %.lr.ph.split.preheader
  %scevgep215 = getelementptr i8, ptr %i.bi, i64 8
  %scevgep216 = getelementptr i8, ptr %.0..0.173, i64 %i.ar
  %scevgep217 = getelementptr i8, ptr %.8..8., i64 %i.ar
  %scevgep218 = getelementptr i8, ptr %.16..16., i64 %i.ar
  %scevgep219 = getelementptr i8, ptr %i.da, i64 %i.ar
end_hunk_0
begin_hunk_1_@put_8tap_scaled_c:bb.a
  %i.dq = insertelement <8 x ptr> %i.dp, ptr %scevgep218, i64 3
  %i.dr = insertelement <8 x ptr> %i.dq, ptr %scevgep219, i64 4
  %i.ds = insertelement <8 x ptr> %i.dr, ptr %scevgep220, i64 5
  %i.dt = insertelement <8 x ptr> %i.ds, ptr %scevgep221, i64 6
  %i.du = insertelement <8 x ptr> %i.dt, ptr %scevgep222, i64 7
  %i.dv = icmp ult <8 x ptr> %i.au, %i.du
  %i.dw = and <8 x i1> %i.dv, %i.dm
  %bound0258 = icmp ult ptr %0, %scevgep223
  %bound1259 = icmp ult ptr %.56., %scevgep
  %found.conflict260 = and i1 %bound0258, %bound1259
  %i.dx = bitcast <8 x i1> %i.dw to i8
  %i.dy = icmp ne i8 %i.dx, 0
  %op.rdx = or i1 %i.dy, %found.conflict260
  %op.rdx303 = or i1 %op.rdx, %stride.check227
  br i1 %op.rdx303, label %.lr.ph.split.preheader306, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck214
  %i.dz = load i8, ptr %i.bi, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert267 = insertelement <8 x i8> poison, i8 %i.dz, i64 0
  %broadcast.splat268 = shufflevector <8 x i8> %broadcast.splatinsert267, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ea = sext <8 x i8> %broadcast.splat268 to <8 x i32>
  %i.eb = load i8, ptr %i.cu, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert269 = insertelement <8 x i8> poison, i8 %i.eb, i64 0
  %broadcast.splat270 = shufflevector <8 x i8> %broadcast.splatinsert269, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ec = sext <8 x i8> %broadcast.splat270 to <8 x i32>
  %i.ed = load i8, ptr %i.cv, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert271 = insertelement <8 x i8> poison, i8 %i.ed, i64 0
  %broadcast.splat272 = shufflevector <8 x i8> %broadcast.splatinsert271, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ee = sext <8 x i8> %broadcast.splat272 to <8 x i32>
  %i.ef = load i8, ptr %i.cw, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert273 = insertelement <8 x i8> poison, i8 %i.ef, i64 0
  %broadcast.splat274 = shufflevector <8 x i8> %broadcast.splatinsert273, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.eg = sext <8 x i8> %broadcast.splat274 to <8 x i32>
  %i.eh = load i8, ptr %i.cx, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert275 = insertelement <8 x i8> poison, i8 %i.eh, i64 0
  %broadcast.splat276 = shufflevector <8 x i8> %broadcast.splatinsert275, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ei = sext <8 x i8> %broadcast.splat276 to <8 x i32>
  %i.ej = load i8, ptr %i.cy, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert277 = insertelement <8 x i8> poison, i8 %i.ej, i64 0
  %broadcast.splat278 = shufflevector <8 x i8> %broadcast.splatinsert277, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ek = sext <8 x i8> %broadcast.splat278 to <8 x i32>
  %i.el = load i8, ptr %i.cz, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert279 = insertelement <8 x i8> poison, i8 %i.el, i64 0
  %broadcast.splat280 = shufflevector <8 x i8> %broadcast.splatinsert279, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.em = sext <8 x i8> %broadcast.splat280 to <8 x i32>
  %i.en = load i8, ptr %i.db, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert281 = insertelement <8 x i8> poison, i8 %i.en, i64 0
  %broadcast.splat282 = shufflevector <8 x i8> %broadcast.splatinsert281, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.eo = sext <8 x i8> %broadcast.splat282 to <8 x i32>
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph265
  %index290 = phi i64 [ 0, %vector.ph265 ], [ %index.next299, %vector.body289 ] ; 10 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.0..0.173, i64 %index290
  %wide.load291 = load <8 x i16>, ptr %i.ep, align 2, !tbaa !10, !alias.scope !241
  %i.eq = sext <8 x i16> %wide.load291 to <8 x i32>
  %i.er = mul nsw <8 x i32> %i.eq, %i.ea
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.8..8., i64 %index290
  %wide.load292 = load <8 x i16>, ptr %i.es, align 2, !tbaa !10, !alias.scope !242
  %i.et = sext <8 x i16> %wide.load292 to <8 x i32>
  %i.eu = mul nsw <8 x i32> %i.et, %i.ec
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %.16..16., i64 %index290
  %wide.load293 = load <8 x i16>, ptr %i.ev, align 2, !tbaa !10, !alias.scope !243
  %i.ew = sext <8 x i16> %wide.load293 to <8 x i32>
  %i.ex = mul nsw <8 x i32> %i.ew, %i.ee
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %index290
  %wide.load294 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !10, !alias.scope !244
  %i.ez = sext <8 x i16> %wide.load294 to <8 x i32>
  %i.fa = mul nsw <8 x i32> %i.ez, %i.eg
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %index290
  %wide.load295 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !10, !alias.scope !245
  %i.fc = sext <8 x i16> %wide.load295 to <8 x i32>
  %i.fd = mul nsw <8 x i32> %i.fc, %i.ei
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %index290
  %wide.load296 = load <8 x i16>, ptr %i.fe, align 2, !tbaa !10, !alias.scope !246
  %i.ff = sext <8 x i16> %wide.load296 to <8 x i32>
  %i.fg = mul nsw <8 x i32> %i.ff, %i.ek
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %index290
  %wide.load297 = load <8 x i16>, ptr %i.fh, align 2, !tbaa !10, !alias.scope !247
  %i.fi = sext <8 x i16> %wide.load297 to <8 x i32>
  %i.fj = mul nsw <8 x i32> %i.fi, %i.em
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.56., i64 %index290
  %wide.load298 = load <8 x i16>, ptr %i.fk, align 2, !tbaa !10, !alias.scope !248
  %i.fl = sext <8 x i16> %wide.load298 to <8 x i32>
  %i.fm = mul nsw <8 x i32> %i.fl, %i.eo
  %i.fn = add nsw <8 x i32> %i.er, %broadcast.splat284
  %i.fo = add nsw <8 x i32> %i.fn, %i.eu
  %i.fp = add nsw <8 x i32> %i.fo, %i.ex
  %i.fq = add nsw <8 x i32> %i.fp, %i.fa
  %i.fr = add nsw <8 x i32> %i.fq, %i.fd
  %i.fs = add nsw <8 x i32> %i.fr, %i.fg
  %i.ft = add nsw <8 x i32> %i.fs, %i.fj
  %i.fu = add nsw <8 x i32> %i.ft, %i.fm
  %i.fv = ashr <8 x i32> %i.fu, %broadcast.splat286 ; 2 uses
  %i.fw = icmp slt <8 x i32> %i.fv, zeroinitializer
  %i.fx = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fv, <8 x i32> %broadcast.splat288)
  %i.fy = trunc <8 x i32> %i.fx to <8 x i16>
  %i.fz = select <8 x i1> %i.fw, <8 x i16> zeroinitializer, <8 x i16> %i.fy
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %.0115144, i64 %index290
  store <8 x i16> %i.fz, ptr %i.ga, align 2, !tbaa !10, !alias.scope !249, !noalias !250
  %index.next299 = add nuw i64 %index290, 8       ; 2 uses
  %i.gb = icmp eq i64 %index.next299, %n.vec266
  br i1 %i.gb, label %middle.block300, label %vector.body289, !llvm.loop !236

middle.block300:                                  ; preds = %vector.body289
  br i1 %cmp.n301, label %._crit_edge, label %.lr.ph.split.preheader306

.lr.ph.split.preheader306:                        ; preds = %vector.memcheck214, %.lr.ph.split.preheader, %middle.block300
  %indvars.iv162.ph = phi i64 [ 0, %vector.memcheck214 ], [ 0, %.lr.ph.split.preheader ], [ %n.vec266, %middle.block300 ]
  %i.gc = extractelement <2 x ptr> %.24., i64 1
  %i.gd = extractelement <2 x ptr> %.40., i64 0
  %i.ge = extractelement <2 x ptr> %.40., i64 1
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.24.179209 = ptrtoaddr ptr %i.da to i64
  %i.gf = sub i64 %.24.179209, %i.az
  %diff.check = icmp ugt i64 %i.gf, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.preheader305, label %vector.body

vector.body:                                      ; preds = %.lr.ph.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %index
  %wide.load = load <8 x i16>, ptr %i.gg, align 2, !tbaa !10
  %i.gh = sext <8 x i16> %wide.load to <8 x i32>
  %i.gi = add nsw <8 x i32> %broadcast.splat, %i.gh
  %i.gj = ashr <8 x i32> %i.gi, %broadcast.splat211 ; 2 uses
  %i.gk = icmp slt <8 x i32> %i.gj, zeroinitializer
  %i.gl = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gj, <8 x i32> %broadcast.splat213)
  %i.gm = trunc <8 x i32> %i.gl to <8 x i16>
  %i.gn = select <8 x i1> %i.gk, <8 x i16> zeroinitializer, <8 x i16> %i.gm
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %.0115144, i64 %index
  store <8 x i16> %i.gn, ptr %i.go, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader305

.lr.ph.split.us.preheader305:                     ; preds = %.lr.ph.split.us.preheader, %middle.block
  %indvars.iv167.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod311.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader305
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv167.ph
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !10
  %i.gs = sext i16 %i.gr to i32
  %i.gt = add nsw i32 %i.o, %i.gs
  %i.gu = ashr i32 %i.gt, %i.m                    ; 2 uses
  %i.gv = icmp slt i32 %i.gu, 0
  %i.gw = call i32 @llvm.smin.i32(i32 %i.gu, i32 %11)
  %i.gx = trunc i32 %i.gw to i16
  %i.gy = select i1 %i.gv, i16 0, i16 %i.gx
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.0115144, i64 %indvars.iv167.ph
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !10
  %indvars.iv.next168.prol = or disjoint i64 %indvars.iv167.ph, 1
  br label %.lr.ph.split.us.prol.loopexit

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader305
  %indvars.iv167.unr = phi i64 [ %indvars.iv167.ph, %.lr.ph.split.us.preheader305 ], [ %indvars.iv.next168.prol, %.lr.ph.split.us.prol ]
  %i.ha = icmp eq i64 %indvars.iv167.ph, %i.ax
  br i1 %i.ha, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv167 = phi i64 [ %indvars.iv.next168.1, %.lr.ph.split.us ], [ %indvars.iv167.unr, %.lr.ph.split.us.prol.loopexit ] ; 4 uses
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv167
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !10
  %i.hd = sext i16 %i.hc to i32
  %i.he = add nsw i32 %i.o, %i.hd
  %i.hf = ashr i32 %i.he, %i.m                    ; 2 uses
  %i.hg = icmp slt i32 %i.hf, 0
  %i.hh = call i32 @llvm.smin.i32(i32 %i.hf, i32 %11)
  %i.hi = trunc i32 %i.hh to i16
  %i.hj = select i1 %i.hg, i16 0, i16 %i.hi
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %.0115144, i64 %indvars.iv167
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !10
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv.next168
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !10
  %i.hn = sext i16 %i.hm to i32
  %i.ho = add nsw i32 %i.o, %i.hn
  %i.hp = ashr i32 %i.ho, %i.m                    ; 2 uses
  %i.hq = icmp slt i32 %i.hp, 0
  %i.hr = call i32 @llvm.smin.i32(i32 %i.hp, i32 %11)
  %i.hs = trunc i32 %i.hr to i16
  %i.ht = select i1 %i.hq, i16 0, i16 %i.hs
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.0115144, i64 %indvars.iv.next168
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !10
  %indvars.iv.next168.1 = add nuw nsw i64 %indvars.iv167, 2 ; 2 uses
  %exitcond171.not.1 = icmp eq i64 %indvars.iv.next168.1, %wide.trip.count170
  br i1 %exitcond171.not.1, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !238

.lr.ph138.split:                                  ; preds = %.lr.ph138.split.prol.loopexit, %.lr.ph138.split
  %.1114136 = phi i32 [ %i.hw, %.lr.ph138.split ], [ %.1114136.unr, %.lr.ph138.split.prol.loopexit ]
  %.1117135 = phi ptr [ %i.hv, %.lr.ph138.split ], [ %.1117135.unr, %.lr.ph138.split.prol.loopexit ]
  %.0..0. = load ptr, ptr %i.c, align 16, !tbaa !17
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx, i64 56, i1 false), !tbaa !17
  store ptr %.0..0., ptr %.56..56..sroa_idx324, align 8, !tbaa !17
  %.0..0..1 = load ptr, ptr %i.c, align 16, !tbaa !17
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx316, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..1, ptr %.56..56..sroa_idx327, align 8, !tbaa !17
  %.0..0..2 = load ptr, ptr %i.c, align 16, !tbaa !17
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx317, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..2, ptr %.56..56..sroa_idx328, align 8, !tbaa !17
  %.0..0..3 = load ptr, ptr %i.c, align 16, !tbaa !17 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx318, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..3, ptr %.56..56..sroa_idx329, align 8, !tbaa !17
  %i.hv = getelementptr inbounds i8, ptr %.1117135, i64 %12 ; 2 uses
  %i.hw = add nsw i32 %.1114136, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.hw, %i.ba
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph138.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader306, %.lr.ph.split
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %.lr.ph.split ], [ %indvars.iv162.ph, %.lr.ph.split.preheader306 ] ; 10 uses
  %i.hx = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.hy = sext i8 %i.hx to i32
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %.0..0.173, i64 %indvars.iv162
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !10
  %i.ib = sext i16 %i.ia to i32
  %i.ic = mul nsw i32 %i.ib, %i.hy
  %i.id = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.ie = sext i8 %i.id to i32
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %.8..8., i64 %indvars.iv162
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !10
  %i.ih = sext i16 %i.ig to i32
  %i.ii = mul nsw i32 %i.ih, %i.ie
  %i.ij = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.ik = sext i8 %i.ij to i32
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %.16..16., i64 %indvars.iv162
  %i.im = load i16, ptr %i.il, align 2, !tbaa !10
  %i.in = sext i16 %i.im to i32
  %i.io = mul nsw i32 %i.in, %i.ik
  %i.ip = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.iq = sext i8 %i.ip to i32
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv162
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !10
  %i.it = sext i16 %i.is to i32
  %i.iu = mul nsw i32 %i.it, %i.iq
  %i.iv = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.iw = sext i8 %i.iv to i32
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %indvars.iv162
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !10
  %i.iz = sext i16 %i.iy to i32
  %i.ja = mul nsw i32 %i.iz, %i.iw
  %i.jb = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.jc = sext i8 %i.jb to i32
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %indvars.iv162
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !10
  %i.jf = sext i16 %i.je to i32
  %i.jg = mul nsw i32 %i.jf, %i.jc
  %i.jh = load i8, ptr %i.cz, align 1, !tbaa !13
  %i.ji = sext i8 %i.jh to i32
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %indvars.iv162
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !10
  %i.jl = sext i16 %i.jk to i32
  %i.jm = mul nsw i32 %i.jl, %i.ji
  %i.jn = load i8, ptr %i.db, align 1, !tbaa !13
  %i.jo = sext i8 %i.jn to i32
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %.56., i64 %indvars.iv162
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !10
  %i.jr = sext i16 %i.jq to i32
  %i.js = mul nsw i32 %i.jr, %i.jo
  %i.jt = add nsw i32 %i.ic, %i.am
  %i.ju = add nsw i32 %i.jt, %i.ii
  %i.jv = add nsw i32 %i.ju, %i.io
  %i.jw = add nsw i32 %i.jv, %i.iu
  %i.jx = add nsw i32 %i.jw, %i.ja
  %i.jy = add nsw i32 %i.jx, %i.jg
  %i.jz = add nsw i32 %i.jy, %i.jm
  %i.ka = add nsw i32 %i.jz, %i.js
  %i.kb = ashr i32 %i.ka, %i.ak                   ; 2 uses
  %i.kc = icmp slt i32 %i.kb, 0
  %i.kd = call i32 @llvm.smin.i32(i32 %i.kb, i32 %11)
  %i.ke = trunc i32 %i.kd to i16
  %i.kf = select i1 %i.kc, i16 0, i16 %i.ke
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %.0115144, i64 %indvars.iv162
  store i16 %i.kf, ptr %i.kg, align 2, !tbaa !10
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !239

._crit_edge:                                      ; preds = %.lr.ph138.split.prol.loopexit, %.lr.ph138.split, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block300, %middle.block, %.preheader
  %.1114.lcssa202 = phi i32 [ %.1114.lcssa, %.preheader ], [ %.1114.lcssa, %middle.block300 ], [ %.1114.lcssa, %middle.block ], [ %.1114.lcssa, %.lr.ph.split.us.prol.loopexit ], [ %.1114.lcssa, %.lr.ph.split ], [ %.1114.lcssa, %.lr.ph.split.us ], [ %i.ba, %.lr.ph138.split ], [ %i.ba, %.lr.ph138.split.prol.loopexit ]
  %.1117.lcssa201 = phi ptr [ %.1117.lcssa, %.preheader ], [ %.1117.lcssa, %middle.block300 ], [ %.1117.lcssa, %middle.block ], [ %.1117.lcssa, %.lr.ph.split.us.prol.loopexit ], [ %.1117.lcssa, %.lr.ph.split ], [ %.1117.lcssa, %.lr.ph.split.us ], [ %.lcssa.unr, %.lr.ph138.split.prol.loopexit ], [ %i.hv, %.lr.ph138.split ]
  %.56.200 = phi ptr [ %.56., %.preheader ], [ %.56., %middle.block300 ], [ %.56., %middle.block ], [ %.56., %.lr.ph.split.us.prol.loopexit ], [ %.56., %.lr.ph.split ], [ %.56., %.lr.ph.split.us ], [ %.0..lcssa.unr, %.lr.ph138.split.prol.loopexit ], [ %.0..0..3, %.lr.ph138.split ]
  %i.kh = add nsw i32 %.0118142, %9
  %i.ki = getelementptr inbounds i8, ptr %.0115144, i64 %1
  %i.kj = add nuw nsw i32 %.0111147, 1            ; 2 uses
  %exitcond172.not = icmp eq i32 %i.kj, %5
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond172.not, label %._crit_edge150, label %bb.b
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @prep_8tap_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 11) %7, i32 noundef %8) unnamed_addr #4 {
bb.a:
  %i.a = alloca [17280 x i16], align 16           ; 4 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %8, i1 true) ; 3 uses
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.thread216, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 4                       ; 2 uses
  %i.d = sext i32 %5 to i64
  %. = select i1 %i.c, i32 3, i32 1
  %.277 = select i1 %i.c, i64 -8, i64 352
  %i.e = and i32 %7, %.
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.f
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %i.d
  %i.i = getelementptr i8, ptr %i.h, i64 %.277    ; 3 uses
  %.not200 = icmp eq i32 %6, 0
  br i1 %.not200, label %.thread, label %bb.c

.thread216:                                       ; preds = %bb.a
  %.not200217 = icmp eq i32 %6, 0
  br i1 %.not200217, label %.thread.thread, label %bb.c

.thread.thread:                                   ; preds = %.thread216
  %i.j = and i64 %2, 1
  %.not.i212218 = icmp eq i64 %i.j, 0
  tail call void @llvm.assume(i1 %.not.i212218)
  %i.k = ashr exact i64 %2, 1
  br label %.thread214

bb.c:                                             ; preds = %.thread216, %bb.b
  %i.l = phi ptr [ null, %.thread216 ], [ %i.i, %bb.b ] ; 11 uses
  %i.m = icmp sgt i32 %4, 4                       ; 2 uses
  %i.n = lshr i32 %7, 2                           ; 2 uses
  %i.o = and i32 %i.n, 1
  %.sink276 = select i1 %i.m, i32 %i.n, i32 %i.o
  %.sink272 = select i1 %i.m, i64 -8, i64 352
  %i.p = zext nneg i32 %.sink276 to i64
  %i.q = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.p
  %i.r = sext i32 %6 to i64
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 %.sink272 ; 10 uses
  %i.u = and i64 %2, 1
  %.not.i = icmp eq i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.v = ashr exact i64 %2, 1                     ; 8 uses
  %.not201 = icmp eq ptr %i.l, null
  %.not202 = icmp eq ptr %i.t, null               ; 2 uses
  br i1 %.not201, label %bb.f, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.w = and i64 %2, 1
  %.not.i212 = icmp eq i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i212)
  %i.x = ashr exact i64 %2, 1                     ; 2 uses
  %.not201213 = icmp eq ptr %i.i, null
  br i1 %.not201213, label %.thread214, label %.preheader220

bb.d:                                             ; preds = %bb.c
  br i1 %.not202, label %.preheader220, label %bb.e

.preheader220:                                    ; preds = %.thread, %bb.d
  %i.y = phi i64 [ %i.v, %bb.d ], [ %i.x, %.thread ] ; 2 uses
  %i.z = phi ptr [ %i.l, %bb.d ], [ %i.i, %.thread ] ; 11 uses
  %i.aa = sext i32 %3 to i64                      ; 2 uses
  %i.ab = icmp sgt i32 %3, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 7
  %i.aj = sub nsw i32 24, %i.b                    ; 3 uses
  %i.ak = shl nuw nsw i32 1, %i.aj
  %i.al = lshr i32 %i.ak, 1                       ; 2 uses
  br i1 %i.ab, label %.lr.ph231.preheader, label %.loopexit.split

.lr.ph231.preheader:                              ; preds = %.preheader220
  %wide.trip.count247 = zext nneg i32 %3 to i64   ; 5 uses
  %i.am = add i32 %4, -1
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = mul nuw nsw i64 %i.aa, %i.an
  %i.ap = add nuw i64 %i.ao, %wide.trip.count247
  %i.aq = shl i64 %i.ap, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.aq  ; 2 uses
  %scevgep337 = getelementptr i8, ptr %i.z, i64 8
  %scevgep338 = getelementptr i8, ptr %1, i64 -6
  %i.ar = mul i64 %i.y, %i.an
  %i.as = add i64 %i.ar, %wide.trip.count247
  %i.at = shl i64 %i.as, 1
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %scevgep339 = getelementptr i8, ptr %i.au, i64 8
  %min.iters.check344 = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep337
  %bound1 = icmp ult ptr %i.z, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0340 = icmp ult ptr %0, %scevgep339
  %bound1341 = icmp ult ptr %scevgep338, %scevgep
  %found.conflict342 = and i1 %bound0340, %bound1341
  %stride.check = icmp slt i64 %2, 0
  %i.av = or i1 %found.conflict342, %stride.check
  %conflict.rdx = or i1 %found.conflict, %i.av
  %n.vec346 = and i64 %wide.trip.count247, 2147483640 ; 3 uses
  %broadcast.splatinsert363 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat364 = shufflevector <8 x i32> %broadcast.splatinsert363, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert365 = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat366 = shufflevector <8 x i32> %broadcast.splatinsert365, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n379 = icmp eq i64 %n.vec346, %wide.trip.count247
  br label %.lr.ph231

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
end_hunk_1
begin_hunk_2_@prep_c:bb.a
  %i.x = add <8 x i16> %i.v, splat (i16 -8192)
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.013, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <8 x i16> %i.w, ptr %i.y, align 2, !tbaa !10, !alias.scope !295, !noalias !294
  store <8 x i16> %i.x, ptr %i.z, align 2, !tbaa !10, !alias.scope !295, !noalias !294
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.015, i64 %index28
  %wide.load29 = load <4 x i16>, ptr %i.ab, align 2, !tbaa !10, !alias.scope !294
  %i.ac = zext <4 x i16> %wide.load29 to <4 x i32>
  %i.ad = shl nuw nsw <4 x i32> %i.ac, %broadcast.splat27
  %i.ae = trunc <4 x i32> %i.ad to <4 x i16>
  %i.af = add <4 x i16> %i.ae, splat (i16 -8192)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.013, i64 %index28
  store <4 x i16> %i.af, ptr %i.ag, align 2, !tbaa !10, !alias.scope !295, !noalias !294
  %index.next30 = add nuw i64 %index28, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !291

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n31, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec25, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.015, i64 %indvars.iv.prol
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !10
  %i.ak = zext i16 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, %i.b
  %i.am = trunc i32 %i.al to i16
  %i.an = add i16 %i.am, -8192
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.013, i64 %indvars.iv.prol
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !10
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !292

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ap = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.013, i64 %i.c
  %i.as = getelementptr inbounds [2 x i8], ptr %.015, i64 %2
  %i.at = add nsw i32 %.014, -1                   ; 2 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %.split19, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.015, i64 %indvars.iv
  %i.av = load i16, ptr %i.au, align 2, !tbaa !10
  %i.aw = zext i16 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, %i.b
  %i.ay = trunc i32 %i.ax to i16
  %i.az = add i16 %i.ay, -8192
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.013, i64 %indvars.iv
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.015, i64 %indvars.iv.next
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !10
  %i.bd = zext i16 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, %i.b
  %i.bf = trunc i32 %i.be to i16
  %i.bg = add i16 %i.bf, -8192
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.013, i64 %indvars.iv.next
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.015, i64 %indvars.iv.next.1
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !10
  %i.bk = zext i16 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, %i.b
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = add i16 %i.bm, -8192
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.013, i64 %indvars.iv.next.1
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !10
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.015, i64 %indvars.iv.next.2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !10
  %i.br = zext i16 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, %i.b
  %i.bt = trunc i32 %i.bs to i16
  %i.bu = add i16 %i.bt, -8192
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.013, i64 %indvars.iv.next.2
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !10
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !293

.split19:                                         ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @prep_8tap_scaled_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 0, 11) %9, i32 noundef %10) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [1024 x i16], align 16            ; 10 uses
  %i.c = alloca [8 x ptr], align 16               ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = and i64 %2, 1
  %.not.i = icmp eq i64 %i.d, 0
  tail call void @llvm.assume(i1 %.not.i)
  store ptr %i.b, ptr %i.c, align 16, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.8..8..sroa_idx304 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %.8..8..sroa_idx304, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %.16..16..sroa_idx, align 16, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %.24..24..sroa_idx307 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.g, ptr %.24..24..sroa_idx307, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  %.32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %.32..32..sroa_idx, align 16, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1280
  %.40..40..sroa_idx308 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.i, ptr %.40..40..sroa_idx308, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1536
  %.48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.j, ptr %.48..48..sroa_idx, align 16, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1792 ; 2 uses
  %.56..56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.k, ptr %.56..56..sroa_idx, align 8, !tbaa !17
  %i.l = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %10, i1 true) ; 2 uses
  %i.m = add nsw i32 %i.l, -18
  %i.n = icmp sgt i32 %4, 0
  br i1 %i.n, label %.lr.ph142, label %._crit_edge143

.lr.ph142:                                        ; preds = %bb.a
  %i.o = ashr exact i64 %2, 1
  %.idx = mul i64 %i.o, -6
  %i.p = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.q = icmp samesign ugt i32 %4, 4
  %i.r = lshr i32 %9, 2                           ; 2 uses
  %i.s = and i32 %i.r, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.t
  %i.v = zext nneg i32 %i.r to i64
  %i.w = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.v
  %i.x = icmp sgt i32 %3, 0                       ; 2 uses
  %i.y = icmp sgt i32 %3, 4
  %i.z = and i32 %9, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.aa
  %i.ac = and i32 %9, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.ad
  %i.af = sub nsw i32 24, %i.l                    ; 2 uses
  %i.ag = shl nuw nsw i32 1, %i.af
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = sext i32 %3 to i64                      ; 3 uses
  %wide.trip.count = zext i32 %3 to i64           ; 12 uses
  %wide.trip.count158 = zext nneg i32 %3 to i64
  %wide.trip.count163 = zext nneg i32 %3 to i64
  %i.aj = shl nsw i64 %i.ai, 1
  %i.ak = add nsw i32 %4, -1
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.ai, %i.al
  %i.an = shl nuw nsw i64 %wide.trip.count, 1     ; 8 uses
  %i.ao = add i64 %i.am, %wide.trip.count
  %i.ap = shl i64 %i.ao, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.ap  ; 2 uses
  %i.aq = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.ar = shufflevector <8 x ptr> %i.aq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.as = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.at = shufflevector <8 x ptr> %i.as, <8 x ptr> poison, <8 x i32> zeroinitializer
  %.8..8..sroa_idx300 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx311 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx309 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.8..8..sroa_idx301 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx312 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.8..8..sroa_idx302 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx313 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.8..8..sroa_idx303 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx314 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %11 = shl i64 %2, 2
  %.8..8..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.56..56..sroa_idx310 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.16..16..sroa_idx306 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.8..8..sroa_idx305 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.40..40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %min.iters.check259 = icmp ult i32 %3, 8
  %n.vec261 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n288 = icmp eq i64 %n.vec261, %wide.trip.count
  %min.iters.check = icmp ult i32 %3, 4
  %min.iters.check203 = icmp ult i32 %3, 16
  %i.au = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec205 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n209 = icmp eq i64 %n.vec205, %wide.trip.count
  %xtraiter295 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br label %bb.b

._crit_edge143:                                   ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void

bb.b:                                             ; preds = %.lr.ph142, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph142 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.56.180 = phi ptr [ %i.k, %.lr.ph142 ], [ %.56.193, %._crit_edge ]
  %.0104140 = phi i32 [ 0, %.lr.ph142 ], [ %i.ju, %._crit_edge ]
  %.0106139 = phi i32 [ -8, %.lr.ph142 ], [ %.1107.lcssa195, %._crit_edge ] ; 7 uses
  %.0108137 = phi ptr [ %0, %.lr.ph142 ], [ %i.jt, %._crit_edge ] ; 10 uses
  %.0109136 = phi ptr [ %i.p, %.lr.ph142 ], [ %.1110.lcssa194, %._crit_edge ] ; 4 uses
  %.0111135 = phi i32 [ %6, %.lr.ph142 ], [ %i.js, %._crit_edge ] ; 3 uses
  %i.av = mul i64 %i.aj, %indvar
  %i.aw = add i64 %i.av, %i.a
  %i.ax = ashr i32 %.0111135, 10                  ; 8 uses
  %i.ay = lshr i32 %.0111135, 6
  %i.az = and i32 %i.ay, 15                       ; 2 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr [8 x i8], ptr %i.w, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bd = getelementptr [8 x i8], ptr %i.u, i64 %i.ba
  %i.be = getelementptr i8, ptr %i.bd, i64 352
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.bf = phi ptr [ null, %bb.b ], [ %i.bc, %bb.d ], [ %i.be, %bb.e ] ; 12 uses
  %i.bg = icmp slt i32 %.0106139, %i.ax
  br i1 %i.bg, label %.lr.ph131, label %.preheader

.lr.ph131:                                        ; preds = %bb.f
  br i1 %i.x, label %.lr.ph131.split.us, label %.lr.ph131.split.preheader

.lr.ph131.split.preheader:                        ; preds = %.lr.ph131
  %i.bh = sub i32 %i.ax, %.0106139
  %xtraiter = and i32 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph131.split.prol.loopexit, label %.lr.ph131.split.prol

.lr.ph131.split.prol:                             ; preds = %.lr.ph131.split.preheader, %.lr.ph131.split.prol
  %.1107129.prol = phi i32 [ %i.bj, %.lr.ph131.split.prol ], [ %.0106139, %.lr.ph131.split.preheader ]
  %.1110128.prol = phi ptr [ %i.bi, %.lr.ph131.split.prol ], [ %.0109136, %.lr.ph131.split.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph131.split.prol ], [ 0, %.lr.ph131.split.preheader ]
  %.0..0..prol = load ptr, ptr %i.c, align 16, !tbaa !17 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx300, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..prol, ptr %.56..56..sroa_idx311, align 8, !tbaa !17
  %i.bi = getelementptr inbounds i8, ptr %.1110128.prol, i64 %2 ; 3 uses
  %i.bj = add nsw i32 %.1107129.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph131.split.prol.loopexit, label %.lr.ph131.split.prol, !llvm.loop !296

.lr.ph131.split.prol.loopexit:                    ; preds = %.lr.ph131.split.prol, %.lr.ph131.split.preheader
  %.0..lcssa.unr = phi ptr [ poison, %.lr.ph131.split.preheader ], [ %.0..0..prol, %.lr.ph131.split.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph131.split.preheader ], [ %i.bi, %.lr.ph131.split.prol ]
  %.1107129.unr = phi i32 [ %.0106139, %.lr.ph131.split.preheader ], [ %i.bj, %.lr.ph131.split.prol ]
  %.1110128.unr = phi ptr [ %.0109136, %.lr.ph131.split.preheader ], [ %i.bi, %.lr.ph131.split.prol ]
  %i.bk = sub i32 %.0106139, %i.ax
  %i.bl = icmp ugt i32 %i.bk, -4
  br i1 %i.bl, label %._crit_edge, label %.lr.ph131.split

.lr.ph131.split.us:                               ; preds = %.lr.ph131, %._crit_edge.us
  %.1107129.us = phi i32 [ %i.cq, %._crit_edge.us ], [ %.0106139, %.lr.ph131 ]
  %.1110128.us = phi ptr [ %i.cp, %._crit_edge.us ], [ %.0109136, %.lr.ph131 ] ; 3 uses
  %.0..0.167 = load ptr, ptr %i.c, align 16, !tbaa !17 ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx299, i64 56, i1 false), !tbaa !17
  store ptr %.0..0.167, ptr %.56..56..sroa_idx310, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph131.split.us, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph131.split.us ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.0101127.us = phi i32 [ 0, %.lr.ph131.split.us ], [ %i.cn, %bb.j ] ; 3 uses
  %.0102126.us = phi i32 [ %5, %.lr.ph131.split.us ], [ %i.co, %bb.j ] ; 2 uses
  %i.bm = ashr i32 %.0102126.us, 6                ; 2 uses
  %.not120.us = icmp eq i32 %i.bm, 0
  br i1 %.not120.us, label %.thread.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.ab, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 352
  %i.bq = getelementptr [8 x i8], ptr %i.ae, i64 %i.bn
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = select i1 %i.y, ptr %i.br, ptr %i.bp    ; 2 uses
  %.not121.us = icmp eq ptr %i.bs, null
  br i1 %.not121.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = sext i32 %.0101127.us to i64
  %i.bu = getelementptr [2 x i8], ptr %.1110128.us, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -6
  %i.bw = load <8 x i8>, ptr %i.bs, align 8, !tbaa !13
  %i.bx = sext <8 x i8> %i.bw to <8 x i32>
  %i.by = load <8 x i16>, ptr %i.bv, align 2, !tbaa !10
  %i.bz = zext <8 x i16> %i.by to <8 x i32>
  %i.ca = mul nsw <8 x i32> %i.bz, %i.bx
  %i.cb = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ca)
  %op.rdx290 = add i32 %i.cb, %i.ah
  %i.cc = ashr i32 %op.rdx290, %i.af
  br label %bb.j

.thread.us:                                       ; preds = %bb.h, %bb.g
  %i.cd = sext i32 %.0101127.us to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %.1110128.us, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !10
  %i.cg = zext i16 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, %i.m
  br label %bb.j

bb.j:                                             ; preds = %.thread.us, %bb.i
  %i.ci = phi i32 [ %i.cc, %bb.i ], [ %i.ch, %.thread.us ]
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.0..0.167, i64 %indvars.iv
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !10
  %i.cl = add nsw i32 %.0102126.us, %7            ; 2 uses
  %i.cm = ashr i32 %i.cl, 10
  %i.cn = add nsw i32 %i.cm, %.0101127.us
  %i.co = and i32 %i.cl, 1023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond153.not, label %._crit_edge.us, label %bb.g

._crit_edge.us:                                   ; preds = %bb.j
  %i.cp = getelementptr inbounds i8, ptr %.1110128.us, i64 %2 ; 2 uses
  %i.cq = add nsw i32 %.1107129.us, 1             ; 2 uses
  %exitcond154.not = icmp eq i32 %i.cq, %i.ax
  br i1 %exitcond154.not, label %.preheader, label %.lr.ph131.split.us

.preheader:                                       ; preds = %._crit_edge.us, %bb.f
  %.56. = phi ptr [ %.56.180, %bb.f ], [ %.0..0.167, %._crit_edge.us ] ; 11 uses
  %.1110.lcssa = phi ptr [ %.0109136, %bb.f ], [ %i.cp, %._crit_edge.us ] ; 7 uses
  %.1107.lcssa = phi i32 [ %.0106139, %bb.f ], [ %i.ax, %._crit_edge.us ] ; 7 uses
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.not119 = icmp eq ptr %i.bf, null
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 2 uses
  %.16..16. = load ptr, ptr %.16..16..sroa_idx306, align 16 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bf, i64 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bf, i64 5 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bf, i64 6 ; 2 uses
  %.0.298 = load <2 x ptr>, ptr %i.c, align 16
  %.8..8. = load ptr, ptr %.8..8..sroa_idx305, align 8 ; 3 uses
  %.0..0.166 = load ptr, ptr %i.c, align 16       ; 3 uses
  %.24. = load <2 x ptr>, ptr %.24..24..sroa_idx, align 8 ; 4 uses
  %i.cx = extractelement <2 x ptr> %.24., i64 0   ; 11 uses
  %.40. = load <2 x ptr>, ptr %.40..40..sroa_idx, align 8 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bf, i64 7 ; 2 uses
  br i1 %.not119, label %iter.check, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check259, label %.lr.ph.split.preheader291, label %vector.memcheck210

vector.memcheck210:                               ; preds = %.lr.ph.split.preheader
  %scevgep211 = getelementptr i8, ptr %i.bf, i64 8
  %scevgep212 = getelementptr i8, ptr %.0..0.166, i64 %i.an
  %scevgep213 = getelementptr i8, ptr %.8..8., i64 %i.an
  %scevgep214 = getelementptr i8, ptr %.16..16., i64 %i.an
  %scevgep215 = getelementptr i8, ptr %i.cx, i64 %i.an
  %i.cz = extractelement <2 x ptr> %.24., i64 1   ; 2 uses
  %scevgep216 = getelementptr i8, ptr %i.cz, i64 %i.an
  %i.da = extractelement <2 x ptr> %.40., i64 0   ; 2 uses
  %scevgep217 = getelementptr i8, ptr %i.da, i64 %i.an
  %i.db = extractelement <2 x ptr> %.40., i64 1   ; 2 uses
  %scevgep218 = getelementptr i8, ptr %i.db, i64 %i.an
  %scevgep219 = getelementptr i8, ptr %.56., i64 %i.an
  %i.dc = shufflevector <2 x ptr> %.0.298, <2 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_2
begin_hunk_3_@prep_8tap_scaled_c:bb.a
  %i.dx = sext <8 x i8> %broadcast.splat to <8 x i32>
  %i.dy = load i8, ptr %i.cr, align 1, !tbaa !13, !alias.scope !314
  %broadcast.splatinsert262 = insertelement <8 x i8> poison, i8 %i.dy, i64 0
  %broadcast.splat263 = shufflevector <8 x i8> %broadcast.splatinsert262, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.dz = sext <8 x i8> %broadcast.splat263 to <8 x i32>
  %i.ea = load i8, ptr %i.cs, align 1, !tbaa !13, !alias.scope !314
  %broadcast.splatinsert264 = insertelement <8 x i8> poison, i8 %i.ea, i64 0
  %broadcast.splat265 = shufflevector <8 x i8> %broadcast.splatinsert264, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.eb = sext <8 x i8> %broadcast.splat265 to <8 x i32>
  %i.ec = load i8, ptr %i.ct, align 1, !tbaa !13, !alias.scope !314
  %broadcast.splatinsert266 = insertelement <8 x i8> poison, i8 %i.ec, i64 0
  %broadcast.splat267 = shufflevector <8 x i8> %broadcast.splatinsert266, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ed = sext <8 x i8> %broadcast.splat267 to <8 x i32>
  %i.ee = load i8, ptr %i.cu, align 1, !tbaa !13, !alias.scope !314
  %broadcast.splatinsert268 = insertelement <8 x i8> poison, i8 %i.ee, i64 0
  %broadcast.splat269 = shufflevector <8 x i8> %broadcast.splatinsert268, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ef = sext <8 x i8> %broadcast.splat269 to <8 x i32>
  %i.eg = load i8, ptr %i.cv, align 1, !tbaa !13, !alias.scope !314
  %broadcast.splatinsert270 = insertelement <8 x i8> poison, i8 %i.eg, i64 0
  %broadcast.splat271 = shufflevector <8 x i8> %broadcast.splatinsert270, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.eh = sext <8 x i8> %broadcast.splat271 to <8 x i32>
  %i.ei = load i8, ptr %i.cw, align 1, !tbaa !13, !alias.scope !314
  %broadcast.splatinsert272 = insertelement <8 x i8> poison, i8 %i.ei, i64 0
  %broadcast.splat273 = shufflevector <8 x i8> %broadcast.splatinsert272, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ej = sext <8 x i8> %broadcast.splat273 to <8 x i32>
  %i.ek = load i8, ptr %i.cy, align 1, !tbaa !13, !alias.scope !314
  %broadcast.splatinsert274 = insertelement <8 x i8> poison, i8 %i.ek, i64 0
  %broadcast.splat275 = shufflevector <8 x i8> %broadcast.splatinsert274, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.el = sext <8 x i8> %broadcast.splat275 to <8 x i32>
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph260
  %index277 = phi i64 [ 0, %vector.ph260 ], [ %index.next286, %vector.body276 ] ; 10 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %.0..0.166, i64 %index277
  %wide.load278 = load <8 x i16>, ptr %i.em, align 2, !tbaa !10, !alias.scope !315
  %i.en = sext <8 x i16> %wide.load278 to <8 x i32>
  %i.eo = mul nsw <8 x i32> %i.en, %i.dx
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.8..8., i64 %index277
  %wide.load279 = load <8 x i16>, ptr %i.ep, align 2, !tbaa !10, !alias.scope !316
  %i.eq = sext <8 x i16> %wide.load279 to <8 x i32>
  %i.er = mul nsw <8 x i32> %i.eq, %i.dz
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.16..16., i64 %index277
  %wide.load280 = load <8 x i16>, ptr %i.es, align 2, !tbaa !10, !alias.scope !317
  %i.et = sext <8 x i16> %wide.load280 to <8 x i32>
  %i.eu = mul nsw <8 x i32> %i.et, %i.eb
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %index277
  %wide.load281 = load <8 x i16>, ptr %i.ev, align 2, !tbaa !10, !alias.scope !318
  %i.ew = sext <8 x i16> %wide.load281 to <8 x i32>
  %i.ex = mul nsw <8 x i32> %i.ew, %i.ed
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %index277
  %wide.load282 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !10, !alias.scope !319
  %i.ez = sext <8 x i16> %wide.load282 to <8 x i32>
  %i.fa = mul nsw <8 x i32> %i.ez, %i.ef
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %index277
  %wide.load283 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !10, !alias.scope !320
  %i.fc = sext <8 x i16> %wide.load283 to <8 x i32>
  %i.fd = mul nsw <8 x i32> %i.fc, %i.eh
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %index277
  %wide.load284 = load <8 x i16>, ptr %i.fe, align 2, !tbaa !10, !alias.scope !321
  %i.ff = sext <8 x i16> %wide.load284 to <8 x i32>
  %i.fg = mul nsw <8 x i32> %i.ff, %i.ej
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %.56., i64 %index277
  %wide.load285 = load <8 x i16>, ptr %i.fh, align 2, !tbaa !10, !alias.scope !322
  %i.fi = sext <8 x i16> %wide.load285 to <8 x i32>
  %i.fj = mul nsw <8 x i32> %i.fi, %i.el
  %i.fk = add nsw <8 x i32> %i.eo, splat (i32 32)
  %i.fl = add nsw <8 x i32> %i.fk, %i.er
  %i.fm = add nsw <8 x i32> %i.fl, %i.eu
  %i.fn = add nsw <8 x i32> %i.fm, %i.ex
  %i.fo = add nsw <8 x i32> %i.fn, %i.fa
  %i.fp = add nsw <8 x i32> %i.fo, %i.fd
  %i.fq = add nsw <8 x i32> %i.fp, %i.fg
  %i.fr = add nsw <8 x i32> %i.fq, %i.fj
  %i.fs = lshr <8 x i32> %i.fr, splat (i32 6)
  %i.ft = trunc <8 x i32> %i.fs to <8 x i16>
  %i.fu = add <8 x i16> %i.ft, splat (i16 -8192)
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %index277
  store <8 x i16> %i.fu, ptr %i.fv, align 2, !tbaa !10, !alias.scope !323, !noalias !324
  %index.next286 = add nuw i64 %index277, 8       ; 2 uses
  %i.fw = icmp eq i64 %index.next286, %n.vec261
  br i1 %i.fw, label %middle.block287, label %vector.body276, !llvm.loop !308

middle.block287:                                  ; preds = %vector.body276
  br i1 %cmp.n288, label %._crit_edge, label %.lr.ph.split.preheader291

.lr.ph.split.preheader291:                        ; preds = %vector.memcheck210, %.lr.ph.split.preheader, %middle.block287
  %indvars.iv155.ph = phi i64 [ 0, %vector.memcheck210 ], [ 0, %.lr.ph.split.preheader ], [ %n.vec261, %middle.block287 ]
  %i.fx = extractelement <2 x ptr> %.24., i64 1
  %i.fy = extractelement <2 x ptr> %.40., i64 0
  %i.fz = extractelement <2 x ptr> %.40., i64 1
  br label %.lr.ph.split

iter.check:                                       ; preds = %.lr.ph
  %.24.172202 = ptrtoaddr ptr %i.cx to i64
  %i.ga = sub i64 %.24.172202, %i.aw
  %diff.check = icmp ugt i64 %i.ga, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check203, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load = load <8 x i16>, ptr %i.gb, align 2, !tbaa !10
  %wide.load204 = load <8 x i16>, ptr %i.gc, align 2, !tbaa !10
  %i.gd = add <8 x i16> %wide.load, splat (i16 -8192)
  %i.ge = add <8 x i16> %wide.load204, splat (i16 -8192)
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %index ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <8 x i16> %i.gd, ptr %i.gf, align 2, !tbaa !10
  store <8 x i16> %i.ge, ptr %i.gg, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !309

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index206 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next208, %vec.epilog.vector.body ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %index206
  %wide.load207 = load <4 x i16>, ptr %i.gi, align 2, !tbaa !10
  %i.gj = add <4 x i16> %wide.load207, splat (i16 -8192)
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %index206
  store <4 x i16> %i.gj, ptr %i.gk, align 2, !tbaa !10
  %index.next208 = add nuw i64 %index206, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next208, %n.vec205
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !310

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n209, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv160.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec205, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod296.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv160.prol = phi i64 [ %indvars.iv.next161.prol, %.lr.ph.split.us.prol ], [ %indvars.iv160.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv160.prol
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !10
  %i.go = add i16 %i.gn, -8192
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv160.prol
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !10
  %indvars.iv.next161.prol = add nuw nsw i64 %indvars.iv160.prol, 1 ; 2 uses
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !311

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv160.unr = phi i64 [ %indvars.iv160.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next161.prol, %.lr.ph.split.us.prol ]
  %i.gq = sub nsw i64 %indvars.iv160.ph, %wide.trip.count
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.3, %.lr.ph.split.us ], [ %indvars.iv160.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv160
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !10
  %i.gu = add i16 %i.gt, -8192
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv160
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !10
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next161
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !10
  %i.gy = add i16 %i.gx, -8192
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv.next161
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !10
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next161.1
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !10
  %i.hc = add i16 %i.hb, -8192
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv.next161.1
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !10
  %indvars.iv.next161.2 = add nuw nsw i64 %indvars.iv160, 3 ; 2 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next161.2
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !10
  %i.hg = add i16 %i.hf, -8192
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv.next161.2
  store i16 %i.hg, ptr %i.hh, align 2, !tbaa !10
  %indvars.iv.next161.3 = add nuw nsw i64 %indvars.iv160, 4 ; 2 uses
  %exitcond164.not.3 = icmp eq i64 %indvars.iv.next161.3, %wide.trip.count163
  br i1 %exitcond164.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !312

.lr.ph131.split:                                  ; preds = %.lr.ph131.split.prol.loopexit, %.lr.ph131.split
  %.1107129 = phi i32 [ %i.hj, %.lr.ph131.split ], [ %.1107129.unr, %.lr.ph131.split.prol.loopexit ]
  %.1110128 = phi ptr [ %i.hi, %.lr.ph131.split ], [ %.1110128.unr, %.lr.ph131.split.prol.loopexit ]
  %.0..0. = load ptr, ptr %i.c, align 16, !tbaa !17
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx, i64 56, i1 false), !tbaa !17
  store ptr %.0..0., ptr %.56..56..sroa_idx309, align 8, !tbaa !17
  %.0..0..1 = load ptr, ptr %i.c, align 16, !tbaa !17
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx301, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..1, ptr %.56..56..sroa_idx312, align 8, !tbaa !17
  %.0..0..2 = load ptr, ptr %i.c, align 16, !tbaa !17
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx302, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..2, ptr %.56..56..sroa_idx313, align 8, !tbaa !17
  %.0..0..3 = load ptr, ptr %i.c, align 16, !tbaa !17 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx303, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..3, ptr %.56..56..sroa_idx314, align 8, !tbaa !17
  %i.hi = getelementptr inbounds i8, ptr %.1110128, i64 %11 ; 2 uses
  %i.hj = add nsw i32 %.1107129, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.hj, %i.ax
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph131.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader291, %.lr.ph.split
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %.lr.ph.split ], [ %indvars.iv155.ph, %.lr.ph.split.preheader291 ] ; 10 uses
  %i.hk = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.hl = sext i8 %i.hk to i32
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %.0..0.166, i64 %indvars.iv155
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !10
  %i.ho = sext i16 %i.hn to i32
  %i.hp = mul nsw i32 %i.ho, %i.hl
  %i.hq = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.hr = sext i8 %i.hq to i32
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.8..8., i64 %indvars.iv155
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !10
  %i.hu = sext i16 %i.ht to i32
  %i.hv = mul nsw i32 %i.hu, %i.hr
  %i.hw = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.hx = sext i8 %i.hw to i32
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %.16..16., i64 %indvars.iv155
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !10
  %i.ia = sext i16 %i.hz to i32
  %i.ib = mul nsw i32 %i.ia, %i.hx
  %i.ic = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.id = sext i8 %i.ic to i32
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv155
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !10
  %i.ig = sext i16 %i.if to i32
  %i.ih = mul nsw i32 %i.ig, %i.id
  %i.ii = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.ij = sext i8 %i.ii to i32
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %indvars.iv155
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !10
  %i.im = sext i16 %i.il to i32
  %i.in = mul nsw i32 %i.im, %i.ij
  %i.io = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.ip = sext i8 %i.io to i32
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %indvars.iv155
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !10
  %i.is = sext i16 %i.ir to i32
  %i.it = mul nsw i32 %i.is, %i.ip
  %i.iu = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.iv = sext i8 %i.iu to i32
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %indvars.iv155
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !10
  %i.iy = sext i16 %i.ix to i32
  %i.iz = mul nsw i32 %i.iy, %i.iv
  %i.ja = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.jb = sext i8 %i.ja to i32
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.56., i64 %indvars.iv155
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !10
  %i.je = sext i16 %i.jd to i32
  %i.jf = mul nsw i32 %i.je, %i.jb
  %i.jg = add nsw i32 %i.hp, 32
  %i.jh = add nsw i32 %i.jg, %i.hv
  %i.ji = add nsw i32 %i.jh, %i.ib
  %i.jj = add nsw i32 %i.ji, %i.ih
  %i.jk = add nsw i32 %i.jj, %i.in
  %i.jl = add nsw i32 %i.jk, %i.it
  %i.jm = add nsw i32 %i.jl, %i.iz
  %i.jn = add nsw i32 %i.jm, %i.jf
  %i.jo = lshr i32 %i.jn, 6
  %i.jp = trunc i32 %i.jo to i16
  %i.jq = add i16 %i.jp, -8192
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv155
  store i16 %i.jq, ptr %i.jr, align 2, !tbaa !10
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !313

._crit_edge:                                      ; preds = %.lr.ph131.split.prol.loopexit, %.lr.ph131.split, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block287, %middle.block, %vec.epilog.middle.block, %.preheader
  %.1107.lcssa195 = phi i32 [ %.1107.lcssa, %.preheader ], [ %.1107.lcssa, %middle.block287 ], [ %.1107.lcssa, %middle.block ], [ %.1107.lcssa, %.lr.ph.split.us.prol.loopexit ], [ %.1107.lcssa, %vec.epilog.middle.block ], [ %.1107.lcssa, %.lr.ph.split ], [ %.1107.lcssa, %.lr.ph.split.us ], [ %i.ax, %.lr.ph131.split ], [ %i.ax, %.lr.ph131.split.prol.loopexit ]
  %.1110.lcssa194 = phi ptr [ %.1110.lcssa, %.preheader ], [ %.1110.lcssa, %middle.block287 ], [ %.1110.lcssa, %middle.block ], [ %.1110.lcssa, %.lr.ph.split.us.prol.loopexit ], [ %.1110.lcssa, %vec.epilog.middle.block ], [ %.1110.lcssa, %.lr.ph.split ], [ %.1110.lcssa, %.lr.ph.split.us ], [ %.lcssa.unr, %.lr.ph131.split.prol.loopexit ], [ %i.hi, %.lr.ph131.split ]
  %.56.193 = phi ptr [ %.56., %.preheader ], [ %.56., %middle.block287 ], [ %.56., %middle.block ], [ %.56., %.lr.ph.split.us.prol.loopexit ], [ %.56., %vec.epilog.middle.block ], [ %.56., %.lr.ph.split ], [ %.56., %.lr.ph.split.us ], [ %.0..lcssa.unr, %.lr.ph131.split.prol.loopexit ], [ %.0..0..3, %.lr.ph131.split ]
  %i.js = add nsw i32 %.0111135, %8
  %i.jt = getelementptr inbounds [2 x i8], ptr %.0108137, i64 %i.ai
  %i.ju = add nuw nsw i32 %.0104140, 1            ; 2 uses
  %exitcond165.not = icmp eq i32 %i.ju, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond165.not, label %._crit_edge143, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @w_mask_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, i32 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9, i32 noundef %10) unnamed_addr #3 {
bb.a:
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %10, i1 true) ; 2 uses
  %i.b = add nsw i32 %i.a, -18
  %i.c = add nsw i32 %i.a, -12                    ; 6 uses
  %i.d = shl nuw nsw i32 32, %i.b
  %i.e = add nuw nsw i32 %i.d, 524288             ; 6 uses
  %i.f = sext i32 %4 to i64                       ; 9 uses
  %i.g = icmp sgt i32 %4, 0
  %i.h = and i64 %1, 1
  %.not.i = icmp eq i64 %i.h, 0
  tail call void @llvm.assume(i1 %.not.i)
  %.not = icmp ne i32 %9, 0                       ; 3 uses
  %i.i = ashr i32 %4, %8
  %i.j = sext i32 %i.i to i64                     ; 4 uses
  br i1 %i.g, label %.split, label %.split91

.split:                                           ; preds = %bb.a
  %.not87 = icmp eq i32 %8, 0
  br i1 %.not87, label %.split.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split
  %invariant.op = sub i32 40, %7
  %invariant.op191 = sub i32 39, %7
  br label %.lr.ph

.split.split.us:                                  ; preds = %.split
  %wide.trip.count103 = zext nneg i32 %4 to i64   ; 11 uses
  %i.k = add i32 %5, -1
  %i.l = zext i32 %i.k to i64                     ; 4 uses
  %i.m = mul i64 %1, %i.l
  %i.n = shl nuw nsw i64 %wide.trip.count103, 1
  %i.o = getelementptr i8, ptr %0, i64 %i.m
  %scevgep145 = getelementptr i8, ptr %i.o, i64 %i.n ; 6 uses
  br i1 %.not, label %.lr.ph.us.preheader, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.split.split.us
  %i.p = mul nuw nsw i64 %i.j, %i.l
  %i.q = getelementptr i8, ptr %6, i64 %i.p
  %scevgep116 = getelementptr i8, ptr %i.q, i64 %wide.trip.count103 ; 3 uses
  %i.r = mul nuw nsw i64 %i.f, %i.l
  %i.s = add nuw i64 %i.r, %wide.trip.count103
  %i.t = shl i64 %i.s, 1                          ; 2 uses
  %scevgep117 = getelementptr i8, ptr %2, i64 %i.t ; 2 uses
  %scevgep118 = getelementptr i8, ptr %3, i64 %i.t ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep116
  %bound1 = icmp ult ptr %6, %scevgep145
  %found.conflict = and i1 %bound0, %bound1
  %bound0120 = icmp ult ptr %0, %scevgep117
  %bound1121 = icmp ult ptr %2, %scevgep145
  %found.conflict122 = and i1 %bound0120, %bound1121
  %stride.check123 = icmp slt i64 %1, 0
  %i.u = or i1 %found.conflict122, %stride.check123
  %conflict.rdx = or i1 %found.conflict, %i.u
  %bound0124 = icmp ult ptr %0, %scevgep118
  %bound1125 = icmp ult ptr %3, %scevgep145
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx128 = or i1 %found.conflict126, %conflict.rdx
  %bound0129 = icmp ult ptr %6, %scevgep117
  %bound1130 = icmp ult ptr %2, %scevgep116
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx133 = or i1 %conflict.rdx128, %found.conflict131
  %bound0134 = icmp ult ptr %6, %scevgep118
  %bound1135 = icmp ult ptr %3, %scevgep116
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx138 = or i1 %conflict.rdx133, %found.conflict136
  %n.vec = and i64 %wide.trip.count103, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert139 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat140 = shufflevector <8 x i32> %broadcast.splatinsert139, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <8 x i32> poison, i32 %10, i64 0
  %broadcast.splat142 = shufflevector <8 x i32> %broadcast.splatinsert141, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count103
  br label %.lr.ph.us.us

.lr.ph.us.preheader:                              ; preds = %.split.split.us
  %i.v = mul nuw nsw i64 %i.f, %i.l
  %i.w = add nuw i64 %i.v, %wide.trip.count103
  %i.x = shl i64 %i.w, 1                          ; 2 uses
  %scevgep147 = getelementptr i8, ptr %2, i64 %i.x ; 2 uses
  %scevgep148 = getelementptr i8, ptr %3, i64 %i.x ; 2 uses
  %min.iters.check172 = icmp ult i32 %4, 8
  %bound0153 = icmp ult ptr %0, %scevgep147
  %bound1154 = icmp ult ptr %2, %scevgep145
  %found.conflict155 = and i1 %bound0153, %bound1154
  %stride.check156 = icmp slt i64 %1, 0
  %i.y = or i1 %found.conflict155, %stride.check156
  %bound0158 = icmp ult ptr %0, %scevgep148
  %bound1159 = icmp ult ptr %3, %scevgep145
  %found.conflict160 = and i1 %bound0158, %bound1159
  %invariant.op192 = or i1 %i.y, %found.conflict160
  %n.vec174 = and i64 %wide.trip.count103, 2147483640 ; 3 uses
  %broadcast.splatinsert175 = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat176 = shufflevector <8 x i32> %broadcast.splatinsert175, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert177 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat178 = shufflevector <8 x i32> %broadcast.splatinsert177, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <8 x i32> poison, i32 %10, i64 0
  %broadcast.splat180 = shufflevector <8 x i32> %broadcast.splatinsert179, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n187 = icmp eq i64 %n.vec174, %wide.trip.count103
  br label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.split.us.us.us
  %.081.us.us = phi ptr [ %.182.us.us, %._crit_edge.split.us.us.us ], [ %6, %.lr.ph.us.us.preheader ] ; 3 uses
  %.080.us.us = phi i32 [ %i.bx, %._crit_edge.split.us.us.us ], [ %5, %.lr.ph.us.us.preheader ]
  %.079.us.us = phi ptr [ %i.bv, %._crit_edge.split.us.us.us ], [ %3, %.lr.ph.us.us.preheader ] ; 3 uses
  %.078.us.us = phi ptr [ %i.bu, %._crit_edge.split.us.us.us ], [ %2, %.lr.ph.us.us.preheader ] ; 3 uses
  %.077.us.us = phi ptr [ %i.bw, %._crit_edge.split.us.us.us ], [ %0, %.lr.ph.us.us.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx138
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us ] ; 5 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.078.us.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.z, align 2, !tbaa !10, !alias.scope !339
end_hunk_3
