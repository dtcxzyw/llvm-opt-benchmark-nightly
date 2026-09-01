Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/huf_decompress?download=true
inline.NumInlined: 722
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@HUF_readDTableX1_wksp:bb.a
  %invariant.gep309 = getelementptr i8, ptr %i.fc, i64 %i.je
  %i.jg = add nsw i64 %i.jd, -1
  %i.jh = lshr i64 %i.jg, 4
  %i.ji = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %xtraiter393 = and i64 %i.ji, 7                 ; 3 uses
  %i.jj = icmp ult i32 %i.fi, 113
  %unroll_iter397 = and i64 %i.ji, 2305843009213693944
  %lcmp.mod395.not = icmp eq i64 %xtraiter393, 0
  %lcmp.mod396 = icmp ne i64 %xtraiter393, 0
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %._crit_edge204
  %indvars.iv276 = phi i64 [ %i.jf, %.lr.ph203.preheader ], [ %indvars.iv.next277, %._crit_edge204 ] ; 2 uses
  %indvars.iv274 = phi i64 [ 0, %.lr.ph203.preheader ], [ %indvars.iv.next275, %._crit_edge204 ] ; 2 uses
  %gep310 = getelementptr i8, ptr %invariant.gep309, i64 %indvars.iv274
  %i.jk = load i8, ptr %gep310, align 1, !tbaa !9
  %i.jl = zext i8 %i.jk to i64
  %i.jm = shl nuw nsw i64 %i.jl, 8
  %i.jn = or disjoint i64 %i.jm, %i.jb
  %i.jo = mul nuw i64 %i.jn, 281479271743489
  %i.jp = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv276 ; 9 uses
  %i.jq = insertelement <4 x i64> poison, i64 %i.jo, i64 0
  %i.jr = shufflevector <4 x i64> %i.jq, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %i.jj, label %.epil.preheader392, label %.lr.ph203.new

.lr.ph203.new:                                    ; preds = %.lr.ph203, %.lr.ph203.new
  %indvars.iv271 = phi i64 [ %indvars.iv.next272.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ] ; 9 uses
  %niter398 = phi i64 [ %niter398.next.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ]
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  store <4 x i64> %i.jr, ptr %i.js, align 1, !tbaa !34
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  store <4 x i64> %i.jr, ptr %i.ju, align 1, !tbaa !34
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  store <4 x i64> %i.jr, ptr %i.jw, align 1, !tbaa !34
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 96
  store <4 x i64> %i.jr, ptr %i.jy, align 1, !tbaa !34
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 128
  store <4 x i64> %i.jr, ptr %i.ka, align 1, !tbaa !34
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 160
  store <4 x i64> %i.jr, ptr %i.kc, align 1, !tbaa !34
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 192
  store <4 x i64> %i.jr, ptr %i.ke, align 1, !tbaa !34
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 224
  store <4 x i64> %i.jr, ptr %i.kg, align 1, !tbaa !34
  %indvars.iv.next272.7 = add nuw nsw i64 %indvars.iv271, 128 ; 2 uses
  %niter398.next.7 = add i64 %niter398, 8         ; 2 uses
  %niter398.ncmp.7.not = icmp eq i64 %niter398.next.7, %unroll_iter397
  br i1 %niter398.ncmp.7.not, label %._crit_edge204.unr-lcssa, label %.lr.ph203.new, !llvm.loop !38

._crit_edge204.unr-lcssa:                         ; preds = %.lr.ph203.new
  br i1 %lcmp.mod395.not, label %._crit_edge204, label %.epil.preheader392

.epil.preheader392:                               ; preds = %._crit_edge204.unr-lcssa, %.lr.ph203
  %indvars.iv271.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next272.7, %._crit_edge204.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod396)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader392
  %indvars.iv271.epil = phi i64 [ %indvars.iv271.epil.init, %.epil.preheader392 ], [ %indvars.iv.next272.epil, %bb.l ] ; 2 uses
  %epil.iter394 = phi i64 [ 0, %.epil.preheader392 ], [ %epil.iter394.next, %bb.l ]
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv271.epil
  store <4 x i64> %i.jr, ptr %i.kh, align 1, !tbaa !34
  %indvars.iv.next272.epil = add nuw nsw i64 %indvars.iv271.epil, 16
  %epil.iter394.next = add i64 %epil.iter394, 1   ; 2 uses
  %epil.iter394.cmp.not = icmp eq i64 %epil.iter394.next, %xtraiter393
  br i1 %epil.iter394.cmp.not, label %._crit_edge204, label %bb.l, !llvm.loop !39

._crit_edge204:                                   ; preds = %bb.l, %._crit_edge204.unr-lcssa
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, %i.jd
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count281
  br i1 %exitcond282.not, label %.loopexit, label %.lr.ph203, !llvm.loop !40

.loopexit.loopexit364.unr-lcssa:                  ; preds = %.lr.ph197
  %lcmp.mod386.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod386.not, label %.loopexit, label %.lr.ph197.epil.preheader

.lr.ph197.epil.preheader:                         ; preds = %.loopexit.loopexit364.unr-lcssa, %.lr.ph197.preheader
  %indvars.iv255.epil.init = phi i64 [ %i.gb, %.lr.ph197.preheader ], [ %indvars.iv.next256.1, %.loopexit.loopexit364.unr-lcssa ]
  %indvars.iv253.epil.init = phi i64 [ 0, %.lr.ph197.preheader ], [ %indvars.iv.next254.1, %.loopexit.loopexit364.unr-lcssa ]
  %lcmp.mod387 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod387)
  %gep306.epil = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253.epil.init
  %i.ki = load i8, ptr %gep306.epil, align 1, !tbaa !9 ; 2 uses
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv255.epil.init ; 4 uses
  store i8 %i.fl, ptr %i.kj, align 1, !tbaa !9
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.kj, i64 1
  store i8 %i.ki, ptr %.sroa.5.0..sroa_idx.epil, align 1, !tbaa !9
  %i.kk = getelementptr i8, ptr %i.kj, i64 2
  store i8 %i.fl, ptr %i.kk, align 1, !tbaa !9
  %.sroa.5.0..sroa_idx8.epil = getelementptr i8, ptr %i.kj, i64 3
  store i8 %i.ki, ptr %.sroa.5.0..sroa_idx8.epil, align 1, !tbaa !9
  br label %.loopexit

.loopexit.loopexit365.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod380.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod380.not, label %.loopexit, label %.epil.preheader377

.epil.preheader377:                               ; preds = %.loopexit.loopexit365.unr-lcssa, %.lr.ph194
  %indvars.iv246.epil.init = phi i64 [ %i.fx, %.lr.ph194 ], [ %indvars.iv.next247.1, %.loopexit.loopexit365.unr-lcssa ]
  %indvars.iv244.epil.init = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next245.1, %.loopexit.loopexit365.unr-lcssa ]
  %lcmp.mod381 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod381)
  %gep304.epil = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244.epil.init
  %i.kl = load i8, ptr %gep304.epil, align 1, !tbaa !9
  %i.km = zext i8 %i.kl to i64
  %i.kn = shl nuw nsw i64 %i.km, 8
  %i.ko = or disjoint i64 %i.kn, %i.fv
  %i.kp = mul nuw i64 %i.ko, 281479271743489
  %i.kq = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv246.epil.init
  store i64 %i.kp, ptr %i.kq, align 1, !tbaa !34
  br label %.loopexit

.loopexit.loopexit366.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod373.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod373.not, label %.loopexit, label %.epil.preheader370

.epil.preheader370:                               ; preds = %.loopexit.loopexit366.unr-lcssa, %.lr.ph191
  %indvars.iv237.epil.init = phi i64 [ %i.fs, %.lr.ph191 ], [ %indvars.iv.next238.1, %.loopexit.loopexit366.unr-lcssa ]
  %indvars.iv235.epil.init = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next236.1, %.loopexit.loopexit366.unr-lcssa ]
  %lcmp.mod374 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod374)
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235.epil.init
  %i.kr = load i8, ptr %gep.epil, align 1, !tbaa !9
  %i.ks = zext i8 %i.kr to i64
  %i.kt = shl nuw nsw i64 %i.ks, 8
  %i.ku = or disjoint i64 %i.kt, %i.fq
  %i.kv = mul nuw i64 %i.ku, 281479271743489      ; 2 uses
  %i.kw = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv237.epil.init ; 2 uses
  store i64 %i.kv, ptr %i.kw, align 1, !tbaa !34
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i64 %i.kv, ptr %i.kx, align 1, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader370, %.loopexit.loopexit366.unr-lcssa, %.epil.preheader377, %.loopexit.loopexit365.unr-lcssa, %.lr.ph197.epil.preheader, %.loopexit.loopexit364.unr-lcssa, %.lr.ph200.prol.loopexit, %.lr.ph200, %._crit_edge204, %middle.block342, %vec.epilog.middle.block359, %.preheader177, %.preheader175, %.preheader173, %.preheader, %bb.k, %.lr.ph208
  %i.ky = add nsw i32 %i.ff, %.0156210
  %i.kz = mul nsw i32 %i.ff, %i.fi
  %i.la = add nsw i32 %i.kz, %.0155212
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.fd
  br i1 %exitcond287.not, label %.critedge, label %bb.h, !llvm.loop !41

.critedge:                                        ; preds = %.loopexit, %HUF_rescaleStats.exit, %bb.b, %bb.a
  %.1 = phi i64 [ -44, %HUF_rescaleStats.exit ], [ -44, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @HUF_readStats_wksp(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i64 @HUF_readDTableX2_wksp(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %.val = load i32, ptr %0, align 4               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.val to i8
  %.sroa.7.0.extract.shift = lshr i32 %.val, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8
  %i.d = and i32 %.val, 255                       ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 4          ; 9 uses
  %i.f = icmp ult i64 %4, 2124
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 676 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 680 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 624 ; 10 uses
  %i.j = icmp samesign ugt i32 %i.d, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.i, i8 0, i64 112, i1 false)
  br i1 %i.j, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 992 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1248
  %i.m = call i64 @HUF_readStats_wksp(ptr noundef nonnull %i.k, i64 noundef 256, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.l, i64 noundef 876, i32 noundef %5) #16 ; 3 uses
  %i.n = icmp ult i64 %i.m, -119
  br i1 %i.n, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.b, align 4, !tbaa !8    ; 8 uses
  %i.p = icmp ugt i32 %i.o, %i.d
  br i1 %i.p, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw nsw i32 %i.o, 1                  ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv182 = phi i32 [ %indvars.iv.next183, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv177 = phi i32 [ %indvars.iv.next178, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %indvars.iv158 = phi i32 [ %indvars.iv.next159, %bb.f ], [ %i.q, %bb.e ] ; 6 uses
  %.091 = phi i32 [ %i.v, %bb.f ], [ %i.o, %bb.e ] ; 6 uses
  %i.r = zext i32 %.091 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  %i.u = icmp eq i32 %i.t, 0
  %i.v = add i32 %.091, -1
  %indvars.iv.next159 = add i32 %indvars.iv158, -1
  %indvars.iv.next178 = add i32 %indvars.iv177, 1
  %indvars.iv.next183 = add i32 %indvars.iv182, -1
  br i1 %i.u, label %bb.f, label %.preheader, !llvm.loop !42

.preheader:                                       ; preds = %bb.f
  %i.w = icmp samesign ult i32 %i.o, 12
  %i.x = icmp eq i32 %i.d, 12
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  %spec.store.select = select i1 %or.cond, i32 11, i32 %i.d ; 10 uses
  %i.y = add i32 %.091, 1                         ; 2 uses
  %i.z = icmp ugt i32 %i.y, 1                     ; 2 uses
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %indvars.iv158 to i64
  %i.aa = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.aa, 3                    ; 3 uses
  %i.ab = add i32 %indvars.iv158, -2
  %i.ac = icmp ult i32 %i.ab, 3
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aa, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.093116 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.af = add i32 %i.ae, %.093116                 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %.093116, ptr %i.ag, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = add i32 %i.ai, %i.af                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  store i32 %i.af, ptr %i.ak, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = add i32 %i.am, %i.aj                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  store i32 %i.aj, ptr %i.ao, align 4, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = add i32 %i.aq, %i.an                    ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  store i32 %i.an, ptr %i.as, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !43

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.093116.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod330 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod330)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.093116.epil = phi i32 [ %.093116.epil.init, %.lr.ph.epil.preheader ], [ %i.av, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.au = load i32, ptr %i.at, align 4, !tbaa !8
  %i.av = add i32 %i.au, %.093116.epil            ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  store i32 %.093116.epil, ptr %i.aw, align 4, !tbaa !8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !44

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.093.lcssa = phi i32 [ 0, %.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil ] ; 2 uses
  store i32 %.093.lcssa, ptr %i.h, align 4, !tbaa !8
  %i.ax = zext i32 %i.y to i64                    ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ax
  store i32 %.093.lcssa, ptr %i.ay, align 4, !tbaa !8
  %i.az = load i32, ptr %i.c, align 4, !tbaa !8   ; 4 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %._crit_edge121, label %.lr.ph120

.lr.ph120:                                        ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 736 ; 3 uses
  %wide.trip.count163 = zext i32 %i.az to i64     ; 2 uses
  %xtraiter331 = and i64 %wide.trip.count163, 1
  %i.bb = icmp eq i32 %i.az, 1
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph120.new

.lr.ph120.new:                                    ; preds = %.lr.ph120
  %unroll_iter335 = and i64 %wide.trip.count163, 4294967294
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph120.new
  %indvars.iv160 = phi i64 [ 0, %.lr.ph120.new ], [ %indvars.iv.next161.1, %bb.g ] ; 4 uses
  %niter336 = phi i64 [ 0, %.lr.ph120.new ], [ %niter336.next.1, %bb.g ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv160
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8  ; 2 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !8
  %i.bi = trunc i64 %indvars.iv160 to i8
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bj
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !45
  %indvars.iv.next161 = or disjoint i64 %indvars.iv160, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next161
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8  ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !8
  %i.br = trunc i64 %indvars.iv.next161 to i8
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bs
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !45
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %niter336.next.1 = add i64 %niter336, 2         ; 2 uses
  %niter336.ncmp.1 = icmp eq i64 %niter336.next.1, %unroll_iter335
  br i1 %niter336.ncmp.1, label %._crit_edge121.loopexit.unr-lcssa, label %bb.g, !llvm.loop !47

._crit_edge121.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod333.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod333.not, label %._crit_edge121, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120
  %indvars.iv160.epil.init = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next161.1, %._crit_edge121.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod334 = trunc i32 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod334)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv160.epil.init
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !8  ; 2 uses
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !8
  %i.ca = trunc i64 %indvars.iv160.epil.init to i8
  %i.cb = zext i32 %i.by to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !45
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %.epil.preheader, %._crit_edge121.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.cd = xor i32 %i.o, -1
  %i.ce = add nsw i32 %spec.store.select, %i.cd   ; 2 uses
  br i1 %i.z, label %.lr.ph125.preheader, label %HUF_fillDTableX2.exit

.lr.ph125.preheader:                              ; preds = %._crit_edge121
  %wide.trip.count169 = zext i32 %indvars.iv158 to i64 ; 4 uses
  %i.cf = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %xtraiter337 = and i64 %i.cf, 1
  %i.cg = icmp eq i32 %indvars.iv158, 2
  br i1 %i.cg, label %.lr.ph125.epil.preheader, label %.lr.ph125.preheader.new

.lr.ph125.preheader.new:                          ; preds = %.lr.ph125.preheader
  %unroll_iter341 = and i64 %i.cf, -2
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125, %.lr.ph125.preheader.new
  %indvars.iv165 = phi i64 [ 1, %.lr.ph125.preheader.new ], [ %indvars.iv.next166.1, %.lr.ph125 ] ; 5 uses
  %.090122 = phi i32 [ 0, %.lr.ph125.preheader.new ], [ %i.ct, %.lr.ph125 ] ; 2 uses
  %niter342 = phi i64 [ 0, %.lr.ph125.preheader.new ], [ %niter342.next.1, %.lr.ph125 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv165
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.cj = trunc nuw i64 %indvars.iv165 to i32
  %i.ck = add i32 %i.ce, %i.cj
  %i.cl = shl i32 %i.ci, %i.ck
  %i.cm = add i32 %i.cl, %.090122                 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165
  store i32 %.090122, ptr %i.cn, align 4, !tbaa !8
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next166
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = trunc nuw i64 %indvars.iv.next166 to i32
  %i.cr = add i32 %i.ce, %i.cq
  %i.cs = shl i32 %i.cp, %i.cr
  %i.ct = add i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next166
  store i32 %i.cm, ptr %i.cu, align 4, !tbaa !8
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %niter342.next.1 = add nuw i64 %niter342, 2     ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341
  br i1 %niter342.ncmp.1, label %._crit_edge126.unr-lcssa, label %.lr.ph125, !llvm.loop !48

._crit_edge126.unr-lcssa:                         ; preds = %.lr.ph125
  %lcmp.mod339.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod339.not, label %._crit_edge126, label %.lr.ph125.epil.preheader

.lr.ph125.epil.preheader:                         ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.preheader
  %indvars.iv165.epil.init = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next166.1, %._crit_edge126.unr-lcssa ]
  %.090122.epil.init = phi i32 [ 0, %.lr.ph125.preheader ], [ %i.ct, %._crit_edge126.unr-lcssa ]
  %lcmp.mod340 = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod340)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165.epil.init
  store i32 %.090122.epil.init, ptr %i.cv, align 4, !tbaa !8
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.epil.preheader
  %i.cw = sub i32 %i.q, %.091                     ; 3 uses
  %i.cx = add nuw nsw i32 %spec.store.select, 1
  %i.cy = sub i32 %i.cx, %i.cw
  %i.cz = icmp ult i32 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph129.preheader, label %._crit_edge134.split

.lr.ph129.preheader:                              ; preds = %._crit_edge126
  %i.da = zext i32 %indvars.iv177 to i64          ; 2 uses
  %i.db = add i32 %spec.store.select, %indvars.iv182
  %wide.trip.count175 = zext i32 %indvars.iv158 to i64
  %i.dc = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %min.iters.check = icmp ult i64 %i.dc, 8
  %n.vec = and i64 %i.dc, -8                      ; 3 uses
  %i.dd = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %._crit_edge130
  %indvar = phi i64 [ 0, %.lr.ph129.preheader ], [ %indvar.next, %._crit_edge130 ] ; 2 uses
  %indvars.iv179 = phi i64 [ %i.da, %.lr.ph129.preheader ], [ %indvars.iv.next180, %._crit_edge130 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %indvars.iv179 ; 6 uses
  %i.df = trunc nuw i64 %indvars.iv179 to i32     ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph129
  %i.dg = add i64 %indvar, %i.da
  %i.dh = mul i64 %i.dg, 52
  %i.di = add i64 %i.dh, -1
  %diff.check = icmp ult i64 %i.di, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = or disjoint i64 %index, 1               ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <4 x i32>, ptr %i.dk, align 4, !tbaa !8
  %wide.load224 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !8
  %i.dm = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dn = lshr <4 x i32> %wide.load224, %broadcast.splat
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dj ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %i.dm, ptr %i.do, align 4, !tbaa !8
  store <4 x i32> %i.dn, ptr %i.dp, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge130, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph129, %middle.block
  %indvars.iv171.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph129 ], [ %i.dd, %middle.block ] ; 4 uses
  %i.dr = sub nsw i64 %wide.trip.count169, %indvars.iv171.ph
  %xtraiter343 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod344.not = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv171.prol = phi i64 [ %indvars.iv.next172.prol, %scalar.ph.prol ], [ %indvars.iv171.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171.prol
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8
  %i.du = lshr i32 %i.dt, %i.df
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171.prol
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !8
  %indvars.iv.next172.prol = add nuw nsw i64 %indvars.iv171.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter343
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !50

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv171.unr = phi i64 [ %indvars.iv171.ph, %scalar.ph.preheader ], [ %indvars.iv.next172.prol, %scalar.ph.prol ]
  %i.dw = sub nsw i64 %indvars.iv171.ph, %wide.trip.count169
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %._crit_edge130, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172.3, %scalar.ph ], [ %indvars.iv171.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = lshr i32 %i.dz, %i.df
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !8
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ee = lshr i32 %i.ed, %i.df
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !8
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.1
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.ei = lshr i32 %i.eh, %i.df
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.1
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !8
  %indvars.iv.next172.2 = add nuw nsw i64 %indvars.iv171, 3 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.2
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !8
  %i.em = lshr i32 %i.el, %i.df
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.2
  store i32 %i.em, ptr %i.en, align 4, !tbaa !8
  %indvars.iv.next172.3 = add nuw nsw i64 %indvars.iv171, 4 ; 2 uses
  %exitcond176.not.3 = icmp eq i64 %indvars.iv.next172.3, %wide.trip.count175
  br i1 %exitcond176.not.3, label %._crit_edge130, label %scalar.ph, !llvm.loop !51

._crit_edge130:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next180 to i32
  %exitcond184.not = icmp eq i32 %i.db, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond184.not, label %._crit_edge134.split, label %.lr.ph129, !llvm.loop !52

._crit_edge134.split:                             ; preds = %._crit_edge130, %._crit_edge126
  %i.eo = getelementptr i8, ptr %3, i64 736       ; 12 uses
  %i.ep = sub nsw i32 %i.q, %spec.store.select
  %.not76.i = icmp slt i32 %.091, 1
  br i1 %.not76.i, label %HUF_fillDTableX2.exit, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %._crit_edge134.split
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep244 = getelementptr i8, ptr %0, i64 4
  %scevgep269 = getelementptr i8, ptr %0, i64 4
  %scevgep292 = getelementptr i8, ptr %0, i64 4
  %i.eq = add i64 %i.a, 735
  %i.er = add i64 %i.a, 735
  %6 = trunc nuw i32 %spec.store.select to i5
  %7 = trunc i32 %i.o to i5
  %8 = shl i5 %7, 1
  %9 = xor i5 %8, -1
  %10 = add i5 %9, %6
  %11 = shl i32 %i.o, 1
  %12 = or disjoint i32 %11, 1
  %i.es = add i64 %i.a, 735
  %i.et = add i64 %i.a, 735
  %13 = sub i32 %spec.store.select, %i.o
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %.loopexit.i
  %indvar369 = phi i32 [ 0, %.lr.ph78.i.preheader ], [ %indvar.next370, %.loopexit.i ] ; 3 uses
  %indvar367 = phi i5 [ 0, %.lr.ph78.i.preheader ], [ %indvar.next368, %.loopexit.i ] ; 2 uses
  %indvars.iv96.i = phi i64 [ 1, %.lr.ph78.i.preheader ], [ %indvars.iv.next97.i, %.loopexit.i ] ; 4 uses
  %14 = add i32 %13, %indvar369
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  %19 = add nsw i64 %18, -32                      ; 2 uses
  %20 = lshr i64 %19, 5
  %21 = add nuw nsw i64 %20, 1
  %22 = add i5 %10, %indvar367
  %23 = add i32 %spec.store.select, %indvar369
  %24 = sub i32 %12, %23
  %smax = call i32 @llvm.smax.i32(i32 %24, i32 1)
  %25 = trunc i32 %smax to i5
  %26 = add i5 %22, %25
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv96.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !8  ; 8 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next97.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8  ; 11 uses
  %i.ey = trunc nuw nsw i64 %indvars.iv96.i to i32
  %i.ez = sub i32 %i.q, %i.ey                     ; 10 uses
  %i.fa = sub i32 %spec.store.select, %i.ez       ; 3 uses
  %.not56.i = icmp ult i32 %i.fa, %i.cw
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv96.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !8  ; 9 uses
  br i1 %.not56.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph78.i
  %i.fd = and i32 %i.fa, 31
  %i.fe = shl nuw i32 1, %i.fd                    ; 4 uses
  %.not5766.i = icmp eq i32 %i.ev, %i.ex
  br i1 %.not5766.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ff = add i32 %i.ez, %i.ep                    ; 3 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.ff, i32 1)
  %i.fg = zext i32 %i.ez to i64
  %i.fh = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %i.fg ; 2 uses
  %i.fi = icmp sgt i32 %i.ff, 1
  %i.fj = shl i32 %i.ez, 16
  %i.fk = add i32 %i.fj, 16777216                 ; 8 uses
  %i.fl = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fl ; 2 uses
  %.not61.i = icmp sgt i32 %i.ff, %.091
  %i.fn = add i32 %i.ez, %i.q
  %i.fo = sext i32 %i.ev to i64                   ; 8 uses
  br i1 %.not61.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  switch i32 %i.fe, label %.preheader.i.us.i [
    i32 2, label %.loopexit.i.us.us.i.preheader
    i32 4, label %.loopexit.i.us.us74.i.preheader
  ]

.loopexit.i.us.us74.i.preheader:                  ; preds = %.lr.ph.split.us.i
  %i.fp = sub i32 %i.ex, %i.ev
  %.neg = add i32 %i.ev, 1
  %xtraiter370 = and i32 %i.fp, 1
  %lcmp.mod371.not = icmp eq i32 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %.loopexit.i.us.us74.i.prol.loopexit, label %.loopexit.i.us.us74.i.prol

.loopexit.i.us.us74.i.prol:                       ; preds = %.loopexit.i.us.us74.i.preheader
  %i.fq = sext i32 %i.fc to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.eo, i64 %i.fo
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !45
  %i.fu = zext i8 %i.ft to i32
  %i.fv = or disjoint i32 %i.fk, %i.fu
  %i.fw = zext i32 %i.fv to i64
  %i.fx = mul nuw i64 %i.fw, 4294967297           ; 2 uses
  store i64 %i.fx, ptr %i.fr, align 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i64 %i.fx, ptr %i.fy, align 2
  %i.fz = add i32 %i.fc, 4
  %indvars.iv.next88.i.prol = add nsw i64 %i.fo, 1
  br label %.loopexit.i.us.us74.i.prol.loopexit

.loopexit.i.us.us74.i.prol.loopexit:              ; preds = %.loopexit.i.us.us74.i.prol, %.loopexit.i.us.us74.i.preheader
  %indvars.iv87.i.unr = phi i64 [ %i.fo, %.loopexit.i.us.us74.i.preheader ], [ %indvars.iv.next88.i.prol, %.loopexit.i.us.us74.i.prol ]
  %.05267.us.us73.i.unr = phi i32 [ %i.fc, %.loopexit.i.us.us74.i.preheader ], [ %i.fz, %.loopexit.i.us.us74.i.prol ]
  %i.ga = icmp eq i32 %i.ex, %.neg
  br i1 %i.ga, label %.loopexit.i, label %.loopexit.i.us.us74.i

.loopexit.i.us.us.i.preheader:                    ; preds = %.lr.ph.split.us.i
  %i.gb = sub i32 %i.ex, %i.ev
  %.neg399 = add i32 %i.ev, 1
  %xtraiter373.a = and i32 %i.gb, 1
  %lcmp.mod374.not.a = icmp eq i32 %xtraiter373.a, 0
  br i1 %lcmp.mod374.not.a, label %.loopexit.i.us.us.i.prol.loopexit, label %.loopexit.i.us.us.i.prol

.loopexit.i.us.us.i.prol:                         ; preds = %.loopexit.i.us.us.i.preheader
  %i.gc = sext i32 %i.fc to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gc
  %i.ge = getelementptr inbounds i8, ptr %i.eo, i64 %i.fo
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !45
  %i.gg = zext i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.fk, %i.gg
  %i.gi = zext i32 %i.gh to i64
  %i.gj = mul nuw i64 %i.gi, 4294967297
  store i64 %i.gj, ptr %i.gd, align 2
  %i.gk = add i32 %i.fc, 2
  %indvars.iv.next91.i.prol = add nsw i64 %i.fo, 1
  br label %.loopexit.i.us.us.i.prol.loopexit

.loopexit.i.us.us.i.prol.loopexit:                ; preds = %.loopexit.i.us.us.i.prol, %.loopexit.i.us.us.i.preheader
  %indvars.iv90.i.unr = phi i64 [ %i.fo, %.loopexit.i.us.us.i.preheader ], [ %indvars.iv.next91.i.prol, %.loopexit.i.us.us.i.prol ]
  %.05267.us.us.i.unr = phi i32 [ %i.fc, %.loopexit.i.us.us.i.preheader ], [ %i.gk, %.loopexit.i.us.us.i.prol ]
  %i.gl = icmp eq i32 %i.ex, %.neg399
  br i1 %i.gl, label %.loopexit.i, label %.loopexit.i.us.us.i

.loopexit.i.us.us.i:                              ; preds = %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.loopexit.i.us.us.i ], [ %indvars.iv90.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %.05267.us.us.i = phi i32 [ %i.he, %.loopexit.i.us.us.i ], [ %.05267.us.us.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %i.gm = sext i32 %.05267.us.us.i to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gm
  %i.go = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !45
  %i.gq = zext i8 %i.gp to i32
  %i.gr = or disjoint i32 %i.fk, %i.gq
  %i.gs = zext i32 %i.gr to i64
  %i.gt = mul nuw i64 %i.gs, 4294967297
  store i64 %i.gt, ptr %i.gn, align 2
  %i.gu = add i32 %.05267.us.us.i, 2
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.gy = getelementptr i8, ptr %i.gx, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !45
  %i.ha = zext i8 %i.gz to i32
  %i.hb = or disjoint i32 %i.fk, %i.ha
  %i.hc = zext i32 %i.hb to i64
  %i.hd = mul nuw i64 %i.hc, 4294967297
  store i64 %i.hd, ptr %i.gw, align 2
  %i.he = add i32 %.05267.us.us.i, 4
  %indvars.iv.next91.i.1 = add nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %i.hf = trunc nsw i64 %indvars.iv.next91.i.1 to i32
  %.not57.us.us.i.1 = icmp eq i32 %i.ex, %i.hf
  br i1 %.not57.us.us.i.1, label %.loopexit.i, label %.loopexit.i.us.us.i, !llvm.loop !53

.loopexit.i.us.us74.i:                            ; preds = %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i.1, %.loopexit.i.us.us74.i ], [ %indvars.iv87.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %.05267.us.us73.i = phi i32 [ %i.ia, %.loopexit.i.us.us74.i ], [ %.05267.us.us73.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %i.hg = sext i32 %.05267.us.us73.i to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !45
  %i.hk = zext i8 %i.hj to i32
  %i.hl = or disjoint i32 %i.fk, %i.hk
  %i.hm = zext i32 %i.hl to i64
  %i.hn = mul nuw i64 %i.hm, 4294967297           ; 2 uses
  store i64 %i.hn, ptr %i.hh, align 2
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i64 %i.hn, ptr %i.ho, align 2
  %i.hp = add i32 %.05267.us.us73.i, 4
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hq ; 2 uses
  %i.hs = getelementptr i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.ht = getelementptr i8, ptr %i.hs, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !45
  %i.hv = zext i8 %i.hu to i32
  %i.hw = or disjoint i32 %i.fk, %i.hv
  %i.hx = zext i32 %i.hw to i64
  %i.hy = mul nuw i64 %i.hx, 4294967297           ; 2 uses
  store i64 %i.hy, ptr %i.hr, align 2
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hy, ptr %i.hz, align 2
  %i.ia = add i32 %.05267.us.us73.i, 8
  %indvars.iv.next88.i.1 = add nsw i64 %indvars.iv87.i, 2 ; 2 uses
  %i.ib = trunc nsw i64 %indvars.iv.next88.i.1 to i32
  %.not57.us.us75.i.1 = icmp eq i32 %i.ex, %i.ib
  br i1 %.not57.us.us75.i.1, label %.loopexit.i, label %.loopexit.i.us.us74.i, !llvm.loop !53

.preheader.i.us.i:                                ; preds = %.lr.ph.split.us.i, %.loopexit.i.us.i
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %.loopexit.i.us.i ], [ %i.fo, %.lr.ph.split.us.i ] ; 2 uses
  %.05267.us.i = phi i32 [ %i.jj, %.loopexit.i.us.i ], [ %i.fc, %.lr.ph.split.us.i ] ; 2 uses
  %i.ic = sext i32 %.05267.us.i to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ic ; 9 uses
  %i.ie = load i32, ptr %i.fm, align 4, !tbaa !8  ; 3 uses
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.preheader.i.us.i
  %i.ig = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv93.i
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !45
  %i.ii = zext i8 %i.ih to i32
  %i.ij = or disjoint i32 %i.fk, %i.ii
  %i.ik = zext i32 %i.ij to i64
  %i.il = mul nuw i64 %i.ik, 4294967297
  %i.im = zext nneg i32 %i.ie to i64
  %i.in = insertelement <4 x i64> poison, i64 %i.il, i64 0
  %i.io = shufflevector <4 x i64> %i.in, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.ip = add nsw i64 %i.im, -1
  %i.iq = lshr i64 %i.ip, 3
  %i.ir = add nuw nsw i64 %i.iq, 1                ; 2 uses
  %xtraiter376 = and i64 %i.ir, 7                 ; 3 uses
  %i.is = icmp ult i32 %i.ie, 57
  br i1 %i.is, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.new

.lr.ph.preheader.i.us.i.new:                      ; preds = %.lr.ph.preheader.i.us.i
  %unroll_iter380 = and i64 %i.ir, 4611686018427387896
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i, %.lr.ph.preheader.i.us.i.new
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %indvars.iv.next.i.us.i.7, %.lr.ph.i.us.i ] ; 9 uses
  %niter381 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %niter381.next.7, %.lr.ph.i.us.i ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  store <4 x i64> %i.io, ptr %i.it, align 2
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  store <4 x i64> %i.io, ptr %i.iv, align 2
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  store <4 x i64> %i.io, ptr %i.ix, align 2
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  store <4 x i64> %i.io, ptr %i.iz, align 2
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 128
  store <4 x i64> %i.io, ptr %i.jb, align 2
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 160
  store <4 x i64> %i.io, ptr %i.jd, align 2
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 192
  store <4 x i64> %i.io, ptr %i.jf, align 2
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 224
  store <4 x i64> %i.io, ptr %i.jh, align 2
  %indvars.iv.next.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.us.i, 64 ; 2 uses
  %niter381.next.7 = add nuw nsw i64 %niter381, 8 ; 2 uses
  %niter381.ncmp.7.not = icmp eq i64 %niter381.next.7, %unroll_iter380
  br i1 %niter381.ncmp.7.not, label %.loopexit.i.us.i.loopexit.unr-lcssa, label %.lr.ph.i.us.i, !llvm.loop !54

.loopexit.i.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.us.i
  %lcmp.mod378.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod378.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil.preheader

.lr.ph.i.us.i.epil.preheader:                     ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i.7, %.loopexit.i.us.i.loopexit.unr-lcssa ]
  %lcmp.mod379 = icmp ne i64 %xtraiter376, 0
  call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph.i.us.i.epil

.lr.ph.i.us.i.epil:                               ; preds = %.lr.ph.i.us.i.epil, %.lr.ph.i.us.i.epil.preheader
  %indvars.iv.i.us.i.epil = phi i64 [ %indvars.iv.i.us.i.epil.init, %.lr.ph.i.us.i.epil.preheader ], [ %indvars.iv.next.i.us.i.epil, %.lr.ph.i.us.i.epil ] ; 2 uses
  %epil.iter377 = phi i64 [ 0, %.lr.ph.i.us.i.epil.preheader ], [ %epil.iter377.next, %.lr.ph.i.us.i.epil ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i.us.i.epil
  store <4 x i64> %i.io, ptr %i.ji, align 2
  %indvars.iv.next.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.epil, 8
  %epil.iter377.next = add i64 %epil.iter377, 1   ; 2 uses
  %epil.iter377.cmp.not = icmp eq i64 %epil.iter377.next, %xtraiter376
  br i1 %epil.iter377.cmp.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil, !llvm.loop !55

.loopexit.i.us.i:                                 ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.i.us.i.epil, %.preheader.i.us.i
  %i.jj = add i32 %.05267.us.i, %i.fe
  %indvars.iv.next94.i = add nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.jk = trunc nsw i64 %indvars.iv.next94.i to i32
  %.not57.us.i = icmp eq i32 %i.ex, %i.jk
  br i1 %.not57.us.i, label %.loopexit.i, label %.preheader.i.us.i, !llvm.loop !53

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %HUF_fillDTableX2Level2.exit.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %HUF_fillDTableX2Level2.exit.loopexit.i ], [ %i.fo, %.lr.ph.i ] ; 2 uses
  %.05267.i = phi i32 [ %i.tg, %HUF_fillDTableX2Level2.exit.loopexit.i ], [ %i.fc, %.lr.ph.i ] ; 2 uses
  %i.jl = sext i32 %.05267.i to i64               ; 3 uses
  %i.jm = getelementptr [4 x i8], ptr %i.e, i64 %i.jl ; 13 uses
  %i.jn = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv.i
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !45
  %i.jp = zext i8 %i.jo to i32                    ; 2 uses
  br i1 %i.fi, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.jq = or disjoint i32 %i.fk, %i.jp
  %i.jr = zext i32 %i.jq to i64
  %i.js = mul nuw i64 %i.jr, 4294967297           ; 4 uses
  %i.jt = load i32, ptr %i.fm, align 4, !tbaa !8  ; 3 uses
  switch i32 %i.fe, label %.preheader.i.i [
    i32 2, label %bb.j
    i32 4, label %bb.k
  ]

.preheader.i.i:                                   ; preds = %bb.i
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.jv = zext nneg i32 %i.jt to i64
  %i.jw = insertelement <4 x i64> poison, i64 %i.js, i64 0
  %i.jx = shufflevector <4 x i64> %i.jw, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.jy = add nsw i64 %i.jv, -1
  %i.jz = lshr i64 %i.jy, 3
  %i.ka = add nuw nsw i64 %i.jz, 1                ; 2 uses
  %xtraiter345 = and i64 %i.ka, 7                 ; 3 uses
  %i.kb = icmp ult i32 %i.jt, 57
  br i1 %i.kb, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter349 = and i64 %i.ka, 4611686018427387896
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  store i64 %i.js, ptr %i.jm, align 2
  br label %.loopexit.i.i

bb.k:                                             ; preds = %bb.i
  store i64 %i.js, ptr %i.jm, align 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i64 %i.js, ptr %i.kc, align 2
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter350 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter350.next.7, %.lr.ph.i.i ]
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  store <4 x i64> %i.jx, ptr %i.kd, align 2
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  store <4 x i64> %i.jx, ptr %i.kf, align 2
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 64
  store <4 x i64> %i.jx, ptr %i.kh, align 2
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 96
  store <4 x i64> %i.jx, ptr %i.kj, align 2
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 128
  store <4 x i64> %i.jx, ptr %i.kl, align 2
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 160
  store <4 x i64> %i.jx, ptr %i.kn, align 2
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 192
  store <4 x i64> %i.jx, ptr %i.kp, align 2
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 224
  store <4 x i64> %i.jx, ptr %i.kr, align 2
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %niter350.next.7 = add nuw nsw i64 %niter350, 8 ; 2 uses
  %niter350.ncmp.7.not = icmp eq i64 %niter350.next.7, %unroll_iter349
  br i1 %niter350.ncmp.7.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !54

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod347.not = icmp eq i64 %xtraiter345, 0
  br i1 %lcmp.mod347.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod348 = icmp ne i64 %xtraiter345, 0
  call void @llvm.assume(i1 %lcmp.mod348)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter346 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter346.next, %.lr.ph.i.i.epil ]
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv.i.i.epil
  store <4 x i64> %i.jx, ptr %i.ks, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter346.next = add i64 %epil.iter346, 1   ; 2 uses
  %epil.iter346.cmp.not = icmp eq i64 %epil.iter346.next, %xtraiter345
  br i1 %epil.iter346.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !56

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %bb.j, %.preheader.i.i, %.lr.ph.split.i
  %invariant.op139 = or disjoint i32 %i.jp, 33554432 ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %HUF_fillDTableX2ForWeight.exit.i, %.loopexit.i.i
  %indvar371 = phi i5 [ %indvar.next372, %HUF_fillDTableX2ForWeight.exit.i ], [ 0, %.loopexit.i.i ] ; 2 uses
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %HUF_fillDTableX2ForWeight.exit.i ], [ %i.fl, %.loopexit.i.i ] ; 4 uses
  %27 = add i5 %26, %indvar371
  %28 = zext i5 %27 to i32
  %29 = shl nuw i32 1, %28
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 2
  %32 = add nsw i64 %31, -32                      ; 2 uses
  %33 = lshr i64 %32, 5
  %34 = add nuw nsw i64 %33, 1
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv55.i.i
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !8  ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next56.i.i
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8  ; 2 uses
  %i.kx = trunc nsw i64 %indvars.iv55.i.i to i32
  %i.ky = sub i32 %i.fn, %i.kx                    ; 6 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv55.i.i
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !8
  %i.lb = zext i32 %i.la to i64                   ; 3 uses
  %i.lc = getelementptr [4 x i8], ptr %i.jm, i64 %i.lb ; 20 uses
  %i.ld = sext i32 %i.ku to i64                   ; 9 uses
  %i.le = getelementptr i8, ptr %i.eo, i64 %i.ld  ; 16 uses
  %i.lf = sext i32 %i.kw to i64                   ; 13 uses
  %i.lg = getelementptr i8, ptr %i.eo, i64 %i.lf  ; 7 uses
  %i.lh = sub i32 %spec.store.select, %i.ky
  %i.li = and i32 %i.lh, 31                       ; 2 uses
  %i.lj = shl nuw i32 1, %i.li
  %.not82116.i.i = icmp eq i32 %i.ku, %i.kw       ; 5 uses
  switch i32 %i.li, label %.preheader.i60.i [
    i32 0, label %.preheader84.i.i
    i32 1, label %.preheader86.i.i
    i32 2, label %.preheader88.i.i
    i32 3, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.preheader90.i.i
  %i.lk = shl i32 %i.ky, 16
  %invariant.op.reass = add i32 %i.lk, %invariant.op139 ; 3 uses
  %i.ll = sub nsw i64 %i.lf, %i.ld
  %xtraiter351 = and i64 %i.ll, 1
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i58.i
  %i.lm = load i8, ptr %i.le, align 1, !tbaa !45
  %i.ln = zext i8 %i.lm to i32
  %i.lo = shl nuw nsw i32 %i.ln, 8
  %.reass.reass.i.reass.i.reass.prol = or disjoint i32 %i.lo, %invariant.op.reass
  %i.lp = zext i32 %.reass.reass.i.reass.i.reass.prol to i64
  %i.lq = mul nuw i64 %i.lp, 4294967297           ; 4 uses
  store i64 %i.lq, ptr %i.lc, align 2
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store i64 %i.lq, ptr %i.lr, align 2
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store i64 %i.lq, ptr %i.ls, align 2
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  store i64 %i.lq, ptr %i.lt, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.le, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i58.i
  %.394.i.i.unr = phi ptr [ %i.lc, %.lr.ph.i58.i ], [ %i.lu, %.prol.loopexit.unr-lcssa ]
  %.37793.i.i.unr = phi ptr [ %i.le, %.lr.ph.i58.i ], [ %i.lv, %.prol.loopexit.unr-lcssa ]
  %i.lw = add nsw i64 %i.lf, -1
  %i.lx = icmp eq i64 %i.lw, %i.ld
  br i1 %i.lx, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph.i58.i.new

.preheader88.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader88.i.i
  %i.ly = shl i32 %i.ky, 16
  %invariant.op135.reass = add i32 %i.ly, %invariant.op139 ; 5 uses
  %i.lz = sub nsw i64 %i.lf, %i.ld
  %xtraiter356 = and i64 %i.lz, 3                 ; 2 uses
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  br i1 %lcmp.mod357.not, label %.prol.loopexit355, label %.prol.preheader354

.prol.preheader354:                               ; preds = %.lr.ph98.i.i, %.prol.preheader354
  %.297.i.i.prol = phi ptr [ %i.mg, %.prol.preheader354 ], [ %i.lc, %.lr.ph98.i.i ] ; 3 uses
  %.27696.i.i.prol = phi ptr [ %i.mh, %.prol.preheader354 ], [ %i.le, %.lr.ph98.i.i ] ; 2 uses
  %prol.iter358 = phi i64 [ %prol.iter358.next, %.prol.preheader354 ], [ 0, %.lr.ph98.i.i ]
  %i.ma = load i8, ptr %.27696.i.i.prol, align 1, !tbaa !45
  %i.mb = zext i8 %i.ma to i32
  %i.mc = shl nuw nsw i32 %i.mb, 8
  %.reass100.reass.i.reass.i.reass.prol = or disjoint i32 %i.mc, %invariant.op135.reass
  %i.md = zext i32 %.reass100.reass.i.reass.i.reass.prol to i64
  %i.me = mul nuw i64 %i.md, 4294967297           ; 2 uses
  store i64 %i.me, ptr %.297.i.i.prol, align 2
  %i.mf = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 8
  store i64 %i.me, ptr %i.mf, align 2
  %i.mg = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 16 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.27696.i.i.prol, i64 1 ; 2 uses
  %prol.iter358.next = add i64 %prol.iter358, 1   ; 2 uses
  %prol.iter358.cmp.not = icmp eq i64 %prol.iter358.next, %xtraiter356
  br i1 %prol.iter358.cmp.not, label %.prol.loopexit355, label %.prol.preheader354, !llvm.loop !57

.prol.loopexit355:                                ; preds = %.prol.preheader354, %.lr.ph98.i.i
  %.297.i.i.unr = phi ptr [ %i.lc, %.lr.ph98.i.i ], [ %i.mg, %.prol.preheader354 ]
  %.27696.i.i.unr = phi ptr [ %i.le, %.lr.ph98.i.i ], [ %i.mh, %.prol.preheader354 ]
  %i.mi = sub nsw i64 %i.ld, %i.lf
  %i.mj = icmp ugt i64 %i.mi, -4
  br i1 %i.mj, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph98.i.i.new

.preheader86.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader86.i.i
  %i.mk = shl i32 %i.ky, 16
  %invariant.op136.reass = add i32 %i.mk, %invariant.op139 ; 6 uses
  %i.ml = sub nsw i64 %i.lf, %i.ld                ; 3 uses
  %min.iters.check298 = icmp ult i64 %i.ml, 8
  br i1 %min.iters.check298, label %scalar.ph297.preheader, label %vector.memcheck291

vector.memcheck291:                               ; preds = %.lr.ph104.i.i
  %i.mm = shl nsw i64 %i.lf, 3
  %i.mn = add nsw i64 %i.jl, %i.lb
  %i.mo = shl nsw i64 %i.mn, 2
  %i.mp = add nsw i64 %i.mm, %i.mo
  %i.mq = shl nsw i64 %i.ld, 3
  %i.mr = sub nsw i64 %i.mp, %i.mq
  %scevgep293 = getelementptr i8, ptr %scevgep292, i64 %i.mr
  %bound0294 = icmp ult ptr %i.lc, %i.lg
  %bound1295 = icmp ult ptr %i.le, %scevgep293
  %found.conflict296 = and i1 %bound0294, %bound1295
  br i1 %found.conflict296, label %scalar.ph297.preheader, label %vector.ph299

vector.ph299:                                     ; preds = %vector.memcheck291
  %n.vec300 = and i64 %i.ml, -4                   ; 4 uses
  %i.ms = shl nsw i64 %n.vec300, 3
  %i.mt = getelementptr i8, ptr %i.lc, i64 %i.ms
  %i.mu = getelementptr i8, ptr %i.le, i64 %n.vec300
  %broadcast.splatinsert301 = insertelement <2 x i32> poison, i32 %invariant.op136.reass, i64 0
  %broadcast.splat302 = shufflevector <2 x i32> %broadcast.splatinsert301, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph299
  %index304 = phi i64 [ 0, %vector.ph299 ], [ %index.next312, %vector.body303 ] ; 3 uses
  %i.mv = shl i64 %index304, 3                    ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.lc, i64 %i.mv
  %i.mw = getelementptr i8, ptr %i.lc, i64 %i.mv
  %next.gep306 = getelementptr i8, ptr %i.mw, i64 16
  %next.gep307 = getelementptr i8, ptr %i.le, i64 %index304 ; 2 uses
  %i.mx = getelementptr i8, ptr %next.gep307, i64 2
  %wide.load308 = load <2 x i8>, ptr %next.gep307, align 1, !tbaa !45, !alias.scope !58
  %wide.load309 = load <2 x i8>, ptr %i.mx, align 1, !tbaa !45, !alias.scope !58
  %i.my = zext <2 x i8> %wide.load308 to <2 x i32>
  %i.mz = zext <2 x i8> %wide.load309 to <2 x i32>
  %i.na = shl nuw nsw <2 x i32> %i.my, splat (i32 8)
  %i.nb = shl nuw nsw <2 x i32> %i.mz, splat (i32 8)
  %i.nc = or disjoint <2 x i32> %i.na, %broadcast.splat302
  %i.nd = or disjoint <2 x i32> %i.nb, %broadcast.splat302
  %interleaved.vec310 = shufflevector <2 x i32> %i.nc, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec310, ptr %next.gep305, align 2, !alias.scope !61, !noalias !58
  %interleaved.vec311 = shufflevector <2 x i32> %i.nd, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec311, ptr %next.gep306, align 2, !alias.scope !61, !noalias !58
  %index.next312 = add nuw i64 %index304, 4       ; 2 uses
  %i.ne = icmp eq i64 %index.next312, %n.vec300
  br i1 %i.ne, label %middle.block313, label %vector.body303, !llvm.loop !63

middle.block313:                                  ; preds = %vector.body303
  %cmp.n314 = icmp eq i64 %i.ml, %n.vec300
  br i1 %cmp.n314, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph297.preheader

scalar.ph297.preheader:                           ; preds = %vector.memcheck291, %.lr.ph104.i.i, %middle.block313
  %.1103.i.i.ph = phi ptr [ %i.lc, %vector.memcheck291 ], [ %i.lc, %.lr.ph104.i.i ], [ %i.mt, %middle.block313 ] ; 2 uses
  %.175102.i.i.ph = phi ptr [ %i.le, %vector.memcheck291 ], [ %i.le, %.lr.ph104.i.i ], [ %i.mu, %middle.block313 ] ; 3 uses
  %i.nf = add i64 %i.a, %i.lf
  %.175102.i.i.ph359 = ptrtoaddr ptr %.175102.i.i.ph to i64 ; 2 uses
  %i.ng = sub i64 %i.nf, %.175102.i.i.ph359
  %i.nh = add i64 %i.eq, %i.lf
  %i.ni = sub i64 %i.nh, %.175102.i.i.ph359
  %xtraiter360 = and i64 %i.ng, 3                 ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %scalar.ph297.prol.loopexit, label %scalar.ph297.prol

scalar.ph297.prol:                                ; preds = %scalar.ph297.preheader, %scalar.ph297.prol
  %.1103.i.i.prol = phi ptr [ %i.nn, %scalar.ph297.prol ], [ %.1103.i.i.ph, %scalar.ph297.preheader ] ; 3 uses
  %.175102.i.i.prol = phi ptr [ %i.no, %scalar.ph297.prol ], [ %.175102.i.i.ph, %scalar.ph297.preheader ] ; 2 uses
  %prol.iter362 = phi i64 [ %prol.iter362.next, %scalar.ph297.prol ], [ 0, %scalar.ph297.preheader ]
  %i.nj = load i8, ptr %.175102.i.i.prol, align 1, !tbaa !45
  %i.nk = zext i8 %i.nj to i32
  %i.nl = shl nuw nsw i32 %i.nk, 8
  %.reass106.reass.i.reass.i.reass.prol = or disjoint i32 %i.nl, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %.1103.i.i.prol, align 2
  %i.nm = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 4
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %i.nm, align 2
  %i.nn = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.175102.i.i.prol, i64 1 ; 2 uses
  %prol.iter362.next = add i64 %prol.iter362, 1   ; 2 uses
  %prol.iter362.cmp.not = icmp eq i64 %prol.iter362.next, %xtraiter360
  br i1 %prol.iter362.cmp.not, label %scalar.ph297.prol.loopexit, label %scalar.ph297.prol, !llvm.loop !64

scalar.ph297.prol.loopexit:                       ; preds = %scalar.ph297.prol, %scalar.ph297.preheader
  %.1103.i.i.unr = phi ptr [ %.1103.i.i.ph, %scalar.ph297.preheader ], [ %i.nn, %scalar.ph297.prol ]
  %.175102.i.i.unr = phi ptr [ %.175102.i.i.ph, %scalar.ph297.preheader ], [ %i.no, %scalar.ph297.prol ]
  %i.np = icmp ult i64 %i.ni, 3
  br i1 %i.np, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph297

.preheader84.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph110.i.i

.lr.ph110.i.i:                                    ; preds = %.preheader84.i.i
  %i.nq = shl i32 %i.ky, 16
  %invariant.op137.reass = add i32 %i.nq, %invariant.op139 ; 6 uses
  %i.nr = sub nsw i64 %i.lf, %i.ld                ; 3 uses
  %min.iters.check275 = icmp ult i64 %i.nr, 8
  br i1 %min.iters.check275, label %scalar.ph274.preheader, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph110.i.i
  %i.ns = add nsw i64 %i.jl, %i.lf
  %i.nt = add nsw i64 %i.ns, %i.lb
  %i.nu = sub nsw i64 %i.nt, %i.ld
  %i.nv = shl nsw i64 %i.nu, 2
  %scevgep270 = getelementptr i8, ptr %scevgep269, i64 %i.nv
  %bound0271 = icmp ult ptr %i.lc, %i.lg
  %bound1272 = icmp ult ptr %i.le, %scevgep270
  %found.conflict273 = and i1 %bound0271, %bound1272
  br i1 %found.conflict273, label %scalar.ph274.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck268
  %n.vec277 = and i64 %i.nr, -8                   ; 4 uses
  %i.nw = shl nsw i64 %n.vec277, 2
  %i.nx = getelementptr i8, ptr %i.lc, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.le, i64 %n.vec277
  %broadcast.splatinsert278 = insertelement <4 x i32> poison, i32 %invariant.op137.reass, i64 0
  %broadcast.splat279 = shufflevector <4 x i32> %broadcast.splatinsert278, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph276
  %index281 = phi i64 [ 0, %vector.ph276 ], [ %index.next286, %vector.body280 ] ; 3 uses
  %i.nz = shl i64 %index281, 2
  %next.gep282 = getelementptr i8, ptr %i.lc, i64 %i.nz ; 2 uses
  %next.gep283 = getelementptr i8, ptr %i.le, i64 %index281 ; 2 uses
  %i.oa = getelementptr i8, ptr %next.gep283, i64 4
  %wide.load284 = load <4 x i8>, ptr %next.gep283, align 1, !tbaa !45, !alias.scope !65
  %wide.load285 = load <4 x i8>, ptr %i.oa, align 1, !tbaa !45, !alias.scope !65
  %i.ob = zext <4 x i8> %wide.load284 to <4 x i32>
  %i.oc = zext <4 x i8> %wide.load285 to <4 x i32>
  %i.od = shl nuw nsw <4 x i32> %i.ob, splat (i32 8)
  %i.oe = shl nuw nsw <4 x i32> %i.oc, splat (i32 8)
  %i.of = or disjoint <4 x i32> %i.od, %broadcast.splat279
  %i.og = or disjoint <4 x i32> %i.oe, %broadcast.splat279
  %i.oh = getelementptr i8, ptr %next.gep282, i64 16
  store <4 x i32> %i.of, ptr %next.gep282, align 2, !alias.scope !68, !noalias !65
  store <4 x i32> %i.og, ptr %i.oh, align 2, !alias.scope !68, !noalias !65
  %index.next286 = add nuw i64 %index281, 8       ; 2 uses
  %i.oi = icmp eq i64 %index.next286, %n.vec277
  br i1 %i.oi, label %middle.block287, label %vector.body280, !llvm.loop !70

middle.block287:                                  ; preds = %vector.body280
  %cmp.n288 = icmp eq i64 %i.nr, %n.vec277
  br i1 %cmp.n288, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph274.preheader

scalar.ph274.preheader:                           ; preds = %vector.memcheck268, %.lr.ph110.i.i, %middle.block287
  %.0109.i.i.ph = phi ptr [ %i.lc, %vector.memcheck268 ], [ %i.lc, %.lr.ph110.i.i ], [ %i.nx, %middle.block287 ] ; 2 uses
  %.074108.i.i.ph = phi ptr [ %i.le, %vector.memcheck268 ], [ %i.le, %.lr.ph110.i.i ], [ %i.ny, %middle.block287 ] ; 3 uses
  %i.oj = add i64 %i.a, %i.lf
  %.074108.i.i.ph363 = ptrtoaddr ptr %.074108.i.i.ph to i64 ; 2 uses
  %i.ok = sub i64 %i.oj, %.074108.i.i.ph363
  %i.ol = add i64 %i.er, %i.lf
  %i.om = sub i64 %i.ol, %.074108.i.i.ph363
  %xtraiter364 = and i64 %i.ok, 3                 ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %scalar.ph274.prol.loopexit, label %scalar.ph274.prol

scalar.ph274.prol:                                ; preds = %scalar.ph274.preheader, %scalar.ph274.prol
  %.0109.i.i.prol = phi ptr [ %i.oq, %scalar.ph274.prol ], [ %.0109.i.i.ph, %scalar.ph274.preheader ] ; 2 uses
  %.074108.i.i.prol = phi ptr [ %i.or, %scalar.ph274.prol ], [ %.074108.i.i.ph, %scalar.ph274.preheader ] ; 2 uses
  %prol.iter366 = phi i64 [ %prol.iter366.next, %scalar.ph274.prol ], [ 0, %scalar.ph274.preheader ]
  %i.on = load i8, ptr %.074108.i.i.prol, align 1, !tbaa !45
  %i.oo = zext i8 %i.on to i32
  %i.op = shl nuw nsw i32 %i.oo, 8
  %.reass112.reass.i.reass.i.reass.prol = or disjoint i32 %i.op, %invariant.op137.reass
  %i.oq = getelementptr inbounds nuw i8, ptr %.0109.i.i.prol, i64 4 ; 2 uses
  store i32 %.reass112.reass.i.reass.i.reass.prol, ptr %.0109.i.i.prol, align 2
  %i.or = getelementptr inbounds nuw i8, ptr %.074108.i.i.prol, i64 1 ; 2 uses
  %prol.iter366.next = add i64 %prol.iter366, 1   ; 2 uses
  %prol.iter366.cmp.not = icmp eq i64 %prol.iter366.next, %xtraiter364
  br i1 %prol.iter366.cmp.not, label %scalar.ph274.prol.loopexit, label %scalar.ph274.prol, !llvm.loop !71

scalar.ph274.prol.loopexit:                       ; preds = %scalar.ph274.prol, %scalar.ph274.preheader
  %.0109.i.i.unr = phi ptr [ %.0109.i.i.ph, %scalar.ph274.preheader ], [ %i.oq, %scalar.ph274.prol ]
  %.074108.i.i.unr = phi ptr [ %.074108.i.i.ph, %scalar.ph274.preheader ], [ %i.or, %scalar.ph274.prol ]
  %i.os = icmp ult i64 %i.om, 3
  br i1 %i.os, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph274

.preheader.i60.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph119.i.i

.lr.ph119.i.i:                                    ; preds = %.preheader.i60.i
  %i.ot = shl i32 %i.ky, 16
  %i.ou = zext i32 %i.lj to i64
  %.idx.i.i = shl nuw nsw i64 %i.ou, 2
  %invariant.op138.reass = add i32 %i.ot, %invariant.op139
  %xtraiter367 = and i64 %34, 7                   ; 2 uses
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  %i.ov = icmp ult i64 %32, 224
  br label %.lr.ph115.preheader.i.i

scalar.ph274:                                     ; preds = %scalar.ph274.prol.loopexit, %scalar.ph274
  %.0109.i.i = phi ptr [ %i.po, %scalar.ph274 ], [ %.0109.i.i.unr, %scalar.ph274.prol.loopexit ] ; 5 uses
  %.074108.i.i = phi ptr [ %i.pp, %scalar.ph274 ], [ %.074108.i.i.unr, %scalar.ph274.prol.loopexit ] ; 5 uses
  %i.ow = load i8, ptr %.074108.i.i, align 1, !tbaa !45
  %i.ox = zext i8 %i.ow to i32
  %i.oy = shl nuw nsw i32 %i.ox, 8
  %.reass112.reass.i.reass.i.reass = or disjoint i32 %i.oy, %invariant.op137.reass
  %i.oz = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 4
  store i32 %.reass112.reass.i.reass.i.reass, ptr %.0109.i.i, align 2
  %i.pa = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 1
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !45
  %i.pc = zext i8 %i.pb to i32
  %i.pd = shl nuw nsw i32 %i.pc, 8
  %.reass112.reass.i.reass.i.reass.1 = or disjoint i32 %i.pd, %invariant.op137.reass
  %i.pe = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 8
  store i32 %.reass112.reass.i.reass.i.reass.1, ptr %i.oz, align 2
  %i.pf = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 2
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !45
  %i.ph = zext i8 %i.pg to i32
  %i.pi = shl nuw nsw i32 %i.ph, 8
  %.reass112.reass.i.reass.i.reass.2 = or disjoint i32 %i.pi, %invariant.op137.reass
  %i.pj = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 12
  store i32 %.reass112.reass.i.reass.i.reass.2, ptr %i.pe, align 2
  %i.pk = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 3
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !45
  %i.pm = zext i8 %i.pl to i32
  %i.pn = shl nuw nsw i32 %i.pm, 8
  %.reass112.reass.i.reass.i.reass.3 = or disjoint i32 %i.pn, %invariant.op137.reass
  %i.po = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 16
  store i32 %.reass112.reass.i.reass.i.reass.3, ptr %i.pj, align 2
  %i.pp = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 4 ; 2 uses
  %.not81.i.i.3 = icmp eq ptr %i.pp, %i.lg
  br i1 %.not81.i.i.3, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph274, !llvm.loop !72

scalar.ph297:                                     ; preds = %scalar.ph297.prol.loopexit, %scalar.ph297
  %.1103.i.i = phi ptr [ %i.qm, %scalar.ph297 ], [ %.1103.i.i.unr, %scalar.ph297.prol.loopexit ] ; 9 uses
  %.175102.i.i = phi ptr [ %i.qn, %scalar.ph297 ], [ %.175102.i.i.unr, %scalar.ph297.prol.loopexit ] ; 5 uses
  %i.pq = load i8, ptr %.175102.i.i, align 1, !tbaa !45
  %i.pr = zext i8 %i.pq to i32
  %i.ps = shl nuw nsw i32 %i.pr, 8
  %.reass106.reass.i.reass.i.reass = or disjoint i32 %i.ps, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass, ptr %.1103.i.i, align 2
  %i.pt = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 4
  store i32 %.reass106.reass.i.reass.i.reass, ptr %i.pt, align 2
  %i.pu = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 8
  %i.pv = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 1
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !45
  %i.px = zext i8 %i.pw to i32
  %i.py = shl nuw nsw i32 %i.px, 8
  %.reass106.reass.i.reass.i.reass.1 = or disjoint i32 %i.py, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.pu, align 2
  %i.pz = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 12
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.pz, align 2
  %i.qa = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 2
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !45
  %i.qd = zext i8 %i.qc to i32
  %i.qe = shl nuw nsw i32 %i.qd, 8
  %.reass106.reass.i.reass.i.reass.2 = or disjoint i32 %i.qe, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.qa, align 2
  %i.qf = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 20
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.qf, align 2
  %i.qg = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 24
  %i.qh = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 3
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !45
  %i.qj = zext i8 %i.qi to i32
  %i.qk = shl nuw nsw i32 %i.qj, 8
  %.reass106.reass.i.reass.i.reass.3 = or disjoint i32 %i.qk, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.qg, align 2
  %i.ql = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 28
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.ql, align 2
  %i.qm = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 32
  %i.qn = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 4 ; 2 uses
  %.not80.i.i.3 = icmp eq ptr %i.qn, %i.lg
  br i1 %.not80.i.i.3, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph297, !llvm.loop !73

.lr.ph98.i.i.new:                                 ; preds = %.prol.loopexit355, %.lr.ph98.i.i.new
  %.297.i.i = phi ptr [ %i.rs, %.lr.ph98.i.i.new ], [ %.297.i.i.unr, %.prol.loopexit355 ] ; 9 uses
  %.27696.i.i = phi ptr [ %i.rt, %.lr.ph98.i.i.new ], [ %.27696.i.i.unr, %.prol.loopexit355 ] ; 5 uses
  %i.qo = load i8, ptr %.27696.i.i, align 1, !tbaa !45
  %i.qp = zext i8 %i.qo to i32
  %i.qq = shl nuw nsw i32 %i.qp, 8
  %.reass100.reass.i.reass.i.reass = or disjoint i32 %i.qq, %invariant.op135.reass
  %i.qr = zext i32 %.reass100.reass.i.reass.i.reass to i64
  %i.qs = mul nuw i64 %i.qr, 4294967297           ; 2 uses
  store i64 %i.qs, ptr %.297.i.i, align 2
  %i.qt = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 8
  store i64 %i.qs, ptr %i.qt, align 2
  %i.qu = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 16
  %i.qv = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 1
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !45
  %i.qx = zext i8 %i.qw to i32
  %i.qy = shl nuw nsw i32 %i.qx, 8
  %.reass100.reass.i.reass.i.reass.1 = or disjoint i32 %i.qy, %invariant.op135.reass
  %i.qz = zext i32 %.reass100.reass.i.reass.i.reass.1 to i64
  %i.ra = mul nuw i64 %i.qz, 4294967297           ; 2 uses
  store i64 %i.ra, ptr %i.qu, align 2
  %i.rb = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 24
  store i64 %i.ra, ptr %i.rb, align 2
  %i.rc = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 32
  %i.rd = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 2
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !45
  %i.rf = zext i8 %i.re to i32
  %i.rg = shl nuw nsw i32 %i.rf, 8
  %.reass100.reass.i.reass.i.reass.2 = or disjoint i32 %i.rg, %invariant.op135.reass
  %i.rh = zext i32 %.reass100.reass.i.reass.i.reass.2 to i64
  %i.ri = mul nuw i64 %i.rh, 4294967297           ; 2 uses
  store i64 %i.ri, ptr %i.rc, align 2
  %i.rj = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 40
  store i64 %i.ri, ptr %i.rj, align 2
  %i.rk = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 48
  %i.rl = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 3
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !45
  %i.rn = zext i8 %i.rm to i32
  %i.ro = shl nuw nsw i32 %i.rn, 8
  %.reass100.reass.i.reass.i.reass.3 = or disjoint i32 %i.ro, %invariant.op135.reass
  %i.rp = zext i32 %.reass100.reass.i.reass.i.reass.3 to i64
  %i.rq = mul nuw i64 %i.rp, 4294967297           ; 2 uses
  store i64 %i.rq, ptr %i.rk, align 2
  %i.rr = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 56
  store i64 %i.rq, ptr %i.rr, align 2
  %i.rs = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 64
  %i.rt = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 4 ; 2 uses
  %.not79.i.i.3 = icmp eq ptr %i.rt, %i.lg
  br i1 %.not79.i.i.3, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph98.i.i.new, !llvm.loop !74

.lr.ph.i58.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i58.i.new
  %.394.i.i = phi ptr [ %i.sm, %.lr.ph.i58.i.new ], [ %.394.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.37793.i.i = phi ptr [ %i.sn, %.lr.ph.i58.i.new ], [ %.37793.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ru = load i8, ptr %.37793.i.i, align 1, !tbaa !45
  %i.rv = zext i8 %i.ru to i32
  %i.rw = shl nuw nsw i32 %i.rv, 8
  %.reass.reass.i.reass.i.reass = or disjoint i32 %i.rw, %invariant.op.reass
  %i.rx = zext i32 %.reass.reass.i.reass.i.reass to i64
  %i.ry = mul nuw i64 %i.rx, 4294967297           ; 4 uses
  store i64 %i.ry, ptr %.394.i.i, align 2
  %i.rz = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 8
  store i64 %i.ry, ptr %i.rz, align 2
  %i.sa = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 16
  store i64 %i.ry, ptr %i.sa, align 2
  %i.sb = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 24
  store i64 %i.ry, ptr %i.sb, align 2
  %i.sc = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 32
  %i.sd = getelementptr inbounds nuw i8, ptr %.37793.i.i, i64 1
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !45
  %i.sf = zext i8 %i.se to i32
  %i.sg = shl nuw nsw i32 %i.sf, 8
  %.reass.reass.i.reass.i.reass.1 = or disjoint i32 %i.sg, %invariant.op.reass
  %i.sh = zext i32 %.reass.reass.i.reass.i.reass.1 to i64
  %i.si = mul nuw i64 %i.sh, 4294967297           ; 4 uses
  store i64 %i.si, ptr %i.sc, align 2
  %i.sj = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 40
  store i64 %i.si, ptr %i.sj, align 2
  %i.sk = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 48
  store i64 %i.si, ptr %i.sk, align 2
  %i.sl = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 56
  store i64 %i.si, ptr %i.sl, align 2
  %i.sm = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 64
  %i.sn = getelementptr inbounds nuw i8, ptr %.37793.i.i, i64 2 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.sn, %i.lg
  br i1 %.not.i.i.1, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph.i58.i.new, !llvm.loop !75

.lr.ph115.preheader.i.i:                          ; preds = %._crit_edge.i.i, %.lr.ph119.i.i
  %.4118.i.i = phi ptr [ %i.lc, %.lr.ph119.i.i ], [ %i.st, %._crit_edge.i.i ] ; 3 uses
  %.478117.i.i = phi ptr [ %i.le, %.lr.ph119.i.i ], [ %i.tf, %._crit_edge.i.i ] ; 2 uses
  %i.so = load i8, ptr %.478117.i.i, align 1, !tbaa !45
  %i.sp = zext i8 %i.so to i32
  %i.sq = shl nuw nsw i32 %i.sp, 8
  %.reass.i.reass = or disjoint i32 %i.sq, %invariant.op138.reass
  %i.sr = zext i32 %.reass.i.reass to i64
  %i.ss = mul nuw i64 %i.sr, 4294967297
  %i.st = getelementptr inbounds nuw i8, ptr %.4118.i.i, i64 %.idx.i.i ; 2 uses
  %i.su = insertelement <4 x i64> poison, i64 %i.ss, i64 0
  %i.sv = shufflevector <4 x i64> %i.su, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %lcmp.mod368.not, label %.lr.ph115.i.i.prol.loopexit, label %.lr.ph115.i.i.prol

.lr.ph115.i.i.prol:                               ; preds = %.lr.ph115.preheader.i.i, %.lr.ph115.i.i.prol
  %.5114.i.i.prol = phi ptr [ %i.sw, %.lr.ph115.i.i.prol ], [ %.4118.i.i, %.lr.ph115.preheader.i.i ] ; 2 uses
  %prol.iter369 = phi i64 [ %prol.iter369.next, %.lr.ph115.i.i.prol ], [ 0, %.lr.ph115.preheader.i.i ]
  store <4 x i64> %i.sv, ptr %.5114.i.i.prol, align 2
  %i.sw = getelementptr inbounds nuw i8, ptr %.5114.i.i.prol, i64 32 ; 2 uses
  %prol.iter369.next = add i64 %prol.iter369, 1   ; 2 uses
  %prol.iter369.cmp.not = icmp eq i64 %prol.iter369.next, %xtraiter367
  br i1 %prol.iter369.cmp.not, label %.lr.ph115.i.i.prol.loopexit, label %.lr.ph115.i.i.prol, !llvm.loop !76

.lr.ph115.i.i.prol.loopexit:                      ; preds = %.lr.ph115.i.i.prol, %.lr.ph115.preheader.i.i
  %.5114.i.i.unr = phi ptr [ %.4118.i.i, %.lr.ph115.preheader.i.i ], [ %i.sw, %.lr.ph115.i.i.prol ]
  br i1 %i.ov, label %._crit_edge.i.i, label %.lr.ph115.i.i

.lr.ph115.i.i:                                    ; preds = %.lr.ph115.i.i.prol.loopexit, %.lr.ph115.i.i
  %.5114.i.i = phi ptr [ %i.te, %.lr.ph115.i.i ], [ %.5114.i.i.unr, %.lr.ph115.i.i.prol.loopexit ] ; 9 uses
  store <4 x i64> %i.sv, ptr %.5114.i.i, align 2
  %i.sx = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 32
  store <4 x i64> %i.sv, ptr %i.sx, align 2
  %i.sy = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 64
  store <4 x i64> %i.sv, ptr %i.sy, align 2
  %i.sz = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 96
  store <4 x i64> %i.sv, ptr %i.sz, align 2
  %i.ta = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 128
  store <4 x i64> %i.sv, ptr %i.ta, align 2
  %i.tb = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 160
  store <4 x i64> %i.sv, ptr %i.tb, align 2
  %i.tc = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 192
  store <4 x i64> %i.sv, ptr %i.tc, align 2
  %i.td = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 224
  store <4 x i64> %i.sv, ptr %i.td, align 2
  %i.te = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 256 ; 2 uses
  %.not83.i.i.7 = icmp eq ptr %i.te, %i.st
  br i1 %.not83.i.i.7, label %._crit_edge.i.i, label %.lr.ph115.i.i, !llvm.loop !77

._crit_edge.i.i:                                  ; preds = %.lr.ph115.i.i, %.lr.ph115.i.i.prol.loopexit
  %i.tf = getelementptr inbounds nuw i8, ptr %.478117.i.i, i64 1 ; 2 uses
  %.not82.i.i = icmp eq ptr %i.tf, %i.lg
  br i1 %.not82.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph115.preheader.i.i, !llvm.loop !78

HUF_fillDTableX2ForWeight.exit.i:                 ; preds = %.prol.loopexit, %.lr.ph.i58.i.new, %.prol.loopexit355, %.lr.ph98.i.i.new, %scalar.ph297.prol.loopexit, %scalar.ph297, %scalar.ph274.prol.loopexit, %scalar.ph274, %._crit_edge.i.i, %middle.block313, %middle.block287, %.preheader.i60.i, %.preheader84.i.i, %.preheader86.i.i, %.preheader88.i.i, %.preheader90.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next56.i.i, %i.ax
  %indvar.next372 = add i5 %indvar371, 1
  br i1 %exitcond.not.i.i, label %HUF_fillDTableX2Level2.exit.loopexit.i, label %bb.l, !llvm.loop !79

HUF_fillDTableX2Level2.exit.loopexit.i:           ; preds = %HUF_fillDTableX2ForWeight.exit.i
  %i.tg = add i32 %.05267.i, %i.fe
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.th = trunc nsw i64 %indvars.iv.next.i to i32
  %.not57.i = icmp eq i32 %i.ex, %i.th
  br i1 %.not57.i, label %.loopexit.i, label %.lr.ph.split.i, !llvm.loop !53

bb.m:                                             ; preds = %.lr.ph78.i
  %i.ti = zext i32 %i.fc to i64                   ; 3 uses
  %i.tj = getelementptr [4 x i8], ptr %i.e, i64 %i.ti ; 20 uses
  %i.tk = sext i32 %i.ev to i64                   ; 9 uses
  %i.tl = getelementptr i8, ptr %i.eo, i64 %i.tk  ; 16 uses
  %i.tm = sext i32 %i.ex to i64                   ; 13 uses
  %i.tn = getelementptr i8, ptr %i.eo, i64 %i.tm  ; 7 uses
  %i.to = and i32 %i.fa, 31                       ; 2 uses
  %i.tp = shl nuw i32 1, %i.to
  %.not82116.i = icmp eq i32 %i.ev, %i.ex         ; 5 uses
  switch i32 %i.to, label %.preheader.i [
    i32 0, label %.preheader84.i
    i32 1, label %.preheader86.i
    i32 2, label %.preheader88.i
    i32 3, label %.preheader90.i
  ]

.preheader90.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %.preheader90.i
  %i.tq = shl i32 %i.ez, 16
  %i.tr = add i32 %i.tq, 16777216                 ; 3 uses
  %i.ts = sub nsw i64 %i.tm, %i.tk
  %xtraiter382 = and i64 %i.ts, 1
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph.split.us.i99.prol.loopexit, label %.lr.ph.split.us.i99.prol

.lr.ph.split.us.i99.prol:                         ; preds = %.lr.ph.i98
  %i.tt = load i8, ptr %i.tl, align 1, !tbaa !45
  %i.tu = zext i8 %i.tt to i32
  %i.tv = or disjoint i32 %i.tr, %i.tu
  %i.tw = zext i32 %i.tv to i64
  %i.tx = mul nuw i64 %i.tw, 4294967297           ; 4 uses
  store i64 %i.tx, ptr %i.tj, align 2
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i64 %i.tx, ptr %i.ty, align 2
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store i64 %i.tx, ptr %i.tz, align 2
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  store i64 %i.tx, ptr %i.ua, align 2
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tj, i64 32
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tl, i64 1
  br label %.lr.ph.split.us.i99.prol.loopexit

.lr.ph.split.us.i99.prol.loopexit:                ; preds = %.lr.ph.split.us.i99.prol, %.lr.ph.i98
  %.394.us.i.unr = phi ptr [ %i.tj, %.lr.ph.i98 ], [ %i.ub, %.lr.ph.split.us.i99.prol ]
  %.37793.us.i.unr = phi ptr [ %i.tl, %.lr.ph.i98 ], [ %i.uc, %.lr.ph.split.us.i99.prol ]
  %i.ud = add nsw i64 %i.tm, -1
  %i.ue = icmp eq i64 %i.ud, %i.tk
  br i1 %i.ue, label %.loopexit.i, label %.lr.ph.split.us.i99

.lr.ph.split.us.i99:                              ; preds = %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99
  %.394.us.i = phi ptr [ %i.ux, %.lr.ph.split.us.i99 ], [ %.394.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 9 uses
  %.37793.us.i = phi ptr [ %i.uy, %.lr.ph.split.us.i99 ], [ %.37793.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 3 uses
  %i.uf = load i8, ptr %.37793.us.i, align 1, !tbaa !45
  %i.ug = zext i8 %i.uf to i32
  %i.uh = or disjoint i32 %i.tr, %i.ug
  %i.ui = zext i32 %i.uh to i64
  %i.uj = mul nuw i64 %i.ui, 4294967297           ; 4 uses
  store i64 %i.uj, ptr %.394.us.i, align 2
  %i.uk = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 8
  store i64 %i.uj, ptr %i.uk, align 2
  %i.ul = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 16
  store i64 %i.uj, ptr %i.ul, align 2
  %i.um = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 24
  store i64 %i.uj, ptr %i.um, align 2
  %i.un = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 32
  %i.uo = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 1
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !45
  %i.uq = zext i8 %i.up to i32
  %i.ur = or disjoint i32 %i.tr, %i.uq
  %i.us = zext i32 %i.ur to i64
  %i.ut = mul nuw i64 %i.us, 4294967297           ; 4 uses
  store i64 %i.ut, ptr %i.un, align 2
  %i.uu = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 40
  store i64 %i.ut, ptr %i.uu, align 2
  %i.uv = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 48
  store i64 %i.ut, ptr %i.uv, align 2
  %i.uw = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 56
  store i64 %i.ut, ptr %i.uw, align 2
  %i.ux = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 64
  %i.uy = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 2 ; 2 uses
  %.not.us.i.1 = icmp eq ptr %i.uy, %i.tn
  br i1 %.not.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i99, !llvm.loop !75

.preheader88.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.preheader88.i
  %i.uz = shl i32 %i.ez, 16
  %i.va = add i32 %i.uz, 16777216                 ; 5 uses
  %i.vb = sub nsw i64 %i.tm, %i.tk
  %xtraiter385 = and i64 %i.vb, 3                 ; 2 uses
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol

.lr.ph98.split.us.i.prol:                         ; preds = %.lr.ph98.i, %.lr.ph98.split.us.i.prol
  %.297.us.i.prol = phi ptr [ %i.vi, %.lr.ph98.split.us.i.prol ], [ %i.tj, %.lr.ph98.i ] ; 3 uses
  %.27696.us.i.prol = phi ptr [ %i.vj, %.lr.ph98.split.us.i.prol ], [ %i.tl, %.lr.ph98.i ] ; 2 uses
  %prol.iter387 = phi i64 [ %prol.iter387.next, %.lr.ph98.split.us.i.prol ], [ 0, %.lr.ph98.i ]
  %i.vc = load i8, ptr %.27696.us.i.prol, align 1, !tbaa !45
  %i.vd = zext i8 %i.vc to i32
  %i.ve = or disjoint i32 %i.va, %i.vd
  %i.vf = zext i32 %i.ve to i64
  %i.vg = mul nuw i64 %i.vf, 4294967297           ; 2 uses
  store i64 %i.vg, ptr %.297.us.i.prol, align 2
  %i.vh = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 8
  store i64 %i.vg, ptr %i.vh, align 2
  %i.vi = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 16 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.27696.us.i.prol, i64 1 ; 2 uses
  %prol.iter387.next = add i64 %prol.iter387, 1   ; 2 uses
  %prol.iter387.cmp.not = icmp eq i64 %prol.iter387.next, %xtraiter385
  br i1 %prol.iter387.cmp.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol, !llvm.loop !80

.lr.ph98.split.us.i.prol.loopexit:                ; preds = %.lr.ph98.split.us.i.prol, %.lr.ph98.i
  %.297.us.i.unr = phi ptr [ %i.tj, %.lr.ph98.i ], [ %i.vi, %.lr.ph98.split.us.i.prol ]
  %.27696.us.i.unr = phi ptr [ %i.tl, %.lr.ph98.i ], [ %i.vj, %.lr.ph98.split.us.i.prol ]
  %i.vk = sub nsw i64 %i.tk, %i.tm
  %i.vl = icmp ugt i64 %i.vk, -4
  br i1 %i.vl, label %.loopexit.i, label %.lr.ph98.split.us.i

.lr.ph98.split.us.i:                              ; preds = %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i
  %.297.us.i = phi ptr [ %i.wq, %.lr.ph98.split.us.i ], [ %.297.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 9 uses
  %.27696.us.i = phi ptr [ %i.wr, %.lr.ph98.split.us.i ], [ %.27696.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 5 uses
  %i.vm = load i8, ptr %.27696.us.i, align 1, !tbaa !45
  %i.vn = zext i8 %i.vm to i32
  %i.vo = or disjoint i32 %i.va, %i.vn
  %i.vp = zext i32 %i.vo to i64
  %i.vq = mul nuw i64 %i.vp, 4294967297           ; 2 uses
  store i64 %i.vq, ptr %.297.us.i, align 2
  %i.vr = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 8
  store i64 %i.vq, ptr %i.vr, align 2
  %i.vs = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 16
  %i.vt = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 1
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !45
  %i.vv = zext i8 %i.vu to i32
  %i.vw = or disjoint i32 %i.va, %i.vv
  %i.vx = zext i32 %i.vw to i64
  %i.vy = mul nuw i64 %i.vx, 4294967297           ; 2 uses
  store i64 %i.vy, ptr %i.vs, align 2
  %i.vz = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 24
  store i64 %i.vy, ptr %i.vz, align 2
  %i.wa = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 32
  %i.wb = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 2
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !45
  %i.wd = zext i8 %i.wc to i32
  %i.we = or disjoint i32 %i.va, %i.wd
  %i.wf = zext i32 %i.we to i64
  %i.wg = mul nuw i64 %i.wf, 4294967297           ; 2 uses
  store i64 %i.wg, ptr %i.wa, align 2
  %i.wh = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 40
  store i64 %i.wg, ptr %i.wh, align 2
  %i.wi = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 48
  %i.wj = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 3
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !45
  %i.wl = zext i8 %i.wk to i32
  %i.wm = or disjoint i32 %i.va, %i.wl
  %i.wn = zext i32 %i.wm to i64
  %i.wo = mul nuw i64 %i.wn, 4294967297           ; 2 uses
  store i64 %i.wo, ptr %i.wi, align 2
  %i.wp = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 56
  store i64 %i.wo, ptr %i.wp, align 2
  %i.wq = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 64
  %i.wr = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 4 ; 2 uses
  %.not79.us.i.3 = icmp eq ptr %i.wr, %i.tn
  br i1 %.not79.us.i.3, label %.loopexit.i, label %.lr.ph98.split.us.i, !llvm.loop !74

.preheader86.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %.preheader86.i
  %i.ws = shl i32 %i.ez, 16
  %i.wt = add i32 %i.ws, 16777216                 ; 6 uses
  %i.wu = sub nsw i64 %i.tm, %i.tk                ; 3 uses
  %min.iters.check250 = icmp ult i64 %i.wu, 10
  br i1 %min.iters.check250, label %.lr.ph104.split.us.i.preheader, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph104.i
  %i.wv = shl nsw i64 %i.tm, 3
  %i.ww = shl nuw nsw i64 %i.ti, 2
  %i.wx = add nsw i64 %i.wv, %i.ww
  %i.wy = shl nsw i64 %i.tk, 3
  %i.wz = sub nsw i64 %i.wx, %i.wy
  %scevgep245 = getelementptr i8, ptr %scevgep244, i64 %i.wz
  %bound0246 = icmp ult ptr %i.tj, %i.tn
  %bound1247 = icmp ult ptr %i.tl, %scevgep245
  %found.conflict248 = and i1 %bound0246, %bound1247
  br i1 %found.conflict248, label %.lr.ph104.split.us.i.preheader, label %vector.ph251

vector.ph251:                                     ; preds = %vector.memcheck243
end_hunk_0
begin_hunk_1_@HUF_readDTableX2_wksp:bb.a
  %i.xq = zext i8 %i.xp to i32
  %i.xr = or disjoint i32 %i.wt, %i.xq            ; 2 uses
  store i32 %i.xr, ptr %.1103.us.i.prol, align 2
  %i.xs = getelementptr inbounds nuw i8, ptr %.1103.us.i.prol, i64 4
  store i32 %i.xr, ptr %i.xs, align 2
  %i.xt = getelementptr inbounds nuw i8, ptr %.1103.us.i.prol, i64 8 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.175102.us.i.prol, i64 1 ; 2 uses
  %prol.iter391.next = add i64 %prol.iter391, 1   ; 2 uses
  %prol.iter391.cmp.not = icmp eq i64 %prol.iter391.next, %xtraiter389
  br i1 %prol.iter391.cmp.not, label %.lr.ph104.split.us.i.prol.loopexit, label %.lr.ph104.split.us.i.prol, !llvm.loop !87

.lr.ph104.split.us.i.prol.loopexit:               ; preds = %.lr.ph104.split.us.i.prol, %.lr.ph104.split.us.i.preheader
  %.1103.us.i.unr = phi ptr [ %.1103.us.i.ph, %.lr.ph104.split.us.i.preheader ], [ %i.xt, %.lr.ph104.split.us.i.prol ]
  %.175102.us.i.unr = phi ptr [ %.175102.us.i.ph, %.lr.ph104.split.us.i.preheader ], [ %i.xu, %.lr.ph104.split.us.i.prol ]
  %i.xv = icmp ult i64 %i.xo, 3
  br i1 %i.xv, label %.loopexit.i, label %.lr.ph104.split.us.i

.lr.ph104.split.us.i:                             ; preds = %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i
  %.1103.us.i = phi ptr [ %i.ys, %.lr.ph104.split.us.i ], [ %.1103.us.i.unr, %.lr.ph104.split.us.i.prol.loopexit ] ; 9 uses
  %.175102.us.i = phi ptr [ %i.yt, %.lr.ph104.split.us.i ], [ %.175102.us.i.unr, %.lr.ph104.split.us.i.prol.loopexit ] ; 5 uses
  %i.xw = load i8, ptr %.175102.us.i, align 1, !tbaa !45
  %i.xx = zext i8 %i.xw to i32
  %i.xy = or disjoint i32 %i.wt, %i.xx            ; 2 uses
  store i32 %i.xy, ptr %.1103.us.i, align 2
  %i.xz = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 4
  store i32 %i.xy, ptr %i.xz, align 2
  %i.ya = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 8
  %i.yb = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 1
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !45
  %i.yd = zext i8 %i.yc to i32
  %i.ye = or disjoint i32 %i.wt, %i.yd            ; 2 uses
  store i32 %i.ye, ptr %i.ya, align 2
  %i.yf = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 12
  store i32 %i.ye, ptr %i.yf, align 2
  %i.yg = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 16
  %i.yh = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 2
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !45
  %i.yj = zext i8 %i.yi to i32
  %i.yk = or disjoint i32 %i.wt, %i.yj            ; 2 uses
  store i32 %i.yk, ptr %i.yg, align 2
  %i.yl = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 20
  store i32 %i.yk, ptr %i.yl, align 2
  %i.ym = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 24
  %i.yn = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 3
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !45
  %i.yp = zext i8 %i.yo to i32
  %i.yq = or disjoint i32 %i.wt, %i.yp            ; 2 uses
  store i32 %i.yq, ptr %i.ym, align 2
  %i.yr = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 28
  store i32 %i.yq, ptr %i.yr, align 2
  %i.ys = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 32
  %i.yt = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 4 ; 2 uses
  %.not80.us.i.3 = icmp eq ptr %i.yt, %i.tn
  br i1 %.not80.us.i.3, label %.loopexit.i, label %.lr.ph104.split.us.i, !llvm.loop !88

.preheader84.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.preheader84.i
  %i.yu = shl i32 %i.ez, 16
  %i.yv = add i32 %i.yu, 16777216                 ; 10 uses
  %i.yw = sub nsw i64 %i.tm, %i.tk                ; 3 uses
  %min.iters.check228 = icmp ult i64 %i.yw, 8
  br i1 %min.iters.check228, label %.lr.ph110.split.us.i.preheader, label %vector.memcheck225

vector.memcheck225:                               ; preds = %.lr.ph110.i
  %i.yx = add nsw i64 %i.tm, %i.ti
  %i.yy = sub nsw i64 %i.yx, %i.tk
  %i.yz = shl nsw i64 %i.yy, 2
  %scevgep226 = getelementptr i8, ptr %scevgep, i64 %i.yz
  %bound0 = icmp ult ptr %i.tj, %i.tn
  %bound1 = icmp ult ptr %i.tl, %scevgep226
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.split.us.i.preheader, label %vector.ph229

vector.ph229:                                     ; preds = %vector.memcheck225
  %n.vec230 = and i64 %i.yw, -8                   ; 4 uses
  %i.za = shl nsw i64 %n.vec230, 2
  %i.zb = getelementptr i8, ptr %i.tj, i64 %i.za
  %i.zc = getelementptr i8, ptr %i.tl, i64 %n.vec230
  %broadcast.splatinsert231 = insertelement <4 x i32> poison, i32 %i.yv, i64 0
  %broadcast.splat232 = shufflevector <4 x i32> %broadcast.splatinsert231, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph229
  %index234 = phi i64 [ 0, %vector.ph229 ], [ %index.next238, %vector.body233 ] ; 3 uses
  %i.zd = shl i64 %index234, 2
  %next.gep = getelementptr i8, ptr %i.tj, i64 %i.zd ; 2 uses
  %next.gep235 = getelementptr i8, ptr %i.tl, i64 %index234 ; 2 uses
  %i.ze = getelementptr i8, ptr %next.gep235, i64 4
  %wide.load236 = load <4 x i8>, ptr %next.gep235, align 1, !tbaa !45, !alias.scope !89
  %wide.load237 = load <4 x i8>, ptr %i.ze, align 1, !tbaa !45, !alias.scope !89
  %i.zf = zext <4 x i8> %wide.load236 to <4 x i32>
  %i.zg = zext <4 x i8> %wide.load237 to <4 x i32>
  %i.zh = or disjoint <4 x i32> %broadcast.splat232, %i.zf
  %i.zi = or disjoint <4 x i32> %broadcast.splat232, %i.zg
  %i.zj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.zh, ptr %next.gep, align 2, !alias.scope !92, !noalias !89
  store <4 x i32> %i.zi, ptr %i.zj, align 2, !alias.scope !92, !noalias !89
  %index.next238 = add nuw i64 %index234, 8       ; 2 uses
  %i.zk = icmp eq i64 %index.next238, %n.vec230
  br i1 %i.zk, label %middle.block239, label %vector.body233, !llvm.loop !94

middle.block239:                                  ; preds = %vector.body233
  %cmp.n240 = icmp eq i64 %i.yw, %n.vec230
  br i1 %cmp.n240, label %.loopexit.i, label %.lr.ph110.split.us.i.preheader

.lr.ph110.split.us.i.preheader:                   ; preds = %vector.memcheck225, %.lr.ph110.i, %middle.block239
  %.0109.us.i.ph = phi ptr [ %i.tj, %vector.memcheck225 ], [ %i.tj, %.lr.ph110.i ], [ %i.zb, %middle.block239 ] ; 2 uses
  %.074108.us.i.ph = phi ptr [ %i.tl, %vector.memcheck225 ], [ %i.tl, %.lr.ph110.i ], [ %i.zc, %middle.block239 ] ; 3 uses
  %i.zl = add i64 %i.a, %i.tm
  %.074108.us.i.ph392 = ptrtoaddr ptr %.074108.us.i.ph to i64 ; 2 uses
  %i.zm = sub i64 %i.zl, %.074108.us.i.ph392
  %i.zn = add i64 %i.et, %i.tm
  %i.zo = sub i64 %i.zn, %.074108.us.i.ph392
  %xtraiter393 = and i64 %i.zm, 7                 ; 2 uses
  %lcmp.mod394.not = icmp eq i64 %xtraiter393, 0
  br i1 %lcmp.mod394.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol

.lr.ph110.split.us.i.prol:                        ; preds = %.lr.ph110.split.us.i.preheader, %.lr.ph110.split.us.i.prol
  %.0109.us.i.prol = phi ptr [ %i.zs, %.lr.ph110.split.us.i.prol ], [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %.074108.us.i.prol = phi ptr [ %i.zt, %.lr.ph110.split.us.i.prol ], [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %prol.iter395 = phi i64 [ %prol.iter395.next, %.lr.ph110.split.us.i.prol ], [ 0, %.lr.ph110.split.us.i.preheader ]
  %i.zp = load i8, ptr %.074108.us.i.prol, align 1, !tbaa !45
  %i.zq = zext i8 %i.zp to i32
  %i.zr = or disjoint i32 %i.yv, %i.zq
  %i.zs = getelementptr inbounds nuw i8, ptr %.0109.us.i.prol, i64 4 ; 2 uses
  store i32 %i.zr, ptr %.0109.us.i.prol, align 2
  %i.zt = getelementptr inbounds nuw i8, ptr %.074108.us.i.prol, i64 1 ; 2 uses
  %prol.iter395.next = add i64 %prol.iter395, 1   ; 2 uses
  %prol.iter395.cmp.not = icmp eq i64 %prol.iter395.next, %xtraiter393
  br i1 %prol.iter395.cmp.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol, !llvm.loop !95

.lr.ph110.split.us.i.prol.loopexit:               ; preds = %.lr.ph110.split.us.i.prol, %.lr.ph110.split.us.i.preheader
  %.0109.us.i.unr = phi ptr [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.zs, %.lr.ph110.split.us.i.prol ]
  %.074108.us.i.unr = phi ptr [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.zt, %.lr.ph110.split.us.i.prol ]
  %i.zu = icmp ult i64 %i.zo, 7
  br i1 %i.zu, label %.loopexit.i, label %.lr.ph110.split.us.i

.lr.ph110.split.us.i:                             ; preds = %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i
  %.0109.us.i = phi ptr [ %i.abh, %.lr.ph110.split.us.i ], [ %.0109.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %.074108.us.i = phi ptr [ %i.abi, %.lr.ph110.split.us.i ], [ %.074108.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %i.zv = load i8, ptr %.074108.us.i, align 1, !tbaa !45
  %i.zw = zext i8 %i.zv to i32
  %i.zx = or disjoint i32 %i.yv, %i.zw
  %i.zy = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 4
  store i32 %i.zx, ptr %.0109.us.i, align 2
  %i.zz = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 1
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !45
  %i.aab = zext i8 %i.aaa to i32
  %i.aac = or disjoint i32 %i.yv, %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 8
  store i32 %i.aac, ptr %i.zy, align 2
  %i.aae = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 2
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !45
  %i.aag = zext i8 %i.aaf to i32
  %i.aah = or disjoint i32 %i.yv, %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 12
  store i32 %i.aah, ptr %i.aad, align 2
  %i.aaj = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 3
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !45
  %i.aal = zext i8 %i.aak to i32
  %i.aam = or disjoint i32 %i.yv, %i.aal
  %i.aan = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 16
  store i32 %i.aam, ptr %i.aai, align 2
  %i.aao = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 4
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !45
  %i.aaq = zext i8 %i.aap to i32
  %i.aar = or disjoint i32 %i.yv, %i.aaq
  %i.aas = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 20
  store i32 %i.aar, ptr %i.aan, align 2
  %i.aat = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 5
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !45
  %i.aav = zext i8 %i.aau to i32
  %i.aaw = or disjoint i32 %i.yv, %i.aav
  %i.aax = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 24
  store i32 %i.aaw, ptr %i.aas, align 2
  %i.aay = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 6
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !45
  %i.aba = zext i8 %i.aaz to i32
  %i.abb = or disjoint i32 %i.yv, %i.aba
  %i.abc = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 28
  store i32 %i.abb, ptr %i.aax, align 2
  %i.abd = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 7
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !45
  %i.abf = zext i8 %i.abe to i32
  %i.abg = or disjoint i32 %i.yv, %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 32
  store i32 %i.abg, ptr %i.abc, align 2
  %i.abi = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 8 ; 2 uses
  %.not81.us.i.7 = icmp eq ptr %i.abi, %i.tn
  br i1 %.not81.us.i.7, label %.loopexit.i, label %.lr.ph110.split.us.i, !llvm.loop !96

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.preheader.i
  %i.abj = shl i32 %i.ez, 16
  %i.abk = add i32 %i.abj, 16777216
  %i.abl = zext i32 %i.tp to i64
  %.idx.i = shl nuw nsw i64 %i.abl, 2
  %xtraiter396 = and i64 %21, 7                   ; 2 uses
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  %i.abm = icmp ult i64 %19, 224
  br label %.lr.ph115.preheader.i

.lr.ph115.preheader.i:                            ; preds = %._crit_edge.i, %.lr.ph119.i
  %.4118.i = phi ptr [ %i.tj, %.lr.ph119.i ], [ %i.abs, %._crit_edge.i ] ; 3 uses
  %.478117.i = phi ptr [ %i.tl, %.lr.ph119.i ], [ %i.ace, %._crit_edge.i ] ; 2 uses
  %i.abn = load i8, ptr %.478117.i, align 1, !tbaa !45
  %i.abo = zext i8 %i.abn to i32
  %i.abp = or disjoint i32 %i.abk, %i.abo
  %i.abq = zext i32 %i.abp to i64
  %i.abr = mul nuw i64 %i.abq, 4294967297
  %i.abs = getelementptr inbounds nuw i8, ptr %.4118.i, i64 %.idx.i ; 2 uses
  %i.abt = insertelement <4 x i64> poison, i64 %i.abr, i64 0
  %i.abu = shufflevector <4 x i64> %i.abt, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %lcmp.mod397.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.preheader.i, %.lr.ph115.i.prol
  %.5114.i.prol = phi ptr [ %i.abv, %.lr.ph115.i.prol ], [ %.4118.i, %.lr.ph115.preheader.i ] ; 2 uses
  %prol.iter398 = phi i64 [ %prol.iter398.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.preheader.i ]
  store <4 x i64> %i.abu, ptr %.5114.i.prol, align 2
  %i.abv = getelementptr inbounds nuw i8, ptr %.5114.i.prol, i64 32 ; 2 uses
  %prol.iter398.next = add i64 %prol.iter398, 1   ; 2 uses
  %prol.iter398.cmp.not = icmp eq i64 %prol.iter398.next, %xtraiter396
  br i1 %prol.iter398.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !97

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.preheader.i
  %.5114.i.unr = phi ptr [ %.4118.i, %.lr.ph115.preheader.i ], [ %i.abv, %.lr.ph115.i.prol ]
  br i1 %i.abm, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i
  %.5114.i = phi ptr [ %i.acd, %.lr.ph115.i ], [ %.5114.i.unr, %.lr.ph115.i.prol.loopexit ] ; 9 uses
  store <4 x i64> %i.abu, ptr %.5114.i, align 2
  %i.abw = getelementptr inbounds nuw i8, ptr %.5114.i, i64 32
  store <4 x i64> %i.abu, ptr %i.abw, align 2
  %i.abx = getelementptr inbounds nuw i8, ptr %.5114.i, i64 64
  store <4 x i64> %i.abu, ptr %i.abx, align 2
  %i.aby = getelementptr inbounds nuw i8, ptr %.5114.i, i64 96
  store <4 x i64> %i.abu, ptr %i.aby, align 2
  %i.abz = getelementptr inbounds nuw i8, ptr %.5114.i, i64 128
  store <4 x i64> %i.abu, ptr %i.abz, align 2
  %i.aca = getelementptr inbounds nuw i8, ptr %.5114.i, i64 160
  store <4 x i64> %i.abu, ptr %i.aca, align 2
  %i.acb = getelementptr inbounds nuw i8, ptr %.5114.i, i64 192
  store <4 x i64> %i.abu, ptr %i.acb, align 2
  %i.acc = getelementptr inbounds nuw i8, ptr %.5114.i, i64 224
  store <4 x i64> %i.abu, ptr %i.acc, align 2
  %i.acd = getelementptr inbounds nuw i8, ptr %.5114.i, i64 256 ; 2 uses
  %.not83.i.7 = icmp eq ptr %i.acd, %i.abs
  br i1 %.not83.i.7, label %._crit_edge.i, label %.lr.ph115.i, !llvm.loop !77

._crit_edge.i:                                    ; preds = %.lr.ph115.i, %.lr.ph115.i.prol.loopexit
  %i.ace = getelementptr inbounds nuw i8, ptr %.478117.i, i64 1 ; 2 uses
  %.not82.i = icmp eq ptr %i.ace, %i.tn
  br i1 %.not82.i, label %.loopexit.i, label %.lr.ph115.preheader.i, !llvm.loop !78

.loopexit.i:                                      ; preds = %HUF_fillDTableX2Level2.exit.loopexit.i, %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i, %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i, %.loopexit.i.us.i, %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99, %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i, %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i, %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i, %._crit_edge.i, %middle.block264, %middle.block239, %.preheader.i, %.preheader84.i, %.preheader86.i, %.preheader88.i, %.preheader90.i, %bb.h
  %exitcond.not.i = icmp eq i64 %indvars.iv.next97.i, %i.ax
  %indvar.next368 = add i5 %indvar367, 1
  %indvar.next370 = add i32 %indvar369, 1
  br i1 %exitcond.not.i, label %HUF_fillDTableX2.exit, label %.lr.ph78.i, !llvm.loop !98

HUF_fillDTableX2.exit:                            ; preds = %.loopexit.i, %._crit_edge121, %._crit_edge134.split
  %i.acf = trunc nuw nsw i32 %spec.store.select to i8
  store i8 %.sroa.0.0.extract.trunc, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.acf, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %HUF_fillDTableX2.exit
  %.088 = phi i64 [ %i.m, %HUF_fillDTableX2.exit ], [ -1, %bb.a ], [ -44, %bb.b ], [ %i.m, %bb.c ], [ -44, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i64 %.088
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i64 @HUF_decompress1X2_DCtx_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp ult i64 %i.a, %4
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0, i32 noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %HUF_decompress1X2_usingDTable_internal_default.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %HUF_decompress1X2_usingDTable_internal_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = icmp ugt i64 %3, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.ptr.i = getelementptr inbounds i8, ptr %2, i64 %3
  %i.f = getelementptr i8, ptr %.ptr.i, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9     ; 2 uses
  %.not51.i.i = icmp eq i8 %i.g, 0
  br i1 %.not51.i.i, label %HUF_decompress1X2_usingDTable_internal_default.exit, label %BIT_initDStream.exit.i

bb.f:                                             ; preds = %bb.d
  %i.h = load i8, ptr %2, align 1, !tbaa !9
  %i.i = zext i8 %i.h to i64                      ; 7 uses
  switch i64 %3, label %bb.m [
    i64 7, label %bb.g
    i64 6, label %bb.h
    i64 5, label %bb.i
    i64 4, label %bb.j
    i64 3, label %bb.k
    i64 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 48
  %i.n = or disjoint i64 %i.m, %i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi i64 [ %i.n, %bb.g ], [ %i.i, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 40
  %i.t = add nuw nsw i64 %i.s, %i.o
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.u = phi i64 [ %i.t, %bb.h ], [ %i.i, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = add nuw nsw i64 %i.y, %i.u
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aa = phi i64 [ %i.z, %bb.i ], [ %i.i, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 24
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.ag = phi i64 [ %i.af, %bb.j ], [ %i.i, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 16
  %i.al = add nuw nsw i64 %i.ak, %i.ag
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.am = phi i64 [ %i.al, %bb.k ], [ %i.i, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 8
  %i.ar = add nuw nsw i64 %i.aq, %i.am
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.sroa.0.9.i = phi i64 [ %i.i, %bb.f ], [ %i.ar, %bb.l ] ; 2 uses
  %i.as = getelementptr i8, ptr %2, i64 %3
  %i.at = getelementptr i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9   ; 2 uses
  %.not.i58.i = icmp eq i8 %i.au, 0
  br i1 %.not.i58.i, label %HUF_decompress1X2_usingDTable_internal_default.exit, label %.thread.i

BIT_initDStream.exit.i:                           ; preds = %bb.e
  %.add.i = add nsw i64 %3, -8                    ; 4 uses
  %.ptr190.i = getelementptr inbounds i8, ptr %2, i64 %.add.i ; 4 uses
  %.val.i.i = load i64, ptr %.ptr190.i, align 1, !tbaa !34 ; 2 uses
  %i.av = zext i8 %i.g to i32
  %i.aw = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.av, i1 true)
  %i.ax = xor i32 %i.aw, 31
  %i.ay = sub nuw nsw i32 8, %i.ax                ; 6 uses
  %i.az = icmp ult i64 %3, -119
  br i1 %i.az, label %bb.n, label %HUF_decompress1X2_usingDTable_internal_default.exit

bb.n:                                             ; preds = %BIT_initDStream.exit.i
  %.idx.i.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %.val.i = load i32, ptr %4, align 4             ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.val.i, 16 ; 4 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 4 uses
  %i.bd = icmp sgt i64 %1, 7
  br i1 %i.bd, label %bb.o, label %bb.z

.thread.i:                                        ; preds = %bb.m
  %i.be = zext i8 %i.au to i32
  %i.bf = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.be, i1 true)
  %i.bg = trunc nuw nsw i64 %3 to i32
  %i.bh = shl nuw nsw i32 %i.bg, 3
  %reass.sub.i = sub nsw i32 %i.bf, %i.bh
  %i.bi = add nsw i32 %reass.sub.i, 41            ; 2 uses
  %.idx.i292.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i292.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.val293.i = load i32, ptr %4, align 4          ; 2 uses
  %.sroa.3.0.extract.shift.i294.i = lshr i32 %.val293.i, 16 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = icmp sgt i64 %1, 7
  br i1 %i.bm, label %bb.o, label %BIT_reloadDStream.exit29.i

bb.o:                                             ; preds = %.thread.i, %bb.n
  %i.bn = phi i64 [ %i.bl, %.thread.i ], [ %i.bc, %bb.n ] ; 6 uses
  %.sroa.3.0.extract.shift.i303.i = phi i32 [ %.sroa.3.0.extract.shift.i294.i, %.thread.i ], [ %.sroa.3.0.extract.shift.i.i, %bb.n ] ; 7 uses
  %.val302.i = phi i32 [ %.val293.i, %.thread.i ], [ %.val.i, %bb.n ]
  %i.bo = phi ptr [ %i.bk, %.thread.i ], [ %i.bb, %bb.n ] ; 6 uses
  %i.bp = phi ptr [ %i.bj, %.thread.i ], [ %i.ba, %bb.n ] ; 8 uses
  %.sroa.0.10175299.i = phi i64 [ %.sroa.0.9.i, %.thread.i ], [ %.val.i.i, %bb.n ] ; 2 uses
  %.sroa.31.12176298.i = phi i32 [ %i.bi, %.thread.i ], [ %i.ay, %bb.n ] ; 2 uses
  %.sroa.9790.9177.idx296.i = phi i64 [ 0, %.thread.i ], [ %.add.i, %bb.n ] ; 2 uses
  %i.bq = and i32 %.val302.i, 16515072
  %i.br = icmp samesign ult i32 %i.bq, 786432
  %i.bs = sub nsw i32 0, %.sroa.3.0.extract.shift.i303.i
  %i.bt = and i32 %i.bs, 63
  %i.bu = zext nneg i32 %i.bt to i64              ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 9 uses
  br i1 %i.br, label %.lr.ph240.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
end_hunk_1
