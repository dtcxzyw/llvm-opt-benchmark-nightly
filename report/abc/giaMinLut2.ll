Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMinLut2?download=true
inline.NumInlined: 405
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 43
begin_hunk_0_@Abc_TtGiaMinArray:bb.a

middle.block134:                                  ; preds = %vector.body129
  %bin.rdx135 = add <4 x i32> %i.dn, %i.dm
  %i.dp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx135)
  br label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %.lr.ph.i71, %middle.block134
  %indvars.iv.i74.ph = phi i64 [ 0, %.lr.ph.i71 ], [ %n.vec128, %middle.block134 ]
  %.011.i75.ph = phi i32 [ 0, %.lr.ph.i71 ], [ %i.dp, %middle.block134 ]
  br label %scalar.ph125

scalar.ph125:                                     ; preds = %scalar.ph125.preheader, %scalar.ph125
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i77, %scalar.ph125 ], [ %indvars.iv.i74.ph, %scalar.ph125.preheader ] ; 2 uses
  %.011.i75 = phi i32 [ %i.ds, %scalar.ph125 ], [ %.011.i75.ph, %scalar.ph125.preheader ]
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %indvars.iv.i74
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  %.val.i76 = load i32, ptr %i.dr, align 4, !tbaa !29
  %i.ds = add nsw i32 %.val.i76, %.011.i75        ; 2 uses
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i74, 1 ; 2 uses
  %exitcond.not.i78 = icmp eq i64 %indvars.iv.next.i77, %wide.trip.count.i
  br i1 %exitcond.not.i78, label %Vec_WecSizeSize.exit79, label %scalar.ph125, !llvm.loop !231

Vec_WecSizeSize.exit79:                           ; preds = %scalar.ph125, %bb.f
  %.0.lcssa.i96 = phi i32 [ 0, %bb.f ], [ %i.cc, %scalar.ph125 ]
  %.0.lcssa.i70 = phi i32 [ 0, %bb.f ], [ %i.ds, %scalar.ph125 ]
  %i.dt = add nsw i32 %.0.lcssa.i70, %.val68
  %i.du = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.val68, i32 noundef %.0.lcssa.i96, i32 noundef %i.dt) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %Vec_WecSizeSize.exit79, %._crit_edge105
  %.not65 = icmp eq ptr %3, null
  br i1 %.not65, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val = load i32, ptr %i.g, align 4, !tbaa !40
  %.val9.i80 = load i32, ptr %i.o, align 4, !tbaa !46 ; 3 uses
  %i.dv = icmp sgt i32 %.val9.i80, 0
  br i1 %i.dv, label %.lr.ph.i82, label %Vec_WecSizeSize.exit90

.lr.ph.i82:                                       ; preds = %bb.h
  %.val8.i83 = load ptr, ptr %i.p, align 8, !tbaa !45 ; 9 uses
  %wide.trip.count.i84 = zext nneg i32 %.val9.i80 to i64 ; 3 uses
  %min.iters.check139 = icmp ult i32 %.val9.i80, 9
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph.i82
  %i.dw = and i64 %wide.trip.count.i84, 7         ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  %i.dy = select i1 %i.dx, i64 8, i64 %i.dw
  %n.vec141 = sub nsw i64 %wide.trip.count.i84, %i.dy ; 2 uses
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next146, %vector.body142 ] ; 9 uses
  %vec.phi144 = phi <4 x i32> [ zeroinitializer, %vector.ph140 ], [ %i.ff, %vector.body142 ]
  %vec.phi145 = phi <4 x i32> [ zeroinitializer, %vector.ph140 ], [ %i.fg, %vector.body142 ]
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.val8.i83, i64 %index143
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %.val8.i83, i64 %index143
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %.val8.i83, i64 %index143
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %.val8.i83, i64 %index143
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %.val8.i83, i64 %index143
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.val8.i83, i64 %index143
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %.val8.i83, i64 %index143
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.val8.i83, i64 %index143
  %i.eh = getelementptr i8, ptr %i.dz, i64 4
  %i.ei = getelementptr i8, ptr %i.ea, i64 20
  %i.ej = getelementptr i8, ptr %i.eb, i64 36
  %i.ek = getelementptr i8, ptr %i.ec, i64 52
  %i.el = getelementptr i8, ptr %i.ed, i64 68
  %i.em = getelementptr i8, ptr %i.ee, i64 84
  %i.en = getelementptr i8, ptr %i.ef, i64 100
  %i.eo = getelementptr i8, ptr %i.eg, i64 116
  %i.ep = load i32, ptr %i.eh, align 4, !tbaa !29
  %i.eq = load i32, ptr %i.ei, align 4, !tbaa !29
  %i.er = load i32, ptr %i.ej, align 4, !tbaa !29
  %i.es = load i32, ptr %i.ek, align 4, !tbaa !29
  %i.et = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %i.eu = insertelement <4 x i32> %i.et, i32 %i.eq, i64 1
  %i.ev = insertelement <4 x i32> %i.eu, i32 %i.er, i64 2
  %i.ew = insertelement <4 x i32> %i.ev, i32 %i.es, i64 3
  %i.ex = load i32, ptr %i.el, align 4, !tbaa !29
  %i.ey = load i32, ptr %i.em, align 4, !tbaa !29
  %i.ez = load i32, ptr %i.en, align 4, !tbaa !29
  %i.fa = load i32, ptr %i.eo, align 4, !tbaa !29
  %i.fb = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.ey, i64 1
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.ez, i64 2
  %i.fe = insertelement <4 x i32> %i.fd, i32 %i.fa, i64 3
  %i.ff = add <4 x i32> %i.ew, %vec.phi144        ; 2 uses
  %i.fg = add <4 x i32> %i.fe, %vec.phi145        ; 2 uses
  %index.next146 = add nuw i64 %index143, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next146, %n.vec141
  br i1 %i.fh, label %middle.block147, label %vector.body142, !llvm.loop !232

middle.block147:                                  ; preds = %vector.body142
  %bin.rdx148 = add <4 x i32> %i.fg, %i.ff
  %i.fi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx148)
  br label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %.lr.ph.i82, %middle.block147
  %indvars.iv.i85.ph = phi i64 [ 0, %.lr.ph.i82 ], [ %n.vec141, %middle.block147 ]
  %.011.i86.ph = phi i32 [ 0, %.lr.ph.i82 ], [ %i.fi, %middle.block147 ]
  br label %scalar.ph138

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %indvars.iv.i85 = phi i64 [ %indvars.iv.next.i88, %scalar.ph138 ], [ %indvars.iv.i85.ph, %scalar.ph138.preheader ] ; 2 uses
  %.011.i86 = phi i32 [ %i.fl, %scalar.ph138 ], [ %.011.i86.ph, %scalar.ph138.preheader ]
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.val8.i83, i64 %indvars.iv.i85
  %i.fk = getelementptr i8, ptr %i.fj, i64 4
  %.val.i87 = load i32, ptr %i.fk, align 4, !tbaa !29
  %i.fl = add nsw i32 %.val.i87, %.011.i86        ; 2 uses
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %indvars.iv.next.i88, %wide.trip.count.i84
  br i1 %exitcond.not.i89, label %Vec_WecSizeSize.exit90, label %scalar.ph138, !llvm.loop !233

Vec_WecSizeSize.exit90:                           ; preds = %scalar.ph138, %bb.h
  %.0.lcssa.i81 = phi i32 [ 0, %bb.h ], [ %i.fl, %scalar.ph138 ]
  %i.fm = add nsw i32 %.0.lcssa.i81, %.val
  store i32 %i.fm, ptr %3, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %Vec_WecSizeSize.exit90, %bb.g
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %.not.i91 = icmp eq ptr %i.fn, null
  br i1 %.not.i91, label %Vec_WrdFree.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.fn) #27
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.b) #27
  %i.fo = load ptr, ptr %i.i, align 8, !tbaa !42  ; 2 uses
  %.not.i92 = icmp eq ptr %i.fo, null
  br i1 %.not.i92, label %Vec_WrdFree.exit93, label %bb.k

bb.k:                                             ; preds = %Vec_WrdFree.exit
  tail call void @free(ptr noundef nonnull %i.fo) #27
  br label %Vec_WrdFree.exit93

Vec_WrdFree.exit93:                               ; preds = %Vec_WrdFree.exit, %bb.k
  tail call void @free(ptr noundef nonnull %i.f) #27
  %i.fp = load i32, ptr %i.k, align 8, !tbaa !47  ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  %.pre.i.i = load ptr, ptr %i.p, align 8, !tbaa !45 ; 3 uses
  br i1 %i.fq, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %Vec_WrdFree.exit93, %bb.m
  %i.fr = phi i32 [ %i.fz, %bb.m ], [ %i.fp, %Vec_WrdFree.exit93 ]
  %i.fs = phi ptr [ %i.ga, %bb.m ], [ %.pre.i.i, %Vec_WrdFree.exit93 ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.m ], [ 0, %Vec_WrdFree.exit93 ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %indvars.iv.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !31 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.fv, null
  br i1 %.not15.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.fv) #27
  %i.fw = load ptr, ptr %i.p, align 8, !tbaa !45  ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %indvars.iv.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr null, ptr %i.fy, align 8, !tbaa !31
  %.pre18.i.i = load i32, ptr %i.k, align 8, !tbaa !47
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.fz = phi i32 [ %.pre18.i.i, %bb.l ], [ %i.fr, %.lr.ph.i.i ] ; 2 uses
  %i.ga = phi ptr [ %i.fw, %bb.l ], [ %i.fs, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gb = sext i32 %i.fz to i64
  %i.gc = icmp slt i64 %indvars.iv.next.i.i, %i.gb
  br i1 %i.gc, label %.lr.ph.i.i, label %._crit_edge.thread.i.i, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %Vec_WrdFree.exit93
  %.not.i.i94 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i94, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.m, %._crit_edge.i.i
  %i.gd = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ga, %bb.m ]
  tail call void @free(ptr noundef nonnull %i.gd) #27
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.k) #27
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.t) #27
  %i.ge = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.t) #27
  tail call void @Gia_ManStop(ptr noundef nonnull %i.t) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.ge
}

; Function Attrs: nounwind uwtable
define ptr @Abc_TtGiaMinArrayNew(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = icmp slt i32 %1, 7                       ; 2 uses
  %i.c = add nsw i32 %1, -6                       ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d          ; 9 uses
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3                      ; 2 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #25 ; 7 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.g) #25 ; 7 uses
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !40
  %i.l = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #25 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  store i32 0, ptr %i.o, align 4, !tbaa !40
  store i32 100, ptr %i.n, align 8, !tbaa !41
  %i.p = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #25
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !42
  %i.r = add nsw i32 %1, 1                        ; 2 uses
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 7 uses
  %or.cond.i.i = icmp ult i32 %1, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %i.r ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.s, align 8, !tbaa !47
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = sext i32 %spec.store.select.i.i to i64
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 16) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  store ptr %i.v, ptr %i.x, align 8, !tbaa !45
  store i32 %i.r, ptr %i.w, align 4, !tbaa !46
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = tail call dereferenceable_or_null(8388608) ptr @realloc(ptr noundef nonnull %i.l, i64 noundef 8388608) #26
  br label %Vec_WrdGrow.exit

bb.e:                                             ; preds = %bb.c
  %i.z = tail call noalias dereferenceable_or_null(8388608) ptr @malloc(i64 noundef 8388608) #25
  br label %Vec_WrdGrow.exit

Vec_WrdGrow.exit:                                 ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.y, %bb.d ], [ %i.z, %bb.e ]
  store ptr %i.aa, ptr %i.m, align 8, !tbaa !42
  store i32 1048576, ptr %i.j, align 8, !tbaa !41
  %i.ab = tail call ptr @Gia_ManStart(i32 noundef 1000) #27 ; 8 uses
  %i.ac = tail call noalias noundef dereferenceable_or_null(6) ptr @malloc(i64 noundef 6) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ac, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i64 6, i1 false) #27
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !64
  %i.ad = icmp sgt i32 %1, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_WrdGrow.exit, %.lr.ph
  %.0113 = phi i32 [ %i.ae, %.lr.ph ], [ 0, %Vec_WrdGrow.exit ]
  tail call fastcc void @Gia_ManAppendCi(ptr noundef nonnull %i.ab)
  %i.ae = add nuw nsw i32 %.0113, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !234

._crit_edge:                                      ; preds = %.lr.ph, %Vec_WrdGrow.exit
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.ab) #27
  %i.af = icmp sgt i32 %2, 0
  br i1 %i.af, label %.lr.ph116, label %._crit_edge117

.lr.ph116:                                        ; preds = %._crit_edge
  %i.ag = select i1 %i.b, i32 0, i32 %i.c         ; 2 uses
  %i.ah = shl i32 %2, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ai ; 8 uses
  %i.ak = icmp sgt i32 %i.e, 0
  %wide.trip.count.i = zext i32 %i.e to i64       ; 2 uses
  %min.iters.check142 = icmp ult i32 %i.e, 4
  %n.vec144 = and i64 %wide.trip.count.i, 2147483644
  %exitcond.not.i = icmp eq i32 %i.e, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %exitcond.not.i.1 = icmp eq i32 %i.e, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %min.iters.check = icmp ult i32 %i.e, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  %exitcond.not.i75 = icmp eq i32 %i.e, 1
  %6 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %exitcond.not.i75.1 = icmp eq i32 %i.e, 2
  %8 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph116, %Abc_TtSharp.exit
  %.059114 = phi i32 [ 0, %.lr.ph116 ], [ %i.cd, %Abc_TtSharp.exit ] ; 2 uses
  %i.ap = shl i32 %.059114, %i.ag
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq ; 8 uses
  br i1 %i.ak, label %.lr.ph.i.preheader, label %Abc_TtSharp.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  br i1 %min.iters.check142, label %.lr.ph.i, label %vector.body145

vector.body145:                                   ; preds = %.lr.ph.i.preheader, %vector.body145
  %index146 = phi i64 [ %index.next151, %vector.body145 ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index146 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load147 = load <2 x i64>, ptr %i.as, align 8, !tbaa !26
  %wide.load148 = load <2 x i64>, ptr %i.at, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index146 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load149 = load <2 x i64>, ptr %i.au, align 8, !tbaa !26
  %wide.load150 = load <2 x i64>, ptr %i.av, align 8, !tbaa !26
  %i.aw = and <2 x i64> %wide.load149, %wide.load147
  %i.ax = and <2 x i64> %wide.load150, %wide.load148
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index146 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x i64> %i.aw, ptr %i.ay, align 8, !tbaa !26
  store <2 x i64> %i.ax, ptr %i.az, align 8, !tbaa !26
  %index.next151 = add nuw i64 %index146, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.ba, label %.lr.ph.i72.preheader, label %vector.body145, !llvm.loop !235

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %i.bb = load i64, ptr %i.aj, align 8, !tbaa !26
  %i.bc = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.bd = and i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %i.h, align 8, !tbaa !26
  br i1 %exitcond.not.i, label %.lr.ph.i72.preheader, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.be = load i64, ptr %i.al, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !26
  %i.bh = and i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.am, align 8, !tbaa !26
  br i1 %exitcond.not.i.1, label %.lr.ph.i72.preheader, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.bi = load i64, ptr %i.an, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !26
  %i.bl = and i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.ao, align 8, !tbaa !26
  br label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %vector.body145, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2
  br i1 %min.iters.check, label %.lr.ph.i72, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i72.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i72.preheader ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <2 x i64>, ptr %i.bm, align 8, !tbaa !26
  %wide.load138 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load139 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !26
  %wide.load140 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !26
  %i.bq = xor <2 x i64> %wide.load139, splat (i64 -1)
  %i.br = xor <2 x i64> %wide.load140, splat (i64 -1)
  %i.bs = and <2 x i64> %wide.load, %i.bq
  %i.bt = and <2 x i64> %wide.load138, %i.br
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x i64> %i.bs, ptr %i.bu, align 8, !tbaa !26
  store <2 x i64> %i.bt, ptr %i.bv, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %Abc_TtSharp.exit, label %vector.body, !llvm.loop !236

.lr.ph.i72:                                       ; preds = %.lr.ph.i72.preheader
  %10 = load i64, ptr %i.aj, align 8, !tbaa !26
  %11 = load i64, ptr %i.ar, align 8, !tbaa !26
  %12 = xor i64 %11, -1
  %13 = and i64 %10, %12
  store i64 %13, ptr %i.i, align 8, !tbaa !26
  br i1 %exitcond.not.i75, label %Abc_TtSharp.exit, label %.lr.ph.i72.a

.lr.ph.i72.a:                                     ; preds = %.lr.ph.i72
  %i.bx = load i64, ptr %6, align 8, !tbaa !26
  %14 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.by = load i64, ptr %14, align 8, !tbaa !26
  %i.bz = xor i64 %i.by, -1
  %i.ca = and i64 %i.bx, %i.bz
  store i64 %i.ca, ptr %7, align 8, !tbaa !26
  br i1 %exitcond.not.i75.1, label %Abc_TtSharp.exit, label %.lr.ph.i72.2

.lr.ph.i72.2:                                     ; preds = %.lr.ph.i72.a
  %15 = load i64, ptr %8, align 8, !tbaa !26
  %16 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %17 = load i64, ptr %16, align 8, !tbaa !26
  %18 = xor i64 %17, -1
  %19 = and i64 %15, %18
  store i64 %19, ptr %9, align 8, !tbaa !26
  br label %Abc_TtSharp.exit

Abc_TtSharp.exit:                                 ; preds = %vector.body, %.lr.ph.i72, %.lr.ph.i72.a, %.lr.ph.i72.2, %bb.f
  %i.cb = call ptr @Abc_TtGiaMin_rec(ptr noundef nonnull %i.ab, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %1, ptr noundef nonnull %i.j, ptr noundef nonnull %i.n, ptr noundef nonnull %i.s, ptr noundef nonnull %i.a, ptr noundef %5) ; 0 uses
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !17
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.ab, i32 noundef %i.cc)
  %i.cd = add nuw nsw i32 %.059114, 1             ; 2 uses
  %exitcond121.not = icmp eq i32 %i.cd, %2
  br i1 %exitcond121.not, label %._crit_edge117, label %bb.f, !llvm.loop !237

._crit_edge117:                                   ; preds = %Abc_TtSharp.exit, %._crit_edge
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge117
  %.val69 = load i32, ptr %i.o, align 4, !tbaa !40 ; 2 uses
  %.val9.i = load i32, ptr %i.w, align 4, !tbaa !46 ; 4 uses
  %i.ce = icmp sgt i32 %.val9.i, 0
  br i1 %i.ce, label %.lr.ph.i76, label %Vec_WecSizeSize.exit91

.lr.ph.i76:                                       ; preds = %bb.g
  %.val8.i = load ptr, ptr %i.x, align 8, !tbaa !45 ; 18 uses
  %wide.trip.count.i77 = zext nneg i32 %.val9.i to i64 ; 6 uses
  %min.iters.check156 = icmp ult i32 %.val9.i, 9
  br i1 %min.iters.check156, label %scalar.ph155.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph.i76
  %i.cf = and i64 %wide.trip.count.i77, 7         ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = select i1 %i.cg, i64 8, i64 %i.cf
  %n.vec158 = sub nsw i64 %wide.trip.count.i77, %i.ch ; 2 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next162, %vector.body159 ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph157 ], [ %i.do, %vector.body159 ]
  %vec.phi161 = phi <4 x i32> [ zeroinitializer, %vector.ph157 ], [ %i.dp, %vector.body159 ]
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index160
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index160
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index160
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index160
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index160
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index160
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index160
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index160
  %i.cq = getelementptr i8, ptr %i.ci, i64 4
  %i.cr = getelementptr i8, ptr %i.cj, i64 20
  %i.cs = getelementptr i8, ptr %i.ck, i64 36
  %i.ct = getelementptr i8, ptr %i.cl, i64 52
  %i.cu = getelementptr i8, ptr %i.cm, i64 68
  %i.cv = getelementptr i8, ptr %i.cn, i64 84
  %i.cw = getelementptr i8, ptr %i.co, i64 100
  %i.cx = getelementptr i8, ptr %i.cp, i64 116
  %i.cy = load i32, ptr %i.cq, align 4, !tbaa !29
  %i.cz = load i32, ptr %i.cr, align 4, !tbaa !29
  %i.da = load i32, ptr %i.cs, align 4, !tbaa !29
  %i.db = load i32, ptr %i.ct, align 4, !tbaa !29
  %i.dc = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %i.dd = insertelement <4 x i32> %i.dc, i32 %i.cz, i64 1
  %i.de = insertelement <4 x i32> %i.dd, i32 %i.da, i64 2
  %i.df = insertelement <4 x i32> %i.de, i32 %i.db, i64 3
  %i.dg = load i32, ptr %i.cu, align 4, !tbaa !29
  %i.dh = load i32, ptr %i.cv, align 4, !tbaa !29
  %i.di = load i32, ptr %i.cw, align 4, !tbaa !29
  %i.dj = load i32, ptr %i.cx, align 4, !tbaa !29
  %i.dk = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.dh, i64 1
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.di, i64 2
  %i.dn = insertelement <4 x i32> %i.dm, i32 %i.dj, i64 3
  %i.do = add <4 x i32> %i.df, %vec.phi           ; 2 uses
  %i.dp = add <4 x i32> %i.dn, %vec.phi161        ; 2 uses
  %index.next162 = add nuw i64 %index160, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next162, %n.vec158
  br i1 %i.dq, label %middle.block163, label %vector.body159, !llvm.loop !238

middle.block163:                                  ; preds = %vector.body159
  %bin.rdx = add <4 x i32> %i.dp, %i.do
  %i.dr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph155.preheader

scalar.ph155.preheader:                           ; preds = %.lr.ph.i76, %middle.block163
  %indvars.iv.i78.ph = phi i64 [ 0, %.lr.ph.i76 ], [ %n.vec158, %middle.block163 ]
  %.011.i.ph = phi i32 [ 0, %.lr.ph.i76 ], [ %i.dr, %middle.block163 ]
  br label %scalar.ph155

scalar.ph155:                                     ; preds = %scalar.ph155.preheader, %scalar.ph155
  %indvars.iv.i78 = phi i64 [ %indvars.iv.next.i79, %scalar.ph155 ], [ %indvars.iv.i78.ph, %scalar.ph155.preheader ] ; 2 uses
  %.011.i = phi i32 [ %i.du, %scalar.ph155 ], [ %.011.i.ph, %scalar.ph155.preheader ]
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %indvars.iv.i78
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  %.val.i = load i32, ptr %i.dt, align 4, !tbaa !29
  %i.du = add nsw i32 %.val.i, %.011.i            ; 2 uses
  %indvars.iv.next.i79 = add nuw nsw i64 %indvars.iv.i78, 1 ; 2 uses
  %exitcond.not.i80 = icmp eq i64 %indvars.iv.next.i79, %wide.trip.count.i77
  br i1 %exitcond.not.i80, label %.lr.ph.i83, label %scalar.ph155, !llvm.loop !239

.lr.ph.i83:                                       ; preds = %scalar.ph155
  %min.iters.check166 = icmp ult i32 %.val9.i, 9
  br i1 %min.iters.check166, label %scalar.ph165.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %.lr.ph.i83
  %i.dv = and i64 %wide.trip.count.i77, 7         ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  %i.dx = select i1 %i.dw, i64 8, i64 %i.dv
  %n.vec168 = sub nsw i64 %wide.trip.count.i77, %i.dx ; 2 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph167
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next173, %vector.body169 ] ; 9 uses
  %vec.phi171 = phi <4 x i32> [ zeroinitializer, %vector.ph167 ], [ %i.fe, %vector.body169 ]
  %vec.phi172 = phi <4 x i32> [ zeroinitializer, %vector.ph167 ], [ %i.ff, %vector.body169 ]
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index170
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index170
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index170
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index170
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index170
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index170
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index170
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index170
  %i.eg = getelementptr i8, ptr %i.dy, i64 4
  %i.eh = getelementptr i8, ptr %i.dz, i64 20
  %i.ei = getelementptr i8, ptr %i.ea, i64 36
  %i.ej = getelementptr i8, ptr %i.eb, i64 52
  %i.ek = getelementptr i8, ptr %i.ec, i64 68
  %i.el = getelementptr i8, ptr %i.ed, i64 84
  %i.em = getelementptr i8, ptr %i.ee, i64 100
  %i.en = getelementptr i8, ptr %i.ef, i64 116
  %i.eo = load i32, ptr %i.eg, align 4, !tbaa !29
  %i.ep = load i32, ptr %i.eh, align 4, !tbaa !29
  %i.eq = load i32, ptr %i.ei, align 4, !tbaa !29
  %i.er = load i32, ptr %i.ej, align 4, !tbaa !29
  %i.es = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %i.et = insertelement <4 x i32> %i.es, i32 %i.ep, i64 1
  %i.eu = insertelement <4 x i32> %i.et, i32 %i.eq, i64 2
  %i.ev = insertelement <4 x i32> %i.eu, i32 %i.er, i64 3
  %i.ew = load i32, ptr %i.ek, align 4, !tbaa !29
  %i.ex = load i32, ptr %i.el, align 4, !tbaa !29
  %i.ey = load i32, ptr %i.em, align 4, !tbaa !29
  %i.ez = load i32, ptr %i.en, align 4, !tbaa !29
  %i.fa = insertelement <4 x i32> poison, i32 %i.ew, i64 0
  %i.fb = insertelement <4 x i32> %i.fa, i32 %i.ex, i64 1
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.ey, i64 2
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.ez, i64 3
  %i.fe = add <4 x i32> %i.ev, %vec.phi171        ; 2 uses
  %i.ff = add <4 x i32> %i.fd, %vec.phi172        ; 2 uses
  %index.next173 = add nuw i64 %index170, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next173, %n.vec168
  br i1 %i.fg, label %middle.block174, label %vector.body169, !llvm.loop !240

middle.block174:                                  ; preds = %vector.body169
  %bin.rdx175 = add <4 x i32> %i.ff, %i.fe
  %i.fh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx175)
  br label %scalar.ph165.preheader

scalar.ph165.preheader:                           ; preds = %.lr.ph.i83, %middle.block174
  %indvars.iv.i86.ph = phi i64 [ 0, %.lr.ph.i83 ], [ %n.vec168, %middle.block174 ]
  %.011.i87.ph = phi i32 [ 0, %.lr.ph.i83 ], [ %i.fh, %middle.block174 ]
  br label %scalar.ph165

scalar.ph165:                                     ; preds = %scalar.ph165.preheader, %scalar.ph165
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i89, %scalar.ph165 ], [ %indvars.iv.i86.ph, %scalar.ph165.preheader ] ; 2 uses
  %.011.i87 = phi i32 [ %i.fk, %scalar.ph165 ], [ %.011.i87.ph, %scalar.ph165.preheader ]
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %indvars.iv.i86
  %i.fj = getelementptr i8, ptr %i.fi, i64 4
  %.val.i88 = load i32, ptr %i.fj, align 4, !tbaa !29
  %i.fk = add nsw i32 %.val.i88, %.011.i87        ; 2 uses
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %exitcond.not.i90 = icmp eq i64 %indvars.iv.next.i89, %wide.trip.count.i77
  br i1 %exitcond.not.i90, label %Vec_WecSizeSize.exit91, label %scalar.ph165, !llvm.loop !241

Vec_WecSizeSize.exit91:                           ; preds = %scalar.ph165, %bb.g
  %.0.lcssa.i108 = phi i32 [ 0, %bb.g ], [ %i.du, %scalar.ph165 ]
  %.0.lcssa.i82 = phi i32 [ 0, %bb.g ], [ %i.fk, %scalar.ph165 ]
  %i.fl = add nsw i32 %.0.lcssa.i82, %.val69
  %i.fm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.val69, i32 noundef %.0.lcssa.i108, i32 noundef %i.fl) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %Vec_WecSizeSize.exit91, %._crit_edge117
  %.not65 = icmp eq ptr %3, null
  br i1 %.not65, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val = load i32, ptr %i.o, align 4, !tbaa !40
  %.val9.i92 = load i32, ptr %i.w, align 4, !tbaa !46 ; 3 uses
  %i.fn = icmp sgt i32 %.val9.i92, 0
  br i1 %i.fn, label %.lr.ph.i94, label %Vec_WecSizeSize.exit102

.lr.ph.i94:                                       ; preds = %bb.i
  %.val8.i95 = load ptr, ptr %i.x, align 8, !tbaa !45 ; 9 uses
  %wide.trip.count.i96 = zext nneg i32 %.val9.i92 to i64 ; 3 uses
  %min.iters.check179 = icmp ult i32 %.val9.i92, 9
  br i1 %min.iters.check179, label %scalar.ph178.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %.lr.ph.i94
  %i.fo = and i64 %wide.trip.count.i96, 7         ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = select i1 %i.fp, i64 8, i64 %i.fo
  %n.vec181 = sub nsw i64 %wide.trip.count.i96, %i.fq ; 2 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next186, %vector.body182 ] ; 9 uses
  %vec.phi184 = phi <4 x i32> [ zeroinitializer, %vector.ph180 ], [ %i.gx, %vector.body182 ]
  %vec.phi185 = phi <4 x i32> [ zeroinitializer, %vector.ph180 ], [ %i.gy, %vector.body182 ]
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %.val8.i95, i64 %index183
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %.val8.i95, i64 %index183
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %.val8.i95, i64 %index183
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %.val8.i95, i64 %index183
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.val8.i95, i64 %index183
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %.val8.i95, i64 %index183
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %.val8.i95, i64 %index183
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.val8.i95, i64 %index183
  %i.fz = getelementptr i8, ptr %i.fr, i64 4
  %i.ga = getelementptr i8, ptr %i.fs, i64 20
  %i.gb = getelementptr i8, ptr %i.ft, i64 36
  %i.gc = getelementptr i8, ptr %i.fu, i64 52
  %i.gd = getelementptr i8, ptr %i.fv, i64 68
  %i.ge = getelementptr i8, ptr %i.fw, i64 84
  %i.gf = getelementptr i8, ptr %i.fx, i64 100
  %i.gg = getelementptr i8, ptr %i.fy, i64 116
  %i.gh = load i32, ptr %i.fz, align 4, !tbaa !29
  %i.gi = load i32, ptr %i.ga, align 4, !tbaa !29
  %i.gj = load i32, ptr %i.gb, align 4, !tbaa !29
  %i.gk = load i32, ptr %i.gc, align 4, !tbaa !29
  %i.gl = insertelement <4 x i32> poison, i32 %i.gh, i64 0
  %i.gm = insertelement <4 x i32> %i.gl, i32 %i.gi, i64 1
  %i.gn = insertelement <4 x i32> %i.gm, i32 %i.gj, i64 2
  %i.go = insertelement <4 x i32> %i.gn, i32 %i.gk, i64 3
  %i.gp = load i32, ptr %i.gd, align 4, !tbaa !29
  %i.gq = load i32, ptr %i.ge, align 4, !tbaa !29
  %i.gr = load i32, ptr %i.gf, align 4, !tbaa !29
  %i.gs = load i32, ptr %i.gg, align 4, !tbaa !29
  %i.gt = insertelement <4 x i32> poison, i32 %i.gp, i64 0
  %i.gu = insertelement <4 x i32> %i.gt, i32 %i.gq, i64 1
  %i.gv = insertelement <4 x i32> %i.gu, i32 %i.gr, i64 2
  %i.gw = insertelement <4 x i32> %i.gv, i32 %i.gs, i64 3
  %i.gx = add <4 x i32> %i.go, %vec.phi184        ; 2 uses
  %i.gy = add <4 x i32> %i.gw, %vec.phi185        ; 2 uses
  %index.next186 = add nuw i64 %index183, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.gz, label %middle.block187, label %vector.body182, !llvm.loop !242

middle.block187:                                  ; preds = %vector.body182
  %bin.rdx188 = add <4 x i32> %i.gy, %i.gx
  %i.ha = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx188)
  br label %scalar.ph178.preheader

scalar.ph178.preheader:                           ; preds = %.lr.ph.i94, %middle.block187
  %indvars.iv.i97.ph = phi i64 [ 0, %.lr.ph.i94 ], [ %n.vec181, %middle.block187 ]
  %.011.i98.ph = phi i32 [ 0, %.lr.ph.i94 ], [ %i.ha, %middle.block187 ]
  br label %scalar.ph178

scalar.ph178:                                     ; preds = %scalar.ph178.preheader, %scalar.ph178
  %indvars.iv.i97 = phi i64 [ %indvars.iv.next.i100, %scalar.ph178 ], [ %indvars.iv.i97.ph, %scalar.ph178.preheader ] ; 2 uses
  %.011.i98 = phi i32 [ %i.hd, %scalar.ph178 ], [ %.011.i98.ph, %scalar.ph178.preheader ]
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %.val8.i95, i64 %indvars.iv.i97
  %i.hc = getelementptr i8, ptr %i.hb, i64 4
  %.val.i99 = load i32, ptr %i.hc, align 4, !tbaa !29
  %i.hd = add nsw i32 %.val.i99, %.011.i98        ; 2 uses
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i96
  br i1 %exitcond.not.i101, label %Vec_WecSizeSize.exit102, label %scalar.ph178, !llvm.loop !243

Vec_WecSizeSize.exit102:                          ; preds = %scalar.ph178, %bb.i
  %.0.lcssa.i93 = phi i32 [ 0, %bb.i ], [ %i.hd, %scalar.ph178 ]
  %i.he = add nsw i32 %.0.lcssa.i93, %.val
  store i32 %i.he, ptr %3, align 4, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %Vec_WecSizeSize.exit102, %bb.h
  %i.hf = load ptr, ptr %i.m, align 8, !tbaa !42  ; 2 uses
  %.not.i103 = icmp eq ptr %i.hf, null
  br i1 %.not.i103, label %Vec_WrdFree.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.hf) #27
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.j, %bb.k
  tail call void @free(ptr noundef nonnull %i.j) #27
  %i.hg = load ptr, ptr %i.q, align 8, !tbaa !42  ; 2 uses
  %.not.i104 = icmp eq ptr %i.hg, null
  br i1 %.not.i104, label %Vec_WrdFree.exit105, label %bb.l

bb.l:                                             ; preds = %Vec_WrdFree.exit
  tail call void @free(ptr noundef nonnull %i.hg) #27
  br label %Vec_WrdFree.exit105

Vec_WrdFree.exit105:                              ; preds = %Vec_WrdFree.exit, %bb.l
  tail call void @free(ptr noundef nonnull %i.n) #27
  %i.hh = load i32, ptr %i.s, align 8, !tbaa !47  ; 2 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !45 ; 3 uses
  br i1 %i.hi, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %Vec_WrdFree.exit105, %bb.n
  %i.hj = phi i32 [ %i.hr, %bb.n ], [ %i.hh, %Vec_WrdFree.exit105 ]
  %i.hk = phi ptr [ %i.hs, %bb.n ], [ %.pre.i.i, %Vec_WrdFree.exit105 ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.n ], [ 0, %Vec_WrdFree.exit105 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %indvars.iv.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !31 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.hn, null
  br i1 %.not15.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.hn) #27
  %i.ho = load ptr, ptr %i.x, align 8, !tbaa !45  ; 2 uses
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %indvars.iv.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store ptr null, ptr %i.hq, align 8, !tbaa !31
  %.pre18.i.i = load i32, ptr %i.s, align 8, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i
  %i.hr = phi i32 [ %.pre18.i.i, %bb.m ], [ %i.hj, %.lr.ph.i.i ] ; 2 uses
  %i.hs = phi ptr [ %i.ho, %bb.m ], [ %i.hk, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ht = sext i32 %i.hr to i64
  %i.hu = icmp slt i64 %indvars.iv.next.i.i, %i.ht
  br i1 %i.hu, label %.lr.ph.i.i, label %._crit_edge.thread.i.i, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %Vec_WrdFree.exit105
  %.not.i.i106 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i106, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.n, %._crit_edge.i.i
  %i.hv = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.hs, %bb.n ]
  tail call void @free(ptr noundef nonnull %i.hv) #27
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.s) #27
  %.not66 = icmp eq ptr %i.h, null
  br i1 %.not66, label %bb.p, label %bb.o

bb.o:                                             ; preds = %Vec_WecFree.exit
  tail call void @free(ptr noundef nonnull %i.h) #27
  br label %bb.p

bb.p:                                             ; preds = %Vec_WecFree.exit, %bb.o
  %.not67 = icmp eq ptr %i.i, null
  br i1 %.not67, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.i) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.ab) #27
  %i.hw = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.ab) #27
  tail call void @Gia_ManStop(ptr noundef nonnull %i.ab) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.hw
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManBuildMuxes6_rec(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 {
bb.a:
  switch i64 %1, label %.preheader.preheader [
    i64 0, label %bb.f
    i64 -1, label %bb.b
  ]

.preheader.preheader:                             ; preds = %bb.a
  %smin = tail call i32 @llvm.smin.i32(i32 %2, i32 0) ; 2 uses
  %i.a = add i32 %smin, -1                        ; 2 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %.preheader._crit_edge

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.c = zext nneg i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.f

.preheader:                                       ; preds = %bb.c
  %i.d = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.preheader._crit_edge, !llvm.loop !244

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %.pre = shl nuw nsw i32 1, %i.a
  %.pre31 = zext nneg i32 %.pre to i64
  br label %split

bb.c:                                             ; preds = %.lr.ph, %.preheader
  %i.f = phi i32 [ %2, %.lr.ph ], [ %i.d, %.preheader ]
  %indvars.iv39 = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv39, -1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.g = shl nuw i32 1, %indvars
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = lshr i64 %1, %i.h
  %i.j = and i64 %indvars.iv.next, 4294967295
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26
  %i.m = xor i64 %i.i, %1
  %i.n = and i64 %i.l, %i.m
  %.not29 = icmp eq i64 %i.n, 0
  br i1 %.not29, label %.preheader, label %split, !llvm.loop !244

split:                                            ; preds = %bb.c, %.preheader._crit_edge
  %.pre-phi32 = phi i64 [ %.pre31, %.preheader._crit_edge ], [ %i.h, %bb.c ] ; 2 uses
  %.0.in.lcssa = phi i32 [ %smin, %.preheader._crit_edge ], [ %i.f, %bb.c ]
  %.0.lcssa = phi i32 [ %i.a, %.preheader._crit_edge ], [ %indvars, %bb.c ] ; 3 uses
  %i.o = sext i32 %.0.lcssa to i64                ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26
  %i.r = and i64 %i.q, %1                         ; 2 uses
  %i.s = shl i64 %i.r, %.pre-phi32
  %i.t = or i64 %i.s, %i.r
  %i.u = tail call i32 @Gia_ManBuildMuxes6_rec(ptr noundef %0, i64 noundef %i.t, i32 noundef %.0.lcssa, ptr noundef %3)
  %i.v = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.o
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26
  %i.x = and i64 %i.w, %1                         ; 2 uses
  %i.y = lshr i64 %i.x, %.pre-phi32
  %i.z = or i64 %i.y, %i.x
  %i.aa = tail call i32 @Gia_ManBuildMuxes6_rec(ptr noundef %0, i64 noundef %i.z, i32 noundef %.0.lcssa, ptr noundef %3)
  %.not28 = icmp eq ptr %3, null
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %split
  %i.ab = getelementptr inbounds [4 x i8], ptr %3, i64 %i.o
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !17
  %i.ad = add nsw i32 %i.ac, 1
  br label %bb.e

bb.e:                                             ; preds = %split, %bb.d
  %i.ae = phi i32 [ %i.ad, %bb.d ], [ %.0.in.lcssa, %split ]
  %i.af = shl nsw i32 %i.ae, 1                    ; 2 uses
  %i.ag = or disjoint i32 %i.af, 1
  %i.ah = tail call fastcc i32 @Gia_ManAppendAnd(ptr noundef %0, i32 noundef %i.ag, i32 noundef %i.u)
  %i.ai = tail call fastcc i32 @Gia_ManAppendAnd(ptr noundef %0, i32 noundef %i.af, i32 noundef %i.aa)
  %i.aj = xor i32 %i.ah, 1
  %i.ak = xor i32 %i.ai, 1
  %i.al = tail call fastcc i32 @Gia_ManAppendAnd(ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.ak)
  %i.am = xor i32 %i.al, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.b
  %.025 = phi i32 [ %i.am, %bb.e ], [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManBuildMuxes_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp slt i32 %2, 7                       ; 2 uses
  %i.b = add nsw i32 %2, -6                       ; 2 uses
  %i.c = shl nuw i32 1, %i.b                      ; 4 uses
  %i.d = select i1 %i.a, i32 1, i32 %i.c
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !26
  %i.f = tail call i32 @Gia_ManBuildMuxes6_rec(ptr noundef %0, i64 noundef %i.e, i32 noundef %2, ptr noundef %3)
  br label %Abc_TtIsConst0.exit.thread

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 31
  br i1 %.not, label %Abc_TtIsConst0.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtIsConst0.exit.thread, label %.lr.ph.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.d, label %.lr.ph.preheader.i45

.lr.ph.preheader.i45:                             ; preds = %.lr.ph.i
  %wide.trip.count.i46 = zext nneg i32 %i.d to i64
  br label %.lr.ph.i47

bb.e:                                             ; preds = %.lr.ph.i47
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i50, %wide.trip.count.i46
  br i1 %exitcond.not.i51, label %Abc_TtIsConst0.exit.thread, label %.lr.ph.i47, !llvm.loop !3

.lr.ph.i47:                                       ; preds = %bb.e, %.lr.ph.preheader.i45
  %indvars.iv.i48 = phi i64 [ 0, %.lr.ph.preheader.i45 ], [ %indvars.iv.next.i50, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %.not.i49 = icmp eq i64 %i.j, -1
  br i1 %.not.i49, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i47
  %i.k = sext i32 %i.c to i64
  %.idx.i = shl nsw i64 %i.k, 3
  %i.l = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %smax56.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count57.i = zext nneg i32 %smax56.i to i64
  %i.m = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %Abc_TtHasVar.exit
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %Abc_TtHasVar.exit ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.n = icmp samesign ult i64 %indvars.iv, 7
  br i1 %i.n, label %.lr.ph.i57, label %.preheader.lr.ph.i

.lr.ph.i57:                                       ; preds = %bb.f
  %i.o = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %i.p = shl nuw nsw i32 1, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %Abc_TtHasVar.exit, label %bb.h, !llvm.loop !245

bb.h:                                             ; preds = %bb.g, %.lr.ph.i57
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph.i57 ], [ %indvars.iv.next54.i, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv53.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %i.v = lshr i64 %i.u, %i.q
  %i.w = xor i64 %i.v, %i.u
  %i.x = and i64 %i.w, %i.s
  %.not39.i = icmp eq i64 %i.x, 0
  br i1 %.not39.i, label %bb.g, label %.loopexit

.preheader.lr.ph.i:                               ; preds = %bb.f
  %i.y = trunc i64 %indvars.iv to i32
  %i.z = add i32 %i.y, -7                         ; 3 uses
  %.not47.i = icmp eq i32 %i.z, 31
  %i.aa = shl i32 2, %i.z
  %i.ab = sext i32 %i.aa to i64
  br i1 %.not47.i, label %Abc_TtHasVar.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.ac = shl nuw nsw i32 1, %i.z                 ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %wide.trip.count.i53 = zext nneg i32 %i.ac to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03343.us.i = phi ptr [ %i.ah, %._crit_edge.us.i ], [ %1, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03343.us.i, i64 %i.ad
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next.i55, %wide.trip.count.i53
  br i1 %exitcond.not.i56, label %._crit_edge.us.i, label %bb.j, !llvm.loop !4

bb.j:                                             ; preds = %bb.i, %.preheader.us.i
  %indvars.iv.i54 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i55, %bb.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i, i64 %indvars.iv.i54
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i54
  %i.ag = load i64, ptr %gep.i, align 8, !tbaa !26
  %.not.us.i = icmp eq i64 %i.af, %i.ag
  br i1 %.not.us.i, label %bb.i, label %.loopexit.loopexit

._crit_edge.us.i:                                 ; preds = %bb.i
  %i.ah = getelementptr inbounds [8 x i8], ptr %.03343.us.i, i64 %i.ab ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.l
  br i1 %i.ai, label %.preheader.us.i, label %Abc_TtHasVar.exit, !llvm.loop !5

Abc_TtHasVar.exit:                                ; preds = %._crit_edge.us.i, %bb.g, %.preheader.lr.ph.i
  %i.aj = icmp sgt i64 %indvars.iv, 1
  br i1 %i.aj, label %bb.f, label %.thread, !llvm.loop !246

.loopexit.loopexit:                               ; preds = %bb.j
  %i.ak = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.loopexit.loopexit
  %.07682 = phi i32 [ %i.ak, %.loopexit.loopexit ], [ %i.o, %bb.h ] ; 3 uses
  %.0.in7585 = trunc i64 %indvars.iv to i32       ; 4 uses
  %i.al = icmp slt i32 %.0.in7585, 7
  br i1 %i.al, label %.thread, label %bb.k

.thread:                                          ; preds = %Abc_TtHasVar.exit, %.loopexit
  %.0.in73 = phi i32 [ %.0.in7585, %.loopexit ], [ 0, %Abc_TtHasVar.exit ]
  %i.am = load i64, ptr %1, align 8, !tbaa !26
  %i.an = tail call i32 @Gia_ManBuildMuxes6_rec(ptr noundef %0, i64 noundef %i.am, i32 noundef %.0.in73, ptr noundef %3)
  br label %Abc_TtIsConst0.exit.thread

bb.k:                                             ; preds = %.loopexit
  %i.ao = tail call i32 @Gia_ManBuildMuxes_rec(ptr noundef %0, ptr noundef %1, i32 noundef %.07682, ptr noundef %3)
  %i.ap = add nsw i32 %.0.in7585, -7
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ar
  %i.at = tail call i32 @Gia_ManBuildMuxes_rec(ptr noundef %0, ptr noundef nonnull %i.as, i32 noundef %.07682, ptr noundef %3)
  %.not43 = icmp eq ptr %3, null
  br i1 %.not43, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = zext nneg i32 %.07682 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17
  %i.ax = add nsw i32 %i.aw, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ay = phi i32 [ %i.ax, %bb.l ], [ %.0.in7585, %bb.k ]
  %i.az = shl nsw i32 %i.ay, 1                    ; 2 uses
  %i.ba = or disjoint i32 %i.az, 1
  %i.bb = tail call fastcc i32 @Gia_ManAppendAnd(ptr noundef %0, i32 noundef %i.ba, i32 noundef %i.ao)
  %i.bc = tail call fastcc i32 @Gia_ManAppendAnd(ptr noundef %0, i32 noundef %i.az, i32 noundef %i.at)
  %i.bd = xor i32 %i.bb, 1
  %i.be = xor i32 %i.bc, 1
  %i.bf = tail call fastcc i32 @Gia_ManAppendAnd(ptr noundef %0, i32 noundef %i.bd, i32 noundef %i.be)
  %i.bg = xor i32 %i.bf, 1
  br label %Abc_TtIsConst0.exit.thread

Abc_TtIsConst0.exit.thread:                       ; preds = %bb.d, %bb.e, %bb.c, %bb.m, %.thread, %bb.b
  %.038 = phi i32 [ %i.f, %bb.b ], [ %i.bg, %bb.m ], [ 1, %bb.e ], [ %i.an, %.thread ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManBuildMuxesTest(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @Gia_ManStart(i32 noundef 1000) #27 ; 8 uses
  %i.b = tail call noalias noundef dereferenceable_or_null(6) ptr @malloc(i64 noundef 6) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i64 6, i1 false) #27
  store ptr %i.b, ptr %i.a, align 8, !tbaa !64
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.021 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  tail call fastcc void @Gia_ManAppendCi(ptr noundef nonnull %i.a)
  %i.d = add nuw nsw i32 %.021, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !247

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.a) #27
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph24, label %._crit_edge25

.lr.ph24:                                         ; preds = %._crit_edge
  %i.f = tail call i32 @llvm.smax.i32(i32 %1, i32 6)
  %i.g = add nsw i32 %i.f, -6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph24, %bb.b
  %.122 = phi i32 [ 0, %.lr.ph24 ], [ %i.l, %bb.b ] ; 2 uses
  %i.h = shl i32 %.122, %i.g
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.i
  %i.k = tail call i32 @Gia_ManBuildMuxes_rec(ptr noundef nonnull %i.a, ptr noundef %i.j, i32 noundef %1, ptr noundef %3)
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.a, i32 noundef %i.k)
  %i.l = add nuw nsw i32 %.122, 1                 ; 2 uses
  %exitcond26.not = icmp eq i32 %i.l, %2
  br i1 %exitcond26.not, label %._crit_edge25, label %bb.b, !llvm.loop !248

._crit_edge25:                                    ; preds = %bb.b, %._crit_edge
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.a) #27
  %i.m = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.a) #27
  tail call void @Gia_ManStop(ptr noundef nonnull %i.a) #27
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManBuildMuxes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = load i32, ptr %0, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23
  %.not = icmp eq ptr %1, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = select i1 %.not, ptr %i.f, ptr %1
  %i.h = tail call ptr @Gia_ManBuildMuxesTest(ptr noundef %i.b, i32 noundef %i.c, i32 noundef %i.e, ptr noundef nonnull %i.g)
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define void @Gia_ManDumpMuxes(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = load i32, ptr %0, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23
  %.not.i = icmp eq ptr %2, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = select i1 %.not.i, ptr %i.f, ptr %2
  %i.h = tail call ptr @Gia_ManBuildMuxesTest(ptr noundef %i.b, i32 noundef %i.c, i32 noundef %i.e, ptr noundef nonnull %i.g) ; 2 uses
  tail call void @Gia_AigerWrite(ptr noundef %i.h, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #27
  tail call void @Gia_ManStop(ptr noundef %i.h) #27
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %1) ; 0 uses
  ret void
}

declare void @Gia_AigerWrite(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define ptr @Gia_ManCreateMuxGia(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @Gia_ManContructTree(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = load i32, ptr %i.a, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %.not.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.h = select i1 %.not.i, ptr %i.g, ptr %4
  %i.i = tail call ptr @Gia_ManBuildMuxesTest(ptr noundef %i.c, i32 noundef %i.d, i32 noundef %i.f, ptr noundef nonnull %i.h)
  tail call void @Gia_ManTreeFree(ptr noundef nonnull %i.a)
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define void @Gia_ManDumpMuxGia(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @Gia_ManContructTree(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = load i32, ptr %i.a, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.h = select i1 %.not.i.i, ptr %i.g, ptr %4
  %i.i = tail call ptr @Gia_ManBuildMuxesTest(ptr noundef %i.c, i32 noundef %i.d, i32 noundef %i.f, ptr noundef nonnull %i.h) ; 2 uses
  tail call void @Gia_AigerWrite(ptr noundef %i.i, ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #27
  tail call void @Gia_ManStop(ptr noundef %i.i) #27
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %5) ; 0 uses
  tail call void @Gia_ManTreeFree(ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Gia_TryPermOptCare(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  %i.b = alloca [16 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.c = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #27
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %7, align 8, !tbaa !37
  %.neg69 = mul i64 %i.e, -1000000
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !38
  %.neg = sdiv i64 %i.g, -1000
  %.neg70 = add i64 %.neg, %.neg69
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg70, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.h = mul nsw i32 %3, %2                       ; 4 uses
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = call noalias ptr @malloc(i64 noundef %i.j) #25 ; 11 uses
  %i.l = icmp sgt i32 %i.h, 0                     ; 2 uses
  br i1 %i.l, label %.lr.ph18.preheader.i.i, label %Abc_TtDup.exit

.lr.ph18.preheader.i.i:                           ; preds = %Abc_Clock.exit
  %wide.trip.count24.i.i = zext nneg i32 %i.h to i64
  %i.m = shl nuw nsw i64 %wide.trip.count24.i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr readonly align 8 %0, i64 %i.m, i1 false), !tbaa !26
  br label %Abc_TtDup.exit

Abc_TtDup.exit:                                   ; preds = %Abc_Clock.exit, %.lr.ph18.preheader.i.i
  %i.n = add nsw i32 %2, 1
  %i.o = mul nsw i32 %i.n, %3
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3                      ; 2 uses
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #25 ; 6 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 -1, i64 %i.q, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.s = call i32 @Gia_ManRandom(i32 noundef 1) #27 ; 0 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_TtDup.exit
  %i.u = sext i32 %1 to i64
  %i.v = shl nsw i64 %i.u, 2                      ; 4 uses
  %.not50 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %wide.trip.count24.i = zext nneg i32 %i.h to i64
  %i.w = shl nuw nsw i64 %wide.trip.count24.i, 3  ; 4 uses
  br i1 %.not50, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.lr.ph18.preheader.i51.us.us
  %.074.us.us = phi i32 [ %.165.us.us, %.lr.ph18.preheader.i51.us.us ], [ 1000000000, %.lr.ph.split.us ] ; 2 uses
  %.04273.us.us = phi i32 [ %.14363.us.us, %.lr.ph18.preheader.i51.us.us ], [ -1, %.lr.ph.split.us ]
  %.04471.us.us = phi i32 [ %i.ab, %.lr.ph18.preheader.i51.us.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.x = icmp ne i32 %.04471.us.us, 0
  %i.y = zext i1 %i.x to i32
  %i.z = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.k, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.y, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.aa = icmp sgt i32 %.074.us.us, %i.z
  br i1 %i.aa, label %.lr.ph18.preheader.i.us.us, label %.lr.ph18.preheader.i51.us.us

.lr.ph18.preheader.i.us.us:                       ; preds = %.lr.ph.split.us.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.r, ptr align 8 %i.k, i64 %i.w, i1 false), !tbaa !26
  br label %.lr.ph18.preheader.i51.us.us

.lr.ph18.preheader.i51.us.us:                     ; preds = %.lr.ph18.preheader.i.us.us, %.lr.ph.split.us.split.us
  %.165.us.us = phi i32 [ %.074.us.us, %.lr.ph.split.us.split.us ], [ %i.z, %.lr.ph18.preheader.i.us.us ] ; 2 uses
  %.14363.us.us = phi i32 [ %.04273.us.us, %.lr.ph.split.us.split.us ], [ %.04471.us.us, %.lr.ph18.preheader.i.us.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %0, i64 %i.w, i1 false), !tbaa !26
  %i.ab = add nuw nsw i32 %.04471.us.us, 1        ; 2 uses
  %exitcond95.not = icmp eq i32 %i.ab, %4
  br i1 %exitcond95.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !249

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.lr.ph18.preheader.i51.us
  %.074.us = phi i32 [ %.165.us, %.lr.ph18.preheader.i51.us ], [ 1000000000, %.lr.ph.split.us ] ; 2 uses
  %.04273.us = phi i32 [ %.14363.us, %.lr.ph18.preheader.i51.us ], [ -1, %.lr.ph.split.us ]
  %.04471.us = phi i32 [ %i.ag, %.lr.ph18.preheader.i51.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.ac = icmp ne i32 %.04471.us, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.k, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.ad, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5) ; 2 uses
  %i.af = icmp sgt i32 %.074.us, %i.ae
  br i1 %i.af, label %.lr.ph18.preheader.i.us, label %.lr.ph18.preheader.i51.us

.lr.ph18.preheader.i.us:                          ; preds = %.lr.ph.split.us.split
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.r, ptr align 8 %i.k, i64 %i.w, i1 false), !tbaa !26
  br label %.lr.ph18.preheader.i51.us

.lr.ph18.preheader.i51.us:                        ; preds = %.lr.ph18.preheader.i.us, %.lr.ph.split.us.split
  %.165.us = phi i32 [ %.074.us, %.lr.ph.split.us.split ], [ %i.ae, %.lr.ph18.preheader.i.us ] ; 2 uses
  %.14363.us = phi i32 [ %.04273.us, %.lr.ph.split.us.split ], [ %.04471.us, %.lr.ph18.preheader.i.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %0, i64 %i.w, i1 false), !tbaa !26
  %putchar.us = call i32 @putchar(i32 10)         ; 0 uses
  %i.ag = add nuw nsw i32 %.04471.us, 1           ; 2 uses
  %exitcond94.not = icmp eq i32 %i.ag, %4
  br i1 %exitcond94.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !249

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not50, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %Abc_TtCopy.exit57.us81
  %.074.us77 = phi i32 [ %.164.us82, %Abc_TtCopy.exit57.us81 ], [ 1000000000, %.lr.ph.split ] ; 2 uses
  %.04273.us78 = phi i32 [ %.14362.us83, %Abc_TtCopy.exit57.us81 ], [ -1, %.lr.ph.split ]
  %.04471.us79 = phi i32 [ %i.al, %Abc_TtCopy.exit57.us81 ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.ah = icmp ne i32 %.04471.us79, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.k, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.ak = icmp sgt i32 %.074.us77, %i.aj
  br i1 %i.ak, label %bb.c, label %Abc_TtCopy.exit57.us81

bb.c:                                             ; preds = %.lr.ph.split.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  br label %Abc_TtCopy.exit57.us81

Abc_TtCopy.exit57.us81:                           ; preds = %.lr.ph.split.split.us, %bb.c
  %.164.us82 = phi i32 [ %i.aj, %bb.c ], [ %.074.us77, %.lr.ph.split.split.us ] ; 2 uses
  %.14362.us83 = phi i32 [ %.04471.us79, %bb.c ], [ %.04273.us78, %.lr.ph.split.split.us ] ; 2 uses
  %i.al = add nuw nsw i32 %.04471.us79, 1         ; 2 uses
  %exitcond93.not = icmp eq i32 %i.al, %4
  br i1 %exitcond93.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !249

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %Abc_TtCopy.exit57
  %.074 = phi i32 [ %.164, %Abc_TtCopy.exit57 ], [ 1000000000, %.lr.ph.split ] ; 2 uses
  %.04273 = phi i32 [ %.14362, %Abc_TtCopy.exit57 ], [ -1, %.lr.ph.split ]
  %.04471 = phi i32 [ %i.aq, %Abc_TtCopy.exit57 ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.am = icmp ne i32 %.04471, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.k, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.an, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5) ; 2 uses
  %i.ap = icmp sgt i32 %.074, %i.ao
  br i1 %i.ap, label %bb.d, label %Abc_TtCopy.exit57

bb.d:                                             ; preds = %.lr.ph.split.split
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  br label %Abc_TtCopy.exit57

Abc_TtCopy.exit57:                                ; preds = %.lr.ph.split.split, %bb.d
  %.164 = phi i32 [ %i.ao, %bb.d ], [ %.074, %.lr.ph.split.split ] ; 2 uses
  %.14362 = phi i32 [ %.04471, %bb.d ], [ %.04273, %.lr.ph.split.split ] ; 2 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.aq = add nuw nsw i32 %.04471, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !249

._crit_edge:                                      ; preds = %Abc_TtCopy.exit57, %Abc_TtCopy.exit57.us81, %.lr.ph18.preheader.i51.us, %.lr.ph18.preheader.i51.us.us, %Abc_TtDup.exit
  %.042.lcssa = phi i32 [ -1, %Abc_TtDup.exit ], [ %.14362.us83, %Abc_TtCopy.exit57.us81 ], [ %.14363.us, %.lr.ph18.preheader.i51.us ], [ %.14363.us.us, %.lr.ph18.preheader.i51.us.us ], [ %.14362, %Abc_TtCopy.exit57 ]
  %.0.lcssa = phi i32 [ 1000000000, %Abc_TtDup.exit ], [ %.164.us82, %Abc_TtCopy.exit57.us81 ], [ %.165.us, %.lr.ph18.preheader.i51.us ], [ %.165.us.us, %.lr.ph18.preheader.i51.us.us ], [ %.164, %Abc_TtCopy.exit57 ]
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.042.lcssa, i32 noundef %.0.lcssa) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.not48 = icmp eq ptr %i.k, null
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.k) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.as = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #27
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %Abc_Clock.exit59, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load i64, ptr %6, align 8, !tbaa !37
  %i.av = mul nsw i64 %i.au, 1000000
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !38
  %i.ay = sdiv i64 %i.ax, 1000
  %i.az = add nsw i64 %i.ay, %i.av
  br label %Abc_Clock.exit59

Abc_Clock.exit59:                                 ; preds = %bb.i, %bb.j
  %.0.i58 = phi i64 [ %i.az, %bb.j ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ba = add i64 %.0.i58, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11)
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, double noundef %i.bc)
  br label %bb.k

bb.k:                                             ; preds = %Abc_Clock.exit59, %bb.h
  %i.bd = call ptr @Abc_TtSimpleMinArrayNew(ptr noundef %i.r, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a)
  %.not49 = icmp eq ptr %i.r, null
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.r) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.bd
}

; Function Attrs: nounwind uwtable
define ptr @Gia_TryPermOpt2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  %i.b = alloca [16 x i32], align 16              ; 11 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #27
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %7, align 8, !tbaa !37
  %.neg72 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %.neg = sdiv i64 %i.h, -1000
  %.neg73 = add i64 %.neg, %.neg72
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg73, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.i = mul i32 %3, %2                           ; 6 uses
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #25 ; 13 uses
  %i.m = icmp sgt i32 %i.i, 0                     ; 3 uses
  br i1 %i.m, label %.lr.ph18.preheader.i.i, label %Abc_TtDup.exit

.lr.ph18.preheader.i.i:                           ; preds = %Abc_Clock.exit
  %wide.trip.count24.i.i = zext nneg i32 %i.i to i64
  %i.n = shl nuw nsw i64 %wide.trip.count24.i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr readonly align 8 %0, i64 %i.n, i1 false), !tbaa !26
  br label %Abc_TtDup.exit

Abc_TtDup.exit:                                   ; preds = %Abc_Clock.exit, %.lr.ph18.preheader.i.i
  %i.o = sdiv i32 %i.i, 2                         ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 -1, ptr %i.c, align 4, !tbaa !17
  %i.s = call i32 @Gia_ManRandom(i32 noundef 1) #27 ; 0 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_TtDup.exit
  %i.u = sext i32 %1 to i64
  %i.v = shl nsw i64 %i.u, 2                      ; 4 uses
  %i.w = icmp sgt i32 %i.i, 1
  %wide.trip.count24.i57 = zext i32 %i.i to i64   ; 2 uses
  %.not55 = icmp eq i32 %5, 0                     ; 3 uses
  br i1 %i.w, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count24.i = zext nneg i32 %i.o to i64
  %i.x = shl nuw nsw i64 %wide.trip.count24.i, 3
  %i.y = shl nuw nsw i64 %wide.trip.count24.i57, 3
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.e
  %.078.us = phi i32 [ %.171.us, %bb.e ], [ 1000000000, %.lr.ph.split.us.preheader ] ; 3 uses
  %.04577.us = phi i32 [ %.14669.us, %bb.e ], [ -1, %.lr.ph.split.us.preheader ] ; 2 uses
  %.04774.us = phi i32 [ %i.af, %bb.e ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.z = icmp ne i32 %.04774.us, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.aa, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5) ; 0 uses
  %i.ac = call ptr @Abc_TtMinArray(ptr noundef %i.l, i32 noundef %2, i32 noundef %1, ptr noundef nonnull %i.c, i32 noundef %5) ; 3 uses
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.ae = icmp sgt i32 %.078.us, %i.ad
  br i1 %i.ae, label %.lr.ph18.preheader.i.us, label %Abc_TtCopy.exit.us

.lr.ph18.preheader.i.us:                          ; preds = %.lr.ph.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.r, ptr align 8 %i.ac, i64 %i.x, i1 false), !tbaa !26
  br label %Abc_TtCopy.exit.thread.us

Abc_TtCopy.exit.us:                               ; preds = %.lr.ph.split.us
  %.not54.us = icmp eq ptr %i.ac, null
  br i1 %.not54.us, label %bb.c, label %Abc_TtCopy.exit.thread.us

Abc_TtCopy.exit.thread.us:                        ; preds = %.lr.ph18.preheader.i.us, %Abc_TtCopy.exit.us
  %.170.us = phi i32 [ %.078.us, %Abc_TtCopy.exit.us ], [ %i.ad, %.lr.ph18.preheader.i.us ]
  %.14668.us = phi i32 [ %.04577.us, %Abc_TtCopy.exit.us ], [ %.04774.us, %.lr.ph18.preheader.i.us ]
  call void @free(ptr noundef nonnull %i.ac) #27
  br label %bb.c

bb.c:                                             ; preds = %Abc_TtCopy.exit.thread.us, %Abc_TtCopy.exit.us
  %.171.us = phi i32 [ %.078.us, %Abc_TtCopy.exit.us ], [ %.170.us, %Abc_TtCopy.exit.thread.us ] ; 2 uses
  %.14669.us = phi i32 [ %.04577.us, %Abc_TtCopy.exit.us ], [ %.14668.us, %Abc_TtCopy.exit.thread.us ] ; 2 uses
  br i1 %i.m, label %.lr.ph18.i58.us.preheader, label %Abc_TtCopy.exit62.us

.lr.ph18.i58.us.preheader:                        ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %0, i64 %i.y, i1 false), !tbaa !26
  br label %Abc_TtCopy.exit62.us

Abc_TtCopy.exit62.us:                             ; preds = %.lr.ph18.i58.us.preheader, %bb.c
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %Abc_TtCopy.exit62.us
  %putchar.us = call i32 @putchar(i32 10)         ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %Abc_TtCopy.exit62.us
  %i.af = add nuw nsw i32 %.04774.us, 1           ; 2 uses
  %exitcond120.not = icmp eq i32 %i.af, %4
  br i1 %exitcond120.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !250

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.m, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ag = shl nuw nsw i64 %wide.trip.count24.i57, 3
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.h
  %.078.us81 = phi i32 [ %.1.us86, %bb.h ], [ 1000000000, %.lr.ph.split.split.us.preheader ] ; 2 uses
  %.04577.us82 = phi i32 [ %.146.us85, %bb.h ], [ -1, %.lr.ph.split.split.us.preheader ]
  %.04774.us83 = phi i32 [ %i.an, %bb.h ], [ 0, %.lr.ph.split.split.us.preheader ] ; 3 uses
  %i.ah = icmp ne i32 %.04774.us83, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5) ; 0 uses
  %i.ak = call ptr @Abc_TtMinArray(ptr noundef %i.l, i32 noundef %2, i32 noundef %1, ptr noundef nonnull %i.c, i32 noundef %5) ; 2 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.am = icmp sgt i32 %.078.us81, %i.al
  br i1 %i.am, label %bb.f, label %Abc_TtCopy.exit.us84

bb.f:                                             ; preds = %.lr.ph.split.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  br label %Abc_TtCopy.exit.us84

Abc_TtCopy.exit.us84:                             ; preds = %bb.f, %.lr.ph.split.split.us
  %.146.us85 = phi i32 [ %.04577.us82, %.lr.ph.split.split.us ], [ %.04774.us83, %bb.f ] ; 2 uses
  %.1.us86 = phi i32 [ %.078.us81, %.lr.ph.split.split.us ], [ %i.al, %bb.f ] ; 2 uses
  %.not54.us87 = icmp eq ptr %i.ak, null
  br i1 %.not54.us87, label %.lr.ph18.preheader.i56.us89, label %Abc_TtCopy.exit.thread.us88

Abc_TtCopy.exit.thread.us88:                      ; preds = %Abc_TtCopy.exit.us84
  call void @free(ptr noundef nonnull %i.ak) #27
  br label %.lr.ph18.preheader.i56.us89

.lr.ph18.preheader.i56.us89:                      ; preds = %Abc_TtCopy.exit.thread.us88, %Abc_TtCopy.exit.us84
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %0, i64 %i.ag, i1 false), !tbaa !26
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph18.preheader.i56.us89
  %putchar.us96 = call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph18.preheader.i56.us89
  %i.an = add nuw nsw i32 %.04774.us83, 1         ; 2 uses
  %exitcond119.not = icmp eq i32 %i.an, %4
  br i1 %exitcond119.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !250

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not55, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %Abc_TtCopy.exit62.us109
  %.078.us101 = phi i32 [ %.1.us106, %Abc_TtCopy.exit62.us109 ], [ 1000000000, %.lr.ph.split.split ] ; 2 uses
  %.04577.us102 = phi i32 [ %.146.us105, %Abc_TtCopy.exit62.us109 ], [ -1, %.lr.ph.split.split ]
  %.04774.us103 = phi i32 [ %i.au, %Abc_TtCopy.exit62.us109 ], [ 0, %.lr.ph.split.split ] ; 3 uses
  %i.ao = icmp ne i32 %.04774.us103, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.ap, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.ar = call ptr @Abc_TtMinArray(ptr noundef %i.l, i32 noundef %2, i32 noundef %1, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %i.as = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.at = icmp sgt i32 %.078.us101, %i.as
  br i1 %i.at, label %bb.i, label %Abc_TtCopy.exit.us104

bb.i:                                             ; preds = %.lr.ph.split.split.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  br label %Abc_TtCopy.exit.us104

Abc_TtCopy.exit.us104:                            ; preds = %bb.i, %.lr.ph.split.split.split.us
  %.146.us105 = phi i32 [ %.04577.us102, %.lr.ph.split.split.split.us ], [ %.04774.us103, %bb.i ] ; 2 uses
  %.1.us106 = phi i32 [ %.078.us101, %.lr.ph.split.split.split.us ], [ %i.as, %bb.i ] ; 2 uses
  %.not54.us107 = icmp eq ptr %i.ar, null
  br i1 %.not54.us107, label %Abc_TtCopy.exit62.us109, label %Abc_TtCopy.exit.thread.us108

Abc_TtCopy.exit.thread.us108:                     ; preds = %Abc_TtCopy.exit.us104
  call void @free(ptr noundef nonnull %i.ar) #27
  br label %Abc_TtCopy.exit62.us109

Abc_TtCopy.exit62.us109:                          ; preds = %Abc_TtCopy.exit.thread.us108, %Abc_TtCopy.exit.us104
  %i.au = add nuw nsw i32 %.04774.us103, 1        ; 2 uses
  %exitcond118.not = icmp eq i32 %i.au, %4
  br i1 %exitcond118.not, label %._crit_edge, label %.lr.ph.split.split.split.us, !llvm.loop !250

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %Abc_TtCopy.exit62
  %.078 = phi i32 [ %.1, %Abc_TtCopy.exit62 ], [ 1000000000, %.lr.ph.split.split ] ; 2 uses
  %.04577 = phi i32 [ %.146, %Abc_TtCopy.exit62 ], [ -1, %.lr.ph.split.split ]
  %.04774 = phi i32 [ %i.bb, %Abc_TtCopy.exit62 ], [ 0, %.lr.ph.split.split ] ; 3 uses
  %i.av = icmp ne i32 %.04774, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.aw, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5) ; 0 uses
  %i.ay = call ptr @Abc_TtMinArray(ptr noundef %i.l, i32 noundef %2, i32 noundef %1, ptr noundef nonnull %i.c, i32 noundef %5) ; 2 uses
  %i.az = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.ba = icmp sgt i32 %.078, %i.az
  br i1 %i.ba, label %bb.j, label %Abc_TtCopy.exit

bb.j:                                             ; preds = %.lr.ph.split.split.split
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %bb.j, %.lr.ph.split.split.split
  %.146 = phi i32 [ %.04577, %.lr.ph.split.split.split ], [ %.04774, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %.078, %.lr.ph.split.split.split ], [ %i.az, %bb.j ] ; 2 uses
  %.not54 = icmp eq ptr %i.ay, null
  br i1 %.not54, label %Abc_TtCopy.exit62, label %Abc_TtCopy.exit.thread

Abc_TtCopy.exit.thread:                           ; preds = %Abc_TtCopy.exit
  call void @free(ptr noundef nonnull %i.ay) #27
  br label %Abc_TtCopy.exit62

Abc_TtCopy.exit62:                                ; preds = %Abc_TtCopy.exit, %Abc_TtCopy.exit.thread
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.bb = add nuw nsw i32 %.04774, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !250

._crit_edge:                                      ; preds = %Abc_TtCopy.exit62, %Abc_TtCopy.exit62.us109, %bb.h, %bb.e, %Abc_TtDup.exit
  %.045.lcssa = phi i32 [ -1, %Abc_TtDup.exit ], [ %.146.us85, %bb.h ], [ %.146.us105, %Abc_TtCopy.exit62.us109 ], [ %.14669.us, %bb.e ], [ %.146, %Abc_TtCopy.exit62 ]
  %.0.lcssa = phi i32 [ 1000000000, %Abc_TtDup.exit ], [ %.1.us86, %bb.h ], [ %.1.us106, %Abc_TtCopy.exit62.us109 ], [ %.171.us, %bb.e ], [ %.1, %Abc_TtCopy.exit62 ]
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.045.lcssa, i32 noundef %.0.lcssa) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.not52 = icmp eq ptr %i.l, null
  br i1 %.not52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.l) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #27
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %Abc_Clock.exit64, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i64, ptr %6, align 8, !tbaa !37
  %i.bg = mul nsw i64 %i.bf, 1000000
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !38
  %i.bj = sdiv i64 %i.bi, 1000
  %i.bk = add nsw i64 %i.bj, %i.bg
  br label %Abc_Clock.exit64

Abc_Clock.exit64:                                 ; preds = %bb.o, %bb.p
  %.0.i63 = phi i64 [ %i.bk, %bb.p ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bl = add i64 %.0.i63, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11)
  %i.bm = sitofp i64 %i.bl to double
  %i.bn = fdiv double %i.bm, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, double noundef %i.bn)
  br label %bb.q

bb.q:                                             ; preds = %Abc_Clock.exit64, %bb.n
  %i.bo = sdiv i32 %2, 2
  %i.bp = call ptr @Gia_ManContructTree(ptr noundef readonly %i.r, i32 noundef %1, i32 noundef %i.bo, i32 noundef %3) ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 520
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !22
  %i.bs = load i32, ptr %i.bp, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23
  %i.bv = call ptr @Gia_ManBuildMuxesTest(ptr noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bu, ptr noundef nonnull %i.a)
  call void @Gia_ManTreeFree(ptr noundef nonnull %i.bp)
  %.not53 = icmp eq ptr %i.r, null
  br i1 %.not53, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.r) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.bv
}

; Function Attrs: nounwind uwtable
define ptr @Gia_TryPermOpt(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca [16 x i32], align 16              ; 11 uses
  %i.c = alloca ptr, align 8                      ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #27
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %7, align 8, !tbaa !37
  %.neg42 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %.neg = sdiv i64 %i.h, -1000
  %.neg43 = add i64 %.neg, %.neg42
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg43, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !69
  %i.i = mul nsw i32 %3, %2                       ; 4 uses
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #25 ; 13 uses
  %i.m = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.m, label %.lr.ph18.preheader.i.i, label %Abc_TtDup.exit

.lr.ph18.preheader.i.i:                           ; preds = %Abc_Clock.exit
  %wide.trip.count24.i.i = zext nneg i32 %i.i to i64
  %i.n = shl nuw nsw i64 %wide.trip.count24.i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr readonly align 8 %0, i64 %i.n, i1 false), !tbaa !26
  br label %Abc_TtDup.exit

Abc_TtDup.exit:                                   ; preds = %Abc_Clock.exit, %.lr.ph18.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.o = call i32 @Gia_ManRandom(i32 noundef 1) #27 ; 0 uses
  %i.p = icmp sgt i32 %4, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_TtDup.exit
  %.not39 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %wide.trip.count24.i = zext nneg i32 %i.i to i64
  %i.q = shl nuw nsw i64 %wide.trip.count24.i, 3  ; 2 uses
  br i1 %.not39, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.lr.ph18.preheader.i.us.us
  %.046.us.us = phi i32 [ %.1.us.us, %.lr.ph18.preheader.i.us.us ], [ 1000000000, %.lr.ph.split.us ] ; 2 uses
  %.03345.us.us = phi i32 [ %.134.us.us, %.lr.ph18.preheader.i.us.us ], [ -1, %.lr.ph.split.us ]
  %.03544.us.us = phi i32 [ %i.ai, %.lr.ph18.preheader.i.us.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.r = icmp ne i32 %.03544.us.us, 0
  %i.s = zext i1 %i.r to i32
  %i.t = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.s, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.u = call ptr @Abc_TtGiaMinArray(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b) ; 4 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %.val3.i.us.us = load i32, ptr %i.z, align 4, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %.val.i.us.us = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ad = add i32 %.val.i.us.us, %.val3.i.us.us
  %i.ae = xor i32 %i.ad, -1
  %i.af = add i32 %i.w, %i.ae                     ; 2 uses
  %i.ag = icmp sgt i32 %.046.us.us, %i.af
  br i1 %i.ag, label %bb.c, label %.lr.ph18.preheader.i.us.us

bb.c:                                             ; preds = %.lr.ph.split.us.split.us
  call void @Gia_ManStopP(ptr noundef nonnull %i.a) #27
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !69
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !69
  store ptr null, ptr %i.c, align 8, !tbaa !69
  br label %.lr.ph18.preheader.i.us.us

.lr.ph18.preheader.i.us.us:                       ; preds = %bb.c, %.lr.ph.split.us.split.us
  %.134.us.us = phi i32 [ %.03544.us.us, %bb.c ], [ %.03345.us.us, %.lr.ph.split.us.split.us ] ; 2 uses
  %.1.us.us = phi i32 [ %i.af, %bb.c ], [ %.046.us.us, %.lr.ph.split.us.split.us ] ; 2 uses
  call void @Gia_ManStopP(ptr noundef nonnull %i.c) #27
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %0, i64 %i.q, i1 false), !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ai = add nuw nsw i32 %.03544.us.us, 1        ; 2 uses
  %exitcond68.not = icmp eq i32 %i.ai, %4
  br i1 %exitcond68.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !251

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.lr.ph18.preheader.i.us
  %.046.us = phi i32 [ %.1.us, %.lr.ph18.preheader.i.us ], [ 1000000000, %.lr.ph.split.us ] ; 2 uses
  %.03345.us = phi i32 [ %.134.us, %.lr.ph18.preheader.i.us ], [ -1, %.lr.ph.split.us ]
  %.03544.us = phi i32 [ %i.bb, %.lr.ph18.preheader.i.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.aj = icmp ne i32 %.03544.us, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.ak, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.am = call ptr @Abc_TtGiaMinArray(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b) ; 4 uses
  store ptr %i.am, ptr %i.c, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !65
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %.val3.i.us = load i32, ptr %i.ar, align 4, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %.val.i.us = load i32, ptr %i.au, align 4, !tbaa !29
  %i.av = add i32 %.val.i.us, %.val3.i.us
  %i.aw = xor i32 %i.av, -1
  %i.ax = add i32 %i.ao, %i.aw                    ; 3 uses
  %i.ay = icmp sgt i32 %.046.us, %i.ax
  br i1 %i.ay, label %bb.d, label %.lr.ph18.preheader.i.us

bb.d:                                             ; preds = %.lr.ph.split.us.split
  call void @Gia_ManStopP(ptr noundef nonnull %i.a) #27
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !69
  store ptr %i.az, ptr %i.a, align 8, !tbaa !69
  store ptr null, ptr %i.c, align 8, !tbaa !69
  br label %.lr.ph18.preheader.i.us

.lr.ph18.preheader.i.us:                          ; preds = %bb.d, %.lr.ph.split.us.split
  %.134.us = phi i32 [ %.03544.us, %bb.d ], [ %.03345.us, %.lr.ph.split.us.split ] ; 2 uses
  %.1.us = phi i32 [ %i.ax, %bb.d ], [ %.046.us, %.lr.ph.split.us.split ] ; 2 uses
  call void @Gia_ManStopP(ptr noundef nonnull %i.c) #27
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %0, i64 %i.q, i1 false), !tbaa !26
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.al, i32 noundef %i.ax) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.bb = add nuw nsw i32 %.03544.us, 1           ; 2 uses
  %exitcond67.not = icmp eq i32 %i.bb, %4
  br i1 %exitcond67.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !251

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not39, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %Abc_TtCopy.exit.us54
  %.046.us49 = phi i32 [ %.1.us56, %Abc_TtCopy.exit.us54 ], [ 1000000000, %.lr.ph.split ] ; 2 uses
  %.03345.us50 = phi i32 [ %.134.us55, %Abc_TtCopy.exit.us54 ], [ -1, %.lr.ph.split ]
  %.03544.us51 = phi i32 [ %i.bt, %Abc_TtCopy.exit.us54 ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bc = icmp ne i32 %.03544.us51, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.bd, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.bf = call ptr @Abc_TtGiaMinArray(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b) ; 4 uses
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !69
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %.val3.i.us52 = load i32, ptr %i.bk, align 4, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  %.val.i.us53 = load i32, ptr %i.bn, align 4, !tbaa !29
  %i.bo = add i32 %.val.i.us53, %.val3.i.us52
  %i.bp = xor i32 %i.bo, -1
  %i.bq = add i32 %i.bh, %i.bp                    ; 2 uses
  %i.br = icmp sgt i32 %.046.us49, %i.bq
  br i1 %i.br, label %bb.e, label %Abc_TtCopy.exit.us54

bb.e:                                             ; preds = %.lr.ph.split.split.us
  call void @Gia_ManStopP(ptr noundef nonnull %i.a) #27
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !69
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !69
  store ptr null, ptr %i.c, align 8, !tbaa !69
  br label %Abc_TtCopy.exit.us54

Abc_TtCopy.exit.us54:                             ; preds = %bb.e, %.lr.ph.split.split.us
  %.134.us55 = phi i32 [ %.03544.us51, %bb.e ], [ %.03345.us50, %.lr.ph.split.split.us ] ; 2 uses
  %.1.us56 = phi i32 [ %i.bq, %bb.e ], [ %.046.us49, %.lr.ph.split.split.us ] ; 2 uses
  call void @Gia_ManStopP(ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.bt = add nuw nsw i32 %.03544.us51, 1         ; 2 uses
  %exitcond66.not = icmp eq i32 %i.bt, %4
  br i1 %exitcond66.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !251

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %Abc_TtCopy.exit
  %.046 = phi i32 [ %.1, %Abc_TtCopy.exit ], [ 1000000000, %.lr.ph.split ] ; 2 uses
  %.03345 = phi i32 [ %.134, %Abc_TtCopy.exit ], [ -1, %.lr.ph.split ]
  %.03544 = phi i32 [ %i.cm, %Abc_TtCopy.exit ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bu = icmp ne i32 %.03544, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.bv, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.bx = call ptr @Abc_TtGiaMinArray(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b) ; 4 uses
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !69
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !70
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !65
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %.val3.i = load i32, ptr %i.cc, align 4, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !67
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  %.val.i = load i32, ptr %i.cf, align 4, !tbaa !29
  %i.cg = add i32 %.val.i, %.val3.i
  %i.ch = xor i32 %i.cg, -1
  %i.ci = add i32 %i.bz, %i.ch                    ; 3 uses
  %i.cj = icmp sgt i32 %.046, %i.ci
  br i1 %i.cj, label %bb.f, label %Abc_TtCopy.exit

bb.f:                                             ; preds = %.lr.ph.split.split
  call void @Gia_ManStopP(ptr noundef nonnull %i.a) #27
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !69
  store ptr %i.ck, ptr %i.a, align 8, !tbaa !69
  store ptr null, ptr %i.c, align 8, !tbaa !69
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %bb.f, %.lr.ph.split.split
  %.134 = phi i32 [ %.03544, %bb.f ], [ %.03345, %.lr.ph.split.split ] ; 2 uses
  %.1 = phi i32 [ %i.ci, %bb.f ], [ %.046, %.lr.ph.split.split ] ; 2 uses
  call void @Gia_ManStopP(ptr noundef nonnull %i.c) #27
  %i.cl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.bw, i32 noundef %i.ci) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.cm = add nuw nsw i32 %.03544, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cm, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !251

._crit_edge:                                      ; preds = %Abc_TtCopy.exit, %Abc_TtCopy.exit.us54, %.lr.ph18.preheader.i.us, %.lr.ph18.preheader.i.us.us, %Abc_TtDup.exit
  %.033.lcssa = phi i32 [ -1, %Abc_TtDup.exit ], [ %.134.us55, %Abc_TtCopy.exit.us54 ], [ %.134.us, %.lr.ph18.preheader.i.us ], [ %.134.us.us, %.lr.ph18.preheader.i.us.us ], [ %.134, %Abc_TtCopy.exit ]
  %.0.lcssa = phi i32 [ 1000000000, %Abc_TtDup.exit ], [ %.1.us56, %Abc_TtCopy.exit.us54 ], [ %.1.us, %.lr.ph18.preheader.i.us ], [ %.1.us.us, %.lr.ph18.preheader.i.us.us ], [ %.1, %Abc_TtCopy.exit ]
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.033.lcssa, i32 noundef %.0.lcssa) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.not38 = icmp eq ptr %i.l, null
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.l) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.co = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #27
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %Abc_Clock.exit41, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = load i64, ptr %6, align 8, !tbaa !37
  %i.cr = mul nsw i64 %i.cq, 1000000
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !38
  %i.cu = sdiv i64 %i.ct, 1000
  %i.cv = add nsw i64 %i.cu, %i.cr
  br label %Abc_Clock.exit41

Abc_Clock.exit41:                                 ; preds = %bb.k, %bb.l
  %.0.i40 = phi i64 [ %i.cv, %bb.l ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.cw = add i64 %.0.i40, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11)
  %i.cx = sitofp i64 %i.cw to double
  %i.cy = fdiv double %i.cx, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, double noundef %i.cy)
  br label %bb.m

bb.m:                                             ; preds = %Abc_Clock.exit41, %bb.j
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.cz
}

declare void @Gia_ManStopP(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define ptr @Gia_TryPermOptNew(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [16 x i32], align 16              ; 7 uses
  %i.b = alloca [16 x i32], align 16              ; 6 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca [16 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.f = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #27
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %7, align 8, !tbaa !37
  %.neg46 = mul i64 %i.h, -1000000
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  %.neg = sdiv i64 %i.j, -1000
  %.neg47 = add i64 %.neg, %.neg46
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg47, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store ptr null, ptr %i.d, align 8, !tbaa !69
  %i.k = add nsw i32 %2, 1
  %i.l = mul nsw i32 %i.k, %3                     ; 4 uses
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = call noalias ptr @malloc(i64 noundef %i.n) #25 ; 7 uses
  %i.p = icmp sgt i32 %i.l, 0                     ; 2 uses
  br i1 %i.p, label %.lr.ph18.preheader.i.i, label %Abc_TtDup.exit

.lr.ph18.preheader.i.i:                           ; preds = %Abc_Clock.exit
  %wide.trip.count24.i.i = zext nneg i32 %i.l to i64
  %i.q = shl nuw nsw i64 %wide.trip.count24.i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.o, ptr readonly align 8 %0, i64 %i.q, i1 false), !tbaa !26
  br label %Abc_TtDup.exit

Abc_TtDup.exit:                                   ; preds = %Abc_Clock.exit, %.lr.ph18.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.r = call i32 @Gia_ManRandom(i32 noundef 1) #27 ; 0 uses
  %i.s = icmp sgt i32 %4, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_TtDup.exit
  %i.t = mul nsw i32 %3, %2
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.u
  %i.w = icmp sgt i32 %1, 0
  %wide.trip.count.i = zext i32 %1 to i64         ; 4 uses
  %wide.trip.count24.i = zext nneg i32 %i.l to i64
  %.not43 = icmp eq i32 %5, 0
  %i.x = shl nuw nsw i64 %wide.trip.count24.i, 3
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.050 = phi i32 [ 1000000000, %.lr.ph ], [ %.1, %bb.i ] ; 2 uses
  %.03749 = phi i32 [ -1, %.lr.ph ], [ %.138, %bb.i ]
  %.03948 = phi i32 [ 0, %.lr.ph ], [ %i.br, %bb.i ] ; 3 uses
  %i.y = icmp ne i32 %.03948, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.o, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.z, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  br i1 %i.w, label %.lr.ph.i.preheader, label %Abc_TtPermute.exit

.lr.ph.i.preheader:                               ; preds = %bb.c
  br i1 %min.iters.check, label %.lr.ph.i.preheader57, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.i.preheader ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %vec.ind, ptr %i.ab, align 16, !tbaa !17
  store <4 x i32> %step.add, ptr %i.ac, align 16, !tbaa !17
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <4 x i32> %vec.ind, ptr %i.ad, align 16, !tbaa !17
  store <4 x i32> %step.add, ptr %i.ae, align 16, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph34.i.preheader, label %.lr.ph.i.preheader57

.lr.ph.i.preheader57:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader57, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader57 ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !17
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph34.i.preheader, label %.lr.ph.i, !llvm.loop !253

.lr.ph34.i.preheader:                             ; preds = %.lr.ph.i, %middle.block
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.preheader, %bb.e
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %bb.e ], [ %wide.trip.count.i, %.lr.ph34.i.preheader ] ; 2 uses
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, -1 ; 5 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next37.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !17
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !17 ; 4 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = icmp eq i64 %indvars.iv.next37.i, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph34.i
  %i.aq = trunc nuw nsw i64 %indvars.iv.next37.i to i32 ; 2 uses
  call fastcc void @Abc_TtSwapVars(ptr noundef %i.v, i32 noundef %1, i32 noundef %i.aq, i32 noundef %i.an)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next37.i ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !17 ; 2 uses
  %i.at = sext i32 %i.an to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !17
  store i32 %i.as, ptr %i.au, align 4, !tbaa !17
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aw
  store i32 %i.an, ptr %i.ax, align 4, !tbaa !17
  %i.ay = load i32, ptr %i.ar, align 4, !tbaa !17
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.az
  store i32 %i.aq, ptr %i.ba, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph34.i
  %i.bb = icmp samesign ugt i64 %indvars.iv36.i, 1
  br i1 %i.bb, label %.lr.ph34.i, label %Abc_TtPermute.exit, !llvm.loop !254

Abc_TtPermute.exit:                               ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bc = call ptr @Abc_TtSimpleMinArrayNew(ptr noundef %i.o, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.e) ; 4 uses
  store ptr %i.bc, ptr %i.c, align 8, !tbaa !69
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !65
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %.val3.i = load i32, ptr %i.bh, align 4, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !67
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %.val.i = load i32, ptr %i.bk, align 4, !tbaa !29
  %i.bl = add i32 %.val.i, %.val3.i
  %i.bm = xor i32 %i.bl, -1
  %i.bn = add i32 %i.be, %i.bm                    ; 3 uses
  %i.bo = icmp sgt i32 %.050, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Abc_TtPermute.exit
  call void @Gia_ManStopP(ptr noundef nonnull %i.d) #27
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !69
  store ptr %i.bp, ptr %i.d, align 8, !tbaa !69
  store ptr null, ptr %i.c, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Abc_TtPermute.exit
  %.138 = phi i32 [ %.03948, %bb.f ], [ %.03749, %Abc_TtPermute.exit ] ; 2 uses
  %.1 = phi i32 [ %i.bn, %bb.f ], [ %.050, %Abc_TtPermute.exit ] ; 2 uses
  call void @Gia_ManStopP(ptr noundef nonnull %i.c) #27
  br i1 %i.p, label %.lr.ph18.i.preheader, label %Abc_TtCopy.exit

.lr.ph18.i.preheader:                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.o, ptr align 8 %0, i64 %i.x, i1 false), !tbaa !26
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %.lr.ph18.i.preheader, %bb.g
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %Abc_TtCopy.exit
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.aa, i32 noundef %i.bn) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %Abc_TtCopy.exit
  %i.br = add nuw nsw i32 %.03948, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.br, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !255

._crit_edge:                                      ; preds = %bb.i, %Abc_TtDup.exit
  %.037.lcssa = phi i32 [ -1, %Abc_TtDup.exit ], [ %.138, %bb.i ]
  %.0.lcssa = phi i32 [ 1000000000, %Abc_TtDup.exit ], [ %.1, %bb.i ]
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.037.lcssa, i32 noundef %.0.lcssa) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.not42 = icmp eq ptr %i.o, null
  br i1 %.not42, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.o) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bt = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #27
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %Abc_Clock.exit45, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i64, ptr %6, align 8, !tbaa !37
  %i.bw = mul nsw i64 %i.bv, 1000000
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !38
  %i.bz = sdiv i64 %i.by, 1000
  %i.ca = add nsw i64 %i.bz, %i.bw
  br label %Abc_Clock.exit45

Abc_Clock.exit45:                                 ; preds = %bb.n, %bb.o
  %.0.i44 = phi i64 [ %i.ca, %bb.o ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.cb = add i64 %.0.i44, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11)
  %i.cc = sitofp i64 %i.cb to double
  %i.cd = fdiv double %i.cc, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, double noundef %i.cd)
  br label %bb.p

bb.p:                                             ; preds = %Abc_Clock.exit45, %bb.m
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  ret ptr %i.ce
}

; Function Attrs: nounwind uwtable
define void @Abc_Tt6MinTest3(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !40
  store i32 100, ptr %i.a, align 8, !tbaa !41
  %i.c = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !42
  %i.e = tail call fastcc i64 @Abc_Tt6Min_rec(i64 noundef 5853272140833948943, i64 noundef -5853272140833948944, i32 noundef 6, ptr noundef nonnull %i.a)
  %.val = load i32, ptr %i.b, align 4, !tbaa !40
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %.val) ; 0 uses
  %i.g = icmp eq i64 %i.e, 5853272140833948943
  %str.1.str = select i1 %i.g, ptr @str.3, ptr @str.2
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str) ; 0 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.h) #27
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #27
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_Tt6MinTest2(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %.val66 = load ptr, ptr %i.b, align 8, !tbaa !65 ; 2 uses
  %i.c = getelementptr i8, ptr %.val66, i64 4
  %.val66.val = load i32, ptr %i.c, align 4, !tbaa !29 ; 5 uses
  %i.d = icmp slt i32 %.val66.val, 7              ; 2 uses
  %i.e = add nsw i32 %.val66.val, -6              ; 2 uses
  %i.f = shl nuw i32 1, %i.e
  %i.g = select i1 %i.d, i32 1, i32 %i.f          ; 15 uses
  %i.h = shl i32 3, %i.e
  %i.i = select i1 %i.d, i32 3, i32 %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr %i.l, ptr %i.a, align 16, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = sext i32 %i.g to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.n ; 6 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = shl nsw i32 %i.g, 1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.r
  store ptr %i.s, ptr %i.p, align 16, !tbaa !20
  %i.t = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 4 uses
  store i32 0, ptr %i.u, align 4, !tbaa !29
  store i32 100, ptr %i.t, align 8, !tbaa !30
  %i.v = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #25 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !31
  %i.x = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !40
  store i32 100, ptr %i.x, align 8, !tbaa !41
  %i.z = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !42
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !46
  store i32 100, ptr %i.ab, align 8, !tbaa !47
  %i.ad = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !45
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  %i.ag = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ah = icmp sgt i32 %.val66.val, 0
  br i1 %i.ah, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val67132 = load ptr, ptr %i.ag, align 8, !tbaa !66
  %.not133 = icmp eq ptr %.val67132, null
  br i1 %.not133, label %.critedge, label %.lr.ph135

.lr.ph:                                           ; preds = %Vec_IntPush.exit
  %.val67 = load ptr, ptr %i.ag, align 8, !tbaa !66
  %.not = icmp eq ptr %.val67, null
  br i1 %.not, label %.critedge, label %.lr.ph135, !llvm.loop !256

.lr.ph135:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv134 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ai = phi ptr [ %i.bb, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 6 uses
  %i.aj = phi ptr [ %i.az, %.lr.ph ], [ %.val66, %.lr.ph.preheader ] ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val68.val = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val68.val, i64 %indvars.iv134
  %i.am = load i32, ptr %i.al, align 4, !tbaa !17
  %i.an = load i32, ptr %i.u, align 4, !tbaa !29  ; 7 uses
  %i.ao = load i32, ptr %i.t, align 8, !tbaa !30
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %.lr.ph135
  %i.aq = icmp slt i32 %i.an, 16
  br i1 %i.aq, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not9.i.i = icmp eq ptr %i.ai, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.as = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.at = icmp samesign ult i32 %i.an, 1073741823
  %i.au = shl nuw nsw i32 %i.an, 1
  %spec.select.i = select i1 %i.at, i32 %i.au, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.an, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %.not9.i10.i = icmp eq ptr %i.ai, null
  %i.av = zext nneg i32 %spec.select.i to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef %i.aw) #26
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.aw) #25
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.h, %bb.i, %bb.d, %bb.e
  %storemerge = phi ptr [ %i.as, %bb.e ], [ %i.ar, %bb.d ], [ %i.ax, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.e ], [ 16, %bb.d ], [ %spec.select.i, %bb.h ], [ %spec.select.i, %bb.i ]
  store ptr %storemerge, ptr %i.w, align 8, !tbaa !31
  store i32 %spec.select.sink.i, ptr %i.t, align 8, !tbaa !30
  %.pre = load i32, ptr %i.u, align 4, !tbaa !29
  %.pre117 = load ptr, ptr %i.b, align 8, !tbaa !65
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph135, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.az = phi ptr [ %i.aj, %.lr.ph135 ], [ %i.aj, %bb.f ], [ %.pre117, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ba = phi i32 [ %i.an, %.lr.ph135 ], [ %i.an, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bb = phi ptr [ %i.ai, %.lr.ph135 ], [ %i.ai, %bb.f ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bc = add nsw i32 %i.ba, 1
  store i32 %i.bc, ptr %i.u, align 4, !tbaa !29
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  store i32 %i.am, ptr %i.be, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.az, i64 4
  %.val58 = load i32, ptr %i.bf, align 4, !tbaa !29 ; 3 uses
  %i.bg = sext i32 %.val58 to i64
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %.lr.ph, label %Vec_IntPush.exit..critedge.loopexit_crit_edge, !llvm.loop !256

Vec_IntPush.exit..critedge.loopexit_crit_edge:    ; preds = %Vec_IntPush.exit
  br label %.critedge, !llvm.loop !256

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %Vec_IntPush.exit..critedge.loopexit_crit_edge, %bb.a
  %.val58.lcssa = phi i32 [ %.val66.val, %bb.a ], [ %.val66.val, %.lr.ph.preheader ], [ %.val58, %Vec_IntPush.exit..critedge.loopexit_crit_edge ], [ %.val58, %.lr.ph ]
  tail call void @Gia_ObjComputeTruthTableStart(ptr noundef nonnull %0, i32 noundef %.val58.lcssa) #27
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %.val107 = load i32, ptr %i.bk, align 4, !tbaa !29
  %i.bl = icmp sgt i32 %.val107, 0
  br i1 %i.bl, label %.lr.ph109, label %.critedge2

.lr.ph109:                                        ; preds = %.critedge
  %i.bm = icmp sgt i32 %i.g, 0                    ; 2 uses
  %wide.trip.count.i = zext i32 %i.g to i64       ; 6 uses
  %min.iters.check141 = icmp ult i32 %i.g, 4
  %n.vec143 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bn = icmp ult i32 %i.g, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod186 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.g, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  %xtraiter187 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.bo = icmp ult i32 %i.g, 4
  %unroll_iter191 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod189.not = icmp eq i64 %xtraiter187, 0
  %lcmp.mod190 = icmp ne i64 %xtraiter187, 0
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph109, %Abc_TtCopy.exit
  %indvars.iv114 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next115, %Abc_TtCopy.exit ] ; 3 uses
  %i.bp = phi ptr [ %i.bj, %.lr.ph109 ], [ %i.ec, %Abc_TtCopy.exit ]
  %.val69 = load ptr, ptr %i.ag, align 8, !tbaa !66 ; 2 uses
  %.not54 = icmp eq ptr %.val69, null
  br i1 %.not54, label %.critedge2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %.val70.val = load ptr, ptr %i.bq, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val70.val, i64 %indvars.iv114
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !17
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [12 x i8], ptr %.val69, i64 %i.bt ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 4
  %i.bw = and i64 %i.bv, 536870911
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds [12 x i8], ptr %i.bu, i64 %i.bx
  %i.bz = tail call ptr @Gia_ObjComputeTruthTableCut(ptr noundef nonnull %0, ptr noundef nonnull %i.by, ptr noundef nonnull %i.t) #27 ; 13 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64              ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv114
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !20 ; 13 uses
  %i.cd = ptrtoaddr ptr %i.cc to i64              ; 2 uses
  %.val61 = load i64, ptr %i.bu, align 4
  %i.ce = and i64 %.val61, 536870912
  %.not.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.k
  br i1 %i.bm, label %.lr.ph.i.preheader, label %Abc_TtCopy.exit

.lr.ph.i.preheader:                               ; preds = %.preheader14.i
  %i.cf = sub i64 %i.ca, %i.cd
  %diff.check139 = icmp ugt i64 %i.cf, -32
  %or.cond = select i1 %min.iters.check141, i1 true, i1 %diff.check139
  br i1 %or.cond, label %.lr.ph.i.preheader181, label %vector.body144

.lr.ph.i.preheader181:                            ; preds = %.lr.ph.i.preheader
  br i1 %i.bn, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

vector.body144:                                   ; preds = %.lr.ph.i.preheader, %vector.body144
  %index145 = phi i64 [ %index.next148, %vector.body144 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index145 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load146 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !26
  %wide.load147 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !26
  %i.ci = xor <2 x i64> %wide.load146, splat (i64 -1)
  %i.cj = xor <2 x i64> %wide.load147, splat (i64 -1)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index145 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x i64> %i.ci, ptr %i.ck, align 8, !tbaa !26
  store <2 x i64> %i.cj, ptr %i.cl, align 8, !tbaa !26
  %index.next148 = add nuw i64 %index145, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.cm, label %Abc_TtCopy.exit, label %vector.body144, !llvm.loop !257

.preheader.i:                                     ; preds = %bb.k
  br i1 %i.bm, label %.lr.ph18.i.preheader, label %Abc_TtCopy.exit

.lr.ph18.i.preheader:                             ; preds = %.preheader.i
  %i.cn = sub i64 %i.ca, %i.cd
  %diff.check = icmp ugt i64 %i.cn, -32
  %or.cond174 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond174, label %.lr.ph18.i.preheader179, label %vector.body

.lr.ph18.i.preheader179:                          ; preds = %.lr.ph18.i.preheader
  br i1 %i.bo, label %.lr.ph18.i.epil.preheader, label %.lr.ph18.i

vector.body:                                      ; preds = %.lr.ph18.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph18.i.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load = load <2 x i64>, ptr %i.co, align 8, !tbaa !26
  %wide.load137 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <2 x i64> %wide.load, ptr %i.cq, align 8, !tbaa !26
  store <2 x i64> %wide.load137, ptr %i.cr, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %Abc_TtCopy.exit, label %vector.body, !llvm.loop !258

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader181, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader181 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader181 ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !26
  %i.cv = xor i64 %i.cu, -1
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !26
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.cz = xor i64 %i.cy, -1
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !26
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i.1
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !26
  %i.dd = xor i64 %i.dc, -1
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i.1
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !26
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.i.2
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !26
  %i.dh = xor i64 %i.dg, -1
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next.i.2
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !26
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_TtCopy.exit.loopexit182.unr-lcssa, label %.lr.ph.i, !llvm.loop !259

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.preheader179, %.lr.ph18.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i.3, %.lr.ph18.i ], [ 0, %.lr.ph18.i.preheader179 ] ; 6 uses
  %niter192 = phi i64 [ %niter192.next.3, %.lr.ph18.i ], [ 0, %.lr.ph18.i.preheader179 ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv21.i
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !26
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv21.i
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !26
  %indvars.iv.next22.i = or disjoint i64 %indvars.iv21.i, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next22.i
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !26
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next22.i
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !26
  %indvars.iv.next22.i.1 = or disjoint i64 %indvars.iv21.i, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next22.i.1
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !26
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next22.i.1
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !26
  %indvars.iv.next22.i.2 = or disjoint i64 %indvars.iv21.i, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next22.i.2
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !26
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next22.i.2
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !26
  %indvars.iv.next22.i.3 = add nuw nsw i64 %indvars.iv21.i, 4 ; 2 uses
  %niter192.next.3 = add i64 %niter192, 4         ; 2 uses
  %niter192.ncmp.3 = icmp eq i64 %niter192.next.3, %unroll_iter191
  br i1 %niter192.ncmp.3, label %Abc_TtCopy.exit.loopexit.unr-lcssa, label %.lr.ph18.i, !llvm.loop !260

Abc_TtCopy.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph18.i
  br i1 %lcmp.mod189.not, label %Abc_TtCopy.exit, label %.lr.ph18.i.epil.preheader

.lr.ph18.i.epil.preheader:                        ; preds = %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.preheader179
  %indvars.iv21.i.epil.init = phi i64 [ 0, %.lr.ph18.i.preheader179 ], [ %indvars.iv.next22.i.3, %Abc_TtCopy.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod190)
  br label %.lr.ph18.i.epil

.lr.ph18.i.epil:                                  ; preds = %.lr.ph18.i.epil, %.lr.ph18.i.epil.preheader
  %indvars.iv21.i.epil = phi i64 [ %indvars.iv.next22.i.epil, %.lr.ph18.i.epil ], [ %indvars.iv21.i.epil.init, %.lr.ph18.i.epil.preheader ] ; 3 uses
  %epil.iter188 = phi i64 [ %epil.iter188.next, %.lr.ph18.i.epil ], [ 0, %.lr.ph18.i.epil.preheader ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv21.i.epil
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !26
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv21.i.epil
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !26
  %indvars.iv.next22.i.epil = add nuw nsw i64 %indvars.iv21.i.epil, 1
  %epil.iter188.next = add i64 %epil.iter188, 1   ; 2 uses
  %epil.iter188.cmp.not = icmp eq i64 %epil.iter188.next, %xtraiter187
  br i1 %epil.iter188.cmp.not, label %Abc_TtCopy.exit, label %.lr.ph18.i.epil, !llvm.loop !261

Abc_TtCopy.exit.loopexit182.unr-lcssa:            ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %Abc_TtCopy.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Abc_TtCopy.exit.loopexit182.unr-lcssa, %.lr.ph.i.preheader181
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader181 ], [ %indvars.iv.next.i.3, %Abc_TtCopy.exit.loopexit182.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod186)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i.epil
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !26
  %i.ea = xor i64 %i.dz, -1
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i.epil
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !26
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_TtCopy.exit, label %.lr.ph.i.epil, !llvm.loop !262

Abc_TtCopy.exit:                                  ; preds = %vector.body144, %Abc_TtCopy.exit.loopexit182.unr-lcssa, %.lr.ph.i.epil, %vector.body, %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.epil, %.preheader14.i, %.preheader.i
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.ec = load ptr, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 4
  %.val = load i32, ptr %i.ed, align 4, !tbaa !29
  %i.ee = sext i32 %.val to i64
  %i.ef = icmp slt i64 %indvars.iv.next115, %i.ee
  br i1 %i.ef, label %bb.j, label %.critedge2, !llvm.loop !263

.critedge2:                                       ; preds = %bb.j, %Abc_TtCopy.exit, %.critedge
  tail call void @Gia_ObjComputeTruthTableStop(ptr noundef nonnull %0) #27
  %.val64 = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.eg = getelementptr i8, ptr %.val64, i64 4    ; 2 uses
  %.val64.val = load i32, ptr %i.eg, align 4, !tbaa !29 ; 4 uses
  %i.eh = lshr i32 %.val64.val, 1
  %i.ei = icmp sgt i32 %.val64.val, 1
  br i1 %i.ei, label %.lr.ph.i71, label %Abc_TtReverseVars.exit

.lr.ph.i71:                                       ; preds = %.critedge2, %.lr.ph.i71
  %.07.i = phi i32 [ %i.el, %.lr.ph.i71 ], [ 0, %.critedge2 ] ; 3 uses
  %i.ej = xor i32 %.07.i, -1
  %i.ek = add nsw i32 %.val64.val, %i.ej
  tail call fastcc void @Abc_TtSwapVars(ptr noundef %i.l, i32 noundef %.val64.val, i32 noundef %.07.i, i32 noundef %i.ek)
  %i.el = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %exitcond.not.i72 = icmp eq i32 %i.el, %i.eh
  br i1 %exitcond.not.i72, label %Abc_TtReverseVars.exit, label %.lr.ph.i71, !llvm.loop !264

Abc_TtReverseVars.exit:                           ; preds = %.lr.ph.i71, %.critedge2
  %i.em = icmp sgt i32 %i.g, 0                    ; 2 uses
  br i1 %i.em, label %.lr.ph.preheader.i74, label %Abc_TtCopy.exit80

.lr.ph.preheader.i74:                             ; preds = %Abc_TtReverseVars.exit
  %min.iters.check153 = icmp ult i32 %i.g, 4
  br i1 %min.iters.check153, label %.lr.ph.i76, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph.preheader.i74
  %i.en = and i32 %i.g, 2147483644
  %n.vec155 = zext nneg i32 %i.en to i64
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index157 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load158 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !26
  %wide.load159 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !26
  %i.eq = xor <2 x i64> %wide.load158, splat (i64 -1)
  %i.er = xor <2 x i64> %wide.load159, splat (i64 -1)
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index157 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <2 x i64> %i.eq, ptr %i.es, align 8, !tbaa !26
  store <2 x i64> %i.er, ptr %i.et, align 8, !tbaa !26
  %index.next160 = add nuw i64 %index157, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.eu, label %Abc_TtCopy.exit80, label %vector.body156, !llvm.loop !265

.lr.ph.i76:                                       ; preds = %.lr.ph.preheader.i74
  %i.ev = load i64, ptr %i.l, align 8, !tbaa !26
  %i.ew = xor i64 %i.ev, -1
  store i64 %i.ew, ptr %i.o, align 8, !tbaa !26
  %exitcond.not.i79 = icmp eq i32 %i.g, 1
  br i1 %exitcond.not.i79, label %Abc_TtCopy.exit80, label %.lr.ph.i76.1

.lr.ph.i76.1:                                     ; preds = %.lr.ph.i76
  %i.ex = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !26
  %i.ez = xor i64 %i.ey, -1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !26
  %exitcond.not.i79.1 = icmp eq i32 %i.g, 2
  br i1 %exitcond.not.i79.1, label %Abc_TtCopy.exit80, label %.lr.ph.i76.2

.lr.ph.i76.2:                                     ; preds = %.lr.ph.i76.1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !26
  %i.fd = xor i64 %i.fc, -1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !26
  br label %Abc_TtCopy.exit80

Abc_TtCopy.exit80:                                ; preds = %vector.body156, %.lr.ph.i76, %.lr.ph.i76.1, %.lr.ph.i76.2, %Abc_TtReverseVars.exit
  %.val63.val = load i32, ptr %i.eg, align 4, !tbaa !29
  %i.ff = tail call ptr @Abc_TtMin(ptr noundef %i.l, ptr noundef nonnull %i.o, i32 noundef %.val63.val, ptr noundef nonnull %calloc, ptr noundef nonnull %i.x, ptr noundef nonnull %i.ab)
  %.val59 = load i32, ptr %i.y, align 4, !tbaa !40
  %i.fg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %.val59) ; 0 uses
  %.val9.i = load i32, ptr %i.ac, align 4, !tbaa !46 ; 3 uses
  %i.fh = icmp sgt i32 %.val9.i, 0
  br i1 %i.fh, label %.lr.ph.i81, label %Vec_WecSizeSize.exit

.lr.ph.i81:                                       ; preds = %Abc_TtCopy.exit80
  %.val8.i = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 9 uses
  %wide.trip.count.i82 = zext nneg i32 %.val9.i to i64 ; 3 uses
  %min.iters.check165 = icmp ult i32 %.val9.i, 9
  br i1 %min.iters.check165, label %scalar.ph164.preheader, label %vector.ph166

vector.ph166:                                     ; preds = %.lr.ph.i81
  %i.fi = and i64 %wide.trip.count.i82, 7         ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  %i.fk = select i1 %i.fj, i64 8, i64 %i.fi
  %n.vec167 = sub nsw i64 %wide.trip.count.i82, %i.fk ; 2 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next171, %vector.body168 ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph166 ], [ %i.gr, %vector.body168 ]
  %vec.phi170 = phi <4 x i32> [ zeroinitializer, %vector.ph166 ], [ %i.gs, %vector.body168 ]
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index169
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index169
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index169
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index169
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index169
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index169
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index169
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %index169
  %i.ft = getelementptr i8, ptr %i.fl, i64 4
  %i.fu = getelementptr i8, ptr %i.fm, i64 20
  %i.fv = getelementptr i8, ptr %i.fn, i64 36
  %i.fw = getelementptr i8, ptr %i.fo, i64 52
  %i.fx = getelementptr i8, ptr %i.fp, i64 68
  %i.fy = getelementptr i8, ptr %i.fq, i64 84
  %i.fz = getelementptr i8, ptr %i.fr, i64 100
  %i.ga = getelementptr i8, ptr %i.fs, i64 116
  %i.gb = load i32, ptr %i.ft, align 4, !tbaa !29
  %i.gc = load i32, ptr %i.fu, align 4, !tbaa !29
  %i.gd = load i32, ptr %i.fv, align 4, !tbaa !29
  %i.ge = load i32, ptr %i.fw, align 4, !tbaa !29
  %i.gf = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.gc, i64 1
  %i.gh = insertelement <4 x i32> %i.gg, i32 %i.gd, i64 2
  %i.gi = insertelement <4 x i32> %i.gh, i32 %i.ge, i64 3
  %i.gj = load i32, ptr %i.fx, align 4, !tbaa !29
  %i.gk = load i32, ptr %i.fy, align 4, !tbaa !29
  %i.gl = load i32, ptr %i.fz, align 4, !tbaa !29
  %i.gm = load i32, ptr %i.ga, align 4, !tbaa !29
  %i.gn = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %i.go = insertelement <4 x i32> %i.gn, i32 %i.gk, i64 1
  %i.gp = insertelement <4 x i32> %i.go, i32 %i.gl, i64 2
  %i.gq = insertelement <4 x i32> %i.gp, i32 %i.gm, i64 3
  %i.gr = add <4 x i32> %i.gi, %vec.phi           ; 2 uses
  %i.gs = add <4 x i32> %i.gq, %vec.phi170        ; 2 uses
  %index.next171 = add nuw i64 %index169, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next171, %n.vec167
  br i1 %i.gt, label %middle.block172, label %vector.body168, !llvm.loop !266

middle.block172:                                  ; preds = %vector.body168
  %bin.rdx = add <4 x i32> %i.gs, %i.gr
  %i.gu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph164.preheader

scalar.ph164.preheader:                           ; preds = %.lr.ph.i81, %middle.block172
  %indvars.iv.i83.ph = phi i64 [ 0, %.lr.ph.i81 ], [ %n.vec167, %middle.block172 ]
  %.011.i.ph = phi i32 [ 0, %.lr.ph.i81 ], [ %i.gu, %middle.block172 ]
  br label %scalar.ph164

scalar.ph164:                                     ; preds = %scalar.ph164.preheader, %scalar.ph164
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84, %scalar.ph164 ], [ %indvars.iv.i83.ph, %scalar.ph164.preheader ] ; 2 uses
  %.011.i = phi i32 [ %i.gx, %scalar.ph164 ], [ %.011.i.ph, %scalar.ph164.preheader ]
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %.val8.i, i64 %indvars.iv.i83
  %i.gw = getelementptr i8, ptr %i.gv, i64 4
  %.val.i = load i32, ptr %i.gw, align 4, !tbaa !29
  %i.gx = add nsw i32 %.val.i, %.011.i            ; 2 uses
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next.i84, %wide.trip.count.i82
  br i1 %exitcond.not.i85, label %Vec_WecSizeSize.exit, label %scalar.ph164, !llvm.loop !267

Vec_WecSizeSize.exit:                             ; preds = %scalar.ph164, %Abc_TtCopy.exit80
  %.0.lcssa.i = phi i32 [ 0, %Abc_TtCopy.exit80 ], [ %i.gx, %scalar.ph164 ]
  %i.gy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %.0.lcssa.i) ; 0 uses
  br i1 %i.em, label %.lr.ph.preheader.i87, label %.loopexit

.lr.ph.preheader.i87:                             ; preds = %Vec_WecSizeSize.exit
  %wide.trip.count.i88 = zext nneg i32 %i.g to i64
  br label %.lr.ph.i89

bb.l:                                             ; preds = %.lr.ph.i89
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count.i88
  br i1 %exitcond.not.i93, label %.loopexit, label %.lr.ph.i89, !llvm.loop !0

.lr.ph.i89:                                       ; preds = %bb.l, %.lr.ph.preheader.i87
  %indvars.iv.i90 = phi i64 [ 0, %.lr.ph.preheader.i87 ], [ %indvars.iv.next.i92, %bb.l ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv.i90
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !26
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i90
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !26
  %.not.i91 = icmp eq i64 %i.ha, %i.hc
  br i1 %.not.i91, label %bb.l, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i89, %bb.l, %Vec_WecSizeSize.exit
  %str.2.sink = phi ptr [ @str.3, %Vec_WecSizeSize.exit ], [ @str.3, %bb.l ], [ @str.2, %.lr.ph.i89 ]
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink) ; 0 uses
  %.val62 = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.hd = getelementptr i8, ptr %.val62, i64 4
  %.val62.val = load i32, ptr %i.hd, align 4, !tbaa !29
  tail call void @Gia_ManPermuteTree(ptr noundef %i.l, i32 noundef %.val62.val, i32 noundef 3, i32 noundef %i.g, i32 noundef 0, i32 noundef 0)
  %i.he = load ptr, ptr %i.af, align 8, !tbaa !42 ; 2 uses
  %.not.i94 = icmp eq ptr %i.he, null
  br i1 %.not.i94, label %Vec_WrdFree.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.he) #27
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.loopexit, %bb.m
  tail call void @free(ptr noundef nonnull %calloc) #27
  %i.hf = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %.not.i95 = icmp eq ptr %i.hf, null
  br i1 %.not.i95, label %Vec_WrdFree.exit96, label %bb.n

bb.n:                                             ; preds = %Vec_WrdFree.exit
  tail call void @free(ptr noundef nonnull %i.hf) #27
  br label %Vec_WrdFree.exit96

Vec_WrdFree.exit96:                               ; preds = %Vec_WrdFree.exit, %bb.n
  tail call void @free(ptr noundef nonnull %i.x) #27
  %i.hg = load i32, ptr %i.ab, align 8, !tbaa !47 ; 2 uses
  %i.hh = icmp sgt i32 %i.hg, 0
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 3 uses
  br i1 %i.hh, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %Vec_WrdFree.exit96, %bb.p
  %i.hi = phi i32 [ %i.hq, %bb.p ], [ %i.hg, %Vec_WrdFree.exit96 ]
  %i.hj = phi ptr [ %i.hr, %bb.p ], [ %.pre.i.i, %Vec_WrdFree.exit96 ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.p ], [ 0, %Vec_WrdFree.exit96 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %indvars.iv.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !31 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.hm, null
  br i1 %.not15.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.hm) #27
  %i.hn = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 2 uses
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %indvars.iv.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store ptr null, ptr %i.hp, align 8, !tbaa !31
  %.pre18.i.i = load i32, ptr %i.ab, align 8, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %i.hq = phi i32 [ %.pre18.i.i, %bb.o ], [ %i.hi, %.lr.ph.i.i ] ; 2 uses
  %i.hr = phi ptr [ %i.hn, %bb.o ], [ %i.hj, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hs = sext i32 %i.hq to i64
  %i.ht = icmp slt i64 %indvars.iv.next.i.i, %i.hs
  br i1 %i.ht, label %.lr.ph.i.i, label %._crit_edge.thread.i.i, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %Vec_WrdFree.exit96
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.p, %._crit_edge.i.i
  %i.hu = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.hr, %bb.p ]
  tail call void @free(ptr noundef nonnull %i.hu) #27
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.ab) #27
  %i.hv = load ptr, ptr %i.w, align 8, !tbaa !31  ; 2 uses
  %.not.i97 = icmp eq ptr %i.hv, null
  br i1 %.not.i97, label %Vec_IntFree.exit, label %bb.q

bb.q:                                             ; preds = %Vec_WecFree.exit
  tail call void @free(ptr noundef nonnull %i.hv) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_WecFree.exit, %bb.q
  tail call void @free(ptr noundef nonnull %i.t) #27
  %.not57 = icmp eq ptr %i.l, null
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.l) #27
  br label %bb.s

bb.s:                                             ; preds = %Vec_IntFree.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare void @Gia_ObjComputeTruthTableStart(ptr noundef, i32 noundef) local_unnamed_addr #11

declare ptr @Gia_ObjComputeTruthTableCut(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @Gia_ObjComputeTruthTableStop(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #15 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #27 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #27
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #27 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !272
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #28
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #27 ; 0 uses
  call void @free(ptr noundef %i.d) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !272, !noalias !273
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #27, !inline_history !270 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #11

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #18

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_WrdPush(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !41
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_WrdGrow.exit11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %.not9.i = icmp eq ptr %i.g, null
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 128) #26
  br label %Vec_WrdGrow.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_WrdGrow.exit

Vec_WrdGrow.exit:                                 ; preds = %bb.d, %bb.e
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !42
  br label %Vec_WrdGrow.exit11.sink.split

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9 = icmp samesign ult i32 %i.b, %spec.select
  br i1 %.not.i9, label %bb.g, label %Vec_WrdGrow.exit11

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %.not9.i10 = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select to i64
  %i.p = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  br i1 %.not9.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !42
  br label %Vec_WrdGrow.exit11.sink.split

Vec_WrdGrow.exit11.sink.split:                    ; preds = %Vec_WrdGrow.exit, %bb.j
  %spec.select.sink = phi i32 [ %spec.select, %bb.j ], [ 16, %Vec_WrdGrow.exit ]
  store i32 %spec.select.sink, ptr %0, align 8, !tbaa !41
  br label %Vec_WrdGrow.exit11

Vec_WrdGrow.exit11:                               ; preds = %Vec_WrdGrow.exit11.sink.split, %bb.f, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.v = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !40
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.x
  store i64 %1, ptr %i.y, align 8, !tbaa !26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_WrdPushTwo(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 8 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_WrdPush.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 128) #26
  br label %Vec_WrdGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !42
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select.i = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.b, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_WrdPush.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select.i to i64
  %i.p = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !42
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_WrdGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_WrdGrow.exit.i ] ; 2 uses
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !41
  %.pre = load i32, ptr %i.a, align 4, !tbaa !40
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_WrdGrow.exit11.sink.split.i
  %i.t = phi i32 [ %i.c, %bb.a ], [ %i.b, %bb.f ], [ %spec.select.sink.i, %Vec_WrdGrow.exit11.sink.split.i ] ; 4 uses
  %i.u = phi i32 [ %i.b, %bb.a ], [ %i.b, %bb.f ], [ %.pre, %Vec_WrdGrow.exit11.sink.split.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42   ; 4 uses
  %i.x = add nsw i32 %i.u, 1                      ; 3 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !40
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  store i64 %1, ptr %i.z, align 8, !tbaa !26
  %i.aa = icmp eq i32 %i.x, %i.t
  br i1 %i.aa, label %bb.k, label %Vec_WrdPush.exit10

bb.k:                                             ; preds = %Vec_WrdPush.exit
  %i.ab = icmp slt i32 %i.u, 15
  br i1 %i.ab, label %Vec_WrdGrow.exit11.sink.split.i6, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp samesign ult i32 %i.u, 1073741822
  %i.ad = shl nuw nsw i32 %i.t, 1
  %spec.select.i3 = select i1 %i.ac, i32 %i.ad, i32 2147483647 ; 3 uses
  %.not.i9.i4 = icmp samesign ult i32 %i.t, %spec.select.i3
  br i1 %.not.i9.i4, label %bb.m, label %Vec_WrdPush.exit10

bb.m:                                             ; preds = %bb.l
  %i.ae = zext nneg i32 %spec.select.i3 to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  br label %Vec_WrdGrow.exit11.sink.split.i6

Vec_WrdGrow.exit11.sink.split.i6:                 ; preds = %bb.k, %bb.m
  %.sink = phi i64 [ %i.af, %bb.m ], [ 128, %bb.k ]
  %spec.select.sink.i7 = phi i32 [ %spec.select.i3, %bb.m ], [ 16, %bb.k ]
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %i.w, i64 noundef %.sink) #26 ; 2 uses
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !42
  store i32 %spec.select.sink.i7, ptr %0, align 8, !tbaa !41
  %.pre11 = load i32, ptr %i.a, align 4, !tbaa !40
  br label %Vec_WrdPush.exit10

Vec_WrdPush.exit10:                               ; preds = %Vec_WrdPush.exit, %bb.l, %Vec_WrdGrow.exit11.sink.split.i6
  %i.ah = phi i32 [ %i.x, %Vec_WrdPush.exit ], [ %i.t, %bb.l ], [ %.pre11, %Vec_WrdGrow.exit11.sink.split.i6 ] ; 2 uses
  %i.ai = phi ptr [ %i.w, %Vec_WrdPush.exit ], [ %i.w, %bb.l ], [ %i.ag, %Vec_WrdGrow.exit11.sink.split.i6 ]
  %i.aj = add nsw i32 %i.ah, 1
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !40
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %2, ptr %i.al, align 8, !tbaa !26
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !274
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call noundef range(i32 -2147483648, 536870913) i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  tail call void @exit(i32 noundef 1) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !275
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #26
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !66
  %i.s = load i32, ptr %i.c, align 4, !tbaa !274  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !276  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #26 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !276
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !274 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !274
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !29
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #26
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !30
  %.pre = load i32, ptr %i.al, align 4, !tbaa !29
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !29
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !70
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !66
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #20

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, -1) i32 @Gia_ManAppendAnd(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 22 uses
  %i.b = icmp slt i32 %1, %2
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val76 = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %.val76 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %1, 1
  %i.j = sub i32 %i.h, %i.i
  %i.k = load i64, ptr %i.a, align 4              ; 2 uses
  %i.l = and i32 %i.j, 536870911
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = and i64 %i.k, -1073741824
  %i.o = shl i32 %1, 29
  %i.p = and i32 %i.o, 536870912
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.m               ; 2 uses
  store i64 %i.s, ptr %i.a, align 4
  %.val75 = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.t = ptrtoint ptr %.val75 to i64
  %i.u = sub i64 %i.d, %i.t
  %i.v = sdiv exact i64 %i.u, 12
  %i.w = trunc i64 %i.v to i32
  %i.x = lshr i32 %2, 1
  %i.y = sub i32 %i.w, %i.x
  %i.z = and i32 %i.y, 536870911
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 32
  %i.ac = and i64 %i.s, -4611686014132420609
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = and i32 %2, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 61
  %i.ah = or disjoint i64 %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = shl nuw nsw i64 %i.m, 32
  %i.aj = and i64 %i.k, -4611686014132420609
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %i.al = and i32 %1, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 61
  %i.ao = or disjoint i64 %i.ak, %i.an            ; 2 uses
  store i64 %i.ao, ptr %i.a, align 4
  %.val73 = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.ap = ptrtoint ptr %.val73 to i64
  %i.aq = sub i64 %i.d, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 12
  %i.as = trunc i64 %i.ar to i32
  %i.at = lshr i32 %2, 1
  %i.au = sub i32 %i.as, %i.at
  %i.av = and i32 %i.au, 536870911
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = and i64 %i.ao, -1073741824
  %i.ay = or disjoint i64 %i.ax, %i.aw
  %i.az = shl i32 %2, 29
  %i.ba = and i32 %i.az, 536870912
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = or disjoint i64 %i.ay, %i.bb
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ %i.ah, %bb.b ], [ %i.bc, %bb.c ] ; 2 uses
  store i64 %storemerge, ptr %i.a, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !68
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = and i64 %storemerge, 536870911
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bg
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.a) #27
  %i.bi = load i64, ptr %i.a, align 4
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = and i64 %i.bj, 536870911
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bl
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.a) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !277
  %.not65 = icmp eq i32 %i.bo, 0
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %i.a, align 4             ; 2 uses
  %i.bq = and i64 %i.bp, 536870911
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.br ; 3 uses
  %i.bt = lshr i64 %i.bp, 32
  %i.bu = and i64 %i.bt, 536870911
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bs, align 4            ; 2 uses
  %i.by = and i64 %i.bx, 1073741824
  %.not66 = icmp eq i64 %i.by, 0
  %storemerge67.v = select i1 %.not66, i64 1073741824, i64 4611686018427387904
  %storemerge67 = or i64 %storemerge67.v, %i.bx
  store i64 %storemerge67, ptr %i.bs, align 4
  %i.bz = load i64, ptr %i.bw, align 4            ; 3 uses
  %i.ca = and i64 %i.bz, 1073741824
  %.not68 = icmp eq i64 %i.ca, 0
  %storemerge69.v = select i1 %.not68, i64 1073741824, i64 4611686018427387904
  %storemerge69 = or i64 %storemerge69.v, %i.bz
  store i64 %storemerge69, ptr %i.bw, align 4
  %.val80 = load i64, ptr %i.bs, align 4
  %i.cb = lshr i64 %.val80, 63
  %.val82 = load i64, ptr %i.a, align 4           ; 3 uses
  %i.cc = lshr i64 %.val82, 29
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = lshr i64 %i.bz, 63
  %i.cf = lshr i64 %.val82, 61
  %i.cg = and i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, %i.ce
  %i.ci = and i64 %i.ch, %i.cd
  %i.cj = shl nuw i64 %i.ci, 63
  %i.ck = and i64 %.val82, 9223372036854775807
  %i.cl = or disjoint i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.a, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !278
  %.not70 = icmp eq i32 %i.cn, 0
  br i1 %.not70, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = load i64, ptr %i.a, align 4             ; 5 uses
  %i.cp = and i64 %i.co, 536870911
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.cq
  %i.cs = lshr i64 %i.co, 32
  %i.ct = and i64 %i.cs, 536870911
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.cu
  %.val78 = load i64, ptr %i.cr, align 4
  %i.cw = lshr i64 %.val78, 63
  %i.cx = lshr i64 %i.co, 29
  %i.cy = xor i64 %i.cw, %i.cx
  %.val77 = load i64, ptr %i.cv, align 4
  %i.cz = lshr i64 %.val77, 63
  %i.da = lshr i64 %i.co, 61
  %i.db = and i64 %i.da, 1
  %i.dc = xor i64 %i.cz, %i.db
  %i.dd = and i64 %i.dc, %i.cy
  %i.de = shl nuw i64 %i.dd, 63
  %i.df = and i64 %i.co, 9223372036854775807
  %i.dg = or disjoint i64 %i.de, %i.df
  store i64 %i.dg, ptr %i.a, align 4
  %i.dh = getelementptr i8, ptr %0, i64 32
  %.val72 = load ptr, ptr %i.dh, align 8, !tbaa !66
  %i.di = ptrtoint ptr %i.a to i64
  %i.dj = ptrtoint ptr %.val72 to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 12
  %i.dm = trunc i64 %i.dl to i32
  tail call void @Gia_ManBuiltInSimPerform(ptr noundef nonnull %0, i32 noundef %i.dm) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !279
  %.not71 = icmp eq ptr %i.do, null
  br i1 %.not71, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @Gia_ManQuantSetSuppAnd(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dp = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.dp, align 8, !tbaa !66
  %i.dq = ptrtoint ptr %i.a to i64
  %i.dr = ptrtoint ptr %.val to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = sdiv exact i64 %i.ds, 12
  %i.du = trunc i64 %i.dt to i32
  %i.dv = shl i32 %i.du, 1
  ret i32 %i.dv
}

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #11

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind allocsize(1) }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { cold noreturn nounwind }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !32}
!1 = distinct !{!1, !32}
!2 = distinct !{!2, !32}
!3 = distinct !{!3, !32}
!4 = distinct !{!4, !32}
!5 = distinct !{!5, !32}
!6 = distinct !{!6, !32}
!7 = distinct !{!7, !32}
!8 = distinct !{!8, !32}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!"any pointer", !13, i64 0}
!19 = !{!"p1 long", !18, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"Tree_Sto_t_", !14, i64 0, !14, i64 4, !13, i64 8, !13, i64 72, !13, i64 136, !13, i64 200, !13, i64 264, !19, i64 520}
!22 = !{!21, !19, i64 520}
!23 = !{!21, !14, i64 4}
!24 = !{!21, !14, i64 0}
!25 = !{!"long", !13, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 int", !18, i64 0}
!28 = !{!"Vec_Int_t_", !14, i64 0, !14, i64 4, !27, i64 8}
!29 = !{!28, !14, i64 4}
!30 = !{!28, !14, i64 0}
!31 = !{!28, !27, i64 8}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!"timespec", !25, i64 0, !25, i64 8}
!37 = !{!36, !25, i64 0}
!38 = !{!36, !25, i64 8}
!39 = !{!"Vec_Wrd_t_", !14, i64 0, !14, i64 4, !19, i64 8}
!40 = !{!39, !14, i64 4}
!41 = !{!39, !14, i64 0}
!42 = !{!39, !19, i64 8}
!43 = !{!"p1 _ZTS10Vec_Int_t_", !18, i64 0}
!44 = !{!"Vec_Wec_t_", !14, i64 0, !14, i64 4, !43, i64 8}
!45 = !{!44, !43, i64 8}
!46 = !{!44, !14, i64 4}
!47 = !{!44, !14, i64 0}
!48 = !{!"p1 omnipotent char", !18, i64 0}
!49 = !{!"p1 _ZTS10Gia_Obj_t_", !18, i64 0}
!50 = !{!"p1 _ZTS10Gia_Rpr_t_", !18, i64 0}
!51 = !{!"p1 _ZTS10Vec_Wec_t_", !18, i64 0}
!52 = !{!"p1 _ZTS10Vec_Str_t_", !18, i64 0}
!53 = !{!"p1 _ZTS10Abc_Cex_t_", !18, i64 0}
!54 = !{!"p1 _ZTS10Vec_Ptr_t_", !18, i64 0}
!55 = !{!"p1 _ZTS10Gia_Plc_t_", !18, i64 0}
!56 = !{!"p1 _ZTS10Gia_Man_t_", !18, i64 0}
!57 = !{!"p1 _ZTS10Vec_Flt_t_", !18, i64 0}
!58 = !{!"float", !13, i64 0}
!59 = !{!"p1 _ZTS10Vec_Vec_t_", !18, i64 0}
!60 = !{!"p1 _ZTS10Vec_Wrd_t_", !18, i64 0}
!61 = !{!"p1 _ZTS10Vec_Bit_t_", !18, i64 0}
!62 = !{!"p1 _ZTS10Gia_Dat_t_", !18, i64 0}
!63 = !{!"Gia_Man_t_", !48, i64 0, !48, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !49, i64 32, !27, i64 40, !14, i64 48, !14, i64 52, !14, i64 56, !43, i64 64, !43, i64 72, !28, i64 80, !28, i64 96, !14, i64 112, !14, i64 116, !14, i64 120, !28, i64 128, !27, i64 144, !27, i64 152, !43, i64 160, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180, !27, i64 184, !50, i64 192, !27, i64 200, !27, i64 208, !27, i64 216, !14, i64 224, !14, i64 228, !27, i64 232, !14, i64 240, !43, i64 248, !43, i64 256, !43, i64 264, !51, i64 272, !51, i64 280, !43, i64 288, !18, i64 296, !43, i64 304, !43, i64 312, !52, i64 320, !48, i64 328, !43, i64 336, !43, i64 344, !43, i64 352, !43, i64 360, !43, i64 368, !53, i64 376, !53, i64 384, !54, i64 392, !28, i64 400, !28, i64 416, !43, i64 432, !43, i64 440, !43, i64 448, !43, i64 456, !43, i64 464, !43, i64 472, !43, i64 480, !43, i64 488, !43, i64 496, !43, i64 504, !43, i64 512, !48, i64 520, !55, i64 528, !56, i64 536, !57, i64 544, !57, i64 552, !43, i64 560, !43, i64 568, !43, i64 576, !43, i64 584, !43, i64 592, !14, i64 600, !58, i64 604, !58, i64 608, !43, i64 616, !27, i64 624, !14, i64 632, !54, i64 640, !54, i64 648, !54, i64 656, !43, i64 664, !43, i64 672, !43, i64 680, !43, i64 688, !43, i64 696, !43, i64 704, !43, i64 712, !43, i64 720, !43, i64 728, !59, i64 736, !57, i64 744, !18, i64 752, !18, i64 760, !18, i64 768, !25, i64 776, !25, i64 784, !18, i64 792, !27, i64 800, !14, i64 808, !14, i64 812, !14, i64 816, !14, i64 820, !14, i64 824, !14, i64 828, !14, i64 832, !14, i64 836, !14, i64 840, !14, i64 844, !14, i64 848, !14, i64 852, !60, i64 856, !60, i64 864, !60, i64 872, !60, i64 880, !43, i64 888, !43, i64 896, !43, i64 904, !61, i64 912, !14, i64 920, !14, i64 924, !14, i64 928, !43, i64 936, !14, i64 944, !14, i64 948, !43, i64 952, !43, i64 960, !54, i64 968, !60, i64 976, !43, i64 984, !43, i64 992, !14, i64 1000, !14, i64 1004, !60, i64 1008, !28, i64 1016, !28, i64 1032, !28, i64 1048, !62, i64 1064, !52, i64 1072, !52, i64 1080, !14, i64 1088, !14, i64 1092, !14, i64 1096, !14, i64 1100, !52, i64 1104, !43, i64 1112, !43, i64 1120, !43, i64 1128, !54, i64 1136}
!64 = !{!63, !48, i64 0}
!65 = !{!63, !43, i64 64}
!66 = !{!63, !49, i64 32}
!67 = !{!63, !43, i64 72}
!68 = !{!63, !27, i64 232}
!69 = !{!56, !56, i64 0}
!70 = !{!63, !14, i64 24}
!71 = distinct !{!71, !32}
!72 = distinct !{!72, !32}
!73 = !{!13, !13, i64 0}
!74 = !{i64 0, i64 4, !17, i64 4, i64 4, !17, i64 8, i64 64, !73, i64 72, i64 64, !73, i64 136, i64 64, !73, i64 200, i64 64, !73, i64 264, i64 256, !73, i64 520, i64 8, !20}
!75 = distinct !{!75, !32}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = distinct !{!80, !32, !33, !34}
!81 = distinct !{!81, !32, !34, !33}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !32}
!84 = distinct !{!84, !32, !33, !34}
!85 = distinct !{!85, !32}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, i1 false, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !32, !33, !34}
!91 = distinct !{!91, !32, !33}
!92 = distinct !{!92, !32}
!93 = distinct !{!93, !32}
!94 = !{!88}
!95 = !{!89}
!96 = distinct !{!96, !32, !33, !34}
!97 = distinct !{!97, !35}
!98 = distinct !{!98, !32, !33}
!99 = distinct !{!99, !32, !33, !34}
!100 = distinct !{!100, !35}
!101 = distinct !{!101, !32, !33}
!102 = distinct !{!102, !32}
!103 = distinct !{!103, !32, !33, !34}
!104 = distinct !{!104, !35}
!105 = distinct !{!105, !32, !33}
!106 = distinct !{!106, !32, !33, !34}
!107 = distinct !{!107, !35}
!108 = distinct !{!108, !32, !33}
!109 = distinct !{!109, !32, !33, !34}
!110 = distinct !{!110, !32, !34, !33}
!111 = distinct !{!111, !32}
!112 = distinct !{!112, !32}
!113 = distinct !{!113, !32}
!114 = distinct !{!114, !32}
!115 = distinct !{!115, !32, !33, !34}
!116 = distinct !{!116, i1 false, !"LVerDomain"}
!117 = distinct !{!117, !116}
!118 = distinct !{!118, !116}
!119 = distinct !{!119, !32, !33, !34}
!120 = distinct !{!120, !32, !33}
!121 = distinct !{!121, !32}
!122 = distinct !{!122, i1 false, !"LVerDomain"}
!123 = distinct !{!123, !122}
!124 = distinct !{!124, !122}
!125 = distinct !{!125, !32, !33, !34}
!126 = distinct !{!126, !32, !33}
!127 = distinct !{!127, !32}
!128 = distinct !{!128, !32}
!129 = !{!117}
!130 = !{!118}
!131 = !{!123}
!132 = !{!124}
!133 = distinct !{!133, !32}
!134 = distinct !{!134, !32, !33, !34}
!135 = distinct !{!135, !35}
!136 = distinct !{!136, !32, !33}
!137 = distinct !{!137, !32, !33, !34}
!138 = distinct !{!138, !35}
!139 = distinct !{!139, !32, !33}
!140 = distinct !{!140, !32}
!141 = distinct !{!141, !32, !33, !34}
!142 = distinct !{!142, !35}
!143 = distinct !{!143, !32, !33, !34}
!144 = distinct !{!144, !35}
!145 = distinct !{!145, !32, !33}
!146 = distinct !{!146, !32, !33, !34}
!147 = distinct !{!147, !35}
!148 = distinct !{!148, !32, !33}
!149 = distinct !{!149, !32, !33}
!150 = distinct !{!150, !32, !33, !34}
!151 = distinct !{!151, !35}
!152 = distinct !{!152, !32, !33}
!153 = distinct !{!153, !32}
!154 = distinct !{!154, !32}
!155 = distinct !{!155, !32, !33, !34}
!156 = distinct !{!156, !32, !33}
!157 = distinct !{!157, !35}
!158 = distinct !{!158, !32}
!159 = distinct !{!159, !32, !33, !34}
!160 = distinct !{!160, !32, !34, !33}
!161 = distinct !{!161, !32, !33, !34}
!162 = distinct !{!162, !32, !34, !33}
!163 = distinct !{!163, !32, !33, !34}
!164 = distinct !{!164, !32, !34, !33}
!165 = distinct !{!165, !32, !33, !34}
!166 = distinct !{!166, !35}
!167 = distinct !{!167, !32, !33}
!168 = distinct !{!168, !32, !33, !34}
!169 = distinct !{!169, !35}
!170 = distinct !{!170, !32, !33}
!171 = distinct !{!171, !32, !33, !34}
!172 = distinct !{!172, !35}
!173 = distinct !{!173, !32, !33}
!174 = distinct !{!174, !32}
!175 = distinct !{!175, !32}
!176 = distinct !{!176, !32}
!177 = distinct !{!177, !32, !33, !34}
!178 = distinct !{!178, !35}
!179 = distinct !{!179, !32, !33}
!180 = distinct !{!180, !32, !33, !34}
!181 = distinct !{!181, !35}
!182 = distinct !{!182, !32, !33, !34}
!183 = distinct !{!183, !35}
!184 = distinct !{!184, !32, !33}
!185 = distinct !{!185, !32, !33, !34}
!186 = distinct !{!186, !35}
!187 = distinct !{!187, !32, !33}
!188 = distinct !{!188, !32, !33}
!189 = distinct !{!189, !32, !33, !34}
!190 = distinct !{!190, !35}
!191 = distinct !{!191, !32, !33}
!192 = distinct !{!192, !32}
!193 = distinct !{!193, !32}
!194 = distinct !{!194, !32}
!195 = distinct !{!195, !32}
!196 = distinct !{!196, !32, !33, !34}
!197 = distinct !{!197, !32, !34, !33}
!198 = distinct !{!198, !32, !33, !34}
!199 = distinct !{!199, !32, !34, !33}
!200 = distinct !{!200, !32, !33, !34}
!201 = distinct !{!201, !32, !34, !33}
!202 = distinct !{!202, !32, !33, !34}
!203 = distinct !{!203, !35}
!204 = distinct !{!204, !32, !33}
!205 = distinct !{!205, !32, !33, !34}
!206 = distinct !{!206, !35}
!207 = distinct !{!207, !32, !33}
!208 = distinct !{!208, !32}
!209 = distinct !{!209, !32, !33, !34}
!210 = distinct !{!210, !35}
!211 = distinct !{!211, !32, !33}
!212 = distinct !{!212, !32, !33, !34}
!213 = distinct !{!213, !35}
!214 = distinct !{!214, !32, !33, !34}
!215 = distinct !{!215, !35}
!216 = distinct !{!216, !32, !33}
!217 = distinct !{!217, !32, !33, !34}
!218 = distinct !{!218, !35}
!219 = distinct !{!219, !32, !33}
!220 = distinct !{!220, !32, !33}
!221 = distinct !{!221, !32, !33, !34}
!222 = distinct !{!222, !35}
!223 = distinct !{!223, !32, !33}
!224 = distinct !{!224, !32}
!225 = distinct !{!225, !32}
!226 = distinct !{!226, !32}
!227 = distinct !{!227, !32}
!228 = distinct !{!228, !32, !33, !34}
!229 = distinct !{!229, !32, !34, !33}
!230 = distinct !{!230, !32, !33, !34}
!231 = distinct !{!231, !32, !34, !33}
!232 = distinct !{!232, !32, !33, !34}
!233 = distinct !{!233, !32, !34, !33}
!234 = distinct !{!234, !32}
!235 = distinct !{!235, !32, !33, !34}
!236 = distinct !{!236, !32, !33, !34}
!237 = distinct !{!237, !32}
!238 = distinct !{!238, !32, !33, !34}
!239 = distinct !{!239, !32, !34, !33}
!240 = distinct !{!240, !32, !33, !34}
!241 = distinct !{!241, !32, !34, !33}
!242 = distinct !{!242, !32, !33, !34}
!243 = distinct !{!243, !32, !34, !33}
!244 = distinct !{!244, !32}
!245 = distinct !{!245, !32}
!246 = distinct !{!246, !32}
!247 = distinct !{!247, !32}
!248 = distinct !{!248, !32}
!249 = distinct !{!249, !32}
!250 = distinct !{!250, !32}
!251 = distinct !{!251, !32}
!252 = distinct !{!252, !32, !33, !34}
!253 = distinct !{!253, !32, !34, !33}
!254 = distinct !{!254, !32}
!255 = distinct !{!255, !32}
!256 = distinct !{!256, !32}
!257 = distinct !{!257, !32, !33, !34}
!258 = distinct !{!258, !32, !33, !34}
!259 = distinct !{!259, !32, !33}
!260 = distinct !{!260, !32, !33}
!261 = distinct !{!261, !35}
!262 = distinct !{!262, !35}
!263 = distinct !{!263, !32}
!264 = distinct !{!264, !32}
!265 = distinct !{!265, !32, !33, !34}
!266 = distinct !{!266, !32, !33, !34}
!267 = distinct !{!267, !32, !34, !33}
!268 = distinct !{!268, i1 true, !"vprintf"}
!269 = distinct !{!269, !268, !"vprintf: argument 0"}
!270 = distinct !{null}
!271 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!272 = !{!271, !271, i64 0}
!273 = !{!269}
!274 = !{!63, !14, i64 28}
!275 = !{!63, !14, i64 820}
!276 = !{!63, !27, i64 40}
!277 = !{!63, !14, i64 116}
!278 = !{!63, !14, i64 832}
!279 = !{!63, !60, i64 1008}
end_hunk_0
