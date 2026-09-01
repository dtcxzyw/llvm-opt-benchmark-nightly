Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/huf_decompress?download=true
inline.NumInlined: 720
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@HUF_readDTableX1_wksp:bb.a
  store i64 %i.jm, ptr %i.jq, align 1
  %i.jr = getelementptr i8, ptr %i.jp, i64 16
  store i64 %i.jm, ptr %i.jr, align 1
  %i.js = getelementptr i8, ptr %i.jp, i64 24
  store i64 %i.jm, ptr %i.js, align 1
  %i.jt = getelementptr [2 x i8], ptr %i.jo, i64 %indvars.iv257 ; 4 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 32
  store i64 %i.jm, ptr %i.ju, align 1
  %i.jv = getelementptr i8, ptr %i.jt, i64 40
  store i64 %i.jm, ptr %i.jv, align 1
  %i.jw = getelementptr i8, ptr %i.jt, i64 48
  store i64 %i.jm, ptr %i.jw, align 1
  %i.jx = getelementptr i8, ptr %i.jt, i64 56
  store i64 %i.jm, ptr %i.jx, align 1
  %i.jy = getelementptr [2 x i8], ptr %i.jo, i64 %indvars.iv257 ; 4 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 64
  store i64 %i.jm, ptr %i.jz, align 1
  %i.ka = getelementptr i8, ptr %i.jy, i64 72
  store i64 %i.jm, ptr %i.ka, align 1
  %i.kb = getelementptr i8, ptr %i.jy, i64 80
  store i64 %i.jm, ptr %i.kb, align 1
  %i.kc = getelementptr i8, ptr %i.jy, i64 88
  store i64 %i.jm, ptr %i.kc, align 1
  %i.kd = getelementptr [2 x i8], ptr %i.jo, i64 %indvars.iv257 ; 4 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 96
  store i64 %i.jm, ptr %i.ke, align 1
  %i.kf = getelementptr i8, ptr %i.kd, i64 104
  store i64 %i.jm, ptr %i.kf, align 1
  %i.kg = getelementptr i8, ptr %i.kd, i64 112
  store i64 %i.jm, ptr %i.kg, align 1
  %i.kh = getelementptr i8, ptr %i.kd, i64 120
  store i64 %i.jm, ptr %i.kh, align 1
  %indvars.iv.next258.3 = add nuw nsw i64 %indvars.iv257, 64 ; 2 uses
  %niter327.next.3 = add i64 %niter327, 4         ; 2 uses
  %niter327.ncmp.3.not = icmp eq i64 %niter327.next.3, %unroll_iter326
  br i1 %niter327.ncmp.3.not, label %._crit_edge206.unr-lcssa, label %.lr.ph205.new, !llvm.loop !22

._crit_edge206.unr-lcssa:                         ; preds = %.lr.ph205.new
  br i1 %lcmp.mod324.not, label %._crit_edge206, label %.epil.preheader321

.epil.preheader321:                               ; preds = %._crit_edge206.unr-lcssa, %.lr.ph205
  %indvars.iv257.epil.init = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next258.3, %._crit_edge206.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod325)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader321
  %indvars.iv257.epil = phi i64 [ %indvars.iv257.epil.init, %.epil.preheader321 ], [ %indvars.iv.next258.epil, %bb.m ] ; 2 uses
  %epil.iter323 = phi i64 [ 0, %.epil.preheader321 ], [ %epil.iter323.next, %bb.m ]
  %i.ki = getelementptr [2 x i8], ptr %i.jo, i64 %indvars.iv257.epil ; 4 uses
  store i64 %i.jm, ptr %i.ki, align 1
  %i.kj = getelementptr i8, ptr %i.ki, i64 8
  store i64 %i.jm, ptr %i.kj, align 1
  %i.kk = getelementptr i8, ptr %i.ki, i64 16
  store i64 %i.jm, ptr %i.kk, align 1
  %i.kl = getelementptr i8, ptr %i.ki, i64 24
  store i64 %i.jm, ptr %i.kl, align 1
  %indvars.iv.next258.epil = add nuw nsw i64 %indvars.iv257.epil, 16
  %epil.iter323.next = add i64 %epil.iter323, 1   ; 2 uses
  %epil.iter323.cmp.not = icmp eq i64 %epil.iter323.next, %xtraiter322
  br i1 %epil.iter323.cmp.not, label %._crit_edge206, label %bb.m, !llvm.loop !23

._crit_edge206:                                   ; preds = %bb.m, %._crit_edge206.unr-lcssa
  %i.km = add i32 %.4157207, %i.fe
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count263
  br i1 %exitcond264.not, label %.loopexit, label %.lr.ph205, !llvm.loop !24

.loopexit.loopexit288.unr-lcssa:                  ; preds = %.lr.ph202
  %lcmp.mod317.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod317.not, label %.loopexit, label %.lr.ph202.epil.preheader

.lr.ph202.epil.preheader:                         ; preds = %.loopexit.loopexit288.unr-lcssa, %.lr.ph202.preheader
  %indvars.iv252.epil.init = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next253.1, %.loopexit.loopexit288.unr-lcssa ]
  %.0153200.epil.init = phi i32 [ %.0158214, %.lr.ph202.preheader ], [ %i.gk, %.loopexit.loopexit288.unr-lcssa ]
  %lcmp.mod318 = trunc i32 %i.fb to i1
  call void @llvm.assume(i1 %lcmp.mod318)
  %i.kn = trunc nuw nsw i64 %indvars.iv252.epil.init to i32
  %i.ko = add i32 %.0159212, %i.kn
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr i8, ptr %i.ey, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = sext i32 %.0153200.epil.init to i64
  %i.kt = getelementptr [2 x i8], ptr %i.c, i64 %i.ks ; 2 uses
  store i8 %i.fh, ptr %i.kt, align 1
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  store i8 %i.kr, ptr %.sroa.5.0..sroa_idx.epil, align 1
  br label %.loopexit

.loopexit.loopexit290.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod311.not = icmp eq i64 %xtraiter309, 0
  br i1 %lcmp.mod311.not, label %.loopexit, label %.epil.preheader308

.epil.preheader308:                               ; preds = %.loopexit.loopexit290.unr-lcssa, %.lr.ph196
  %indvars.iv242.epil.init = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next243.1, %.loopexit.loopexit290.unr-lcssa ]
  %.2155194.epil.init = phi i32 [ %.0158214, %.lr.ph196 ], [ %i.hu, %.loopexit.loopexit290.unr-lcssa ]
  %lcmp.mod312 = trunc i32 %i.fb to i1
  call void @llvm.assume(i1 %lcmp.mod312)
  %i.ku = trunc nuw nsw i64 %indvars.iv242.epil.init to i32
  %i.kv = add i32 %.0159212, %i.ku
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr i8, ptr %i.ey, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1
  %i.kz = zext i8 %i.ky to i64
  %i.la = shl nuw nsw i64 %i.kz, 8
  %i.lb = or disjoint i64 %i.la, %i.fp
  %i.lc = mul nuw i64 %i.lb, 281479271743489
  %i.ld = sext i32 %.2155194.epil.init to i64
  %i.le = getelementptr [2 x i8], ptr %i.c, i64 %i.ld
  store i64 %i.lc, ptr %i.le, align 1
  br label %.loopexit

.loopexit.loopexit291.unr-lcssa:                  ; preds = %bb.k
  %lcmp.mod304.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod304.not, label %.loopexit, label %.epil.preheader301

.epil.preheader301:                               ; preds = %.loopexit.loopexit291.unr-lcssa, %.lr.ph193
  %indvars.iv237.epil.init = phi i64 [ 0, %.lr.ph193 ], [ %indvars.iv.next238.1, %.loopexit.loopexit291.unr-lcssa ]
  %.3156191.epil.init = phi i32 [ %.0158214, %.lr.ph193 ], [ %i.iv, %.loopexit.loopexit291.unr-lcssa ]
  %lcmp.mod305 = trunc i32 %i.fb to i1
  call void @llvm.assume(i1 %lcmp.mod305)
  %i.lf = trunc nuw nsw i64 %indvars.iv237.epil.init to i32
  %i.lg = add i32 %.0159212, %i.lf
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr i8, ptr %i.ey, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1
  %i.lk = zext i8 %i.lj to i64
  %i.ll = shl nuw nsw i64 %i.lk, 8
  %i.lm = or disjoint i64 %i.ll, %i.fm
  %i.ln = mul nuw i64 %i.lm, 281479271743489      ; 2 uses
  %i.lo = sext i32 %.3156191.epil.init to i64
  %i.lp = getelementptr [2 x i8], ptr %i.c, i64 %i.lo ; 2 uses
  store i64 %i.ln, ptr %i.lp, align 1
  %i.lq = getelementptr i8, ptr %i.lp, i64 8
  store i64 %i.ln, ptr %i.lq, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader301, %.loopexit.loopexit291.unr-lcssa, %.epil.preheader308, %.loopexit.loopexit290.unr-lcssa, %.lr.ph199, %.lr.ph202.epil.preheader, %.loopexit.loopexit288.unr-lcssa, %._crit_edge206, %.preheader179, %.preheader177, %.preheader175, %.preheader, %bb.l, %.lr.ph210
  %i.lr = add i32 %i.fb, %.0159212
  %i.ls = mul i32 %i.fb, %i.fe
  %i.lt = add i32 %i.ls, %.0158214
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %i.ez
  br i1 %exitcond269.not, label %.critedge, label %bb.i, !llvm.loop !25

.critedge:                                        ; preds = %.loopexit, %HUF_rescaleStats.exit, %bb.b, %bb.a
  %.1 = phi i64 [ -44, %HUF_rescaleStats.exit ], [ -44, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @HUF_readStats_wksp(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @HUF_readDTableX2_wksp(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %.val = load i32, ptr %0, align 4               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.val to i8
  %.sroa.8.0.extract.shift = lshr i32 %.val, 24
  %.sroa.8.0.extract.trunc = trunc nuw i32 %.sroa.8.0.extract.shift to i8
  %i.c = and i32 %.val, 255                       ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 4          ; 9 uses
  %i.e = icmp ult i64 %4, 2124
  br i1 %i.e, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %3, i64 676        ; 4 uses
  %i.g = getelementptr i8, ptr %3, i64 680        ; 11 uses
  %i.h = getelementptr i8, ptr %3, i64 624        ; 10 uses
  %i.i = icmp samesign ugt i32 %i.c, 12
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(112) %i.h, i8 0, i64 112, i1 false)
  br i1 %i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !annotation !26
  store i32 0, ptr %i.b, align 4, !annotation !26
  %i.j = getelementptr i8, ptr %3, i64 992        ; 4 uses
  %i.k = getelementptr i8, ptr %3, i64 1248
  %i.l = call i64 @HUF_readStats_wksp(ptr noundef %i.j, i64 noundef 256, ptr noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2, ptr noundef %i.k, i64 noundef 876, i32 noundef %5) #16 ; 3 uses
  %i.m = icmp ult i64 %i.l, -119
  br i1 %i.m, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.a, align 4              ; 5 uses
  %i.o = icmp ugt i32 %i.n, %i.c
  br i1 %i.o, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nuw nsw i32 %i.n, 1                  ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv183 = phi i32 [ %indvars.iv.next184, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv178 = phi i32 [ %indvars.iv.next179, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %indvars.iv159 = phi i32 [ %indvars.iv.next160, %bb.f ], [ %i.p, %bb.e ] ; 4 uses
  %.092 = phi i32 [ %i.u, %bb.f ], [ %i.n, %bb.e ] ; 4 uses
  %i.q = zext i32 %.092 to i64
  %i.r = getelementptr [4 x i8], ptr %i.h, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 0
  %i.u = add i32 %.092, -1
  %indvars.iv.next160 = add i32 %indvars.iv159, -1
  %indvars.iv.next179 = add i32 %indvars.iv178, 1
  %indvars.iv.next184 = add i32 %indvars.iv183, -1
  br i1 %i.t, label %bb.f, label %.preheader, !llvm.loop !27

.preheader:                                       ; preds = %bb.f
  %i.v = icmp samesign ult i32 %i.n, 12
  %i.w = icmp eq i32 %i.c, 12
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  %spec.store.select = select i1 %or.cond, i32 11, i32 %i.c ; 7 uses
  %i.x = add i32 %.092, 1                         ; 4 uses
  %i.y = icmp ugt i32 %i.x, 1                     ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %indvars.iv159 to i64
  %i.z = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.aa = add i32 %indvars.iv159, -2
  %i.ab = icmp ult i32 %i.aa, 3
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.z, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.094117 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.aq, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ac = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, %.094117                 ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %.094117, ptr %i.af, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv.next
  store i32 %i.ae, ptr %i.aj, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = add i32 %i.al, %i.ai                    ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv.next.1
  store i32 %i.ai, ptr %i.an, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add i32 %i.ap, %i.am                    ; 3 uses
  %i.ar = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv.next.2
  store i32 %i.am, ptr %i.ar, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !28

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.094117.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod240 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod240)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.094117.epil = phi i32 [ %.094117.epil.init, %.lr.ph.epil.preheader ], [ %i.au, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.as = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.at = load i32, ptr %i.as, align 4
  %i.au = add i32 %i.at, %.094117.epil            ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv.epil
  store i32 %.094117.epil, ptr %i.av, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !29

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.094.lcssa = phi i32 [ 0, %.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.au, %.lr.ph.epil ] ; 2 uses
  store i32 %.094.lcssa, ptr %i.g, align 4
  %i.aw = zext i32 %i.x to i64                    ; 3 uses
  %i.ax = getelementptr [4 x i8], ptr %i.g, i64 %i.aw
  store i32 %.094.lcssa, ptr %i.ax, align 4
  %i.ay = load i32, ptr %i.b, align 4             ; 4 uses
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %._crit_edge
  %i.az = getelementptr i8, ptr %3, i64 736       ; 3 uses
  %wide.trip.count164 = zext i32 %i.ay to i64     ; 2 uses
  %xtraiter241 = and i64 %wide.trip.count164, 1
  %i.ba = icmp eq i32 %i.ay, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph121.new

.lr.ph121.new:                                    ; preds = %.lr.ph121
  %unroll_iter245 = and i64 %wide.trip.count164, 4294967294
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph121.new
  %indvars.iv161 = phi i64 [ 0, %.lr.ph121.new ], [ %indvars.iv.next162.1, %bb.g ] ; 4 uses
  %niter246 = phi i64 [ 0, %.lr.ph121.new ], [ %niter246.next.1, %bb.g ]
  %i.bb = getelementptr i8, ptr %i.j, i64 %indvars.iv161
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.g, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4
  %i.bh = trunc i64 %indvars.iv161 to i8
  %i.bi = zext i32 %i.bf to i64
  %i.bj = getelementptr i8, ptr %i.az, i64 %i.bi
  store i8 %i.bh, ptr %i.bj, align 1
  %indvars.iv.next162 = or disjoint i64 %indvars.iv161, 1 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.j, i64 %indvars.iv.next162
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr [4 x i8], ptr %i.g, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = trunc i64 %indvars.iv.next162 to i8
  %i.br = zext i32 %i.bo to i64
  %i.bs = getelementptr i8, ptr %i.az, i64 %i.br
  store i8 %i.bq, ptr %i.bs, align 1
  %indvars.iv.next162.1 = add nuw nsw i64 %indvars.iv161, 2 ; 2 uses
  %niter246.next.1 = add i64 %niter246, 2         ; 2 uses
  %niter246.ncmp.1 = icmp eq i64 %niter246.next.1, %unroll_iter245
  br i1 %niter246.ncmp.1, label %._crit_edge122.loopexit.unr-lcssa, label %bb.g, !llvm.loop !30

._crit_edge122.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod243.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod243.not, label %._crit_edge122, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge122.loopexit.unr-lcssa, %.lr.ph121
  %indvars.iv161.epil.init = phi i64 [ 0, %.lr.ph121 ], [ %indvars.iv.next162.1, %._crit_edge122.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod244 = trunc i32 %i.ay to i1
  call void @llvm.assume(i1 %lcmp.mod244)
  %i.bt = getelementptr i8, ptr %i.j, i64 %indvars.iv161.epil.init
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr %i.g, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4
  %i.bz = trunc i64 %indvars.iv161.epil.init to i8
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr i8, ptr %i.az, i64 %i.ca
  store i8 %i.bz, ptr %i.cb, align 1
  br label %._crit_edge122

._crit_edge122:                                   ; preds = %.epil.preheader, %._crit_edge122.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.g, align 4
  %i.cc = xor i32 %i.n, -1
  %i.cd = add nsw i32 %spec.store.select, %i.cc   ; 2 uses
  br i1 %i.y, label %.lr.ph126.preheader, label %HUF_fillDTableX2.exit

.lr.ph126.preheader:                              ; preds = %._crit_edge122
  %wide.trip.count170 = zext i32 %indvars.iv159 to i64 ; 2 uses
  %i.ce = add nsw i64 %wide.trip.count170, -1     ; 5 uses
  %i.cf = add nsw i64 %wide.trip.count170, -2     ; 2 uses
  %xtraiter247 = and i64 %i.ce, 1
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph126.epil.preheader, label %.lr.ph126.preheader.new

.lr.ph126.preheader.new:                          ; preds = %.lr.ph126.preheader
  %unroll_iter251 = and i64 %i.ce, -2
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126, %.lr.ph126.preheader.new
  %indvars.iv166 = phi i64 [ 1, %.lr.ph126.preheader.new ], [ %indvars.iv.next167.1, %.lr.ph126 ] ; 5 uses
  %.091123 = phi i32 [ 0, %.lr.ph126.preheader.new ], [ %i.ct, %.lr.ph126 ] ; 2 uses
  %niter252 = phi i64 [ 0, %.lr.ph126.preheader.new ], [ %niter252.next.1, %.lr.ph126 ]
  %i.ch = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv166
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = trunc nuw i64 %indvars.iv166 to i32
  %i.ck = add i32 %i.cd, %i.cj
  %i.cl = shl i32 %i.ci, %i.ck
  %i.cm = add i32 %i.cl, %.091123                 ; 2 uses
  %i.cn = getelementptr [4 x i8], ptr %3, i64 %indvars.iv166
  store i32 %.091123, ptr %i.cn, align 4
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 3 uses
  %i.co = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.next167
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = trunc nuw i64 %indvars.iv.next167 to i32
  %i.cr = add i32 %i.cd, %i.cq
  %i.cs = shl i32 %i.cp, %i.cr
  %i.ct = add i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next167
  store i32 %i.cm, ptr %i.cu, align 4
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %niter252.next.1 = add nuw i64 %niter252, 2     ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %._crit_edge127.unr-lcssa, label %.lr.ph126, !llvm.loop !31

._crit_edge127.unr-lcssa:                         ; preds = %.lr.ph126
  %lcmp.mod249.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %._crit_edge127, label %.lr.ph126.epil.preheader

.lr.ph126.epil.preheader:                         ; preds = %._crit_edge127.unr-lcssa, %.lr.ph126.preheader
  %indvars.iv166.epil.init = phi i64 [ 1, %.lr.ph126.preheader ], [ %indvars.iv.next167.1, %._crit_edge127.unr-lcssa ]
  %.091123.epil.init = phi i32 [ 0, %.lr.ph126.preheader ], [ %i.ct, %._crit_edge127.unr-lcssa ]
  %lcmp.mod250 = trunc i64 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.cv = getelementptr [4 x i8], ptr %3, i64 %indvars.iv166.epil.init
  store i32 %.091123.epil.init, ptr %i.cv, align 4
  br label %._crit_edge127

._crit_edge127:                                   ; preds = %._crit_edge127.unr-lcssa, %.lr.ph126.epil.preheader
  %i.cw = sub i32 %i.p, %.092                     ; 3 uses
  %i.cx = add nuw nsw i32 %spec.store.select, 1
  %i.cy = sub i32 %i.cx, %i.cw
  %i.cz = icmp ult i32 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph130.preheader, label %._crit_edge135.split

.lr.ph130.preheader:                              ; preds = %._crit_edge127
  %i.da = zext i32 %indvars.iv178 to i64
  %i.db = add i32 %spec.store.select, %indvars.iv183
  %xtraiter254 = and i64 %i.ce, 3                 ; 3 uses
  %i.dc = icmp ult i64 %i.cf, 3
  %unroll_iter258 = and i64 %i.ce, -4
  %lcmp.mod256.not = icmp eq i64 %xtraiter254, 0
  %lcmp.mod257 = icmp ne i64 %xtraiter254, 0
  br label %.lr.ph130

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %._crit_edge131
  %indvars.iv180 = phi i64 [ %i.da, %.lr.ph130.preheader ], [ %indvars.iv.next181, %._crit_edge131 ] ; 3 uses
  %i.dd = getelementptr [52 x i8], ptr %3, i64 %indvars.iv180 ; 5 uses
  %i.de = trunc nuw i64 %indvars.iv180 to i32     ; 5 uses
  br i1 %i.dc, label %.epil.preheader253, label %.lr.ph130.new

.lr.ph130.new:                                    ; preds = %.lr.ph130, %.lr.ph130.new
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.3, %.lr.ph130.new ], [ 1, %.lr.ph130 ] ; 6 uses
  %niter259 = phi i64 [ %niter259.next.3, %.lr.ph130.new ], [ 0, %.lr.ph130 ]
  %i.df = getelementptr [4 x i8], ptr %3, i64 %indvars.iv172
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = lshr i32 %i.dg, %i.de
  %i.di = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv172
  store i32 %i.dh, ptr %i.di, align 4
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next173
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = lshr i32 %i.dk, %i.de
  %i.dm = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv.next173
  store i32 %i.dl, ptr %i.dm, align 4
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %i.dn = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next173.1
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = lshr i32 %i.do, %i.de
  %i.dq = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv.next173.1
  store i32 %i.dp, ptr %i.dq, align 4
  %indvars.iv.next173.2 = add nuw nsw i64 %indvars.iv172, 3 ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next173.2
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = lshr i32 %i.ds, %i.de
  %i.du = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv.next173.2
  store i32 %i.dt, ptr %i.du, align 4
  %indvars.iv.next173.3 = add nuw nsw i64 %indvars.iv172, 4 ; 2 uses
  %niter259.next.3 = add nuw i64 %niter259, 4     ; 2 uses
  %niter259.ncmp.3 = icmp eq i64 %niter259.next.3, %unroll_iter258
  br i1 %niter259.ncmp.3, label %._crit_edge131.unr-lcssa, label %.lr.ph130.new, !llvm.loop !32

._crit_edge131.unr-lcssa:                         ; preds = %.lr.ph130.new
  br i1 %lcmp.mod256.not, label %._crit_edge131, label %.epil.preheader253

.epil.preheader253:                               ; preds = %._crit_edge131.unr-lcssa, %.lr.ph130
  %indvars.iv172.epil.init = phi i64 [ 1, %.lr.ph130 ], [ %indvars.iv.next173.3, %._crit_edge131.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod257)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader253
  %indvars.iv172.epil = phi i64 [ %indvars.iv172.epil.init, %.epil.preheader253 ], [ %indvars.iv.next173.epil, %bb.h ] ; 3 uses
  %epil.iter255 = phi i64 [ 0, %.epil.preheader253 ], [ %epil.iter255.next, %bb.h ]
  %i.dv = getelementptr [4 x i8], ptr %3, i64 %indvars.iv172.epil
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = lshr i32 %i.dw, %i.de
  %i.dy = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv172.epil
  store i32 %i.dx, ptr %i.dy, align 4
  %indvars.iv.next173.epil = add nuw nsw i64 %indvars.iv172.epil, 1
  %epil.iter255.next = add i64 %epil.iter255, 1   ; 2 uses
  %epil.iter255.cmp.not = icmp eq i64 %epil.iter255.next, %xtraiter254
  br i1 %epil.iter255.cmp.not, label %._crit_edge131, label %bb.h, !llvm.loop !33

._crit_edge131:                                   ; preds = %bb.h, %._crit_edge131.unr-lcssa
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond185.not = icmp eq i32 %i.db, %lftr.wideiv
  br i1 %exitcond185.not, label %._crit_edge135.split, label %.lr.ph130, !llvm.loop !34

._crit_edge135.split:                             ; preds = %._crit_edge131, %._crit_edge127
  %i.dz = getelementptr i8, ptr %3, i64 736       ; 12 uses
  %i.ea = sub nsw i32 %i.p, %spec.store.select
  %i.eb = icmp sgt i32 %i.x, 1
  br i1 %i.eb, label %.lr.ph79.i, label %HUF_fillDTableX2.exit

.lr.ph79.i:                                       ; preds = %._crit_edge135.split, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 1, %._crit_edge135.split ] ; 4 uses
  %i.ec = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.ed = load i32, ptr %i.ec, align 4            ; 15 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ee = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv.next.i
  %i.ef = load i32, ptr %i.ee, align 4            ; 11 uses
  %i.eg = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.eh = sub i32 %i.p, %i.eg                     ; 10 uses
  %i.ei = sub i32 %spec.store.select, %i.eh       ; 3 uses
  %.not.i = icmp ult i32 %i.ei, %i.cw
  %i.ej = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.ek = load i32, ptr %i.ej, align 4            ; 9 uses
  br i1 %.not.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph79.i
  %i.el = and i32 %i.ei, 31
  %i.em = shl nuw i32 1, %i.el                    ; 4 uses
  %.not5664.i = icmp eq i32 %i.ed, %i.ef
  br i1 %.not5664.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.en = add i32 %i.eh, %i.ea                    ; 2 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.en, i32 1) ; 2 uses
  %i.eo = zext i32 %i.eh to i64
  %i.ep = getelementptr [52 x i8], ptr %3, i64 %i.eo ; 2 uses
  %i.eq = icmp sgt i32 %i.en, 1                   ; 2 uses
  %i.er = shl i32 %i.eh, 16
  %i.es = add i32 %i.er, 16777216                 ; 8 uses
  %i.et = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.eu = getelementptr [4 x i8], ptr %i.ep, i64 %i.et ; 2 uses
  %i.ev = icmp slt i32 %spec.store.select.i, %i.x
  %i.ew = add i32 %i.eh, %i.p
  br i1 %i.ev, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %HUF_fillDTableX2Level2.exit.loopexit.us.i
  %.066.us.i = phi i32 [ %i.ns, %HUF_fillDTableX2Level2.exit.loopexit.us.i ], [ %i.ed, %.lr.ph.i ] ; 2 uses
  %.05265.us.i = phi i32 [ %i.nr, %HUF_fillDTableX2Level2.exit.loopexit.us.i ], [ %i.ek, %.lr.ph.i ] ; 2 uses
  %i.ex = sext i32 %.05265.us.i to i64
  %i.ey = getelementptr [4 x i8], ptr %i.d, i64 %i.ex ; 9 uses
  %i.ez = sext i32 %.066.us.i to i64
  %i.fa = getelementptr i8, ptr %i.dz, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i32                    ; 2 uses
  br i1 %i.eq, label %bb.j, label %.loopexit.i.us.i

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.fd = or disjoint i32 %i.es, %i.fc
  %i.fe = zext i32 %i.fd to i64
  %i.ff = mul nuw i64 %i.fe, 4294967297           ; 23 uses
  %i.fg = load i32, ptr %i.eu, align 4            ; 3 uses
  switch i32 %i.em, label %.preheader.i.us.i [
    i32 2, label %bb.l
    i32 4, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  store i64 %i.ff, ptr %i.ey, align 2
  %i.fh = getelementptr i8, ptr %i.ey, i64 8
  store i64 %i.ff, ptr %i.fh, align 2
  br label %.loopexit.i.us.i

bb.l:                                             ; preds = %bb.j
  store i64 %i.ff, ptr %i.ey, align 2
  br label %.loopexit.i.us.i

.preheader.i.us.i:                                ; preds = %bb.j
  %i.fi = icmp sgt i32 %i.fg, 0
  br i1 %i.fi, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.preheader.i.us.i
  %i.fj = zext nneg i32 %i.fg to i64
  %i.fk = add nsw i64 %i.fj, -1
  %i.fl = lshr i64 %i.fk, 3
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %xtraiter270 = and i64 %i.fm, 3                 ; 3 uses
  %i.fn = icmp ult i32 %i.fg, 25
  br i1 %i.fn, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.new

.lr.ph.preheader.i.us.i.new:                      ; preds = %.lr.ph.preheader.i.us.i
  %unroll_iter274 = and i64 %i.fm, 4611686018427387900
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i, %.lr.ph.preheader.i.us.i.new
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %indvars.iv.next.i.us.i.3, %.lr.ph.i.us.i ] ; 5 uses
  %niter275 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %niter275.next.3, %.lr.ph.i.us.i ]
  %i.fo = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv.i.us.i ; 4 uses
  store i64 %i.ff, ptr %i.fo, align 2
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  store i64 %i.ff, ptr %i.fp, align 2
  %i.fq = getelementptr i8, ptr %i.fo, i64 16
  store i64 %i.ff, ptr %i.fq, align 2
  %i.fr = getelementptr i8, ptr %i.fo, i64 24
  store i64 %i.ff, ptr %i.fr, align 2
  %i.fs = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv.i.us.i ; 4 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 32
  store i64 %i.ff, ptr %i.ft, align 2
  %i.fu = getelementptr i8, ptr %i.fs, i64 40
  store i64 %i.ff, ptr %i.fu, align 2
  %i.fv = getelementptr i8, ptr %i.fs, i64 48
  store i64 %i.ff, ptr %i.fv, align 2
  %i.fw = getelementptr i8, ptr %i.fs, i64 56
  store i64 %i.ff, ptr %i.fw, align 2
  %i.fx = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv.i.us.i ; 4 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 64
  store i64 %i.ff, ptr %i.fy, align 2
  %i.fz = getelementptr i8, ptr %i.fx, i64 72
  store i64 %i.ff, ptr %i.fz, align 2
  %i.ga = getelementptr i8, ptr %i.fx, i64 80
  store i64 %i.ff, ptr %i.ga, align 2
  %i.gb = getelementptr i8, ptr %i.fx, i64 88
  store i64 %i.ff, ptr %i.gb, align 2
  %i.gc = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv.i.us.i ; 4 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 96
  store i64 %i.ff, ptr %i.gd, align 2
  %i.ge = getelementptr i8, ptr %i.gc, i64 104
  store i64 %i.ff, ptr %i.ge, align 2
  %i.gf = getelementptr i8, ptr %i.gc, i64 112
  store i64 %i.ff, ptr %i.gf, align 2
  %i.gg = getelementptr i8, ptr %i.gc, i64 120
  store i64 %i.ff, ptr %i.gg, align 2
  %indvars.iv.next.i.us.i.3 = add nuw nsw i64 %indvars.iv.i.us.i, 32 ; 2 uses
  %niter275.next.3 = add i64 %niter275, 4         ; 2 uses
  %niter275.ncmp.3.not = icmp eq i64 %niter275.next.3, %unroll_iter274
  br i1 %niter275.ncmp.3.not, label %.loopexit.i.us.i.loopexit.unr-lcssa, label %.lr.ph.i.us.i, !llvm.loop !35

.loopexit.i.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.us.i
  %lcmp.mod272.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod272.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil.preheader

.lr.ph.i.us.i.epil.preheader:                     ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i.3, %.loopexit.i.us.i.loopexit.unr-lcssa ]
  %lcmp.mod273 = icmp ne i64 %xtraiter270, 0
  call void @llvm.assume(i1 %lcmp.mod273)
  br label %.lr.ph.i.us.i.epil

.lr.ph.i.us.i.epil:                               ; preds = %.lr.ph.i.us.i.epil, %.lr.ph.i.us.i.epil.preheader
  %indvars.iv.i.us.i.epil = phi i64 [ %indvars.iv.i.us.i.epil.init, %.lr.ph.i.us.i.epil.preheader ], [ %indvars.iv.next.i.us.i.epil, %.lr.ph.i.us.i.epil ] ; 2 uses
  %epil.iter271 = phi i64 [ 0, %.lr.ph.i.us.i.epil.preheader ], [ %epil.iter271.next, %.lr.ph.i.us.i.epil ]
  %i.gh = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv.i.us.i.epil ; 4 uses
  store i64 %i.ff, ptr %i.gh, align 2
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  store i64 %i.ff, ptr %i.gi, align 2
  %i.gj = getelementptr i8, ptr %i.gh, i64 16
  store i64 %i.ff, ptr %i.gj, align 2
  %i.gk = getelementptr i8, ptr %i.gh, i64 24
  store i64 %i.ff, ptr %i.gk, align 2
  %indvars.iv.next.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.epil, 8
  %epil.iter271.next = add i64 %epil.iter271, 1   ; 2 uses
  %epil.iter271.cmp.not = icmp eq i64 %epil.iter271.next, %xtraiter270
  br i1 %epil.iter271.cmp.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil, !llvm.loop !36

.loopexit.i.us.i:                                 ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.i.us.i.epil, %.preheader.i.us.i, %bb.l, %bb.k, %.lr.ph.split.us.i
  %invariant.op140 = or disjoint i32 %i.fc, 33554432 ; 5 uses
  br label %bb.m

bb.m:                                             ; preds = %HUF_fillDTableX2ForWeight.exit.us.i, %.loopexit.i.us.i
  %indvars.iv55.i.us.i = phi i64 [ %i.et, %.loopexit.i.us.i ], [ %indvars.iv.next56.i.us.i, %HUF_fillDTableX2ForWeight.exit.us.i ] ; 4 uses
  %i.gl = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv55.i.us.i
  %i.gm = load i32, ptr %i.gl, align 4            ; 2 uses
  %indvars.iv.next56.i.us.i = add nuw nsw i64 %indvars.iv55.i.us.i, 1 ; 3 uses
  %i.gn = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv.next56.i.us.i
  %i.go = load i32, ptr %i.gn, align 4            ; 2 uses
  %i.gp = trunc nsw i64 %indvars.iv55.i.us.i to i32
  %i.gq = sub i32 %i.ew, %i.gp                    ; 6 uses
  %i.gr = getelementptr [4 x i8], ptr %i.ep, i64 %indvars.iv55.i.us.i
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr [4 x i8], ptr %i.ey, i64 %i.gt ; 13 uses
  %i.gv = sext i32 %i.gm to i64                   ; 9 uses
  %i.gw = getelementptr i8, ptr %i.dz, i64 %i.gv  ; 10 uses
  %i.gx = sext i32 %i.go to i64                   ; 9 uses
  %i.gy = getelementptr i8, ptr %i.dz, i64 %i.gx  ; 5 uses
  %i.gz = sub i32 %spec.store.select, %i.gq
  %i.ha = and i32 %i.gz, 31                       ; 2 uses
  %i.hb = shl nuw i32 1, %i.ha
  %.not82116.i.us.i = icmp eq i32 %i.gm, %i.go    ; 5 uses
  switch i32 %i.ha, label %.preheader.i59.us.i [
    i32 0, label %.preheader84.i.us.i
    i32 1, label %.preheader86.i.us.i
    i32 2, label %.preheader88.i.us.i
    i32 3, label %.preheader90.i.us.i
  ]

.preheader90.i.us.i:                              ; preds = %bb.m
  br i1 %.not82116.i.us.i, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph.i57.us.i

.lr.ph.i57.us.i:                                  ; preds = %.preheader90.i.us.i
  %i.hc = shl i32 %i.gq, 16
  %invariant.op.reass = add i32 %i.hc, %invariant.op140 ; 3 uses
  %i.hd = sub nsw i64 %i.gx, %i.gv
  %xtraiter276 = and i64 %i.hd, 1
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i57.us.i
  %i.he = load i8, ptr %i.gw, align 1
  %i.hf = zext i8 %i.he to i32
  %i.hg = shl nuw nsw i32 %i.hf, 8
  %.reass.reass.i.us.reass.i.reass.prol = or disjoint i32 %i.hg, %invariant.op.reass
  %i.hh = zext i32 %.reass.reass.i.us.reass.i.reass.prol to i64
  %i.hi = mul nuw i64 %i.hh, 4294967297           ; 4 uses
  store i64 %i.hi, ptr %i.gu, align 2
  %i.hj = getelementptr i8, ptr %i.gu, i64 8
  store i64 %i.hi, ptr %i.hj, align 2
  %i.hk = getelementptr i8, ptr %i.gu, i64 16
  store i64 %i.hi, ptr %i.hk, align 2
  %i.hl = getelementptr i8, ptr %i.gu, i64 24
  store i64 %i.hi, ptr %i.hl, align 2
  %i.hm = getelementptr i8, ptr %i.gu, i64 32
  %i.hn = getelementptr i8, ptr %i.gw, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i57.us.i
  %.394.i.us.i.unr = phi ptr [ %i.gu, %.lr.ph.i57.us.i ], [ %i.hm, %.prol.loopexit.unr-lcssa ]
  %.37793.i.us.i.unr = phi ptr [ %i.gw, %.lr.ph.i57.us.i ], [ %i.hn, %.prol.loopexit.unr-lcssa ]
  %i.ho = add nsw i64 %i.gx, -1
  %i.hp = icmp eq i64 %i.ho, %i.gv
  br i1 %i.hp, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph.i57.us.i.new

.lr.ph.i57.us.i.new:                              ; preds = %.prol.loopexit, %.lr.ph.i57.us.i.new
  %.394.i.us.i = phi ptr [ %i.ii, %.lr.ph.i57.us.i.new ], [ %.394.i.us.i.unr, %.prol.loopexit ] ; 9 uses
  %.37793.i.us.i = phi ptr [ %i.ij, %.lr.ph.i57.us.i.new ], [ %.37793.i.us.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hq = load i8, ptr %.37793.i.us.i, align 1
  %i.hr = zext i8 %i.hq to i32
  %i.hs = shl nuw nsw i32 %i.hr, 8
  %.reass.reass.i.us.reass.i.reass = or disjoint i32 %i.hs, %invariant.op.reass
  %i.ht = zext i32 %.reass.reass.i.us.reass.i.reass to i64
  %i.hu = mul nuw i64 %i.ht, 4294967297           ; 4 uses
  store i64 %i.hu, ptr %.394.i.us.i, align 2
  %i.hv = getelementptr i8, ptr %.394.i.us.i, i64 8
  store i64 %i.hu, ptr %i.hv, align 2
  %i.hw = getelementptr i8, ptr %.394.i.us.i, i64 16
  store i64 %i.hu, ptr %i.hw, align 2
  %i.hx = getelementptr i8, ptr %.394.i.us.i, i64 24
  store i64 %i.hu, ptr %i.hx, align 2
  %i.hy = getelementptr i8, ptr %.394.i.us.i, i64 32
  %i.hz = getelementptr i8, ptr %.37793.i.us.i, i64 1
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 8
  %.reass.reass.i.us.reass.i.reass.1 = or disjoint i32 %i.ic, %invariant.op.reass
  %i.id = zext i32 %.reass.reass.i.us.reass.i.reass.1 to i64
  %i.ie = mul nuw i64 %i.id, 4294967297           ; 4 uses
  store i64 %i.ie, ptr %i.hy, align 2
  %i.if = getelementptr i8, ptr %.394.i.us.i, i64 40
  store i64 %i.ie, ptr %i.if, align 2
  %i.ig = getelementptr i8, ptr %.394.i.us.i, i64 48
  store i64 %i.ie, ptr %i.ig, align 2
  %i.ih = getelementptr i8, ptr %.394.i.us.i, i64 56
  store i64 %i.ie, ptr %i.ih, align 2
  %i.ii = getelementptr i8, ptr %.394.i.us.i, i64 64
  %i.ij = getelementptr i8, ptr %.37793.i.us.i, i64 2 ; 2 uses
  %.not.i.us.i.1 = icmp eq ptr %i.ij, %i.gy
  br i1 %.not.i.us.i.1, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph.i57.us.i.new, !llvm.loop !37

.preheader88.i.us.i:                              ; preds = %bb.m
  br i1 %.not82116.i.us.i, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph98.i.us.i

.lr.ph98.i.us.i:                                  ; preds = %.preheader88.i.us.i
  %i.ik = shl i32 %i.gq, 16
  %invariant.op136.reass = add i32 %i.ik, %invariant.op140 ; 5 uses
  %i.il = sub nsw i64 %i.gx, %i.gv
  %xtraiter280 = and i64 %i.il, 3                 ; 2 uses
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %.prol.loopexit279, label %.prol.preheader278

.prol.preheader278:                               ; preds = %.lr.ph98.i.us.i, %.prol.preheader278
  %.297.i.us.i.prol = phi ptr [ %i.is, %.prol.preheader278 ], [ %i.gu, %.lr.ph98.i.us.i ] ; 3 uses
  %.27696.i.us.i.prol = phi ptr [ %i.it, %.prol.preheader278 ], [ %i.gw, %.lr.ph98.i.us.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader278 ], [ 0, %.lr.ph98.i.us.i ]
  %i.im = load i8, ptr %.27696.i.us.i.prol, align 1
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw nsw i32 %i.in, 8
  %.reass100.reass.i.us.reass.i.reass.prol = or disjoint i32 %i.io, %invariant.op136.reass
  %i.ip = zext i32 %.reass100.reass.i.us.reass.i.reass.prol to i64
  %i.iq = mul nuw i64 %i.ip, 4294967297           ; 2 uses
  store i64 %i.iq, ptr %.297.i.us.i.prol, align 2
  %i.ir = getelementptr i8, ptr %.297.i.us.i.prol, i64 8
  store i64 %i.iq, ptr %i.ir, align 2
  %i.is = getelementptr i8, ptr %.297.i.us.i.prol, i64 16 ; 2 uses
  %i.it = getelementptr i8, ptr %.27696.i.us.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter280
  br i1 %prol.iter.cmp.not, label %.prol.loopexit279, label %.prol.preheader278, !llvm.loop !38

.prol.loopexit279:                                ; preds = %.prol.preheader278, %.lr.ph98.i.us.i
  %.297.i.us.i.unr = phi ptr [ %i.gu, %.lr.ph98.i.us.i ], [ %i.is, %.prol.preheader278 ]
  %.27696.i.us.i.unr = phi ptr [ %i.gw, %.lr.ph98.i.us.i ], [ %i.it, %.prol.preheader278 ]
  %i.iu = sub nsw i64 %i.gv, %i.gx
  %i.iv = icmp ugt i64 %i.iu, -4
  br i1 %i.iv, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph98.i.us.i.new

.lr.ph98.i.us.i.new:                              ; preds = %.prol.loopexit279, %.lr.ph98.i.us.i.new
  %.297.i.us.i = phi ptr [ %i.ka, %.lr.ph98.i.us.i.new ], [ %.297.i.us.i.unr, %.prol.loopexit279 ] ; 9 uses
  %.27696.i.us.i = phi ptr [ %i.kb, %.lr.ph98.i.us.i.new ], [ %.27696.i.us.i.unr, %.prol.loopexit279 ] ; 5 uses
  %i.iw = load i8, ptr %.27696.i.us.i, align 1
  %i.ix = zext i8 %i.iw to i32
  %i.iy = shl nuw nsw i32 %i.ix, 8
  %.reass100.reass.i.us.reass.i.reass = or disjoint i32 %i.iy, %invariant.op136.reass
  %i.iz = zext i32 %.reass100.reass.i.us.reass.i.reass to i64
  %i.ja = mul nuw i64 %i.iz, 4294967297           ; 2 uses
  store i64 %i.ja, ptr %.297.i.us.i, align 2
  %i.jb = getelementptr i8, ptr %.297.i.us.i, i64 8
  store i64 %i.ja, ptr %i.jb, align 2
  %i.jc = getelementptr i8, ptr %.297.i.us.i, i64 16
  %i.jd = getelementptr i8, ptr %.27696.i.us.i, i64 1
  %i.je = load i8, ptr %i.jd, align 1
  %i.jf = zext i8 %i.je to i32
  %i.jg = shl nuw nsw i32 %i.jf, 8
  %.reass100.reass.i.us.reass.i.reass.1 = or disjoint i32 %i.jg, %invariant.op136.reass
  %i.jh = zext i32 %.reass100.reass.i.us.reass.i.reass.1 to i64
  %i.ji = mul nuw i64 %i.jh, 4294967297           ; 2 uses
  store i64 %i.ji, ptr %i.jc, align 2
  %i.jj = getelementptr i8, ptr %.297.i.us.i, i64 24
  store i64 %i.ji, ptr %i.jj, align 2
  %i.jk = getelementptr i8, ptr %.297.i.us.i, i64 32
  %i.jl = getelementptr i8, ptr %.27696.i.us.i, i64 2
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = zext i8 %i.jm to i32
  %i.jo = shl nuw nsw i32 %i.jn, 8
  %.reass100.reass.i.us.reass.i.reass.2 = or disjoint i32 %i.jo, %invariant.op136.reass
  %i.jp = zext i32 %.reass100.reass.i.us.reass.i.reass.2 to i64
  %i.jq = mul nuw i64 %i.jp, 4294967297           ; 2 uses
  store i64 %i.jq, ptr %i.jk, align 2
  %i.jr = getelementptr i8, ptr %.297.i.us.i, i64 40
  store i64 %i.jq, ptr %i.jr, align 2
  %i.js = getelementptr i8, ptr %.297.i.us.i, i64 48
  %i.jt = getelementptr i8, ptr %.27696.i.us.i, i64 3
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = zext i8 %i.ju to i32
  %i.jw = shl nuw nsw i32 %i.jv, 8
  %.reass100.reass.i.us.reass.i.reass.3 = or disjoint i32 %i.jw, %invariant.op136.reass
  %i.jx = zext i32 %.reass100.reass.i.us.reass.i.reass.3 to i64
  %i.jy = mul nuw i64 %i.jx, 4294967297           ; 2 uses
  store i64 %i.jy, ptr %i.js, align 2
  %i.jz = getelementptr i8, ptr %.297.i.us.i, i64 56
  store i64 %i.jy, ptr %i.jz, align 2
  %i.ka = getelementptr i8, ptr %.297.i.us.i, i64 64
  %i.kb = getelementptr i8, ptr %.27696.i.us.i, i64 4 ; 2 uses
  %.not79.i.us.i.3 = icmp eq ptr %i.kb, %i.gy
  br i1 %.not79.i.us.i.3, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph98.i.us.i.new, !llvm.loop !39

.preheader86.i.us.i:                              ; preds = %bb.m
  br i1 %.not82116.i.us.i, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph104.i.us.i

.lr.ph104.i.us.i:                                 ; preds = %.preheader86.i.us.i
  %i.kc = shl i32 %i.gq, 16
  %invariant.op137.reass = add i32 %i.kc, %invariant.op140 ; 5 uses
  %i.kd = sub nsw i64 %i.gx, %i.gv
  %xtraiter284 = and i64 %i.kd, 3                 ; 2 uses
  %lcmp.mod285.not = icmp eq i64 %xtraiter284, 0
  br i1 %lcmp.mod285.not, label %.prol.loopexit283, label %.prol.preheader282

.prol.preheader282:                               ; preds = %.lr.ph104.i.us.i, %.prol.preheader282
  %.1103.i.us.i.prol = phi ptr [ %i.ki, %.prol.preheader282 ], [ %i.gu, %.lr.ph104.i.us.i ] ; 3 uses
  %.175102.i.us.i.prol = phi ptr [ %i.kj, %.prol.preheader282 ], [ %i.gw, %.lr.ph104.i.us.i ] ; 2 uses
  %prol.iter286 = phi i64 [ %prol.iter286.next, %.prol.preheader282 ], [ 0, %.lr.ph104.i.us.i ]
  %i.ke = load i8, ptr %.175102.i.us.i.prol, align 1
  %i.kf = zext i8 %i.ke to i32
  %i.kg = shl nuw nsw i32 %i.kf, 8
  %.reass106.reass.i.us.reass.i.reass.prol = or disjoint i32 %i.kg, %invariant.op137.reass ; 2 uses
  store i32 %.reass106.reass.i.us.reass.i.reass.prol, ptr %.1103.i.us.i.prol, align 2
  %i.kh = getelementptr i8, ptr %.1103.i.us.i.prol, i64 4
  store i32 %.reass106.reass.i.us.reass.i.reass.prol, ptr %i.kh, align 2
  %i.ki = getelementptr i8, ptr %.1103.i.us.i.prol, i64 8 ; 2 uses
  %i.kj = getelementptr i8, ptr %.175102.i.us.i.prol, i64 1 ; 2 uses
  %prol.iter286.next = add i64 %prol.iter286, 1   ; 2 uses
  %prol.iter286.cmp.not = icmp eq i64 %prol.iter286.next, %xtraiter284
  br i1 %prol.iter286.cmp.not, label %.prol.loopexit283, label %.prol.preheader282, !llvm.loop !40

.prol.loopexit283:                                ; preds = %.prol.preheader282, %.lr.ph104.i.us.i
  %.1103.i.us.i.unr = phi ptr [ %i.gu, %.lr.ph104.i.us.i ], [ %i.ki, %.prol.preheader282 ]
  %.175102.i.us.i.unr = phi ptr [ %i.gw, %.lr.ph104.i.us.i ], [ %i.kj, %.prol.preheader282 ]
  %i.kk = sub nsw i64 %i.gv, %i.gx
  %i.kl = icmp ugt i64 %i.kk, -4
  br i1 %i.kl, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph104.i.us.i.new

.lr.ph104.i.us.i.new:                             ; preds = %.prol.loopexit283, %.lr.ph104.i.us.i.new
  %.1103.i.us.i = phi ptr [ %i.li, %.lr.ph104.i.us.i.new ], [ %.1103.i.us.i.unr, %.prol.loopexit283 ] ; 9 uses
  %.175102.i.us.i = phi ptr [ %i.lj, %.lr.ph104.i.us.i.new ], [ %.175102.i.us.i.unr, %.prol.loopexit283 ] ; 5 uses
  %i.km = load i8, ptr %.175102.i.us.i, align 1
  %i.kn = zext i8 %i.km to i32
  %i.ko = shl nuw nsw i32 %i.kn, 8
  %.reass106.reass.i.us.reass.i.reass = or disjoint i32 %i.ko, %invariant.op137.reass ; 2 uses
  store i32 %.reass106.reass.i.us.reass.i.reass, ptr %.1103.i.us.i, align 2
  %i.kp = getelementptr i8, ptr %.1103.i.us.i, i64 4
  store i32 %.reass106.reass.i.us.reass.i.reass, ptr %i.kp, align 2
  %i.kq = getelementptr i8, ptr %.1103.i.us.i, i64 8
  %i.kr = getelementptr i8, ptr %.175102.i.us.i, i64 1
  %i.ks = load i8, ptr %i.kr, align 1
  %i.kt = zext i8 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 8
  %.reass106.reass.i.us.reass.i.reass.1 = or disjoint i32 %i.ku, %invariant.op137.reass ; 2 uses
  store i32 %.reass106.reass.i.us.reass.i.reass.1, ptr %i.kq, align 2
  %i.kv = getelementptr i8, ptr %.1103.i.us.i, i64 12
  store i32 %.reass106.reass.i.us.reass.i.reass.1, ptr %i.kv, align 2
  %i.kw = getelementptr i8, ptr %.1103.i.us.i, i64 16
  %i.kx = getelementptr i8, ptr %.175102.i.us.i, i64 2
  %i.ky = load i8, ptr %i.kx, align 1
  %i.kz = zext i8 %i.ky to i32
  %i.la = shl nuw nsw i32 %i.kz, 8
  %.reass106.reass.i.us.reass.i.reass.2 = or disjoint i32 %i.la, %invariant.op137.reass ; 2 uses
  store i32 %.reass106.reass.i.us.reass.i.reass.2, ptr %i.kw, align 2
  %i.lb = getelementptr i8, ptr %.1103.i.us.i, i64 20
  store i32 %.reass106.reass.i.us.reass.i.reass.2, ptr %i.lb, align 2
  %i.lc = getelementptr i8, ptr %.1103.i.us.i, i64 24
  %i.ld = getelementptr i8, ptr %.175102.i.us.i, i64 3
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = zext i8 %i.le to i32
  %i.lg = shl nuw nsw i32 %i.lf, 8
  %.reass106.reass.i.us.reass.i.reass.3 = or disjoint i32 %i.lg, %invariant.op137.reass ; 2 uses
  store i32 %.reass106.reass.i.us.reass.i.reass.3, ptr %i.lc, align 2
  %i.lh = getelementptr i8, ptr %.1103.i.us.i, i64 28
  store i32 %.reass106.reass.i.us.reass.i.reass.3, ptr %i.lh, align 2
  %i.li = getelementptr i8, ptr %.1103.i.us.i, i64 32
  %i.lj = getelementptr i8, ptr %.175102.i.us.i, i64 4 ; 2 uses
  %.not80.i.us.i.3 = icmp eq ptr %i.lj, %i.gy
  br i1 %.not80.i.us.i.3, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph104.i.us.i.new, !llvm.loop !41

.preheader84.i.us.i:                              ; preds = %bb.m
  br i1 %.not82116.i.us.i, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph110.i.us.i

.lr.ph110.i.us.i:                                 ; preds = %.preheader84.i.us.i
  %i.lk = shl i32 %i.gq, 16
  %invariant.op138.reass = add i32 %i.lk, %invariant.op140 ; 5 uses
  %i.ll = sub nsw i64 %i.gx, %i.gv
  %xtraiter289 = and i64 %i.ll, 3                 ; 2 uses
  %lcmp.mod290.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod290.not, label %.prol.loopexit288, label %.prol.preheader287

.prol.preheader287:                               ; preds = %.lr.ph110.i.us.i, %.prol.preheader287
  %.0109.i.us.i.prol = phi ptr [ %i.lp, %.prol.preheader287 ], [ %i.gu, %.lr.ph110.i.us.i ] ; 2 uses
  %.074108.i.us.i.prol = phi ptr [ %i.lq, %.prol.preheader287 ], [ %i.gw, %.lr.ph110.i.us.i ] ; 2 uses
  %prol.iter291 = phi i64 [ %prol.iter291.next, %.prol.preheader287 ], [ 0, %.lr.ph110.i.us.i ]
  %i.lm = load i8, ptr %.074108.i.us.i.prol, align 1
  %i.ln = zext i8 %i.lm to i32
  %i.lo = shl nuw nsw i32 %i.ln, 8
  %.reass112.reass.i.us.reass.i.reass.prol = or disjoint i32 %i.lo, %invariant.op138.reass
  %i.lp = getelementptr i8, ptr %.0109.i.us.i.prol, i64 4 ; 2 uses
  store i32 %.reass112.reass.i.us.reass.i.reass.prol, ptr %.0109.i.us.i.prol, align 2
  %i.lq = getelementptr i8, ptr %.074108.i.us.i.prol, i64 1 ; 2 uses
  %prol.iter291.next = add i64 %prol.iter291, 1   ; 2 uses
  %prol.iter291.cmp.not = icmp eq i64 %prol.iter291.next, %xtraiter289
  br i1 %prol.iter291.cmp.not, label %.prol.loopexit288, label %.prol.preheader287, !llvm.loop !42

.prol.loopexit288:                                ; preds = %.prol.preheader287, %.lr.ph110.i.us.i
  %.0109.i.us.i.unr = phi ptr [ %i.gu, %.lr.ph110.i.us.i ], [ %i.lp, %.prol.preheader287 ]
  %.074108.i.us.i.unr = phi ptr [ %i.gw, %.lr.ph110.i.us.i ], [ %i.lq, %.prol.preheader287 ]
  %i.lr = sub nsw i64 %i.gv, %i.gx
  %i.ls = icmp ugt i64 %i.lr, -4
  br i1 %i.ls, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph110.i.us.i.new

.lr.ph110.i.us.i.new:                             ; preds = %.prol.loopexit288, %.lr.ph110.i.us.i.new
  %.0109.i.us.i = phi ptr [ %i.ml, %.lr.ph110.i.us.i.new ], [ %.0109.i.us.i.unr, %.prol.loopexit288 ] ; 5 uses
  %.074108.i.us.i = phi ptr [ %i.mm, %.lr.ph110.i.us.i.new ], [ %.074108.i.us.i.unr, %.prol.loopexit288 ] ; 5 uses
  %i.lt = load i8, ptr %.074108.i.us.i, align 1
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw nsw i32 %i.lu, 8
  %.reass112.reass.i.us.reass.i.reass = or disjoint i32 %i.lv, %invariant.op138.reass
  %i.lw = getelementptr i8, ptr %.0109.i.us.i, i64 4
  store i32 %.reass112.reass.i.us.reass.i.reass, ptr %.0109.i.us.i, align 2
  %i.lx = getelementptr i8, ptr %.074108.i.us.i, i64 1
  %i.ly = load i8, ptr %i.lx, align 1
  %i.lz = zext i8 %i.ly to i32
  %i.ma = shl nuw nsw i32 %i.lz, 8
  %.reass112.reass.i.us.reass.i.reass.1 = or disjoint i32 %i.ma, %invariant.op138.reass
  %i.mb = getelementptr i8, ptr %.0109.i.us.i, i64 8
  store i32 %.reass112.reass.i.us.reass.i.reass.1, ptr %i.lw, align 2
  %i.mc = getelementptr i8, ptr %.074108.i.us.i, i64 2
  %i.md = load i8, ptr %i.mc, align 1
  %i.me = zext i8 %i.md to i32
  %i.mf = shl nuw nsw i32 %i.me, 8
  %.reass112.reass.i.us.reass.i.reass.2 = or disjoint i32 %i.mf, %invariant.op138.reass
  %i.mg = getelementptr i8, ptr %.0109.i.us.i, i64 12
  store i32 %.reass112.reass.i.us.reass.i.reass.2, ptr %i.mb, align 2
  %i.mh = getelementptr i8, ptr %.074108.i.us.i, i64 3
  %i.mi = load i8, ptr %i.mh, align 1
  %i.mj = zext i8 %i.mi to i32
  %i.mk = shl nuw nsw i32 %i.mj, 8
  %.reass112.reass.i.us.reass.i.reass.3 = or disjoint i32 %i.mk, %invariant.op138.reass
  %i.ml = getelementptr i8, ptr %.0109.i.us.i, i64 16
  store i32 %.reass112.reass.i.us.reass.i.reass.3, ptr %i.mg, align 2
  %i.mm = getelementptr i8, ptr %.074108.i.us.i, i64 4 ; 2 uses
  %.not81.i.us.i.3 = icmp eq ptr %i.mm, %i.gy
  br i1 %.not81.i.us.i.3, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph110.i.us.i.new, !llvm.loop !43

.preheader.i59.us.i:                              ; preds = %bb.m
  br i1 %.not82116.i.us.i, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph119.i.us.i

.lr.ph119.i.us.i:                                 ; preds = %.preheader.i59.us.i
  %i.mn = shl i32 %i.gq, 16
  %i.mo = zext i32 %i.hb to i64
  %.idx.i.us.i = shl nuw nsw i64 %i.mo, 2         ; 2 uses
  %invariant.op139.reass = add i32 %i.mn, %invariant.op140
  %6 = add nsw i64 %.idx.i.us.i, -32              ; 2 uses
  %7 = lshr i64 %6, 5
  %8 = add nuw nsw i64 %7, 1
  %xtraiter292 = and i64 %8, 3                    ; 2 uses
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  %i.mp = icmp ult i64 %6, 96
  br label %.lr.ph115.preheader.i.us.i

.lr.ph115.preheader.i.us.i:                       ; preds = %._crit_edge.i.us.i, %.lr.ph119.i.us.i
  %.4118.i.us.i = phi ptr [ %i.gu, %.lr.ph119.i.us.i ], [ %i.mv, %._crit_edge.i.us.i ] ; 3 uses
  %.478117.i.us.i = phi ptr [ %i.gw, %.lr.ph119.i.us.i ], [ %i.nq, %._crit_edge.i.us.i ] ; 2 uses
  %i.mq = load i8, ptr %.478117.i.us.i, align 1
  %i.mr = zext i8 %i.mq to i32
  %i.ms = shl nuw nsw i32 %i.mr, 8
  %.reass.i.reass = or disjoint i32 %i.ms, %invariant.op139.reass
  %i.mt = zext i32 %.reass.i.reass to i64
  %i.mu = mul nuw i64 %i.mt, 4294967297           ; 20 uses
  %i.mv = getelementptr i8, ptr %.4118.i.us.i, i64 %.idx.i.us.i ; 2 uses
  br i1 %lcmp.mod293.not, label %.lr.ph115.i.us.i.prol.loopexit, label %.lr.ph115.i.us.i.prol

.lr.ph115.i.us.i.prol:                            ; preds = %.lr.ph115.preheader.i.us.i, %.lr.ph115.i.us.i.prol
  %.5114.i.us.i.prol = phi ptr [ %i.mz, %.lr.ph115.i.us.i.prol ], [ %.4118.i.us.i, %.lr.ph115.preheader.i.us.i ] ; 5 uses
  %prol.iter294 = phi i64 [ %prol.iter294.next, %.lr.ph115.i.us.i.prol ], [ 0, %.lr.ph115.preheader.i.us.i ]
  store i64 %i.mu, ptr %.5114.i.us.i.prol, align 2
  %i.mw = getelementptr i8, ptr %.5114.i.us.i.prol, i64 8
  store i64 %i.mu, ptr %i.mw, align 2
  %i.mx = getelementptr i8, ptr %.5114.i.us.i.prol, i64 16
  store i64 %i.mu, ptr %i.mx, align 2
  %i.my = getelementptr i8, ptr %.5114.i.us.i.prol, i64 24
  store i64 %i.mu, ptr %i.my, align 2
  %i.mz = getelementptr i8, ptr %.5114.i.us.i.prol, i64 32 ; 2 uses
  %prol.iter294.next = add i64 %prol.iter294, 1   ; 2 uses
  %prol.iter294.cmp.not = icmp eq i64 %prol.iter294.next, %xtraiter292
  br i1 %prol.iter294.cmp.not, label %.lr.ph115.i.us.i.prol.loopexit, label %.lr.ph115.i.us.i.prol, !llvm.loop !44

.lr.ph115.i.us.i.prol.loopexit:                   ; preds = %.lr.ph115.i.us.i.prol, %.lr.ph115.preheader.i.us.i
  %.5114.i.us.i.unr = phi ptr [ %.4118.i.us.i, %.lr.ph115.preheader.i.us.i ], [ %i.mz, %.lr.ph115.i.us.i.prol ]
  br i1 %i.mp, label %._crit_edge.i.us.i, label %.lr.ph115.i.us.i

.lr.ph115.i.us.i:                                 ; preds = %.lr.ph115.i.us.i.prol.loopexit, %.lr.ph115.i.us.i
  %.5114.i.us.i = phi ptr [ %i.np, %.lr.ph115.i.us.i ], [ %.5114.i.us.i.unr, %.lr.ph115.i.us.i.prol.loopexit ] ; 17 uses
  store i64 %i.mu, ptr %.5114.i.us.i, align 2
  %i.na = getelementptr i8, ptr %.5114.i.us.i, i64 8
  store i64 %i.mu, ptr %i.na, align 2
  %i.nb = getelementptr i8, ptr %.5114.i.us.i, i64 16
  store i64 %i.mu, ptr %i.nb, align 2
  %i.nc = getelementptr i8, ptr %.5114.i.us.i, i64 24
  store i64 %i.mu, ptr %i.nc, align 2
  %i.nd = getelementptr i8, ptr %.5114.i.us.i, i64 32
  store i64 %i.mu, ptr %i.nd, align 2
  %i.ne = getelementptr i8, ptr %.5114.i.us.i, i64 40
  store i64 %i.mu, ptr %i.ne, align 2
  %i.nf = getelementptr i8, ptr %.5114.i.us.i, i64 48
  store i64 %i.mu, ptr %i.nf, align 2
  %i.ng = getelementptr i8, ptr %.5114.i.us.i, i64 56
  store i64 %i.mu, ptr %i.ng, align 2
  %i.nh = getelementptr i8, ptr %.5114.i.us.i, i64 64
  store i64 %i.mu, ptr %i.nh, align 2
  %i.ni = getelementptr i8, ptr %.5114.i.us.i, i64 72
  store i64 %i.mu, ptr %i.ni, align 2
  %i.nj = getelementptr i8, ptr %.5114.i.us.i, i64 80
  store i64 %i.mu, ptr %i.nj, align 2
  %i.nk = getelementptr i8, ptr %.5114.i.us.i, i64 88
  store i64 %i.mu, ptr %i.nk, align 2
  %i.nl = getelementptr i8, ptr %.5114.i.us.i, i64 96
  store i64 %i.mu, ptr %i.nl, align 2
  %i.nm = getelementptr i8, ptr %.5114.i.us.i, i64 104
  store i64 %i.mu, ptr %i.nm, align 2
  %i.nn = getelementptr i8, ptr %.5114.i.us.i, i64 112
  store i64 %i.mu, ptr %i.nn, align 2
  %i.no = getelementptr i8, ptr %.5114.i.us.i, i64 120
  store i64 %i.mu, ptr %i.no, align 2
  %i.np = getelementptr i8, ptr %.5114.i.us.i, i64 128 ; 2 uses
  %.not83.i.us.i.3 = icmp eq ptr %i.np, %i.mv
  br i1 %.not83.i.us.i.3, label %._crit_edge.i.us.i, label %.lr.ph115.i.us.i, !llvm.loop !45

._crit_edge.i.us.i:                               ; preds = %.lr.ph115.i.us.i, %.lr.ph115.i.us.i.prol.loopexit
  %i.nq = getelementptr i8, ptr %.478117.i.us.i, i64 1 ; 2 uses
  %.not82.i.us.i = icmp eq ptr %i.nq, %i.gy
  br i1 %.not82.i.us.i, label %HUF_fillDTableX2ForWeight.exit.us.i, label %.lr.ph115.preheader.i.us.i, !llvm.loop !46

HUF_fillDTableX2ForWeight.exit.us.i:              ; preds = %.prol.loopexit, %.lr.ph.i57.us.i.new, %.prol.loopexit279, %.lr.ph98.i.us.i.new, %.prol.loopexit283, %.lr.ph104.i.us.i.new, %.prol.loopexit288, %.lr.ph110.i.us.i.new, %._crit_edge.i.us.i, %.preheader.i59.us.i, %.preheader84.i.us.i, %.preheader86.i.us.i, %.preheader88.i.us.i, %.preheader90.i.us.i
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next56.i.us.i, %i.aw
  br i1 %exitcond.not.i.us.i, label %HUF_fillDTableX2Level2.exit.loopexit.us.i, label %bb.m, !llvm.loop !47

HUF_fillDTableX2Level2.exit.loopexit.us.i:        ; preds = %HUF_fillDTableX2ForWeight.exit.us.i
  %i.nr = add i32 %.05265.us.i, %i.em
  %i.ns = add i32 %.066.us.i, 1                   ; 2 uses
  %.not56.us.i = icmp eq i32 %i.ns, %i.ef
  br i1 %.not56.us.i, label %.loopexit.i, label %.lr.ph.split.us.i, !llvm.loop !48

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.eq, label %.lr.ph.split.split.i, label %.loopexit.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  switch i32 %i.em, label %.preheader.i.i [
    i32 2, label %.loopexit.i.us69.i.preheader
    i32 4, label %.loopexit.i.us76.i.preheader
  ]

.loopexit.i.us76.i.preheader:                     ; preds = %.lr.ph.split.split.i
  %i.nt = sub i32 %i.ef, %i.ed
  %.neg = add i32 %i.ed, 1
  %xtraiter260 = and i32 %i.nt, 1
  %lcmp.mod261.not = icmp eq i32 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %.loopexit.i.us76.i.prol.loopexit, label %.loopexit.i.us76.i.prol

.loopexit.i.us76.i.prol:                          ; preds = %.loopexit.i.us76.i.preheader
  %i.nu = sext i32 %i.ek to i64
  %i.nv = getelementptr [4 x i8], ptr %i.d, i64 %i.nu ; 2 uses
  %i.nw = sext i32 %i.ed to i64
  %i.nx = getelementptr i8, ptr %i.dz, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = zext i8 %i.ny to i32
  %i.oa = or disjoint i32 %i.es, %i.nz
  %i.ob = zext i32 %i.oa to i64
  %i.oc = mul nuw i64 %i.ob, 4294967297           ; 2 uses
  store i64 %i.oc, ptr %i.nv, align 2
  %i.od = getelementptr i8, ptr %i.nv, i64 8
  store i64 %i.oc, ptr %i.od, align 2
  %i.oe = add i32 %i.ek, 4
  %i.of = add i32 %i.ed, 1
  br label %.loopexit.i.us76.i.prol.loopexit

.loopexit.i.us76.i.prol.loopexit:                 ; preds = %.loopexit.i.us76.i.prol, %.loopexit.i.us76.i.preheader
  %.066.us74.i.unr = phi i32 [ %i.ed, %.loopexit.i.us76.i.preheader ], [ %i.of, %.loopexit.i.us76.i.prol ]
  %.05265.us75.i.unr = phi i32 [ %i.ek, %.loopexit.i.us76.i.preheader ], [ %i.oe, %.loopexit.i.us76.i.prol ]
  %i.og = icmp eq i32 %i.ef, %.neg
  br i1 %i.og, label %.loopexit.i, label %.loopexit.i.us76.i

.loopexit.i.us69.i.preheader:                     ; preds = %.lr.ph.split.split.i
  %i.oh = sub i32 %i.ef, %i.ed
  %.neg310 = add i32 %i.ed, 1
  %xtraiter262 = and i32 %i.oh, 1
  %lcmp.mod263.not = icmp eq i32 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.loopexit.i.us69.i.prol.loopexit, label %.loopexit.i.us69.i.prol

.loopexit.i.us69.i.prol:                          ; preds = %.loopexit.i.us69.i.preheader
  %i.oi = sext i32 %i.ek to i64
  %i.oj = getelementptr [4 x i8], ptr %i.d, i64 %i.oi
  %i.ok = sext i32 %i.ed to i64
  %i.ol = getelementptr i8, ptr %i.dz, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1
  %i.on = zext i8 %i.om to i32
  %i.oo = or disjoint i32 %i.es, %i.on
  %i.op = zext i32 %i.oo to i64
  %i.oq = mul nuw i64 %i.op, 4294967297
  store i64 %i.oq, ptr %i.oj, align 2
  %i.or = add i32 %i.ek, 2
  %i.os = add i32 %i.ed, 1
  br label %.loopexit.i.us69.i.prol.loopexit

.loopexit.i.us69.i.prol.loopexit:                 ; preds = %.loopexit.i.us69.i.prol, %.loopexit.i.us69.i.preheader
  %.066.us67.i.unr = phi i32 [ %i.ed, %.loopexit.i.us69.i.preheader ], [ %i.os, %.loopexit.i.us69.i.prol ]
  %.05265.us68.i.unr = phi i32 [ %i.ek, %.loopexit.i.us69.i.preheader ], [ %i.or, %.loopexit.i.us69.i.prol ]
  %i.ot = icmp eq i32 %i.ef, %.neg310
  br i1 %i.ot, label %.loopexit.i, label %.loopexit.i.us69.i

.loopexit.i.us69.i:                               ; preds = %.loopexit.i.us69.i.prol.loopexit, %.loopexit.i.us69.i
  %.066.us67.i = phi i32 [ %i.pp, %.loopexit.i.us69.i ], [ %.066.us67.i.unr, %.loopexit.i.us69.i.prol.loopexit ] ; 3 uses
  %.05265.us68.i = phi i32 [ %i.po, %.loopexit.i.us69.i ], [ %.05265.us68.i.unr, %.loopexit.i.us69.i.prol.loopexit ] ; 3 uses
  %i.ou = sext i32 %.05265.us68.i to i64
  %i.ov = getelementptr [4 x i8], ptr %i.d, i64 %i.ou
  %i.ow = sext i32 %.066.us67.i to i64
  %i.ox = getelementptr i8, ptr %i.dz, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = zext i8 %i.oy to i32
  %i.pa = or disjoint i32 %i.es, %i.oz
  %i.pb = zext i32 %i.pa to i64
  %i.pc = mul nuw i64 %i.pb, 4294967297
  store i64 %i.pc, ptr %i.ov, align 2
  %i.pd = add i32 %.05265.us68.i, 2
  %i.pe = add i32 %.066.us67.i, 1
  %i.pf = sext i32 %i.pd to i64
  %i.pg = getelementptr [4 x i8], ptr %i.d, i64 %i.pf
  %i.ph = sext i32 %i.pe to i64
  %i.pi = getelementptr i8, ptr %i.dz, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1
  %i.pk = zext i8 %i.pj to i32
  %i.pl = or disjoint i32 %i.es, %i.pk
  %i.pm = zext i32 %i.pl to i64
  %i.pn = mul nuw i64 %i.pm, 4294967297
  store i64 %i.pn, ptr %i.pg, align 2
  %i.po = add i32 %.05265.us68.i, 4
  %i.pp = add i32 %.066.us67.i, 2                 ; 2 uses
  %.not56.us70.i.1 = icmp eq i32 %i.pp, %i.ef
  br i1 %.not56.us70.i.1, label %.loopexit.i, label %.loopexit.i.us69.i, !llvm.loop !48

.loopexit.i.us76.i:                               ; preds = %.loopexit.i.us76.i.prol.loopexit, %.loopexit.i.us76.i
  %.066.us74.i = phi i32 [ %i.qn, %.loopexit.i.us76.i ], [ %.066.us74.i.unr, %.loopexit.i.us76.i.prol.loopexit ] ; 3 uses
  %.05265.us75.i = phi i32 [ %i.qm, %.loopexit.i.us76.i ], [ %.05265.us75.i.unr, %.loopexit.i.us76.i.prol.loopexit ] ; 3 uses
  %i.pq = sext i32 %.05265.us75.i to i64
  %i.pr = getelementptr [4 x i8], ptr %i.d, i64 %i.pq ; 2 uses
  %i.ps = sext i32 %.066.us74.i to i64
  %i.pt = getelementptr i8, ptr %i.dz, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1
  %i.pv = zext i8 %i.pu to i32
  %i.pw = or disjoint i32 %i.es, %i.pv
  %i.px = zext i32 %i.pw to i64
  %i.py = mul nuw i64 %i.px, 4294967297           ; 2 uses
  store i64 %i.py, ptr %i.pr, align 2
  %i.pz = getelementptr i8, ptr %i.pr, i64 8
  store i64 %i.py, ptr %i.pz, align 2
  %i.qa = add i32 %.05265.us75.i, 4
  %i.qb = add i32 %.066.us74.i, 1
  %i.qc = sext i32 %i.qa to i64
  %i.qd = getelementptr [4 x i8], ptr %i.d, i64 %i.qc ; 2 uses
  %i.qe = sext i32 %i.qb to i64
  %i.qf = getelementptr i8, ptr %i.dz, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1
  %i.qh = zext i8 %i.qg to i32
  %i.qi = or disjoint i32 %i.es, %i.qh
  %i.qj = zext i32 %i.qi to i64
  %i.qk = mul nuw i64 %i.qj, 4294967297           ; 2 uses
  store i64 %i.qk, ptr %i.qd, align 2
  %i.ql = getelementptr i8, ptr %i.qd, i64 8
  store i64 %i.qk, ptr %i.ql, align 2
  %i.qm = add i32 %.05265.us75.i, 8
  %i.qn = add i32 %.066.us74.i, 2                 ; 2 uses
  %.not56.us77.i.1 = icmp eq i32 %i.qn, %i.ef
  br i1 %.not56.us77.i.1, label %.loopexit.i, label %.loopexit.i.us76.i, !llvm.loop !48

.preheader.i.i:                                   ; preds = %.lr.ph.split.split.i, %.loopexit.i.i
  %.066.i = phi i32 [ %i.sc, %.loopexit.i.i ], [ %i.ed, %.lr.ph.split.split.i ] ; 2 uses
  %.05265.i = phi i32 [ %i.sb, %.loopexit.i.i ], [ %i.ek, %.lr.ph.split.split.i ] ; 2 uses
  %i.qo = sext i32 %.05265.i to i64
  %i.qp = getelementptr [4 x i8], ptr %i.d, i64 %i.qo ; 5 uses
  %i.qq = sext i32 %.066.i to i64
  %i.qr = getelementptr i8, ptr %i.dz, i64 %i.qq
  %i.qs = load i8, ptr %i.qr, align 1
  %i.qt = zext i8 %i.qs to i32
  %i.qu = or disjoint i32 %i.es, %i.qt
  %i.qv = zext i32 %i.qu to i64
  %i.qw = mul nuw i64 %i.qv, 4294967297           ; 20 uses
  %i.qx = load i32, ptr %i.eu, align 4            ; 3 uses
  %i.qy = icmp sgt i32 %i.qx, 0
  br i1 %i.qy, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.qz = zext nneg i32 %i.qx to i64
  %i.ra = add nsw i64 %i.qz, -1
  %i.rb = lshr i64 %i.ra, 3
  %i.rc = add nuw nsw i64 %i.rb, 1                ; 2 uses
  %xtraiter264 = and i64 %i.rc, 3                 ; 3 uses
  %i.rd = icmp ult i32 %i.qx, 25
  br i1 %i.rd, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter268 = and i64 %i.rc, 4611686018427387900
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %niter269 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter269.next.3, %.lr.ph.i.i ]
  %i.re = getelementptr [4 x i8], ptr %i.qp, i64 %indvars.iv.i.i ; 4 uses
  store i64 %i.qw, ptr %i.re, align 2
  %i.rf = getelementptr i8, ptr %i.re, i64 8
  store i64 %i.qw, ptr %i.rf, align 2
  %i.rg = getelementptr i8, ptr %i.re, i64 16
  store i64 %i.qw, ptr %i.rg, align 2
  %i.rh = getelementptr i8, ptr %i.re, i64 24
  store i64 %i.qw, ptr %i.rh, align 2
  %i.ri = getelementptr [4 x i8], ptr %i.qp, i64 %indvars.iv.i.i ; 4 uses
  %i.rj = getelementptr i8, ptr %i.ri, i64 32
  store i64 %i.qw, ptr %i.rj, align 2
  %i.rk = getelementptr i8, ptr %i.ri, i64 40
  store i64 %i.qw, ptr %i.rk, align 2
  %i.rl = getelementptr i8, ptr %i.ri, i64 48
  store i64 %i.qw, ptr %i.rl, align 2
  %i.rm = getelementptr i8, ptr %i.ri, i64 56
  store i64 %i.qw, ptr %i.rm, align 2
  %i.rn = getelementptr [4 x i8], ptr %i.qp, i64 %indvars.iv.i.i ; 4 uses
  %i.ro = getelementptr i8, ptr %i.rn, i64 64
  store i64 %i.qw, ptr %i.ro, align 2
  %i.rp = getelementptr i8, ptr %i.rn, i64 72
  store i64 %i.qw, ptr %i.rp, align 2
  %i.rq = getelementptr i8, ptr %i.rn, i64 80
  store i64 %i.qw, ptr %i.rq, align 2
  %i.rr = getelementptr i8, ptr %i.rn, i64 88
  store i64 %i.qw, ptr %i.rr, align 2
  %i.rs = getelementptr [4 x i8], ptr %i.qp, i64 %indvars.iv.i.i ; 4 uses
  %i.rt = getelementptr i8, ptr %i.rs, i64 96
  store i64 %i.qw, ptr %i.rt, align 2
end_hunk_0
begin_hunk_1_@HUF_readDTableX2_wksp:bb.a
  %i.un = getelementptr i8, ptr %.297.us.i, i64 16
  %i.uo = getelementptr i8, ptr %.27696.us.i, i64 1
  %i.up = load i8, ptr %i.uo, align 1
  %i.uq = zext i8 %i.up to i32
  %i.ur = or disjoint i32 %i.tv, %i.uq
  %i.us = zext i32 %i.ur to i64
  %i.ut = mul nuw i64 %i.us, 4294967297           ; 2 uses
  store i64 %i.ut, ptr %i.un, align 2
  %i.uu = getelementptr i8, ptr %.297.us.i, i64 24
  store i64 %i.ut, ptr %i.uu, align 2
  %i.uv = getelementptr i8, ptr %.297.us.i, i64 32
  %i.uw = getelementptr i8, ptr %.27696.us.i, i64 2
  %i.ux = load i8, ptr %i.uw, align 1
  %i.uy = zext i8 %i.ux to i32
  %i.uz = or disjoint i32 %i.tv, %i.uy
  %i.va = zext i32 %i.uz to i64
  %i.vb = mul nuw i64 %i.va, 4294967297           ; 2 uses
  store i64 %i.vb, ptr %i.uv, align 2
  %i.vc = getelementptr i8, ptr %.297.us.i, i64 40
  store i64 %i.vb, ptr %i.vc, align 2
  %i.vd = getelementptr i8, ptr %.297.us.i, i64 48
  %i.ve = getelementptr i8, ptr %.27696.us.i, i64 3
  %i.vf = load i8, ptr %i.ve, align 1
  %i.vg = zext i8 %i.vf to i32
  %i.vh = or disjoint i32 %i.tv, %i.vg
  %i.vi = zext i32 %i.vh to i64
  %i.vj = mul nuw i64 %i.vi, 4294967297           ; 2 uses
  store i64 %i.vj, ptr %i.vd, align 2
  %i.vk = getelementptr i8, ptr %.297.us.i, i64 56
  store i64 %i.vj, ptr %i.vk, align 2
  %i.vl = getelementptr i8, ptr %.297.us.i, i64 64
  %i.vm = getelementptr i8, ptr %.27696.us.i, i64 4 ; 2 uses
  %.not79.us.i.3 = icmp eq ptr %i.vm, %i.si
  br i1 %.not79.us.i.3, label %.loopexit.i, label %.lr.ph98.split.us.i, !llvm.loop !39

.preheader86.i:                                   ; preds = %bb.n
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %.preheader86.i
  %i.vn = shl i32 %i.eh, 16
  %i.vo = add i32 %i.vn, 16777216                 ; 5 uses
  %i.vp = sub nsw i64 %i.sh, %i.sf
  %xtraiter301 = and i64 %i.vp, 3                 ; 2 uses
  %lcmp.mod302.not = icmp eq i64 %xtraiter301, 0
  br i1 %lcmp.mod302.not, label %.lr.ph104.split.us.i.prol.loopexit, label %.lr.ph104.split.us.i.prol

.lr.ph104.split.us.i.prol:                        ; preds = %.lr.ph104.i, %.lr.ph104.split.us.i.prol
  %.1103.us.i.prol = phi ptr [ %i.vu, %.lr.ph104.split.us.i.prol ], [ %i.se, %.lr.ph104.i ] ; 3 uses
  %.175102.us.i.prol = phi ptr [ %i.vv, %.lr.ph104.split.us.i.prol ], [ %i.sg, %.lr.ph104.i ] ; 2 uses
  %prol.iter303 = phi i64 [ %prol.iter303.next, %.lr.ph104.split.us.i.prol ], [ 0, %.lr.ph104.i ]
  %i.vq = load i8, ptr %.175102.us.i.prol, align 1
  %i.vr = zext i8 %i.vq to i32
  %i.vs = or disjoint i32 %i.vo, %i.vr            ; 2 uses
  store i32 %i.vs, ptr %.1103.us.i.prol, align 2
  %i.vt = getelementptr i8, ptr %.1103.us.i.prol, i64 4
  store i32 %i.vs, ptr %i.vt, align 2
  %i.vu = getelementptr i8, ptr %.1103.us.i.prol, i64 8 ; 2 uses
  %i.vv = getelementptr i8, ptr %.175102.us.i.prol, i64 1 ; 2 uses
  %prol.iter303.next = add i64 %prol.iter303, 1   ; 2 uses
  %prol.iter303.cmp.not = icmp eq i64 %prol.iter303.next, %xtraiter301
  br i1 %prol.iter303.cmp.not, label %.lr.ph104.split.us.i.prol.loopexit, label %.lr.ph104.split.us.i.prol, !llvm.loop !51

.lr.ph104.split.us.i.prol.loopexit:               ; preds = %.lr.ph104.split.us.i.prol, %.lr.ph104.i
  %.1103.us.i.unr = phi ptr [ %i.se, %.lr.ph104.i ], [ %i.vu, %.lr.ph104.split.us.i.prol ]
  %.175102.us.i.unr = phi ptr [ %i.sg, %.lr.ph104.i ], [ %i.vv, %.lr.ph104.split.us.i.prol ]
  %i.vw = sub nsw i64 %i.sf, %i.sh
  %i.vx = icmp ugt i64 %i.vw, -4
  br i1 %i.vx, label %.loopexit.i, label %.lr.ph104.split.us.i

.lr.ph104.split.us.i:                             ; preds = %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i
  %.1103.us.i = phi ptr [ %i.wu, %.lr.ph104.split.us.i ], [ %.1103.us.i.unr, %.lr.ph104.split.us.i.prol.loopexit ] ; 9 uses
  %.175102.us.i = phi ptr [ %i.wv, %.lr.ph104.split.us.i ], [ %.175102.us.i.unr, %.lr.ph104.split.us.i.prol.loopexit ] ; 5 uses
  %i.vy = load i8, ptr %.175102.us.i, align 1
  %i.vz = zext i8 %i.vy to i32
  %i.wa = or disjoint i32 %i.vo, %i.vz            ; 2 uses
  store i32 %i.wa, ptr %.1103.us.i, align 2
  %i.wb = getelementptr i8, ptr %.1103.us.i, i64 4
  store i32 %i.wa, ptr %i.wb, align 2
  %i.wc = getelementptr i8, ptr %.1103.us.i, i64 8
  %i.wd = getelementptr i8, ptr %.175102.us.i, i64 1
  %i.we = load i8, ptr %i.wd, align 1
  %i.wf = zext i8 %i.we to i32
  %i.wg = or disjoint i32 %i.vo, %i.wf            ; 2 uses
  store i32 %i.wg, ptr %i.wc, align 2
  %i.wh = getelementptr i8, ptr %.1103.us.i, i64 12
  store i32 %i.wg, ptr %i.wh, align 2
  %i.wi = getelementptr i8, ptr %.1103.us.i, i64 16
  %i.wj = getelementptr i8, ptr %.175102.us.i, i64 2
  %i.wk = load i8, ptr %i.wj, align 1
  %i.wl = zext i8 %i.wk to i32
  %i.wm = or disjoint i32 %i.vo, %i.wl            ; 2 uses
  store i32 %i.wm, ptr %i.wi, align 2
  %i.wn = getelementptr i8, ptr %.1103.us.i, i64 20
  store i32 %i.wm, ptr %i.wn, align 2
  %i.wo = getelementptr i8, ptr %.1103.us.i, i64 24
  %i.wp = getelementptr i8, ptr %.175102.us.i, i64 3
  %i.wq = load i8, ptr %i.wp, align 1
  %i.wr = zext i8 %i.wq to i32
  %i.ws = or disjoint i32 %i.vo, %i.wr            ; 2 uses
  store i32 %i.ws, ptr %i.wo, align 2
  %i.wt = getelementptr i8, ptr %.1103.us.i, i64 28
  store i32 %i.ws, ptr %i.wt, align 2
  %i.wu = getelementptr i8, ptr %.1103.us.i, i64 32
  %i.wv = getelementptr i8, ptr %.175102.us.i, i64 4 ; 2 uses
  %.not80.us.i.3 = icmp eq ptr %i.wv, %i.si
  br i1 %.not80.us.i.3, label %.loopexit.i, label %.lr.ph104.split.us.i, !llvm.loop !41

.preheader84.i:                                   ; preds = %bb.n
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.preheader84.i
  %i.ww = shl i32 %i.eh, 16
  %i.wx = add i32 %i.ww, 16777216                 ; 9 uses
  %i.wy = sub nsw i64 %i.sh, %i.sf
  %xtraiter304 = and i64 %i.wy, 7                 ; 2 uses
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol

.lr.ph110.split.us.i.prol:                        ; preds = %.lr.ph110.i, %.lr.ph110.split.us.i.prol
  %.0109.us.i.prol = phi ptr [ %i.xc, %.lr.ph110.split.us.i.prol ], [ %i.se, %.lr.ph110.i ] ; 2 uses
  %.074108.us.i.prol = phi ptr [ %i.xd, %.lr.ph110.split.us.i.prol ], [ %i.sg, %.lr.ph110.i ] ; 2 uses
  %prol.iter306 = phi i64 [ %prol.iter306.next, %.lr.ph110.split.us.i.prol ], [ 0, %.lr.ph110.i ]
  %i.wz = load i8, ptr %.074108.us.i.prol, align 1
  %i.xa = zext i8 %i.wz to i32
  %i.xb = or disjoint i32 %i.wx, %i.xa
  %i.xc = getelementptr i8, ptr %.0109.us.i.prol, i64 4 ; 2 uses
  store i32 %i.xb, ptr %.0109.us.i.prol, align 2
  %i.xd = getelementptr i8, ptr %.074108.us.i.prol, i64 1 ; 2 uses
  %prol.iter306.next = add i64 %prol.iter306, 1   ; 2 uses
  %prol.iter306.cmp.not = icmp eq i64 %prol.iter306.next, %xtraiter304
  br i1 %prol.iter306.cmp.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol, !llvm.loop !52

.lr.ph110.split.us.i.prol.loopexit:               ; preds = %.lr.ph110.split.us.i.prol, %.lr.ph110.i
  %.0109.us.i.unr = phi ptr [ %i.se, %.lr.ph110.i ], [ %i.xc, %.lr.ph110.split.us.i.prol ]
  %.074108.us.i.unr = phi ptr [ %i.sg, %.lr.ph110.i ], [ %i.xd, %.lr.ph110.split.us.i.prol ]
  %i.xe = sub nsw i64 %i.sf, %i.sh
  %i.xf = icmp ugt i64 %i.xe, -8
  br i1 %i.xf, label %.loopexit.i, label %.lr.ph110.split.us.i

.lr.ph110.split.us.i:                             ; preds = %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i
  %.0109.us.i = phi ptr [ %i.ys, %.lr.ph110.split.us.i ], [ %.0109.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %.074108.us.i = phi ptr [ %i.yt, %.lr.ph110.split.us.i ], [ %.074108.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %i.xg = load i8, ptr %.074108.us.i, align 1
  %i.xh = zext i8 %i.xg to i32
  %i.xi = or disjoint i32 %i.wx, %i.xh
  %i.xj = getelementptr i8, ptr %.0109.us.i, i64 4
  store i32 %i.xi, ptr %.0109.us.i, align 2
  %i.xk = getelementptr i8, ptr %.074108.us.i, i64 1
  %i.xl = load i8, ptr %i.xk, align 1
  %i.xm = zext i8 %i.xl to i32
  %i.xn = or disjoint i32 %i.wx, %i.xm
  %i.xo = getelementptr i8, ptr %.0109.us.i, i64 8
  store i32 %i.xn, ptr %i.xj, align 2
  %i.xp = getelementptr i8, ptr %.074108.us.i, i64 2
  %i.xq = load i8, ptr %i.xp, align 1
  %i.xr = zext i8 %i.xq to i32
  %i.xs = or disjoint i32 %i.wx, %i.xr
  %i.xt = getelementptr i8, ptr %.0109.us.i, i64 12
  store i32 %i.xs, ptr %i.xo, align 2
  %i.xu = getelementptr i8, ptr %.074108.us.i, i64 3
  %i.xv = load i8, ptr %i.xu, align 1
  %i.xw = zext i8 %i.xv to i32
  %i.xx = or disjoint i32 %i.wx, %i.xw
  %i.xy = getelementptr i8, ptr %.0109.us.i, i64 16
  store i32 %i.xx, ptr %i.xt, align 2
  %i.xz = getelementptr i8, ptr %.074108.us.i, i64 4
  %i.ya = load i8, ptr %i.xz, align 1
  %i.yb = zext i8 %i.ya to i32
  %i.yc = or disjoint i32 %i.wx, %i.yb
  %i.yd = getelementptr i8, ptr %.0109.us.i, i64 20
  store i32 %i.yc, ptr %i.xy, align 2
  %i.ye = getelementptr i8, ptr %.074108.us.i, i64 5
  %i.yf = load i8, ptr %i.ye, align 1
  %i.yg = zext i8 %i.yf to i32
  %i.yh = or disjoint i32 %i.wx, %i.yg
  %i.yi = getelementptr i8, ptr %.0109.us.i, i64 24
  store i32 %i.yh, ptr %i.yd, align 2
  %i.yj = getelementptr i8, ptr %.074108.us.i, i64 6
  %i.yk = load i8, ptr %i.yj, align 1
  %i.yl = zext i8 %i.yk to i32
  %i.ym = or disjoint i32 %i.wx, %i.yl
  %i.yn = getelementptr i8, ptr %.0109.us.i, i64 28
  store i32 %i.ym, ptr %i.yi, align 2
  %i.yo = getelementptr i8, ptr %.074108.us.i, i64 7
  %i.yp = load i8, ptr %i.yo, align 1
  %i.yq = zext i8 %i.yp to i32
  %i.yr = or disjoint i32 %i.wx, %i.yq
  %i.ys = getelementptr i8, ptr %.0109.us.i, i64 32
  store i32 %i.yr, ptr %i.yn, align 2
  %i.yt = getelementptr i8, ptr %.074108.us.i, i64 8 ; 2 uses
  %.not81.us.i.7 = icmp eq ptr %i.yt, %i.si
  br i1 %.not81.us.i.7, label %.loopexit.i, label %.lr.ph110.split.us.i, !llvm.loop !43

.preheader.i:                                     ; preds = %bb.n
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.preheader.i
  %i.yu = shl i32 %i.eh, 16
  %i.yv = add i32 %i.yu, 16777216
  %i.yw = zext i32 %i.sk to i64
  %.idx.i = shl nuw nsw i64 %i.yw, 2              ; 2 uses
  %9 = add nsw i64 %.idx.i, -32                   ; 2 uses
  %10 = lshr i64 %9, 5
  %11 = add nuw nsw i64 %10, 1
  %xtraiter307 = and i64 %11, 3                   ; 2 uses
  %lcmp.mod308.not = icmp eq i64 %xtraiter307, 0
  %i.yx = icmp ult i64 %9, 96
  br label %.lr.ph115.preheader.i

.lr.ph115.preheader.i:                            ; preds = %._crit_edge.i, %.lr.ph119.i
  %.4118.i = phi ptr [ %i.se, %.lr.ph119.i ], [ %i.zd, %._crit_edge.i ] ; 3 uses
  %.478117.i = phi ptr [ %i.sg, %.lr.ph119.i ], [ %i.zy, %._crit_edge.i ] ; 2 uses
  %i.yy = load i8, ptr %.478117.i, align 1
  %i.yz = zext i8 %i.yy to i32
  %i.za = or disjoint i32 %i.yv, %i.yz
  %i.zb = zext i32 %i.za to i64
  %i.zc = mul nuw i64 %i.zb, 4294967297           ; 20 uses
  %i.zd = getelementptr i8, ptr %.4118.i, i64 %.idx.i ; 2 uses
  br i1 %lcmp.mod308.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.preheader.i, %.lr.ph115.i.prol
  %.5114.i.prol = phi ptr [ %i.zh, %.lr.ph115.i.prol ], [ %.4118.i, %.lr.ph115.preheader.i ] ; 5 uses
  %prol.iter309 = phi i64 [ %prol.iter309.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.preheader.i ]
  store i64 %i.zc, ptr %.5114.i.prol, align 2
  %i.ze = getelementptr i8, ptr %.5114.i.prol, i64 8
  store i64 %i.zc, ptr %i.ze, align 2
  %i.zf = getelementptr i8, ptr %.5114.i.prol, i64 16
  store i64 %i.zc, ptr %i.zf, align 2
  %i.zg = getelementptr i8, ptr %.5114.i.prol, i64 24
  store i64 %i.zc, ptr %i.zg, align 2
  %i.zh = getelementptr i8, ptr %.5114.i.prol, i64 32 ; 2 uses
  %prol.iter309.next = add i64 %prol.iter309, 1   ; 2 uses
  %prol.iter309.cmp.not = icmp eq i64 %prol.iter309.next, %xtraiter307
  br i1 %prol.iter309.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !53

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.preheader.i
  %.5114.i.unr = phi ptr [ %.4118.i, %.lr.ph115.preheader.i ], [ %i.zh, %.lr.ph115.i.prol ]
  br i1 %i.yx, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i
  %.5114.i = phi ptr [ %i.zx, %.lr.ph115.i ], [ %.5114.i.unr, %.lr.ph115.i.prol.loopexit ] ; 17 uses
  store i64 %i.zc, ptr %.5114.i, align 2
  %i.zi = getelementptr i8, ptr %.5114.i, i64 8
  store i64 %i.zc, ptr %i.zi, align 2
  %i.zj = getelementptr i8, ptr %.5114.i, i64 16
  store i64 %i.zc, ptr %i.zj, align 2
  %i.zk = getelementptr i8, ptr %.5114.i, i64 24
  store i64 %i.zc, ptr %i.zk, align 2
  %i.zl = getelementptr i8, ptr %.5114.i, i64 32
  store i64 %i.zc, ptr %i.zl, align 2
  %i.zm = getelementptr i8, ptr %.5114.i, i64 40
  store i64 %i.zc, ptr %i.zm, align 2
  %i.zn = getelementptr i8, ptr %.5114.i, i64 48
  store i64 %i.zc, ptr %i.zn, align 2
  %i.zo = getelementptr i8, ptr %.5114.i, i64 56
  store i64 %i.zc, ptr %i.zo, align 2
  %i.zp = getelementptr i8, ptr %.5114.i, i64 64
  store i64 %i.zc, ptr %i.zp, align 2
  %i.zq = getelementptr i8, ptr %.5114.i, i64 72
  store i64 %i.zc, ptr %i.zq, align 2
  %i.zr = getelementptr i8, ptr %.5114.i, i64 80
  store i64 %i.zc, ptr %i.zr, align 2
  %i.zs = getelementptr i8, ptr %.5114.i, i64 88
  store i64 %i.zc, ptr %i.zs, align 2
  %i.zt = getelementptr i8, ptr %.5114.i, i64 96
  store i64 %i.zc, ptr %i.zt, align 2
  %i.zu = getelementptr i8, ptr %.5114.i, i64 104
  store i64 %i.zc, ptr %i.zu, align 2
  %i.zv = getelementptr i8, ptr %.5114.i, i64 112
  store i64 %i.zc, ptr %i.zv, align 2
  %i.zw = getelementptr i8, ptr %.5114.i, i64 120
  store i64 %i.zc, ptr %i.zw, align 2
  %i.zx = getelementptr i8, ptr %.5114.i, i64 128 ; 2 uses
  %.not83.i.3 = icmp eq ptr %i.zx, %i.zd
  br i1 %.not83.i.3, label %._crit_edge.i, label %.lr.ph115.i, !llvm.loop !45

._crit_edge.i:                                    ; preds = %.lr.ph115.i, %.lr.ph115.i.prol.loopexit
  %i.zy = getelementptr i8, ptr %.478117.i, i64 1 ; 2 uses
  %.not82.i = icmp eq ptr %i.zy, %i.si
  br i1 %.not82.i, label %.loopexit.i, label %.lr.ph115.preheader.i, !llvm.loop !46

.loopexit.i:                                      ; preds = %.loopexit.i.us76.i.prol.loopexit, %.loopexit.i.us76.i, %.loopexit.i.us69.i.prol.loopexit, %.loopexit.i.us69.i, %.loopexit.i.i, %HUF_fillDTableX2Level2.exit.loopexit.us.i, %.lr.ph.split.us.i100.prol.loopexit, %.lr.ph.split.us.i100, %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i, %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i, %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i, %._crit_edge.i, %.preheader.i, %.preheader84.i, %.preheader86.i, %.preheader88.i, %.preheader90.i, %.lr.ph.split.i, %bb.i
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aw
  br i1 %exitcond.not.i, label %HUF_fillDTableX2.exit, label %.lr.ph79.i, !llvm.loop !54

HUF_fillDTableX2.exit:                            ; preds = %.loopexit.i, %._crit_edge122, %._crit_edge135.split
  %i.zz = trunc nuw nsw i32 %spec.store.select to i8
  store i8 %.sroa.0.0.extract.trunc, ptr %0, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.zz, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.8.0.extract.trunc, ptr %.sroa.8.0..sroa_idx, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %HUF_fillDTableX2.exit
  %.089 = phi i64 [ %i.l, %HUF_fillDTableX2.exit ], [ -1, %bb.a ], [ -44, %bb.b ], [ %i.l, %bb.c ], [ -44, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i64 %.089
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @HUF_decompress1X2_DCtx_wksp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @HUF_readDTableX2_wksp(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) #17 ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp ult i64 %i.a, %4
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0, i32 noundef %7) #17, !srcloc !55
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc i64 @HUF_decompress1X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @HUF_decompress1X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #17, !srcloc !56
  br label %HUF_decompress1X2_usingDTable_internal_default.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %HUF_decompress1X2_usingDTable_internal_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %2, i64 8          ; 4 uses
  %i.e = icmp ugt i64 %3, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %2, i64 %3         ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.not51.i.i = icmp eq i8 %i.h, 0
  br i1 %.not51.i.i, label %HUF_decompress1X2_usingDTable_internal_default.exit, label %BIT_initDStream.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = load i8, ptr %2, align 1
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
  %i.k = getelementptr i8, ptr %2, i64 6
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 48
  %i.o = or disjoint i64 %i.n, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %i.o, %bb.g ], [ %i.j, %bb.f ]
  %i.q = getelementptr i8, ptr %2, i64 5
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 40
  %i.u = add nuw nsw i64 %i.t, %i.p
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.v = phi i64 [ %i.u, %bb.h ], [ %i.j, %bb.f ]
  %i.w = getelementptr i8, ptr %2, i64 4
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 32
  %i.aa = add nuw nsw i64 %i.z, %i.v
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ab = phi i64 [ %i.aa, %bb.i ], [ %i.j, %bb.f ]
  %i.ac = getelementptr i8, ptr %2, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 24
  %i.ag = add nuw nsw i64 %i.af, %i.ab
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.ah = phi i64 [ %i.ag, %bb.j ], [ %i.j, %bb.f ]
  %i.ai = getelementptr i8, ptr %2, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = add nuw nsw i64 %i.al, %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.an = phi i64 [ %i.am, %bb.k ], [ %i.j, %bb.f ]
  %i.ao = getelementptr i8, ptr %2, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 8
  %i.as = add nuw nsw i64 %i.ar, %i.an
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.sroa.0.9.i = phi i64 [ %i.j, %bb.f ], [ %i.as, %bb.l ]
  %i.at = getelementptr i8, ptr %2, i64 %3
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %.not.i58.i = icmp eq i8 %i.av, 0
  br i1 %.not.i58.i, label %HUF_decompress1X2_usingDTable_internal_default.exit, label %BIT_initDStream.exit.thread167.i

BIT_initDStream.exit.thread167.i:                 ; preds = %bb.m
  %i.aw = zext i8 %i.av to i32
  %i.ax = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.aw, i1 true)
  %i.ay = trunc nuw nsw i64 %3 to i32
  %i.az = shl nuw nsw i32 %i.ay, 3
  %reass.sub = sub nsw i32 %i.ax, %i.az
  %i.ba = add nsw i32 %reass.sub, 41
  br label %bb.n

BIT_initDStream.exit.i:                           ; preds = %bb.e
  %i.bb = getelementptr i8, ptr %i.f, i64 -8      ; 2 uses
  %.val.i.i = load i64, ptr %i.bb, align 1
  %i.bc = zext i8 %i.h to i32
  %i.bd = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bc, i1 true)
  %i.be = xor i32 %i.bd, 31
  %i.bf = sub nuw nsw i32 8, %i.be
  %i.bg = icmp ult i64 %3, -119
  br i1 %i.bg, label %bb.n, label %HUF_decompress1X2_usingDTable_internal_default.exit

bb.n:                                             ; preds = %BIT_initDStream.exit.i, %BIT_initDStream.exit.thread167.i
  %.sroa.9890.9177.i = phi ptr [ %2, %BIT_initDStream.exit.thread167.i ], [ %i.bb, %BIT_initDStream.exit.i ] ; 8 uses
  %.sroa.32.12176.i = phi i32 [ %i.ba, %BIT_initDStream.exit.thread167.i ], [ %i.bf, %BIT_initDStream.exit.i ] ; 7 uses
  %.sroa.0.10175.i = phi i64 [ %.sroa.0.9.i, %BIT_initDStream.exit.thread167.i ], [ %.val.i.i, %BIT_initDStream.exit.i ] ; 3 uses
  %.idx.i.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.bh = getelementptr i8, ptr %0, i64 %.idx.i.i ; 5 uses
  %i.bi = getelementptr i8, ptr %4, i64 4         ; 12 uses
  %.val.i = load i32, ptr %4, align 4             ; 2 uses
  %.sroa.4.0.extract.shift.i.i = lshr i32 %.val.i, 16 ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = icmp sgt i64 %1, 7
  br i1 %i.bk, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.bl = and i32 %.val.i, 16515072
  %i.bm = icmp samesign ult i32 %i.bl, 786432
  %i.bn = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bo = sub nsw i32 0, %.sroa.4.0.extract.shift.i.i
  %i.bp = and i32 %i.bo, 63
  %i.bq = zext nneg i32 %i.bp to i64              ; 9 uses
  br i1 %i.bm, label %.lr.ph221.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.br = getelementptr i8, ptr %i.bh, i64 -7
  br label %bb.u

.lr.ph221.i:                                      ; preds = %bb.o
  %i.bs = getelementptr i8, ptr %i.bh, i64 -9
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph221.i
  %.0.i220.i = phi ptr [ %0, %.lr.ph221.i ], [ %i.ez, %bb.t ] ; 5 uses
  %.sroa.9890.4219.i = phi ptr [ %.sroa.9890.9177.i, %.lr.ph221.i ], [ %.sroa.9890.5.i, %bb.t ] ; 5 uses
  %.sroa.32.5218.i = phi i32 [ %.sroa.32.12176.i, %.lr.ph221.i ], [ %i.ev, %bb.t ] ; 5 uses
  %.sroa.0.4217.i = phi i64 [ %.sroa.0.10175.i, %.lr.ph221.i ], [ %.sroa.0.5.i, %bb.t ]
  %.not.i6.i = icmp ult ptr %.sroa.9890.4219.i, %i.d
  br i1 %.not.i6.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_1
