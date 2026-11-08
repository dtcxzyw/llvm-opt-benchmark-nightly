Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/huf_decompress?download=true
inline.NumInlined: 722
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 40
begin_hunk_0_@HUF_readDTableX1_wksp:bb.a
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %._crit_edge204
  %indvars.iv276 = phi i64 [ %i.jl, %.lr.ph203.preheader ], [ %indvars.iv.next277, %._crit_edge204 ] ; 2 uses
  %indvars.iv274 = phi i64 [ 0, %.lr.ph203.preheader ], [ %indvars.iv.next275, %._crit_edge204 ] ; 2 uses
  %gep310 = getelementptr i8, ptr %invariant.gep309, i64 %indvars.iv274
  %i.jq = load i8, ptr %gep310, align 1, !tbaa !20
  %i.jr = zext i8 %i.jq to i64
  %i.js = shl nuw nsw i64 %i.jr, 8
  %i.jt = or disjoint i64 %i.js, %i.jh
  %i.ju = mul nuw i64 %i.jt, 281479271743489
  %i.jv = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv276 ; 9 uses
  %i.jw = insertelement <4 x i64> poison, i64 %i.ju, i64 0
  %i.jx = shufflevector <4 x i64> %i.jw, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %i.jp, label %.epil.preheader391, label %.lr.ph203.new

.lr.ph203.new:                                    ; preds = %.lr.ph203, %.lr.ph203.new
  %indvars.iv271 = phi i64 [ %indvars.iv.next272.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ] ; 9 uses
  %niter397 = phi i64 [ %niter397.next.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ]
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %indvars.iv271
  store <4 x i64> %i.jx, ptr %i.jy, align 1, !tbaa !26
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %indvars.iv271
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  store <4 x i64> %i.jx, ptr %i.ka, align 1, !tbaa !26
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %indvars.iv271
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  store <4 x i64> %i.jx, ptr %i.kc, align 1, !tbaa !26
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %indvars.iv271
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 96
  store <4 x i64> %i.jx, ptr %i.ke, align 1, !tbaa !26
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %indvars.iv271
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 128
  store <4 x i64> %i.jx, ptr %i.kg, align 1, !tbaa !26
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %indvars.iv271
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 160
  store <4 x i64> %i.jx, ptr %i.ki, align 1, !tbaa !26
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %indvars.iv271
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 192
  store <4 x i64> %i.jx, ptr %i.kk, align 1, !tbaa !26
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %indvars.iv271
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 224
  store <4 x i64> %i.jx, ptr %i.km, align 1, !tbaa !26
  %indvars.iv.next272.7 = add nuw nsw i64 %indvars.iv271, 128 ; 2 uses
  %niter397.next.7 = add i64 %niter397, 8         ; 2 uses
  %niter397.ncmp.7.not = icmp eq i64 %niter397.next.7, %unroll_iter396
  br i1 %niter397.ncmp.7.not, label %._crit_edge204.unr-lcssa, label %.lr.ph203.new, !llvm.loop !73

._crit_edge204.unr-lcssa:                         ; preds = %.lr.ph203.new
  br i1 %lcmp.mod394.not, label %._crit_edge204, label %.epil.preheader391

.epil.preheader391:                               ; preds = %._crit_edge204.unr-lcssa, %.lr.ph203
  %indvars.iv271.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next272.7, %._crit_edge204.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod395)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader391
  %indvars.iv271.epil = phi i64 [ %indvars.iv271.epil.init, %.epil.preheader391 ], [ %indvars.iv.next272.epil, %bb.l ] ; 2 uses
  %epil.iter393 = phi i64 [ 0, %.epil.preheader391 ], [ %epil.iter393.next, %bb.l ]
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %indvars.iv271.epil
  store <4 x i64> %i.jx, ptr %i.kn, align 1, !tbaa !26
  %indvars.iv.next272.epil = add nuw nsw i64 %indvars.iv271.epil, 16
  %epil.iter393.next = add i64 %epil.iter393, 1   ; 2 uses
  %epil.iter393.cmp.not = icmp eq i64 %epil.iter393.next, %xtraiter392
  br i1 %epil.iter393.cmp.not, label %._crit_edge204, label %bb.l, !llvm.loop !74

._crit_edge204:                                   ; preds = %bb.l, %._crit_edge204.unr-lcssa
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, %i.jj
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count281
  br i1 %exitcond282.not, label %.loopexit, label %.lr.ph203, !llvm.loop !75

.loopexit.loopexit363.unr-lcssa:                  ; preds = %.lr.ph197
  %lcmp.mod385.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %.loopexit, label %.lr.ph197.epil.preheader

.lr.ph197.epil.preheader:                         ; preds = %.loopexit.loopexit363.unr-lcssa, %.lr.ph197.preheader
  %indvars.iv255.epil.init = phi i64 [ %i.gb, %.lr.ph197.preheader ], [ %indvars.iv.next256.1, %.loopexit.loopexit363.unr-lcssa ]
  %indvars.iv253.epil.init = phi i64 [ 0, %.lr.ph197.preheader ], [ %indvars.iv.next254.1, %.loopexit.loopexit363.unr-lcssa ]
  %lcmp.mod386 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod386)
  %gep306.epil = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253.epil.init
  %i.ko = load i8, ptr %gep306.epil, align 1, !tbaa !20 ; 2 uses
  %i.kp = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv255.epil.init ; 4 uses
  store i8 %i.fl, ptr %i.kp, align 1, !tbaa !20
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.kp, i64 1
  store i8 %i.ko, ptr %.sroa.5.0..sroa_idx.epil, align 1, !tbaa !20
  %i.kq = getelementptr i8, ptr %i.kp, i64 2
  store i8 %i.fl, ptr %i.kq, align 1, !tbaa !20
  %.sroa.5.0..sroa_idx8.epil = getelementptr i8, ptr %i.kp, i64 3
  store i8 %i.ko, ptr %.sroa.5.0..sroa_idx8.epil, align 1, !tbaa !20
  br label %.loopexit

.loopexit.loopexit364.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod379.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod379.not, label %.loopexit, label %.epil.preheader376

.epil.preheader376:                               ; preds = %.loopexit.loopexit364.unr-lcssa, %.lr.ph194
  %indvars.iv246.epil.init = phi i64 [ %i.fx, %.lr.ph194 ], [ %indvars.iv.next247.1, %.loopexit.loopexit364.unr-lcssa ]
  %indvars.iv244.epil.init = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next245.1, %.loopexit.loopexit364.unr-lcssa ]
  %lcmp.mod380 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod380)
  %gep304.epil = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244.epil.init
  %i.kr = load i8, ptr %gep304.epil, align 1, !tbaa !20
  %i.ks = zext i8 %i.kr to i64
  %i.kt = shl nuw nsw i64 %i.ks, 8
  %i.ku = or disjoint i64 %i.kt, %i.fv
  %i.kv = mul nuw i64 %i.ku, 281479271743489
  %i.kw = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv246.epil.init
  store i64 %i.kv, ptr %i.kw, align 1, !tbaa !26
  br label %.loopexit

.loopexit.loopexit365.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod372.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod372.not, label %.loopexit, label %.epil.preheader369

.epil.preheader369:                               ; preds = %.loopexit.loopexit365.unr-lcssa, %.lr.ph191
  %indvars.iv237.epil.init = phi i64 [ %i.fs, %.lr.ph191 ], [ %indvars.iv.next238.1, %.loopexit.loopexit365.unr-lcssa ]
  %indvars.iv235.epil.init = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next236.1, %.loopexit.loopexit365.unr-lcssa ]
  %lcmp.mod373 = trunc i32 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod373)
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235.epil.init
  %i.kx = load i8, ptr %gep.epil, align 1, !tbaa !20
  %i.ky = zext i8 %i.kx to i64
  %i.kz = shl nuw nsw i64 %i.ky, 8
  %i.la = or disjoint i64 %i.kz, %i.fq
  %i.lb = mul nuw i64 %i.la, 281479271743489      ; 2 uses
  %i.lc = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv237.epil.init ; 2 uses
  store i64 %i.lb, ptr %i.lc, align 1, !tbaa !26
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store i64 %i.lb, ptr %i.ld, align 1, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader369, %.loopexit.loopexit365.unr-lcssa, %.epil.preheader376, %.loopexit.loopexit364.unr-lcssa, %.lr.ph197.epil.preheader, %.loopexit.loopexit363.unr-lcssa, %.lr.ph200.prol.loopexit, %.lr.ph200, %._crit_edge204, %middle.block342, %vec.epilog.middle.block358, %.preheader177, %.preheader175, %.preheader173, %.preheader, %bb.k, %.lr.ph208
  %i.le = add nsw i32 %i.ff, %.0156210
  %i.lf = mul nsw i32 %i.ff, %i.fi
  %i.lg = add nsw i32 %i.lf, %.0155212
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.fd
  br i1 %exitcond287.not, label %.critedge, label %bb.h, !llvm.loop !76

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
define i64 @HUF_readDTableX2_wksp(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %.val = load i32, ptr %0, align 4               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.val to i8
  %.sroa.7.0.extract.shift = lshr i32 %.val, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8
  %i.d = and i32 %.val, 255                       ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 4          ; 11 uses
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
  %i.o = load i32, ptr %i.b, align 4, !tbaa !19   ; 5 uses
  %i.p = icmp ugt i32 %i.o, %i.d
  br i1 %i.p, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw nsw i32 %i.o, 1                  ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv182 = phi i32 [ %indvars.iv.next183, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv177.a = phi i32 [ %indvars.iv.next178.a, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %indvars.iv158 = phi i32 [ %indvars.iv.next159.a, %bb.f ], [ %i.q, %bb.e ] ; 6 uses
  %.091 = phi i32 [ %6, %bb.f ], [ %i.o, %bb.e ]  ; 6 uses
  %i.r = zext i32 %.091 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19
  %i.u = icmp eq i32 %i.t, 0
  %6 = add i32 %.091, -1
  %indvars.iv.next159.a = add i32 %indvars.iv158, -1
  %indvars.iv.next178.a = add i32 %indvars.iv177.a, 1
  %indvars.iv.next183 = add i32 %indvars.iv182, -1
  br i1 %i.u, label %bb.f, label %.preheader, !llvm.loop !81

.preheader:                                       ; preds = %bb.f
  %i.v = icmp samesign ult i32 %i.o, 12
  %i.w = icmp eq i32 %i.d, 12
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  %spec.store.select = select i1 %or.cond, i32 11, i32 %i.d ; 7 uses
  %i.x = add i32 %.091, 1                         ; 2 uses
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
  %.093116 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.aq, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !19
  %i.ae = add i32 %i.ad, %.093116                 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %.093116, ptr %i.af, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19
  %i.ai = add i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = add i32 %i.al, %i.ai                    ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  store i32 %i.ai, ptr %i.an, align 4, !tbaa !19
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %i.aq = add i32 %i.ap, %i.am                    ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  store i32 %i.am, ptr %i.ar, align 4, !tbaa !19
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !82

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.093116.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod344 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod344)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.093116.epil = phi i32 [ %.093116.epil.init, %.lr.ph.epil.preheader ], [ %i.au, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.at = load i32, ptr %i.as, align 4, !tbaa !19
  %i.au = add i32 %i.at, %.093116.epil            ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  store i32 %.093116.epil, ptr %i.av, align 4, !tbaa !19
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !83

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.093.lcssa = phi i32 [ 0, %.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.au, %.lr.ph.epil ] ; 2 uses
  store i32 %.093.lcssa, ptr %i.h, align 4, !tbaa !19
  %i.aw = zext i32 %i.x to i64                    ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aw
  store i32 %.093.lcssa, ptr %i.ax, align 4, !tbaa !19
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !19  ; 4 uses
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %._crit_edge121, label %.lr.ph120

.lr.ph120:                                        ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 736 ; 3 uses
  %wide.trip.count163 = zext i32 %i.ay to i64     ; 2 uses
  %xtraiter345 = and i64 %wide.trip.count163, 1
  %i.ba = icmp eq i32 %i.ay, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph120.new

.lr.ph120.new:                                    ; preds = %.lr.ph120
  %unroll_iter349 = and i64 %wide.trip.count163, 4294967294
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph120.new
  %indvars.iv160 = phi i64 [ 0, %.lr.ph120.new ], [ %indvars.iv.next161.1, %bb.g ] ; 4 uses
  %niter350 = phi i64 [ 0, %.lr.ph120.new ], [ %niter350.next.1, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv160
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !20
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !19 ; 2 uses
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !19
  %i.bh = trunc i64 %indvars.iv160 to i8
  %i.bi = zext i32 %i.bf to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bi
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !130
  %indvars.iv.next161 = or disjoint i64 %indvars.iv160, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next161
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !20
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !19 ; 2 uses
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !19
  %i.bq = trunc i64 %indvars.iv.next161 to i8
  %i.br = zext i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !130
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %niter350.next.1 = add i64 %niter350, 2         ; 2 uses
  %niter350.ncmp.1 = icmp eq i64 %niter350.next.1, %unroll_iter349
  br i1 %niter350.ncmp.1, label %._crit_edge121.loopexit.unr-lcssa, label %bb.g, !llvm.loop !84

._crit_edge121.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod347.not = icmp eq i64 %xtraiter345, 0
  br i1 %lcmp.mod347.not, label %._crit_edge121, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120
  %indvars.iv160.epil.init = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next161.1, %._crit_edge121.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod348 = trunc i32 %i.ay to i1
  call void @llvm.assume(i1 %lcmp.mod348)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv160.epil.init
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !20
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !19 ; 2 uses
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !19
  %i.bz = trunc i64 %indvars.iv160.epil.init to i8
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ca
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !130
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %.epil.preheader, %._crit_edge121.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.h, align 4, !tbaa !19
  %i.cc = xor i32 %i.o, -1
  %i.cd = add nsw i32 %spec.store.select, %i.cc   ; 2 uses
  br i1 %i.y, label %.lr.ph125.preheader, label %HUF_fillDTableX2.exit

.lr.ph125.preheader:                              ; preds = %._crit_edge121
  %wide.trip.count169 = zext i32 %indvars.iv158 to i64 ; 4 uses
  %i.ce = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %xtraiter351 = and i64 %i.ce, 1
  %i.cf = icmp eq i32 %indvars.iv158, 2
  br i1 %i.cf, label %.lr.ph125.epil.preheader, label %.lr.ph125.preheader.new

.lr.ph125.preheader.new:                          ; preds = %.lr.ph125.preheader
  %unroll_iter355 = and i64 %i.ce, -2
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125, %.lr.ph125.preheader.new
  %indvars.iv165 = phi i64 [ 1, %.lr.ph125.preheader.new ], [ %indvars.iv.next166.1, %.lr.ph125 ] ; 5 uses
  %.090122 = phi i32 [ 0, %.lr.ph125.preheader.new ], [ %i.cs, %.lr.ph125 ] ; 2 uses
  %niter356 = phi i64 [ 0, %.lr.ph125.preheader.new ], [ %niter356.next.1, %.lr.ph125 ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv165
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !19
  %i.ci = trunc nuw i64 %indvars.iv165 to i32
  %i.cj = add i32 %i.cd, %i.ci
  %i.ck = shl i32 %i.ch, %i.cj
  %i.cl = add i32 %i.ck, %.090122                 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165
  store i32 %.090122, ptr %i.cm, align 4, !tbaa !19
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next166
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !19
  %i.cp = trunc nuw i64 %indvars.iv.next166 to i32
  %i.cq = add i32 %i.cd, %i.cp
  %i.cr = shl i32 %i.co, %i.cq
  %i.cs = add i32 %i.cr, %i.cl                    ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next166
  store i32 %i.cl, ptr %i.ct, align 4, !tbaa !19
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %niter356.next.1 = add nuw i64 %niter356, 2     ; 2 uses
  %niter356.ncmp.1 = icmp eq i64 %niter356.next.1, %unroll_iter355
  br i1 %niter356.ncmp.1, label %._crit_edge126.unr-lcssa, label %.lr.ph125, !llvm.loop !85

._crit_edge126.unr-lcssa:                         ; preds = %.lr.ph125
  %lcmp.mod353.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod353.not, label %._crit_edge126, label %.lr.ph125.epil.preheader

.lr.ph125.epil.preheader:                         ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.preheader
  %indvars.iv165.epil.init = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next166.1, %._crit_edge126.unr-lcssa ]
  %.090122.epil.init = phi i32 [ 0, %.lr.ph125.preheader ], [ %i.cs, %._crit_edge126.unr-lcssa ]
  %lcmp.mod354 = trunc i64 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod354)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165.epil.init
  store i32 %.090122.epil.init, ptr %i.cu, align 4, !tbaa !19
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.epil.preheader
  %i.cv = sub i32 %i.q, %.091                     ; 3 uses
  %i.cw = add nuw nsw i32 %spec.store.select, 1
  %i.cx = sub i32 %i.cw, %i.cv
  %i.cy = icmp ult i32 %i.cv, %i.cx
  br i1 %i.cy, label %.lr.ph129.preheader, label %._crit_edge134.split

.lr.ph129.preheader:                              ; preds = %._crit_edge126
  %i.cz = zext i32 %indvars.iv177.a to i64        ; 2 uses
  %i.da = add i32 %spec.store.select, %indvars.iv182
  %wide.trip.count175 = zext i32 %indvars.iv158 to i64
  %i.db = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  %n.vec = and i64 %i.db, -8                      ; 3 uses
  %i.dc = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %._crit_edge130
  %indvar = phi i64 [ 0, %.lr.ph129.preheader ], [ %indvar.next, %._crit_edge130 ] ; 2 uses
  %indvars.iv179 = phi i64 [ %i.cz, %.lr.ph129.preheader ], [ %indvars.iv.next180, %._crit_edge130 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %indvars.iv179 ; 6 uses
  %i.de = trunc nuw i64 %indvars.iv179 to i32     ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph129
  %i.df = add i64 %indvar, %i.cz
  %i.dg = mul nuw i64 %i.df, 52
  %i.dh = add i64 %i.dg, -1
  %diff.check = icmp ult i64 %i.dh, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = or disjoint i64 %index, 1               ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load = load <4 x i32>, ptr %i.dj, align 4, !tbaa !19
  %wide.load224 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !19
  %i.dl = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dm = lshr <4 x i32> %wide.load224, %broadcast.splat
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.di ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x i32> %i.dl, ptr %i.dn, align 4, !tbaa !19
  store <4 x i32> %i.dm, ptr %i.do, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge130, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph129, %middle.block
  %indvars.iv171.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph129 ], [ %i.dc, %middle.block ] ; 4 uses
  %i.dq = sub nsw i64 %wide.trip.count169, %indvars.iv171.ph
  %xtraiter357 = and i64 %i.dq, 3                 ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv171.prol = phi i64 [ %indvars.iv.next172.prol, %scalar.ph.prol ], [ %indvars.iv171.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171.prol
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !19
  %i.dt = lshr i32 %i.ds, %i.de
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv171.prol
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !19
  %indvars.iv.next172.prol = add nuw nsw i64 %indvars.iv171.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter357
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !87

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv171.unr = phi i64 [ %indvars.iv171.ph, %scalar.ph.preheader ], [ %indvars.iv.next172.prol, %scalar.ph.prol ]
  %i.dv = sub nsw i64 %indvars.iv171.ph, %wide.trip.count169
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge130, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172.3, %scalar.ph ], [ %indvars.iv171.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !19
  %i.dz = lshr i32 %i.dy, %i.de
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv171
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !19
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !19
  %i.ed = lshr i32 %i.ec, %i.de
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next172
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !19
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.1
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !19
  %i.eh = lshr i32 %i.eg, %i.de
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next172.1
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !19
  %indvars.iv.next172.2 = add nuw nsw i64 %indvars.iv171, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.2
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !19
  %i.el = lshr i32 %i.ek, %i.de
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next172.2
  store i32 %i.el, ptr %i.em, align 4, !tbaa !19
  %indvars.iv.next172.3 = add nuw nsw i64 %indvars.iv171, 4 ; 2 uses
  %exitcond176.not.3 = icmp eq i64 %indvars.iv.next172.3, %wide.trip.count175
  br i1 %exitcond176.not.3, label %._crit_edge130, label %scalar.ph, !llvm.loop !88

._crit_edge130:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next180 to i32
  %exitcond184.not = icmp eq i32 %i.da, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond184.not, label %._crit_edge134.split, label %.lr.ph129, !llvm.loop !89

._crit_edge134.split:                             ; preds = %._crit_edge130, %._crit_edge126
  %i.en = getelementptr i8, ptr %3, i64 736       ; 14 uses
  %i.eo = sub nsw i32 %i.q, %spec.store.select
  %.not76.i = icmp slt i32 %.091, 1
  br i1 %.not76.i, label %HUF_fillDTableX2.exit, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %._crit_edge134.split
  %i.ep = add i64 %i.a, 735
  %i.eq = add i64 %i.a, 735
  %i.er = add i64 %i.a, 735
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %.loopexit.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %.loopexit.i ], [ 1, %.lr.ph78.i.preheader ] ; 4 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv96.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !19 ; 8 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next97.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !19 ; 13 uses
  %i.ew = trunc nuw nsw i64 %indvars.iv96.i to i32
  %i.ex = sub i32 %i.q, %i.ew                     ; 10 uses
  %i.ey = sub i32 %spec.store.select, %i.ex       ; 3 uses
  %.not56.i = icmp ult i32 %i.ey, %i.cv
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv96.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !19 ; 14 uses
  br i1 %.not56.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph78.i
  %i.fb = and i32 %i.ey, 31
  %i.fc = shl nuw i32 1, %i.fb                    ; 4 uses
  %.not5766.i = icmp eq i32 %i.et, %i.ev
  br i1 %.not5766.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.fd = add i32 %i.ex, %i.eo                    ; 3 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.fd, i32 1)
  %i.fe = zext i32 %i.ex to i64
  %i.ff = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %i.fe ; 2 uses
  %i.fg = icmp sgt i32 %i.fd, 1
  %i.fh = shl i32 %i.ex, 16
  %i.fi = add i32 %i.fh, 16777216                 ; 9 uses
  %i.fj = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fj ; 2 uses
  %.not61.i = icmp sgt i32 %i.fd, %.091
  %i.fl = add i32 %i.ex, %i.q
  %i.fm = sext i32 %i.et to i64                   ; 12 uses
  br i1 %.not61.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  switch i32 %i.fc, label %.preheader.i.us.i [
    i32 2, label %.loopexit.i.us.us.i.preheader
    i32 4, label %.loopexit.i.us.us74.i.preheader
  ]

.loopexit.i.us.us.i.preheader:                    ; preds = %.lr.ph.split.us.i
  %i.fn = sub i32 %i.ev, %i.et
  %.neg412 = add i32 %i.et, 1
  %xtraiter387 = and i32 %i.fn, 1
  %lcmp.mod388.not = icmp eq i32 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.loopexit.i.us.us.i.prol.loopexit, label %.loopexit.i.us.us.i.prol

.loopexit.i.us.us.i.prol:                         ; preds = %.loopexit.i.us.us.i.preheader
  %i.fo = sext i32 %i.fa to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fo
  %i.fq = getelementptr inbounds i8, ptr %i.en, i64 %i.fm
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !130
  %i.fs = zext i8 %i.fr to i32
  %i.ft = or disjoint i32 %i.fi, %i.fs
  %i.fu = zext i32 %i.ft to i64
  %i.fv = mul nuw i64 %i.fu, 4294967297
  store i64 %i.fv, ptr %i.fp, align 2
  %i.fw = add i32 %i.fa, 2
  %indvars.iv.next91.i.prol = add nsw i64 %i.fm, 1
  br label %.loopexit.i.us.us.i.prol.loopexit

.loopexit.i.us.us.i.prol.loopexit:                ; preds = %.loopexit.i.us.us.i.prol, %.loopexit.i.us.us.i.preheader
  %indvars.iv90.i.unr = phi i64 [ %i.fm, %.loopexit.i.us.us.i.preheader ], [ %indvars.iv.next91.i.prol, %.loopexit.i.us.us.i.prol ]
  %.05267.us.us.i.unr = phi i32 [ %i.fa, %.loopexit.i.us.us.i.preheader ], [ %i.fw, %.loopexit.i.us.us.i.prol ]
  %i.fx = icmp eq i32 %i.ev, %.neg412
  br i1 %i.fx, label %.loopexit.i, label %.loopexit.i.us.us.i

.loopexit.i.us.us74.i.preheader:                  ; preds = %.lr.ph.split.us.i
  %i.fy = xor i32 %i.et, -1
  %i.fz = add i32 %i.ev, %i.fy                    ; 2 uses
  %i.ga = zext i32 %i.fz to i64                   ; 3 uses
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %min.iters.check256 = icmp ult i32 %i.fz, 31
  br i1 %min.iters.check256, label %.loopexit.i.us.us74.i.preheader340, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.loopexit.i.us.us74.i.preheader
  %i.gc = xor i32 %i.et, -1
end_hunk_0
