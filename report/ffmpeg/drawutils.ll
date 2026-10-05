Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/drawutils?download=true
inline.NumInlined: 27
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 24
begin_hunk_0_@ff_draw_init2:bb.a
  ]

bb.h:                                             ; preds = %bb.g
  %i.l = icmp eq i32 %.096, 0
  %i.m = select i1 %i.l, i32 2, i32 1
  br label %.preheader

bb.i:                                             ; preds = %bb.f
  %i.n = icmp ugt i32 %3, 2
  br i1 %i.n, label %.thread126, label %.preheader

.preheader:                                       ; preds = %bb.h, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.i
  %.097140 = phi i32 [ %3, %bb.i ], [ 2, %bb.g ], [ 2, %bb.g ], [ 2, %bb.g ], [ 2, %bb.g ], [ %i.m, %bb.h ], [ 2, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !17    ; 2 uses
  %.not119128.not = icmp eq i8 %i.p, 0
  br i1 %.not119128.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %wide.trip.count = zext i8 %i.p to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.088130 = phi i32 [ 0, %.lr.ph ], [ %.zext, %bb.s ] ; 2 uses
  %.090129 = phi i32 [ 0, %.lr.ph ], [ %.090., %bb.s ]
  %i.r = getelementptr inbounds nuw [20 x i8], ptr %i.q, i64 %indvars.iv ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21   ; 3 uses
  %i.u = add i32 %i.t, -17
  %or.cond = icmp ult i32 %i.u, -9
  br i1 %or.cond, label %.thread126, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load i32, ptr %i.r, align 4, !tbaa !19   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 3
  br i1 %i.w, label %.thread126, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !24   ; 2 uses
  %.not112 = icmp eq i32 %i.y, 0
  br i1 %.not112, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i32 %i.y, %i.t
  %i.aa = and i32 %i.z, 7
  %.not113 = icmp eq i32 %i.aa, 0
  br i1 %.not113, label %bb.n, label %.thread126

bb.n:                                             ; preds = %bb.m, %bb.l
  %.lhs.trunc = add nuw nsw i32 %i.t, 7
  %.zext = lshr i32 %.lhs.trunc, 3                ; 4 uses
  %.not114 = icmp eq i32 %.088130, 0
  %.not115 = icmp eq i32 %.088130, %.zext
  %or.cond121 = select i1 %.not114, i1 true, i1 %.not115
  br i1 %or.cond121, label %bb.o, label %.thread126

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = mul nsw i32 %i.ad, %.zext
  %i.af = icmp sgt i32 %i.ae, 16
  br i1 %i.af, label %.thread126, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = srem i32 %i.ac, %.zext
  %.not116 = icmp eq i32 %i.ag, 0
  br i1 %.not116, label %bb.q, label %.thread126

bb.q:                                             ; preds = %bb.p
  %i.ah = sext i32 %i.v to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !25 ; 3 uses
  %.not117 = icmp eq i32 %i.aj, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !39 ; 2 uses
  br i1 %.not117, label %._crit_edge133, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not118 = icmp eq i32 %i.aj, %.pre
  br i1 %.not118, label %._crit_edge133, label %.thread126

._crit_edge133:                                   ; preds = %bb.q, %bb.r
  %i.ak = phi i32 [ %i.aj, %bb.r ], [ %.pre, %bb.q ] ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !25
  %i.al = icmp sgt i32 %i.ak, 7
  br i1 %i.al, label %.thread126, label %bb.s

bb.s:                                             ; preds = %._crit_edge133
  %i.am = add nsw i32 %i.v, 1
  %.090. = tail call i32 @llvm.umax.i32(i32 %.090129, i32 %i.am) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %.090.lcssa = phi i32 [ 0, %.preheader ], [ %.090., %bb.s ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i8 0, i64 120, i1 false)
  store ptr %i.b, ptr %0, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.ao, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.090.lcssa, ptr %i.ap, align 4, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.097140, ptr %i.aq, align 4, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.096, ptr %i.ar, align 4, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %4, ptr %i.as, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %5, ptr %i.at, align 8, !tbaa !32
  %.not120 = icmp eq ptr %.092, null
  br i1 %.not120, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @ff_fill_rgb2yuv_table(ptr noundef nonnull %.092, ptr noundef nonnull %i.au) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !42  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.ax, ptr %i.ay, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.ax, ptr %i.az, align 2, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.ax, ptr %i.ba, align 1, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !44  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 %i.bc, ptr %i.be, align 2, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %i.bc, ptr %i.bf, align 1, !tbaa !20
  br label %.thread126

.thread126:                                       ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %bb.r, %._crit_edge133, %bb.i, %bb.e, %bb.c, %bb.a, %bb.b, %bb.u
  %.3 = phi i32 [ -22, %bb.a ], [ -38, %bb.c ], [ -22, %bb.e ], [ 0, %bb.u ], [ -22, %bb.b ], [ -22, %bb.i ], [ -38, %._crit_edge133 ], [ -38, %bb.r ], [ -38, %bb.p ], [ -38, %bb.o ], [ -38, %bb.n ], [ -38, %bb.m ], [ -38, %bb.k ], [ -38, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @av_csp_luma_coeffs_from_avcsp(i32 noundef) local_unnamed_addr #2

declare void @ff_fill_rgb2yuv_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 -38, 1) i32 @ff_draw_init_from_link(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !58
  %i.i = tail call i32 @ff_draw_init2(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %2)
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define range(i32 -38, 1) i32 @ff_draw_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ff_draw_init2(ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define void @ff_draw_color(ptr noundef %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 12 uses
  %i.b = alloca [4 x double], align 16            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %.not = icmp eq ptr %2, %1
  br i1 %.not, label %._crit_edge78, label %bb.b

._crit_edge78:                                    ; preds = %bb.a
  %i.d = load <2 x i8>, ptr %1, align 1, !tbaa !20
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load <2 x i8>, ptr %.phi.trans.insert80, align 1, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 1                ; 3 uses
  store i32 %i.f, ptr %1, align 4
  %3 = bitcast i32 %i.f to <4 x i8>
  %4 = shufflevector <4 x i8> %3, <4 x i8> poison, <2 x i32> <i32 0, i32 1>
  %i.g = bitcast i32 %i.f to <4 x i8>
  %i.h = shufflevector <4 x i8> %i.g, <4 x i8> poison, <2 x i32> <i32 2, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge78, %bb.b
  %i.i = phi <2 x i8> [ %i.d, %._crit_edge78 ], [ %4, %bb.b ]
  %i.j = phi <2 x i8> [ %i.e, %._crit_edge78 ], [ %i.h, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.k, i8 0, i64 64, i1 false)
  %i.l = uitofp <2 x i8> %i.i to <2 x double>
  %i.m = fdiv nsz <2 x double> %i.l, splat (double 2.550000e+02) ; 2 uses
  store <2 x double> %i.m, ptr %i.b, align 16, !tbaa !61
  %i.n = uitofp <2 x i8> %i.j to <2 x double>
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = fdiv nsz <2 x double> %i.n, splat (double 2.550000e+02) ; 5 uses
  store <2 x double> %i.q, ptr %i.o, align 16, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !31
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.u = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul nsz <2 x double> %i.u, %i.m
  store <2 x double> %i.v, ptr %i.b, align 16, !tbaa !61
  %shift = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x double> %shift, %i.q
  %i.w = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.w, ptr %i.o, align 16, !tbaa !61
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.c
  %i.x = load ptr, ptr %0, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16   ; 2 uses
  %i.aa = and i64 %i.z, 32
  %.not55 = icmp eq i64 %i.aa, 0
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ab = extractelement <2 x double> %i.q, i64 1
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @ff_matrix_mul_3x3_vec(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ac) #10
  %.pre84 = load double, ptr %i.p, align 8, !tbaa !61
  %.pre85 = load ptr, ptr %0, align 8, !tbaa !28
  %.phi.trans.insert86 = getelementptr inbounds nuw i8, ptr %.pre85, i64 16
  %.pre87 = load i64, ptr %.phi.trans.insert86, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi i64 [ %.pre87, %bb.e ], [ %i.z, %bb.d ]
  %i.ae = phi double [ %.pre84, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.ae, ptr %i.af, align 8, !tbaa !61
  %.fr65 = freeze i64 %i.ad
  %i.ag = and i64 %.fr65, 32
  %.not56 = icmp eq i64 %i.ag, 0                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f
  %i.ak = load double, ptr %i.a, align 16, !tbaa !61
  %i.al = fmul nsz double %i.ak, f0x3FEB7B7B7B7B7B7B
  %i.am = fadd nsz double %i.al, f0x3FB0101010101010
  store double %i.am, ptr %i.a, align 16, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !61 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %.not56, label %.split.us.split.preheader, label %.split.us.split.us.preheader

.split.us.split.us.preheader:                     ; preds = %.split.us
  %i.aq = load double, ptr %i.ap, align 16, !tbaa !61
  %i.ar = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = fmul nsz <2 x double> %i.as, splat (double f0x3FEB7B7B7B7B7B7B)
  %i.au = fadd nsz <2 x double> %i.at, splat (double f0x3FB0101010101010)
  store <2 x double> %i.au, ptr %i.an, align 8, !tbaa !61
  br label %.split61.us

.split.us.split.preheader:                        ; preds = %.split.us
  %i.av = load double, ptr %i.ap, align 16, !tbaa !61
  %i.aw = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = fmul nsz <2 x double> %i.ax, splat (double f0x3FEC1C1C1C1C1C1C)
  %i.az = fadd nsz <2 x double> %i.ay, splat (double f0x3FE0101010101010)
  store <2 x double> %i.az, ptr %i.an, align 8, !tbaa !61
  br label %.split61.us

.split:                                           ; preds = %bb.f
  br i1 %.not56, label %.split61.us.loopexit70, label %.split61.us

.split61.us:                                      ; preds = %.split, %.split61.us.loopexit70, %.split.us.split.us.preheader, %.split.us.split.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !17  ; 2 uses
  %i.bc = icmp ult i8 %i.bb, 3
  br i1 %i.bc, label %bb.g, label %.lr.ph

.split61.us.loopexit70:                           ; preds = %.split
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.be = load <2 x double>, ptr %i.bd, align 8, !tbaa !61
  %i.bf = fadd nsz <2 x double> %i.be, splat (double 5.000000e-01)
  store <2 x double> %i.bf, ptr %i.bd, align 8, !tbaa !61
  br label %.split61.us

bb.g:                                             ; preds = %.split61.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.ae, ptr %i.bg, align 8, !tbaa !61
  %.not68 = icmp eq i8 %i.bb, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split61.us, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.h

._crit_edge:                                      ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !61
  %i.bk = load ptr, ptr %0, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = getelementptr inbounds nuw [20 x i8], ptr %i.bl, i64 %indvars.iv ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !24
  %i.br = add nsw i32 %i.bq, %i.bo
  %notmask = shl nsw i32 -1, %i.br
  %i.bs = xor i32 %notmask, -1
  %i.bt = uitofp nsz nneg i32 %i.bs to double
  %i.bu = call nsz double @llvm.fmuladd.f64(double %i.bj, double %i.bt, double 5.000000e-01)
  %i.bv = fptoui double %i.bu to i32              ; 2 uses
  %i.bw = getelementptr inbounds nuw [20 x i8], ptr %i.bh, i64 %indvars.iv ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !21
  %i.bz = icmp sgt i32 %i.by, 8
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !19
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !22 ; 2 uses
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cf = trunc i32 %i.bv to i16
  %i.cg = sdiv i32 %i.ce, 2
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.ch
  store i16 %i.cf, ptr %i.ci, align 2, !tbaa !20
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cj = trunc i32 %i.bv to i8
  %i.ck = sext i32 %i.ce to i64
  %i.cl = getelementptr inbounds i8, ptr %i.cc, i64 %i.ck
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i8, ptr %i.ba, align 8, !tbaa !17
  %i.cn = zext i8 %i.cm to i64
  %i.co = icmp samesign ult i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %bb.h, label %._crit_edge, !llvm.loop !59
}

declare void @ff_matrix_mul_3x3_vec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_copy_rectangle2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nsw i32 0, %9
  %i.g = sub nsw i32 0, %10
  br label %bb.b

._crit_edge57:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph56, %._crit_edge
  %i.h = phi i32 [ %i.b, %.lr.ph56 ], [ %i.aw, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next, %._crit_edge ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20
end_hunk_0
