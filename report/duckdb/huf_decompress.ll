inline.NumInlined: 722
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN11duckdb_zstd21HUF_readDTableX1_wkspEPjPKvmPvmi:bb.a
  %i.ir = zext i8 %i.iq to i64
  %i.is = shl nuw nsw i64 %i.ir, 8
  %i.it = or disjoint i64 %i.is, %i.fp
  %i.iu = mul nuw i64 %i.it, 281479271743489      ; 2 uses
  %i.iv = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv237 ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 16
  store i64 %i.iu, ptr %i.iw, align 1, !tbaa !32
  %i.ix = getelementptr i8, ptr %i.iv, i64 24
  store i64 %i.iu, ptr %i.ix, align 1, !tbaa !32
  %indvars.iv.next238.1 = add nsw i64 %indvars.iv237, 16 ; 2 uses
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %niter379.next.1 = add i64 %niter379, 2         ; 2 uses
  %niter379.ncmp.1 = icmp eq i64 %niter379.next.1, %unroll_iter378
  br i1 %niter379.ncmp.1, label %.loopexit.loopexit369.unr-lcssa, label %bb.j, !llvm.loop !35

bb.k:                                             ; preds = %bb.h, %.split
  %i.iy = icmp sgt i32 %i.fe, 0
  br i1 %i.iy, label %.lr.ph208, label %.loopexit

.lr.ph208:                                        ; preds = %bb.k
  %.mask171 = and i32 %i.fj, 255
  %i.iz = zext nneg i32 %.mask171 to i64
  %i.ja = icmp sgt i32 %i.fh, 0
  br i1 %i.ja, label %.lr.ph203.preheader, label %.loopexit

.lr.ph203.preheader:                              ; preds = %.lr.ph208
  %i.jb = zext nneg i32 %i.fh to i64              ; 2 uses
  %i.jc = sext i32 %.0161212 to i64
  %i.jd = sext i32 %.0162209 to i64
  %wide.trip.count281 = zext nneg i32 %i.fe to i64
  %invariant.gep309 = getelementptr i8, ptr %i.fb, i64 %i.jc
  %i.je = add nsw i64 %i.jb, -1
  %i.jf = lshr i64 %i.je, 4
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %xtraiter396 = and i64 %i.jg, 7                 ; 3 uses
  %i.jh = icmp ult i32 %i.fh, 113
  %unroll_iter400 = and i64 %i.jg, 2305843009213693944
  %lcmp.mod398.not = icmp eq i64 %xtraiter396, 0
  %lcmp.mod399 = icmp ne i64 %xtraiter396, 0
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %._crit_edge204
  %indvars.iv276 = phi i64 [ %i.jd, %.lr.ph203.preheader ], [ %indvars.iv.next277, %._crit_edge204 ] ; 2 uses
  %indvars.iv274 = phi i64 [ 0, %.lr.ph203.preheader ], [ %indvars.iv.next275, %._crit_edge204 ] ; 2 uses
  %gep310 = getelementptr i8, ptr %invariant.gep309, i64 %indvars.iv274
  %i.ji = load i8, ptr %gep310, align 1, !tbaa !7
  %i.jj = zext i8 %i.ji to i64
  %i.jk = shl nuw nsw i64 %i.jj, 8
  %i.jl = or disjoint i64 %i.jk, %i.iz
  %i.jm = mul nuw i64 %i.jl, 281479271743489
  %i.jn = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv276 ; 9 uses
  %i.jo = insertelement <4 x i64> poison, i64 %i.jm, i64 0
  %i.jp = shufflevector <4 x i64> %i.jo, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %i.jh, label %.epil.preheader395, label %.lr.ph203.new

.lr.ph203.new:                                    ; preds = %.lr.ph203, %.lr.ph203.new
  %indvars.iv271 = phi i64 [ %indvars.iv.next272.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ] ; 9 uses
  %niter401 = phi i64 [ %niter401.next.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ]
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv271
  store <4 x i64> %i.jp, ptr %i.jq, align 1, !tbaa !32
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv271
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  store <4 x i64> %i.jp, ptr %i.js, align 1, !tbaa !32
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv271
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 64
  store <4 x i64> %i.jp, ptr %i.ju, align 1, !tbaa !32
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv271
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 96
  store <4 x i64> %i.jp, ptr %i.jw, align 1, !tbaa !32
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv271
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 128
  store <4 x i64> %i.jp, ptr %i.jy, align 1, !tbaa !32
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv271
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 160
  store <4 x i64> %i.jp, ptr %i.ka, align 1, !tbaa !32
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv271
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 192
  store <4 x i64> %i.jp, ptr %i.kc, align 1, !tbaa !32
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv271
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 224
  store <4 x i64> %i.jp, ptr %i.ke, align 1, !tbaa !32
  %indvars.iv.next272.7 = add nuw nsw i64 %indvars.iv271, 128 ; 2 uses
  %niter401.next.7 = add i64 %niter401, 8         ; 2 uses
  %niter401.ncmp.7.not = icmp eq i64 %niter401.next.7, %unroll_iter400
  br i1 %niter401.ncmp.7.not, label %._crit_edge204.unr-lcssa, label %.lr.ph203.new, !llvm.loop !36

._crit_edge204.unr-lcssa:                         ; preds = %.lr.ph203.new
  br i1 %lcmp.mod398.not, label %._crit_edge204, label %.epil.preheader395

.epil.preheader395:                               ; preds = %._crit_edge204.unr-lcssa, %.lr.ph203
  %indvars.iv271.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next272.7, %._crit_edge204.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod399)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader395
  %indvars.iv271.epil = phi i64 [ %indvars.iv271.epil.init, %.epil.preheader395 ], [ %indvars.iv.next272.epil, %bb.l ] ; 2 uses
  %epil.iter397 = phi i64 [ 0, %.epil.preheader395 ], [ %epil.iter397.next, %bb.l ]
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv271.epil
  store <4 x i64> %i.jp, ptr %i.kf, align 1, !tbaa !32
  %indvars.iv.next272.epil = add nuw nsw i64 %indvars.iv271.epil, 16
  %epil.iter397.next = add i64 %epil.iter397, 1   ; 2 uses
  %epil.iter397.cmp.not = icmp eq i64 %epil.iter397.next, %xtraiter396
  br i1 %epil.iter397.cmp.not, label %._crit_edge204, label %bb.l, !llvm.loop !37

._crit_edge204:                                   ; preds = %bb.l, %._crit_edge204.unr-lcssa
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, %i.jb
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count281
  br i1 %exitcond282.not, label %.loopexit, label %.lr.ph203, !llvm.loop !38

.loopexit.loopexit367.unr-lcssa:                  ; preds = %.lr.ph197
  %lcmp.mod389.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod389.not, label %.loopexit, label %.lr.ph197.epil.preheader

.lr.ph197.epil.preheader:                         ; preds = %.loopexit.loopexit367.unr-lcssa, %.lr.ph197.preheader
  %indvars.iv255.epil.init = phi i64 [ %i.ga, %.lr.ph197.preheader ], [ %indvars.iv.next256.1, %.loopexit.loopexit367.unr-lcssa ]
  %indvars.iv253.epil.init = phi i64 [ 0, %.lr.ph197.preheader ], [ %indvars.iv.next254.1, %.loopexit.loopexit367.unr-lcssa ]
  %lcmp.mod390 = trunc i32 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod390)
  %gep306.epil = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253.epil.init
  %i.kg = load i8, ptr %gep306.epil, align 1, !tbaa !7 ; 2 uses
  %i.kh = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv255.epil.init ; 4 uses
  store i8 %i.fk, ptr %i.kh, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  store i8 %i.kg, ptr %.sroa.5.0..sroa_idx.epil, align 1, !tbaa !7
  %i.ki = getelementptr i8, ptr %i.kh, i64 2
  store i8 %i.fk, ptr %i.ki, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx8.epil = getelementptr i8, ptr %i.kh, i64 3
  store i8 %i.kg, ptr %.sroa.5.0..sroa_idx8.epil, align 1, !tbaa !7
  br label %.loopexit

.loopexit.loopexit368.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod383.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod383.not, label %.loopexit, label %.epil.preheader380

.epil.preheader380:                               ; preds = %.loopexit.loopexit368.unr-lcssa, %.lr.ph194
  %indvars.iv246.epil.init = phi i64 [ %i.fw, %.lr.ph194 ], [ %indvars.iv.next247.1, %.loopexit.loopexit368.unr-lcssa ]
  %indvars.iv244.epil.init = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next245.1, %.loopexit.loopexit368.unr-lcssa ]
  %lcmp.mod384 = trunc i32 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod384)
  %gep304.epil = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244.epil.init
  %i.kj = load i8, ptr %gep304.epil, align 1, !tbaa !7
  %i.kk = zext i8 %i.kj to i64
  %i.kl = shl nuw nsw i64 %i.kk, 8
  %i.km = or disjoint i64 %i.kl, %i.fu
  %i.kn = mul nuw i64 %i.km, 281479271743489
  %i.ko = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv246.epil.init
  store i64 %i.kn, ptr %i.ko, align 1, !tbaa !32
  br label %.loopexit

.loopexit.loopexit369.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod376.not = icmp eq i64 %xtraiter374, 0
  br i1 %lcmp.mod376.not, label %.loopexit, label %.epil.preheader373

.epil.preheader373:                               ; preds = %.loopexit.loopexit369.unr-lcssa, %.lr.ph191
  %indvars.iv237.epil.init = phi i64 [ %i.fr, %.lr.ph191 ], [ %indvars.iv.next238.1, %.loopexit.loopexit369.unr-lcssa ]
  %indvars.iv235.epil.init = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next236.1, %.loopexit.loopexit369.unr-lcssa ]
  %lcmp.mod377 = trunc i32 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod377)
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235.epil.init
  %i.kp = load i8, ptr %gep.epil, align 1, !tbaa !7
  %i.kq = zext i8 %i.kp to i64
  %i.kr = shl nuw nsw i64 %i.kq, 8
  %i.ks = or disjoint i64 %i.kr, %i.fp
  %i.kt = mul nuw i64 %i.ks, 281479271743489      ; 2 uses
  %i.ku = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv237.epil.init ; 2 uses
  store i64 %i.kt, ptr %i.ku, align 1, !tbaa !32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store i64 %i.kt, ptr %i.kv, align 1, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader373, %.loopexit.loopexit369.unr-lcssa, %.epil.preheader380, %.loopexit.loopexit368.unr-lcssa, %.lr.ph197.epil.preheader, %.loopexit.loopexit367.unr-lcssa, %.lr.ph200.prol.loopexit, %.lr.ph200, %._crit_edge204, %middle.block344, %vec.epilog.middle.block362, %.preheader177, %.preheader175, %.preheader173, %.preheader, %bb.k, %.lr.ph208
  %i.kw = add nsw i32 %i.fe, %.0161212
  %i.kx = mul nsw i32 %i.fe, %i.fh
  %i.ky = add nsw i32 %i.kx, %.0162209
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.fc
  br i1 %exitcond287.not, label %.critedge, label %bb.h, !llvm.loop !39

.critedge:                                        ; preds = %.loopexit, %_ZN11duckdb_zstdL16HUF_rescaleStatsEPhPjjjj.exit, %bb.b, %bb.a
  %.1 = phi i64 [ -44, %_ZN11duckdb_zstdL16HUF_rescaleStatsEPhPjjjj.exit ], [ -44, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i64 @_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = ptrtoaddr ptr %3 to i64                    ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %.val = load i32, ptr %0, align 4               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.val to i8
  %.sroa.7.0.extract.shift = lshr i32 %.val, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8
  %i.c = and i32 %.val, 255                       ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 4          ; 9 uses
  %i.e = icmp ult i64 %4, 2124
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 676 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 680 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 624 ; 10 uses
  %i.i = icmp samesign ugt i32 %i.c, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.h, i8 0, i64 112, i1 false)
  br i1 %i.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 992 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1248
  %i.l = call noundef i64 @_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi(ptr noundef nonnull %i.j, i64 noundef 256, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.k, i64 noundef 876, i32 noundef %5) ; 3 uses
  %i.m = icmp ult i64 %i.l, -119
  br i1 %i.m, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.a, align 4, !tbaa !3    ; 5 uses
  %i.o = icmp ugt i32 %i.n, %i.c
  br i1 %i.o, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw nsw i32 %i.n, 1                  ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv182 = phi i32 [ %indvars.iv.next183, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv177 = phi i32 [ %indvars.iv.next178, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %indvars.iv158 = phi i32 [ %indvars.iv.next159, %bb.f ], [ %i.p, %bb.e ] ; 6 uses
  %.089 = phi i32 [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 6 uses
  %i.q = zext i32 %.089 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = icmp eq i32 %i.s, 0
  %i.u = add i32 %.089, -1
  %indvars.iv.next159 = add i32 %indvars.iv158, -1
  %indvars.iv.next178 = add i32 %indvars.iv177, 1
  %indvars.iv.next183 = add i32 %indvars.iv182, -1
  br i1 %i.t, label %bb.f, label %.preheader, !llvm.loop !40

.preheader:                                       ; preds = %bb.f
  %i.v = icmp samesign ult i32 %i.n, 12
  %i.w = icmp eq i32 %i.c, 12
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  %spec.store.select = select i1 %or.cond, i32 11, i32 %i.c ; 7 uses
  %i.x = add i32 %.089, 1                         ; 2 uses
  %i.y = icmp ugt i32 %i.x, 1                     ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %indvars.iv158 to i64
  %i.z = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.aa = add i32 %indvars.iv158, -2
  %i.ab = icmp ult i32 %i.aa, 3
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.z, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.094115 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.aq, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = add i32 %i.ad, %.094115                 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %.094115, ptr %i.af, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = add i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = add i32 %i.al, %i.ai                    ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.1
  store i32 %i.ai, ptr %i.an, align 4, !tbaa !3
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = add i32 %i.ap, %i.am                    ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.2
  store i32 %i.am, ptr %i.ar, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !41

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.094115.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod334 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod334)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.094115.epil = phi i32 [ %.094115.epil.init, %.lr.ph.epil.preheader ], [ %i.au, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = add i32 %i.at, %.094115.epil            ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.epil
  store i32 %.094115.epil, ptr %i.av, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !42

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.094.lcssa = phi i32 [ 0, %.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.au, %.lr.ph.epil ] ; 2 uses
  store i32 %.094.lcssa, ptr %i.g, align 4, !tbaa !3
  %i.aw = zext i32 %i.x to i64                    ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aw
  store i32 %.094.lcssa, ptr %i.ax, align 4, !tbaa !3
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !3   ; 4 uses
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %._crit_edge121, label %.lr.ph120

.lr.ph120:                                        ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 736 ; 3 uses
  %wide.trip.count163 = zext i32 %i.ay to i64     ; 2 uses
  %xtraiter335 = and i64 %wide.trip.count163, 1
  %i.ba = icmp eq i32 %i.ay, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph120.new

.lr.ph120.new:                                    ; preds = %.lr.ph120
  %unroll_iter339 = and i64 %wide.trip.count163, 4294967294
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph120.new
  %indvars.iv160 = phi i64 [ 0, %.lr.ph120.new ], [ %indvars.iv.next161.1, %bb.g ] ; 4 uses
  %niter340 = phi i64 [ 0, %.lr.ph120.new ], [ %niter340.next.1, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv160
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3  ; 2 uses
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !3
  %i.bh = trunc i64 %indvars.iv160 to i8
  %i.bi = zext i32 %i.bf to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bi
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !43
  %indvars.iv.next161 = or disjoint i64 %indvars.iv160, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next161
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !7
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !3
  %i.bq = trunc i64 %indvars.iv.next161 to i8
  %i.br = zext i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !43
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %niter340.next.1 = add i64 %niter340, 2         ; 2 uses
  %niter340.ncmp.1 = icmp eq i64 %niter340.next.1, %unroll_iter339
  br i1 %niter340.ncmp.1, label %._crit_edge121.loopexit.unr-lcssa, label %bb.g, !llvm.loop !45

._crit_edge121.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod337.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod337.not, label %._crit_edge121, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120
  %indvars.iv160.epil.init = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next161.1, %._crit_edge121.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod338 = trunc i32 %i.ay to i1
  call void @llvm.assume(i1 %lcmp.mod338)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv160.epil.init
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !7
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3  ; 2 uses
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !3
  %i.bz = trunc i64 %indvars.iv160.epil.init to i8
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ca
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi:bb.a
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 192
  store <4 x i64> %i.jy, ptr %i.kq, align 2
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 224
  store <4 x i64> %i.jy, ptr %i.ks, align 2
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %niter354.next.7 = add nuw nsw i64 %niter354, 8 ; 2 uses
  %niter354.ncmp.7.not = icmp eq i64 %niter354.next.7, %unroll_iter353
  br i1 %niter354.ncmp.7.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !52

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod351.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod351.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod352 = icmp ne i64 %xtraiter349, 0
  call void @llvm.assume(i1 %lcmp.mod352)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter350 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter350.next, %.lr.ph.i.i.epil ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.i.i.epil
  store <4 x i64> %i.jy, ptr %i.kt, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter350.next = add i64 %epil.iter350, 1   ; 2 uses
  %epil.iter350.cmp.not = icmp eq i64 %epil.iter350.next, %xtraiter349
  br i1 %epil.iter350.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !54

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %bb.j, %.preheader.i.i, %.lr.ph.split.i
  %invariant.op139 = or disjoint i32 %i.jq, 33554432 ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, %.loopexit.i.i
  %indvars.iv55.i.i = phi i64 [ %i.fk, %.loopexit.i.i ], [ %indvars.iv.next56.i.i, %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i ] ; 4 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv55.i.i
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !3  ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 3 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next56.i.i
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !3  ; 2 uses
  %i.ky = trunc nsw i64 %indvars.iv55.i.i to i32
  %i.kz = sub i32 %i.fm, %i.ky                    ; 6 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv55.i.i
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !3
  %i.lc = zext i32 %i.lb to i64                   ; 3 uses
  %i.ld = getelementptr [4 x i8], ptr %i.jn, i64 %i.lc ; 20 uses
  %i.le = sext i32 %i.kv to i64                   ; 9 uses
  %i.lf = getelementptr i8, ptr %i.en, i64 %i.le  ; 16 uses
  %i.lg = sext i32 %i.kx to i64                   ; 13 uses
  %i.lh = getelementptr i8, ptr %i.en, i64 %i.lg  ; 7 uses
  %i.li = sub i32 %spec.store.select, %i.kz
  %i.lj = and i32 %i.li, 31                       ; 2 uses
  %i.lk = shl nuw i32 1, %i.lj
  %.not82116.i.i = icmp eq i32 %i.kv, %i.kx       ; 5 uses
  switch i32 %i.lj, label %.preheader.i60.i [
    i32 0, label %.preheader84.i.i
    i32 1, label %.preheader86.i.i
    i32 2, label %.preheader88.i.i
    i32 3, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.preheader90.i.i
  %i.ll = shl i32 %i.kz, 16
  %invariant.op.reass = add i32 %i.ll, %invariant.op139 ; 3 uses
  %i.lm = sub nsw i64 %i.lg, %i.le
  %xtraiter355 = and i64 %i.lm, 1
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i58.i
  %i.ln = load i8, ptr %i.lf, align 1, !tbaa !43
  %i.lo = zext i8 %i.ln to i32
  %i.lp = shl nuw nsw i32 %i.lo, 8
  %.reass.reass.i.reass.i.reass.prol = or disjoint i32 %i.lp, %invariant.op.reass
  %i.lq = zext i32 %.reass.reass.i.reass.i.reass.prol to i64
  %i.lr = mul nuw i64 %i.lq, 4294967297           ; 4 uses
  store i64 %i.lr, ptr %i.ld, align 2
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store i64 %i.lr, ptr %i.ls, align 2
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store i64 %i.lr, ptr %i.lt, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  store i64 %i.lr, ptr %i.lu, align 2
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i58.i
  %.394.i.i.unr = phi ptr [ %i.ld, %.lr.ph.i58.i ], [ %i.lv, %.prol.loopexit.unr-lcssa ]
  %.37793.i.i.unr = phi ptr [ %i.lf, %.lr.ph.i58.i ], [ %i.lw, %.prol.loopexit.unr-lcssa ]
  %i.lx = add nsw i64 %i.lg, -1
  %i.ly = icmp eq i64 %i.lx, %i.le
  br i1 %i.ly, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i.new

.preheader88.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader88.i.i
  %i.lz = shl i32 %i.kz, 16
  %invariant.op135.reass = add i32 %i.lz, %invariant.op139 ; 5 uses
  %i.ma = sub nsw i64 %i.lg, %i.le
  %xtraiter360 = and i64 %i.ma, 3                 ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %.prol.loopexit359, label %.prol.preheader358

.prol.preheader358:                               ; preds = %.lr.ph98.i.i, %.prol.preheader358
  %.297.i.i.prol = phi ptr [ %i.mh, %.prol.preheader358 ], [ %i.ld, %.lr.ph98.i.i ] ; 3 uses
  %.27696.i.i.prol = phi ptr [ %i.mi, %.prol.preheader358 ], [ %i.lf, %.lr.ph98.i.i ] ; 2 uses
  %prol.iter362 = phi i64 [ %prol.iter362.next, %.prol.preheader358 ], [ 0, %.lr.ph98.i.i ]
  %i.mb = load i8, ptr %.27696.i.i.prol, align 1, !tbaa !43
  %i.mc = zext i8 %i.mb to i32
  %i.md = shl nuw nsw i32 %i.mc, 8
  %.reass100.reass.i.reass.i.reass.prol = or disjoint i32 %i.md, %invariant.op135.reass
  %i.me = zext i32 %.reass100.reass.i.reass.i.reass.prol to i64
  %i.mf = mul nuw i64 %i.me, 4294967297           ; 2 uses
  store i64 %i.mf, ptr %.297.i.i.prol, align 2
  %i.mg = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 8
  store i64 %i.mf, ptr %i.mg, align 2
  %i.mh = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 16 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.27696.i.i.prol, i64 1 ; 2 uses
  %prol.iter362.next = add i64 %prol.iter362, 1   ; 2 uses
  %prol.iter362.cmp.not = icmp eq i64 %prol.iter362.next, %xtraiter360
  br i1 %prol.iter362.cmp.not, label %.prol.loopexit359, label %.prol.preheader358, !llvm.loop !55

.prol.loopexit359:                                ; preds = %.prol.preheader358, %.lr.ph98.i.i
  %.297.i.i.unr = phi ptr [ %i.ld, %.lr.ph98.i.i ], [ %i.mh, %.prol.preheader358 ]
  %.27696.i.i.unr = phi ptr [ %i.lf, %.lr.ph98.i.i ], [ %i.mi, %.prol.preheader358 ]
  %i.mj = sub nsw i64 %i.le, %i.lg
  %i.mk = icmp ugt i64 %i.mj, -4
  br i1 %i.mk, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i.new

.preheader86.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader86.i.i
  %i.ml = shl i32 %i.kz, 16
  %invariant.op136.reass = add i32 %i.ml, %invariant.op139 ; 6 uses
  %i.mm = sub nsw i64 %i.lg, %i.le                ; 3 uses
  %min.iters.check301 = icmp ult i64 %i.mm, 8
  br i1 %min.iters.check301, label %scalar.ph300.preheader, label %vector.memcheck294

vector.memcheck294:                               ; preds = %.lr.ph104.i.i
  %i.mn = shl nsw i64 %i.lg, 3
  %i.mo = add nsw i64 %i.jk, %i.lc
  %i.mp = shl nsw i64 %i.mo, 2
  %i.mq = add nsw i64 %i.mn, %i.mp
  %i.mr = shl nsw i64 %i.le, 3
  %i.ms = sub nsw i64 %i.mq, %i.mr
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.ms
  %bound0297 = icmp ult ptr %i.ld, %i.lh
  %bound1298 = icmp ult ptr %i.lf, %scevgep296
  %found.conflict299 = and i1 %bound0297, %bound1298
  br i1 %found.conflict299, label %scalar.ph300.preheader, label %vector.ph302

vector.ph302:                                     ; preds = %vector.memcheck294
  %n.vec304 = and i64 %i.mm, -4                   ; 4 uses
  %i.mt = shl nsw i64 %n.vec304, 3
  %i.mu = getelementptr i8, ptr %i.ld, i64 %i.mt
  %i.mv = getelementptr i8, ptr %i.lf, i64 %n.vec304
  %broadcast.splatinsert305 = insertelement <2 x i32> poison, i32 %invariant.op136.reass, i64 0
  %broadcast.splat306 = shufflevector <2 x i32> %broadcast.splatinsert305, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph302
  %index308 = phi i64 [ 0, %vector.ph302 ], [ %index.next316, %vector.body307 ] ; 3 uses
  %i.mw = shl i64 %index308, 3                    ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.ld, i64 %i.mw
  %i.mx = getelementptr i8, ptr %i.ld, i64 %i.mw
  %next.gep310 = getelementptr i8, ptr %i.mx, i64 16
  %next.gep311 = getelementptr i8, ptr %i.lf, i64 %index308 ; 2 uses
  %i.my = getelementptr i8, ptr %next.gep311, i64 2
  %wide.load312 = load <2 x i8>, ptr %next.gep311, align 1, !tbaa !43, !alias.scope !56
  %wide.load313 = load <2 x i8>, ptr %i.my, align 1, !tbaa !43, !alias.scope !56
  %i.mz = zext <2 x i8> %wide.load312 to <2 x i32>
  %i.na = zext <2 x i8> %wide.load313 to <2 x i32>
  %i.nb = shl nuw nsw <2 x i32> %i.mz, splat (i32 8)
  %i.nc = shl nuw nsw <2 x i32> %i.na, splat (i32 8)
  %i.nd = or disjoint <2 x i32> %i.nb, %broadcast.splat306
  %i.ne = or disjoint <2 x i32> %i.nc, %broadcast.splat306
  %interleaved.vec314 = shufflevector <2 x i32> %i.nd, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec314, ptr %next.gep309, align 2, !alias.scope !59, !noalias !56
  %interleaved.vec315 = shufflevector <2 x i32> %i.ne, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec315, ptr %next.gep310, align 2, !alias.scope !59, !noalias !56
  %index.next316 = add nuw i64 %index308, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next316, %n.vec304
  br i1 %i.nf, label %middle.block317, label %vector.body307, !llvm.loop !61

middle.block317:                                  ; preds = %vector.body307
  %cmp.n318 = icmp eq i64 %i.mm, %n.vec304
  br i1 %cmp.n318, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph300.preheader

scalar.ph300.preheader:                           ; preds = %vector.memcheck294, %.lr.ph104.i.i, %middle.block317
  %.1103.i.i.ph = phi ptr [ %i.ld, %vector.memcheck294 ], [ %i.ld, %.lr.ph104.i.i ], [ %i.mu, %middle.block317 ] ; 2 uses
  %.175102.i.i.ph = phi ptr [ %i.lf, %vector.memcheck294 ], [ %i.lf, %.lr.ph104.i.i ], [ %i.mv, %middle.block317 ] ; 3 uses
  %i.ng = add i64 %6, %i.lg
  %.175102.i.i.ph363 = ptrtoaddr ptr %.175102.i.i.ph to i64 ; 2 uses
  %i.nh = sub i64 %i.ng, %.175102.i.i.ph363
  %i.ni = add i64 %i.ep, %i.lg
  %i.nj = sub i64 %i.ni, %.175102.i.i.ph363
  %xtraiter364 = and i64 %i.nh, 3                 ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %scalar.ph300.prol.loopexit, label %scalar.ph300.prol

scalar.ph300.prol:                                ; preds = %scalar.ph300.preheader, %scalar.ph300.prol
  %.1103.i.i.prol = phi ptr [ %i.no, %scalar.ph300.prol ], [ %.1103.i.i.ph, %scalar.ph300.preheader ] ; 3 uses
  %.175102.i.i.prol = phi ptr [ %i.np, %scalar.ph300.prol ], [ %.175102.i.i.ph, %scalar.ph300.preheader ] ; 2 uses
  %prol.iter366 = phi i64 [ %prol.iter366.next, %scalar.ph300.prol ], [ 0, %scalar.ph300.preheader ]
  %i.nk = load i8, ptr %.175102.i.i.prol, align 1, !tbaa !43
  %i.nl = zext i8 %i.nk to i32
  %i.nm = shl nuw nsw i32 %i.nl, 8
  %.reass106.reass.i.reass.i.reass.prol = or disjoint i32 %i.nm, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %.1103.i.i.prol, align 2
  %i.nn = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 4
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %i.nn, align 2
  %i.no = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 8 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.175102.i.i.prol, i64 1 ; 2 uses
  %prol.iter366.next = add i64 %prol.iter366, 1   ; 2 uses
  %prol.iter366.cmp.not = icmp eq i64 %prol.iter366.next, %xtraiter364
  br i1 %prol.iter366.cmp.not, label %scalar.ph300.prol.loopexit, label %scalar.ph300.prol, !llvm.loop !62

scalar.ph300.prol.loopexit:                       ; preds = %scalar.ph300.prol, %scalar.ph300.preheader
  %.1103.i.i.unr = phi ptr [ %.1103.i.i.ph, %scalar.ph300.preheader ], [ %i.no, %scalar.ph300.prol ]
  %.175102.i.i.unr = phi ptr [ %.175102.i.i.ph, %scalar.ph300.preheader ], [ %i.np, %scalar.ph300.prol ]
  %i.nq = icmp ult i64 %i.nj, 3
  br i1 %i.nq, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph300

.preheader84.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph110.i.i

.lr.ph110.i.i:                                    ; preds = %.preheader84.i.i
  %i.nr = shl i32 %i.kz, 16
  %invariant.op137.reass = add i32 %i.nr, %invariant.op139 ; 6 uses
  %i.ns = sub nsw i64 %i.lg, %i.le                ; 3 uses
  %min.iters.check277 = icmp ult i64 %i.ns, 8
  br i1 %min.iters.check277, label %scalar.ph276.preheader, label %vector.memcheck270

vector.memcheck270:                               ; preds = %.lr.ph110.i.i
  %i.nt = add nsw i64 %i.jl, %i.lg
  %i.nu = add nsw i64 %i.nt, %i.lc
  %i.nv = sub nsw i64 %i.nu, %i.le
  %i.nw = shl nsw i64 %i.nv, 2
  %scevgep272 = getelementptr i8, ptr %scevgep271, i64 %i.nw
  %bound0273 = icmp ult ptr %i.ld, %i.lh
  %bound1274 = icmp ult ptr %i.lf, %scevgep272
  %found.conflict275 = and i1 %bound0273, %bound1274
  br i1 %found.conflict275, label %scalar.ph276.preheader, label %vector.ph278

vector.ph278:                                     ; preds = %vector.memcheck270
  %n.vec280 = and i64 %i.ns, -8                   ; 4 uses
  %i.nx = shl nsw i64 %n.vec280, 2
  %i.ny = getelementptr i8, ptr %i.ld, i64 %i.nx
  %i.nz = getelementptr i8, ptr %i.lf, i64 %n.vec280
  %broadcast.splatinsert281 = insertelement <4 x i32> poison, i32 %invariant.op137.reass, i64 0
  %broadcast.splat282 = shufflevector <4 x i32> %broadcast.splatinsert281, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph278
  %index284 = phi i64 [ 0, %vector.ph278 ], [ %index.next289, %vector.body283 ] ; 3 uses
  %i.oa = shl i64 %index284, 2
  %next.gep285 = getelementptr i8, ptr %i.ld, i64 %i.oa ; 2 uses
  %next.gep286 = getelementptr i8, ptr %i.lf, i64 %index284 ; 2 uses
  %i.ob = getelementptr i8, ptr %next.gep286, i64 4
  %wide.load287 = load <4 x i8>, ptr %next.gep286, align 1, !tbaa !43, !alias.scope !63
  %wide.load288 = load <4 x i8>, ptr %i.ob, align 1, !tbaa !43, !alias.scope !63
  %i.oc = zext <4 x i8> %wide.load287 to <4 x i32>
  %i.od = zext <4 x i8> %wide.load288 to <4 x i32>
  %i.oe = shl nuw nsw <4 x i32> %i.oc, splat (i32 8)
  %i.of = shl nuw nsw <4 x i32> %i.od, splat (i32 8)
  %i.og = or disjoint <4 x i32> %i.oe, %broadcast.splat282
  %i.oh = or disjoint <4 x i32> %i.of, %broadcast.splat282
  %i.oi = getelementptr i8, ptr %next.gep285, i64 16
  store <4 x i32> %i.og, ptr %next.gep285, align 2, !alias.scope !66, !noalias !63
  store <4 x i32> %i.oh, ptr %i.oi, align 2, !alias.scope !66, !noalias !63
  %index.next289 = add nuw i64 %index284, 8       ; 2 uses
  %i.oj = icmp eq i64 %index.next289, %n.vec280
  br i1 %i.oj, label %middle.block290, label %vector.body283, !llvm.loop !68

middle.block290:                                  ; preds = %vector.body283
  %cmp.n291 = icmp eq i64 %i.ns, %n.vec280
  br i1 %cmp.n291, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph276.preheader

scalar.ph276.preheader:                           ; preds = %vector.memcheck270, %.lr.ph110.i.i, %middle.block290
  %.0109.i.i.ph = phi ptr [ %i.ld, %vector.memcheck270 ], [ %i.ld, %.lr.ph110.i.i ], [ %i.ny, %middle.block290 ] ; 2 uses
  %.074108.i.i.ph = phi ptr [ %i.lf, %vector.memcheck270 ], [ %i.lf, %.lr.ph110.i.i ], [ %i.nz, %middle.block290 ] ; 3 uses
  %i.ok = add i64 %6, %i.lg
  %.074108.i.i.ph367 = ptrtoaddr ptr %.074108.i.i.ph to i64 ; 2 uses
  %i.ol = sub i64 %i.ok, %.074108.i.i.ph367
  %i.om = add i64 %i.eq, %i.lg
  %i.on = sub i64 %i.om, %.074108.i.i.ph367
  %xtraiter368 = and i64 %i.ol, 3                 ; 2 uses
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %scalar.ph276.prol.loopexit, label %scalar.ph276.prol

scalar.ph276.prol:                                ; preds = %scalar.ph276.preheader, %scalar.ph276.prol
  %.0109.i.i.prol = phi ptr [ %i.or, %scalar.ph276.prol ], [ %.0109.i.i.ph, %scalar.ph276.preheader ] ; 2 uses
  %.074108.i.i.prol = phi ptr [ %i.os, %scalar.ph276.prol ], [ %.074108.i.i.ph, %scalar.ph276.preheader ] ; 2 uses
  %prol.iter370 = phi i64 [ %prol.iter370.next, %scalar.ph276.prol ], [ 0, %scalar.ph276.preheader ]
  %i.oo = load i8, ptr %.074108.i.i.prol, align 1, !tbaa !43
  %i.op = zext i8 %i.oo to i32
  %i.oq = shl nuw nsw i32 %i.op, 8
  %.reass112.reass.i.reass.i.reass.prol = or disjoint i32 %i.oq, %invariant.op137.reass
  %i.or = getelementptr inbounds nuw i8, ptr %.0109.i.i.prol, i64 4 ; 2 uses
  store i32 %.reass112.reass.i.reass.i.reass.prol, ptr %.0109.i.i.prol, align 2
  %i.os = getelementptr inbounds nuw i8, ptr %.074108.i.i.prol, i64 1 ; 2 uses
  %prol.iter370.next = add i64 %prol.iter370, 1   ; 2 uses
  %prol.iter370.cmp.not = icmp eq i64 %prol.iter370.next, %xtraiter368
  br i1 %prol.iter370.cmp.not, label %scalar.ph276.prol.loopexit, label %scalar.ph276.prol, !llvm.loop !69

scalar.ph276.prol.loopexit:                       ; preds = %scalar.ph276.prol, %scalar.ph276.preheader
  %.0109.i.i.unr = phi ptr [ %.0109.i.i.ph, %scalar.ph276.preheader ], [ %i.or, %scalar.ph276.prol ]
  %.074108.i.i.unr = phi ptr [ %.074108.i.i.ph, %scalar.ph276.preheader ], [ %i.os, %scalar.ph276.prol ]
  %i.ot = icmp ult i64 %i.on, 3
  br i1 %i.ot, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph276

.preheader.i60.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph119.i.i

.lr.ph119.i.i:                                    ; preds = %.preheader.i60.i
  %i.ou = shl i32 %i.kz, 16
  %i.ov = zext i32 %i.lk to i64
  %.idx.i.i = shl nuw nsw i64 %i.ov, 2            ; 2 uses
  %invariant.op138.reass = add i32 %i.ou, %invariant.op139
  %i.ow = add nsw i64 %.idx.i.i, -32              ; 2 uses
  %i.ox = lshr i64 %i.ow, 5
  %i.oy = add nuw nsw i64 %i.ox, 1
  %xtraiter371 = and i64 %i.oy, 7                 ; 2 uses
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  %i.oz = icmp ult i64 %i.ow, 224
  br label %.lr.ph115.preheader.i.i

scalar.ph276:                                     ; preds = %scalar.ph276.prol.loopexit, %scalar.ph276
  %.0109.i.i = phi ptr [ %i.ps, %scalar.ph276 ], [ %.0109.i.i.unr, %scalar.ph276.prol.loopexit ] ; 5 uses
  %.074108.i.i = phi ptr [ %i.pt, %scalar.ph276 ], [ %.074108.i.i.unr, %scalar.ph276.prol.loopexit ] ; 5 uses
  %i.pa = load i8, ptr %.074108.i.i, align 1, !tbaa !43
  %i.pb = zext i8 %i.pa to i32
  %i.pc = shl nuw nsw i32 %i.pb, 8
  %.reass112.reass.i.reass.i.reass = or disjoint i32 %i.pc, %invariant.op137.reass
  %i.pd = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 4
  store i32 %.reass112.reass.i.reass.i.reass, ptr %.0109.i.i, align 2
  %i.pe = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 1
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !43
  %i.pg = zext i8 %i.pf to i32
  %i.ph = shl nuw nsw i32 %i.pg, 8
  %.reass112.reass.i.reass.i.reass.1 = or disjoint i32 %i.ph, %invariant.op137.reass
  %i.pi = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 8
  store i32 %.reass112.reass.i.reass.i.reass.1, ptr %i.pd, align 2
  %i.pj = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 2
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !43
  %i.pl = zext i8 %i.pk to i32
  %i.pm = shl nuw nsw i32 %i.pl, 8
  %.reass112.reass.i.reass.i.reass.2 = or disjoint i32 %i.pm, %invariant.op137.reass
  %i.pn = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 12
  store i32 %.reass112.reass.i.reass.i.reass.2, ptr %i.pi, align 2
  %i.po = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 3
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !43
  %i.pq = zext i8 %i.pp to i32
  %i.pr = shl nuw nsw i32 %i.pq, 8
  %.reass112.reass.i.reass.i.reass.3 = or disjoint i32 %i.pr, %invariant.op137.reass
  %i.ps = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 16
  store i32 %.reass112.reass.i.reass.i.reass.3, ptr %i.pn, align 2
  %i.pt = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 4 ; 2 uses
  %.not81.i.i.3 = icmp eq ptr %i.pt, %i.lh
  br i1 %.not81.i.i.3, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph276, !llvm.loop !70

scalar.ph300:                                     ; preds = %scalar.ph300.prol.loopexit, %scalar.ph300
  %.1103.i.i = phi ptr [ %i.qq, %scalar.ph300 ], [ %.1103.i.i.unr, %scalar.ph300.prol.loopexit ] ; 9 uses
  %.175102.i.i = phi ptr [ %i.qr, %scalar.ph300 ], [ %.175102.i.i.unr, %scalar.ph300.prol.loopexit ] ; 5 uses
  %i.pu = load i8, ptr %.175102.i.i, align 1, !tbaa !43
  %i.pv = zext i8 %i.pu to i32
  %i.pw = shl nuw nsw i32 %i.pv, 8
  %.reass106.reass.i.reass.i.reass = or disjoint i32 %i.pw, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass, ptr %.1103.i.i, align 2
  %i.px = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 4
  store i32 %.reass106.reass.i.reass.i.reass, ptr %i.px, align 2
  %i.py = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 8
  %i.pz = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 1
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !43
  %i.qb = zext i8 %i.qa to i32
  %i.qc = shl nuw nsw i32 %i.qb, 8
  %.reass106.reass.i.reass.i.reass.1 = or disjoint i32 %i.qc, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.py, align 2
  %i.qd = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 12
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.qd, align 2
  %i.qe = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 16
  %i.qf = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 2
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !43
  %i.qh = zext i8 %i.qg to i32
  %i.qi = shl nuw nsw i32 %i.qh, 8
  %.reass106.reass.i.reass.i.reass.2 = or disjoint i32 %i.qi, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.qe, align 2
  %i.qj = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 20
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.qj, align 2
  %i.qk = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 24
  %i.ql = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 3
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !43
  %i.qn = zext i8 %i.qm to i32
  %i.qo = shl nuw nsw i32 %i.qn, 8
  %.reass106.reass.i.reass.i.reass.3 = or disjoint i32 %i.qo, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.qk, align 2
  %i.qp = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 28
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.qp, align 2
  %i.qq = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 32
  %i.qr = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 4 ; 2 uses
  %.not80.i.i.3 = icmp eq ptr %i.qr, %i.lh
  br i1 %.not80.i.i.3, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph300, !llvm.loop !71

.lr.ph98.i.i.new:                                 ; preds = %.prol.loopexit359, %.lr.ph98.i.i.new
  %.297.i.i = phi ptr [ %i.rw, %.lr.ph98.i.i.new ], [ %.297.i.i.unr, %.prol.loopexit359 ] ; 9 uses
  %.27696.i.i = phi ptr [ %i.rx, %.lr.ph98.i.i.new ], [ %.27696.i.i.unr, %.prol.loopexit359 ] ; 5 uses
  %i.qs = load i8, ptr %.27696.i.i, align 1, !tbaa !43
  %i.qt = zext i8 %i.qs to i32
  %i.qu = shl nuw nsw i32 %i.qt, 8
  %.reass100.reass.i.reass.i.reass = or disjoint i32 %i.qu, %invariant.op135.reass
  %i.qv = zext i32 %.reass100.reass.i.reass.i.reass to i64
  %i.qw = mul nuw i64 %i.qv, 4294967297           ; 2 uses
  store i64 %i.qw, ptr %.297.i.i, align 2
  %i.qx = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 8
  store i64 %i.qw, ptr %i.qx, align 2
  %i.qy = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 1
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !43
  %i.rb = zext i8 %i.ra to i32
  %i.rc = shl nuw nsw i32 %i.rb, 8
  %.reass100.reass.i.reass.i.reass.1 = or disjoint i32 %i.rc, %invariant.op135.reass
  %i.rd = zext i32 %.reass100.reass.i.reass.i.reass.1 to i64
  %i.re = mul nuw i64 %i.rd, 4294967297           ; 2 uses
  store i64 %i.re, ptr %i.qy, align 2
  %i.rf = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 24
  store i64 %i.re, ptr %i.rf, align 2
  %i.rg = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 32
  %i.rh = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 2
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !43
  %i.rj = zext i8 %i.ri to i32
  %i.rk = shl nuw nsw i32 %i.rj, 8
  %.reass100.reass.i.reass.i.reass.2 = or disjoint i32 %i.rk, %invariant.op135.reass
  %i.rl = zext i32 %.reass100.reass.i.reass.i.reass.2 to i64
  %i.rm = mul nuw i64 %i.rl, 4294967297           ; 2 uses
  store i64 %i.rm, ptr %i.rg, align 2
  %i.rn = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 40
  store i64 %i.rm, ptr %i.rn, align 2
  %i.ro = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 48
  %i.rp = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 3
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !43
  %i.rr = zext i8 %i.rq to i32
  %i.rs = shl nuw nsw i32 %i.rr, 8
  %.reass100.reass.i.reass.i.reass.3 = or disjoint i32 %i.rs, %invariant.op135.reass
  %i.rt = zext i32 %.reass100.reass.i.reass.i.reass.3 to i64
  %i.ru = mul nuw i64 %i.rt, 4294967297           ; 2 uses
  store i64 %i.ru, ptr %i.ro, align 2
  %i.rv = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 56
  store i64 %i.ru, ptr %i.rv, align 2
  %i.rw = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 64
  %i.rx = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 4 ; 2 uses
  %.not79.i.i.3 = icmp eq ptr %i.rx, %i.lh
  br i1 %.not79.i.i.3, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i.new, !llvm.loop !72

.lr.ph.i58.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i58.i.new
  %.394.i.i = phi ptr [ %i.sq, %.lr.ph.i58.i.new ], [ %.394.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.37793.i.i = phi ptr [ %i.sr, %.lr.ph.i58.i.new ], [ %.37793.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ry = load i8, ptr %.37793.i.i, align 1, !tbaa !43
  %i.rz = zext i8 %i.ry to i32
  %i.sa = shl nuw nsw i32 %i.rz, 8
  %.reass.reass.i.reass.i.reass = or disjoint i32 %i.sa, %invariant.op.reass
  %i.sb = zext i32 %.reass.reass.i.reass.i.reass to i64
  %i.sc = mul nuw i64 %i.sb, 4294967297           ; 4 uses
  store i64 %i.sc, ptr %.394.i.i, align 2
  %i.sd = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 8
  store i64 %i.sc, ptr %i.sd, align 2
  %i.se = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 16
  store i64 %i.sc, ptr %i.se, align 2
  %i.sf = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 24
  store i64 %i.sc, ptr %i.sf, align 2
  %i.sg = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 32
  %i.sh = getelementptr inbounds nuw i8, ptr %.37793.i.i, i64 1
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !43
  %i.sj = zext i8 %i.si to i32
  %i.sk = shl nuw nsw i32 %i.sj, 8
  %.reass.reass.i.reass.i.reass.1 = or disjoint i32 %i.sk, %invariant.op.reass
  %i.sl = zext i32 %.reass.reass.i.reass.i.reass.1 to i64
  %i.sm = mul nuw i64 %i.sl, 4294967297           ; 4 uses
  store i64 %i.sm, ptr %i.sg, align 2
  %i.sn = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 40
  store i64 %i.sm, ptr %i.sn, align 2
  %i.so = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 48
  store i64 %i.sm, ptr %i.so, align 2
  %i.sp = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 56
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi:bb.a
  %i.tx = load i8, ptr %i.tp, align 1, !tbaa !43
  %i.ty = zext i8 %i.tx to i32
  %i.tz = or disjoint i32 %i.tv, %i.ty
  %i.ua = zext i32 %i.tz to i64
  %i.ub = mul nuw i64 %i.ua, 4294967297           ; 4 uses
  store i64 %i.ub, ptr %i.tn, align 2
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  store i64 %i.ub, ptr %i.uc, align 2
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  store i64 %i.ub, ptr %i.ud, align 2
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  store i64 %i.ub, ptr %i.ue, align 2
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tn, i64 32
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tp, i64 1
  br label %.lr.ph.split.us.i99.prol.loopexit

.lr.ph.split.us.i99.prol.loopexit:                ; preds = %.lr.ph.split.us.i99.prol, %.lr.ph.i98
  %.394.us.i.unr = phi ptr [ %i.tn, %.lr.ph.i98 ], [ %i.uf, %.lr.ph.split.us.i99.prol ]
  %.37793.us.i.unr = phi ptr [ %i.tp, %.lr.ph.i98 ], [ %i.ug, %.lr.ph.split.us.i99.prol ]
  %i.uh = add nsw i64 %i.tq, -1
  %i.ui = icmp eq i64 %i.uh, %i.to
  br i1 %i.ui, label %.loopexit.i, label %.lr.ph.split.us.i99

.lr.ph.split.us.i99:                              ; preds = %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99
  %.394.us.i = phi ptr [ %i.vb, %.lr.ph.split.us.i99 ], [ %.394.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 9 uses
  %.37793.us.i = phi ptr [ %i.vc, %.lr.ph.split.us.i99 ], [ %.37793.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 3 uses
  %i.uj = load i8, ptr %.37793.us.i, align 1, !tbaa !43
  %i.uk = zext i8 %i.uj to i32
  %i.ul = or disjoint i32 %i.tv, %i.uk
  %i.um = zext i32 %i.ul to i64
  %i.un = mul nuw i64 %i.um, 4294967297           ; 4 uses
  store i64 %i.un, ptr %.394.us.i, align 2
  %i.uo = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 8
  store i64 %i.un, ptr %i.uo, align 2
  %i.up = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 16
  store i64 %i.un, ptr %i.up, align 2
  %i.uq = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 24
  store i64 %i.un, ptr %i.uq, align 2
  %i.ur = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 32
  %i.us = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 1
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !43
  %i.uu = zext i8 %i.ut to i32
  %i.uv = or disjoint i32 %i.tv, %i.uu
  %i.uw = zext i32 %i.uv to i64
  %i.ux = mul nuw i64 %i.uw, 4294967297           ; 4 uses
  store i64 %i.ux, ptr %i.ur, align 2
  %i.uy = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 40
  store i64 %i.ux, ptr %i.uy, align 2
  %i.uz = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 48
  store i64 %i.ux, ptr %i.uz, align 2
  %i.va = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 56
  store i64 %i.ux, ptr %i.va, align 2
  %i.vb = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 64
  %i.vc = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 2 ; 2 uses
  %.not.us.i.1 = icmp eq ptr %i.vc, %i.tr
  br i1 %.not.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i99, !llvm.loop !73

.preheader88.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.preheader88.i
  %i.vd = shl i32 %i.ey, 16
  %i.ve = add i32 %i.vd, 16777216                 ; 5 uses
  %i.vf = sub nsw i64 %i.tq, %i.to
  %xtraiter389 = and i64 %i.vf, 3                 ; 2 uses
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol

.lr.ph98.split.us.i.prol:                         ; preds = %.lr.ph98.i, %.lr.ph98.split.us.i.prol
  %.297.us.i.prol = phi ptr [ %i.vm, %.lr.ph98.split.us.i.prol ], [ %i.tn, %.lr.ph98.i ] ; 3 uses
  %.27696.us.i.prol = phi ptr [ %i.vn, %.lr.ph98.split.us.i.prol ], [ %i.tp, %.lr.ph98.i ] ; 2 uses
  %prol.iter391 = phi i64 [ %prol.iter391.next, %.lr.ph98.split.us.i.prol ], [ 0, %.lr.ph98.i ]
  %i.vg = load i8, ptr %.27696.us.i.prol, align 1, !tbaa !43
  %i.vh = zext i8 %i.vg to i32
  %i.vi = or disjoint i32 %i.ve, %i.vh
  %i.vj = zext i32 %i.vi to i64
  %i.vk = mul nuw i64 %i.vj, 4294967297           ; 2 uses
  store i64 %i.vk, ptr %.297.us.i.prol, align 2
  %i.vl = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 8
  store i64 %i.vk, ptr %i.vl, align 2
  %i.vm = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 16 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.27696.us.i.prol, i64 1 ; 2 uses
  %prol.iter391.next = add i64 %prol.iter391, 1   ; 2 uses
  %prol.iter391.cmp.not = icmp eq i64 %prol.iter391.next, %xtraiter389
  br i1 %prol.iter391.cmp.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol, !llvm.loop !78

.lr.ph98.split.us.i.prol.loopexit:                ; preds = %.lr.ph98.split.us.i.prol, %.lr.ph98.i
  %.297.us.i.unr = phi ptr [ %i.tn, %.lr.ph98.i ], [ %i.vm, %.lr.ph98.split.us.i.prol ]
  %.27696.us.i.unr = phi ptr [ %i.tp, %.lr.ph98.i ], [ %i.vn, %.lr.ph98.split.us.i.prol ]
  %i.vo = sub nsw i64 %i.to, %i.tq
  %i.vp = icmp ugt i64 %i.vo, -4
  br i1 %i.vp, label %.loopexit.i, label %.lr.ph98.split.us.i

.lr.ph98.split.us.i:                              ; preds = %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i
  %.297.us.i = phi ptr [ %i.wu, %.lr.ph98.split.us.i ], [ %.297.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 9 uses
  %.27696.us.i = phi ptr [ %i.wv, %.lr.ph98.split.us.i ], [ %.27696.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 5 uses
  %i.vq = load i8, ptr %.27696.us.i, align 1, !tbaa !43
  %i.vr = zext i8 %i.vq to i32
  %i.vs = or disjoint i32 %i.ve, %i.vr
  %i.vt = zext i32 %i.vs to i64
  %i.vu = mul nuw i64 %i.vt, 4294967297           ; 2 uses
  store i64 %i.vu, ptr %.297.us.i, align 2
  %i.vv = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 8
  store i64 %i.vu, ptr %i.vv, align 2
  %i.vw = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 16
  %i.vx = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 1
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !43
  %i.vz = zext i8 %i.vy to i32
  %i.wa = or disjoint i32 %i.ve, %i.vz
  %i.wb = zext i32 %i.wa to i64
  %i.wc = mul nuw i64 %i.wb, 4294967297           ; 2 uses
  store i64 %i.wc, ptr %i.vw, align 2
  %i.wd = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 24
  store i64 %i.wc, ptr %i.wd, align 2
  %i.we = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 32
  %i.wf = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 2
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !43
  %i.wh = zext i8 %i.wg to i32
  %i.wi = or disjoint i32 %i.ve, %i.wh
  %i.wj = zext i32 %i.wi to i64
  %i.wk = mul nuw i64 %i.wj, 4294967297           ; 2 uses
  store i64 %i.wk, ptr %i.we, align 2
  %i.wl = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 40
  store i64 %i.wk, ptr %i.wl, align 2
  %i.wm = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 48
  %i.wn = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 3
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !43
  %i.wp = zext i8 %i.wo to i32
  %i.wq = or disjoint i32 %i.ve, %i.wp
  %i.wr = zext i32 %i.wq to i64
  %i.ws = mul nuw i64 %i.wr, 4294967297           ; 2 uses
  store i64 %i.ws, ptr %i.wm, align 2
  %i.wt = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 56
  store i64 %i.ws, ptr %i.wt, align 2
  %i.wu = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 64
  %i.wv = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 4 ; 2 uses
  %.not79.us.i.3 = icmp eq ptr %i.wv, %i.tr
  br i1 %.not79.us.i.3, label %.loopexit.i, label %.lr.ph98.split.us.i, !llvm.loop !72

.preheader86.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %.preheader86.i
  %i.ww = shl i32 %i.ey, 16
  %i.wx = add i32 %i.ww, 16777216                 ; 6 uses
  %i.wy = sub nsw i64 %i.tq, %i.to                ; 3 uses
  %min.iters.check251 = icmp ult i64 %i.wy, 10
  br i1 %min.iters.check251, label %.lr.ph104.split.us.i.preheader, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.lr.ph104.i
  %i.wz = shl nsw i64 %i.tq, 3
  %i.xa = shl nuw nsw i64 %i.tm, 2
  %i.xb = add nsw i64 %i.wz, %i.xa
  %i.xc = shl nsw i64 %i.to, 3
  %i.xd = sub nsw i64 %i.xb, %i.xc
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.xd
  %bound0247 = icmp ult ptr %i.tn, %i.tr
  %bound1248 = icmp ult ptr %i.tp, %scevgep246
  %found.conflict249 = and i1 %bound0247, %bound1248
  br i1 %found.conflict249, label %.lr.ph104.split.us.i.preheader, label %vector.ph252

vector.ph252:                                     ; preds = %vector.memcheck244
  %n.vec254 = and i64 %i.wy, -4                   ; 4 uses
  %i.xe = shl nsw i64 %n.vec254, 3
  %i.xf = getelementptr i8, ptr %i.tn, i64 %i.xe
  %i.xg = getelementptr i8, ptr %i.tp, i64 %n.vec254
  %broadcast.splatinsert255 = insertelement <2 x i32> poison, i32 %i.wx, i64 0
  %broadcast.splat256 = shufflevector <2 x i32> %broadcast.splatinsert255, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph252
  %index258 = phi i64 [ 0, %vector.ph252 ], [ %index.next265, %vector.body257 ] ; 3 uses
  %i.xh = shl i64 %index258, 3                    ; 2 uses
  %next.gep259 = getelementptr i8, ptr %i.tn, i64 %i.xh
  %i.xi = getelementptr i8, ptr %i.tn, i64 %i.xh
  %next.gep260 = getelementptr i8, ptr %i.xi, i64 16
  %next.gep261 = getelementptr i8, ptr %i.tp, i64 %index258 ; 2 uses
  %i.xj = getelementptr i8, ptr %next.gep261, i64 2
  %wide.load262 = load <2 x i8>, ptr %next.gep261, align 1, !tbaa !43, !alias.scope !79
  %wide.load263 = load <2 x i8>, ptr %i.xj, align 1, !tbaa !43, !alias.scope !79
  %i.xk = zext <2 x i8> %wide.load262 to <2 x i32>
  %i.xl = zext <2 x i8> %wide.load263 to <2 x i32>
  %i.xm = or disjoint <2 x i32> %broadcast.splat256, %i.xk
  %i.xn = or disjoint <2 x i32> %broadcast.splat256, %i.xl
  %interleaved.vec = shufflevector <2 x i32> %i.xm, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec, ptr %next.gep259, align 2, !alias.scope !82, !noalias !79
  %interleaved.vec264 = shufflevector <2 x i32> %i.xn, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec264, ptr %next.gep260, align 2, !alias.scope !82, !noalias !79
  %index.next265 = add nuw i64 %index258, 4       ; 2 uses
  %i.xo = icmp eq i64 %index.next265, %n.vec254
  br i1 %i.xo, label %middle.block266, label %vector.body257, !llvm.loop !84

middle.block266:                                  ; preds = %vector.body257
  %cmp.n267 = icmp eq i64 %i.wy, %n.vec254
  br i1 %cmp.n267, label %.loopexit.i, label %.lr.ph104.split.us.i.preheader

.lr.ph104.split.us.i.preheader:                   ; preds = %vector.memcheck244, %.lr.ph104.i, %middle.block266
  %.1103.us.i.ph = phi ptr [ %i.tn, %vector.memcheck244 ], [ %i.tn, %.lr.ph104.i ], [ %i.xf, %middle.block266 ] ; 2 uses
  %.175102.us.i.ph = phi ptr [ %i.tp, %vector.memcheck244 ], [ %i.tp, %.lr.ph104.i ], [ %i.xg, %middle.block266 ] ; 3 uses
  %i.xp = add i64 %6, %i.tq
  %.175102.us.i.ph392 = ptrtoaddr ptr %.175102.us.i.ph to i64 ; 2 uses
  %i.xq = sub i64 %i.xp, %.175102.us.i.ph392
  %i.xr = add i64 %i.er, %i.tq
  %i.xs = sub i64 %i.xr, %.175102.us.i.ph392
  %xtraiter393 = and i64 %i.xq, 3                 ; 2 uses
  %lcmp.mod394.not = icmp eq i64 %xtraiter393, 0
  br i1 %lcmp.mod394.not, label %.lr.ph104.split.us.i.prol.loopexit, label %.lr.ph104.split.us.i.prol

.lr.ph104.split.us.i.prol:                        ; preds = %.lr.ph104.split.us.i.preheader, %.lr.ph104.split.us.i.prol
  %.1103.us.i.prol = phi ptr [ %i.xx, %.lr.ph104.split.us.i.prol ], [ %.1103.us.i.ph, %.lr.ph104.split.us.i.preheader ] ; 3 uses
  %.175102.us.i.prol = phi ptr [ %i.xy, %.lr.ph104.split.us.i.prol ], [ %.175102.us.i.ph, %.lr.ph104.split.us.i.preheader ] ; 2 uses
  %prol.iter395 = phi i64 [ %prol.iter395.next, %.lr.ph104.split.us.i.prol ], [ 0, %.lr.ph104.split.us.i.preheader ]
  %i.xt = load i8, ptr %.175102.us.i.prol, align 1, !tbaa !43
  %i.xu = zext i8 %i.xt to i32
  %i.xv = or disjoint i32 %i.wx, %i.xu            ; 2 uses
  store i32 %i.xv, ptr %.1103.us.i.prol, align 2
  %i.xw = getelementptr inbounds nuw i8, ptr %.1103.us.i.prol, i64 4
  store i32 %i.xv, ptr %i.xw, align 2
  %i.xx = getelementptr inbounds nuw i8, ptr %.1103.us.i.prol, i64 8 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.175102.us.i.prol, i64 1 ; 2 uses
  %prol.iter395.next = add i64 %prol.iter395, 1   ; 2 uses
  %prol.iter395.cmp.not = icmp eq i64 %prol.iter395.next, %xtraiter393
  br i1 %prol.iter395.cmp.not, label %.lr.ph104.split.us.i.prol.loopexit, label %.lr.ph104.split.us.i.prol, !llvm.loop !85

.lr.ph104.split.us.i.prol.loopexit:               ; preds = %.lr.ph104.split.us.i.prol, %.lr.ph104.split.us.i.preheader
  %.1103.us.i.unr = phi ptr [ %.1103.us.i.ph, %.lr.ph104.split.us.i.preheader ], [ %i.xx, %.lr.ph104.split.us.i.prol ]
  %.175102.us.i.unr = phi ptr [ %.175102.us.i.ph, %.lr.ph104.split.us.i.preheader ], [ %i.xy, %.lr.ph104.split.us.i.prol ]
  %i.xz = icmp ult i64 %i.xs, 3
  br i1 %i.xz, label %.loopexit.i, label %.lr.ph104.split.us.i

.lr.ph104.split.us.i:                             ; preds = %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i
  %.1103.us.i = phi ptr [ %i.yw, %.lr.ph104.split.us.i ], [ %.1103.us.i.unr, %.lr.ph104.split.us.i.prol.loopexit ] ; 9 uses
  %.175102.us.i = phi ptr [ %i.yx, %.lr.ph104.split.us.i ], [ %.175102.us.i.unr, %.lr.ph104.split.us.i.prol.loopexit ] ; 5 uses
  %i.ya = load i8, ptr %.175102.us.i, align 1, !tbaa !43
  %i.yb = zext i8 %i.ya to i32
  %i.yc = or disjoint i32 %i.wx, %i.yb            ; 2 uses
  store i32 %i.yc, ptr %.1103.us.i, align 2
  %i.yd = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 4
  store i32 %i.yc, ptr %i.yd, align 2
  %i.ye = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 8
  %i.yf = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 1
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !43
  %i.yh = zext i8 %i.yg to i32
  %i.yi = or disjoint i32 %i.wx, %i.yh            ; 2 uses
  store i32 %i.yi, ptr %i.ye, align 2
  %i.yj = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 12
  store i32 %i.yi, ptr %i.yj, align 2
  %i.yk = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 16
  %i.yl = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 2
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !43
  %i.yn = zext i8 %i.ym to i32
  %i.yo = or disjoint i32 %i.wx, %i.yn            ; 2 uses
  store i32 %i.yo, ptr %i.yk, align 2
  %i.yp = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 20
  store i32 %i.yo, ptr %i.yp, align 2
  %i.yq = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 24
  %i.yr = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 3
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !43
  %i.yt = zext i8 %i.ys to i32
  %i.yu = or disjoint i32 %i.wx, %i.yt            ; 2 uses
  store i32 %i.yu, ptr %i.yq, align 2
  %i.yv = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 28
  store i32 %i.yu, ptr %i.yv, align 2
  %i.yw = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 32
  %i.yx = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 4 ; 2 uses
  %.not80.us.i.3 = icmp eq ptr %i.yx, %i.tr
  br i1 %.not80.us.i.3, label %.loopexit.i, label %.lr.ph104.split.us.i, !llvm.loop !86

.preheader84.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.preheader84.i
  %i.yy = shl i32 %i.ey, 16
  %i.yz = add i32 %i.yy, 16777216                 ; 10 uses
  %i.za = sub nsw i64 %i.tq, %i.to                ; 3 uses
  %min.iters.check228 = icmp ult i64 %i.za, 8
  br i1 %min.iters.check228, label %.lr.ph110.split.us.i.preheader, label %vector.memcheck225

vector.memcheck225:                               ; preds = %.lr.ph110.i
  %i.zb = add nsw i64 %i.tq, %i.tm
  %i.zc = sub nsw i64 %i.zb, %i.to
  %i.zd = shl nsw i64 %i.zc, 2
  %scevgep226 = getelementptr i8, ptr %scevgep, i64 %i.zd
  %bound0 = icmp ult ptr %i.tn, %i.tr
  %bound1 = icmp ult ptr %i.tp, %scevgep226
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.split.us.i.preheader, label %vector.ph229

vector.ph229:                                     ; preds = %vector.memcheck225
  %n.vec231 = and i64 %i.za, -8                   ; 4 uses
  %i.ze = shl nsw i64 %n.vec231, 2
  %i.zf = getelementptr i8, ptr %i.tn, i64 %i.ze
  %i.zg = getelementptr i8, ptr %i.tp, i64 %n.vec231
  %broadcast.splatinsert232 = insertelement <4 x i32> poison, i32 %i.yz, i64 0
  %broadcast.splat233 = shufflevector <4 x i32> %broadcast.splatinsert232, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph229
  %index235 = phi i64 [ 0, %vector.ph229 ], [ %index.next239, %vector.body234 ] ; 3 uses
  %i.zh = shl i64 %index235, 2
  %next.gep = getelementptr i8, ptr %i.tn, i64 %i.zh ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.tp, i64 %index235 ; 2 uses
  %i.zi = getelementptr i8, ptr %next.gep236, i64 4
  %wide.load237 = load <4 x i8>, ptr %next.gep236, align 1, !tbaa !43, !alias.scope !87
  %wide.load238 = load <4 x i8>, ptr %i.zi, align 1, !tbaa !43, !alias.scope !87
  %i.zj = zext <4 x i8> %wide.load237 to <4 x i32>
  %i.zk = zext <4 x i8> %wide.load238 to <4 x i32>
  %i.zl = or disjoint <4 x i32> %broadcast.splat233, %i.zj
  %i.zm = or disjoint <4 x i32> %broadcast.splat233, %i.zk
  %i.zn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.zl, ptr %next.gep, align 2, !alias.scope !90, !noalias !87
  store <4 x i32> %i.zm, ptr %i.zn, align 2, !alias.scope !90, !noalias !87
  %index.next239 = add nuw i64 %index235, 8       ; 2 uses
  %i.zo = icmp eq i64 %index.next239, %n.vec231
  br i1 %i.zo, label %middle.block240, label %vector.body234, !llvm.loop !92

middle.block240:                                  ; preds = %vector.body234
  %cmp.n241 = icmp eq i64 %i.za, %n.vec231
  br i1 %cmp.n241, label %.loopexit.i, label %.lr.ph110.split.us.i.preheader

.lr.ph110.split.us.i.preheader:                   ; preds = %vector.memcheck225, %.lr.ph110.i, %middle.block240
  %.0109.us.i.ph = phi ptr [ %i.tn, %vector.memcheck225 ], [ %i.tn, %.lr.ph110.i ], [ %i.zf, %middle.block240 ] ; 2 uses
  %.074108.us.i.ph = phi ptr [ %i.tp, %vector.memcheck225 ], [ %i.tp, %.lr.ph110.i ], [ %i.zg, %middle.block240 ] ; 3 uses
  %i.zp = add i64 %6, %i.tq
  %.074108.us.i.ph396 = ptrtoaddr ptr %.074108.us.i.ph to i64 ; 2 uses
  %i.zq = sub i64 %i.zp, %.074108.us.i.ph396
  %i.zr = add i64 %i.es, %i.tq
  %i.zs = sub i64 %i.zr, %.074108.us.i.ph396
  %xtraiter397 = and i64 %i.zq, 7                 ; 2 uses
  %lcmp.mod398.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod398.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol

.lr.ph110.split.us.i.prol:                        ; preds = %.lr.ph110.split.us.i.preheader, %.lr.ph110.split.us.i.prol
  %.0109.us.i.prol = phi ptr [ %i.zw, %.lr.ph110.split.us.i.prol ], [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %.074108.us.i.prol = phi ptr [ %i.zx, %.lr.ph110.split.us.i.prol ], [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %prol.iter399 = phi i64 [ %prol.iter399.next, %.lr.ph110.split.us.i.prol ], [ 0, %.lr.ph110.split.us.i.preheader ]
  %i.zt = load i8, ptr %.074108.us.i.prol, align 1, !tbaa !43
  %i.zu = zext i8 %i.zt to i32
  %i.zv = or disjoint i32 %i.yz, %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %.0109.us.i.prol, i64 4 ; 2 uses
  store i32 %i.zv, ptr %.0109.us.i.prol, align 2
  %i.zx = getelementptr inbounds nuw i8, ptr %.074108.us.i.prol, i64 1 ; 2 uses
  %prol.iter399.next = add i64 %prol.iter399, 1   ; 2 uses
  %prol.iter399.cmp.not = icmp eq i64 %prol.iter399.next, %xtraiter397
  br i1 %prol.iter399.cmp.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol, !llvm.loop !93

.lr.ph110.split.us.i.prol.loopexit:               ; preds = %.lr.ph110.split.us.i.prol, %.lr.ph110.split.us.i.preheader
  %.0109.us.i.unr = phi ptr [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.zw, %.lr.ph110.split.us.i.prol ]
  %.074108.us.i.unr = phi ptr [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.zx, %.lr.ph110.split.us.i.prol ]
  %i.zy = icmp ult i64 %i.zs, 7
  br i1 %i.zy, label %.loopexit.i, label %.lr.ph110.split.us.i

.lr.ph110.split.us.i:                             ; preds = %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i
  %.0109.us.i = phi ptr [ %i.abl, %.lr.ph110.split.us.i ], [ %.0109.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %.074108.us.i = phi ptr [ %i.abm, %.lr.ph110.split.us.i ], [ %.074108.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %i.zz = load i8, ptr %.074108.us.i, align 1, !tbaa !43
  %i.aaa = zext i8 %i.zz to i32
  %i.aab = or disjoint i32 %i.yz, %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 4
  store i32 %i.aab, ptr %.0109.us.i, align 2
  %i.aad = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 1
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !43
  %i.aaf = zext i8 %i.aae to i32
  %i.aag = or disjoint i32 %i.yz, %i.aaf
  %i.aah = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 8
  store i32 %i.aag, ptr %i.aac, align 2
  %i.aai = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 2
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !43
  %i.aak = zext i8 %i.aaj to i32
  %i.aal = or disjoint i32 %i.yz, %i.aak
  %i.aam = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 12
  store i32 %i.aal, ptr %i.aah, align 2
  %i.aan = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 3
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !43
  %i.aap = zext i8 %i.aao to i32
  %i.aaq = or disjoint i32 %i.yz, %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 16
  store i32 %i.aaq, ptr %i.aam, align 2
  %i.aas = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 4
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !43
  %i.aau = zext i8 %i.aat to i32
  %i.aav = or disjoint i32 %i.yz, %i.aau
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 20
  store i32 %i.aav, ptr %i.aar, align 2
  %i.aax = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 5
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !43
  %i.aaz = zext i8 %i.aay to i32
  %i.aba = or disjoint i32 %i.yz, %i.aaz
  %i.abb = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 24
  store i32 %i.aba, ptr %i.aaw, align 2
  %i.abc = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 6
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !43
  %i.abe = zext i8 %i.abd to i32
  %i.abf = or disjoint i32 %i.yz, %i.abe
  %i.abg = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 28
  store i32 %i.abf, ptr %i.abb, align 2
  %i.abh = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 7
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !43
  %i.abj = zext i8 %i.abi to i32
  %i.abk = or disjoint i32 %i.yz, %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 32
  store i32 %i.abk, ptr %i.abg, align 2
  %i.abm = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 8 ; 2 uses
  %.not81.us.i.7 = icmp eq ptr %i.abm, %i.tr
  br i1 %.not81.us.i.7, label %.loopexit.i, label %.lr.ph110.split.us.i, !llvm.loop !94

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.preheader.i
  %i.abn = shl i32 %i.ey, 16
  %i.abo = add i32 %i.abn, 16777216
  %i.abp = zext i32 %i.tt to i64
  %.idx.i = shl nuw nsw i64 %i.abp, 2             ; 2 uses
  %i.abq = add nsw i64 %.idx.i, -32               ; 2 uses
  %i.abr = lshr i64 %i.abq, 5
  %i.abs = add nuw nsw i64 %i.abr, 1
  %xtraiter400 = and i64 %i.abs, 7                ; 2 uses
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  %i.abt = icmp ult i64 %i.abq, 224
  br label %.lr.ph115.preheader.i

.lr.ph115.preheader.i:                            ; preds = %._crit_edge.i, %.lr.ph119.i
  %.4118.i = phi ptr [ %i.tn, %.lr.ph119.i ], [ %i.abz, %._crit_edge.i ] ; 3 uses
  %.478117.i = phi ptr [ %i.tp, %.lr.ph119.i ], [ %i.acl, %._crit_edge.i ] ; 2 uses
  %i.abu = load i8, ptr %.478117.i, align 1, !tbaa !43
  %i.abv = zext i8 %i.abu to i32
  %i.abw = or disjoint i32 %i.abo, %i.abv
  %i.abx = zext i32 %i.abw to i64
  %i.aby = mul nuw i64 %i.abx, 4294967297
  %i.abz = getelementptr inbounds nuw i8, ptr %.4118.i, i64 %.idx.i ; 2 uses
  %i.aca = insertelement <4 x i64> poison, i64 %i.aby, i64 0
  %i.acb = shufflevector <4 x i64> %i.aca, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %lcmp.mod401.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.preheader.i, %.lr.ph115.i.prol
  %.5114.i.prol = phi ptr [ %i.acc, %.lr.ph115.i.prol ], [ %.4118.i, %.lr.ph115.preheader.i ] ; 2 uses
  %prol.iter402 = phi i64 [ %prol.iter402.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.preheader.i ]
  store <4 x i64> %i.acb, ptr %.5114.i.prol, align 2
  %i.acc = getelementptr inbounds nuw i8, ptr %.5114.i.prol, i64 32 ; 2 uses
  %prol.iter402.next = add i64 %prol.iter402, 1   ; 2 uses
  %prol.iter402.cmp.not = icmp eq i64 %prol.iter402.next, %xtraiter400
  br i1 %prol.iter402.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !95

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.preheader.i
  %.5114.i.unr = phi ptr [ %.4118.i, %.lr.ph115.preheader.i ], [ %i.acc, %.lr.ph115.i.prol ]
  br i1 %i.abt, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i
  %.5114.i = phi ptr [ %i.ack, %.lr.ph115.i ], [ %.5114.i.unr, %.lr.ph115.i.prol.loopexit ] ; 9 uses
  store <4 x i64> %i.acb, ptr %.5114.i, align 2
  %i.acd = getelementptr inbounds nuw i8, ptr %.5114.i, i64 32
  store <4 x i64> %i.acb, ptr %i.acd, align 2
  %i.ace = getelementptr inbounds nuw i8, ptr %.5114.i, i64 64
  store <4 x i64> %i.acb, ptr %i.ace, align 2
  %i.acf = getelementptr inbounds nuw i8, ptr %.5114.i, i64 96
  store <4 x i64> %i.acb, ptr %i.acf, align 2
  %i.acg = getelementptr inbounds nuw i8, ptr %.5114.i, i64 128
  store <4 x i64> %i.acb, ptr %i.acg, align 2
  %i.ach = getelementptr inbounds nuw i8, ptr %.5114.i, i64 160
  store <4 x i64> %i.acb, ptr %i.ach, align 2
  %i.aci = getelementptr inbounds nuw i8, ptr %.5114.i, i64 192
  store <4 x i64> %i.acb, ptr %i.aci, align 2
  %i.acj = getelementptr inbounds nuw i8, ptr %.5114.i, i64 224
  store <4 x i64> %i.acb, ptr %i.acj, align 2
  %i.ack = getelementptr inbounds nuw i8, ptr %.5114.i, i64 256 ; 2 uses
  %.not83.i.7 = icmp eq ptr %i.ack, %i.abz
  br i1 %.not83.i.7, label %._crit_edge.i, label %.lr.ph115.i, !llvm.loop !75

._crit_edge.i:                                    ; preds = %.lr.ph115.i, %.lr.ph115.i.prol.loopexit
  %i.acl = getelementptr inbounds nuw i8, ptr %.478117.i, i64 1 ; 2 uses
  %.not82.i = icmp eq ptr %i.acl, %i.tr
  br i1 %.not82.i, label %.loopexit.i, label %.lr.ph115.preheader.i, !llvm.loop !76

.loopexit.i:                                      ; preds = %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i, %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i, %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i, %.loopexit.i.us.i, %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99, %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i, %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i, %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i, %._crit_edge.i, %middle.block266, %middle.block240, %.preheader.i, %.preheader84.i, %.preheader86.i, %.preheader88.i, %.preheader90.i, %bb.h
  %exitcond.not.i = icmp eq i64 %indvars.iv.next97.i, %i.aw
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit, label %.lr.ph78.i, !llvm.loop !96

_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit: ; preds = %.loopexit.i, %._crit_edge121, %._crit_edge134.split
  %i.acm = trunc nuw nsw i32 %spec.store.select to i8
  store i8 %.sroa.0.0.extract.trunc, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.acm, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit
  %.087 = phi i64 [ %i.l, %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit ], [ -1, %bb.a ], [ -44, %bb.b ], [ %i.l, %bb.c ], [ -44, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i64 %.087
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp ult i64 %i.a, %4
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0, i32 noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = and i32 %5, 1
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji:bb.a
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ka ; 3 uses
  %i.kc = load i16, ptr %i.kb, align 2
  store i16 %i.kc, ptr %.6.i247.i, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  %i.ke = load i8, ptr %i.kd, align 2, !tbaa !97
  %i.kf = zext i8 %i.ke to i32
  %i.kg = add i32 %.sroa.31.3246.i, %i.kf         ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 3
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !100
  %i.kj = zext i8 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %.6.i247.i, i64 %i.kj ; 3 uses
  %.not.i4.i = icmp ugt ptr %i.kk, %i.in
  br i1 %.not.i4.i, label %.loopexit.i, label %.lr.ph248.i, !llvm.loop !106

.loopexit.i:                                      ; preds = %.lr.ph248.i, %.preheader.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i
  %.sroa.31.1.i = phi i32 [ %.sroa.31.0.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i ], [ %.sroa.31.9328.i, %.preheader.i ], [ %i.kg, %.lr.ph248.i ] ; 6 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i ], [ %.sroa.0.7329.i, %.preheader.i ], [ %.sroa.0.7329.i, %.lr.ph248.i ]
  %.sroa.9790.1.i = phi ptr [ %.sroa.9790.0.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i ], [ %.sroa.9790.7330.i, %.preheader.i ], [ %.sroa.9790.7330.i, %.lr.ph248.i ]
  %.7.i.i = phi ptr [ %.4.i.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i ], [ %.5.i.i.lcssa, %.preheader.i ], [ %i.kk, %.lr.ph248.i ] ; 2 uses
  %i.kl = icmp ult ptr %.7.i.i, %i.ij
  br i1 %i.kl, label %bb.ah, label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i

bb.ah:                                            ; preds = %.loopexit.i
  %i.km = and i32 %.sroa.31.1.i, 63
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = shl i64 %.sroa.0.1.i, %i.kn
  %i.kp = sub nsw i32 0, %.sroa.3.0.extract.shift.i304.i
  %i.kq = and i32 %i.kp, 63
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = lshr i64 %i.ko, %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ks ; 4 uses
  %i.ku = load i8, ptr %i.kt, align 2
  store i8 %i.ku, ptr %.7.i.i, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 3
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !100
  %i.kx = icmp eq i8 %i.kw, 1
  br i1 %i.kx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %i.kz = load i8, ptr %i.ky, align 2, !tbaa !97
  %i.la = zext i8 %i.kz to i32
  %i.lb = add i32 %.sroa.31.1.i, %i.la
  br label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.lc = icmp ult i32 %.sroa.31.1.i, 64
  br i1 %i.lc, label %bb.ak, label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %i.le = load i8, ptr %i.ld, align 2, !tbaa !97
  %i.lf = zext i8 %i.le to i32
  %i.lg = add nuw nsw i32 %.sroa.31.1.i, %i.lf
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.lg, i32 64)
  br label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i

_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %.loopexit.i
  %.sroa.31.6.i = phi i32 [ %.sroa.31.1.i, %.loopexit.i ], [ %i.lb, %bb.ai ], [ %.sroa.31.1.i, %bb.aj ], [ %spec.select.i, %bb.ak ]
  %i.lh = icmp eq ptr %.sroa.9790.1.i, %2
  %.sroa.31.6.fr.i = freeze i32 %.sroa.31.6.i
  %.not.i = icmp eq i32 %.sroa.31.6.fr.i, 64
  %or.cond.i = and i1 %i.lh, %.not.i
  %spec.select201.i = select i1 %or.cond.i, i64 %1, i64 -20
  br label %_ZN11duckdb_zstdL46HUF_decompress1X2_usingDTable_internal_defaultEPvmPKvmPKj.exit

_ZN11duckdb_zstdL46HUF_decompress1X2_usingDTable_internal_defaultEPvmPKvmPKj.exit: ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %bb.m, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %3, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ], [ %spec.select201.i, %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i ], [ -1, %bb.e ], [ -20, %bb.m ], [ -72, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @_ZN11duckdb_zstd17HUF_selectDecoderEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp ult i64 %1, %0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %1, 4
  %i.b = udiv i64 %i.a, %0
  %i.c = and i64 %i.b, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 15, %bb.a ]
  %i.e = lshr i64 %0, 8
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @_ZN11duckdb_zstdL8algoTimeE, i64 %i.d ; 4 uses
  %i.h = load i32, ptr %i.g, align 16, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !109
  %i.k = mul i32 %i.j, %i.f
  %i.l = add i32 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !109
  %i.q = mul i32 %i.p, %i.f
  %i.r = add i32 %i.q, %i.n                       ; 2 uses
  %i.s = lshr i32 %i.r, 5
  %i.t = add i32 %i.s, %i.r
  %i.u = icmp ult i32 %i.t, %i.l
  %i.v = zext i1 %i.u to i32
  ret i32 %i.v
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd26HUF_decompress1X_DCtx_wkspEPjPvmPKvmS1_mi(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %4, %2
  br i1 %i.b, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %4, %2
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %3, i64 %2, i1 false)
  br label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %4, 1
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load i8, ptr %3, align 1, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.e, i64 %2, i1 false)
  br label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp ult i64 %4, %2
  br i1 %.not.i, label %bb.h, label %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit

bb.h:                                             ; preds = %bb.g
  %i.f = shl i64 %4, 4
  %i.g = udiv i64 %i.f, %2
  %i.h = and i64 %i.g, 4294967295
  br label %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit

_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit:      ; preds = %bb.g, %bb.h
  %i.i = phi i64 [ %i.h, %bb.h ], [ 15, %bb.g ]
  %i.j = lshr i64 %2, 8
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr @_ZN11duckdb_zstdL8algoTimeE, i64 %i.i ; 4 uses
  %i.m = load i32, ptr %i.l, align 16, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !109
  %i.p = mul i32 %i.o, %i.k
  %i.q = add i32 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !107
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !109
  %i.v = mul i32 %i.u, %i.k
  %i.w = add i32 %i.v, %i.s                       ; 2 uses
  %i.x = lshr i32 %i.w, 5
  %i.y = add i32 %i.x, %i.w
  %.not = icmp ult i32 %i.y, %i.q
  br i1 %.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit
  %i.z = tail call noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.aa = icmp ult i64 %i.z, -119
  br i1 %i.aa, label %bb.j, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.j:                                             ; preds = %bb.i
  %.not23.i = icmp ult i64 %i.z, %4
  br i1 %.not23.i, label %bb.k, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %i.ac = sub nuw i64 %4, %i.z
  %i.ad = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji(ptr noundef %1, i64 noundef %2, ptr noundef %i.ab, i64 noundef %i.ac, ptr noundef %0, i32 noundef %7)
  br label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.l:                                             ; preds = %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit
  %i.ae = tail call noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX1_wkspEPjPKvmPvmi(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.af = icmp ult i64 %i.ae, -119
  br i1 %i.af, label %bb.m, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.m:                                             ; preds = %bb.l
  %.not23.i36 = icmp ult i64 %i.ae, %4
  br i1 %.not23.i36, label %bb.n, label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %i.ah = sub nuw i64 %4, %i.ae
  %i.ai = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji(ptr noundef %1, i64 noundef %2, ptr noundef %i.ag, i64 noundef %i.ah, ptr noundef %0, i32 noundef %7)
  br label %_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.b, %bb.a, %bb.f, %bb.d
  %.0 = phi i64 [ -20, %bb.b ], [ -70, %bb.a ], [ %2, %bb.d ], [ %2, %bb.f ], [ -72, %bb.j ], [ %i.ad, %bb.k ], [ %i.z, %bb.i ], [ %i.ai, %bb.n ], [ %i.ae, %bb.l ], [ -72, %bb.m ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd27HUF_decompress1X1_DCtx_wkspEPjPvmPKvmS1_mi(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX1_wkspEPjPKvmPvmi(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp ult i64 %i.a, %4
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0, i32 noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd28HUF_decompress1X_usingDTableEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %.val = load i32, ptr %4, align 4
  %i.a = and i32 %.val, 65280
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bmi2EPvmPKvmPKj(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit

bb.c:                                             ; preds = %bb.a
  %6 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %.idx.i.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  %.val.i = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.val.i, 16 ; 2 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ugt i64 %3, 7
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.ptr.i = getelementptr inbounds i8, ptr %2, i64 %3
  %i.g = getelementptr i8, ptr %.ptr.i, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !7     ; 2 uses
  %.not50.i.i = icmp eq i8 %i.h, 0
  br i1 %.not50.i.i, label %_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = load i8, ptr %2, align 1, !tbaa !7
  %i.j = zext i8 %i.i to i64                      ; 7 uses
  switch i64 %3, label %bb.m [
    i64 7, label %bb.g
    i64 6, label %bb.h
    i64 5, label %bb.i
    i64 4, label %bb.j
    i64 3, label %bb.k
    i64 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 48
  %i.o = or disjoint i64 %i.n, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %i.o, %bb.g ], [ %i.j, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 40
  %i.u = add nuw nsw i64 %i.t, %i.p
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.v = phi i64 [ %i.u, %bb.h ], [ %i.j, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 32
  %i.aa = add nuw nsw i64 %i.z, %i.v
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ab = phi i64 [ %i.aa, %bb.i ], [ %i.j, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !7
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 24
  %i.ag = add nuw nsw i64 %i.af, %i.ab
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.ah = phi i64 [ %i.ag, %bb.j ], [ %i.j, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !7
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = add nuw nsw i64 %i.al, %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.an = phi i64 [ %i.am, %bb.k ], [ %i.j, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !7
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 8
  %i.as = add nuw nsw i64 %i.ar, %i.an
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.sroa.0.4.i = phi i64 [ %i.j, %bb.f ], [ %i.as, %bb.l ] ; 2 uses
  %i.at = getelementptr i8, ptr %2, i64 %3
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !7   ; 2 uses
  %.not.i16.i = icmp eq i8 %i.av, 0
  br i1 %.not.i16.i, label %_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %.thread.i

_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i: ; preds = %bb.e
  %.add.i = add nsw i64 %3, -8                    ; 4 uses
  %.ptr86.i = getelementptr inbounds i8, ptr %2, i64 %.add.i ; 4 uses
  %.val.i.i = load i64, ptr %.ptr86.i, align 1, !tbaa !32 ; 2 uses
  %i.aw = zext i8 %i.h to i32
  %i.ax = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.aw, i1 true)
  %i.ay = xor i32 %i.ax, 31
  %i.az = sub nuw nsw i32 8, %i.ay                ; 6 uses
  %i.ba = icmp ult i64 %3, -119
  br i1 %i.ba, label %bb.n, label %_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit

bb.n:                                             ; preds = %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i
  %i.bb = icmp sgt i64 %1, 3
  br i1 %i.bb, label %.lr.ph.i, label %bb.t

.thread.i:                                        ; preds = %bb.m
  %i.bc = zext i8 %i.av to i32
  %i.bd = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bc, i1 true)
  %i.be = trunc nuw nsw i64 %3 to i32
  %i.bf = shl nuw nsw i32 %i.be, 3
  %reass.sub.i = sub nsw i32 %i.bd, %i.bf
  %i.bg = add nsw i32 %reass.sub.i, 41            ; 2 uses
  %i.bh = icmp sgt i64 %1, 3
  br i1 %i.bh, label %.lr.ph.i, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

.lr.ph.i:                                         ; preds = %.thread.i, %bb.n
  %.sroa.20.575142.i = phi i32 [ %i.bg, %.thread.i ], [ %i.az, %bb.n ]
  %.sroa.0.576139.i = phi i64 [ %.sroa.0.4.i, %.thread.i ], [ %.val.i.i, %bb.n ]
  %.sroa.5030.477.idx138.i = phi i64 [ 0, %.thread.i ], [ %.add.i, %bb.n ]
  %i.bi = getelementptr inbounds i8, ptr %i.c, i64 -3
  %i.bj = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.bk = and i32 %i.bj, 63
  %i.bl = zext nneg i32 %i.bk to i64              ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i
  %.0.i105.i = phi ptr [ %0, %.lr.ph.i ], [ %i.dp, %bb.s ] ; 8 uses
  %.sroa.5030.2.idx104.i = phi i64 [ %.sroa.5030.477.idx138.i, %.lr.ph.i ], [ %.sroa.5030.3.idx.i, %bb.s ] ; 5 uses
  %.sroa.0.2103.i = phi i64 [ %.sroa.0.576139.i, %.lr.ph.i ], [ %.sroa.0.3.i, %bb.s ]
  %.sroa.20.3102.i = phi i32 [ %.sroa.20.575142.i, %.lr.ph.i ], [ %i.do, %bb.s ] ; 5 uses
  %.not.i37.i.i = icmp slt i64 %.sroa.5030.2.idx104.i, 8
  br i1 %.not.i37.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = lshr i32 %.sroa.20.3102.i, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = and i32 %.sroa.20.3102.i, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i

bb.q:                                             ; preds = %bb.o
  %i.bp = icmp eq i64 %.sroa.5030.2.idx104.i, 0
  br i1 %i.bp, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = lshr i32 %.sroa.20.3102.i, 3
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = icmp sge i64 %.sroa.5030.2.idx104.i, %i.br
  %.021.i39.i91.i = tail call i64 @llvm.smin.i64(i64 %.sroa.5030.2.idx104.i, i64 %i.br) ; 2 uses
  %.021.i39.i.i = trunc i64 %.021.i39.i91.i to i32
  %i.bt = and i64 %.021.i39.i91.i, 4294967295
  %i.bu = shl i32 %.021.i39.i.i, 3
  %i.bv = sub i32 %.sroa.20.3102.i, %i.bu
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i: ; preds = %bb.r, %bb.p
  %.sroa.20.4.i = phi i32 [ %i.bo, %bb.p ], [ %i.bv, %bb.r ] ; 3 uses
  %.pn.i = phi i64 [ %i.bn, %bb.p ], [ %i.bt, %bb.r ]
  %.022.i38.i.i = phi i1 [ true, %bb.p ], [ %i.bs, %bb.r ]
  %.sroa.5030.3.idx.i = sub nsw i64 %.sroa.5030.2.idx104.i, %.pn.i ; 3 uses
  %.sroa.5030.3.i = getelementptr inbounds i8, ptr %2, i64 %.sroa.5030.3.idx.i
  %.sroa.0.3.i = load i64, ptr %.sroa.5030.3.i, align 1, !tbaa !32 ; 7 uses
  %i.bw = icmp ult ptr %.0.i105.i, %i.bi
  %i.bx = and i1 %i.bw, %.022.i38.i.i
  br i1 %i.bx, label %bb.s, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit

bb.s:                                             ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i
  %i.by = and i32 %.sroa.20.4.i, 63
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl i64 %.sroa.0.3.i, %i.bz
  %i.cb = lshr i64 %i.ca, %i.bl
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !110
  %i.cf = load i8, ptr %i.cc, align 1, !tbaa !112
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add i32 %.sroa.20.4.i, %i.cg            ; 2 uses
  store i8 %i.ce, ptr %.0.i105.i, align 1, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i105.i, i64 1
  %i.cj = and i32 %i.ch, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl i64 %.sroa.0.3.i, %i.ck
  %i.cm = lshr i64 %i.cl, %i.bl
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !110
  %i.cq = load i8, ptr %i.cn, align 1, !tbaa !112
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add i32 %i.ch, %i.cr                    ; 2 uses
  store i8 %i.cp, ptr %i.ci, align 1, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i105.i, i64 2
  %i.cu = and i32 %i.cs, 63
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl i64 %.sroa.0.3.i, %i.cv
  %i.cx = lshr i64 %i.cw, %i.bl
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !110
  %i.db = load i8, ptr %i.cy, align 1, !tbaa !112
  %i.dc = zext i8 %i.db to i32
  %i.dd = add i32 %i.cs, %i.dc                    ; 2 uses
  store i8 %i.da, ptr %i.ct, align 1, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i105.i, i64 3
  %i.df = and i32 %i.dd, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl i64 %.sroa.0.3.i, %i.dg
  %i.di = lshr i64 %i.dh, %i.bl
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !110
  %i.dm = load i8, ptr %i.dj, align 1, !tbaa !112
  %i.dn = zext i8 %i.dm to i32
  %i.do = add i32 %i.dd, %i.dn                    ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i105.i, i64 4 ; 2 uses
  store i8 %i.dl, ptr %i.de, align 1, !tbaa !7
  %i.dq = icmp ugt i32 %i.do, 64
  br i1 %i.dq, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i, label %bb.o, !prof !101, !llvm.loop !113

bb.t:                                             ; preds = %bb.n
  %.not.i.i.i = icmp slt i64 %3, 16
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dr = lshr i32 %i.az, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = getelementptr inbounds i8, ptr %.ptr86.i, i64 %i.dt ; 2 uses
  %i.dv = and i32 %i.az, 7
  %.val.i18.i = load i64, ptr %i.du, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.dw = icmp eq i64 %.add.i, 0
  br i1 %i.dw, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dx = lshr i32 %i.az, 3
  %i.dy = zext nneg i32 %i.dx to i64
  %.021.i.i87.i = tail call i64 @llvm.smin.i64(i64 %.add.i, i64 %i.dy) ; 2 uses
  %.021.i.i.i = trunc i64 %.021.i.i87.i to i32
  %i.dz = and i64 %.021.i.i87.i, 4294967295
  %i.ea = sub nsw i64 0, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %.ptr86.i, i64 %i.ea ; 2 uses
  %i.ec = shl i32 %.021.i.i.i, 3
  %i.ed = sub i32 %i.az, %i.ec
  %.val5.i = load i64, ptr %i.eb, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i
  %.sroa.5030.3.i.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.5030.3.idx.i
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i: ; preds = %bb.s, %bb.q, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit, %bb.w, %bb.v, %bb.u, %.thread.i
  %.sroa.20.1.i = phi i32 [ %i.az, %bb.v ], [ %i.ed, %bb.w ], [ %i.dv, %bb.u ], [ %i.bg, %.thread.i ], [ %.sroa.20.4.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit ], [ %i.do, %bb.s ], [ %.sroa.20.3102.i, %bb.q ]
  %.sroa.0.1.i = phi i64 [ %.val.i.i, %bb.v ], [ %.val5.i, %bb.w ], [ %.val.i18.i, %bb.u ], [ %.sroa.0.4.i, %.thread.i ], [ %.sroa.0.3.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.0.3.i, %bb.s ], [ %.sroa.0.2103.i, %bb.q ] ; 3 uses
  %.sroa.5030.1.i = phi ptr [ %.ptr86.i, %bb.v ], [ %i.eb, %bb.w ], [ %i.du, %bb.u ], [ %2, %.thread.i ], [ %.sroa.5030.3.i.le, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.s ], [ %2, %bb.q ]
  %.3.i.i = phi ptr [ %0, %bb.v ], [ %0, %bb.w ], [ %0, %bb.u ], [ %0, %.thread.i ], [ %.0.i105.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit ], [ %i.dp, %bb.s ], [ %.0.i105.i, %bb.q ] ; 6 uses
  %.sroa.20.2.fr109.i = freeze i32 %.sroa.20.1.i  ; 4 uses
  %i.ee = icmp ult ptr %.3.i.i, %i.c
  br i1 %i.ee, label %.lr.ph112.i, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i

.lr.ph112.i:                                      ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i
  %.3.i129.i = ptrtoaddr ptr %.3.i.i to i64       ; 2 uses
  %i.ef = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.eg = and i32 %i.ef, 63
  %i.eh = zext nneg i32 %i.eg to i64              ; 3 uses
  %i.ei = add i64 %.idx.i.i, %6
  %i.ej = sub i64 %i.ei, %.3.i129.i               ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.3.i.i, i64 %i.ej
  %i.ek = add i64 %.idx.i.i, %6
  %.neg = add i64 %.3.i129.i, 1
  %xtraiter = and i64 %i.ej, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph112.i
  %i.el = and i32 %.sroa.20.2.fr109.i, 63
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl i64 %.sroa.0.1.i, %i.em
  %i.eo = lshr i64 %i.en, %i.eh
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !110
  %i.es = load i8, ptr %i.ep, align 1, !tbaa !112
  %.fr115.i.prol = freeze i8 %i.es
  %i.et = zext i8 %.fr115.i.prol to i32
  %i.eu = add i32 %.sroa.20.2.fr109.i, %i.et      ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1
  store i8 %i.er, ptr %.3.i.i, align 1, !tbaa !7
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph112.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph112.i ], [ %i.eu, %.prol.loopexit.unr-lcssa ]
  %.sroa.20.2.fr111.i.unr = phi i32 [ %.sroa.20.2.fr109.i, %.lr.ph112.i ], [ %i.eu, %.prol.loopexit.unr-lcssa ]
  %.6.i110.i.unr = phi ptr [ %.3.i.i, %.lr.ph112.i ], [ %i.ev, %.prol.loopexit.unr-lcssa ]
  %i.ew = icmp eq i64 %i.ek, %.neg
  br i1 %i.ew, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i, label %.lr.ph112.i.new

.lr.ph112.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph112.i.new
  %.sroa.20.2.fr111.i = phi i32 [ %i.fr, %.lr.ph112.i.new ], [ %.sroa.20.2.fr111.i.unr, %.prol.loopexit ] ; 2 uses
  %.6.i110.i = phi ptr [ %i.fs, %.lr.ph112.i.new ], [ %.6.i110.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ex = and i32 %.sroa.20.2.fr111.i, 63
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl i64 %.sroa.0.1.i, %i.ey
  %i.fa = lshr i64 %i.ez, %i.eh
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !110
  %i.fe = load i8, ptr %i.fb, align 1, !tbaa !112
  %.fr115.i = freeze i8 %i.fe
  %i.ff = zext i8 %.fr115.i to i32
  %i.fg = add i32 %.sroa.20.2.fr111.i, %i.ff      ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.6.i110.i, i64 1
  store i8 %i.fd, ptr %.6.i110.i, align 1, !tbaa !7
  %i.fi = and i32 %i.fg, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = shl i64 %.sroa.0.1.i, %i.fj
  %i.fl = lshr i64 %i.fk, %i.eh
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !110
  %i.fp = load i8, ptr %i.fm, align 1, !tbaa !112
  %.fr115.i.1 = freeze i8 %i.fp
  %i.fq = zext i8 %.fr115.i.1 to i32
  %i.fr = add i32 %i.fg, %i.fq                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.6.i110.i, i64 2 ; 2 uses
  store i8 %i.fo, ptr %i.fh, align 1, !tbaa !7
  %exitcond.not.i.1 = icmp eq ptr %i.fs, %scevgep.i
  br i1 %exitcond.not.i.1, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i, label %.lr.ph112.i.new, !llvm.loop !114

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i: ; preds = %.prol.loopexit, %.lr.ph112.i.new, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i
  %.sroa.20.2.fr.lcssa.i = phi i32 [ %.sroa.20.2.fr109.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.fr, %.lr.ph112.i.new ]
  %i.ft = icmp eq ptr %.sroa.5030.1.i, %2
  %.not.i = icmp eq i32 %.sroa.20.2.fr.lcssa.i, 64
  %or.cond.i = and i1 %i.ft, %.not.i
  %spec.select.i = select i1 %or.cond.i, i64 %1, i64 -20
  br label %_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit

_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit: ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i, %bb.m, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %3, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i ], [ %spec.select.i, %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i ], [ -1, %bb.e ], [ -20, %bb.m ], [ -72, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 1, 0) i64 @_ZN11duckdb_zstd28HUF_decompress4X_usingDTableEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %.val = load i32, ptr %4, align 4
  %i.a = and i32 %.val, 65280
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress4X2_usingDTable_internalEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress4X1_usingDTable_internalEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i64 1, 0) i64 @_ZN11duckdb_zstdL38HUF_decompress4X2_usingDTable_internalEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::BIT_DStream_t", align 8 ; 35 uses
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %5, 32
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %bb.eo, label %bb.ep

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %3, 10
  %i.d = icmp ult i64 %1, 6
  %or.cond.i.i = or i1 %i.d, %i.c
  br i1 %or.cond.i.i, label %_ZN11duckdb_zstdL46HUF_decompress4X2_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 64 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.val150.i = load i16, ptr %2, align 1, !tbaa !115 ; 5 uses
  %i.h = zext i16 %.val150.i to i64               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val149.i = load i16, ptr %i.i, align 1, !tbaa !115 ; 5 uses
  %i.j = zext i16 %.val149.i to i64               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val148.i = load i16, ptr %i.k, align 1, !tbaa !115 ; 5 uses
  %i.l = zext i16 %.val148.i to i64               ; 2 uses
  %i.m = add nuw nsw i64 %i.h, 6
  %i.n = add nuw nsw i64 %i.m, %i.j
  %i.o = add nuw nsw i64 %i.n, %i.l               ; 2 uses
  %i.p = sub i64 %3, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 20 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %i.h     ; 30 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.j     ; 30 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %i.l     ; 4 uses
  %i.u = add i64 %1, 3
  %i.v = lshr i64 %i.u, 2                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v ; 9 uses
  %.val.i = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.val.i, 16 ; 18 uses
  %i.z = and i32 %.sroa.3.0.extract.shift.i.i, 255 ; 4 uses
  %i.aa = icmp ugt i64 %i.o, %3
  %i.ab = mul nuw nsw i64 %i.v, 3
  %i.ac = icmp samesign ugt i64 %i.ab, %1
  %or.cond196.i.i = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond196.i.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i16 %.val150.i, 0
  br i1 %i.ad, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 5 uses
  %i.af = icmp ugt i16 %.val150.i, 7
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.r, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7   ; 2 uses
  %.not50.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not50.i.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.ai = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %.val.i.i = load i64, ptr %i.ai, align 1, !tbaa !32
  %i.aj = zext i8 %i.ah to i32
  %i.ak = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.aj, i1 true)
  %i.al = xor i32 %i.ak, 31
  %i.am = sub nuw nsw i32 8, %i.al
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.an = load i8, ptr %i.q, align 1, !tbaa !7
  %i.ao = zext i8 %i.an to i64                    ; 7 uses
  switch i16 %.val150.i, label %bb.o [
    i16 7, label %bb.i
    i16 6, label %bb.j
    i16 5, label %bb.k
    i16 4, label %bb.l
    i16 3, label %bb.m
    i16 2, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !7
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 48
  %i.at = or disjoint i64 %i.as, %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL38HUF_decompress4X2_usingDTable_internalEPvmPKvmPKji:bb.a
  %.not.i319.i.i = icmp ult ptr %i.bff, %i.bfg
  br i1 %.not.i319.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph119
  %i.bfh = lshr i32 %i.bfe, 3
  %i.bfi = zext nneg i32 %i.bfh to i64
  %i.bfj = sub nsw i64 0, %i.bfi
  %i.bfk = getelementptr inbounds i8, ptr %i.bff, i64 %i.bfj ; 2 uses
  store ptr %i.bfk, ptr %i.bex, align 8, !tbaa !121
  %i.bfl = and i32 %i.bfe, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit325.i.i

bb.eh:                                            ; preds = %.lr.ph119
  %i.bfm = load ptr, ptr %i.bez, align 8, !tbaa !125 ; 3 uses
  %i.bfn = icmp eq ptr %i.bff, %i.bfm
  br i1 %i.bfn, label %.preheader.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.bfo = lshr i32 %i.bfe, 3                     ; 2 uses
  %i.bfp = zext nneg i32 %i.bfo to i64
  %i.bfq = sub nsw i64 0, %i.bfp
  %i.bfr = getelementptr inbounds i8, ptr %i.bff, i64 %i.bfq
  %i.bfs = icmp uge ptr %i.bfr, %i.bfm            ; 2 uses
  %i.bft = ptrtoint ptr %i.bff to i64
  %i.bfu = ptrtoint ptr %i.bfm to i64
  %i.bfv = sub i64 %i.bft, %i.bfu
  %i.bfw = trunc i64 %i.bfv to i32
  %.021.i321.i.i = select i1 %i.bfs, i32 %i.bfo, i32 %i.bfw ; 2 uses
  %i.bfx = zext i32 %.021.i321.i.i to i64
  %i.bfy = sub nsw i64 0, %i.bfx
  %i.bfz = getelementptr inbounds i8, ptr %i.bff, i64 %i.bfy ; 2 uses
  store ptr %i.bfz, ptr %i.bex, align 8, !tbaa !121
  %i.bga = shl i32 %.021.i321.i.i, 3
  %i.bgb = sub i32 %i.bfe, %i.bga
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit325.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit325.i.i: ; preds = %bb.ei, %bb.eg
  %storemerge = phi i32 [ %i.bfl, %bb.eg ], [ %i.bgb, %bb.ei ] ; 3 uses
  %.val19.sink.in.i = phi ptr [ %i.bfk, %bb.eg ], [ %i.bfz, %bb.ei ]
  %.022.i320.i.i = phi i1 [ true, %bb.eg ], [ %i.bfs, %bb.ei ]
  store i32 %storemerge, ptr %i.bev, align 8, !tbaa !120
  %.val19.sink.i = load i64, ptr %.val19.sink.in.i, align 1, !tbaa !32 ; 2 uses
  store i64 %.val19.sink.i, ptr %6, align 8, !tbaa !123
  %i.bgc = icmp ule ptr %.5.i.i.i118, %i.bew
  %i.bgd = and i1 %i.bgc, %.022.i320.i.i
  br i1 %i.bgd, label %bb.ej, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit325.i.i, %bb.eh, %._crit_edge
  %.5.i.i.i47 = phi ptr [ %.5.i.i.i.lcssa, %._crit_edge ], [ %.5.i.i.i118, %bb.eh ], [ %.5.i.i.i118, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit325.i.i ] ; 3 uses
  %.val143991.i = phi i32 [ %.lcssa48, %._crit_edge ], [ %storemerge, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit325.i.i ], [ %i.bfe, %bb.eh ] ; 2 uses
  %.not.i.i842.i = icmp ugt ptr %.5.i.i.i47, %i.bew
  br i1 %.not.i.i842.i, label %.loopexit.i, label %.lr.ph844.i

bb.ej:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit325.i.i
  %i.bge = and i32 %storemerge, 63
  %i.bgf = zext nneg i32 %i.bge to i64
  %i.bgg = shl i64 %.val19.sink.i, %i.bgf
  %i.bgh = lshr i64 %i.bgg, %i.bfc
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bgh ; 3 uses
  %i.bgj = load i16, ptr %i.bgi, align 2
  store i16 %i.bgj, ptr %.5.i.i.i118, align 1
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgi, i64 2
  %i.bgl = load i8, ptr %i.bgk, align 2, !tbaa !97
  %i.bgm = zext i8 %i.bgl to i32
  %i.bgn = load i32, ptr %i.bev, align 8, !tbaa !120
  %i.bgo = add i32 %i.bgn, %i.bgm                 ; 4 uses
  store i32 %i.bgo, ptr %i.bev, align 8, !tbaa !120
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgi, i64 3
  %i.bgq = load i8, ptr %i.bgp, align 1, !tbaa !100
  %i.bgr = zext i8 %i.bgq to i64
  %i.bgs = getelementptr inbounds nuw i8, ptr %.5.i.i.i118, i64 %i.bgr ; 2 uses
  %i.bgt = icmp ugt i32 %i.bgo, 64
  br i1 %i.bgt, label %._crit_edge, label %.lr.ph119, !prof !101, !llvm.loop !105

.lr.ph844.i:                                      ; preds = %.preheader.i, %.lr.ph844.i
  %.val145.i = phi i32 [ %i.bhe, %.lr.ph844.i ], [ %.val143991.i, %.preheader.i ]
  %.6.i.i843.i = phi ptr [ %i.bhi, %.lr.ph844.i ], [ %.5.i.i.i47, %.preheader.i ] ; 2 uses
  %.val144.i = load i64, ptr %6, align 8, !tbaa !123
  %i.bgu = and i32 %.val145.i, 63
  %i.bgv = zext nneg i32 %i.bgu to i64
  %i.bgw = shl i64 %.val144.i, %i.bgv
  %i.bgx = lshr i64 %i.bgw, %i.bfc
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bgx ; 3 uses
  %i.bgz = load i16, ptr %i.bgy, align 2
  store i16 %i.bgz, ptr %.6.i.i843.i, align 1
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgy, i64 2
  %i.bhb = load i8, ptr %i.bha, align 2, !tbaa !97
  %i.bhc = zext i8 %i.bhb to i32
  %i.bhd = load i32, ptr %i.bev, align 8, !tbaa !120
  %i.bhe = add i32 %i.bhd, %i.bhc                 ; 3 uses
  store i32 %i.bhe, ptr %i.bev, align 8, !tbaa !120
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bgy, i64 3
  %i.bhg = load i8, ptr %i.bhf, align 1, !tbaa !100
  %i.bhh = zext i8 %i.bhg to i64
  %i.bhi = getelementptr inbounds nuw i8, ptr %.6.i.i843.i, i64 %i.bhh ; 3 uses
  %.not.i.i.i = icmp ugt ptr %i.bhi, %i.bew
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph844.i, !llvm.loop !106

.loopexit.i:                                      ; preds = %.lr.ph844.i, %.preheader.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit332.i.i
  %.val147.i = phi i32 [ %i.ber, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit332.i.i ], [ %.val143991.i, %.preheader.i ], [ %i.bhe, %.lr.ph844.i ] ; 2 uses
  %.7.i.i.i = phi ptr [ %.4.i.i.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit332.i.i ], [ %.5.i.i.i47, %.preheader.i ], [ %i.bhi, %.lr.ph844.i ] ; 2 uses
  %i.bhj = icmp ult ptr %.7.i.i.i, %i.e
  br i1 %i.bhj, label %bb.ek, label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i.i

bb.ek:                                            ; preds = %.loopexit.i
  %.val146.i = load i64, ptr %6, align 8, !tbaa !123
  %i.bhk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bhl = and i32 %.val147.i, 63
  %i.bhm = zext nneg i32 %i.bhl to i64
  %i.bhn = shl i64 %.val146.i, %i.bhm
  %i.bho = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.bhp = and i32 %i.bho, 63
  %i.bhq = zext nneg i32 %i.bhp to i64
  %i.bhr = lshr i64 %i.bhn, %i.bhq
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bhr ; 4 uses
  %i.bht = load i8, ptr %i.bhs, align 2
  store i8 %i.bht, ptr %.7.i.i.i, align 1
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhs, i64 3
  %i.bhv = load i8, ptr %i.bhu, align 1, !tbaa !100
  %i.bhw = icmp eq i8 %i.bhv, 1
  br i1 %i.bhw, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhs, i64 2
  %i.bhy = load i8, ptr %i.bhx, align 2, !tbaa !97
  %i.bhz = zext i8 %i.bhy to i32
  %i.bia = load i32, ptr %i.bhk, align 8, !tbaa !120
  %i.bib = add i32 %i.bia, %i.bhz
  br label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i.i

bb.em:                                            ; preds = %bb.ek
  %i.bic = load i32, ptr %i.bhk, align 8, !tbaa !120 ; 3 uses
  %i.bid = icmp ult i32 %i.bic, 64
  br i1 %i.bid, label %bb.en, label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i.i

bb.en:                                            ; preds = %bb.em
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bhs, i64 2
  %i.bif = load i8, ptr %i.bie, align 2, !tbaa !97
  %i.big = zext i8 %i.bif to i32
  %i.bih = add nuw nsw i32 %i.bic, %i.big
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.bih, i32 64)
  br label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i.i

_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i.i: ; preds = %bb.en, %bb.em, %bb.el, %.loopexit.i
  %i.bii = phi i32 [ %i.bib, %bb.el ], [ %i.bic, %bb.em ], [ %spec.store.select.i, %bb.en ], [ %.val147.i, %.loopexit.i ]
  %i.bij = icmp ne ptr %.sroa.116466.3.i, %i.q
  %i.bik = icmp ne i32 %.sroa.36432.4.i, 64
  %narrow.not626.i = select i1 %i.bij, i1 true, i1 %i.bik
  %i.bil = icmp ne ptr %.sroa.116344.3.i, %i.r
  %i.bim = icmp ne i32 %.sroa.36310.4.i, 64
  %narrow618.not629.i = select i1 %i.bil, i1 true, i1 %i.bim
  %.not.i = or i1 %narrow.not626.i, %narrow618.not629.i
  %i.bin = icmp ne ptr %.sroa.116224.3.i, %i.s
  %i.bio = icmp ne i32 %.sroa.36.4.i, 64
  %narrow619.not632.i = select i1 %i.bin, i1 true, i1 %i.bio
  %.not623.i = or i1 %.not.i, %narrow619.not632.i
  %i.bip = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.biq = load ptr, ptr %i.bip, align 8, !tbaa !121
  %i.bir = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !125
  %i.bit = icmp ne ptr %i.biq, %i.bis
  %i.biu = icmp ne i32 %i.bii, 64
  %narrow620.not635.i = select i1 %i.bit, i1 true, i1 %i.biu
  %.not621.i = or i1 %.not623.i, %narrow620.not635.i
  %spec.select.i.i = select i1 %.not621.i, i64 -20, i64 %1
  br label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i

_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i: ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i.i, %.loopexit670.i, %bb.ao, %bb.am, %bb.ae, %bb.ac, %bb.aa, %bb.s, %bb.q, %bb.o, %bb.g, %bb.e, %bb.d
  %.5.i.i = phi i64 [ %spec.select.i.i, %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit.i.i ], [ -20, %bb.d ], [ -1, %bb.s ], [ -20, %.loopexit670.i ], [ -1, %bb.g ], [ %i.gj, %bb.ao ], [ -20, %bb.o ], [ -72, %bb.e ], [ -20, %bb.aa ], [ -72, %bb.q ], [ -20, %bb.am ], [ -72, %bb.ac ], [ -1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN11duckdb_zstdL46HUF_decompress4X2_usingDTable_internal_defaultEPvmPKvmPKj.exit

bb.eo:                                            ; preds = %bb.b
  %i.biv = tail call fastcc noundef i64 @_ZN11duckdb_zstdL43HUF_decompress4X2_usingDTable_internal_fastEPvmPKvmPKjPFvPNS_22HUF_DecompressFastArgsEE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) ; 2 uses
  %.not25 = icmp eq i64 %i.biv, 0
  br i1 %.not25, label %bb.ep, label %_ZN11duckdb_zstdL46HUF_decompress4X2_usingDTable_internal_defaultEPvmPKvmPKj.exit

bb.ep:                                            ; preds = %bb.eo, %bb.b
  %i.biw = tail call fastcc noundef i64 @_ZN11duckdb_zstdL43HUF_decompress4X2_usingDTable_internal_bmi2EPvmPKvmPKj(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %_ZN11duckdb_zstdL46HUF_decompress4X2_usingDTable_internal_defaultEPvmPKvmPKj.exit

_ZN11duckdb_zstdL46HUF_decompress4X2_usingDTable_internal_defaultEPvmPKvmPKj.exit: ; preds = %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, %bb.c, %bb.eo, %bb.ep
  %.1 = phi i64 [ %i.biw, %bb.ep ], [ %i.biv, %bb.eo ], [ %.5.i.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i ], [ -20, %bb.c ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i64 1, 0) i64 @_ZN11duckdb_zstdL38HUF_decompress4X1_usingDTable_internalEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::BIT_DStream_t", align 8 ; 24 uses
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %5, 32
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %bb.cl, label %bb.cm

bb.c:                                             ; preds = %bb.a
  %7 = ptrtoaddr ptr %0 to i64                    ; 5 uses
  %i.c = icmp ult i64 %3, 10
  %i.d = icmp ult i64 %1, 6
  %or.cond.i.i = or i1 %i.d, %i.c
  br i1 %or.cond.i.i, label %_ZN11duckdb_zstdL46HUF_decompress4X1_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.val86.i = load i16, ptr %2, align 1, !tbaa !115 ; 5 uses
  %i.h = zext i16 %.val86.i to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val85.i = load i16, ptr %i.i, align 1, !tbaa !115 ; 5 uses
  %i.j = zext i16 %.val85.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val84.i = load i16, ptr %i.k, align 1, !tbaa !115 ; 5 uses
  %i.l = zext i16 %.val84.i to i64                ; 2 uses
  %i.m = add nuw nsw i64 %i.h, 6
  %i.n = add nuw nsw i64 %i.m, %i.j
  %i.o = add nuw nsw i64 %i.n, %i.l               ; 2 uses
  %i.p = sub i64 %3, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 12 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %i.h     ; 22 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.j     ; 22 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %i.l     ; 4 uses
  %i.u = add i64 %1, 3
  %i.v = lshr i64 %i.u, 2                         ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v ; 8 uses
  %.val.i = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.val.i, 16 ; 9 uses
  %i.z = icmp ugt i64 %i.o, %3
  %i.aa = mul nuw nsw i64 %i.v, 3
  %i.ab = icmp samesign ugt i64 %i.aa, %1
  %or.cond180.i.i = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond180.i.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq i16 %.val86.i, 0
  br i1 %i.ac, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.ae = icmp ugt i16 %.val86.i, 7
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.r, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !7   ; 2 uses
  %.not50.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not50.i.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.ah = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %.val.i.i = load i64, ptr %i.ah, align 1, !tbaa !32
  %i.ai = zext i8 %i.ag to i32
  %i.aj = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ai, i1 true)
  %i.ak = xor i32 %i.aj, 31
  %i.al = sub nuw nsw i32 8, %i.ak
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.am = load i8, ptr %i.q, align 1, !tbaa !7
  %i.an = zext i8 %i.am to i64                    ; 7 uses
  switch i16 %.val86.i, label %bb.o [
    i16 7, label %bb.i
    i16 6, label %bb.j
    i16 5, label %bb.k
    i16 4, label %bb.l
    i16 3, label %bb.m
    i16 2, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !7
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 48
  %i.as = or disjoint i64 %i.ar, %i.an
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = phi i64 [ %i.as, %bb.i ], [ %i.an, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.av = load i8, ptr %i.au, align 1, !tbaa !7
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 40
  %i.ay = add nuw nsw i64 %i.ax, %i.at
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.az = phi i64 [ %i.ay, %bb.j ], [ %i.an, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !7
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 32
  %i.be = add nuw nsw i64 %i.bd, %i.az
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.bf = phi i64 [ %i.be, %bb.k ], [ %i.an, %bb.h ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bi = zext i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 24
  %i.bk = add nuw nsw i64 %i.bj, %i.bf
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %i.bl = phi i64 [ %i.bk, %bb.l ], [ %i.an, %bb.h ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !7
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 16
  %i.bq = add nuw nsw i64 %i.bp, %i.bl
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %i.br = phi i64 [ %i.bq, %bb.m ], [ %i.an, %bb.h ]
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !7
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 8
  %i.bw = add nuw nsw i64 %i.bv, %i.br
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.sroa.0247.6.i = phi i64 [ %i.an, %bb.h ], [ %i.bw, %bb.n ]
  %i.bx = getelementptr i8, ptr %i.r, i64 -1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !7   ; 2 uses
  %.not.i87.i = icmp eq i8 %i.by, 0
  br i1 %.not.i87.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = zext i8 %i.by to i32
  %i.ca = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bz, i1 true)
  %i.cb = shl nuw nsw i16 %.val86.i, 3
  %i.cc = zext nneg i16 %i.cb to i32
  %reass.sub = sub nsw i32 %i.ca, %i.cc
  %i.cd = add nsw i32 %reass.sub, 41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread.i.i
  %.sroa.69266.6.i = phi ptr [ %i.q, %bb.p ], [ %i.ah, %.thread.i.i ] ; 2 uses
  %.sroa.25248.7.i = phi i32 [ %i.cd, %bb.p ], [ %i.al, %.thread.i.i ] ; 2 uses
  %.sroa.0247.7.i = phi i64 [ %.sroa.0247.6.i, %bb.p ], [ %.val.i.i, %.thread.i.i ] ; 2 uses
  %i.ce = icmp eq i16 %.val85.i, 0
  br i1 %i.ce, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.cg = icmp ugt i16 %.val85.i, 7
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr i8, ptr %i.s, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !7   ; 2 uses
  %.not50.i91.i = icmp eq i8 %i.ci, 0
  br i1 %.not50.i91.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %.thread.i92.i

.thread.i92.i:                                    ; preds = %bb.s
  %i.cj = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %.val.i90.i = load i64, ptr %i.cj, align 1, !tbaa !32
  %i.ck = zext i8 %i.ci to i32
  %i.cl = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ck, i1 true)
  %i.cm = xor i32 %i.cl, 31
  %i.cn = sub nuw nsw i32 8, %i.cm
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.co = load i8, ptr %i.r, align 1, !tbaa !7
  %i.cp = zext i8 %i.co to i64                    ; 7 uses
  switch i16 %.val85.i, label %bb.aa [
    i16 7, label %bb.u
    i16 6, label %bb.v
    i16 5, label %bb.w
    i16 4, label %bb.x
    i16 3, label %bb.y
    i16 2, label %bb.z
  ]

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !7
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 48
  %i.cu = or disjoint i64 %i.ct, %i.cp
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cv = phi i64 [ %i.cu, %bb.u ], [ %i.cp, %bb.t ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !7
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 40
  %i.da = add nuw nsw i64 %i.cz, %i.cv
  br label %bb.w

end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL38HUF_decompress4X1_usingDTable_internalEPvmPKvmPKji:bb.a
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !110
  %i.jy = load i8, ptr %i.jv, align 1, !tbaa !112
  %i.jz = zext i8 %i.jy to i32
  %i.ka = add i32 %i.ij, %i.jz                    ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0157.i392.i, i64 2
  store i8 %i.jx, ptr %i.ik, align 1, !tbaa !7
  %i.kc = getelementptr inbounds nuw i8, ptr %.0145.i395.i, i64 2
  %i.kd = and i32 %i.iu, 63
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = shl i64 %.sroa.0247.5390.i, %i.ke
  %i.kg = lshr i64 %i.kf, %i.gn
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.kg ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !110
  %i.kk = load i8, ptr %i.kh, align 1, !tbaa !112
  %i.kl = zext i8 %i.kk to i32
  %i.km = add i32 %i.iu, %i.kl                    ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0145.i395.i, i64 3
  store i8 %i.kj, ptr %i.kc, align 1, !tbaa !7
  %i.ko = and i32 %i.je, 63
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = shl i64 %.sroa.0181.5384.i, %i.kp
  %i.kr = lshr i64 %i.kq, %i.gn
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.kr ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !110
  %i.kv = load i8, ptr %i.ks, align 1, !tbaa !112
  %i.kw = zext i8 %i.kv to i32
  %i.kx = add i32 %i.je, %i.kw                    ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.0149.i394.i, i64 3
  store i8 %i.ku, ptr %i.jf, align 1, !tbaa !7
  %i.kz = and i32 %i.jp, 63
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl i64 %.sroa.0.5388.i, %i.la
  %i.lc = lshr i64 %i.lb, %i.gn
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !110
  %i.lg = load i8, ptr %i.ld, align 1, !tbaa !112
  %i.lh = zext i8 %i.lg to i32
  %i.li = add i32 %i.jp, %i.lh                    ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0153.i393.i, i64 3
  store i8 %i.lf, ptr %i.jq, align 1, !tbaa !7
  %i.lk = and i32 %i.ka, 63
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = shl i64 %.val.i.i106381382.i, %i.ll
  %i.ln = lshr i64 %i.lm, %i.gn
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !110
  %i.lr = load i8, ptr %i.lo, align 1, !tbaa !112
  %i.ls = zext i8 %i.lr to i32
  %i.lt = add i32 %i.ka, %i.ls                    ; 2 uses
  store i8 %i.lq, ptr %i.kb, align 1, !tbaa !7
  %i.lu = getelementptr inbounds nuw i8, ptr %.0157.i392.i, i64 3
  %i.lv = and i32 %i.km, 63
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = shl i64 %.sroa.0247.5390.i, %i.lw
  %i.ly = lshr i64 %i.lx, %i.gn
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ly ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !110
  %i.mc = load i8, ptr %i.lz, align 1, !tbaa !112
  %i.md = zext i8 %i.mc to i32
  %i.me = add i32 %i.km, %i.md                    ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0145.i395.i, i64 4 ; 2 uses
  store i8 %i.mb, ptr %i.kn, align 1, !tbaa !7
  %i.mg = and i32 %i.kx, 63
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = shl i64 %.sroa.0181.5384.i, %i.mh
  %i.mj = lshr i64 %i.mi, %i.gn
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.mj ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !110
  %i.mn = load i8, ptr %i.mk, align 1, !tbaa !112
  %i.mo = zext i8 %i.mn to i32
  %i.mp = add i32 %i.kx, %i.mo                    ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.0149.i394.i, i64 4 ; 2 uses
  store i8 %i.mm, ptr %i.ky, align 1, !tbaa !7
  %i.mr = and i32 %i.li, 63
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = shl i64 %.sroa.0.5388.i, %i.ms
  %i.mu = lshr i64 %i.mt, %i.gn
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.mu ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !110
  %i.my = load i8, ptr %i.mv, align 1, !tbaa !112
  %i.mz = zext i8 %i.my to i32
  %i.na = add i32 %i.li, %i.mz                    ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0153.i393.i, i64 4 ; 2 uses
  store i8 %i.mx, ptr %i.lj, align 1, !tbaa !7
  %i.nc = and i32 %i.lt, 63
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = shl i64 %.val.i.i106381382.i, %i.nd
  %i.nf = lshr i64 %i.ne, %i.gn
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.nf ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 1
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !110
  %i.nj = load i8, ptr %i.ng, align 1, !tbaa !112
  %i.nk = zext i8 %i.nj to i32
  %i.nl = add i32 %i.lt, %i.nk                    ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.0157.i392.i, i64 4 ; 3 uses
  store i8 %i.ni, ptr %i.lu, align 1, !tbaa !7
  %i.nn = icmp ult ptr %.sroa.69266.5383.i, %i.ad ; 2 uses
  br i1 %i.nn, label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit.i, label %bb.ar, !prof !122

bb.ar:                                            ; preds = %bb.aq
  %i.no = lshr i32 %i.me, 3
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = sub nsw i64 0, %i.np
  %i.nr = getelementptr inbounds i8, ptr %.sroa.69266.5383.i, i64 %i.nq ; 2 uses
  %i.ns = and i32 %i.me, 7
  %.val.i.i.i = load i64, ptr %i.nr, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit.i: ; preds = %bb.ar, %bb.aq
  %.sroa.69266.7.i = phi ptr [ %.sroa.69266.5383.i, %bb.aq ], [ %i.nr, %bb.ar ] ; 2 uses
  %.sroa.25248.8.i = phi i32 [ %i.me, %bb.aq ], [ %i.ns, %bb.ar ] ; 2 uses
  %.sroa.0247.8.i = phi i64 [ %.sroa.0247.5390.i, %bb.aq ], [ %.val.i.i.i, %bb.ar ] ; 2 uses
  %i.nt = icmp ult ptr %.sroa.69200.5387.i, %i.cf
  br i1 %i.nt, label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102.i, label %bb.as, !prof !122

bb.as:                                            ; preds = %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit.i
  %i.nu = lshr i32 %i.mp, 3
  %i.nv = zext nneg i32 %i.nu to i64
  %i.nw = sub nsw i64 0, %i.nv
  %i.nx = getelementptr inbounds i8, ptr %.sroa.69200.5387.i, i64 %i.nw ; 2 uses
  %i.ny = and i32 %i.mp, 7
  %.val.i.i100.i = load i64, ptr %i.nx, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102.i

_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102.i: ; preds = %bb.as, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit.i
  %.sroa.0181.8.i = phi i64 [ %.sroa.0181.5384.i, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit.i ], [ %.val.i.i100.i, %bb.as ] ; 2 uses
  %.sroa.25182.8.i = phi i32 [ %i.mp, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit.i ], [ %i.ny, %bb.as ] ; 2 uses
  %.sroa.69200.7.i = phi ptr [ %.sroa.69200.5387.i, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit.i ], [ %i.nx, %bb.as ] ; 2 uses
  %.0.i101.i = phi i1 [ true, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit.i ], [ %i.nn, %bb.as ]
  %i.nz = icmp ult ptr %.sroa.69136.5391.i, %i.eh
  br i1 %i.nz, label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105.i, label %bb.at, !prof !122

bb.at:                                            ; preds = %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102.i
  %i.oa = lshr i32 %i.na, 3
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = sub nsw i64 0, %i.ob
  %i.od = getelementptr inbounds i8, ptr %.sroa.69136.5391.i, i64 %i.oc ; 2 uses
  %i.oe = and i32 %i.na, 7
  %.val.i.i103.i = load i64, ptr %i.od, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105.i

_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105.i: ; preds = %bb.at, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102.i
  %.sroa.0.8.i = phi i64 [ %.sroa.0.5388.i, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102.i ], [ %.val.i.i103.i, %bb.at ] ; 2 uses
  %.sroa.25.8.i = phi i32 [ %i.na, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102.i ], [ %i.oe, %bb.at ] ; 2 uses
  %.sroa.69136.7.i = phi ptr [ %.sroa.69136.5391.i, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102.i ], [ %i.od, %bb.at ] ; 2 uses
  %.0.i104.i = phi i1 [ true, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102.i ], [ %.0.i101.i, %bb.at ]
  %i.of = icmp ult ptr %i.gs, %i.gr
  br i1 %i.of, label %..loopexit_crit_edge.i, label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit108.i, !prof !122

_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit108.i: ; preds = %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105.i
  %i.og = lshr i32 %i.nl, 3
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = sub nsw i64 0, %i.oh
  %i.oj = getelementptr inbounds i8, ptr %i.gs, i64 %i.oi ; 3 uses
  %i.ok = and i32 %i.nl, 7                        ; 2 uses
  %.val.i.i106.i = load i64, ptr %i.oj, align 1, !tbaa !32 ; 2 uses
  store i64 %.val.i.i106.i, ptr %6, align 8, !tbaa !123
  %i.ol = icmp uge ptr %i.nm, %i.f
  %.not176.i.i = or i1 %i.ol, %.0.i104.i
  br i1 %.not176.i.i, label %..loopexit_crit_edge.i, label %bb.aq, !llvm.loop !126

..loopexit_crit_edge.i:                           ; preds = %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit108.i, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105.i
  %.val37409552.i = phi i32 [ %i.ok, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit108.i ], [ %i.nl, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105.i ]
  %i.om = phi ptr [ %i.oj, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit108.i ], [ %i.gs, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105.i ]
  store i32 %.val37409552.i, ptr %i.go, align 8, !tbaa !120
  store ptr %i.om, ptr %i.gp, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %..loopexit_crit_edge.i, %bb.ap
  %.sroa.69266.0.i = phi ptr [ %.sroa.69266.6.i, %bb.ap ], [ %.sroa.69266.7.i, %..loopexit_crit_edge.i ] ; 7 uses
  %.sroa.0181.0.i = phi i64 [ %.sroa.0181.7.i, %bb.ap ], [ %.sroa.0181.8.i, %..loopexit_crit_edge.i ] ; 4 uses
  %.sroa.25182.0.i = phi i32 [ %.sroa.25182.7.i, %bb.ap ], [ %.sroa.25182.8.i, %..loopexit_crit_edge.i ] ; 9 uses
  %.sroa.25248.0.i = phi i32 [ %.sroa.25248.7.i, %bb.ap ], [ %.sroa.25248.8.i, %..loopexit_crit_edge.i ] ; 9 uses
  %.sroa.69200.0.i = phi ptr [ %.sroa.69200.6.i, %bb.ap ], [ %.sroa.69200.7.i, %..loopexit_crit_edge.i ] ; 7 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.7.i, %bb.ap ], [ %.sroa.0.8.i, %..loopexit_crit_edge.i ] ; 4 uses
  %.sroa.25.0.i = phi i32 [ %.sroa.25.7.i, %bb.ap ], [ %.sroa.25.8.i, %..loopexit_crit_edge.i ] ; 9 uses
  %.sroa.0247.0.i = phi i64 [ %.sroa.0247.7.i, %bb.ap ], [ %.sroa.0247.8.i, %..loopexit_crit_edge.i ] ; 4 uses
  %.sroa.69136.0.i = phi ptr [ %.sroa.69136.6.i, %bb.ap ], [ %.sroa.69136.7.i, %..loopexit_crit_edge.i ] ; 7 uses
  %.3160.i.i = phi ptr [ %i.y, %bb.ap ], [ %i.nm, %..loopexit_crit_edge.i ] ; 7 uses
  %.3156.i.i = phi ptr [ %i.x, %bb.ap ], [ %i.nb, %..loopexit_crit_edge.i ] ; 8 uses
  %.3152.i.i = phi ptr [ %i.w, %bb.ap ], [ %i.mq, %..loopexit_crit_edge.i ] ; 8 uses
  %.3148.i.i = phi ptr [ %0, %bb.ap ], [ %i.mf, %..loopexit_crit_edge.i ] ; 8 uses
  %i.on = icmp ugt ptr %.3148.i.i, %i.w
  %i.oo = icmp ugt ptr %.3152.i.i, %i.x
  %or.cond181.i.i = select i1 %i.on, i1 true, i1 %i.oo
  %i.op = icmp ugt ptr %.3156.i.i, %i.y
  %or.cond182.i.i = select i1 %or.cond181.i.i, i1 true, i1 %i.op
  br i1 %or.cond182.i.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %.loopexit.i
  %i.oq = ptrtoint ptr %i.w to i64
  %i.or = ptrtoint ptr %.3148.i.i to i64
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = icmp sgt i64 %i.os, 3
  %i.ou = icmp ugt i32 %.sroa.25248.0.i, 64       ; 2 uses
  br i1 %i.ot, label %.preheader377.i, label %bb.ba

.preheader377.i:                                  ; preds = %bb.au
  br i1 %i.ou, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i, label %.lr.ph416.i, !prof !104

.lr.ph416.i:                                      ; preds = %.preheader377.i
  %i.ov = ptrtoint ptr %i.q to i64
  %i.ow = getelementptr inbounds i8, ptr %i.w, i64 -3
  %i.ox = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.oy = and i32 %i.ox, 63
  %i.oz = zext nneg i32 %i.oy to i64              ; 4 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.az, %.lr.ph416.i
  %.0.i228.i415.i = phi ptr [ %.3148.i.i, %.lr.ph416.i ], [ %i.rg, %bb.az ] ; 8 uses
  %.sroa.0247.3414.i = phi i64 [ %.sroa.0247.0.i, %.lr.ph416.i ], [ %.sroa.0247.4.i, %bb.az ]
  %.sroa.25248.4413.i = phi i32 [ %.sroa.25248.0.i, %.lr.ph416.i ], [ %i.rf, %bb.az ] ; 5 uses
  %.sroa.69266.3412.i = phi ptr [ %.sroa.69266.0.i, %.lr.ph416.i ], [ %.sroa.69266.4.i, %bb.az ] ; 5 uses
  %.not.i37.i229.i.i = icmp ult ptr %.sroa.69266.3412.i, %i.ad
  br i1 %.not.i37.i229.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pa = lshr i32 %.sroa.25248.4413.i, 3
  %i.pb = and i32 %.sroa.25248.4413.i, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i.i

bb.ax:                                            ; preds = %bb.av
  %i.pc = icmp eq ptr %.sroa.69266.3412.i, %i.q
  br i1 %i.pc, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pd = lshr i32 %.sroa.25248.4413.i, 3         ; 2 uses
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = sub nsw i64 0, %i.pe
  %i.pg = getelementptr inbounds i8, ptr %.sroa.69266.3412.i, i64 %i.pf
  %i.ph = icmp uge ptr %i.pg, %i.q                ; 2 uses
  %i.pi = ptrtoint ptr %.sroa.69266.3412.i to i64
  %i.pj = sub i64 %i.pi, %i.ov
  %i.pk = trunc i64 %i.pj to i32
  %.021.i39.i232.i.i = select i1 %i.ph, i32 %i.pd, i32 %i.pk ; 2 uses
  %i.pl = shl i32 %.021.i39.i232.i.i, 3
  %i.pm = sub i32 %.sroa.25248.4413.i, %i.pl
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i.i: ; preds = %bb.ay, %bb.aw
  %.pn349.in.i = phi i32 [ %i.pa, %bb.aw ], [ %.021.i39.i232.i.i, %bb.ay ]
  %.sroa.25248.5.i = phi i32 [ %i.pb, %bb.aw ], [ %i.pm, %bb.ay ] ; 3 uses
  %.022.i38.i231.i.i = phi i1 [ true, %bb.aw ], [ %i.ph, %bb.ay ]
  %.pn349.i = zext i32 %.pn349.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn349.i
  %.sroa.69266.4.i = getelementptr inbounds i8, ptr %.sroa.69266.3412.i, i64 %.pn.i ; 3 uses
  %.sroa.0247.4.i = load i64, ptr %.sroa.69266.4.i, align 1, !tbaa !32 ; 7 uses
  %i.pn = icmp ult ptr %.0.i228.i415.i, %i.ow
  %i.po = and i1 %i.pn, %.022.i38.i231.i.i
  br i1 %i.po, label %bb.az, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i

bb.az:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i.i
  %i.pp = and i32 %.sroa.25248.5.i, 63
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = shl i64 %.sroa.0247.4.i, %i.pq
  %i.ps = lshr i64 %i.pr, %i.oz
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ps ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !110
  %i.pw = load i8, ptr %i.pt, align 1, !tbaa !112
  %i.px = zext i8 %i.pw to i32
  %i.py = add i32 %.sroa.25248.5.i, %i.px         ; 2 uses
  store i8 %i.pv, ptr %.0.i228.i415.i, align 1, !tbaa !7
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.i228.i415.i, i64 1
  %i.qa = and i32 %i.py, 63
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = shl i64 %.sroa.0247.4.i, %i.qb
  %i.qd = lshr i64 %i.qc, %i.oz
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.qd ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 1
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !110
  %i.qh = load i8, ptr %i.qe, align 1, !tbaa !112
  %i.qi = zext i8 %i.qh to i32
  %i.qj = add i32 %i.py, %i.qi                    ; 2 uses
  store i8 %i.qg, ptr %i.pz, align 1, !tbaa !7
  %i.qk = getelementptr inbounds nuw i8, ptr %.0.i228.i415.i, i64 2
  %i.ql = and i32 %i.qj, 63
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = shl i64 %.sroa.0247.4.i, %i.qm
  %i.qo = lshr i64 %i.qn, %i.oz
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.qo ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 1
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !110
  %i.qs = load i8, ptr %i.qp, align 1, !tbaa !112
  %i.qt = zext i8 %i.qs to i32
  %i.qu = add i32 %i.qj, %i.qt                    ; 2 uses
  store i8 %i.qr, ptr %i.qk, align 1, !tbaa !7
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i228.i415.i, i64 3
  %i.qw = and i32 %i.qu, 63
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = shl i64 %.sroa.0247.4.i, %i.qx
  %i.qz = lshr i64 %i.qy, %i.oz
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.qz ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 1
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !110
  %i.rd = load i8, ptr %i.ra, align 1, !tbaa !112
  %i.re = zext i8 %i.rd to i32
  %i.rf = add i32 %i.qu, %i.re                    ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.0.i228.i415.i, i64 4 ; 2 uses
  store i8 %i.rc, ptr %i.qv, align 1, !tbaa !7
  %i.rh = icmp ugt i32 %i.rf, 64
  br i1 %i.rh, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i, label %bb.av, !prof !101, !llvm.loop !113

bb.ba:                                            ; preds = %bb.au
  br i1 %i.ou, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i, label %bb.bb, !prof !122

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i219.i.i = icmp ult ptr %.sroa.69266.0.i, %i.ad
  br i1 %.not.i.i219.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ri = lshr i32 %.sroa.25248.0.i, 3
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = sub nsw i64 0, %i.rj
  %i.rl = getelementptr inbounds i8, ptr %.sroa.69266.0.i, i64 %i.rk ; 2 uses
  %i.rm = and i32 %.sroa.25248.0.i, 7
  %.val.i110.i = load i64, ptr %i.rl, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.rn = icmp eq ptr %.sroa.69266.0.i, %i.q
  br i1 %i.rn, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ro = lshr i32 %.sroa.25248.0.i, 3            ; 2 uses
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = sub nsw i64 0, %i.rp
  %i.rr = getelementptr inbounds i8, ptr %.sroa.69266.0.i, i64 %i.rq
  %i.rs = icmp ult ptr %i.rr, %i.q
  %i.rt = ptrtoint ptr %.sroa.69266.0.i to i64
  %i.ru = ptrtoint ptr %i.q to i64
  %i.rv = sub i64 %i.rt, %i.ru
  %i.rw = trunc i64 %i.rv to i32
  %.021.i.i224.i.i = select i1 %i.rs, i32 %i.rw, i32 %i.ro ; 2 uses
  %i.rx = zext i32 %.021.i.i224.i.i to i64
  %i.ry = sub nsw i64 0, %i.rx
  %i.rz = getelementptr inbounds i8, ptr %.sroa.69266.0.i, i64 %i.ry ; 2 uses
  %i.sa = shl i32 %.021.i.i224.i.i, 3
  %i.sb = sub i32 %.sroa.25248.0.i, %i.sa
  %.val5.i = load i64, ptr %i.rz, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i: ; preds = %bb.az, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i.i, %bb.ax, %bb.be, %bb.bd, %bb.bc, %bb.ba, %.preheader377.i
  %.sroa.69266.2.i = phi ptr [ %i.rz, %bb.be ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ba ], [ %i.rl, %bb.bc ], [ %i.q, %bb.bd ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %.preheader377.i ], [ %i.q, %bb.ax ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.az ], [ %.sroa.69266.4.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i.i ]
  %.sroa.25248.2.i = phi i32 [ %i.sb, %bb.be ], [ %.sroa.25248.0.i, %bb.ba ], [ %i.rm, %bb.bc ], [ %.sroa.25248.0.i, %bb.bd ], [ %.sroa.25248.0.i, %.preheader377.i ], [ %.sroa.25248.4413.i, %bb.ax ], [ %i.rf, %bb.az ], [ %.sroa.25248.5.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i.i ] ; 4 uses
  %.sroa.0247.2.i = phi i64 [ %.val5.i, %bb.be ], [ %.sroa.0247.0.i, %bb.ba ], [ %.val.i110.i, %bb.bc ], [ %.sroa.0247.0.i, %bb.bd ], [ %.sroa.0247.0.i, %.preheader377.i ], [ %.sroa.0247.3414.i, %bb.ax ], [ %.sroa.0247.4.i, %bb.az ], [ %.sroa.0247.4.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i.i ] ; 3 uses
  %.3.i222.i.i = phi ptr [ %.3148.i.i, %bb.be ], [ %.3148.i.i, %bb.ba ], [ %.3148.i.i, %bb.bc ], [ %.3148.i.i, %bb.bd ], [ %.3148.i.i, %.preheader377.i ], [ %.0.i228.i415.i, %bb.ax ], [ %i.rg, %bb.az ], [ %.0.i228.i415.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i.i ] ; 6 uses
  %i.sc = icmp ult ptr %.3.i222.i.i, %i.w
  br i1 %i.sc, label %.lr.ph432.i, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i.i

.lr.ph432.i:                                      ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i
  %.3.i222.i495.i = ptrtoaddr ptr %.3.i222.i.i to i64 ; 2 uses
  %i.sd = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.se = and i32 %i.sd, 63
  %i.sf = zext nneg i32 %i.se to i64              ; 3 uses
  %i.sg = add i64 %i.v, %7
  %i.sh = sub i64 %i.sg, %.3.i222.i495.i          ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.3.i222.i.i, i64 %i.sh
  %i.si = add i64 %i.v, %7
  %.neg = add i64 %.3.i222.i495.i, 1
  %xtraiter = and i64 %i.sh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph432.i
  %i.sj = and i32 %.sroa.25248.2.i, 63
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = shl i64 %.sroa.0247.2.i, %i.sk
  %i.sm = lshr i64 %i.sl, %i.sf
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.sm ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 1
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !110
  %i.sq = load i8, ptr %i.sn, align 1, !tbaa !112
  %i.sr = zext i8 %i.sq to i32
  %i.ss = add i32 %.sroa.25248.2.i, %i.sr         ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.3.i222.i.i, i64 1
  store i8 %i.sp, ptr %.3.i222.i.i, align 1, !tbaa !7
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph432.i
  %.lcssa120.unr = phi i32 [ poison, %.lr.ph432.i ], [ %i.ss, %.prol.loopexit.unr-lcssa ]
  %.6.i223.i431.i.unr = phi ptr [ %.3.i222.i.i, %.lr.ph432.i ], [ %i.st, %.prol.loopexit.unr-lcssa ]
  %.sroa.25248.3430.i.unr = phi i32 [ %.sroa.25248.2.i, %.lr.ph432.i ], [ %i.ss, %.prol.loopexit.unr-lcssa ]
  %i.su = icmp eq i64 %i.si, %.neg
  br i1 %i.su, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i.i, label %.lr.ph432.i.new

.lr.ph432.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph432.i.new
  %.6.i223.i431.i = phi ptr [ %i.tq, %.lr.ph432.i.new ], [ %.6.i223.i431.i.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.25248.3430.i = phi i32 [ %i.tp, %.lr.ph432.i.new ], [ %.sroa.25248.3430.i.unr, %.prol.loopexit ] ; 2 uses
  %i.sv = and i32 %.sroa.25248.3430.i, 63
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = shl i64 %.sroa.0247.2.i, %i.sw
  %i.sy = lshr i64 %i.sx, %i.sf
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.sy ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 1
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !110
  %i.tc = load i8, ptr %i.sz, align 1, !tbaa !112
  %i.td = zext i8 %i.tc to i32
  %i.te = add i32 %.sroa.25248.3430.i, %i.td      ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.6.i223.i431.i, i64 1
  store i8 %i.tb, ptr %.6.i223.i431.i, align 1, !tbaa !7
  %i.tg = and i32 %i.te, 63
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = shl i64 %.sroa.0247.2.i, %i.th
  %i.tj = lshr i64 %i.ti, %i.sf
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.tj ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 1
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !110
  %i.tn = load i8, ptr %i.tk, align 1, !tbaa !112
  %i.to = zext i8 %i.tn to i32
  %i.tp = add i32 %i.te, %i.to                    ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.6.i223.i431.i, i64 2 ; 2 uses
  store i8 %i.tm, ptr %i.tf, align 1, !tbaa !7
  %exitcond.not.i.1 = icmp eq ptr %i.tq, %scevgep.i
  br i1 %exitcond.not.i.1, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i.i, label %.lr.ph432.i.new, !llvm.loop !114

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i.i: ; preds = %.prol.loopexit, %.lr.ph432.i.new, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i
  %.sroa.25248.3.lcssa.i = phi i32 [ %.sroa.25248.2.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i.i ], [ %.lcssa120.unr, %.prol.loopexit ], [ %i.tp, %.lr.ph432.i.new ]
  %i.tr = ptrtoint ptr %i.x to i64
  %i.ts = ptrtoint ptr %.3152.i.i to i64
  %i.tt = sub i64 %i.tr, %i.ts
  %i.tu = icmp sgt i64 %i.tt, 3
  %i.tv = icmp ugt i32 %.sroa.25182.0.i, 64       ; 2 uses
  br i1 %i.tu, label %.preheader376.i, label %bb.bk

.preheader376.i:                                  ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i.i
  br i1 %i.tv, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i, label %.lr.ph438.i, !prof !104

.lr.ph438.i:                                      ; preds = %.preheader376.i
  %i.tw = ptrtoint ptr %i.r to i64
  %i.tx = getelementptr inbounds i8, ptr %i.x, i64 -3
  %i.ty = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.tz = and i32 %i.ty, 63
  %i.ua = zext nneg i32 %i.tz to i64              ; 4 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bj, %.lr.ph438.i
  %.0.i210.i437.i = phi ptr [ %.3152.i.i, %.lr.ph438.i ], [ %i.wh, %bb.bj ] ; 8 uses
  %.sroa.69200.3436.i = phi ptr [ %.sroa.69200.0.i, %.lr.ph438.i ], [ %.sroa.69200.4.i, %bb.bj ] ; 5 uses
  %.sroa.25182.4435.i = phi i32 [ %.sroa.25182.0.i, %.lr.ph438.i ], [ %i.wg, %bb.bj ] ; 5 uses
  %.sroa.0181.3434.i = phi i64 [ %.sroa.0181.0.i, %.lr.ph438.i ], [ %.sroa.0181.4.i, %bb.bj ]
  %.not.i37.i211.i.i = icmp ult ptr %.sroa.69200.3436.i, %i.cf
  br i1 %.not.i37.i211.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ub = lshr i32 %.sroa.25182.4435.i, 3
  %i.uc = and i32 %.sroa.25182.4435.i, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.ud = icmp eq ptr %.sroa.69200.3436.i, %i.r
  br i1 %i.ud, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ue = lshr i32 %.sroa.25182.4435.i, 3         ; 2 uses
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = sub nsw i64 0, %i.uf
  %i.uh = getelementptr inbounds i8, ptr %.sroa.69200.3436.i, i64 %i.ug
  %i.ui = icmp uge ptr %i.uh, %i.r                ; 2 uses
  %i.uj = ptrtoint ptr %.sroa.69200.3436.i to i64
  %i.uk = sub i64 %i.uj, %i.tw
  %i.ul = trunc i64 %i.uk to i32
  %.021.i39.i214.i.i = select i1 %i.ui, i32 %i.ue, i32 %i.ul ; 2 uses
  %i.um = shl i32 %.021.i39.i214.i.i, 3
  %i.un = sub i32 %.sroa.25182.4435.i, %i.um
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i.i: ; preds = %bb.bi, %bb.bg
  %.sroa.25182.5.i = phi i32 [ %i.uc, %bb.bg ], [ %i.un, %bb.bi ] ; 3 uses
  %.pn351.in.i = phi i32 [ %i.ub, %bb.bg ], [ %.021.i39.i214.i.i, %bb.bi ]
  %.022.i38.i213.i.i = phi i1 [ true, %bb.bg ], [ %i.ui, %bb.bi ]
  %.pn351.i = zext i32 %.pn351.in.i to i64
  %.pn350.i = sub nsw i64 0, %.pn351.i
  %.sroa.69200.4.i = getelementptr inbounds i8, ptr %.sroa.69200.3436.i, i64 %.pn350.i ; 3 uses
  %.sroa.0181.4.i = load i64, ptr %.sroa.69200.4.i, align 1, !tbaa !32 ; 7 uses
  %i.uo = icmp ult ptr %.0.i210.i437.i, %i.tx
  %i.up = and i1 %i.uo, %.022.i38.i213.i.i
  br i1 %i.up, label %bb.bj, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i

bb.bj:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i.i
  %i.uq = and i32 %.sroa.25182.5.i, 63
  %i.ur = zext nneg i32 %i.uq to i64
  %i.us = shl i64 %.sroa.0181.4.i, %i.ur
  %i.ut = lshr i64 %i.us, %i.ua
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ut ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 1
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !110
  %i.ux = load i8, ptr %i.uu, align 1, !tbaa !112
  %i.uy = zext i8 %i.ux to i32
  %i.uz = add i32 %.sroa.25182.5.i, %i.uy         ; 2 uses
  store i8 %i.uw, ptr %.0.i210.i437.i, align 1, !tbaa !7
  %i.va = getelementptr inbounds nuw i8, ptr %.0.i210.i437.i, i64 1
  %i.vb = and i32 %i.uz, 63
  %i.vc = zext nneg i32 %i.vb to i64
  %i.vd = shl i64 %.sroa.0181.4.i, %i.vc
  %i.ve = lshr i64 %i.vd, %i.ua
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ve ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 1
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !110
  %i.vi = load i8, ptr %i.vf, align 1, !tbaa !112
  %i.vj = zext i8 %i.vi to i32
  %i.vk = add i32 %i.uz, %i.vj                    ; 2 uses
  store i8 %i.vh, ptr %i.va, align 1, !tbaa !7
  %i.vl = getelementptr inbounds nuw i8, ptr %.0.i210.i437.i, i64 2
  %i.vm = and i32 %i.vk, 63
  %i.vn = zext nneg i32 %i.vm to i64
  %i.vo = shl i64 %.sroa.0181.4.i, %i.vn
  %i.vp = lshr i64 %i.vo, %i.ua
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.vp ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !110
  %i.vt = load i8, ptr %i.vq, align 1, !tbaa !112
  %i.vu = zext i8 %i.vt to i32
  %i.vv = add i32 %i.vk, %i.vu                    ; 2 uses
  store i8 %i.vs, ptr %i.vl, align 1, !tbaa !7
  %i.vw = getelementptr inbounds nuw i8, ptr %.0.i210.i437.i, i64 3
  %i.vx = and i32 %i.vv, 63
  %i.vy = zext nneg i32 %i.vx to i64
  %i.vz = shl i64 %.sroa.0181.4.i, %i.vy
  %i.wa = lshr i64 %i.vz, %i.ua
  %i.wb = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.wa ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 1
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !110
  %i.we = load i8, ptr %i.wb, align 1, !tbaa !112
  %i.wf = zext i8 %i.we to i32
  %i.wg = add i32 %i.vv, %i.wf                    ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.0.i210.i437.i, i64 4 ; 2 uses
  store i8 %i.wd, ptr %i.vw, align 1, !tbaa !7
  %i.wi = icmp ugt i32 %i.wg, 64
  br i1 %i.wi, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i, label %bb.bf, !prof !101, !llvm.loop !113

bb.bk:                                            ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i.i
  br i1 %i.tv, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i, label %bb.bl, !prof !122

bb.bl:                                            ; preds = %bb.bk
  %.not.i.i201.i.i = icmp ult ptr %.sroa.69200.0.i, %i.cf
  br i1 %.not.i.i201.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.wj = lshr i32 %.sroa.25182.0.i, 3
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = sub nsw i64 0, %i.wk
  %i.wm = getelementptr inbounds i8, ptr %.sroa.69200.0.i, i64 %i.wl ; 2 uses
  %i.wn = and i32 %.sroa.25182.0.i, 7
  %.val.i112.i = load i64, ptr %i.wm, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.wo = icmp eq ptr %.sroa.69200.0.i, %i.r
  br i1 %i.wo, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.wp = lshr i32 %.sroa.25182.0.i, 3            ; 2 uses
  %i.wq = zext nneg i32 %i.wp to i64
  %i.wr = sub nsw i64 0, %i.wq
  %i.ws = getelementptr inbounds i8, ptr %.sroa.69200.0.i, i64 %i.wr
  %i.wt = icmp ult ptr %i.ws, %i.r
  %i.wu = ptrtoint ptr %.sroa.69200.0.i to i64
  %i.wv = ptrtoint ptr %i.r to i64
  %i.ww = sub i64 %i.wu, %i.wv
  %i.wx = trunc i64 %i.ww to i32
  %.021.i.i206.i.i = select i1 %i.wt, i32 %i.wx, i32 %i.wp ; 2 uses
  %i.wy = zext i32 %.021.i.i206.i.i to i64
  %i.wz = sub nsw i64 0, %i.wy
  %i.xa = getelementptr inbounds i8, ptr %.sroa.69200.0.i, i64 %i.wz ; 2 uses
  %i.xb = shl i32 %.021.i.i206.i.i, 3
  %i.xc = sub i32 %.sroa.25182.0.i, %i.xb
  %.val7.i = load i64, ptr %i.xa, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i: ; preds = %bb.bj, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i.i, %bb.bh, %bb.bo, %bb.bn, %bb.bm, %bb.bk, %.preheader376.i
  %.sroa.0181.2.i = phi i64 [ %.val7.i, %bb.bo ], [ %.sroa.0181.0.i, %bb.bk ], [ %.val.i112.i, %bb.bm ], [ %.sroa.0181.0.i, %bb.bn ], [ %.sroa.0181.0.i, %.preheader376.i ], [ %.sroa.0181.3434.i, %bb.bh ], [ %.sroa.0181.4.i, %bb.bj ], [ %.sroa.0181.4.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i.i ] ; 3 uses
  %.sroa.25182.2.i = phi i32 [ %i.xc, %bb.bo ], [ %.sroa.25182.0.i, %bb.bk ], [ %i.wn, %bb.bm ], [ %.sroa.25182.0.i, %bb.bn ], [ %.sroa.25182.0.i, %.preheader376.i ], [ %.sroa.25182.4435.i, %bb.bh ], [ %i.wg, %bb.bj ], [ %.sroa.25182.5.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i.i ] ; 4 uses
  %.sroa.69200.2.i = phi ptr [ %i.xa, %bb.bo ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bk ], [ %i.wm, %bb.bm ], [ %i.r, %bb.bn ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %.preheader376.i ], [ %i.r, %bb.bh ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bj ], [ %.sroa.69200.4.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i.i ]
  %.3.i204.i.i = phi ptr [ %.3152.i.i, %bb.bo ], [ %.3152.i.i, %bb.bk ], [ %.3152.i.i, %bb.bm ], [ %.3152.i.i, %bb.bn ], [ %.3152.i.i, %.preheader376.i ], [ %.0.i210.i437.i, %bb.bh ], [ %i.wh, %bb.bj ], [ %.0.i210.i437.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i.i ] ; 5 uses
  %i.xd = icmp ult ptr %.3.i204.i.i, %i.x
  br i1 %i.xd, label %.lr.ph454.i, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i.i

.lr.ph454.i:                                      ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i
  %.3.i204.i.i127 = ptrtoaddr ptr %.3.i204.i.i to i64 ; 2 uses
  %i.xe = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.xf = and i32 %i.xe, 63
  %i.xg = zext nneg i32 %i.xf to i64              ; 3 uses
  %i.xh = shl nuw nsw i64 %i.v, 1
  %i.xi = add i64 %i.xh, %7
  %i.xj = sub i64 %7, %.3.i204.i.i127
  %.neg134 = add i64 %.3.i204.i.i127, 1
  %xtraiter128 = and i64 %i.xj, 1
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.prol.loopexit126, label %.prol.loopexit126.unr-lcssa

.prol.loopexit126.unr-lcssa:                      ; preds = %.lr.ph454.i
  %i.xk = and i32 %.sroa.25182.2.i, 63
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = shl i64 %.sroa.0181.2.i, %i.xl
  %i.xn = lshr i64 %i.xm, %i.xg
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.xn ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 1
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !110
  %i.xr = load i8, ptr %i.xo, align 1, !tbaa !112
  %i.xs = zext i8 %i.xr to i32
  %i.xt = add i32 %.sroa.25182.2.i, %i.xs         ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.3.i204.i.i, i64 1
  store i8 %i.xq, ptr %.3.i204.i.i, align 1, !tbaa !7
  br label %.prol.loopexit126

.prol.loopexit126:                                ; preds = %.prol.loopexit126.unr-lcssa, %.lr.ph454.i
  %.6.i205.i453.i.unr = phi ptr [ %.3.i204.i.i, %.lr.ph454.i ], [ %i.xu, %.prol.loopexit126.unr-lcssa ]
  %.sroa.25182.3452.i.unr = phi i32 [ %.sroa.25182.2.i, %.lr.ph454.i ], [ %i.xt, %.prol.loopexit126.unr-lcssa ]
  %.lcssa119.unr = phi i32 [ poison, %.lr.ph454.i ], [ %i.xt, %.prol.loopexit126.unr-lcssa ]
  %i.xv = icmp eq i64 %i.xi, %.neg134
  br i1 %i.xv, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i.i, label %.lr.ph454.i.new

.lr.ph454.i.new:                                  ; preds = %.prol.loopexit126, %.lr.ph454.i.new
  %.6.i205.i453.i = phi ptr [ %i.yr, %.lr.ph454.i.new ], [ %.6.i205.i453.i.unr, %.prol.loopexit126 ] ; 3 uses
  %.sroa.25182.3452.i = phi i32 [ %i.yq, %.lr.ph454.i.new ], [ %.sroa.25182.3452.i.unr, %.prol.loopexit126 ] ; 2 uses
  %i.xw = and i32 %.sroa.25182.3452.i, 63
  %i.xx = zext nneg i32 %i.xw to i64
  %i.xy = shl i64 %.sroa.0181.2.i, %i.xx
  %i.xz = lshr i64 %i.xy, %i.xg
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.xz ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 1
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !110
  %i.yd = load i8, ptr %i.ya, align 1, !tbaa !112
  %i.ye = zext i8 %i.yd to i32
  %i.yf = add i32 %.sroa.25182.3452.i, %i.ye      ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.6.i205.i453.i, i64 1
  store i8 %i.yc, ptr %.6.i205.i453.i, align 1, !tbaa !7
  %i.yh = and i32 %i.yf, 63
  %i.yi = zext nneg i32 %i.yh to i64
  %i.yj = shl i64 %.sroa.0181.2.i, %i.yi
  %i.yk = lshr i64 %i.yj, %i.xg
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.yk ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !110
  %i.yo = load i8, ptr %i.yl, align 1, !tbaa !112
  %i.yp = zext i8 %i.yo to i32
  %i.yq = add i32 %i.yf, %i.yp                    ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.6.i205.i453.i, i64 2 ; 2 uses
  store i8 %i.yn, ptr %i.yg, align 1, !tbaa !7
  %i.ys = icmp ult ptr %i.yr, %i.x
  br i1 %i.ys, label %.lr.ph454.i.new, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i.i, !llvm.loop !114

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i.i: ; preds = %.prol.loopexit126, %.lr.ph454.i.new, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i
  %.sroa.25182.3.lcssa.i = phi i32 [ %.sroa.25182.2.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i.i ], [ %.lcssa119.unr, %.prol.loopexit126 ], [ %i.yq, %.lr.ph454.i.new ]
  %i.yt = ptrtoint ptr %i.y to i64
  %i.yu = ptrtoint ptr %.3156.i.i to i64
  %i.yv = sub i64 %i.yt, %i.yu
  %i.yw = icmp sgt i64 %i.yv, 3
  %i.yx = icmp ugt i32 %.sroa.25.0.i, 64          ; 2 uses
  br i1 %i.yw, label %.preheader375.i, label %bb.bu

.preheader375.i:                                  ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i.i
  br i1 %i.yx, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i.i, label %.lr.ph460.i, !prof !104

.lr.ph460.i:                                      ; preds = %.preheader375.i
  %i.yy = ptrtoint ptr %i.s to i64
  %i.yz = getelementptr inbounds i8, ptr %i.y, i64 -3
  %i.za = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.zb = and i32 %i.za, 63
  %i.zc = zext nneg i32 %i.zb to i64              ; 4 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bt, %.lr.ph460.i
  %.0.i192.i459.i = phi ptr [ %.3156.i.i, %.lr.ph460.i ], [ %i.abj, %bb.bt ] ; 8 uses
  %.sroa.69136.3458.i = phi ptr [ %.sroa.69136.0.i, %.lr.ph460.i ], [ %.sroa.69136.4.i, %bb.bt ] ; 5 uses
  %.sroa.25.4457.i = phi i32 [ %.sroa.25.0.i, %.lr.ph460.i ], [ %i.abi, %bb.bt ] ; 5 uses
  %.sroa.0.3456.i = phi i64 [ %.sroa.0.0.i, %.lr.ph460.i ], [ %.sroa.0.4.i, %bb.bt ]
  %.not.i37.i193.i.i = icmp ult ptr %.sroa.69136.3458.i, %i.eh
  br i1 %.not.i37.i193.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.zd = lshr i32 %.sroa.25.4457.i, 3
  %i.ze = and i32 %.sroa.25.4457.i, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i194.i.i

bb.br:                                            ; preds = %bb.bp
  %i.zf = icmp eq ptr %.sroa.69136.3458.i, %i.s
  br i1 %i.zf, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.zg = lshr i32 %.sroa.25.4457.i, 3            ; 2 uses
  %i.zh = zext nneg i32 %i.zg to i64
  %i.zi = sub nsw i64 0, %i.zh
  %i.zj = getelementptr inbounds i8, ptr %.sroa.69136.3458.i, i64 %i.zi
  %i.zk = icmp uge ptr %i.zj, %i.s                ; 2 uses
  %i.zl = ptrtoint ptr %.sroa.69136.3458.i to i64
  %i.zm = sub i64 %i.zl, %i.yy
  %i.zn = trunc i64 %i.zm to i32
  %.021.i39.i196.i.i = select i1 %i.zk, i32 %i.zg, i32 %i.zn ; 2 uses
  %i.zo = shl i32 %.021.i39.i196.i.i, 3
  %i.zp = sub i32 %.sroa.25.4457.i, %i.zo
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i194.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i194.i.i: ; preds = %bb.bs, %bb.bq
  %.sroa.25.5.i = phi i32 [ %i.ze, %bb.bq ], [ %i.zp, %bb.bs ] ; 3 uses
  %.pn353.in.i = phi i32 [ %i.zd, %bb.bq ], [ %.021.i39.i196.i.i, %bb.bs ]
  %.022.i38.i195.i.i = phi i1 [ true, %bb.bq ], [ %i.zk, %bb.bs ]
  %.pn353.i = zext i32 %.pn353.in.i to i64
  %.pn352.i = sub nsw i64 0, %.pn353.i
  %.sroa.69136.4.i = getelementptr inbounds i8, ptr %.sroa.69136.3458.i, i64 %.pn352.i ; 3 uses
  %.sroa.0.4.i = load i64, ptr %.sroa.69136.4.i, align 1, !tbaa !32 ; 7 uses
  %i.zq = icmp ult ptr %.0.i192.i459.i, %i.yz
  %i.zr = and i1 %i.zq, %.022.i38.i195.i.i
  br i1 %i.zr, label %bb.bt, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i.i

bb.bt:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i194.i.i
  %i.zs = and i32 %.sroa.25.5.i, 63
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = shl i64 %.sroa.0.4.i, %i.zt
  %i.zv = lshr i64 %i.zu, %i.zc
  %i.zw = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.zv ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 1
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !110
  %i.zz = load i8, ptr %i.zw, align 1, !tbaa !112
  %i.aaa = zext i8 %i.zz to i32
  %i.aab = add i32 %.sroa.25.5.i, %i.aaa          ; 2 uses
  store i8 %i.zy, ptr %.0.i192.i459.i, align 1, !tbaa !7
  %i.aac = getelementptr inbounds nuw i8, ptr %.0.i192.i459.i, i64 1
  %i.aad = and i32 %i.aab, 63
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = shl i64 %.sroa.0.4.i, %i.aae
  %i.aag = lshr i64 %i.aaf, %i.zc
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.aag ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 1
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !110
  %i.aak = load i8, ptr %i.aah, align 1, !tbaa !112
  %i.aal = zext i8 %i.aak to i32
  %i.aam = add i32 %i.aab, %i.aal                 ; 2 uses
  store i8 %i.aaj, ptr %i.aac, align 1, !tbaa !7
  %i.aan = getelementptr inbounds nuw i8, ptr %.0.i192.i459.i, i64 2
  %i.aao = and i32 %i.aam, 63
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = shl i64 %.sroa.0.4.i, %i.aap
  %i.aar = lshr i64 %i.aaq, %i.zc
  %i.aas = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.aar ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 1
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !110
  %i.aav = load i8, ptr %i.aas, align 1, !tbaa !112
  %i.aaw = zext i8 %i.aav to i32
  %i.aax = add i32 %i.aam, %i.aaw                 ; 2 uses
  store i8 %i.aau, ptr %i.aan, align 1, !tbaa !7
  %i.aay = getelementptr inbounds nuw i8, ptr %.0.i192.i459.i, i64 3
  %i.aaz = and i32 %i.aax, 63
  %i.aba = zext nneg i32 %i.aaz to i64
  %i.abb = shl i64 %.sroa.0.4.i, %i.aba
  %i.abc = lshr i64 %i.abb, %i.zc
  %i.abd = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.abc ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 1
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !110
  %i.abg = load i8, ptr %i.abd, align 1, !tbaa !112
  %i.abh = zext i8 %i.abg to i32
  %i.abi = add i32 %i.aax, %i.abh                 ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.0.i192.i459.i, i64 4 ; 2 uses
  store i8 %i.abf, ptr %i.aay, align 1, !tbaa !7
  %i.abk = icmp ugt i32 %i.abi, 64
  br i1 %i.abk, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i.i, label %bb.bp, !prof !101, !llvm.loop !113

bb.bu:                                            ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i.i
  br i1 %i.yx, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i.i, label %bb.bv, !prof !122

bb.bv:                                            ; preds = %bb.bu
  %.not.i.i183.i.i = icmp ult ptr %.sroa.69136.0.i, %i.eh
  br i1 %.not.i.i183.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abl = lshr i32 %.sroa.25.0.i, 3
  %i.abm = zext nneg i32 %i.abl to i64
  %i.abn = sub nsw i64 0, %i.abm
  %i.abo = getelementptr inbounds i8, ptr %.sroa.69136.0.i, i64 %i.abn ; 2 uses
  %i.abp = and i32 %.sroa.25.0.i, 7
  %.val.i114.i = load i64, ptr %i.abo, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.abq = icmp eq ptr %.sroa.69136.0.i, %i.s
  br i1 %i.abq, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.abr = lshr i32 %.sroa.25.0.i, 3              ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL38HUF_decompress4X1_usingDTable_internalEPvmPKvmPKji:bb.a

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit200.i.i: ; preds = %bb.bz, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i.i
  %.sroa.25.3.lcssa.i = phi i32 [ %.sroa.25.2.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i.i ], [ %i.acs, %bb.bz ]
  %i.acv = ptrtoint ptr %i.e to i64
  %i.acw = ptrtoint ptr %.3160.i.i to i64
  %i.acx = sub i64 %i.acv, %i.acw
  %i.acy = icmp sgt i64 %i.acx, 3
  %i.acz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  %i.ada = load i32, ptr %i.acz, align 8, !tbaa !120 ; 9 uses
  %i.adb = icmp ugt i32 %i.ada, 64                ; 2 uses
  br i1 %i.acy, label %.preheader.i, label %bb.cf

.preheader.i:                                     ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit200.i.i
  br i1 %i.adb, label %._crit_edge.i, label %.lr.ph479.i, !prof !104

.lr.ph479.i:                                      ; preds = %.preheader.i
  %i.adc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ade = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.adf = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.adg = and i32 %i.adf, 63
  %i.adh = zext nneg i32 %i.adg to i64            ; 4 uses
  %.pre.i = load ptr, ptr %i.adc, align 8, !tbaa !121
  %.pre499.i = load ptr, ptr %i.add, align 8, !tbaa !116
  br label %bb.ca

._crit_edge.i:                                    ; preds = %bb.ce, %.preheader.i
  %i.adi = phi i32 [ %i.ada, %.preheader.i ], [ %i.afz, %bb.ce ]
  %.0.i.i.lcssa.i = phi ptr [ %.3160.i.i, %.preheader.i ], [ %i.aga, %bb.ce ]
  %i.adj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.adj, align 8, !tbaa !121
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i

bb.ca:                                            ; preds = %bb.ce, %.lr.ph479.i
  %i.adk = phi ptr [ %.pre.i, %.lr.ph479.i ], [ %storemerge.in.i, %bb.ce ] ; 7 uses
  %i.adl = phi i32 [ %i.ada, %.lr.ph479.i ], [ %i.afz, %bb.ce ] ; 5 uses
  %.0.i.i478.i = phi ptr [ %.3160.i.i, %.lr.ph479.i ], [ %i.aga, %bb.ce ] ; 8 uses
  %.not.i37.i.i.i = icmp ult ptr %i.adk, %.pre499.i
  br i1 %.not.i37.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.adm = lshr i32 %i.adl, 3
  %i.adn = zext nneg i32 %i.adm to i64
  %i.ado = sub nsw i64 0, %i.adn
  %i.adp = getelementptr inbounds i8, ptr %i.adk, i64 %i.ado ; 2 uses
  store ptr %i.adp, ptr %i.adc, align 8, !tbaa !121
  %i.adq = and i32 %i.adl, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.adr = load ptr, ptr %i.ade, align 8, !tbaa !125 ; 3 uses
  %i.ads = icmp eq ptr %i.adk, %i.adr
  br i1 %i.ads, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.adt = lshr i32 %i.adl, 3                     ; 2 uses
  %i.adu = zext nneg i32 %i.adt to i64
  %i.adv = sub nsw i64 0, %i.adu
  %i.adw = getelementptr inbounds i8, ptr %i.adk, i64 %i.adv
  %i.adx = icmp uge ptr %i.adw, %i.adr            ; 2 uses
  %i.ady = ptrtoint ptr %i.adk to i64
  %i.adz = ptrtoint ptr %i.adr to i64
  %i.aea = sub i64 %i.ady, %i.adz
  %i.aeb = trunc i64 %i.aea to i32
  %.021.i39.i.i.i = select i1 %i.adx, i32 %i.adt, i32 %i.aeb ; 2 uses
  %i.aec = zext i32 %.021.i39.i.i.i to i64
  %i.aed = sub nsw i64 0, %i.aec
  %i.aee = getelementptr inbounds i8, ptr %i.adk, i64 %i.aed ; 2 uses
  store ptr %i.aee, ptr %i.adc, align 8, !tbaa !121
  %i.aef = shl i32 %.021.i39.i.i.i, 3
  %i.aeg = sub i32 %i.adl, %i.aef
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i.i: ; preds = %bb.cd, %bb.cb
  %.val81.i = phi i32 [ %i.adq, %bb.cb ], [ %i.aeg, %bb.cd ] ; 4 uses
  %storemerge.in.i = phi ptr [ %i.adp, %bb.cb ], [ %i.aee, %bb.cd ] ; 3 uses
  %.022.i38.i.i.i = phi i1 [ true, %bb.cb ], [ %i.adx, %bb.cd ]
  store i32 %.val81.i, ptr %i.acz, align 8, !tbaa !120
  %storemerge.i = load i64, ptr %storemerge.in.i, align 1, !tbaa !32 ; 5 uses
  store i64 %storemerge.i, ptr %6, align 8, !tbaa !123
  %i.aeh = icmp ult ptr %.0.i.i478.i, %i.f
  %i.aei = and i1 %i.aeh, %.022.i38.i.i.i
  br i1 %i.aei, label %bb.ce, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i

bb.ce:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i.i
  %i.aej = and i32 %.val81.i, 63
  %i.aek = zext nneg i32 %i.aej to i64
  %i.ael = shl i64 %storemerge.i, %i.aek
  %i.aem = lshr i64 %i.ael, %i.adh
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.aem ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 1
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !110
  %i.aeq = load i8, ptr %i.aen, align 1, !tbaa !112
  %i.aer = zext i8 %i.aeq to i32
  %i.aes = add i32 %.val81.i, %i.aer              ; 2 uses
  store i8 %i.aep, ptr %.0.i.i478.i, align 1, !tbaa !7
  %i.aet = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 1
  %i.aeu = and i32 %i.aes, 63
  %i.aev = zext nneg i32 %i.aeu to i64
  %i.aew = shl i64 %storemerge.i, %i.aev
  %i.aex = lshr i64 %i.aew, %i.adh
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.aex ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 1
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !110
  %i.afb = load i8, ptr %i.aey, align 1, !tbaa !112
  %i.afc = zext i8 %i.afb to i32
  %i.afd = add i32 %i.aes, %i.afc                 ; 2 uses
  store i8 %i.afa, ptr %i.aet, align 1, !tbaa !7
  %i.afe = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 2
  %i.aff = and i32 %i.afd, 63
  %i.afg = zext nneg i32 %i.aff to i64
  %i.afh = shl i64 %storemerge.i, %i.afg
  %i.afi = lshr i64 %i.afh, %i.adh
  %i.afj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.afi ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 1
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !110
  %i.afm = load i8, ptr %i.afj, align 1, !tbaa !112
  %i.afn = zext i8 %i.afm to i32
  %i.afo = add i32 %i.afd, %i.afn                 ; 2 uses
  store i8 %i.afl, ptr %i.afe, align 1, !tbaa !7
  %i.afp = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 3
  %i.afq = and i32 %i.afo, 63
  %i.afr = zext nneg i32 %i.afq to i64
  %i.afs = shl i64 %storemerge.i, %i.afr
  %i.aft = lshr i64 %i.afs, %i.adh
  %i.afu = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.aft ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 1
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !110
  %i.afx = load i8, ptr %i.afu, align 1, !tbaa !112
  %i.afy = zext i8 %i.afx to i32
  %i.afz = add i32 %i.afo, %i.afy                 ; 4 uses
  store i32 %i.afz, ptr %i.acz, align 8, !tbaa !120
  %i.aga = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 4 ; 2 uses
  store i8 %i.afw, ptr %i.afp, align 1, !tbaa !7
  %i.agb = icmp ugt i32 %i.afz, 64
  br i1 %i.agb, label %._crit_edge.i, label %bb.ca, !prof !101, !llvm.loop !113

bb.cf:                                            ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit200.i.i
  %i.agc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br i1 %i.adb, label %bb.cg, label %bb.ch, !prof !122

bb.cg:                                            ; preds = %bb.cf
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.agc, align 8, !tbaa !121
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !121 ; 7 uses
  %i.age = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !116
  %.not.i.i.i.i = icmp ult ptr %i.agd, %i.agf
  br i1 %.not.i.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.agg = lshr i32 %i.ada, 3
  %i.agh = zext nneg i32 %i.agg to i64
  %i.agi = sub nsw i64 0, %i.agh
  %i.agj = getelementptr inbounds i8, ptr %i.agd, i64 %i.agi ; 3 uses
  store ptr %i.agj, ptr %i.agc, align 8, !tbaa !121
  %i.agk = and i32 %i.ada, 7                      ; 2 uses
  store i32 %i.agk, ptr %i.acz, align 8, !tbaa !120
  %.val.i116.i = load i64, ptr %i.agj, align 1, !tbaa !32
  store i64 %.val.i116.i, ptr %6, align 8, !tbaa !123
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.agl = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !125 ; 3 uses
  %i.agn = icmp eq ptr %i.agd, %i.agm
  br i1 %i.agn, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ago = lshr i32 %i.ada, 3                     ; 2 uses
  %i.agp = zext nneg i32 %i.ago to i64
  %i.agq = sub nsw i64 0, %i.agp
  %i.agr = getelementptr inbounds i8, ptr %i.agd, i64 %i.agq
  %i.ags = icmp ult ptr %i.agr, %i.agm
  %i.agt = ptrtoint ptr %i.agd to i64
  %i.agu = ptrtoint ptr %i.agm to i64
  %i.agv = sub i64 %i.agt, %i.agu
  %i.agw = trunc i64 %i.agv to i32
  %.021.i.i.i.i = select i1 %i.ags, i32 %i.agw, i32 %i.ago ; 2 uses
  %i.agx = zext i32 %.021.i.i.i.i to i64
  %i.agy = sub nsw i64 0, %i.agx
  %i.agz = getelementptr inbounds i8, ptr %i.agd, i64 %i.agy ; 3 uses
  store ptr %i.agz, ptr %i.agc, align 8, !tbaa !121
  %i.aha = shl i32 %.021.i.i.i.i, 3
  %i.ahb = sub i32 %i.ada, %i.aha                 ; 2 uses
  store i32 %i.ahb, ptr %i.acz, align 8, !tbaa !120
  %.val11.i = load i64, ptr %i.agz, align 1, !tbaa !32
  store i64 %.val11.i, ptr %6, align 8, !tbaa !123
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i.i, %bb.cc, %bb.ck, %bb.cj, %bb.ci, %bb.cg, %._crit_edge.i
  %i.ahc = phi i32 [ %i.adi, %._crit_edge.i ], [ %i.ada, %bb.cg ], [ %i.ahb, %bb.ck ], [ %i.ada, %bb.cj ], [ %i.agk, %bb.ci ], [ %.val81.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i.i ], [ %i.adl, %bb.cc ]
  %i.ahd = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %._crit_edge.i ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.cg ], [ %i.agz, %bb.ck ], [ %i.agd, %bb.cj ], [ %i.agj, %bb.ci ], [ %storemerge.in.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i.i ], [ %i.adk, %bb.cc ]
  %.3.i.i.i = phi ptr [ %.0.i.i.lcssa.i, %._crit_edge.i ], [ %.3160.i.i, %bb.cg ], [ %.3160.i.i, %bb.ck ], [ %.3160.i.i, %bb.cj ], [ %.3160.i.i, %bb.ci ], [ %.0.i.i478.i, %bb.cc ], [ %.0.i.i478.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i.i ] ; 6 uses
  %i.ahe = icmp ult ptr %.3.i.i.i, %i.e
  br i1 %i.ahe, label %.lr.ph482.i, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.i

.lr.ph482.i:                                      ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i
  %.3.i.i496.i = ptrtoaddr ptr %.3.i.i.i to i64   ; 2 uses
  %i.ahf = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.ahg = and i32 %i.ahf, 63
  %i.ahh = zext nneg i32 %i.ahg to i64            ; 3 uses
  %i.ahi = add i64 %1, %7                         ; 2 uses
  %i.ahj = sub i64 %i.ahi, %.3.i.i496.i           ; 2 uses
  %scevgep497.i = getelementptr i8, ptr %.3.i.i.i, i64 %i.ahj
  %.neg135 = add i64 %.3.i.i496.i, 1
  %xtraiter132 = and i64 %i.ahj, 1
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.prol.loopexit131, label %.prol.loopexit131.unr-lcssa

.prol.loopexit131.unr-lcssa:                      ; preds = %.lr.ph482.i
  %.val82.i.prol = load i64, ptr %6, align 8, !tbaa !123
  %.val83.i.prol = load i32, ptr %i.acz, align 8, !tbaa !120 ; 2 uses
  %i.ahk = and i32 %.val83.i.prol, 63
  %i.ahl = zext nneg i32 %i.ahk to i64
  %i.ahm = shl i64 %.val82.i.prol, %i.ahl
  %i.ahn = lshr i64 %i.ahm, %i.ahh
  %i.aho = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ahn ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 1
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !110
  %i.ahr = load i8, ptr %i.aho, align 1, !tbaa !112
  %i.ahs = zext i8 %i.ahr to i32
  %i.aht = add i32 %.val83.i.prol, %i.ahs
  store i32 %i.aht, ptr %i.acz, align 8, !tbaa !120
  %i.ahu = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 1
  store i8 %i.ahq, ptr %.3.i.i.i, align 1, !tbaa !7
  br label %.prol.loopexit131

.prol.loopexit131:                                ; preds = %.prol.loopexit131.unr-lcssa, %.lr.ph482.i
  %.6.i.i481.i.unr = phi ptr [ %.3.i.i.i, %.lr.ph482.i ], [ %i.ahu, %.prol.loopexit131.unr-lcssa ]
  %i.ahv = icmp eq i64 %i.ahi, %.neg135
  br i1 %i.ahv, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit.i, label %.lr.ph482.i.new

.lr.ph482.i.new:                                  ; preds = %.prol.loopexit131, %.lr.ph482.i.new
  %.6.i.i481.i = phi ptr [ %i.air, %.lr.ph482.i.new ], [ %.6.i.i481.i.unr, %.prol.loopexit131 ] ; 3 uses
  %.val82.i = load i64, ptr %6, align 8, !tbaa !123
  %.val83.i = load i32, ptr %i.acz, align 8, !tbaa !120 ; 2 uses
  %i.ahw = and i32 %.val83.i, 63
  %i.ahx = zext nneg i32 %i.ahw to i64
  %i.ahy = shl i64 %.val82.i, %i.ahx
  %i.ahz = lshr i64 %i.ahy, %i.ahh
  %i.aia = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ahz ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 1
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !110
  %i.aid = load i8, ptr %i.aia, align 1, !tbaa !112
  %i.aie = zext i8 %i.aid to i32
  %i.aif = add i32 %.val83.i, %i.aie
  store i32 %i.aif, ptr %i.acz, align 8, !tbaa !120
  %i.aig = getelementptr inbounds nuw i8, ptr %.6.i.i481.i, i64 1
  store i8 %i.aic, ptr %.6.i.i481.i, align 1, !tbaa !7
  %.val82.i.1 = load i64, ptr %6, align 8, !tbaa !123
  %.val83.i.1 = load i32, ptr %i.acz, align 8, !tbaa !120 ; 2 uses
  %i.aih = and i32 %.val83.i.1, 63
  %i.aii = zext nneg i32 %i.aih to i64
  %i.aij = shl i64 %.val82.i.1, %i.aii
  %i.aik = lshr i64 %i.aij, %i.ahh
  %i.ail = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.aik ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 1
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !110
  %i.aio = load i8, ptr %i.ail, align 1, !tbaa !112
  %i.aip = zext i8 %i.aio to i32
  %i.aiq = add i32 %.val83.i.1, %i.aip
  store i32 %i.aiq, ptr %i.acz, align 8, !tbaa !120
  %i.air = getelementptr inbounds nuw i8, ptr %.6.i.i481.i, i64 2 ; 2 uses
  store i8 %i.ain, ptr %i.aig, align 1, !tbaa !7
  %exitcond498.not.i.1 = icmp eq ptr %i.air, %scevgep497.i
  br i1 %exitcond498.not.i.1, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit.i, label %.lr.ph482.i.new, !llvm.loop !114

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit.i: ; preds = %.lr.ph482.i.new, %.prol.loopexit131
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.pre500.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !121
  %.pre502.i = load i32, ptr %i.acz, align 8
  br label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.i

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.i: ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i
  %i.ais = phi i32 [ %.pre502.i, %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit.i ], [ %i.ahc, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i ]
  %i.ait = phi ptr [ %.pre500.i, %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit.i ], [ %i.ahd, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.i ]
  %i.aiu = icmp ne ptr %.sroa.69266.2.i, %i.q
  %i.aiv = icmp ne i32 %.sroa.25248.3.lcssa.i, 64
  %narrow.not363.i = select i1 %i.aiu, i1 true, i1 %i.aiv
  %i.aiw = icmp ne ptr %.sroa.69200.2.i, %i.r
  %i.aix = icmp ne i32 %.sroa.25182.3.lcssa.i, 64
  %narrow355.not366.i = select i1 %i.aiw, i1 true, i1 %i.aix
  %.not.i = or i1 %narrow.not363.i, %narrow355.not366.i
  %i.aiy = icmp ne ptr %.sroa.69136.2.i, %i.s
  %i.aiz = icmp ne i32 %.sroa.25.3.lcssa.i, 64
  %narrow356.not369.i = select i1 %i.aiy, i1 true, i1 %i.aiz
  %.not360.i = or i1 %.not.i, %narrow356.not369.i
  %i.aja = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !125
  %i.ajc = icmp ne ptr %i.ait, %i.ajb
  %i.ajd = icmp ne i32 %i.ais, 64
  %narrow357.not372.i = select i1 %i.ajc, i1 true, i1 %i.ajd
  %.not358.i = or i1 %.not360.i, %narrow357.not372.i
  %spec.select.i.i = select i1 %.not358.i, i64 -20, i64 %1
  br label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i

_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i: ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.i, %.loopexit.i, %bb.ao, %bb.am, %bb.ae, %bb.ac, %bb.aa, %bb.s, %bb.q, %bb.o, %bb.g, %bb.e, %bb.d
  %.5.i.i = phi i64 [ %spec.select.i.i, %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.i ], [ -20, %bb.d ], [ -1, %bb.s ], [ -20, %.loopexit.i ], [ -1, %bb.g ], [ %i.gi, %bb.ao ], [ -20, %bb.o ], [ -72, %bb.e ], [ -20, %bb.aa ], [ -72, %bb.q ], [ -20, %bb.am ], [ -72, %bb.ac ], [ -1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN11duckdb_zstdL46HUF_decompress4X1_usingDTable_internal_defaultEPvmPKvmPKj.exit

bb.cl:                                            ; preds = %bb.b
  %i.aje = tail call fastcc noundef i64 @_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_fastEPvmPKvmPKjPFvPNS_22HUF_DecompressFastArgsEE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) ; 2 uses
  %.not25 = icmp eq i64 %i.aje, 0
  br i1 %.not25, label %bb.cm, label %_ZN11duckdb_zstdL46HUF_decompress4X1_usingDTable_internal_defaultEPvmPKvmPKj.exit

bb.cm:                                            ; preds = %bb.cl, %bb.b
  %i.ajf = tail call fastcc noundef i64 @_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bmi2EPvmPKvmPKj(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %_ZN11duckdb_zstdL46HUF_decompress4X1_usingDTable_internal_defaultEPvmPKvmPKj.exit

_ZN11duckdb_zstdL46HUF_decompress4X1_usingDTable_internal_defaultEPvmPKvmPKj.exit: ; preds = %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, %bb.c, %bb.cl, %bb.cm
  %.1 = phi i64 [ %i.ajf, %bb.cm ], [ %i.aje, %bb.cl ], [ %.5.i.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i ], [ -20, %bb.c ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 1, 0) i64 @_ZN11duckdb_zstd29HUF_decompress4X_hufOnly_wkspEPjPvmPKvmS1_mi(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN11duckdb_zstdL27HUF_decompress4X2_DCtx_wkspEPjPvmPKvmS1_mi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %_ZN11duckdb_zstdL27HUF_decompress4X2_DCtx_wkspEPjPvmPKvmS1_mi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ult i64 %4, %2
  br i1 %.not.i, label %bb.d, label %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit

bb.d:                                             ; preds = %bb.c
  %i.c = shl i64 %4, 4
  %i.d = udiv i64 %i.c, %2
  %i.e = and i64 %i.d, 4294967295
  br label %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit

_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit:      ; preds = %bb.c, %bb.d
  %i.f = phi i64 [ %i.e, %bb.d ], [ 15, %bb.c ]
  %i.g = lshr i64 %2, 8
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr @_ZN11duckdb_zstdL8algoTimeE, i64 %i.f ; 4 uses
  %i.j = load i32, ptr %i.i, align 16, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !109
  %i.m = mul i32 %i.l, %i.h
  %i.n = add i32 %i.m, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !109
  %i.s = mul i32 %i.r, %i.h
  %i.t = add i32 %i.s, %i.p                       ; 2 uses
  %i.u = lshr i32 %i.t, 5
  %i.v = add i32 %i.u, %i.t
  %.not = icmp ult i32 %i.v, %i.n
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit
  %i.w = tail call noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi(ptr noundef %0, ptr noundef %3, i64 noundef range(i64 1, 0) %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.x = icmp ult i64 %i.w, -119
  br i1 %i.x, label %bb.f, label %_ZN11duckdb_zstdL27HUF_decompress4X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.f:                                             ; preds = %bb.e
  %.not23.i = icmp ult i64 %i.w, %4
  br i1 %.not23.i, label %bb.g, label %_ZN11duckdb_zstdL27HUF_decompress4X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %i.w
  %i.z = sub nuw i64 %4, %i.w
  %i.aa = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress4X2_usingDTable_internalEPvmPKvmPKji(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %i.y, i64 noundef %i.z, ptr noundef %0, i32 noundef %7)
  br label %_ZN11duckdb_zstdL27HUF_decompress4X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.h:                                             ; preds = %_ZN11duckdb_zstd17HUF_selectDecoderEmm.exit
  %i.ab = tail call noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX1_wkspEPjPKvmPvmi(ptr noundef %0, ptr noundef %3, i64 noundef range(i64 1, 0) %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.ac = icmp ult i64 %i.ab, -119
  br i1 %i.ac, label %bb.i, label %_ZN11duckdb_zstdL27HUF_decompress4X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.i:                                             ; preds = %bb.h
  %.not23.i24 = icmp ult i64 %i.ab, %4
  br i1 %.not23.i24, label %bb.j, label %_ZN11duckdb_zstdL27HUF_decompress4X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  %i.ae = sub nuw i64 %4, %i.ab
  %i.af = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress4X1_usingDTable_internalEPvmPKvmPKji(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %i.ad, i64 noundef %i.ae, ptr noundef %0, i32 noundef %7)
  br label %_ZN11duckdb_zstdL27HUF_decompress4X2_DCtx_wkspEPjPvmPKvmS1_mi.exit

_ZN11duckdb_zstdL27HUF_decompress4X2_DCtx_wkspEPjPvmPKvmS1_mi.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b, %bb.a
  %.0 = phi i64 [ -20, %bb.b ], [ -70, %bb.a ], [ -72, %bb.f ], [ %i.aa, %bb.g ], [ %i.w, %bb.e ], [ %i.af, %bb.j ], [ %i.ab, %bb.h ], [ -72, %bb.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bmi2EPvmPKvmPKj(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bodyEPvmPKvmPKj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
bb.af:                                            ; preds = %.loopexit
  %i.ks = and i32 %.sroa.31.1, 63
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = shl i64 %.sroa.0.1, %i.kt
  %i.kv = sub nsw i32 0, %.sroa.3.0.extract.shift.i304
  %i.kw = and i32 %i.kv, 63
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = lshr i64 %i.ku, %i.kx
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ky ; 4 uses
  %i.la = load i8, ptr %i.kz, align 2
  store i8 %i.la, ptr %.7.i, align 1
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 3
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !100
  %i.ld = icmp eq i8 %i.lc, 1
  br i1 %i.ld, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %i.lf = load i8, ptr %i.le, align 2, !tbaa !97
  %i.lg = zext i8 %i.lf to i32
  %i.lh = add i32 %.sroa.31.1, %i.lg
  br label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit

bb.ah:                                            ; preds = %bb.af
  %i.li = icmp ult i32 %.sroa.31.1, 64
  br i1 %i.li, label %bb.ai, label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit

bb.ai:                                            ; preds = %bb.ah
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %i.lk = load i8, ptr %i.lj, align 2, !tbaa !97
  %i.ll = zext i8 %i.lk to i32
  %i.lm = add nuw nsw i32 %.sroa.31.1, %i.ll
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.lm, i32 64)
  br label %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit

_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit: ; preds = %bb.ah, %bb.ag, %bb.ai, %.loopexit
  %.sroa.31.6 = phi i32 [ %.sroa.31.1, %.loopexit ], [ %i.lh, %bb.ag ], [ %.sroa.31.1, %bb.ah ], [ %spec.select, %bb.ai ]
  %i.ln = icmp eq ptr %.sroa.9790.1, %2
  %.sroa.31.6.fr = freeze i32 %.sroa.31.6
  %.not = icmp eq i32 %.sroa.31.6.fr, 64
  %or.cond = and i1 %i.ln, %.not
  %spec.select201 = select i1 %or.cond, i64 %1, i64 -20
  br label %_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bodyEPvmPKvmPKj.exit

_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bodyEPvmPKvmPKj.exit: ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit, %bb.k, %bb.a, %bb.c, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit
  %.1.i = phi i64 [ %3, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ], [ %spec.select201, %_ZN11duckdb_zstdL18HUF_decodeStreamX2EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX2Ej.exit ], [ -1, %bb.c ], [ -20, %bb.k ], [ -72, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i64 1, 0) i64 @_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12), (16, 40)) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !116
  %i.e = icmp ugt i64 %2, 7
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !121
  %.val = load i64, ptr %i.g, align 1, !tbaa !32
  store i64 %.val, ptr %0, align 8, !tbaa !123
  %i.i = getelementptr i8, ptr %i.f, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7     ; 2 uses
  %.not50 = icmp eq i8 %i.j, 0
  br i1 %.not50, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.k = zext i8 %i.j to i32
  %i.l = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.k, i1 true)
  %i.m = xor i32 %i.l, 31
  %i.n = sub nuw nsw i32 8, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.n, ptr %i.o, align 8, !tbaa !120
  br label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !120
  br label %bb.p

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.q, align 8, !tbaa !121
  %i.r = load i8, ptr %1, align 1, !tbaa !7
  %i.s = zext i8 %i.r to i64                      ; 7 uses
  store i64 %i.s, ptr %0, align 8, !tbaa !123
  switch i64 %2, label %bb.m [
    i64 7, label %bb.g
    i64 6, label %bb.h
    i64 5, label %bb.i
    i64 4, label %bb.j
    i64 3, label %bb.k
    i64 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.u = load i8, ptr %i.t, align 1, !tbaa !7
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 48
  %i.x = or disjoint i64 %i.w, %i.s               ; 2 uses
  store i64 %i.x, ptr %0, align 8, !tbaa !123
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i64 [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !7
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = add nuw nsw i64 %i.ac, %i.y             ; 2 uses
  store i64 %i.ad, ptr %0, align 8, !tbaa !123
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ae = phi i64 [ %i.ad, %bb.h ], [ %i.s, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !7
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 32
  %i.aj = add nuw nsw i64 %i.ai, %i.ae            ; 2 uses
  store i64 %i.aj, ptr %0, align 8, !tbaa !123
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ak = phi i64 [ %i.aj, %bb.i ], [ %i.s, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !7
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 24
  %i.ap = add nuw nsw i64 %i.ao, %i.ak            ; 2 uses
  store i64 %i.ap, ptr %0, align 8, !tbaa !123
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.aq = phi i64 [ %i.ap, %bb.j ], [ %i.s, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !7
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 16
  %i.av = add nuw nsw i64 %i.au, %i.aq            ; 2 uses
  store i64 %i.av, ptr %0, align 8, !tbaa !123
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.aw = phi i64 [ %i.av, %bb.k ], [ %i.s, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !7
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = add nuw nsw i64 %i.ba, %i.aw
  store i64 %i.bb, ptr %0, align 8, !tbaa !123
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l
  %i.bc = getelementptr i8, ptr %1, i64 %2
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !7   ; 2 uses
  %.not = icmp eq i8 %i.be, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bf, align 8, !tbaa !120
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bg = zext i8 %i.be to i32
  %i.bh = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bg, i1 true)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = trunc nuw nsw i64 %2 to i32
  %i.bk = shl nuw nsw i32 %i.bj, 3
  %i.bl = sub nsw i32 %i.bh, %i.bk
  %i.bm = add nsw i32 %i.bl, 41
  store i32 %i.bm, ptr %i.bi, align 8, !tbaa !120
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread, %bb.n, %bb.e, %bb.b
  %.2 = phi i64 [ -72, %bb.b ], [ -20, %bb.n ], [ -1, %bb.e ], [ %2, %.thread ], [ %2, %bb.o ]
  ret i64 %.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bmi2EPvmPKvmPKj(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #10 {
bb.a:
  %5 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %.idx.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  %.val = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i = lshr i32 %.val, 16 ; 2 uses
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bodyEPvmPKvmPKj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 7
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  %i.e = getelementptr i8, ptr %.ptr, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !7     ; 2 uses
  %.not50.i = icmp eq i8 %i.f, 0
  br i1 %.not50.i, label %_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bodyEPvmPKvmPKj.exit, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load i8, ptr %2, align 1, !tbaa !7
  %i.h = zext i8 %i.g to i64                      ; 7 uses
  switch i64 %3, label %bb.k [
    i64 7, label %bb.e
    i64 6, label %bb.f
    i64 5, label %bb.g
    i64 4, label %bb.h
    i64 3, label %bb.i
    i64 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 48
  %i.m = or disjoint i64 %i.l, %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = phi i64 [ %i.m, %bb.e ], [ %i.h, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 40
  %i.s = add nuw nsw i64 %i.r, %i.n
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.t = phi i64 [ %i.s, %bb.f ], [ %i.h, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 32
  %i.y = add nuw nsw i64 %i.x, %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.z = phi i64 [ %i.y, %bb.g ], [ %i.h, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !7
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 24
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.af = phi i64 [ %i.ae, %bb.h ], [ %i.h, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 16
  %i.ak = add nuw nsw i64 %i.aj, %i.af
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.al = phi i64 [ %i.ak, %bb.i ], [ %i.h, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !7
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 8
  %i.aq = add nuw nsw i64 %i.ap, %i.al
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %.sroa.0.4 = phi i64 [ %i.h, %bb.d ], [ %i.aq, %bb.j ] ; 2 uses
  %i.ar = getelementptr i8, ptr %2, i64 %3
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !7   ; 2 uses
  %.not.i16 = icmp eq i8 %i.at, 0
  br i1 %.not.i16, label %_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bodyEPvmPKvmPKj.exit, label %.thread

_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit: ; preds = %bb.c
  %.add = add nsw i64 %3, -8                      ; 5 uses
  %.ptr86 = getelementptr inbounds i8, ptr %2, i64 %.add
  %.val.i = load i64, ptr %.ptr86, align 1, !tbaa !32 ; 2 uses
  %i.au = zext i8 %i.f to i32
  %i.av = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.au, i1 true)
  %i.aw = xor i32 %i.av, 31
  %i.ax = sub nuw nsw i32 8, %i.aw                ; 6 uses
  %i.ay = icmp ult i64 %3, -119
  br i1 %i.ay, label %bb.l, label %_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bodyEPvmPKvmPKj.exit

bb.l:                                             ; preds = %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit
  %.sroa.5030.477.ptr.ptr = getelementptr inbounds i8, ptr %2, i64 %.add ; 3 uses
  %i.az = icmp sgt i64 %1, 3
  br i1 %i.az, label %.lr.ph, label %bb.r

.thread:                                          ; preds = %bb.k
  %i.ba = zext i8 %i.at to i32
  %i.bb = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ba, i1 true)
  %i.bc = trunc nuw nsw i64 %3 to i32
  %i.bd = shl nuw nsw i32 %i.bc, 3
  %reass.sub = sub nsw i32 %i.bb, %i.bd
  %i.be = add nsw i32 %reass.sub, 41              ; 2 uses
  %i.bf = icmp sgt i64 %1, 3
  br i1 %i.bf, label %.lr.ph, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

.lr.ph:                                           ; preds = %.thread, %bb.l
  %.sroa.20.575142 = phi i32 [ %i.be, %.thread ], [ %i.ax, %bb.l ]
  %.sroa.0.576139 = phi i64 [ %.sroa.0.4, %.thread ], [ %.val.i, %bb.l ]
  %.sroa.5030.477.idx138 = phi i64 [ 0, %.thread ], [ %.add, %bb.l ]
  %i.bg = getelementptr inbounds i8, ptr %i.a, i64 -3
  %i.bh = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.bi = and i32 %i.bh, 63
  %i.bj = zext nneg i32 %i.bi to i64              ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.q
  %.0.i105 = phi ptr [ %0, %.lr.ph ], [ %i.dn, %bb.q ] ; 8 uses
  %.sroa.5030.2.idx104 = phi i64 [ %.sroa.5030.477.idx138, %.lr.ph ], [ %.sroa.5030.3.idx, %bb.q ] ; 5 uses
  %.sroa.0.2103 = phi i64 [ %.sroa.0.576139, %.lr.ph ], [ %.sroa.0.3, %bb.q ]
  %.sroa.20.3102 = phi i32 [ %.sroa.20.575142, %.lr.ph ], [ %i.dm, %bb.q ] ; 5 uses
  %.not.i37.i = icmp slt i64 %.sroa.5030.2.idx104, 8
  br i1 %.not.i37.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = lshr i32 %.sroa.20.3102, 3
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = and i32 %.sroa.20.3102, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i

bb.o:                                             ; preds = %bb.m
  %i.bn = icmp eq i64 %.sroa.5030.2.idx104, 0
  br i1 %i.bn, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = lshr i32 %.sroa.20.3102, 3
  %i.bp = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.bq = icmp sge i64 %.sroa.5030.2.idx104, %i.bp
  %.021.i39.i91 = tail call i64 @llvm.smin.i64(i64 %.sroa.5030.2.idx104, i64 %i.bp) ; 2 uses
  %.021.i39.i = trunc i64 %.021.i39.i91 to i32
  %i.br = and i64 %.021.i39.i91, 4294967295
  %i.bs = shl i32 %.021.i39.i, 3
  %i.bt = sub i32 %.sroa.20.3102, %i.bs
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i: ; preds = %bb.p, %bb.n
  %.sroa.20.4 = phi i32 [ %i.bm, %bb.n ], [ %i.bt, %bb.p ] ; 3 uses
  %.pn = phi i64 [ %i.bl, %bb.n ], [ %i.br, %bb.p ]
  %.022.i38.i = phi i1 [ true, %bb.n ], [ %i.bq, %bb.p ]
  %.sroa.5030.3.idx = sub nsw i64 %.sroa.5030.2.idx104, %.pn ; 3 uses
  %.sroa.5030.3 = getelementptr inbounds i8, ptr %2, i64 %.sroa.5030.3.idx
  %.sroa.0.3 = load i64, ptr %.sroa.5030.3, align 1, !tbaa !32 ; 7 uses
  %i.bu = icmp ult ptr %.0.i105, %i.bg
  %i.bv = and i1 %i.bu, %.022.i38.i
  br i1 %i.bv, label %bb.q, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit

bb.q:                                             ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i
  %i.bw = and i32 %.sroa.20.4, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl i64 %.sroa.0.3, %i.bx
  %i.bz = lshr i64 %i.by, %i.bj
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !110
  %i.cd = load i8, ptr %i.ca, align 1, !tbaa !112
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add i32 %.sroa.20.4, %i.ce              ; 2 uses
  store i8 %i.cc, ptr %.0.i105, align 1, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i105, i64 1
  %i.ch = and i32 %i.cf, 63
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl i64 %.sroa.0.3, %i.ci
  %i.ck = lshr i64 %i.cj, %i.bj
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !110
  %i.co = load i8, ptr %i.cl, align 1, !tbaa !112
  %i.cp = zext i8 %i.co to i32
  %i.cq = add i32 %i.cf, %i.cp                    ; 2 uses
  store i8 %i.cn, ptr %i.cg, align 1, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i105, i64 2
  %i.cs = and i32 %i.cq, 63
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl i64 %.sroa.0.3, %i.ct
  %i.cv = lshr i64 %i.cu, %i.bj
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !110
  %i.cz = load i8, ptr %i.cw, align 1, !tbaa !112
  %i.da = zext i8 %i.cz to i32
  %i.db = add i32 %i.cq, %i.da                    ; 2 uses
  store i8 %i.cy, ptr %i.cr, align 1, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i105, i64 3
  %i.dd = and i32 %i.db, 63
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = shl i64 %.sroa.0.3, %i.de
  %i.dg = lshr i64 %i.df, %i.bj
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !110
  %i.dk = load i8, ptr %i.dh, align 1, !tbaa !112
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add i32 %i.db, %i.dl                    ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i105, i64 4 ; 2 uses
  store i8 %i.dj, ptr %i.dc, align 1, !tbaa !7
  %i.do = icmp ugt i32 %i.dm, 64
  br i1 %i.do, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.m, !prof !101, !llvm.loop !113

bb.r:                                             ; preds = %bb.l
  %.not.i.i = icmp slt i64 %3, 16
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = lshr i32 %i.ax, 3
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr inbounds i8, ptr %.sroa.5030.477.ptr.ptr, i64 %i.dr ; 2 uses
  %i.dt = and i32 %i.ax, 7
  %.val.i18 = load i64, ptr %i.ds, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.t:                                             ; preds = %bb.r
  %i.du = icmp eq i64 %.add, 0
  br i1 %i.du, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dv = lshr i32 %i.ax, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %.021.i.i87 = tail call i64 @llvm.smin.i64(i64 %.add, i64 %i.dw) ; 2 uses
  %.021.i.i = trunc i64 %.021.i.i87 to i32
  %i.dx = and i64 %.021.i.i87, 4294967295
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %.sroa.5030.477.ptr.ptr, i64 %i.dy ; 2 uses
  %i.ea = shl i32 %.021.i.i, 3
  %i.eb = sub i32 %i.ax, %i.ea
  %.val5 = load i64, ptr %i.dz, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i
  %.sroa.5030.3.le = getelementptr inbounds i8, ptr %2, i64 %.sroa.5030.3.idx
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %bb.o, %bb.q, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit, %.thread, %bb.t, %bb.s, %bb.u
  %.sroa.20.1 = phi i32 [ %i.ax, %bb.t ], [ %i.eb, %bb.u ], [ %i.dt, %bb.s ], [ %i.be, %.thread ], [ %.sroa.20.4, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit ], [ %.sroa.20.3102, %bb.o ], [ %i.dm, %bb.q ]
  %.sroa.0.1 = phi i64 [ %.val.i, %bb.t ], [ %.val5, %bb.u ], [ %.val.i18, %bb.s ], [ %.sroa.0.4, %.thread ], [ %.sroa.0.3, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit ], [ %.sroa.0.2103, %bb.o ], [ %.sroa.0.3, %bb.q ] ; 3 uses
  %.sroa.5030.1 = phi ptr [ %.sroa.5030.477.ptr.ptr, %bb.t ], [ %i.dz, %bb.u ], [ %i.ds, %bb.s ], [ %2, %.thread ], [ %.sroa.5030.3.le, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit ], [ %2, %bb.o ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.q ]
  %.3.i = phi ptr [ %0, %bb.t ], [ %0, %bb.u ], [ %0, %bb.s ], [ %0, %.thread ], [ %.0.i105, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit ], [ %.0.i105, %bb.o ], [ %i.dn, %bb.q ] ; 6 uses
  %.sroa.20.2.fr109 = freeze i32 %.sroa.20.1      ; 4 uses
  %i.ec = icmp ult ptr %.3.i, %i.a
  br i1 %i.ec, label %.lr.ph112, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit

.lr.ph112:                                        ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %.3.i129 = ptrtoaddr ptr %.3.i to i64           ; 2 uses
  %i.ed = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.ee = and i32 %i.ed, 63
  %i.ef = zext nneg i32 %i.ee to i64              ; 3 uses
  %i.eg = add i64 %.idx.i, %5
  %i.eh = sub i64 %i.eg, %.3.i129                 ; 2 uses
  %scevgep = getelementptr i8, ptr %.3.i, i64 %i.eh
  %i.ei = add i64 %.idx.i, %5
  %.neg = add i64 %.3.i129, 1
  %xtraiter = and i64 %i.eh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph112
  %i.ej = and i32 %.sroa.20.2.fr109, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl i64 %.sroa.0.1, %i.ek
  %i.em = lshr i64 %i.el, %i.ef
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !110
  %i.eq = load i8, ptr %i.en, align 1, !tbaa !112
  %.fr115.prol = freeze i8 %i.eq
  %i.er = zext i8 %.fr115.prol to i32
  %i.es = add i32 %.sroa.20.2.fr109, %i.er        ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  store i8 %i.ep, ptr %.3.i, align 1, !tbaa !7
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph112
  %.lcssa.unr = phi i32 [ poison, %.lr.ph112 ], [ %i.es, %.prol.loopexit.unr-lcssa ]
  %.sroa.20.2.fr111.unr = phi i32 [ %.sroa.20.2.fr109, %.lr.ph112 ], [ %i.es, %.prol.loopexit.unr-lcssa ]
  %.6.i110.unr = phi ptr [ %.3.i, %.lr.ph112 ], [ %i.et, %.prol.loopexit.unr-lcssa ]
  %i.eu = icmp eq i64 %i.ei, %.neg
  br i1 %i.eu, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit, label %.lr.ph112.new

.lr.ph112.new:                                    ; preds = %.prol.loopexit, %.lr.ph112.new
  %.sroa.20.2.fr111 = phi i32 [ %i.fp, %.lr.ph112.new ], [ %.sroa.20.2.fr111.unr, %.prol.loopexit ] ; 2 uses
  %.6.i110 = phi ptr [ %i.fq, %.lr.ph112.new ], [ %.6.i110.unr, %.prol.loopexit ] ; 3 uses
  %i.ev = and i32 %.sroa.20.2.fr111, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = shl i64 %.sroa.0.1, %i.ew
  %i.ey = lshr i64 %i.ex, %i.ef
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !110
  %i.fc = load i8, ptr %i.ez, align 1, !tbaa !112
  %.fr115 = freeze i8 %i.fc
  %i.fd = zext i8 %.fr115 to i32
  %i.fe = add i32 %.sroa.20.2.fr111, %i.fd        ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.6.i110, i64 1
  store i8 %i.fb, ptr %.6.i110, align 1, !tbaa !7
  %i.fg = and i32 %i.fe, 63
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = shl i64 %.sroa.0.1, %i.fh
  %i.fj = lshr i64 %i.fi, %i.ef
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !110
  %i.fn = load i8, ptr %i.fk, align 1, !tbaa !112
  %.fr115.1 = freeze i8 %i.fn
  %i.fo = zext i8 %.fr115.1 to i32
  %i.fp = add i32 %i.fe, %i.fo                    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.6.i110, i64 2 ; 2 uses
  store i8 %i.fm, ptr %i.ff, align 1, !tbaa !7
  %exitcond.not.1 = icmp eq ptr %i.fq, %scevgep
  br i1 %exitcond.not.1, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit, label %.lr.ph112.new, !llvm.loop !114

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit: ; preds = %.prol.loopexit, %.lr.ph112.new, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %.sroa.20.2.fr.lcssa = phi i32 [ %.sroa.20.2.fr109, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.fp, %.lr.ph112.new ]
  %i.fr = icmp eq ptr %.sroa.5030.1, %2
  %.not = icmp eq i32 %.sroa.20.2.fr.lcssa, 64
  %or.cond = and i1 %i.fr, %.not
  %spec.select = select i1 %or.cond, i64 %1, i64 -20
  br label %_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bodyEPvmPKvmPKj.exit

_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bodyEPvmPKvmPKj.exit: ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit, %bb.k, %bb.a, %bb.c, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit
  %.1.i = phi i64 [ %3, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit ], [ %spec.select, %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit ], [ -1, %bb.c ], [ -20, %bb.k ], [ -72, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN11duckdb_zstdL50HUF_decompress4X2_usingDTable_internal_fast_c_loopEPNS_22HUF_DecompressFastArgsE(ptr nofree noundef captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0130.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.61.0.copyload = load i64, ptr %.sroa.61.0..sroa_idx, align 8
  %.sroa.0290.0.copyload = load ptr, ptr %0, align 8
  %.sroa.7292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.7292.0.copyload = load ptr, ptr %.sroa.7292.0..sroa_idx, align 8
  %.sroa.11296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.11296.0.copyload = load ptr, ptr %.sroa.11296.0..sroa_idx, align 8
  %.sroa.15300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.15300.0.copyload = load ptr, ptr %.sroa.15300.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0279.0.copyload = load ptr, ptr %i.f, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.15.0.copyload = load ptr, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %.sroa.7.0.copyload to i64
  %i.k = ptrtoint ptr %.sroa.11.0.copyload to i64
  %i.l = ptrtoint ptr %.sroa.15.0.copyload to i64
  %i.m = ptrtoint ptr %i.h to i64
  br label %bb.b

.loopexit:                                        ; preds = %.preheader
  br label %bb.b, !llvm.loop !131

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.sroa.15.0 = phi ptr [ %.sroa.15.0.copyload, %bb.a ], [ %i.gy, %.loopexit ] ; 4 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.0.copyload, %bb.a ], [ %i.eu, %.loopexit ] ; 3 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.a ], [ %i.en, %.loopexit ] ; 3 uses
  %.sroa.0279.0 = phi ptr [ %.sroa.0279.0.copyload, %bb.a ], [ %i.eg, %.loopexit ] ; 3 uses
  %.sroa.0290.0 = phi ptr [ %.sroa.0290.0.copyload, %bb.a ], [ %i.fn, %.loopexit ] ; 4 uses
  %.sroa.7292.0 = phi ptr [ %.sroa.7292.0.copyload, %bb.a ], [ %i.gb, %.loopexit ] ; 4 uses
  %.sroa.11296.0 = phi ptr [ %.sroa.11296.0.copyload, %bb.a ], [ %i.gp, %.loopexit ] ; 4 uses
  %.sroa.15300.0 = phi ptr [ %.sroa.15300.0.copyload, %bb.a ], [ %i.hd, %.loopexit ] ; 3 uses
  %.sroa.0130.0 = phi i64 [ %.sroa.0130.0.copyload, %bb.a ], [ %i.fp, %.loopexit ] ; 2 uses
  %.sroa.23.0 = phi i64 [ %.sroa.23.0.copyload, %bb.a ], [ %i.gd, %.loopexit ] ; 2 uses
  %.sroa.42.0 = phi i64 [ %.sroa.42.0.copyload, %bb.a ], [ %i.gr, %.loopexit ] ; 2 uses
  %.sroa.61.0 = phi i64 [ %.sroa.61.0.copyload, %bb.a ], [ %i.hf, %.loopexit ] ; 2 uses
  %i.n = ptrtoint ptr %.sroa.0290.0 to i64
  %i.o = sub i64 %i.n, %i.i
  %i.p = udiv i64 %i.o, 7
  %i.q = ptrtoint ptr %.sroa.0279.0 to i64
  %i.r = sub i64 %i.j, %i.q
  %i.s = udiv i64 %i.r, 10
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.s)
  %i.u = ptrtoint ptr %.sroa.7.0 to i64
  %i.v = sub i64 %i.k, %i.u
  %i.w = udiv i64 %i.v, 10
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.w)
  %i.y = ptrtoint ptr %.sroa.11.0 to i64
  %i.z = sub i64 %i.l, %i.y
  %i.aa = udiv i64 %i.z, 10
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.aa)
  %i.ac = ptrtoint ptr %.sroa.15.0 to i64
  %i.ad = sub i64 %i.m, %i.ac
  %i.ae = udiv i64 %i.ad, 10
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ae) ; 2 uses
  %i.ag = mul nuw nsw i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.15.0, i64 %i.ag
  %i.ai = icmp eq i64 %i.af, 0
  %i.aj = icmp ult ptr %.sroa.7292.0, %.sroa.0290.0
  %or.cond = select i1 %i.ai, i1 true, i1 %i.aj
  %i.ak = icmp ult ptr %.sroa.11296.0, %.sroa.7292.0
  %or.cond303 = select i1 %or.cond, i1 true, i1 %i.ak
  %i.al = icmp ult ptr %.sroa.15300.0, %.sroa.11296.0
  %or.cond304 = select i1 %or.cond303, i1 true, i1 %i.al
  br i1 %or.cond304, label %.loopexit210, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %i.am = phi ptr [ %i.hd, %.preheader ], [ %.sroa.15300.0, %bb.b ]
  %i.an = phi ptr [ %i.gp, %.preheader ], [ %.sroa.11296.0, %bb.b ]
  %i.ao = phi ptr [ %i.gb, %.preheader ], [ %.sroa.7292.0, %bb.b ]
  %i.ap = phi ptr [ %i.fn, %.preheader ], [ %.sroa.0290.0, %bb.b ]
  %i.aq = phi ptr [ %i.gy, %.preheader ], [ %.sroa.15.0, %bb.b ] ; 2 uses
  %i.ar = phi ptr [ %i.eu, %.preheader ], [ %.sroa.11.0, %bb.b ] ; 2 uses
  %i.as = phi ptr [ %i.en, %.preheader ], [ %.sroa.7.0, %bb.b ] ; 2 uses
  %i.at = phi ptr [ %i.eg, %.preheader ], [ %.sroa.0279.0, %bb.b ] ; 2 uses
  %.sroa.0130.1 = phi i64 [ %i.fp, %.preheader ], [ %.sroa.0130.0, %bb.b ] ; 2 uses
  %.sroa.23.1 = phi i64 [ %i.gd, %.preheader ], [ %.sroa.23.0, %bb.b ] ; 2 uses
  %.sroa.42.1 = phi i64 [ %i.gr, %.preheader ], [ %.sroa.42.0, %bb.b ] ; 2 uses
  %.sroa.61.1 = phi i64 [ %i.hf, %.preheader ], [ %.sroa.61.0, %bb.b ] ; 2 uses
  %i.au = lshr i64 %.sroa.0130.1, 53
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.au ; 3 uses
  %.sroa.089.0.copyload = load i16, ptr %i.av, align 2, !tbaa !115
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %.sroa.490.0.copyload = load i8, ptr %.sroa.490.0..sroa_idx, align 2, !tbaa !7
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %.sroa.591.0.copyload = load i8, ptr %.sroa.591.0..sroa_idx, align 1, !tbaa !7
  store i16 %.sroa.089.0.copyload, ptr %i.at, align 1, !tbaa !115
  %i.aw = and i8 %.sroa.490.0.copyload, 63
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = shl i64 %.sroa.0130.1, %i.ax            ; 2 uses
  %i.az = zext i8 %.sroa.591.0.copyload to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.az ; 2 uses
  %i.bb = lshr i64 %.sroa.23.1, 53
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bb ; 3 uses
  %.sroa.085.0.copyload = load i16, ptr %i.bc, align 2, !tbaa !115
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %.sroa.486.0.copyload = load i8, ptr %.sroa.486.0..sroa_idx, align 2, !tbaa !7
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %.sroa.587.0.copyload = load i8, ptr %.sroa.587.0..sroa_idx, align 1, !tbaa !7
  store i16 %.sroa.085.0.copyload, ptr %i.as, align 1, !tbaa !115
  %i.bd = and i8 %.sroa.486.0.copyload, 63
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL50HUF_decompress4X1_usingDTable_internal_fast_c_loopEPNS_22HUF_DecompressFastArgsE:bb.a
  %i.cp = lshr i64 %i.bl, 53
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !115 ; 2 uses
  %i.cs = and i16 %i.cr, 63
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = shl i64 %i.bl, %i.ct                    ; 2 uses
  %i.cv = lshr i16 %i.cr, 8
  %i.cw = trunc nuw i16 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 1
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !7
  %i.cy = lshr i64 %i.bt, 53
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !115 ; 2 uses
  %i.db = and i16 %i.da, 63
  %i.dc = zext nneg i16 %i.db to i64
  %i.dd = shl i64 %i.bt, %i.dc                    ; 2 uses
  %i.de = lshr i16 %i.da, 8
  %i.df = trunc nuw i16 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !7
  %i.dh = lshr i64 %i.cc, 53
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !115 ; 2 uses
  %i.dk = and i16 %i.dj, 63
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = shl i64 %i.cc, %i.dl                    ; 2 uses
  %i.dn = lshr i16 %i.dj, 8
  %i.do = trunc nuw i16 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 2
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !7
  %i.dq = lshr i64 %i.cl, 53
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !115 ; 2 uses
  %i.dt = and i16 %i.ds, 63
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = shl i64 %i.cl, %i.du                    ; 2 uses
  %i.dw = lshr i16 %i.ds, 8
  %i.dx = trunc nuw i16 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 2
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !7
  %i.dz = lshr i64 %i.cu, 53
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !115 ; 2 uses
  %i.ec = and i16 %i.eb, 63
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = shl i64 %i.cu, %i.ed                    ; 2 uses
  %i.ef = lshr i16 %i.eb, 8
  %i.eg = trunc nuw i16 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 2
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !7
  %i.ei = lshr i64 %i.dd, 53
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !115 ; 2 uses
  %i.el = and i16 %i.ek, 63
  %i.em = zext nneg i16 %i.el to i64
  %i.en = shl i64 %i.dd, %i.em                    ; 2 uses
  %i.eo = lshr i16 %i.ek, 8
  %i.ep = trunc nuw i16 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !7
  %i.er = lshr i64 %i.dm, 53
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !115 ; 2 uses
  %i.eu = and i16 %i.et, 63
  %i.ev = zext nneg i16 %i.eu to i64
  %i.ew = shl i64 %i.dm, %i.ev                    ; 2 uses
  %i.ex = lshr i16 %i.et, 8
  %i.ey = trunc nuw i16 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 3
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !7
  %i.fa = lshr i64 %i.dv, 53
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fa
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !115 ; 2 uses
  %i.fd = and i16 %i.fc, 63
  %i.fe = zext nneg i16 %i.fd to i64
  %i.ff = shl i64 %i.dv, %i.fe                    ; 2 uses
  %i.fg = lshr i16 %i.fc, 8
  %i.fh = trunc nuw i16 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 3
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !7
  %i.fj = lshr i64 %i.ee, 53
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !115 ; 2 uses
  %i.fm = and i16 %i.fl, 63
  %i.fn = zext nneg i16 %i.fm to i64
  %i.fo = shl i64 %i.ee, %i.fn                    ; 2 uses
  %i.fp = lshr i16 %i.fl, 8
  %i.fq = trunc nuw i16 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 3
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !7
  %i.fs = lshr i64 %i.en, 53
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !115 ; 2 uses
  %i.fv = and i16 %i.fu, 63
  %i.fw = zext nneg i16 %i.fv to i64
  %i.fx = shl i64 %i.en, %i.fw
  %i.fy = lshr i16 %i.fu, 8
  %i.fz = trunc nuw i16 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !7
  %i.gb = lshr i64 %i.ew, 53
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gb
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !115 ; 2 uses
  %i.ge = and i16 %i.gd, 63
  %i.gf = zext nneg i16 %i.ge to i64
  %i.gg = shl i64 %i.ew, %i.gf
  %i.gh = lshr i16 %i.gd, 8
  %i.gi = trunc nuw i16 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 4
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !7
  %i.gk = lshr i64 %i.ff, 53
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gk
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !115 ; 2 uses
  %i.gn = and i16 %i.gm, 63
  %i.go = zext nneg i16 %i.gn to i64
  %i.gp = shl i64 %i.ff, %i.go
  %i.gq = lshr i16 %i.gm, 8
  %i.gr = trunc nuw i16 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 4
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !7
  %i.gt = lshr i64 %i.fo, 53
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !115 ; 2 uses
  %i.gw = and i16 %i.gv, 63
  %i.gx = zext nneg i16 %i.gw to i64
  %i.gy = shl i64 %i.fo, %i.gx
  %i.gz = lshr i16 %i.gv, 8
  %i.ha = trunc nuw i16 %i.gz to i8
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 4
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !7
  %i.hc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fx, i1 true) ; 2 uses
  %i.hd = and i64 %i.hc, 7
  %i.he = lshr i64 %i.hc, 3
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 5 ; 3 uses
  %i.hg = sub nsw i64 0, %i.he
  %i.hh = getelementptr inbounds i8, ptr %.sroa.0.1303, i64 %i.hg ; 5 uses
  %.val207 = load i64, ptr %i.hh, align 1, !tbaa !32
  %i.hi = or i64 %.val207, 1
  %i.hj = shl i64 %i.hi, %i.hd                    ; 3 uses
  %i.hk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gg, i1 true) ; 2 uses
  %i.hl = and i64 %i.hk, 7
  %i.hm = lshr i64 %i.hk, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 5 ; 3 uses
  %i.ho = sub nsw i64 0, %i.hm
  %i.hp = getelementptr inbounds i8, ptr %.sroa.9.1, i64 %i.ho ; 4 uses
  %.val206 = load i64, ptr %i.hp, align 1, !tbaa !32
  %i.hq = or i64 %.val206, 1
  %i.hr = shl i64 %i.hq, %i.hl                    ; 3 uses
  %i.hs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gp, i1 true) ; 2 uses
  %i.ht = and i64 %i.hs, 7
  %i.hu = lshr i64 %i.hs, 3
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 5 ; 3 uses
  %i.hw = sub nsw i64 0, %i.hu
  %i.hx = getelementptr inbounds i8, ptr %.sroa.13.1, i64 %i.hw ; 4 uses
  %.val205 = load i64, ptr %i.hx, align 1, !tbaa !32
  %i.hy = or i64 %.val205, 1
  %i.hz = shl i64 %i.hy, %i.ht                    ; 3 uses
  %i.ia = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gy, i1 true) ; 2 uses
  %i.ib = and i64 %i.ia, 7
  %i.ic = lshr i64 %i.ia, 3
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 5 ; 6 uses
  %i.ie = sub nsw i64 0, %i.ic
  %i.if = getelementptr inbounds i8, ptr %.sroa.17.1, i64 %i.ie ; 4 uses
  %.val = load i64, ptr %i.if, align 1, !tbaa !32
  %i.ig = or i64 %.val, 1
  %i.ih = shl i64 %i.ig, %i.ib                    ; 3 uses
  %i.ii = icmp ult ptr %i.id, %i.ae
  br i1 %i.ii, label %.preheader, label %.loopexit, !llvm.loop !135

.loopexit229:                                     ; preds = %.loopexit, %.preheader228, %bb.a
  %.sroa.17.2 = phi ptr [ %.sroa.17.0.copyload, %bb.a ], [ %i.if, %.loopexit ], [ %.sroa.17.0, %.preheader228 ]
  %.sroa.13.2 = phi ptr [ %.sroa.13.0.copyload, %bb.a ], [ %i.hx, %.loopexit ], [ %.sroa.13.0, %.preheader228 ]
  %.sroa.9.2 = phi ptr [ %.sroa.9.0.copyload, %bb.a ], [ %i.hp, %.loopexit ], [ %.sroa.9.0, %.preheader228 ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.copyload290, %bb.a ], [ %i.hh, %.loopexit ], [ %.sroa.0.0, %.preheader228 ]
  %.sroa.0.0253 = phi ptr [ %.sroa.0.0.copyload, %bb.a ], [ %i.hf, %.loopexit ], [ %.sroa.0.0255, %.preheader228 ]
  %.sroa.11.0251 = phi ptr [ %.sroa.11.0.copyload, %bb.a ], [ %i.hn, %.loopexit ], [ %.sroa.11.0256, %.preheader228 ]
  %.sroa.18.0249 = phi ptr [ %.sroa.18.0.copyload, %bb.a ], [ %i.hv, %.loopexit ], [ %.sroa.18.0257, %.preheader228 ]
  %.sroa.25.0247 = phi ptr [ %.sroa.25.0.copyload, %bb.a ], [ %i.id, %.loopexit ], [ %.sroa.25.0258, %.preheader228 ]
  %.sroa.0142.0245 = phi i64 [ %.sroa.0142.0.copyload, %bb.a ], [ %i.hj, %.loopexit ], [ %.sroa.0142.0259, %.preheader228 ]
  %.sroa.23.0243 = phi i64 [ %.sroa.23.0.copyload, %bb.a ], [ %i.hr, %.loopexit ], [ %.sroa.23.0260, %.preheader228 ]
  %.sroa.42.0241 = phi i64 [ %.sroa.42.0.copyload, %bb.a ], [ %i.hz, %.loopexit ], [ %.sroa.42.0261, %.preheader228 ]
  %.sroa.61.0239 = phi i64 [ %.sroa.61.0.copyload, %bb.a ], [ %i.ih, %.loopexit ], [ %.sroa.61.0262, %.preheader228 ]
  store i64 %.sroa.0142.0245, ptr %i.g, align 8
  store i64 %.sroa.23.0243, ptr %.sroa.23.0..sroa_idx, align 8
  store i64 %.sroa.42.0241, ptr %.sroa.42.0..sroa_idx, align 8
  store i64 %.sroa.61.0239, ptr %.sroa.61.0..sroa_idx, align 8
  store ptr %.sroa.0.2, ptr %0, align 8
  store ptr %.sroa.9.2, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %.sroa.13.2, ptr %.sroa.13.0..sroa_idx, align 8
  store ptr %.sroa.17.2, ptr %.sroa.17.0..sroa_idx, align 8
  store ptr %.sroa.0.0253, ptr %i.h, align 8
  store ptr %.sroa.11.0251, ptr %.sroa.11.0..sroa_idx, align 8
  store ptr %.sroa.18.0249, ptr %.sroa.18.0..sroa_idx, align 8
  store ptr %.sroa.25.0247, ptr %.sroa.25.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i64 1, 0) i64 @_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bmi2EPvmPKvmPKj(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly %4) unnamed_addr #7 {
bb.a:
  %5 = ptrtoaddr ptr %0 to i64                    ; 5 uses
  %6 = alloca %"struct.duckdb_zstd::BIT_DStream_t", align 8 ; 25 uses
  %i.a = icmp ult i64 %3, 10
  %i.b = icmp ult i64 %1, 6
  %or.cond.i = or i1 %i.b, %i.a
  br i1 %or.cond.i, label %_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bodyEPvmPKvmPKj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.val86 = load i16, ptr %2, align 1, !tbaa !115 ; 5 uses
  %i.f = zext i16 %.val86 to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val85 = load i16, ptr %i.g, align 1, !tbaa !115 ; 5 uses
  %i.h = zext i16 %.val85 to i64                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val84 = load i16, ptr %i.i, align 1, !tbaa !115 ; 5 uses
  %i.j = zext i16 %.val84 to i64                  ; 2 uses
  %i.k = add nuw nsw i64 %i.f, 6
  %i.l = add nuw nsw i64 %i.k, %i.h
  %i.m = add nuw nsw i64 %i.l, %i.j               ; 2 uses
  %i.n = sub i64 %3, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 12 uses
  %i.p = getelementptr i8, ptr %i.o, i64 %i.f     ; 22 uses
  %i.q = getelementptr i8, ptr %i.p, i64 %i.h     ; 22 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %i.j     ; 4 uses
  %i.s = add i64 %1, 3
  %i.t = lshr i64 %i.s, 2                         ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t ; 8 uses
  %.val = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i = lshr i32 %.val, 16 ; 9 uses
  %i.x = icmp ugt i64 %i.m, %3
  %i.y = mul nuw nsw i64 %i.t, 3
  %i.z = icmp samesign ugt i64 %i.y, %1
  %or.cond180.i = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond180.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i16 %.val86, 0
  br i1 %i.aa, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.ac = icmp ugt i16 %.val86, 7
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %i.p, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7   ; 2 uses
  %.not50.i = icmp eq i8 %i.ae, 0
  br i1 %.not50.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.af = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %.val.i = load i64, ptr %i.af, align 1, !tbaa !32
  %i.ag = zext i8 %i.ae to i32
  %i.ah = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ag, i1 true)
  %i.ai = xor i32 %i.ah, 31
  %i.aj = sub nuw nsw i32 8, %i.ai
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %i.o, align 1, !tbaa !7
  %i.al = zext i8 %i.ak to i64                    ; 7 uses
  switch i16 %.val86, label %bb.m [
    i16 7, label %bb.g
    i16 6, label %bb.h
    i16 5, label %bb.i
    i16 4, label %bb.j
    i16 3, label %bb.k
    i16 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.an = load i8, ptr %i.am, align 1, !tbaa !7
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 48
  %i.aq = or disjoint i64 %i.ap, %i.al
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = phi i64 [ %i.aq, %bb.g ], [ %i.al, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.at = load i8, ptr %i.as, align 1, !tbaa !7
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 40
  %i.aw = add nuw nsw i64 %i.av, %i.ar
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ax = phi i64 [ %i.aw, %bb.h ], [ %i.al, %bb.f ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 32
  %i.bc = add nuw nsw i64 %i.bb, %i.ax
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.bd = phi i64 [ %i.bc, %bb.i ], [ %i.al, %bb.f ]
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !7
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 24
  %i.bi = add nuw nsw i64 %i.bh, %i.bd
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.bj = phi i64 [ %i.bi, %bb.j ], [ %i.al, %bb.f ]
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !7
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 16
  %i.bo = add nuw nsw i64 %i.bn, %i.bj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.bp = phi i64 [ %i.bo, %bb.k ], [ %i.al, %bb.f ]
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 8
  %i.bu = add nuw nsw i64 %i.bt, %i.bp
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.sroa.0247.6 = phi i64 [ %i.al, %bb.f ], [ %i.bu, %bb.l ]
  %i.bv = getelementptr i8, ptr %i.p, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !7   ; 2 uses
  %.not.i87 = icmp eq i8 %i.bw, 0
  br i1 %.not.i87, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = zext i8 %i.bw to i32
  %i.by = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bx, i1 true)
  %i.bz = shl nuw nsw i16 %.val86, 3
  %i.ca = zext nneg i16 %i.bz to i32
  %reass.sub = sub nsw i32 %i.by, %i.ca
  %i.cb = add nsw i32 %reass.sub, 41
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %.sroa.69266.6 = phi ptr [ %i.o, %bb.n ], [ %i.af, %.thread.i ] ; 2 uses
  %.sroa.25248.7 = phi i32 [ %i.cb, %bb.n ], [ %i.aj, %.thread.i ] ; 2 uses
  %.sroa.0247.7 = phi i64 [ %.sroa.0247.6, %bb.n ], [ %.val.i, %.thread.i ] ; 2 uses
  %i.cc = icmp eq i16 %.val85, 0
  br i1 %i.cc, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.ce = icmp ugt i16 %.val85, 7
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr i8, ptr %i.q, i64 -1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !7   ; 2 uses
  %.not50.i91 = icmp eq i8 %i.cg, 0
  br i1 %.not50.i91, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %.thread.i92

.thread.i92:                                      ; preds = %bb.q
  %i.ch = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %.val.i90 = load i64, ptr %i.ch, align 1, !tbaa !32
  %i.ci = zext i8 %i.cg to i32
  %i.cj = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ci, i1 true)
  %i.ck = xor i32 %i.cj, 31
  %i.cl = sub nuw nsw i32 8, %i.ck
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.cm = load i8, ptr %i.p, align 1, !tbaa !7
  %i.cn = zext i8 %i.cm to i64                    ; 7 uses
  switch i16 %.val85, label %bb.y [
    i16 7, label %bb.s
    i16 6, label %bb.t
    i16 5, label %bb.u
    i16 4, label %bb.v
    i16 3, label %bb.w
    i16 2, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !7
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 48
  %i.cs = or disjoint i64 %i.cr, %i.cn
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ct = phi i64 [ %i.cs, %bb.s ], [ %i.cn, %bb.r ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !7
  %i.cw = zext i8 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 40
  %i.cy = add nuw nsw i64 %i.cx, %i.ct
  br label %bb.u
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.js ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !110
  %i.jw = load i8, ptr %i.jt, align 1, !tbaa !112
  %i.jx = zext i8 %i.jw to i32
  %i.jy = add i32 %i.ih, %i.jx                    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0157.i392, i64 2
  store i8 %i.jv, ptr %i.ii, align 1, !tbaa !7
  %i.ka = getelementptr inbounds nuw i8, ptr %.0145.i395, i64 2
  %i.kb = and i32 %i.is, 63
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = shl i64 %.sroa.0247.5390, %i.kc
  %i.ke = lshr i64 %i.kd, %i.gl
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !110
  %i.ki = load i8, ptr %i.kf, align 1, !tbaa !112
  %i.kj = zext i8 %i.ki to i32
  %i.kk = add i32 %i.is, %i.kj                    ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0145.i395, i64 3
  store i8 %i.kh, ptr %i.ka, align 1, !tbaa !7
  %i.km = and i32 %i.jc, 63
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = shl i64 %.sroa.0181.5384, %i.kn
  %i.kp = lshr i64 %i.ko, %i.gl
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !110
  %i.kt = load i8, ptr %i.kq, align 1, !tbaa !112
  %i.ku = zext i8 %i.kt to i32
  %i.kv = add i32 %i.jc, %i.ku                    ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.0149.i394, i64 3
  store i8 %i.ks, ptr %i.jd, align 1, !tbaa !7
  %i.kx = and i32 %i.jn, 63
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = shl i64 %.sroa.0.5388, %i.ky
  %i.la = lshr i64 %i.kz, %i.gl
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !110
  %i.le = load i8, ptr %i.lb, align 1, !tbaa !112
  %i.lf = zext i8 %i.le to i32
  %i.lg = add i32 %i.jn, %i.lf                    ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.0153.i393, i64 3
  store i8 %i.ld, ptr %i.jo, align 1, !tbaa !7
  %i.li = and i32 %i.jy, 63
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = shl i64 %.val.i.i106381382, %i.lj
  %i.ll = lshr i64 %i.lk, %i.gl
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ll ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !110
  %i.lp = load i8, ptr %i.lm, align 1, !tbaa !112
  %i.lq = zext i8 %i.lp to i32
  %i.lr = add i32 %i.jy, %i.lq                    ; 2 uses
  store i8 %i.lo, ptr %i.jz, align 1, !tbaa !7
  %i.ls = getelementptr inbounds nuw i8, ptr %.0157.i392, i64 3
  %i.lt = and i32 %i.kk, 63
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = shl i64 %.sroa.0247.5390, %i.lu
  %i.lw = lshr i64 %i.lv, %i.gl
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.lw ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !110
  %i.ma = load i8, ptr %i.lx, align 1, !tbaa !112
  %i.mb = zext i8 %i.ma to i32
  %i.mc = add i32 %i.kk, %i.mb                    ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0145.i395, i64 4 ; 2 uses
  store i8 %i.lz, ptr %i.kl, align 1, !tbaa !7
  %i.me = and i32 %i.kv, 63
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = shl i64 %.sroa.0181.5384, %i.mf
  %i.mh = lshr i64 %i.mg, %i.gl
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.mh ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !110
  %i.ml = load i8, ptr %i.mi, align 1, !tbaa !112
  %i.mm = zext i8 %i.ml to i32
  %i.mn = add i32 %i.kv, %i.mm                    ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.0149.i394, i64 4 ; 2 uses
  store i8 %i.mk, ptr %i.kw, align 1, !tbaa !7
  %i.mp = and i32 %i.lg, 63
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = shl i64 %.sroa.0.5388, %i.mq
  %i.ms = lshr i64 %i.mr, %i.gl
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ms ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 1
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !110
  %i.mw = load i8, ptr %i.mt, align 1, !tbaa !112
  %i.mx = zext i8 %i.mw to i32
  %i.my = add i32 %i.lg, %i.mx                    ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0153.i393, i64 4 ; 2 uses
  store i8 %i.mv, ptr %i.lh, align 1, !tbaa !7
  %i.na = and i32 %i.lr, 63
  %i.nb = zext nneg i32 %i.na to i64
  %i.nc = shl i64 %.val.i.i106381382, %i.nb
  %i.nd = lshr i64 %i.nc, %i.gl
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.nd ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !110
  %i.nh = load i8, ptr %i.ne, align 1, !tbaa !112
  %i.ni = zext i8 %i.nh to i32
  %i.nj = add i32 %i.lr, %i.ni                    ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0157.i392, i64 4 ; 3 uses
  store i8 %i.ng, ptr %i.ls, align 1, !tbaa !7
  %i.nl = icmp ult ptr %.sroa.69266.5383, %i.ab   ; 2 uses
  br i1 %i.nl, label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit, label %bb.ap, !prof !122

bb.ap:                                            ; preds = %bb.ao
  %i.nm = lshr i32 %i.mc, 3
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = sub nsw i64 0, %i.nn
  %i.np = getelementptr inbounds i8, ptr %.sroa.69266.5383, i64 %i.no ; 2 uses
  %i.nq = and i32 %i.mc, 7
  %.val.i.i = load i64, ptr %i.np, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit

_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit: ; preds = %bb.ao, %bb.ap
  %.sroa.69266.7 = phi ptr [ %.sroa.69266.5383, %bb.ao ], [ %i.np, %bb.ap ] ; 2 uses
  %.sroa.25248.8 = phi i32 [ %i.mc, %bb.ao ], [ %i.nq, %bb.ap ] ; 2 uses
  %.sroa.0247.8 = phi i64 [ %.sroa.0247.5390, %bb.ao ], [ %.val.i.i, %bb.ap ] ; 2 uses
  %i.nr = icmp ult ptr %.sroa.69200.5387, %i.cd
  br i1 %i.nr, label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102, label %bb.aq, !prof !122

bb.aq:                                            ; preds = %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit
  %i.ns = lshr i32 %i.mn, 3
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = sub nsw i64 0, %i.nt
  %i.nv = getelementptr inbounds i8, ptr %.sroa.69200.5387, i64 %i.nu ; 2 uses
  %i.nw = and i32 %i.mn, 7
  %.val.i.i100 = load i64, ptr %i.nv, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102

_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102: ; preds = %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit, %bb.aq
  %.sroa.0181.8 = phi i64 [ %.sroa.0181.5384, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit ], [ %.val.i.i100, %bb.aq ] ; 2 uses
  %.sroa.25182.8 = phi i32 [ %i.mn, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit ], [ %i.nw, %bb.aq ] ; 2 uses
  %.sroa.69200.7 = phi ptr [ %.sroa.69200.5387, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit ], [ %i.nv, %bb.aq ] ; 2 uses
  %.0.i101 = phi i1 [ true, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit ], [ %i.nl, %bb.aq ]
  %i.nx = icmp ult ptr %.sroa.69136.5391, %i.ef
  br i1 %i.nx, label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105, label %bb.ar, !prof !122

bb.ar:                                            ; preds = %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102
  %i.ny = lshr i32 %i.my, 3
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = sub nsw i64 0, %i.nz
  %i.ob = getelementptr inbounds i8, ptr %.sroa.69136.5391, i64 %i.oa ; 2 uses
  %i.oc = and i32 %i.my, 7
  %.val.i.i103 = load i64, ptr %i.ob, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105

_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105: ; preds = %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102, %bb.ar
  %.sroa.0.8 = phi i64 [ %.sroa.0.5388, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102 ], [ %.val.i.i103, %bb.ar ] ; 2 uses
  %.sroa.25.8 = phi i32 [ %i.my, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102 ], [ %i.oc, %bb.ar ] ; 2 uses
  %.sroa.69136.7 = phi ptr [ %.sroa.69136.5391, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102 ], [ %i.ob, %bb.ar ] ; 2 uses
  %.0.i104 = phi i1 [ true, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit102 ], [ %.0.i101, %bb.ar ]
  %i.od = icmp ult ptr %i.gq, %i.gp
  br i1 %i.od, label %..loopexit_crit_edge, label %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit108, !prof !122

_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit108: ; preds = %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105
  %i.oe = lshr i32 %i.nj, 3
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = sub nsw i64 0, %i.of
  %i.oh = getelementptr inbounds i8, ptr %i.gq, i64 %i.og ; 3 uses
  %i.oi = and i32 %i.nj, 7                        ; 2 uses
  %.val.i.i106 = load i64, ptr %i.oh, align 1, !tbaa !32 ; 2 uses
  store i64 %.val.i.i106, ptr %6, align 8, !tbaa !123
  %i.oj = icmp uge ptr %i.nk, %i.d
  %.not176.i = or i1 %.0.i104, %i.oj
  br i1 %.not176.i, label %..loopexit_crit_edge, label %bb.ao, !llvm.loop !126

..loopexit_crit_edge:                             ; preds = %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit108
  %.val37409552 = phi i32 [ %i.oi, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit108 ], [ %i.nj, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105 ]
  %i.ok = phi ptr [ %i.oh, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit108 ], [ %i.gq, %_ZN11duckdb_zstdL21BIT_reloadDStreamFastEPNS_13BIT_DStream_tE.exit105 ]
  store i32 %.val37409552, ptr %i.gm, align 8, !tbaa !120
  store ptr %i.ok, ptr %i.gn, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %bb.an
  %.sroa.69266.0 = phi ptr [ %.sroa.69266.6, %bb.an ], [ %.sroa.69266.7, %..loopexit_crit_edge ] ; 7 uses
  %.sroa.0181.0 = phi i64 [ %.sroa.0181.7, %bb.an ], [ %.sroa.0181.8, %..loopexit_crit_edge ] ; 4 uses
  %.sroa.25182.0 = phi i32 [ %.sroa.25182.7, %bb.an ], [ %.sroa.25182.8, %..loopexit_crit_edge ] ; 9 uses
  %.sroa.25248.0 = phi i32 [ %.sroa.25248.7, %bb.an ], [ %.sroa.25248.8, %..loopexit_crit_edge ] ; 9 uses
  %.sroa.69200.0 = phi ptr [ %.sroa.69200.6, %bb.an ], [ %.sroa.69200.7, %..loopexit_crit_edge ] ; 7 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.7, %bb.an ], [ %.sroa.0.8, %..loopexit_crit_edge ] ; 4 uses
  %.sroa.25.0 = phi i32 [ %.sroa.25.7, %bb.an ], [ %.sroa.25.8, %..loopexit_crit_edge ] ; 9 uses
  %.sroa.0247.0 = phi i64 [ %.sroa.0247.7, %bb.an ], [ %.sroa.0247.8, %..loopexit_crit_edge ] ; 4 uses
  %.sroa.69136.0 = phi ptr [ %.sroa.69136.6, %bb.an ], [ %.sroa.69136.7, %..loopexit_crit_edge ] ; 7 uses
  %.3160.i = phi ptr [ %i.w, %bb.an ], [ %i.nk, %..loopexit_crit_edge ] ; 7 uses
  %.3156.i = phi ptr [ %i.v, %bb.an ], [ %i.mz, %..loopexit_crit_edge ] ; 8 uses
  %.3152.i = phi ptr [ %i.u, %bb.an ], [ %i.mo, %..loopexit_crit_edge ] ; 8 uses
  %.3148.i = phi ptr [ %0, %bb.an ], [ %i.md, %..loopexit_crit_edge ] ; 8 uses
  %i.ol = icmp ugt ptr %.3148.i, %i.u
  %i.om = icmp ugt ptr %.3152.i, %i.v
  %or.cond181.i = select i1 %i.ol, i1 true, i1 %i.om
  %i.on = icmp ugt ptr %.3156.i, %i.w
  %or.cond182.i = select i1 %or.cond181.i, i1 true, i1 %i.on
  br i1 %or.cond182.i, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.as

bb.as:                                            ; preds = %.loopexit
  %i.oo = ptrtoint ptr %i.u to i64
  %i.op = ptrtoint ptr %.3148.i to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = icmp sgt i64 %i.oq, 3
  %i.os = icmp ugt i32 %.sroa.25248.0, 64         ; 2 uses
  br i1 %i.or, label %.preheader377, label %bb.ay

.preheader377:                                    ; preds = %bb.as
  br i1 %i.os, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i, label %.lr.ph416, !prof !104

.lr.ph416:                                        ; preds = %.preheader377
  %i.ot = ptrtoint ptr %i.o to i64
  %i.ou = getelementptr inbounds i8, ptr %i.u, i64 -3
  %i.ov = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.ow = and i32 %i.ov, 63
  %i.ox = zext nneg i32 %i.ow to i64              ; 4 uses
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph416, %bb.ax
  %.0.i228.i415 = phi ptr [ %.3148.i, %.lr.ph416 ], [ %i.re, %bb.ax ] ; 8 uses
  %.sroa.0247.3414 = phi i64 [ %.sroa.0247.0, %.lr.ph416 ], [ %.sroa.0247.4, %bb.ax ]
  %.sroa.25248.4413 = phi i32 [ %.sroa.25248.0, %.lr.ph416 ], [ %i.rd, %bb.ax ] ; 5 uses
  %.sroa.69266.3412 = phi ptr [ %.sroa.69266.0, %.lr.ph416 ], [ %.sroa.69266.4, %bb.ax ] ; 5 uses
  %.not.i37.i229.i = icmp ult ptr %.sroa.69266.3412, %i.ab
  br i1 %.not.i37.i229.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.oy = lshr i32 %.sroa.25248.4413, 3
  %i.oz = and i32 %.sroa.25248.4413, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i

bb.av:                                            ; preds = %bb.at
  %i.pa = icmp eq ptr %.sroa.69266.3412, %i.o
  br i1 %i.pa, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pb = lshr i32 %.sroa.25248.4413, 3           ; 2 uses
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = sub nsw i64 0, %i.pc
  %i.pe = getelementptr inbounds i8, ptr %.sroa.69266.3412, i64 %i.pd
  %i.pf = icmp uge ptr %i.pe, %i.o                ; 2 uses
  %i.pg = ptrtoint ptr %.sroa.69266.3412 to i64
  %i.ph = sub i64 %i.pg, %i.ot
  %i.pi = trunc i64 %i.ph to i32
  %.021.i39.i232.i = select i1 %i.pf, i32 %i.pb, i32 %i.pi ; 2 uses
  %i.pj = shl i32 %.021.i39.i232.i, 3
  %i.pk = sub i32 %.sroa.25248.4413, %i.pj
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i: ; preds = %bb.aw, %bb.au
  %.pn349.in = phi i32 [ %i.oy, %bb.au ], [ %.021.i39.i232.i, %bb.aw ]
  %.sroa.25248.5 = phi i32 [ %i.oz, %bb.au ], [ %i.pk, %bb.aw ] ; 3 uses
  %.022.i38.i231.i = phi i1 [ true, %bb.au ], [ %i.pf, %bb.aw ]
  %.pn349 = zext i32 %.pn349.in to i64
  %.pn = sub nsw i64 0, %.pn349
  %.sroa.69266.4 = getelementptr inbounds i8, ptr %.sroa.69266.3412, i64 %.pn ; 3 uses
  %.sroa.0247.4 = load i64, ptr %.sroa.69266.4, align 1, !tbaa !32 ; 7 uses
  %i.pl = icmp ult ptr %.0.i228.i415, %i.ou
  %i.pm = and i1 %i.pl, %.022.i38.i231.i
  br i1 %i.pm, label %bb.ax, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i

bb.ax:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i
  %i.pn = and i32 %.sroa.25248.5, 63
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = shl i64 %.sroa.0247.4, %i.po
  %i.pq = lshr i64 %i.pp, %i.ox
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !110
  %i.pu = load i8, ptr %i.pr, align 1, !tbaa !112
  %i.pv = zext i8 %i.pu to i32
  %i.pw = add i32 %.sroa.25248.5, %i.pv           ; 2 uses
  store i8 %i.pt, ptr %.0.i228.i415, align 1, !tbaa !7
  %i.px = getelementptr inbounds nuw i8, ptr %.0.i228.i415, i64 1
  %i.py = and i32 %i.pw, 63
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = shl i64 %.sroa.0247.4, %i.pz
  %i.qb = lshr i64 %i.qa, %i.ox
  %i.qc = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.qb ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 1
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !110
  %i.qf = load i8, ptr %i.qc, align 1, !tbaa !112
  %i.qg = zext i8 %i.qf to i32
  %i.qh = add i32 %i.pw, %i.qg                    ; 2 uses
  store i8 %i.qe, ptr %i.px, align 1, !tbaa !7
  %i.qi = getelementptr inbounds nuw i8, ptr %.0.i228.i415, i64 2
  %i.qj = and i32 %i.qh, 63
  %i.qk = zext nneg i32 %i.qj to i64
  %i.ql = shl i64 %.sroa.0247.4, %i.qk
  %i.qm = lshr i64 %i.ql, %i.ox
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.qm ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !110
  %i.qq = load i8, ptr %i.qn, align 1, !tbaa !112
  %i.qr = zext i8 %i.qq to i32
  %i.qs = add i32 %i.qh, %i.qr                    ; 2 uses
  store i8 %i.qp, ptr %i.qi, align 1, !tbaa !7
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i228.i415, i64 3
  %i.qu = and i32 %i.qs, 63
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = shl i64 %.sroa.0247.4, %i.qv
  %i.qx = lshr i64 %i.qw, %i.ox
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.qx ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 1
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !110
  %i.rb = load i8, ptr %i.qy, align 1, !tbaa !112
  %i.rc = zext i8 %i.rb to i32
  %i.rd = add i32 %i.qs, %i.rc                    ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.0.i228.i415, i64 4 ; 2 uses
  store i8 %i.ra, ptr %i.qt, align 1, !tbaa !7
  %i.rf = icmp ugt i32 %i.rd, 64
  br i1 %i.rf, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i, label %bb.at, !prof !101, !llvm.loop !113

bb.ay:                                            ; preds = %bb.as
  br i1 %i.os, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i, label %bb.az, !prof !122

bb.az:                                            ; preds = %bb.ay
  %.not.i.i219.i = icmp ult ptr %.sroa.69266.0, %i.ab
  br i1 %.not.i.i219.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.rg = lshr i32 %.sroa.25248.0, 3
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = sub nsw i64 0, %i.rh
  %i.rj = getelementptr inbounds i8, ptr %.sroa.69266.0, i64 %i.ri ; 2 uses
  %i.rk = and i32 %.sroa.25248.0, 7
  %.val.i110 = load i64, ptr %i.rj, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i

bb.bb:                                            ; preds = %bb.az
  %i.rl = icmp eq ptr %.sroa.69266.0, %i.o
  br i1 %i.rl, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.rm = lshr i32 %.sroa.25248.0, 3              ; 2 uses
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = sub nsw i64 0, %i.rn
  %i.rp = getelementptr inbounds i8, ptr %.sroa.69266.0, i64 %i.ro
  %i.rq = icmp ult ptr %i.rp, %i.o
  %i.rr = ptrtoint ptr %.sroa.69266.0 to i64
  %i.rs = ptrtoint ptr %i.o to i64
  %i.rt = sub i64 %i.rr, %i.rs
  %i.ru = trunc i64 %i.rt to i32
  %.021.i.i224.i = select i1 %i.rq, i32 %i.ru, i32 %i.rm ; 2 uses
  %i.rv = zext i32 %.021.i.i224.i to i64
  %i.rw = sub nsw i64 0, %i.rv
  %i.rx = getelementptr inbounds i8, ptr %.sroa.69266.0, i64 %i.rw ; 2 uses
  %i.ry = shl i32 %.021.i.i224.i, 3
  %i.rz = sub i32 %.sroa.25248.0, %i.ry
  %.val5 = load i64, ptr %i.rx, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i, %bb.ax, %bb.av, %.preheader377, %bb.bb, %bb.ba, %bb.bc, %bb.ay
  %.sroa.69266.2 = phi ptr [ %i.rx, %bb.bc ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ay ], [ %i.rj, %bb.ba ], [ %i.o, %bb.bb ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %.preheader377 ], [ %.sroa.69266.4, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ax ], [ %i.o, %bb.av ]
  %.sroa.25248.2 = phi i32 [ %i.rz, %bb.bc ], [ %.sroa.25248.0, %bb.ay ], [ %i.rk, %bb.ba ], [ %.sroa.25248.0, %bb.bb ], [ %.sroa.25248.0, %.preheader377 ], [ %.sroa.25248.5, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i ], [ %i.rd, %bb.ax ], [ %.sroa.25248.4413, %bb.av ] ; 4 uses
  %.sroa.0247.2 = phi i64 [ %.val5, %bb.bc ], [ %.sroa.0247.0, %bb.ay ], [ %.val.i110, %bb.ba ], [ %.sroa.0247.0, %bb.bb ], [ %.sroa.0247.0, %.preheader377 ], [ %.sroa.0247.4, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i ], [ %.sroa.0247.4, %bb.ax ], [ %.sroa.0247.3414, %bb.av ] ; 3 uses
  %.3.i222.i = phi ptr [ %.3148.i, %bb.bc ], [ %.3148.i, %bb.ay ], [ %.3148.i, %bb.ba ], [ %.3148.i, %bb.bb ], [ %.3148.i, %.preheader377 ], [ %.0.i228.i415, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i230.i ], [ %i.re, %bb.ax ], [ %.0.i228.i415, %bb.av ] ; 6 uses
  %i.sa = icmp ult ptr %.3.i222.i, %i.u
  br i1 %i.sa, label %.lr.ph432, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i

.lr.ph432:                                        ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i
  %.3.i222.i495 = ptrtoaddr ptr %.3.i222.i to i64 ; 2 uses
  %i.sb = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.sc = and i32 %i.sb, 63
  %i.sd = zext nneg i32 %i.sc to i64              ; 3 uses
  %i.se = add i64 %i.t, %5
  %i.sf = sub i64 %i.se, %.3.i222.i495            ; 2 uses
  %scevgep = getelementptr i8, ptr %.3.i222.i, i64 %i.sf
  %i.sg = add i64 %i.t, %5
  %.neg = add i64 %.3.i222.i495, 1
  %xtraiter = and i64 %i.sf, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph432
  %i.sh = and i32 %.sroa.25248.2, 63
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = shl i64 %.sroa.0247.2, %i.si
  %i.sk = lshr i64 %i.sj, %i.sd
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.sk ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 1
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !110
  %i.so = load i8, ptr %i.sl, align 1, !tbaa !112
  %i.sp = zext i8 %i.so to i32
  %i.sq = add i32 %.sroa.25248.2, %i.sp           ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.3.i222.i, i64 1
  store i8 %i.sn, ptr %.3.i222.i, align 1, !tbaa !7
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph432
  %.lcssa578.unr = phi i32 [ poison, %.lr.ph432 ], [ %i.sq, %.prol.loopexit.unr-lcssa ]
  %.6.i223.i431.unr = phi ptr [ %.3.i222.i, %.lr.ph432 ], [ %i.sr, %.prol.loopexit.unr-lcssa ]
  %.sroa.25248.3430.unr = phi i32 [ %.sroa.25248.2, %.lr.ph432 ], [ %i.sq, %.prol.loopexit.unr-lcssa ]
  %i.ss = icmp eq i64 %i.sg, %.neg
  br i1 %i.ss, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i, label %.lr.ph432.new

.lr.ph432.new:                                    ; preds = %.prol.loopexit, %.lr.ph432.new
  %.6.i223.i431 = phi ptr [ %i.to, %.lr.ph432.new ], [ %.6.i223.i431.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.25248.3430 = phi i32 [ %i.tn, %.lr.ph432.new ], [ %.sroa.25248.3430.unr, %.prol.loopexit ] ; 2 uses
  %i.st = and i32 %.sroa.25248.3430, 63
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = shl i64 %.sroa.0247.2, %i.su
  %i.sw = lshr i64 %i.sv, %i.sd
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.sw ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 1
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !110
  %i.ta = load i8, ptr %i.sx, align 1, !tbaa !112
  %i.tb = zext i8 %i.ta to i32
  %i.tc = add i32 %.sroa.25248.3430, %i.tb        ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.6.i223.i431, i64 1
  store i8 %i.sz, ptr %.6.i223.i431, align 1, !tbaa !7
  %i.te = and i32 %i.tc, 63
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = shl i64 %.sroa.0247.2, %i.tf
  %i.th = lshr i64 %i.tg, %i.sd
  %i.ti = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.th ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !110
  %i.tl = load i8, ptr %i.ti, align 1, !tbaa !112
  %i.tm = zext i8 %i.tl to i32
  %i.tn = add i32 %i.tc, %i.tm                    ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.6.i223.i431, i64 2 ; 2 uses
  store i8 %i.tk, ptr %i.td, align 1, !tbaa !7
  %exitcond.not.1 = icmp eq ptr %i.to, %scevgep
  br i1 %exitcond.not.1, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i, label %.lr.ph432.new, !llvm.loop !114

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i: ; preds = %.prol.loopexit, %.lr.ph432.new, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i
  %.sroa.25248.3.lcssa = phi i32 [ %.sroa.25248.2, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i220.i ], [ %.lcssa578.unr, %.prol.loopexit ], [ %i.tn, %.lr.ph432.new ]
  %i.tp = ptrtoint ptr %i.v to i64
  %i.tq = ptrtoint ptr %.3152.i to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %i.ts = icmp sgt i64 %i.tr, 3
  %i.tt = icmp ugt i32 %.sroa.25182.0, 64         ; 2 uses
  br i1 %i.ts, label %.preheader376, label %bb.bi

.preheader376:                                    ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i
  br i1 %i.tt, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i, label %.lr.ph438, !prof !104

.lr.ph438:                                        ; preds = %.preheader376
  %i.tu = ptrtoint ptr %i.p to i64
  %i.tv = getelementptr inbounds i8, ptr %i.v, i64 -3
  %i.tw = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.tx = and i32 %i.tw, 63
  %i.ty = zext nneg i32 %i.tx to i64              ; 4 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph438, %bb.bh
  %.0.i210.i437 = phi ptr [ %.3152.i, %.lr.ph438 ], [ %i.wf, %bb.bh ] ; 8 uses
  %.sroa.69200.3436 = phi ptr [ %.sroa.69200.0, %.lr.ph438 ], [ %.sroa.69200.4, %bb.bh ] ; 5 uses
  %.sroa.25182.4435 = phi i32 [ %.sroa.25182.0, %.lr.ph438 ], [ %i.we, %bb.bh ] ; 5 uses
  %.sroa.0181.3434 = phi i64 [ %.sroa.0181.0, %.lr.ph438 ], [ %.sroa.0181.4, %bb.bh ]
  %.not.i37.i211.i = icmp ult ptr %.sroa.69200.3436, %i.cd
  br i1 %.not.i37.i211.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.tz = lshr i32 %.sroa.25182.4435, 3
  %i.ua = and i32 %.sroa.25182.4435, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i

bb.bf:                                            ; preds = %bb.bd
  %i.ub = icmp eq ptr %.sroa.69200.3436, %i.p
  br i1 %i.ub, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.uc = lshr i32 %.sroa.25182.4435, 3           ; 2 uses
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = sub nsw i64 0, %i.ud
  %i.uf = getelementptr inbounds i8, ptr %.sroa.69200.3436, i64 %i.ue
  %i.ug = icmp uge ptr %i.uf, %i.p                ; 2 uses
  %i.uh = ptrtoint ptr %.sroa.69200.3436 to i64
  %i.ui = sub i64 %i.uh, %i.tu
  %i.uj = trunc i64 %i.ui to i32
  %.021.i39.i214.i = select i1 %i.ug, i32 %i.uc, i32 %i.uj ; 2 uses
  %i.uk = shl i32 %.021.i39.i214.i, 3
  %i.ul = sub i32 %.sroa.25182.4435, %i.uk
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i: ; preds = %bb.bg, %bb.be
  %.sroa.25182.5 = phi i32 [ %i.ua, %bb.be ], [ %i.ul, %bb.bg ] ; 3 uses
  %.pn351.in = phi i32 [ %i.tz, %bb.be ], [ %.021.i39.i214.i, %bb.bg ]
  %.022.i38.i213.i = phi i1 [ true, %bb.be ], [ %i.ug, %bb.bg ]
  %.pn351 = zext i32 %.pn351.in to i64
  %.pn350 = sub nsw i64 0, %.pn351
  %.sroa.69200.4 = getelementptr inbounds i8, ptr %.sroa.69200.3436, i64 %.pn350 ; 3 uses
  %.sroa.0181.4 = load i64, ptr %.sroa.69200.4, align 1, !tbaa !32 ; 7 uses
  %i.um = icmp ult ptr %.0.i210.i437, %i.tv
  %i.un = and i1 %i.um, %.022.i38.i213.i
  br i1 %i.un, label %bb.bh, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i

bb.bh:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i
  %i.uo = and i32 %.sroa.25182.5, 63
  %i.up = zext nneg i32 %i.uo to i64
  %i.uq = shl i64 %.sroa.0181.4, %i.up
  %i.ur = lshr i64 %i.uq, %i.ty
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ur ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 1
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !110
  %i.uv = load i8, ptr %i.us, align 1, !tbaa !112
  %i.uw = zext i8 %i.uv to i32
  %i.ux = add i32 %.sroa.25182.5, %i.uw           ; 2 uses
  store i8 %i.uu, ptr %.0.i210.i437, align 1, !tbaa !7
  %i.uy = getelementptr inbounds nuw i8, ptr %.0.i210.i437, i64 1
  %i.uz = and i32 %i.ux, 63
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = shl i64 %.sroa.0181.4, %i.va
  %i.vc = lshr i64 %i.vb, %i.ty
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.vc ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 1
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !110
  %i.vg = load i8, ptr %i.vd, align 1, !tbaa !112
  %i.vh = zext i8 %i.vg to i32
  %i.vi = add i32 %i.ux, %i.vh                    ; 2 uses
  store i8 %i.vf, ptr %i.uy, align 1, !tbaa !7
  %i.vj = getelementptr inbounds nuw i8, ptr %.0.i210.i437, i64 2
  %i.vk = and i32 %i.vi, 63
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = shl i64 %.sroa.0181.4, %i.vl
  %i.vn = lshr i64 %i.vm, %i.ty
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.vn ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 1
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !110
  %i.vr = load i8, ptr %i.vo, align 1, !tbaa !112
  %i.vs = zext i8 %i.vr to i32
  %i.vt = add i32 %i.vi, %i.vs                    ; 2 uses
  store i8 %i.vq, ptr %i.vj, align 1, !tbaa !7
  %i.vu = getelementptr inbounds nuw i8, ptr %.0.i210.i437, i64 3
  %i.vv = and i32 %i.vt, 63
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = shl i64 %.sroa.0181.4, %i.vw
  %i.vy = lshr i64 %i.vx, %i.ty
  %i.vz = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.vy ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !110
  %i.wc = load i8, ptr %i.vz, align 1, !tbaa !112
  %i.wd = zext i8 %i.wc to i32
  %i.we = add i32 %i.vt, %i.wd                    ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.0.i210.i437, i64 4 ; 2 uses
  store i8 %i.wb, ptr %i.vu, align 1, !tbaa !7
  %i.wg = icmp ugt i32 %i.we, 64
  br i1 %i.wg, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i, label %bb.bd, !prof !101, !llvm.loop !113

bb.bi:                                            ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit236.i
  br i1 %i.tt, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i, label %bb.bj, !prof !122

bb.bj:                                            ; preds = %bb.bi
  %.not.i.i201.i = icmp ult ptr %.sroa.69200.0, %i.cd
  br i1 %.not.i.i201.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wh = lshr i32 %.sroa.25182.0, 3
  %i.wi = zext nneg i32 %i.wh to i64
  %i.wj = sub nsw i64 0, %i.wi
  %i.wk = getelementptr inbounds i8, ptr %.sroa.69200.0, i64 %i.wj ; 2 uses
  %i.wl = and i32 %.sroa.25182.0, 7
  %.val.i112 = load i64, ptr %i.wk, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i

bb.bl:                                            ; preds = %bb.bj
  %i.wm = icmp eq ptr %.sroa.69200.0, %i.p
  br i1 %i.wm, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.wn = lshr i32 %.sroa.25182.0, 3              ; 2 uses
  %i.wo = zext nneg i32 %i.wn to i64
  %i.wp = sub nsw i64 0, %i.wo
  %i.wq = getelementptr inbounds i8, ptr %.sroa.69200.0, i64 %i.wp
  %i.wr = icmp ult ptr %i.wq, %i.p
  %i.ws = ptrtoint ptr %.sroa.69200.0 to i64
  %i.wt = ptrtoint ptr %i.p to i64
  %i.wu = sub i64 %i.ws, %i.wt
  %i.wv = trunc i64 %i.wu to i32
  %.021.i.i206.i = select i1 %i.wr, i32 %i.wv, i32 %i.wn ; 2 uses
  %i.ww = zext i32 %.021.i.i206.i to i64
  %i.wx = sub nsw i64 0, %i.ww
  %i.wy = getelementptr inbounds i8, ptr %.sroa.69200.0, i64 %i.wx ; 2 uses
  %i.wz = shl i32 %.021.i.i206.i, 3
  %i.xa = sub i32 %.sroa.25182.0, %i.wz
  %.val7 = load i64, ptr %i.wy, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i, %bb.bh, %bb.bf, %.preheader376, %bb.bl, %bb.bk, %bb.bm, %bb.bi
  %.sroa.0181.2 = phi i64 [ %.val7, %bb.bm ], [ %.sroa.0181.0, %bb.bi ], [ %.val.i112, %bb.bk ], [ %.sroa.0181.0, %bb.bl ], [ %.sroa.0181.0, %.preheader376 ], [ %.sroa.0181.4, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i ], [ %.sroa.0181.4, %bb.bh ], [ %.sroa.0181.3434, %bb.bf ] ; 3 uses
  %.sroa.25182.2 = phi i32 [ %i.xa, %bb.bm ], [ %.sroa.25182.0, %bb.bi ], [ %i.wl, %bb.bk ], [ %.sroa.25182.0, %bb.bl ], [ %.sroa.25182.0, %.preheader376 ], [ %.sroa.25182.5, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i ], [ %i.we, %bb.bh ], [ %.sroa.25182.4435, %bb.bf ] ; 4 uses
  %.sroa.69200.2 = phi ptr [ %i.wy, %bb.bm ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bi ], [ %i.wk, %bb.bk ], [ %i.p, %bb.bl ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %.preheader376 ], [ %.sroa.69200.4, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bh ], [ %i.p, %bb.bf ]
  %.3.i204.i = phi ptr [ %.3152.i, %bb.bm ], [ %.3152.i, %bb.bi ], [ %.3152.i, %bb.bk ], [ %.3152.i, %bb.bl ], [ %.3152.i, %.preheader376 ], [ %.0.i210.i437, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i212.i ], [ %i.wf, %bb.bh ], [ %.0.i210.i437, %bb.bf ] ; 5 uses
  %i.xb = icmp ult ptr %.3.i204.i, %i.v
  br i1 %i.xb, label %.lr.ph454, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i

.lr.ph454:                                        ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i
  %.3.i204.i584 = ptrtoaddr ptr %.3.i204.i to i64 ; 2 uses
  %i.xc = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.xd = and i32 %i.xc, 63
  %i.xe = zext nneg i32 %i.xd to i64              ; 3 uses
  %i.xf = shl nuw nsw i64 %i.t, 1
  %i.xg = add i64 %i.xf, %5
  %i.xh = sub i64 %5, %.3.i204.i584
  %.neg592.a = add i64 %.3.i204.i584, 1
  %xtraiter586 = and i64 %i.xh, 1
  %lcmp.mod587.not = icmp eq i64 %xtraiter586, 0
  br i1 %lcmp.mod587.not, label %.prol.loopexit584, label %.prol.loopexit584.unr-lcssa

.prol.loopexit584.unr-lcssa:                      ; preds = %.lr.ph454
  %i.xi = and i32 %.sroa.25182.2, 63
  %i.xj = zext nneg i32 %i.xi to i64
  %i.xk = shl i64 %.sroa.0181.2, %i.xj
  %i.xl = lshr i64 %i.xk, %i.xe
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.xl ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 1
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !110
  %i.xp = load i8, ptr %i.xm, align 1, !tbaa !112
  %i.xq = zext i8 %i.xp to i32
  %i.xr = add i32 %.sroa.25182.2, %i.xq           ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.3.i204.i, i64 1
  store i8 %i.xo, ptr %.3.i204.i, align 1, !tbaa !7
  br label %.prol.loopexit584

.prol.loopexit584:                                ; preds = %.prol.loopexit584.unr-lcssa, %.lr.ph454
  %.6.i205.i453.unr = phi ptr [ %.3.i204.i, %.lr.ph454 ], [ %i.xs, %.prol.loopexit584.unr-lcssa ]
  %.sroa.25182.3452.unr = phi i32 [ %.sroa.25182.2, %.lr.ph454 ], [ %i.xr, %.prol.loopexit584.unr-lcssa ]
  %.lcssa577.unr = phi i32 [ poison, %.lr.ph454 ], [ %i.xr, %.prol.loopexit584.unr-lcssa ]
  %i.xt = icmp eq i64 %i.xg, %.neg592.a
  br i1 %i.xt, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i, label %.lr.ph454.new

.lr.ph454.new:                                    ; preds = %.prol.loopexit584, %.lr.ph454.new
  %.6.i205.i453 = phi ptr [ %i.yp, %.lr.ph454.new ], [ %.6.i205.i453.unr, %.prol.loopexit584 ] ; 3 uses
  %.sroa.25182.3452 = phi i32 [ %i.yo, %.lr.ph454.new ], [ %.sroa.25182.3452.unr, %.prol.loopexit584 ] ; 2 uses
  %i.xu = and i32 %.sroa.25182.3452, 63
  %i.xv = zext nneg i32 %i.xu to i64
  %i.xw = shl i64 %.sroa.0181.2, %i.xv
  %i.xx = lshr i64 %i.xw, %i.xe
  %i.xy = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.xx ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 1
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !110
  %i.yb = load i8, ptr %i.xy, align 1, !tbaa !112
  %i.yc = zext i8 %i.yb to i32
  %i.yd = add i32 %.sroa.25182.3452, %i.yc        ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.6.i205.i453, i64 1
  store i8 %i.ya, ptr %.6.i205.i453, align 1, !tbaa !7
  %i.yf = and i32 %i.yd, 63
  %i.yg = zext nneg i32 %i.yf to i64
  %i.yh = shl i64 %.sroa.0181.2, %i.yg
  %i.yi = lshr i64 %i.yh, %i.xe
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.yi ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 1
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !110
  %i.ym = load i8, ptr %i.yj, align 1, !tbaa !112
  %i.yn = zext i8 %i.ym to i32
  %i.yo = add i32 %i.yd, %i.yn                    ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.6.i205.i453, i64 2 ; 2 uses
  store i8 %i.yl, ptr %i.ye, align 1, !tbaa !7
  %i.yq = icmp ult ptr %i.yp, %i.v
  br i1 %i.yq, label %.lr.ph454.new, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i, !llvm.loop !114

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i: ; preds = %.prol.loopexit584, %.lr.ph454.new, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i
  %.sroa.25182.3.lcssa = phi i32 [ %.sroa.25182.2, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i202.i ], [ %.lcssa577.unr, %.prol.loopexit584 ], [ %i.yo, %.lr.ph454.new ]
  %i.yr = ptrtoint ptr %i.w to i64
  %i.ys = ptrtoint ptr %.3156.i to i64
  %i.yt = sub i64 %i.yr, %i.ys
  %i.yu = icmp sgt i64 %i.yt, 3
  %i.yv = icmp ugt i32 %.sroa.25.0, 64            ; 2 uses
  br i1 %i.yu, label %.preheader375, label %bb.bs

.preheader375:                                    ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i
  br i1 %i.yv, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i, label %.lr.ph460, !prof !104

.lr.ph460:                                        ; preds = %.preheader375
  %i.yw = ptrtoint ptr %i.q to i64
  %i.yx = getelementptr inbounds i8, ptr %i.w, i64 -3
  %i.yy = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.yz = and i32 %i.yy, 63
  %i.za = zext nneg i32 %i.yz to i64              ; 4 uses
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph460, %bb.br
  %.0.i192.i459 = phi ptr [ %.3156.i, %.lr.ph460 ], [ %i.abh, %bb.br ] ; 8 uses
  %.sroa.69136.3458 = phi ptr [ %.sroa.69136.0, %.lr.ph460 ], [ %.sroa.69136.4, %bb.br ] ; 5 uses
  %.sroa.25.4457 = phi i32 [ %.sroa.25.0, %.lr.ph460 ], [ %i.abg, %bb.br ] ; 5 uses
  %.sroa.0.3456 = phi i64 [ %.sroa.0.0, %.lr.ph460 ], [ %.sroa.0.4, %bb.br ]
  %.not.i37.i193.i = icmp ult ptr %.sroa.69136.3458, %i.ef
  br i1 %.not.i37.i193.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.zb = lshr i32 %.sroa.25.4457, 3
  %i.zc = and i32 %.sroa.25.4457, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i194.i

bb.bp:                                            ; preds = %bb.bn
  %i.zd = icmp eq ptr %.sroa.69136.3458, %i.q
  br i1 %i.zd, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ze = lshr i32 %.sroa.25.4457, 3              ; 2 uses
  %i.zf = zext nneg i32 %i.ze to i64
  %i.zg = sub nsw i64 0, %i.zf
  %i.zh = getelementptr inbounds i8, ptr %.sroa.69136.3458, i64 %i.zg
  %i.zi = icmp uge ptr %i.zh, %i.q                ; 2 uses
  %i.zj = ptrtoint ptr %.sroa.69136.3458 to i64
  %i.zk = sub i64 %i.zj, %i.yw
  %i.zl = trunc i64 %i.zk to i32
  %.021.i39.i196.i = select i1 %i.zi, i32 %i.ze, i32 %i.zl ; 2 uses
  %i.zm = shl i32 %.021.i39.i196.i, 3
  %i.zn = sub i32 %.sroa.25.4457, %i.zm
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i194.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i194.i: ; preds = %bb.bq, %bb.bo
  %.sroa.25.5 = phi i32 [ %i.zc, %bb.bo ], [ %i.zn, %bb.bq ] ; 3 uses
  %.pn353.in = phi i32 [ %i.zb, %bb.bo ], [ %.021.i39.i196.i, %bb.bq ]
  %.022.i38.i195.i = phi i1 [ true, %bb.bo ], [ %i.zi, %bb.bq ]
  %.pn353 = zext i32 %.pn353.in to i64
  %.pn352 = sub nsw i64 0, %.pn353
  %.sroa.69136.4 = getelementptr inbounds i8, ptr %.sroa.69136.3458, i64 %.pn352 ; 3 uses
  %.sroa.0.4 = load i64, ptr %.sroa.69136.4, align 1, !tbaa !32 ; 7 uses
  %i.zo = icmp ult ptr %.0.i192.i459, %i.yx
  %i.zp = and i1 %i.zo, %.022.i38.i195.i
  br i1 %i.zp, label %bb.br, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i

bb.br:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i194.i
  %i.zq = and i32 %.sroa.25.5, 63
  %i.zr = zext nneg i32 %i.zq to i64
  %i.zs = shl i64 %.sroa.0.4, %i.zr
  %i.zt = lshr i64 %i.zs, %i.za
  %i.zu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.zt ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 1
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !110
  %i.zx = load i8, ptr %i.zu, align 1, !tbaa !112
  %i.zy = zext i8 %i.zx to i32
  %i.zz = add i32 %.sroa.25.5, %i.zy              ; 2 uses
  store i8 %i.zw, ptr %.0.i192.i459, align 1, !tbaa !7
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0.i192.i459, i64 1
  %i.aab = and i32 %i.zz, 63
  %i.aac = zext nneg i32 %i.aab to i64
  %i.aad = shl i64 %.sroa.0.4, %i.aac
  %i.aae = lshr i64 %i.aad, %i.za
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aae ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 1
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !110
  %i.aai = load i8, ptr %i.aaf, align 1, !tbaa !112
  %i.aaj = zext i8 %i.aai to i32
  %i.aak = add i32 %i.zz, %i.aaj                  ; 2 uses
  store i8 %i.aah, ptr %i.aaa, align 1, !tbaa !7
  %i.aal = getelementptr inbounds nuw i8, ptr %.0.i192.i459, i64 2
  %i.aam = and i32 %i.aak, 63
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = shl i64 %.sroa.0.4, %i.aan
  %i.aap = lshr i64 %i.aao, %i.za
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aap ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 1
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !110
  %i.aat = load i8, ptr %i.aaq, align 1, !tbaa !112
  %i.aau = zext i8 %i.aat to i32
  %i.aav = add i32 %i.aak, %i.aau                 ; 2 uses
  store i8 %i.aas, ptr %i.aal, align 1, !tbaa !7
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0.i192.i459, i64 3
  %i.aax = and i32 %i.aav, 63
  %i.aay = zext nneg i32 %i.aax to i64
  %i.aaz = shl i64 %.sroa.0.4, %i.aay
  %i.aba = lshr i64 %i.aaz, %i.za
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aba ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !110
  %i.abe = load i8, ptr %i.abb, align 1, !tbaa !112
  %i.abf = zext i8 %i.abe to i32
  %i.abg = add i32 %i.aav, %i.abf                 ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.0.i192.i459, i64 4 ; 2 uses
  store i8 %i.abd, ptr %i.aaw, align 1, !tbaa !7
  %i.abi = icmp ugt i32 %i.abg, 64
  br i1 %i.abi, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i, label %bb.bn, !prof !101, !llvm.loop !113

bb.bs:                                            ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit218.i
  br i1 %i.yv, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i, label %bb.bt, !prof !122

bb.bt:                                            ; preds = %bb.bs
  %.not.i.i183.i = icmp ult ptr %.sroa.69136.0, %i.ef
  br i1 %.not.i.i183.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.abj = lshr i32 %.sroa.25.0, 3
  %i.abk = zext nneg i32 %i.abj to i64
  %i.abl = sub nsw i64 0, %i.abk
  %i.abm = getelementptr inbounds i8, ptr %.sroa.69136.0, i64 %i.abl ; 2 uses
  %i.abn = and i32 %.sroa.25.0, 7
  %.val.i114 = load i64, ptr %i.abm, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i

bb.bv:                                            ; preds = %bb.bt
  %i.abo = icmp eq ptr %.sroa.69136.0, %i.q
  br i1 %i.abo, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abp = lshr i32 %.sroa.25.0, 3                ; 2 uses
  %i.abq = zext nneg i32 %i.abp to i64
  %i.abr = sub nsw i64 0, %i.abq
  %i.abs = getelementptr inbounds i8, ptr %.sroa.69136.0, i64 %i.abr
  %i.abt = icmp ult ptr %i.abs, %i.q
  %i.abu = ptrtoint ptr %.sroa.69136.0 to i64
  %i.abv = ptrtoint ptr %i.q to i64
  %i.abw = sub i64 %i.abu, %i.abv
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit200.i: ; preds = %bb.bx, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i
  %.sroa.25.3.lcssa = phi i32 [ %.sroa.25.2, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i184.i ], [ %i.acq, %bb.bx ]
  %i.act = ptrtoint ptr %i.c to i64
  %i.acu = ptrtoint ptr %.3160.i to i64
  %i.acv = sub i64 %i.act, %i.acu
  %i.acw = icmp sgt i64 %i.acv, 3
  %i.acx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.acy = load i32, ptr %i.acx, align 8, !tbaa !120 ; 9 uses
  %i.acz = icmp ugt i32 %i.acy, 64                ; 2 uses
  br i1 %i.acw, label %.preheader, label %bb.cd

.preheader:                                       ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit200.i
  br i1 %i.acz, label %._crit_edge, label %.lr.ph479, !prof !104

.lr.ph479:                                        ; preds = %.preheader
  %i.ada = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.adc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.add = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.ade = and i32 %i.add, 63
  %i.adf = zext nneg i32 %i.ade to i64            ; 4 uses
  %.pre = load ptr, ptr %i.ada, align 8, !tbaa !121
  %.pre499 = load ptr, ptr %i.adb, align 8, !tbaa !116
  br label %bb.by

._crit_edge:                                      ; preds = %bb.cc, %.preheader
  %i.adg = phi i32 [ %i.acy, %.preheader ], [ %i.afx, %bb.cc ]
  %.0.i.i.lcssa = phi ptr [ %.3160.i, %.preheader ], [ %i.afy, %bb.cc ]
  %i.adh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.adh, align 8, !tbaa !121
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

bb.by:                                            ; preds = %.lr.ph479, %bb.cc
  %i.adi = phi ptr [ %.pre, %.lr.ph479 ], [ %storemerge.in, %bb.cc ] ; 7 uses
  %i.adj = phi i32 [ %i.acy, %.lr.ph479 ], [ %i.afx, %bb.cc ] ; 5 uses
  %.0.i.i478 = phi ptr [ %.3160.i, %.lr.ph479 ], [ %i.afy, %bb.cc ] ; 8 uses
  %.not.i37.i.i = icmp ult ptr %i.adi, %.pre499
  br i1 %.not.i37.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.adk = lshr i32 %i.adj, 3
  %i.adl = zext nneg i32 %i.adk to i64
  %i.adm = sub nsw i64 0, %i.adl
  %i.adn = getelementptr inbounds i8, ptr %i.adi, i64 %i.adm ; 2 uses
  store ptr %i.adn, ptr %i.ada, align 8, !tbaa !121
  %i.ado = and i32 %i.adj, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i

bb.ca:                                            ; preds = %bb.by
  %i.adp = load ptr, ptr %i.adc, align 8, !tbaa !125 ; 3 uses
  %i.adq = icmp eq ptr %i.adi, %i.adp
  br i1 %i.adq, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.adr = lshr i32 %i.adj, 3                     ; 2 uses
  %i.ads = zext nneg i32 %i.adr to i64
  %i.adt = sub nsw i64 0, %i.ads
  %i.adu = getelementptr inbounds i8, ptr %i.adi, i64 %i.adt
  %i.adv = icmp uge ptr %i.adu, %i.adp            ; 2 uses
  %i.adw = ptrtoint ptr %i.adi to i64
  %i.adx = ptrtoint ptr %i.adp to i64
  %i.ady = sub i64 %i.adw, %i.adx
  %i.adz = trunc i64 %i.ady to i32
  %.021.i39.i.i = select i1 %i.adv, i32 %i.adr, i32 %i.adz ; 2 uses
  %i.aea = zext i32 %.021.i39.i.i to i64
  %i.aeb = sub nsw i64 0, %i.aea
  %i.aec = getelementptr inbounds i8, ptr %i.adi, i64 %i.aeb ; 2 uses
  store ptr %i.aec, ptr %i.ada, align 8, !tbaa !121
  %i.aed = shl i32 %.021.i39.i.i, 3
  %i.aee = sub i32 %i.adj, %i.aed
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i: ; preds = %bb.cb, %bb.bz
  %.val81 = phi i32 [ %i.ado, %bb.bz ], [ %i.aee, %bb.cb ] ; 4 uses
  %storemerge.in = phi ptr [ %i.adn, %bb.bz ], [ %i.aec, %bb.cb ] ; 3 uses
  %.022.i38.i.i = phi i1 [ true, %bb.bz ], [ %i.adv, %bb.cb ]
  store i32 %.val81, ptr %i.acx, align 8, !tbaa !120
  %storemerge = load i64, ptr %storemerge.in, align 1, !tbaa !32 ; 5 uses
  store i64 %storemerge, ptr %6, align 8, !tbaa !123
  %i.aef = icmp ult ptr %.0.i.i478, %i.d
  %i.aeg = and i1 %i.aef, %.022.i38.i.i
  br i1 %i.aeg, label %bb.cc, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

bb.cc:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i
  %i.aeh = and i32 %.val81, 63
  %i.aei = zext nneg i32 %i.aeh to i64
  %i.aej = shl i64 %storemerge, %i.aei
  %i.aek = lshr i64 %i.aej, %i.adf
  %i.ael = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aek ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 1
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !110
  %i.aeo = load i8, ptr %i.ael, align 1, !tbaa !112
  %i.aep = zext i8 %i.aeo to i32
  %i.aeq = add i32 %.val81, %i.aep                ; 2 uses
  store i8 %i.aen, ptr %.0.i.i478, align 1, !tbaa !7
  %i.aer = getelementptr inbounds nuw i8, ptr %.0.i.i478, i64 1
  %i.aes = and i32 %i.aeq, 63
  %i.aet = zext nneg i32 %i.aes to i64
  %i.aeu = shl i64 %storemerge, %i.aet
  %i.aev = lshr i64 %i.aeu, %i.adf
  %i.aew = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aev ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 1
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !110
  %i.aez = load i8, ptr %i.aew, align 1, !tbaa !112
  %i.afa = zext i8 %i.aez to i32
  %i.afb = add i32 %i.aeq, %i.afa                 ; 2 uses
  store i8 %i.aey, ptr %i.aer, align 1, !tbaa !7
  %i.afc = getelementptr inbounds nuw i8, ptr %.0.i.i478, i64 2
  %i.afd = and i32 %i.afb, 63
  %i.afe = zext nneg i32 %i.afd to i64
  %i.aff = shl i64 %storemerge, %i.afe
  %i.afg = lshr i64 %i.aff, %i.adf
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.afg ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 1
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !110
  %i.afk = load i8, ptr %i.afh, align 1, !tbaa !112
  %i.afl = zext i8 %i.afk to i32
  %i.afm = add i32 %i.afb, %i.afl                 ; 2 uses
  store i8 %i.afj, ptr %i.afc, align 1, !tbaa !7
  %i.afn = getelementptr inbounds nuw i8, ptr %.0.i.i478, i64 3
  %i.afo = and i32 %i.afm, 63
  %i.afp = zext nneg i32 %i.afo to i64
  %i.afq = shl i64 %storemerge, %i.afp
  %i.afr = lshr i64 %i.afq, %i.adf
  %i.afs = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.afr ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 1
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !110
  %i.afv = load i8, ptr %i.afs, align 1, !tbaa !112
  %i.afw = zext i8 %i.afv to i32
  %i.afx = add i32 %i.afm, %i.afw                 ; 4 uses
  store i32 %i.afx, ptr %i.acx, align 8, !tbaa !120
  %i.afy = getelementptr inbounds nuw i8, ptr %.0.i.i478, i64 4 ; 2 uses
  store i8 %i.afu, ptr %i.afn, align 1, !tbaa !7
  %i.afz = icmp ugt i32 %i.afx, 64
  br i1 %i.afz, label %._crit_edge, label %bb.by, !prof !101, !llvm.loop !113

bb.cd:                                            ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit200.i
  %i.aga = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br i1 %i.acz, label %bb.ce, label %bb.cf, !prof !122

bb.ce:                                            ; preds = %bb.cd
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.aga, align 8, !tbaa !121
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !121 ; 7 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !116
  %.not.i.i.i = icmp ult ptr %i.agb, %i.agd
  br i1 %.not.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.age = lshr i32 %i.acy, 3
  %i.agf = zext nneg i32 %i.age to i64
  %i.agg = sub nsw i64 0, %i.agf
  %i.agh = getelementptr inbounds i8, ptr %i.agb, i64 %i.agg ; 3 uses
  store ptr %i.agh, ptr %i.aga, align 8, !tbaa !121
  %i.agi = and i32 %i.acy, 7                      ; 2 uses
  store i32 %i.agi, ptr %i.acx, align 8, !tbaa !120
  %.val.i116 = load i64, ptr %i.agh, align 1, !tbaa !32
  store i64 %.val.i116, ptr %6, align 8, !tbaa !123
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.agj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !125 ; 3 uses
  %i.agl = icmp eq ptr %i.agb, %i.agk
  br i1 %i.agl, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.agm = lshr i32 %i.acy, 3                     ; 2 uses
  %i.agn = zext nneg i32 %i.agm to i64
  %i.ago = sub nsw i64 0, %i.agn
  %i.agp = getelementptr inbounds i8, ptr %i.agb, i64 %i.ago
  %i.agq = icmp ult ptr %i.agp, %i.agk
  %i.agr = ptrtoint ptr %i.agb to i64
  %i.ags = ptrtoint ptr %i.agk to i64
  %i.agt = sub i64 %i.agr, %i.ags
  %i.agu = trunc i64 %i.agt to i32
  %.021.i.i.i = select i1 %i.agq, i32 %i.agu, i32 %i.agm ; 2 uses
  %i.agv = zext i32 %.021.i.i.i to i64
  %i.agw = sub nsw i64 0, %i.agv
  %i.agx = getelementptr inbounds i8, ptr %i.agb, i64 %i.agw ; 3 uses
  store ptr %i.agx, ptr %i.aga, align 8, !tbaa !121
  %i.agy = shl i32 %.021.i.i.i, 3
  %i.agz = sub i32 %i.acy, %i.agy                 ; 2 uses
  store i32 %i.agz, ptr %i.acx, align 8, !tbaa !120
  %.val11 = load i64, ptr %i.agx, align 1, !tbaa !32
  store i64 %.val11, ptr %6, align 8, !tbaa !123
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i: ; preds = %bb.ca, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i, %bb.ch, %._crit_edge, %bb.ce, %bb.cg, %bb.ci
  %i.aha = phi i32 [ %i.adg, %._crit_edge ], [ %i.acy, %bb.ce ], [ %i.agz, %bb.ci ], [ %i.acy, %bb.ch ], [ %i.agi, %bb.cg ], [ %i.adj, %bb.ca ], [ %.val81, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i ]
  %i.ahb = phi ptr [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %._crit_edge ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.ce ], [ %i.agx, %bb.ci ], [ %i.agb, %bb.ch ], [ %i.agh, %bb.cg ], [ %i.adi, %bb.ca ], [ %storemerge.in, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i ]
  %.3.i.i = phi ptr [ %.0.i.i.lcssa, %._crit_edge ], [ %.3160.i, %bb.ce ], [ %.3160.i, %bb.ci ], [ %.3160.i, %bb.ch ], [ %.3160.i, %bb.cg ], [ %.0.i.i478, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i.i ], [ %.0.i.i478, %bb.ca ] ; 6 uses
  %i.ahc = icmp ult ptr %.3.i.i, %i.c
  br i1 %i.ahc, label %.lr.ph482, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i

.lr.ph482:                                        ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i
  %.3.i.i496 = ptrtoaddr ptr %.3.i.i to i64       ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.ahe = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.ahf = and i32 %i.ahe, 63
  %i.ahg = zext nneg i32 %i.ahf to i64            ; 3 uses
  %i.ahh = add i64 %1, %5                         ; 2 uses
  %i.ahi = sub i64 %i.ahh, %.3.i.i496             ; 2 uses
  %scevgep497 = getelementptr i8, ptr %.3.i.i, i64 %i.ahi
  %.neg593 = add i64 %.3.i.i496, 1
  %xtraiter590 = and i64 %i.ahi, 1
  %lcmp.mod591.not = icmp eq i64 %xtraiter590, 0
  br i1 %lcmp.mod591.not, label %.prol.loopexit589, label %.prol.loopexit589.unr-lcssa

.prol.loopexit589.unr-lcssa:                      ; preds = %.lr.ph482
  %.val82.prol = load i64, ptr %6, align 8, !tbaa !123
  %.val83.prol = load i32, ptr %i.ahd, align 8, !tbaa !120 ; 2 uses
  %i.ahj = and i32 %.val83.prol, 63
  %i.ahk = zext nneg i32 %i.ahj to i64
  %i.ahl = shl i64 %.val82.prol, %i.ahk
  %i.ahm = lshr i64 %i.ahl, %i.ahg
  %i.ahn = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ahm ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 1
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !110
  %i.ahq = load i8, ptr %i.ahn, align 1, !tbaa !112
  %i.ahr = zext i8 %i.ahq to i32
  %i.ahs = add i32 %.val83.prol, %i.ahr
  store i32 %i.ahs, ptr %i.ahd, align 8, !tbaa !120
  %i.aht = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1
  store i8 %i.ahp, ptr %.3.i.i, align 1, !tbaa !7
  br label %.prol.loopexit589

.prol.loopexit589:                                ; preds = %.prol.loopexit589.unr-lcssa, %.lr.ph482
  %.6.i.i481.unr = phi ptr [ %.3.i.i, %.lr.ph482 ], [ %i.aht, %.prol.loopexit589.unr-lcssa ]
  %i.ahu = icmp eq i64 %i.ahh, %.neg593
  br i1 %i.ahu, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit, label %.lr.ph482.new

.lr.ph482.new:                                    ; preds = %.prol.loopexit589, %.lr.ph482.new
  %.6.i.i481 = phi ptr [ %i.aiq, %.lr.ph482.new ], [ %.6.i.i481.unr, %.prol.loopexit589 ] ; 3 uses
  %.val82 = load i64, ptr %6, align 8, !tbaa !123
  %.val83 = load i32, ptr %i.ahd, align 8, !tbaa !120 ; 2 uses
  %i.ahv = and i32 %.val83, 63
  %i.ahw = zext nneg i32 %i.ahv to i64
  %i.ahx = shl i64 %.val82, %i.ahw
  %i.ahy = lshr i64 %i.ahx, %i.ahg
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ahy ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 1
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !110
  %i.aic = load i8, ptr %i.ahz, align 1, !tbaa !112
  %i.aid = zext i8 %i.aic to i32
  %i.aie = add i32 %.val83, %i.aid
  store i32 %i.aie, ptr %i.ahd, align 8, !tbaa !120
  %i.aif = getelementptr inbounds nuw i8, ptr %.6.i.i481, i64 1
  store i8 %i.aib, ptr %.6.i.i481, align 1, !tbaa !7
  %.val82.1 = load i64, ptr %6, align 8, !tbaa !123
  %.val83.1 = load i32, ptr %i.ahd, align 8, !tbaa !120 ; 2 uses
  %i.aig = and i32 %.val83.1, 63
  %i.aih = zext nneg i32 %i.aig to i64
  %i.aii = shl i64 %.val82.1, %i.aih
  %i.aij = lshr i64 %i.aii, %i.ahg
  %i.aik = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aij ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 1
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !110
  %i.ain = load i8, ptr %i.aik, align 1, !tbaa !112
  %i.aio = zext i8 %i.ain to i32
  %i.aip = add i32 %.val83.1, %i.aio
  store i32 %i.aip, ptr %i.ahd, align 8, !tbaa !120
  %i.aiq = getelementptr inbounds nuw i8, ptr %.6.i.i481, i64 2 ; 2 uses
  store i8 %i.aim, ptr %i.aif, align 1, !tbaa !7
  %exitcond498.not.1 = icmp eq ptr %i.aiq, %scevgep497
  br i1 %exitcond498.not.1, label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit, label %.lr.ph482.new, !llvm.loop !114

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit: ; preds = %.lr.ph482.new, %.prol.loopexit589
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.pre500 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !121
  %.pre502 = load i32, ptr %i.ahd, align 8
  br label %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i

_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i: ; preds = %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i
  %i.air = phi i32 [ %.pre502, %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit ], [ %i.aha, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i ]
  %i.ais = phi ptr [ %.pre500, %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i.loopexit ], [ %i.ahb, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i ]
  %i.ait = icmp ne ptr %.sroa.69266.2, %i.o
  %i.aiu = icmp ne i32 %.sroa.25248.3.lcssa, 64
  %narrow.not363 = select i1 %i.ait, i1 true, i1 %i.aiu
  %i.aiv = icmp ne ptr %.sroa.69200.2, %i.p
  %i.aiw = icmp ne i32 %.sroa.25182.3.lcssa, 64
  %narrow355.not366 = select i1 %i.aiv, i1 true, i1 %i.aiw
  %.not = or i1 %narrow.not363, %narrow355.not366
  %i.aix = icmp ne ptr %.sroa.69136.2, %i.q
  %i.aiy = icmp ne i32 %.sroa.25.3.lcssa, 64
  %narrow356.not369 = select i1 %i.aix, i1 true, i1 %i.aiy
  %.not360 = or i1 %.not, %narrow356.not369
  %i.aiz = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !125
  %i.ajb = icmp ne ptr %i.ais, %i.aja
  %i.ajc = icmp ne i32 %i.air, 64
  %narrow357.not372 = select i1 %i.ajb, i1 true, i1 %i.ajc
  %.not358 = or i1 %.not360, %narrow357.not372
  %spec.select.i = select i1 %.not358, i64 -20, i64 %1
  br label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread

_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread: ; preds = %bb.ak, %bb.aa, %bb.ac, %bb.y, %bb.o, %bb.q, %bb.m, %bb.c, %bb.e, %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i, %.loopexit, %bb.am, %bb.b
  %.5.i = phi i64 [ %spec.select.i, %_ZN11duckdb_zstdL18HUF_decodeStreamX1EPhPNS_13BIT_DStream_tES0_PKNS_10HUF_DEltX1Ej.exit.i ], [ -20, %bb.b ], [ -1, %bb.q ], [ -20, %.loopexit ], [ -1, %bb.e ], [ %i.gg, %bb.am ], [ -20, %bb.m ], [ -72, %bb.c ], [ -20, %bb.y ], [ -72, %bb.o ], [ -20, %bb.ak ], [ -72, %bb.aa ], [ -1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bodyEPvmPKvmPKj.exit

_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bodyEPvmPKvmPKj.exit: ; preds = %bb.a, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread
  %.6.i = phi i64 [ %.5.i, %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread ], [ -20, %bb.a ]
  ret i64 %.6.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_fastEPvmPKvmPKjPFvPNS_22HUF_DecompressFastArgsEE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #11 {
bb.a:
  %5 = alloca %"struct.duckdb_zstd::HUF_DecompressFastArgs", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  %.idx.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.c = call fastcc noundef i64 @_ZN11duckdb_zstdL27HUF_DecompressFastArgs_initEPNS_22HUF_DecompressFastArgsEPvmPKvmPKj(ptr noundef %5, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZN11duckdb_zstdL50HUF_decompress4X1_usingDTable_internal_fast_c_loopEPNS_22HUF_DecompressFastArgsE(ptr noundef nonnull %5)
  %i.e = add i64 %1, 3
  %i.f = lshr i64 %i.e, 2                         ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 104
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond60 = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond60, label %.thread, label %bb.d, !llvm.loop !136

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %.04556 = phi ptr [ %0, %bb.b ], [ %.146, %bb.c ] ; 2 uses
  %i.l = ptrtoint ptr %.04556 to i64
  %i.m = sub i64 %i.g, %i.l
  %.not53 = icmp ugt i64 %i.f, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %.04556, i64 %i.f
  %.146 = select i1 %.not53, ptr %i.b, ptr %i.n   ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !133  ; 7 uses
  %i.q = icmp ugt ptr %i.p, %.146
  br i1 %i.q, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !133  ; 9 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !133
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = icmp ult ptr %i.s, %i.v
  br i1 %i.w, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i = load i64, ptr %i.s, align 1, !tbaa !32 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.y = load i64, ptr %i.x, align 8, !tbaa !32
  %i.z = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.y, i1 true) ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32           ; 5 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !129 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = ptrtoint ptr %.146 to i64               ; 3 uses
  %i.ae = ptrtoint ptr %i.p to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 3
  br i1 %i.ag, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.f
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = getelementptr inbounds i8, ptr %.146, i64 -3
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.k
  %.0.i53 = phi ptr [ %i.p, %.preheader ], [ %i.cp, %bb.k ] ; 8 uses
  %.sroa.0.252 = phi i64 [ %.val.i, %.preheader ], [ %.sroa.0.3, %bb.k ]
  %.sroa.12.251 = phi i32 [ %i.aa, %.preheader ], [ %i.co, %bb.k ] ; 5 uses
  %.sroa.3820.250 = phi ptr [ %i.s, %.preheader ], [ %.sroa.3820.3, %bb.k ] ; 5 uses
  %.not.i37.i = icmp ult ptr %.sroa.3820.250, %i.ac
  br i1 %.not.i37.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = lshr i32 %.sroa.12.251, 3
  %i.ak = and i32 %.sroa.12.251, 7
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i

bb.i:                                             ; preds = %bb.g
  %i.al = icmp eq ptr %.sroa.3820.250, %i.ab
  br i1 %i.al, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = lshr i32 %.sroa.12.251, 3               ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds i8, ptr %.sroa.3820.250, i64 %i.ao
  %i.aq = icmp uge ptr %i.ap, %i.ab               ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.3820.250 to i64
  %i.as = sub i64 %i.ar, %i.ah
  %i.at = trunc i64 %i.as to i32
  %.021.i39.i = select i1 %i.aq, i32 %i.am, i32 %i.at ; 2 uses
  %i.au = shl i32 %.021.i39.i, 3
  %i.av = sub i32 %.sroa.12.251, %i.au
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i: ; preds = %bb.j, %bb.h
  %.pn49.in = phi i32 [ %i.aj, %bb.h ], [ %.021.i39.i, %bb.j ]
  %.sroa.12.3 = phi i32 [ %i.ak, %bb.h ], [ %i.av, %bb.j ] ; 3 uses
  %.022.i38.i = phi i1 [ true, %bb.h ], [ %i.aq, %bb.j ]
  %.pn49 = zext i32 %.pn49.in to i64
  %.pn = sub nsw i64 0, %.pn49
  %.sroa.3820.3 = getelementptr inbounds i8, ptr %.sroa.3820.250, i64 %.pn ; 2 uses
  %.sroa.0.3 = load i64, ptr %.sroa.3820.3, align 1, !tbaa !32 ; 7 uses
  %i.aw = icmp ult ptr %.0.i53, %i.ai
  %i.ax = and i1 %i.aw, %.022.i38.i
  br i1 %i.ax, label %bb.k, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.k:                                             ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i
  %i.ay = and i32 %.sroa.12.3, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %.sroa.0.3, %i.az
  %i.bb = lshr i64 %i.ba, 53
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !110
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !112
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add i32 %.sroa.12.3, %i.bg              ; 2 uses
  store i8 %i.be, ptr %.0.i53, align 1, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i53, i64 1
  %i.bj = and i32 %i.bh, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl i64 %.sroa.0.3, %i.bk
  %i.bm = lshr i64 %i.bl, 53
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !110
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !112
  %i.br = zext i8 %i.bq to i32
  %i.bs = add i32 %i.bh, %i.br                    ; 2 uses
  store i8 %i.bp, ptr %i.bi, align 1, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i53, i64 2
  %i.bu = and i32 %i.bs, 63
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl i64 %.sroa.0.3, %i.bv
  %i.bx = lshr i64 %i.bw, 53
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !110
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !112
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add i32 %i.bs, %i.cc                    ; 2 uses
  store i8 %i.ca, ptr %i.bt, align 1, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i53, i64 3
  %i.cf = and i32 %i.cd, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl i64 %.sroa.0.3, %i.cg
  %i.ci = lshr i64 %i.ch, 53
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !110
  %i.cm = load i8, ptr %i.cj, align 1, !tbaa !112
  %i.cn = zext i8 %i.cm to i32
  %i.co = add i32 %i.cd, %i.cn                    ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i53, i64 4 ; 2 uses
  store i8 %i.cl, ptr %i.ce, align 1, !tbaa !7
  %i.cq = icmp ugt i32 %i.co, 64
  br i1 %i.cq, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.g, !prof !134, !llvm.loop !113

bb.l:                                             ; preds = %bb.f
  %.not.i.i = icmp ult ptr %i.s, %i.ac
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = lshr i64 %i.z, 3
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.s, i64 %i.cs
  %i.cu = and i32 %i.aa, 7
  %.val.i71 = load i64, ptr %i.ct, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cv = icmp eq ptr %i.s, %i.ab
  br i1 %i.cv, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %i.aa, 3                       ; 2 uses
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = getelementptr inbounds i8, ptr %i.s, i64 %i.cy
  %i.da = icmp ult ptr %i.cz, %i.ab
  %i.db = ptrtoint ptr %i.s to i64
  %i.dc = ptrtoint ptr %i.ab to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = trunc i64 %i.dd to i32
  %.021.i.i = select i1 %i.da, i32 %i.de, i32 %i.cw ; 2 uses
  %i.df = zext i32 %.021.i.i to i64
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.s, i64 %i.dg
  %i.di = shl i32 %.021.i.i, 3
  %i.dj = sub i32 %i.aa, %i.di
  %.val58 = load i64, ptr %i.dh, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %bb.i, %bb.k, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i, %bb.n, %bb.m, %bb.o
  %.sroa.12.5 = phi i32 [ %i.aa, %bb.n ], [ %i.dj, %bb.o ], [ %i.cu, %bb.m ], [ %i.co, %bb.k ], [ %.sroa.12.251, %bb.i ], [ %.sroa.12.3, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ] ; 3 uses
  %.sroa.0.5 = phi i64 [ %.val.i, %bb.n ], [ %.val58, %bb.o ], [ %.val.i71, %bb.m ], [ %.sroa.0.3, %bb.k ], [ %.sroa.0.252, %bb.i ], [ %.sroa.0.3, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ] ; 3 uses
  %.3.i = phi ptr [ %i.p, %bb.n ], [ %i.p, %bb.o ], [ %i.p, %bb.m ], [ %i.cp, %bb.k ], [ %.0.i53, %bb.i ], [ %.0.i53, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ] ; 5 uses
  %i.dk = icmp ult ptr %.3.i, %.146
  br i1 %i.dk, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %.3.i65 = ptrtoaddr ptr %.3.i to i64            ; 2 uses
  %6 = sub i64 %i.ad, %.3.i65
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.dl = and i32 %.sroa.12.5, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl i64 %.sroa.0.5, %i.dm
  %i.do = lshr i64 %i.dn, 53
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !110
  %i.ds = load i8, ptr %i.dp, align 1, !tbaa !112
  %i.dt = zext i8 %i.ds to i32
  %i.du = add i32 %.sroa.12.5, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  store i8 %i.dr, ptr %.3.i, align 1, !tbaa !7
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.6.i55.unr = phi ptr [ %.3.i, %.lr.ph.preheader ], [ %i.dv, %.lr.ph.prol ]
  %.sroa.12.654.unr = phi i32 [ %.sroa.12.5, %.lr.ph.preheader ], [ %i.du, %.lr.ph.prol ]
  %i.dw = add i64 %i.ad, -1
  %i.dx = icmp eq i64 %i.dw, %.3.i65
  br i1 %i.dx, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.6.i55 = phi ptr [ %i.et, %.lr.ph ], [ %.6.i55.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.12.654 = phi i32 [ %i.es, %.lr.ph ], [ %.sroa.12.654.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.dy = and i32 %.sroa.12.654, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl i64 %.sroa.0.5, %i.dz
  %i.eb = lshr i64 %i.ea, 53
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !110
  %i.ef = load i8, ptr %i.ec, align 1, !tbaa !112
  %i.eg = zext i8 %i.ef to i32
  %i.eh = add i32 %.sroa.12.654, %i.eg            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.6.i55, i64 1
  store i8 %i.ee, ptr %.6.i55, align 1, !tbaa !7
  %i.ej = and i32 %i.eh, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl i64 %.sroa.0.5, %i.ek
  %i.em = lshr i64 %i.el, 53
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !110
  %i.eq = load i8, ptr %i.en, align 1, !tbaa !112
  %i.er = zext i8 %i.eq to i32
  %i.es = add i32 %i.eh, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.6.i55, i64 2 ; 2 uses
  store i8 %i.ep, ptr %i.ei, align 1, !tbaa !7
  %exitcond.not.1 = icmp eq ptr %i.et, %.146
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !114

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !133
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.eu = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.p, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.af ; 2 uses
  store ptr %i.ev, ptr %i.o, align 8, !tbaa !133
  %.not55 = icmp eq ptr %i.ev, %.146
  br i1 %.not55, label %bb.c, label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.c, %bb.e, %bb.d, %bb.a
  %.6 = phi i64 [ %i.c, %bb.a ], [ -20, %bb.d ], [ -20, %bb.e ], [ %1, %bb.c ], [ -20, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i64 %.6
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 8, i32 24}
!13 = distinct !{!13, !9, !10, !11}
!14 = distinct !{!14, !9, !11, !10}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !9, !10, !11}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = distinct !{!28, !9, !10, !11}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !9, !10}
!31 = distinct !{!31, !9}
!32 = !{!33, !33, i64 0}
!33 = !{!"long", !5, i64 0}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !17}
!43 = !{!44, !5, i64 0}
!44 = !{!"_ZTSN11duckdb_zstd14sortedSymbol_tE", !5, i64 0}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9, !10, !11}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !9, !10}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!60}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !9, !10, !11}
!62 = distinct !{!62, !17}
!63 = !{!64}
!64 = distinct !{!64, !65}
!65 = distinct !{!65, !"LVerDomain"}
!66 = !{!67}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !9, !10, !11}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !9, !10}
!71 = distinct !{!71, !9, !10}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !9}
!76 = distinct !{!76, !9}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !17}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !9, !10, !11}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !9, !10}
!87 = !{!88}
!88 = distinct !{!88, !89}
!89 = distinct !{!89, !"LVerDomain"}
!90 = !{!91}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !9, !10, !11}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !9, !10}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !9}
!97 = !{!98, !5, i64 2}
!98 = !{!"_ZTSN11duckdb_zstd10HUF_DEltX2E", !99, i64 0, !5, i64 2, !5, i64 3}
!99 = !{!"short", !5, i64 0}
!100 = !{!98, !5, i64 3}
!101 = !{!"branch_weights", i32 127, i32 255873}
!102 = distinct !{!102, !9}
!103 = distinct !{!103, !9}
!104 = !{!"branch_weights", i32 1, i32 127}
!105 = distinct !{!105, !9}
!106 = distinct !{!106, !9}
!107 = !{!108, !4, i64 0}
!108 = !{!"_ZTSN11duckdb_zstd11algo_time_tE", !4, i64 0, !4, i64 4}
!109 = !{!108, !4, i64 4}
!110 = !{!111, !5, i64 1}
!111 = !{!"_ZTSN11duckdb_zstd10HUF_DEltX1E", !5, i64 0, !5, i64 1}
!112 = !{!111, !5, i64 0}
!113 = distinct !{!113, !9}
!114 = distinct !{!114, !9}
!115 = !{!99, !99, i64 0}
!116 = !{!117, !118, i64 32}
!117 = !{!"_ZTSN11duckdb_zstd13BIT_DStream_tE", !33, i64 0, !4, i64 8, !118, i64 16, !118, i64 24, !118, i64 32}
!118 = !{!"p1 omnipotent char", !119, i64 0}
!119 = !{!"any pointer", !5, i64 0}
!120 = !{!117, !4, i64 8}
!121 = !{!117, !118, i64 16}
!122 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!123 = !{!117, !33, i64 0}
!124 = distinct !{!124, !9}
!125 = !{!117, !118, i64 24}
!126 = distinct !{!126, !9}
!127 = !{!128, !119, i64 96}
!128 = !{!"_ZTSN11duckdb_zstd22HUF_DecompressFastArgsE", !5, i64 0, !5, i64 32, !5, i64 64, !119, i64 96, !118, i64 104, !118, i64 112, !5, i64 120}
!129 = !{!128, !118, i64 104}
!130 = !{!128, !118, i64 112}
!131 = distinct !{!131, !9}
!132 = distinct !{!132, !9}
!133 = !{!118, !118, i64 0}
!134 = !{!"branch_weights", i32 1, i32 1999}
!135 = distinct !{!135, !9}
end_hunk_10
