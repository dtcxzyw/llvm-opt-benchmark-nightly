inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@agerr

declare void @gvrender_ellipse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @stripedBox(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @gvrender_usershape(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @emit_label(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare void @gvrender_end_anchor(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @checkStyle(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @N_style, align 8, !tbaa !61
  %i.b = tail call ptr @late_nnstring(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull @.str.99) #26 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !87
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.loopexit75, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @parse_style(ptr noundef nonnull %i.b) #26 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115  ; 2 uses
  %.not5976 = icmp eq ptr %i.e, null
  br i1 %.not5976, label %.loopexit75, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %i.g = phi ptr [ %i.e, %.lr.ph ], [ %i.bi, %.loopexit ] ; 7 uses
  %.sroa.037.078 = phi i32 [ 0, %.lr.ph ], [ %.sroa.037.1, %.loopexit ] ; 8 uses
  %.05577 = phi ptr [ %i.d, %.lr.ph ], [ %.156, %.loopexit ] ; 13 uses
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(7) @.str.100) #31
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = or i32 %.sroa.037.078, 1
  %i.k = getelementptr inbounds nuw i8, ptr %.05577, i64 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(8) @.str.101) #31
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e, %.preheader
  %.054 = phi ptr [ %i.n, %.preheader ], [ %.05577, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.054, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !115  ; 2 uses
  store ptr %i.o, ptr %.054, align 8, !tbaa !115
  %.not65 = icmp eq ptr %i.o, null
  br i1 %.not65, label %.loopexit.loopexit, label %.preheader, !llvm.loop !243

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(10) @.str.102) #31
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.preheader86, label %bb.g

.preheader86:                                     ; preds = %bb.f, %.preheader86
  %.1 = phi ptr [ %i.r, %.preheader86 ], [ %.05577, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !115  ; 2 uses
  store ptr %i.s, ptr %.1, align 8, !tbaa !115
  %.not64 = icmp eq ptr %i.s, null
  br i1 %.not64, label %.loopexit.loopexit79, label %.preheader86, !llvm.loop !244

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(6) @.str.103) #31
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = or i32 %.sroa.037.078, 32
  %i.w = getelementptr inbounds nuw i8, ptr %.05577, i64 8
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(7) @.str.104) #31
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.preheader87, label %bb.j

.preheader87:                                     ; preds = %bb.i, %.preheader87
  %.2 = phi ptr [ %i.z, %.preheader87 ], [ %.05577, %bb.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !115 ; 2 uses
  store ptr %i.aa, ptr %.2, align 8, !tbaa !115
  %.not63 = icmp eq ptr %i.aa, null
  br i1 %.not63, label %.loopexit.loopexit80, label %.preheader87, !llvm.loop !245

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(8) @.str.105) #31
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %isBox.exit.thread

bb.k:                                             ; preds = %bb.j
  %.val = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.ad = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.ae = getelementptr i8, ptr %.val.val, i64 16
  %.val.val.val = load ptr, ptr %i.ae, align 8, !tbaa !51 ; 5 uses
  %.not.i = icmp eq ptr %.val.val.val, null
  br i1 %.not.i, label %isBox.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !57
  %i.ah = icmp eq i64 %i.ag, 4
  br i1 %i.ah, label %bb.m, label %isBox.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 24
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !58
  %i.ak = tail call double @fmod(double noundef %i.aj, double noundef 9.000000e+01) #26
  %i.al = tail call double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp olt double %i.al, 5.000000e-01
  br i1 %i.am, label %bb.n, label %isBox.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 32
  %i.ao = load double, ptr %i.an, align 8, !tbaa !60
  %.not.i.i.i = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ao, /* (pzero) */ i32 64)
  br i1 %.not.i.i.i, label %isBox.exit, label %isBox.exit.thread

isBox.exit:                                       ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !59
  %.not.i.i7.i = tail call noundef i1 @llvm.is.fpclass.f64(double %i.aq, /* (pzero) */ i32 64)
  br i1 %.not.i.i7.i, label %.preheader89, label %isBox.exit.thread

.preheader89:                                     ; preds = %isBox.exit, %.preheader89
  %.3 = phi ptr [ %i.ar, %.preheader89 ], [ %.05577, %isBox.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !115 ; 2 uses
  store ptr %i.as, ptr %.3, align 8, !tbaa !115
  %.not62 = icmp eq ptr %i.as, null
  br i1 %.not62, label %.loopexit.loopexit82, label %.preheader89, !llvm.loop !246

isBox.exit.thread:                                ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %isBox.exit, %bb.j
  %i.at = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(7) @.str.106) #31
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.o, label %isEllipse.exit.thread

bb.o:                                             ; preds = %isBox.exit.thread
  %.val66 = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.av = getelementptr i8, ptr %.val66, i64 16
  %.val66.val = load ptr, ptr %i.av, align 8, !tbaa !30
  %i.aw = getelementptr i8, ptr %.val66.val, i64 16
  %.val66.val.val = load ptr, ptr %i.aw, align 8, !tbaa !51 ; 2 uses
  %.not.i67 = icmp eq ptr %.val66.val.val, null
  br i1 %.not.i67, label %isEllipse.exit.thread, label %isEllipse.exit

isEllipse.exit:                                   ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %.val66.val.val, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !57
  %i.az = icmp ult i64 %i.ay, 3
  br i1 %i.az, label %.preheader88, label %isEllipse.exit.thread

.preheader88:                                     ; preds = %isEllipse.exit, %.preheader88
  %.4 = phi ptr [ %i.ba, %.preheader88 ], [ %.05577, %isEllipse.exit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.4, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !115 ; 2 uses
  store ptr %i.bb, ptr %.4, align 8, !tbaa !115
  %.not61 = icmp eq ptr %i.bb, null
  br i1 %.not61, label %.loopexit.loopexit81, label %.preheader88, !llvm.loop !247

isEllipse.exit.thread:                            ; preds = %bb.o, %isEllipse.exit, %isBox.exit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %.05577, i64 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  %i.bd = or i32 %.sroa.037.078, 4
  br label %.loopexit

.loopexit.loopexit79:                             ; preds = %.preheader86
  %i.be = or i32 %.sroa.037.078, 8
  br label %.loopexit

.loopexit.loopexit80:                             ; preds = %.preheader87
  %i.bf = or i32 %.sroa.037.078, 3
  br label %.loopexit

.loopexit.loopexit81:                             ; preds = %.preheader88
  %i.bg = or i32 %.sroa.037.078, 512
  br label %.loopexit

.loopexit.loopexit82:                             ; preds = %.preheader89
  %i.bh = or i32 %.sroa.037.078, 64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit82, %.loopexit.loopexit81, %.loopexit.loopexit80, %.loopexit.loopexit79, %.loopexit.loopexit, %bb.h, %isEllipse.exit.thread, %bb.d
  %.156 = phi ptr [ %i.k, %bb.d ], [ %i.bc, %isEllipse.exit.thread ], [ %.05577, %.loopexit.loopexit80 ], [ %i.w, %bb.h ], [ %.05577, %.loopexit.loopexit81 ], [ %.05577, %.loopexit.loopexit79 ], [ %.05577, %.loopexit.loopexit ], [ %.05577, %.loopexit.loopexit82 ] ; 2 uses
  %.sroa.037.1 = phi i32 [ %i.j, %bb.d ], [ %.sroa.037.078, %isEllipse.exit.thread ], [ %i.bf, %.loopexit.loopexit80 ], [ %i.v, %bb.h ], [ %i.bg, %.loopexit.loopexit81 ], [ %i.be, %.loopexit.loopexit79 ], [ %i.bd, %.loopexit.loopexit ], [ %i.bh, %.loopexit.loopexit82 ] ; 2 uses
  %i.bi = load ptr, ptr %.156, align 8, !tbaa !115 ; 2 uses
  %.not59 = icmp eq ptr %i.bi, null
  br i1 %.not59, label %.loopexit75, label %bb.c, !llvm.loop !248

.loopexit75:                                      ; preds = %.loopexit, %bb.b, %bb.a
  %.sroa.037.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.sroa.037.1, %.loopexit ] ; 6 uses
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ], [ %i.d, %.loopexit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !51 ; 2 uses
  %.not60 = icmp eq ptr %i.bo, null
  br i1 %.not60, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit75
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load i32, ptr %i.bp, align 8            ; 4 uses
  %i.br = trunc i32 %.sroa.037.2 to i1
  %i.bs = and i32 %.sroa.037.2, 2
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = and i32 %i.bq, 2
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = select i1 %i.bt, i1 true, i1 %i.bv
  %i.bx = insertelement <2 x i32> poison, i32 %.sroa.037.2, i64 0 ; 2 uses
  %i.by = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bz = and <2 x i32> %i.by, <i32 4, i32 8>
  %i.ca = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cb = and <4 x i32> %i.ca, <i32 16, i32 32, i32 64, i32 128>
  %2 = insertelement <8 x i32> <i32 poison, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>, i32 %i.bq, i64 0 ; 3 uses
  %3 = and <8 x i32> %2, <i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.cc = icmp ne <2 x i32> %i.bz, zeroinitializer
  %i.cd = shufflevector <8 x i32> %2, <8 x i32> poison, <2 x i32> zeroinitializer
  %i.ce = and <2 x i32> %i.cd, <i32 4, i32 8>
  %i.cf = icmp ne <2 x i32> %i.ce, zeroinitializer
  %i.cg = select <2 x i1> %i.cc, <2 x i1> splat (i1 true), <2 x i1> %i.cf
  %i.ch = icmp ne <4 x i32> %i.cb, zeroinitializer
  %i.ci = shufflevector <8 x i32> %2, <8 x i32> poison, <4 x i32> zeroinitializer
  %i.cj = and <4 x i32> %i.ci, <i32 16, i32 32, i32 64, i32 128>
  %i.ck = icmp ne <4 x i32> %i.cj, zeroinitializer
  %i.cl = select <4 x i1> %i.ch, <4 x i1> splat (i1 true), <4 x i1> %i.ck
  %4 = insertelement <8 x i1> poison, i1 %i.br, i64 0
  %5 = insertelement <8 x i1> %4, i1 %i.bw, i64 1
  %6 = shufflevector <4 x i1> %i.cl, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <8 x i1> %5, <8 x i1> %6, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %8 = shufflevector <2 x i1> %i.cg, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <8 x i1> %7, <8 x i1> %8, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %10 = select <8 x i1> %9, <8 x i32> <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>, <8 x i32> %3 ; 2 uses
  %11 = insertelement <4 x i32> poison, i32 %.sroa.037.2, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cm = and <4 x i32> %12, <i32 256, i32 512, i32 1024, i32 2048>
  %i.cn = icmp ne <4 x i32> %i.cm, zeroinitializer
  %13 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  %15 = and <4 x i32> %14, <i32 256, i32 512, i32 1024, i32 2048>
  %16 = icmp ne <4 x i32> %15, zeroinitializer
  %17 = select <4 x i1> %i.cn, <4 x i1> splat (i1 true), <4 x i1> %16
  %18 = select <4 x i1> %17, <4 x i32> <i32 256, i32 512, i32 1024, i32 2048>, <4 x i32> zeroinitializer
  %19 = or i32 %i.bq, %.sroa.037.2
  %20 = and i32 %19, 520192
  %21 = shufflevector <8 x i32> %10, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or disjoint <4 x i32> %21, %18
  %22 = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <8 x i32> %22, <8 x i32> %10, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.co = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %23)
  %op.rdx = or i32 %i.co, %20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit75
  %.sroa.037.3 = phi i32 [ %op.rdx, %bb.p ], [ %.sroa.037.2, %.loopexit75 ]
  store i32 %.sroa.037.3, ptr %1, align 4, !tbaa !87
  ret ptr %.0
}

declare void @gvrender_set_style(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @agxget(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @gvrender_set_penwidth(ptr noundef, double noundef) local_unnamed_addr #7

declare ptr @late_nnstring(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @parse_style(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal zeroext i1 @point_inside(ptr nofree noundef captures(address_is_null) %0, double %1, double %2) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 5 uses
  %i.b = tail call ptr @agraphof(ptr noundef %i.a) #26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !113
  %i.g = and i32 %i.f, 3
  %i.h = mul nuw nsw i32 %i.g, 90
  %i.i = tail call { double, double } @ccwrotatepf(double %1, double %2, i32 noundef %i.h) #26 ; 2 uses
  %i.j = extractvalue { double, double } %i.i, 0  ; 2 uses
  %i.k = extractvalue { double, double } %i.i, 1  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87
  %.not30 = icmp eq ptr %i.a, %i.m
  br i1 %.not30, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !87
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %i.r = load ptr, ptr @N_penwidth, align 8, !tbaa !61
  %i.s = tail call double @late_double(ptr noundef %i.a, ptr noundef %i.r, double noundef 1.000000e+00, double noundef 0.000000e+00) #26
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !56   ; 4 uses
  %i.v = icmp ne i64 %i.u, 0
  %i.w = fcmp ogt double %i.s, 0.000000e+00
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = shl i64 %i.u, 1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = shl i64 %i.u, 1
  %i.aa = add i64 %i.z, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.025 = phi i64 [ %i.x, %bb.d ], [ %i.aa, %bb.f ], [ 0, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !89
  %i.ad = getelementptr [16 x i8], ptr %i.ac, i64 %.025
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !19 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.af, ptr %i.ag, align 8, !tbaa !87
  store ptr %i.a, ptr %i.l, align 8, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.ah = phi double [ %.pre, %._crit_edge ], [ %i.af, %bb.g ] ; 3 uses
  %i.ai = tail call double @llvm.fabs.f64(double %i.j)
  %i.aj = fcmp ogt double %i.ai, %i.ah
  %i.ak = tail call double @llvm.fabs.f64(double %i.k)
  %i.al = fcmp ogt double %i.ak, %i.ah
  %or.cond32 = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %or.cond32, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = tail call double @hypot(double noundef %i.j, double noundef %i.k) #26
  %i.an = fcmp ole double %i.am, %i.ah
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.a, %bb.i
  %.0 = phi i1 [ false, %bb.a ], [ %i.an, %bb.i ], [ false, %bb.h ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal void @point_gencode(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.graphviz_polygon_style_t, align 4 ; 5 uses
  %3 = alloca [2 x %struct.pointf_s], align 16    ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.f = load i16, ptr %i.e, align 8
  %i.g = trunc i16 %i.f to i1
  br i1 %i.g, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load i32, ptr %i.h, align 8, !tbaa !204
  %i.j = and i32 %i.i, 4
  %.not79 = icmp eq i32 %i.j, 0
  br i1 %.not79, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !205
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !206
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207
  tail call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.p) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.b
  %i.q = phi i1 [ true, %bb.c ], [ true, %.thread ], [ false, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !112  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !89   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !57   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !56  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 0, ptr %2, align 4
  %i.ab = call fastcc ptr @checkStyle(ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.ac = load i32, ptr %2, align 4
  %i.ad = and i32 %i.ac, 32
  %.not80 = icmp eq i32 %i.ad, 0
  %.point_style = select i1 %.not80, ptr getelementptr inbounds nuw (i8, ptr @point_style, i64 8), ptr @point_style
  tail call void @gvrender_set_style(ptr noundef nonnull %0, ptr noundef nonnull %.point_style) #26
  %i.ae = load ptr, ptr @N_penwidth, align 8, !tbaa !61 ; 2 uses
  %.not81 = icmp eq ptr %i.ae, null
  br i1 %.not81, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = tail call double @late_double(ptr noundef nonnull %1, ptr noundef nonnull %i.ae, double noundef 1.000000e+00, double noundef 0.000000e+00) #26
  tail call void @gvrender_set_penwidth(ptr noundef nonnull %0, double noundef %i.af) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 161
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !208
  %i.aj = zext i8 %i.ai to i32                    ; 4 uses
  %i.ak = and i32 %i.aj, 1
  %.not82 = icmp eq i32 %i.ak, 0
  br i1 %.not82, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.87) #26
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.88) #26
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.al = and i32 %i.aj, 2
  %.not83 = icmp eq i32 %i.al, 0
  br i1 %.not83, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.89) #26
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #26
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.am = and i32 %i.aj, 8
  %.not84 = icmp eq i32 %i.am, 0
  br i1 %.not84, label %bb.l, label %bb.k

end_hunk_0
begin_hunk_1_@star_vertices:bb.a
  %i.b = fcmp ogt double %i.a, f0x3FEE6F0E13445500
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fdiv double %.sroa.8.0.copyload, f0x3FEE6F0E13445500
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp olt double %i.a, f0x3FEE6F0E13445500
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = fmul double %.sroa.0.0.copyload, f0x3FEE6F0E13445500
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.0 = phi double [ %i.c, %bb.b ], [ %.sroa.0.0.copyload, %bb.d ], [ %.sroa.0.0.copyload, %bb.c ] ; 2 uses
  %.sroa.8.0 = phi double [ %.sroa.8.0.copyload, %bb.b ], [ %i.e, %bb.d ], [ %.sroa.8.0.copyload, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = fdiv double %.sroa.0.0, f0x3FFE6F0E134454FF ; 8 uses
  %i.q = fmul double %i.p, f0x3FEE6F0E134454FF    ; 2 uses
  %i.r = fmul double %i.q, f0x3FD3C6EF372FE950
  %i.s = fdiv double %i.r, f0x3FE89F188BDCD7AF    ; 8 uses
  %i.t = fmul double %i.p, f0x3FC8722191A02D60
  %i.u = fmul double %i.t, -5.000000e-01          ; 4 uses
  store double %i.q, ptr %0, align 8, !tbaa !19
  %i.v = insertelement <2 x double> poison, double %i.p, i64 0 ; 2 uses
  %i.w = insertelement <2 x double> %i.v, double %i.s, i64 1 ; 2 uses
  %i.x = insertelement <2 x double> poison, double %i.u, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> <double f0x3FD3C6EF372FE94F, double f0x3FE9E3779B97F4A8>, <2 x double> %i.y) ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  store double %i.aa, ptr %i.f, align 8, !tbaa !17
  %i.ab = fmul double %i.s, f0x3FE2CF2304755A5E
  store double %i.ab, ptr %i.g, align 8, !tbaa !19
  %i.ac = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  store double %i.ac, ptr %i.h, align 8, !tbaa !17
  %i.ad = fmul double %i.p, f0x3C91A62633145C07
  store double %i.ad, ptr %i.i, align 8, !tbaa !19
  %i.ae = fadd double %i.p, %i.u
  store double %i.ae, ptr %i.j, align 8, !tbaa !17
  %i.af = fmul double %i.s, f0xBFE2CF2304755A5D
  store double %i.af, ptr %i.k, align 8, !tbaa !19
  store double %i.ac, ptr %i.l, align 8, !tbaa !17
  %i.ag = fmul double %i.p, f0xBFEE6F0E134454FF
  store double %i.ag, ptr %i.m, align 8, !tbaa !19
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> <double f0x3FD3C6EF372FE951, double f0xBFD3C6EF372FE94D>, <2 x double> %i.y) ; 2 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  store double %i.ai, ptr %i.n, align 8, !tbaa !17
  %i.aj = fmul double %i.s, f0xBFEE6F0E13445500
  store double %i.aj, ptr %i.o, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = extractelement <2 x double> %i.ah, i64 1
  store double %i.al, ptr %i.ak, align 8, !tbaa !17
  %i.am = fmul double %i.p, f0xBFE2CF2304755A5F
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.am, ptr %i.an, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ap = fmul double %i.s, f0xBCAA79394C9E8A0A
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ap, ptr %i.aq, align 8, !tbaa !19
  %i.ar = fsub double %i.u, %i.s
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.ar, ptr %i.as, align 8, !tbaa !17
  %i.at = fmul double %i.p, f0x3FE2CF2304755A5C
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.at, ptr %i.au, align 8, !tbaa !19
  %i.av = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> <double f0xBFE9E3779B97F4A7, double f0xBFE9E3779B97F4A9>, <2 x double> %i.y) ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0
  store double %i.ax, ptr %i.ao, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = extractelement <2 x double> %i.aw, i64 1
  store double %i.az, ptr %i.ay, align 8, !tbaa !17
  %i.ba = fmul double %i.s, f0x3FEE6F0E134454FF
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.ba, ptr %i.bb, align 8, !tbaa !19
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.s, double f0xBFD3C6EF372FE953, double %i.u)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.bc, ptr %i.bd, align 8, !tbaa !17
  store double %.sroa.0.0, ptr %1, align 8, !tbaa !9
  store double %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define internal fastcc { double, double } @compassPoint(ptr noundef nonnull %0, double noundef %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [4 x %struct.pointf_s], align 16    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %i.b = tail call ptr @agraphof(ptr noundef %i.a) #26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !113
  %i.g = and i32 %i.f, 3                          ; 3 uses
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = mul nuw nsw i32 %i.g, 90
  %i.i = tail call { double, double } @cwrotatepf(double %2, double %1, i32 noundef %i.h) #26 ; 2 uses
  %i.j = extractvalue { double, double } %i.i, 0
  %i.k = extractvalue { double, double } %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.03.0 = phi double [ %i.j, %bb.b ], [ %2, %bb.a ]
  %.sroa.6.0 = phi double [ %i.k, %bb.b ], [ %1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store double %.sroa.03.0, ptr %i.n, align 16, !tbaa !9
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store double %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 16 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !266
  call void @bezier_clip(ptr noundef nonnull %0, ptr noundef %i.v, ptr noundef nonnull %3, i1 noundef zeroext true) #26
  %.sroa.013.0.copyload.pre = load double, ptr %3, align 16 ; 2 uses
  %.sroa.2.0.copyload.pre = load double, ptr %i.l, align 8 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = mul nuw nsw i32 %i.g, 90
  %i.x = call { double, double } @ccwrotatepf(double %.sroa.013.0.copyload.pre, double %.sroa.2.0.copyload.pre, i32 noundef %i.w) #26 ; 2 uses
  %i.y = extractvalue { double, double } %i.x, 0
  %i.z = extractvalue { double, double } %i.x, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.2.0.copyload = phi double [ %i.z, %bb.d ], [ %.sroa.2.0.copyload.pre, %bb.c ]
  %.sroa.013.0.copyload = phi double [ %i.y, %bb.d ], [ %.sroa.013.0.copyload.pre, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.013.0.copyload, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.2.0.copyload, 1
  ret { double, double } %.fca.1.insert
}

declare { double, double } @cwrotatepf(double, double, i32 noundef) local_unnamed_addr #7

declare void @bezier_clip(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { cold nounwind }
attributes #29 = { noreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i64 0, i64 8, !9, i64 8, i64 8, !9}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = distinct !{!16, !12}
!17 = !{!18, !10, i64 8}
!18 = !{!"pointf_s", !10, i64 0, !10, i64 8}
!19 = !{!18, !10, i64 0}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{!26, !29, i64 16}
!26 = !{!"Agobj_s", !27, i64 0, !29, i64 16}
!27 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !28, i64 8}
!28 = !{!"long", !6, i64 0}
!29 = !{!"p1 _ZTS7Agrec_s", !15, i64 0}
!30 = !{!31, !34, i64 16}
!31 = !{!"Agnodeinfo_t", !32, i64 0, !34, i64 16, !15, i64 24, !18, i64 32, !10, i64 48, !10, i64 56, !35, i64 64, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !36, i64 136, !36, i64 144, !15, i64 152, !6, i64 160, !6, i64 161, !37, i64 162, !6, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !38, i64 176, !10, i64 184, !6, i64 192, !37, i64 193, !39, i64 200, !39, i64 208, !6, i64 216, !28, i64 224, !6, i64 232, !6, i64 233, !6, i64 234, !39, i64 240, !39, i64 248, !40, i64 256, !40, i64 272, !40, i64 288, !40, i64 304, !40, i64 320, !43, i64 336, !5, i64 344, !39, i64 352, !5, i64 360, !5, i64 364, !10, i64 368, !40, i64 376, !40, i64 392, !40, i64 408, !40, i64 424, !44, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !6, i64 464}
!32 = !{!"Agrec_s", !33, i64 0, !29, i64 8}
!33 = !{!"p1 omnipotent char", !15, i64 0}
!34 = !{!"p1 _ZTS10shape_desc", !15, i64 0}
!35 = !{!"", !18, i64 0, !18, i64 16}
!36 = !{!"p1 _ZTS11textlabel_t", !15, i64 0}
!37 = !{!"_Bool", !6, i64 0}
!38 = !{!"p1 double", !15, i64 0}
!39 = !{!"p1 _ZTS8Agnode_s", !15, i64 0}
!40 = !{!"elist", !41, i64 0, !28, i64 8}
!41 = !{!"p2 _ZTS8Agedge_s", !42, i64 0}
!42 = !{!"any p2 pointer", !15, i64 0}
!43 = !{!"p1 _ZTS8Agraph_s", !15, i64 0}
!44 = !{!"p1 _ZTS8Agedge_s", !15, i64 0}
!45 = !{!46, !47, i64 8}
!46 = !{!"shape_desc", !33, i64 0, !47, i64 8, !48, i64 16, !37, i64 24}
!47 = !{!"p1 _ZTS15shape_functions", !15, i64 0}
!48 = !{!"p1 _ZTS9polygon_t", !15, i64 0}
!49 = !{!50, !15, i64 0}
!50 = !{!"shape_functions", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!51 = !{!46, !48, i64 16}
!52 = !{!53, !5, i64 0}
!53 = !{!"polygon_t", !5, i64 0, !28, i64 8, !28, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !54, i64 48, !55, i64 56}
!54 = !{!"", !37, i64 0, !37, i64 0, !37, i64 0, !37, i64 0, !37, i64 0, !37, i64 0, !37, i64 0, !37, i64 0, !37, i64 1, !37, i64 1, !37, i64 1, !37, i64 1, !5, i64 1}
!55 = !{!"p1 _ZTS8pointf_s", !15, i64 0}
!56 = !{!53, !28, i64 8}
!57 = !{!53, !28, i64 16}
!58 = !{!53, !10, i64 24}
!59 = !{!53, !10, i64 40}
!60 = !{!53, !10, i64 32}
!61 = !{!62, !62, i64 0}
!62 = !{!"p1 _ZTS7Agsym_s", !15, i64 0}
!63 = !{!31, !10, i64 48}
!64 = !{!31, !10, i64 56}
!65 = !{!31, !36, i64 136}
!66 = !{!67, !10, i64 40}
!67 = !{!"textlabel_t", !33, i64 0, !33, i64 8, !33, i64 16, !5, i64 24, !10, i64 32, !18, i64 40, !18, i64 56, !18, i64 72, !6, i64 88, !6, i64 104, !37, i64 105, !37, i64 106}
!68 = !{!69, !70, i64 16}
!69 = !{!"Agraphinfo_t", !32, i64 0, !70, i64 16, !36, i64 24, !35, i64 32, !6, i64 64, !6, i64 128, !6, i64 129, !37, i64 130, !6, i64 131, !5, i64 132, !10, i64 136, !10, i64 144, !71, i64 152, !15, i64 160, !72, i64 168, !15, i64 176, !73, i64 184, !5, i64 192, !74, i64 200, !74, i64 208, !74, i64 216, !75, i64 224, !71, i64 232, !71, i64 234, !5, i64 236, !77, i64 240, !43, i64 248, !39, i64 256, !78, i64 264, !43, i64 272, !5, i64 280, !39, i64 288, !39, i64 296, !79, i64 304, !39, i64 320, !39, i64 328, !5, i64 336, !5, i64 340, !37, i64 344, !6, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !39, i64 360, !39, i64 368, !39, i64 376, !73, i64 384, !37, i64 392, !6, i64 393, !6, i64 394, !6, i64 395, !37, i64 396}
!70 = !{!"p1 _ZTS8layout_t", !15, i64 0}
!71 = !{!"short", !6, i64 0}
!72 = !{!"p1 _ZTS5GVC_s", !15, i64 0}
!73 = !{!"p2 _ZTS8Agnode_s", !42, i64 0}
!74 = !{!"p2 double", !42, i64 0}
!75 = !{!"p3 double", !76, i64 0}
!76 = !{!"any p3 pointer", !42, i64 0}
!77 = !{!"p2 _ZTS8Agraph_s", !42, i64 0}
!78 = !{!"p1 _ZTS6rank_t", !15, i64 0}
!79 = !{!"nlist_t", !73, i64 0, !28, i64 8}
!80 = !{!81, !10, i64 0}
!81 = !{!"layout_t", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !18, i64 32, !18, i64 48, !18, i64 64, !37, i64 80, !37, i64 81, !37, i64 82, !5, i64 84, !15, i64 88, !33, i64 96}
!82 = !{!46, !37, i64 24}
!83 = !{i8 0, i8 2}
!84 = !{}
!85 = !{!46, !33, i64 0}
!86 = !{!69, !37, i64 130}
!87 = !{!6, !6, i64 0}
!88 = !{!67, !6, i64 104}
!89 = !{!53, !55, i64 56}
!90 = !{!91, !15, i64 0}
!91 = !{!"", !15, i64 0, !15, i64 8}
!92 = !{!67, !10, i64 48}
!93 = !{!67, !10, i64 56}
!94 = !{!67, !10, i64 64}
!95 = distinct !{!95, !12}
!96 = !{!91, !15, i64 8}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12, !99, !100}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = distinct !{!101, !12, !100, !99}
!102 = distinct !{!102, !12}
!103 = distinct !{!103, !12, !99, !100}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12, !100, !99}
!110 = !{!31, !10, i64 120}
!111 = !{!31, !10, i64 128}
!112 = !{!31, !15, i64 24}
!113 = !{!69, !5, i64 132}
!114 = !{!67, !33, i64 0}
!115 = !{!33, !33, i64 0}
!116 = distinct !{!116, !12}
!117 = !{!118, !118, i64 0}
!118 = !{!"p2 _ZTS10shape_desc", !42, i64 0}
!119 = !{!28, !28, i64 0}
!120 = distinct !{!120, !12}
!121 = !{!34, !34, i64 0}
!122 = distinct !{!122, !12}
!123 = !{i64 0, i64 8, !115, i64 8, i64 8, !124, i64 16, i64 8, !125, i64 24, i64 1, !126}
!124 = !{!47, !47, i64 0}
!125 = !{!48, !48, i64 0}
!126 = !{!37, !37, i64 0}
!127 = !{!128, !128, i64 0}
!128 = !{!"p2 omnipotent char", !42, i64 0}
!129 = !{!130, !43, i64 120}
!130 = !{!"Agraph_s", !26, i64 0, !131, i64 24, !132, i64 32, !132, i64 48, !134, i64 64, !135, i64 72, !134, i64 80, !134, i64 88, !134, i64 96, !134, i64 104, !43, i64 112, !43, i64 120, !136, i64 128}
!131 = !{!"Agdesc_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0}
!132 = !{!"dtlink_s_", !133, i64 0, !6, i64 8}
!133 = !{!"p1 _ZTS9dtlink_s_", !15, i64 0}
!134 = !{!"p1 _ZTS5dt_s_", !15, i64 0}
!135 = !{!"p1 _ZTS17graphviz_node_set", !15, i64 0}
!136 = !{!"p1 _ZTS8Agclos_s", !15, i64 0}
!137 = !{!138, !6, i64 37}
!138 = !{!"port", !18, i64 0, !10, i64 16, !15, i64 24, !37, i64 32, !37, i64 33, !37, i64 34, !37, i64 35, !6, i64 36, !6, i64 37, !33, i64 40}
!139 = !{!138, !15, i64 24}
!140 = !{!31, !10, i64 96}
!141 = !{!31, !10, i64 104}
!142 = !{!138, !33, i64 40}
!143 = !{!138, !10, i64 16}
!144 = !{!138, !6, i64 36}
!145 = !{!138, !37, i64 33}
!146 = !{!138, !37, i64 32}
!147 = !{!138, !37, i64 34}
!148 = !{!138, !37, i64 35}
!149 = !{!150, !37, i64 59}
!150 = !{!"Agedgeinfo_t", !32, i64 0, !151, i64 16, !138, i64 24, !138, i64 72, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !6, i64 152, !6, i64 153, !6, i64 154, !6, i64 155, !6, i64 156, !44, i64 160, !15, i64 168, !10, i64 176, !10, i64 184, !152, i64 192, !6, i64 208, !37, i64 209, !71, i64 210, !5, i64 212, !5, i64 216, !5, i64 220, !71, i64 224, !5, i64 228, !44, i64 232}
!151 = !{!"p1 _ZTS7splines", !15, i64 0}
!152 = !{!"Ppoly_t", !55, i64 0, !28, i64 8}
!153 = !{!154, !39, i64 56}
!154 = !{!"Agedge_s", !26, i64 0, !132, i64 24, !132, i64 40, !39, i64 56}
!155 = !{i64 0, i64 8, !9, i64 8, i64 8, !9, i64 16, i64 8, !9, i64 24, i64 8, !156, i64 32, i64 1, !126, i64 33, i64 1, !126, i64 34, i64 1, !126, i64 35, i64 1, !126, i64 36, i64 1, !87, i64 37, i64 1, !87, i64 40, i64 8, !115}
!156 = !{!15, !15, i64 0}
!157 = !{!150, !37, i64 107}
!158 = distinct !{!158, !12}
!159 = !{!160, !161, i64 64}
end_hunk_1
