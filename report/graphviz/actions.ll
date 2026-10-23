Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/actions?download=true
inline.NumInlined: 62
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@toLower:bb.a
  %i.ax = add nuw i64 %.017, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ax, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !65

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret ptr %i.d
}

declare ptr @exstralloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @toUpper(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 13 uses
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @exstralloc(ptr noundef %0, i64 noundef %i.c) #19 ; 9 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.b, 4
  %i.g = sub i64 %i.a, %i.e
  %diff.check = icmp ugt i64 %i.g, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.b, 16
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %i.b, 12
  %n.vec = and i64 %i.b, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !tbaa !8 ; 3 uses
  %i.j = sext <16 x i8> %wide.load to <16 x i32>
  %i.k = add nsw <16 x i32> %i.j, splat (i32 -97)
  %i.l = icmp ult <16 x i32> %i.k, splat (i32 26)
  %i.m = add <16 x i8> %wide.load, splat (i8 -32)
  %i.n = select <16 x i1> %i.l, <16 x i8> %i.m, <16 x i8> %wide.load
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  store <16 x i8> %i.n, ptr %i.o, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.b, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <4 x i8>, ptr %i.q, align 1, !tbaa !8 ; 3 uses
  %i.r = sext <4 x i8> %wide.load22 to <4 x i32>
  %i.s = add nsw <4 x i32> %i.r, splat (i32 -97)
  %i.t = icmp ult <4 x i32> %i.s, splat (i32 26)
  %i.u = add <4 x i8> %wide.load22, splat (i8 -32)
  %i.v = select <4 x i1> %i.t, <4 x i8> %i.u, <4 x i8> %wide.load22
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %index21
  store <4 x i8> %i.v, ptr %i.w, align 1, !tbaa !8
  %index.next23 = add nuw i64 %index21, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next23, %n.vec20
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.b, %n.vec20
  br i1 %cmp.n24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec20, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.017.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.017.ph
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8     ; 3 uses
  %i.aa = sext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -97
  %i.ac = icmp ult i32 %i.ab, 26
  %i.ad = add i8 %i.z, -32
  %.0.i.prol = select i1 %i.ac, i8 %i.ad, i8 %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017.ph
  store i8 %.0.i.prol, ptr %i.ae, align 1, !tbaa !8
  %i.af = or disjoint i64 %.017.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.017.unr = phi i64 [ %.017.ph, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = icmp eq i64 %i.b, %.neg
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  store i8 0, ptr %i.ah, align 1, !tbaa !8
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.017 = phi i64 [ %i.ax, %.lr.ph ], [ %.017.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8   ; 3 uses
  %i.ak = sext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -97
  %i.am = icmp ult i32 %i.al, 26
  %i.an = add i8 %i.aj, -32
  %.0.i = select i1 %i.am, i8 %i.an, i8 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %.017
  store i8 %.0.i, ptr %i.ao, align 1, !tbaa !8
  %i.ap = add nuw i64 %.017, 1                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8   ; 3 uses
  %i.as = sext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -97
  %i.au = icmp ult i32 %i.at, 26
  %i.av = add i8 %i.ar, -32
  %.0.i.1 = select i1 %i.au, i8 %i.av, i8 %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  store i8 %.0.i.1, ptr %i.aw, align 1, !tbaa !8
  %i.ax = add nuw i64 %.017, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ax, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !68

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @toHtml(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agstrdup_html(ptr noundef %0, ptr noundef %1) #19
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @canon(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #20
  %i.b = shl i64 %i.a, 1
  %i.c = add i64 %i.b, 3
  %i.d = tail call ptr @exstralloc(ptr noundef %0, i64 noundef %i.c) #19
  %i.e = tail call ptr @agstrcanon(ptr noundef nonnull %1, ptr noundef %i.d) #19
  ret ptr %i.e
}

declare ptr @agstrcanon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @colorx(ptr noundef %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 9 uses
  %i.b = alloca double, align 8                   ; 9 uses
  %i.c = alloca double, align 8                   ; 9 uses
  %i.d = alloca double, align 8                   ; 11 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 11 uses
  %i.g = alloca i32, align 4                      ; 10 uses
  %i.h = alloca i32, align 4                      ; 9 uses
  %3 = alloca %struct.agxbuf, align 8             ; 18 uses
  %4 = alloca %struct.agxbuf, align 8             ; 22 uses
  %i.i = load i8, ptr %2, align 1, !tbaa !8       ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %1, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.bp, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %i.i, label %bb.bp [
    i8 82, label %bb.e
    i8 72, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.str.29.sink = phi ptr [ @.str.29, %bb.d ], [ @.str.28, %bb.c ]
  %.not142.not.i = phi i1 [ true, %bb.d ], [ false, %bb.c ] ; 3 uses
  %.015 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) %.str.29.sink) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0113.i = phi ptr [ %1, %bb.e ], [ %i.p, %bb.f ] ; 17 uses
  %i.n = load i8, ptr %.0113.i, align 1, !tbaa !8
  %i.o = icmp eq i8 %i.n, 32
  %i.p = getelementptr inbounds nuw i8, ptr %.0113.i, i64 1 ; 5 uses
  br i1 %i.o, label %bb.f, label %bb.g, !llvm.loop !69

bb.g:                                             ; preds = %bb.f
  %.not19.not = icmp eq i32 %i.m, 0               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  store i32 255, ptr %i.h, align 4, !tbaa !33
  %i.q = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %.0113.i, ptr noundef nonnull @.str.47, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #19
  %i.r = icmp sgt i32 %i.q, 2
  br i1 %i.r, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre129 = load i32, ptr %i.e, align 4, !tbaa !33
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0113.i) #20
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %.0113.i, ptr noundef nonnull @.str.48, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #19
  %i.v = icmp eq i32 %i.u, 3
  br i1 %i.v, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %i.e, align 4, !tbaa !33   ; 2 uses
  %i.x = shl i32 %i.w, 4
  %i.y = or i32 %i.x, %i.w
  %i.z = load i32, ptr %i.f, align 4, !tbaa !33   ; 2 uses
  %i.aa = shl i32 %i.z, 4
  %i.ab = or i32 %i.aa, %i.z
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !33
  %i.ac = load i32, ptr %i.g, align 4, !tbaa !33  ; 2 uses
  %i.ad = shl i32 %i.ac, 4
  %i.ae = or i32 %i.ad, %i.ac
  store i32 %i.ae, ptr %i.g, align 4, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.af = phi i32 [ %.pre129, %._crit_edge ], [ %i.y, %bb.j ] ; 2 uses
  %i.ag = load i32, ptr %i.g, align 4, !tbaa !33  ; 2 uses
  br i1 %.not142.not.i, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %i.f, align 4, !tbaa !33
  %i.ai = uitofp i32 %i.af to double
  %i.aj = uitofp i32 %i.ah to double
  %i.ak = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.aj, i64 1
  %i.am = fdiv <2 x double> %i.al, splat (double 2.550000e+02) ; 3 uses
  %i.an = uitofp i32 %i.ag to double
  %i.ao = fdiv double %i.an, 2.550000e+02         ; 4 uses
  %i.ap = load i32, ptr %i.h, align 4, !tbaa !33
  %i.aq = uitofp i32 %i.ap to double
  %i.ar = extractelement <2 x double> %i.am, i64 1 ; 3 uses
  %i.as = call nsz double @llvm.minnum.f64(double %i.ar, double %i.ao)
  %i.at = extractelement <2 x double> %i.am, i64 0 ; 3 uses
  %i.au = call nsz double @llvm.minnum.f64(double %i.at, double %i.as)
  %i.av = call nsz double @llvm.maxnum.f64(double %i.ar, double %i.ao)
  %i.aw = call nsz double @llvm.maxnum.f64(double %i.at, double %i.av) ; 7 uses
  %i.ax = fcmp ogt double %i.aw, 0.000000e+00
  %i.ay = fsub double %i.aw, %i.au                ; 3 uses
  %i.az = fdiv double %i.ay, %i.aw
  %.0.i.i = select i1 %i.ax, double %i.az, double 0.000000e+00 ; 2 uses
  %i.ba = fcmp ogt double %.0.i.i, 0.000000e+00
  br i1 %i.ba, label %bb.m, label %rgb2hsv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bb = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fsub <2 x double> %i.bc, %i.am
  %i.be = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fdiv <2 x double> %i.bd, %i.bf          ; 4 uses
  %i.bh = fsub double %i.aw, %i.ao
  %i.bi = fdiv double %i.bh, %i.ay                ; 2 uses
  %lhsv.cast.i.i.i = bitcast double %i.at to i64
  %rhsv.cast.i.i.i = bitcast double %i.aw to i64  ; 3 uses
  %.not.i.i.i = icmp eq i64 %lhsv.cast.i.i.i, %rhsv.cast.i.i.i
  br i1 %.not.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = extractelement <2 x double> %i.bg, i64 1
  %i.bk = fsub double %i.bi, %i.bj
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %lhsv.cast.i48.i.i = bitcast double %i.ar to i64
  %.not.i50.i.i = icmp eq i64 %lhsv.cast.i48.i.i, %rhsv.cast.i.i.i
  br i1 %.not.i50.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = extractelement <2 x double> %i.bg, i64 0
  %i.bm = fadd double %i.bl, 2.000000e+00
  %i.bn = fsub double %i.bm, %i.bi
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %lhsv.cast.i51.i.i = bitcast double %i.ao to i64
  %.not.i53.i.i = icmp eq i64 %lhsv.cast.i51.i.i, %rhsv.cast.i.i.i
  br i1 %.not.i53.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = extractelement <2 x double> %i.bg, i64 1
  %i.bp = fadd double %i.bo, 4.000000e+00
  %i.bq = extractelement <2 x double> %i.bg, i64 0
  %i.br = fsub double %i.bp, %i.bq
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %.044.i.i = phi double [ %i.bk, %bb.n ], [ %i.bn, %bb.p ], [ %i.br, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.bs = fmul double %.044.i.i, 6.000000e+01     ; 3 uses
  %i.bt = fcmp olt double %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.t, label %rgb2hsv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bu = fadd double %i.bs, 3.600000e+02
  br label %rgb2hsv.exit.i

rgb2hsv.exit.i:                                   ; preds = %bb.t, %bb.s, %bb.l
  %.1.i.i = phi double [ %i.bu, %bb.t ], [ %i.bs, %bb.s ], [ 0.000000e+00, %bb.l ]
  %i.bv = fdiv double %.1.i.i, 3.600000e+02
  %i.bw = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %.0.i.i, i64 1
  br label %.thread

bb.u:                                             ; preds = %bb.k
  %i.by = load i32, ptr %i.f, align 4, !tbaa !33
  %i.bz = shl i32 %i.by, 8
  %i.ca = and i32 %i.bz, 65280
  %i.cb = and i32 %i.af, 255
  %.sroa.0.1.insert.insert66121 = or disjoint i32 %i.ca, %i.cb
  %i.cc = shl i32 %i.ag, 16
  %i.cd = load i32, ptr %i.h, align 4, !tbaa !33
  %i.ce = shl i32 %i.cd, 24
  %.masked = and i32 %i.cc, 16711680
  %i.cf = or disjoint i32 %.sroa.0.1.insert.insert66121, %.masked
  %.sroa.0.3.insert.insert92123 = or disjoint i32 %i.cf, %i.ce
  %.sroa.0.3.insert.insert92 = zext i32 %.sroa.0.3.insert.insert92123 to i64
  %5 = bitcast i64 %.sroa.0.3.insert.insert92 to double
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  br label %bb.bh

.thread.i:                                        ; preds = %bb.i, %bb.h
  %i.cg = load i8, ptr %.0113.i, align 1, !tbaa !8 ; 4 uses
  %i.ch = icmp eq i8 %i.cg, 46
  %i.ci = sext i8 %i.cg to i32
  %i.cj = add nsw i32 %i.ci, -48
  %i.ck = icmp ult i32 %i.cj, 10
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.ck
  br i1 %or.cond.i, label %bb.v, label %bb.ap

bb.v:                                             ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %.not143.i = icmp eq i8 %i.cg, 0
  br i1 %.not143.i, label %._crit_edge.thread.i, label %agxbsizeof.exit.i.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.v
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !73
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 31
  br label %agxblen.exit.i.i.i

agxbsizeof.exit.i.lr.ph.i:                        ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %agxbsizeof.exit.i.i

agxbsizeof.exit.i.i:                              ; preds = %agxbputc.exit.i, %agxbsizeof.exit.i.lr.ph.i
  %.val.i152.i = phi i8 [ 0, %agxbsizeof.exit.i.lr.ph.i ], [ %.val.i150.i, %agxbputc.exit.i ]
  %.val.i.i.i = phi i8 [ 0, %agxbsizeof.exit.i.lr.ph.i ], [ %.val.i.i149.i, %agxbputc.exit.i ] ; 3 uses
  %i.cp = phi i8 [ %i.cg, %agxbsizeof.exit.i.lr.ph.i ], [ %i.dd, %agxbputc.exit.i ] ; 2 uses
  %.0111144.i = phi ptr [ %.0113.i, %agxbsizeof.exit.i.lr.ph.i ], [ %i.cq, %agxbputc.exit.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0111144.i, i64 1 ; 2 uses
  %i.cr = icmp eq i8 %i.cp, 44
  %narrow.i = select i1 %i.cr, i8 32, i8 %i.cp    ; 2 uses
  %.not.i.i126.i = icmp eq i8 %.val.i.i.i, -1     ; 2 uses
  %i.cs = load i64, ptr %i.cn, align 8
  %i.ct = load i64, ptr %i.co, align 8
  %i.cu = zext i8 %.val.i.i.i to i64
  %.0.i20.i.i = select i1 %.not.i.i126.i, i64 %i.cs, i64 %i.cu
  %.0.i14.i.i = select i1 %.not.i.i126.i, i64 %i.ct, i64 31
  %.not.i.i = icmp ult i64 %.0.i20.i.i, %.0.i14.i.i
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %agxbsizeof.exit.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i.i = load i8, ptr %i.cm, align 1, !tbaa !8 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %agxbsizeof.exit.i.i
  %.val.i151.i = phi i8 [ %.val.i15.pre.i.i, %bb.w ], [ %.val.i152.i, %agxbsizeof.exit.i.i ]
  %.val.i.i147.i = phi i8 [ %.val.i15.pre.i.i, %bb.w ], [ %.val.i.i.i, %agxbsizeof.exit.i.i ] ; 2 uses
  %.not.i16.i.i = icmp eq i8 %.val.i.i147.i, -1
  br i1 %.not.i16.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = zext i8 %.val.i.i147.i to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 %i.cv
  store i8 %narrow.i, ptr %i.cw, align 1, !tbaa !8
  %i.cx = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.cy = add i8 %i.cx, 1                         ; 3 uses
  store i8 %i.cy, ptr %i.cm, align 1, !tbaa !8
  br label %agxbputc.exit.i

bb.z:                                             ; preds = %bb.x
  %i.cz = load i64, ptr %i.cn, align 8, !tbaa !8  ; 2 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  store i8 %narrow.i, ptr %i.db, align 1, !tbaa !8
  %i.dc = add i64 %i.cz, 1
  store i64 %i.dc, ptr %i.cn, align 8, !tbaa !8
  br label %agxbputc.exit.i

agxbputc.exit.i:                                  ; preds = %bb.z, %bb.y
  %.val.i150.i = phi i8 [ %i.cy, %bb.y ], [ %.val.i151.i, %bb.z ] ; 3 uses
  %.val.i.i149.i = phi i8 [ %i.cy, %bb.y ], [ -1, %bb.z ]
  %i.dd = load i8, ptr %i.cq, align 1, !tbaa !8   ; 2 uses
  %.not.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i, label %._crit_edge.i, label %agxbsizeof.exit.i.i, !llvm.loop !70

._crit_edge.i:                                    ; preds = %agxbputc.exit.i
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !73
  switch i8 %.val.i150.i, label %agxblen.exit.i.i.i [
    i8 -1, label %bb.aa
    i8 31, label %agxbuse.exit.thread.i
  ]

agxblen.exit.i.i.i:                               ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.de = phi ptr [ %i.cl, %._crit_edge.thread.i ], [ %i.cm, %._crit_edge.i ]
  %.val.i163.i = phi i8 [ 0, %._crit_edge.thread.i ], [ %.val.i150.i, %._crit_edge.i ] ; 2 uses
  %i.df = zext i8 %.val.i163.i to i64
  br label %agxbsizeof.exit.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i
  %i.dg = load i64, ptr %i.cn, align 8, !tbaa !8
  %i.dh = load i64, ptr %i.co, align 8, !tbaa !8
  br label %agxbsizeof.exit.i.i.i

agxbsizeof.exit.i.i.i:                            ; preds = %bb.aa, %agxblen.exit.i.i.i
  %i.di = phi ptr [ %i.cm, %bb.aa ], [ %i.de, %agxblen.exit.i.i.i ] ; 4 uses
  %.val.i162.i = phi i8 [ -1, %bb.aa ], [ %.val.i163.i, %agxblen.exit.i.i.i ]
  %.0.i20.i.i.i = phi i64 [ %i.dg, %bb.aa ], [ %i.df, %agxblen.exit.i.i.i ]
  %.0.i14.i.i.i = phi i64 [ %i.dh, %bb.aa ], [ 31, %agxblen.exit.i.i.i ]
  %.not.i5.i.i = icmp ult i64 %.0.i20.i.i.i, %.0.i14.i.i.i
  br i1 %.not.i5.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %agxbsizeof.exit.i.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %3, i64 noundef 1)
  %.val.i15.pre.i.i.i = load i8, ptr %i.di, align 1, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %agxbsizeof.exit.i.i.i
  %.val.i6.pr.i.i = phi i8 [ %.val.i15.pre.i.i.i, %bb.ab ], [ %.val.i162.i, %agxbsizeof.exit.i.i.i ] ; 2 uses
  %.not.i16.i.i.i = icmp eq i8 %.val.i6.pr.i.i, -1
  br i1 %.not.i16.i.i.i, label %agxbputc.exit.i.thread.i, label %agxbputc.exit.i.i

agxbputc.exit.i.thread.i:                         ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !8
  %i.dl = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 0, ptr %i.dm, align 1, !tbaa !8
  br label %agxbuse.exit.i

agxbputc.exit.i.i:                                ; preds = %bb.ac
  %i.dn = zext i8 %.val.i6.pr.i.i to i64
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 %i.dn
  store i8 0, ptr %i.do, align 1, !tbaa !8
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !8
  %i.dq = add i8 %i.dp, 1                         ; 2 uses
  store i8 %i.dq, ptr %i.di, align 1, !tbaa !8
  %i.dr = icmp eq i8 %i.dq, -1
  br i1 %i.dr, label %agxbputc.exit.i.i.agxbuse.exit.i_crit_edge, label %agxbuse.exit.thread.i

agxbputc.exit.i.i.agxbuse.exit.i_crit_edge:       ; preds = %agxbputc.exit.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !8
  br label %agxbuse.exit.i

agxbuse.exit.i:                                   ; preds = %agxbputc.exit.i.i.agxbuse.exit.i_crit_edge, %agxbputc.exit.i.thread.i
  %i.ds = phi ptr [ %.pre, %agxbputc.exit.i.i.agxbuse.exit.i_crit_edge ], [ %i.dl, %agxbputc.exit.i.thread.i ] ; 2 uses
  %i.dt = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.ds, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #19
  %i.du = icmp slt i32 %i.dt, 3
  br i1 %i.du, label %6, label %bb.ad

agxbuse.exit.thread.i:                            ; preds = %agxbputc.exit.i.i, %._crit_edge.i
  %i.dv = phi ptr [ %i.di, %agxbputc.exit.i.i ], [ %i.cm, %._crit_edge.i ]
  store i8 0, ptr %i.dv, align 1, !tbaa !8
  %i.dw = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #19
  %i.dx = icmp slt i32 %i.dw, 3
  br i1 %i.dx, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %agxbuse.exit.thread.i, %agxbuse.exit.i
  %i.dy = phi i1 [ false, %agxbuse.exit.thread.i ], [ true, %agxbuse.exit.i ]
  %i.dz = load double, ptr %i.a, align 8, !tbaa !73
  %i.ea = load double, ptr %i.b, align 8, !tbaa !73
  %i.eb = load double, ptr %i.c, align 8, !tbaa !73
  %i.ec = load double, ptr %i.d, align 8, !tbaa !73
  %i.ed = insertelement <4 x double> poison, double %i.dz, i64 0
  %i.ee = insertelement <4 x double> %i.ed, double %i.eb, i64 1
  %i.ef = insertelement <4 x double> %i.ee, double %i.ea, i64 2
  %i.eg = insertelement <4 x double> %i.ef, double %i.ec, i64 3
  %i.eh = call nsz <4 x double> @llvm.minnum.v4f64(<4 x double> %i.eg, <4 x double> splat (double 1.000000e+00))
  %i.ei = call nsz <4 x double> @llvm.maxnum.v4f64(<4 x double> %i.eh, <4 x double> zeroinitializer) ; 6 uses
  %i.ej = extractelement <4 x double> %i.ei, i64 0 ; 3 uses
  store double %i.ej, ptr %i.a, align 8, !tbaa !73
  %i.ek = extractelement <4 x double> %i.ei, i64 2 ; 4 uses
  store double %i.ek, ptr %i.b, align 8, !tbaa !73
  %i.el = extractelement <4 x double> %i.ei, i64 1 ; 13 uses
  store double %i.el, ptr %i.c, align 8, !tbaa !73
  %i.em = extractelement <4 x double> %i.ei, i64 3
  store double %i.em, ptr %i.d, align 8, !tbaa !73
  br i1 %.not142.not.i, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = fcmp ugt double %i.ek, 0.000000e+00
  br i1 %i.en, label %bb.af, label %hsv2rgb.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.eo = fcmp oge double %i.ej, 1.000000e+00
  %i.ep = fmul nnan double %i.ej, 6.000000e+00
  %i.eq = select i1 %i.eo, double 0.000000e+00, double %i.ep ; 2 uses
  %i.er = fptosi double %i.eq to i32              ; 2 uses
  %i.es = sitofp i32 %i.er to double
  %i.et = fsub double %i.eq, %i.es                ; 2 uses
  %i.eu = fsub nnan double 1.000000e+00, %i.ek
  %i.ev = fmul double %i.eu, %i.el                ; 6 uses
  %i.ew = fneg double %i.ek
  %i.ex = fsub nnan double 1.000000e+00, %i.et
  %i.ey = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ex, i64 1
  %i.fc = call nnan <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.fb, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0
  %i.fe = fmul double %i.el, %i.fd                ; 3 uses
  %i.ff = extractelement <2 x double> %i.fc, i64 1
  %i.fg = fmul double %i.el, %i.ff                ; 3 uses
  switch i32 %i.er, label %bb.al [
    i32 0, label %hsv2rgb.exit.i
    i32 1, label %bb.ag
    i32 2, label %bb.ah
    i32 3, label %bb.ai
    i32 4, label %bb.aj
    i32 5, label %bb.ak
  ]

bb.ag:                                            ; preds = %bb.af
  br label %hsv2rgb.exit.i

bb.ah:                                            ; preds = %bb.af
  br label %hsv2rgb.exit.i

bb.ai:                                            ; preds = %bb.af
  br label %hsv2rgb.exit.i

bb.aj:                                            ; preds = %bb.af
  br label %hsv2rgb.exit.i

bb.ak:                                            ; preds = %bb.af
  br label %hsv2rgb.exit.i

bb.al:                                            ; preds = %bb.af
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.fi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fh, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49, i32 noundef 88) #22 ; 0 uses
  call void @abort() #24
  unreachable

hsv2rgb.exit.i:                                   ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.sink57.i.i = phi double [ %i.el, %bb.ae ], [ %i.fe, %bb.ag ], [ %i.ev, %bb.ah ], [ %i.ev, %bb.ai ], [ %i.fg, %bb.aj ], [ %i.el, %bb.ak ], [ %i.el, %bb.af ]
  %.sink56.i.i = phi double [ %i.el, %bb.ae ], [ %i.el, %bb.ag ], [ %i.el, %bb.ah ], [ %i.fe, %bb.ai ], [ %i.ev, %bb.aj ], [ %i.ev, %bb.ak ], [ %i.fg, %bb.af ]
  %.sink.i.i = phi double [ %i.el, %bb.ae ], [ %i.ev, %bb.ag ], [ %i.fg, %bb.ah ], [ %i.el, %bb.ai ], [ %i.el, %bb.aj ], [ %i.fe, %bb.ak ], [ %i.ev, %bb.af ]
  %i.fj = insertelement <4 x double> %i.ei, double %.sink57.i.i, i64 0
  %i.fk = insertelement <4 x double> %i.fj, double %.sink56.i.i, i64 1
  %i.fl = insertelement <4 x double> %i.fk, double %.sink.i.i, i64 2
  %i.fm = fmul <4 x double> %i.fl, splat (double 2.550000e+02)
  %i.fn = fptoui <4 x double> %i.fm to <4 x i8>
  %i.fo = bitcast <4 x i8> %i.fn to i32
  %i.fp = zext i32 %i.fo to i64
  %i.fq = bitcast i64 %i.fp to double
  %i.fr = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.fq, i64 0
  br label %bb.am

bb.am:                                            ; preds = %bb.ad, %hsv2rgb.exit.i
  %i.fs = phi <4 x double> [ %i.fr, %hsv2rgb.exit.i ], [ %i.ei, %bb.ad ]
  br i1 %i.dy, label %bb.an, label %agxbfree.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %.val124.i = load ptr, ptr %3, align 8
  call void @free(ptr noundef %.val124.i) #19
  br label %agxbfree.exit.thread.i

6:                                                ; preds = %agxbuse.exit.i
  call void @free(ptr noundef %i.ds) #19
  br label %bb.ao

bb.ao:                                            ; preds = %6, %agxbuse.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ap

agxbfree.exit.thread.i:                           ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.be

bb.ap:                                            ; preds = %bb.ao, %.thread.i
  %i.ft = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0113.i, ptr noundef nonnull dereferenceable(6) @.str.51) #20
  %.not.i128.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i128.i, label %resolveColor.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0113.i, ptr noundef nonnull dereferenceable(6) @.str.52) #20
  %.not26.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not26.i.i, label %resolveColor.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0113.i, ptr noundef nonnull dereferenceable(10) @.str.53) #20
  %.not27.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not27.i.i, label %resolveColor.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fw = load i8, ptr %.0113.i, align 1, !tbaa !8
  %i.fx = icmp eq i8 %i.fw, 47
  br i1 %i.fx, label %bb.at, label %resolveColor.exit.i

bb.at:                                            ; preds = %bb.as
  %i.fy = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.p, i32 noundef 47) #20 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.fy, null
  br i1 %.not28.i.i, label %resolveColor.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = load i8, ptr %i.p, align 1, !tbaa !8
  %i.ga = icmp eq i8 %i.fz, 47
  br i1 %i.ga, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gb = getelementptr inbounds nuw i8, ptr %.0113.i, i64 2
  br label %resolveColor.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.gc = call i32 @strncasecmp(ptr noundef nonnull @.str.54, ptr noundef nonnull readonly %i.p, i64 noundef 4) #20
  %.not29.i.i = icmp eq i32 %i.gc, 0
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  %spec.select.i.i = select i1 %.not29.i.i, ptr %i.gd, ptr %.0113.i
  br label %resolveColor.exit.i

resolveColor.exit.i:                              ; preds = %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.1.sink.i.i = phi ptr [ %.0113.i, %bb.ar ], [ %.0113.i, %bb.aq ], [ %.0113.i, %bb.ap ], [ %i.p, %bb.at ], [ %spec.select.i.i, %bb.aw ], [ %i.gb, %bb.av ], [ %.0113.i, %bb.as ]
  %i.ge = call noalias ptr @strdup(ptr noundef nonnull %.1.sink.i.i) #19 ; 4 uses
  %.not118.i = icmp eq ptr %i.ge, null
  br i1 %.not118.i, label %colorxlate.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %resolveColor.exit.i, %bb.az
  %.021.i.i = phi i64 [ %.1.i130.i, %bb.az ], [ 2515, %resolveColor.exit.i ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %bb.az ], [ 0, %resolveColor.exit.i ] ; 2 uses
  %i.gf = add i64 %.01620.i.i, %.021.i.i
  %i.gg = lshr i64 %i.gf, 1                       ; 3 uses
  %i.gh = shl i64 %i.gg, 4                        ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr @color_lib, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 16, !tbaa !75
  %i.gk = call i32 @strcasecmp(ptr noundef nonnull readonly %i.ge, ptr noundef %i.gj) #20 ; 2 uses
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i
  %.not.i129.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i129.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gm = add nuw i64 %i.gg, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i
  %.117.i.i = phi i64 [ %i.gm, %bb.ay ], [ %.01620.i.i, %.lr.ph.i.i ] ; 2 uses
  %.1.i130.i = phi i64 [ %.021.i.i, %bb.ay ], [ %i.gg, %.lr.ph.i.i ] ; 2 uses
  %i.gn = icmp ult i64 %.117.i.i, %.1.i130.i
  br i1 %i.gn, label %.lr.ph.i.i, label %bb.bd, !llvm.loop !71

bb.ba:                                            ; preds = %bb.ax
  %i.go = getelementptr inbounds nuw i8, ptr @color_lib, i64 %i.gh ; 4 uses
  call void @free(ptr noundef nonnull %i.ge) #19
  br i1 %.not142.not.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load <2 x i8>, ptr %i.gp, align 8, !tbaa !8
  %i.gr = uitofp <2 x i8> %i.gq to <2 x double>
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 10
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !76
  %i.gu = uitofp i8 %i.gt to double
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 14
  %i.gw = load i8, ptr %i.gv, align 2, !tbaa !77
  %i.gx = fdiv <2 x double> %i.gr, splat (double 2.550000e+02)
  %i.gy = fdiv double %i.gu, 2.550000e+02
  %i.gz = uitofp i8 %i.gw to double
  br label %.thread

bb.bc:                                            ; preds = %bb.ba
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 11
  %i.hb = load i32, ptr %i.ha, align 1
  %7 = zext i32 %i.hb to i64
  %8 = bitcast i64 %7 to double
  %9 = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %8, i64 0
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.ge) #19
  br label %colorxlate.exit

colorxlate.exit:                                  ; preds = %bb.bd, %resolveColor.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bp

.thread:                                          ; preds = %rgb2hsv.exit.i, %bb.bb
  %.sroa.32.1.ph.ph = phi double [ %i.aw, %rgb2hsv.exit.i ], [ %i.gy, %bb.bb ]
  %.sroa.36.1.ph.ph.in = phi double [ %i.aq, %rgb2hsv.exit.i ], [ %i.gz, %bb.bb ]
  %i.hc = phi <2 x double> [ %i.bx, %rgb2hsv.exit.i ], [ %i.gx, %bb.bb ]
  %.sroa.36.1.ph.ph = fdiv double %.sroa.36.1.ph.ph.in, 2.550000e+02
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.he = insertelement <4 x double> %i.hd, double %.sroa.32.1.ph.ph, i64 1
  %i.hf = insertelement <4 x double> %i.he, double %.sroa.36.1.ph.ph, i64 3
  br label %bb.bf

bb.be:                                            ; preds = %agxbfree.exit.thread.i, %bb.bc
  %10 = phi <4 x double> [ %9, %bb.bc ], [ %i.fs, %agxbfree.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %11 = extractelement <4 x double> %10, i64 0
  br i1 %.015, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.thread, %bb.be
  %i.hg = phi <4 x double> [ %i.hf, %.thread ], [ %10, %bb.be ] ; 4 uses
  %i.hh = extractelement <4 x double> %i.hg, i64 0
  %i.hi = extractelement <4 x double> %i.hg, i64 1
  %i.hj = extractelement <4 x double> %i.hg, i64 2
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %4, ptr noundef nonnull @.str.30, double noundef %i.hh, double noundef %i.hj, double noundef %i.hi)
  br i1 %.not19.not, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.hk = extractelement <4 x double> %i.hg, i64 3
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %4, ptr noundef nonnull @.str.31, double noundef %i.hk)
  br label %bb.bj

bb.bh:                                            ; preds = %bb.u, %bb.be
  %.sroa.0.1.ph120 = phi double [ %5, %bb.u ], [ %11, %bb.be ]
  %i.hl = bitcast double %.sroa.0.1.ph120 to i64
  %.sroa.0.0.extract.trunc = trunc i64 %i.hl to i32 ; 4 uses
  %i.hm = and i32 %.sroa.0.0.extract.trunc, 255
  %i.hn = lshr i32 %.sroa.0.0.extract.trunc, 8
  %i.ho = and i32 %i.hn, 255
  %i.hp = lshr i32 %.sroa.0.0.extract.trunc, 16
  %i.hq = and i32 %i.hp, 255
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %4, ptr noundef nonnull @.str.32, i32 noundef %i.hm, i32 noundef %i.ho, i32 noundef %i.hq)
  br i1 %.not19.not, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hr = lshr i32 %.sroa.0.0.extract.trunc, 24
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef %i.hr)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bf, %bb.bg
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 31 ; 6 uses
  %.val.i23 = load i8, ptr %i.hs, align 1, !tbaa !8 ; 3 uses
  switch i8 %.val.i23, label %agxblen.exit.i.i [
    i8 -1, label %bb.bk
    i8 31, label %agxbclear.exit.thread.i
  ]

agxblen.exit.i.i:                                 ; preds = %bb.bj
  %i.ht = zext i8 %.val.i23 to i64
  br label %agxbsizeof.exit.i.i24

bb.bk:                                            ; preds = %bb.bj
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !8
  br label %agxbsizeof.exit.i.i24

agxbsizeof.exit.i.i24:                            ; preds = %bb.bk, %agxblen.exit.i.i
  %.0.i20.i.i25 = phi i64 [ %i.hv, %bb.bk ], [ %i.ht, %agxblen.exit.i.i ]
  %.0.i14.i.i26 = phi i64 [ %i.hx, %bb.bk ], [ 31, %agxblen.exit.i.i ]
  %.not.i5.i = icmp ult i64 %.0.i20.i.i25, %.0.i14.i.i26
  br i1 %.not.i5.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %agxbsizeof.exit.i.i24
  call fastcc void @agxbmore(ptr noundef nonnull %4, i64 noundef 1)
  %.val.i15.pre.i.i27 = load i8, ptr %i.hs, align 1, !tbaa !8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %agxbsizeof.exit.i.i24
  %.val.i6.pr.i = phi i8 [ %.val.i15.pre.i.i27, %bb.bl ], [ %.val.i23, %agxbsizeof.exit.i.i24 ] ; 2 uses
  %.not.i16.i.i28 = icmp eq i8 %.val.i6.pr.i, -1
  br i1 %.not.i16.i.i28, label %agxbputc.exit.i29.thread, label %agxbputc.exit.i29

agxbputc.exit.i29.thread:                         ; preds = %bb.bm
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !8
  %i.ia = load ptr, ptr %4, align 8, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hz
  store i8 0, ptr %i.ib, align 1, !tbaa !8
  br label %bb.bn

agxbputc.exit.i29:                                ; preds = %bb.bm
  %i.ic = zext i8 %.val.i6.pr.i to i64
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 %i.ic
  store i8 0, ptr %i.id, align 1, !tbaa !8
  %i.ie = load i8, ptr %i.hs, align 1, !tbaa !8
  %i.if = add i8 %i.ie, 1                         ; 2 uses
  store i8 %i.if, ptr %i.hs, align 1, !tbaa !8
  %i.ig = icmp eq i8 %i.if, -1
  br i1 %i.ig, label %bb.bn, label %agxbclear.exit.thread.i

agxbclear.exit.thread.i:                          ; preds = %agxbputc.exit.i29, %bb.bj
  store i8 0, ptr %i.hs, align 1, !tbaa !8
  br label %agxbuse.exit

bb.bn:                                            ; preds = %agxbputc.exit.i29.thread, %agxbputc.exit.i29
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ih, align 8, !tbaa !8
  %i.ii = load ptr, ptr %4, align 8, !tbaa !8
  br label %agxbuse.exit

agxbuse.exit:                                     ; preds = %agxbclear.exit.thread.i, %bb.bn
  %i.ij = phi ptr [ %i.ii, %bb.bn ], [ %4, %agxbclear.exit.thread.i ]
  %i.ik = call ptr @exstring(ptr noundef %0, ptr noundef %i.ij) #19
  %.val22 = load i8, ptr %i.hs, align 1, !tbaa !8
  %i.il = icmp eq i8 %.val22, -1
  br i1 %i.il, label %bb.bo, label %agxbfree.exit

bb.bo:                                            ; preds = %agxbuse.exit
  %.val = load ptr, ptr %4, align 8
  call void @free(ptr noundef %.val) #19
  br label %agxbfree.exit

agxbfree.exit:                                    ; preds = %agxbuse.exit, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bp

bb.bp:                                            ; preds = %colorxlate.exit, %bb.c, %bb.a, %bb.b, %agxbfree.exit
  %.0 = phi ptr [ @.str.27, %bb.a ], [ @.str.27, %bb.c ], [ %i.ik, %agxbfree.exit ], [ @.str.27, %bb.b ], [ @.str.27, %colorxlate.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @agxbprint(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #9 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr nonnull %3)
  %i.b = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef readonly %1, ptr noundef nonnull %2) #19 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = icmp sgt i32 %i.b, -1
  %narrow.i = add nuw i32 %i.b, 1
  %i.d = zext i32 %narrow.i to i64                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %i.c, label %bb.b, label %vagxbprint.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 31         ; 5 uses
  %.val.i.i = load i8, ptr %i.e, align 1, !tbaa !8 ; 3 uses
  %.not.i.i = icmp ne i8 %.val.i.i, -1            ; 2 uses
  br i1 %.not.i.i, label %agxbsizeof.exit.i, label %bb.c

agxbsizeof.exit.i:                                ; preds = %bb.b
  %i.f = zext i8 %.val.i.i to i64
  br label %agxblen.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !8
  br label %agxblen.exit.i

agxblen.exit.i:                                   ; preds = %bb.c, %agxbsizeof.exit.i
  %.0.i51.i = phi i64 [ 31, %agxbsizeof.exit.i ], [ %i.h, %bb.c ]
  %.0.i43.i = phi i64 [ %i.f, %agxbsizeof.exit.i ], [ %i.j, %bb.c ]
  %i.k = sub i64 %.0.i51.i, %.0.i43.i             ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %agxblen.exit.i
  %i.m = sub nuw nsw i64 %i.d, %i.k               ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  %or.cond.i = select i1 %.not.i.i, i1 %i.n, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @agxbmore(ptr noundef nonnull %0, i64 noundef %i.m)
  %.val.i.i.pre.i = load i8, ptr %i.e, align 1, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %agxblen.exit.i
  %.val.i.i.i = phi i8 [ %.val.i.i, %agxblen.exit.i ], [ %.val.i.i.pre.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq i8 %.val.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.h, label %agxblen.exit.thread.i.i

agxblen.exit.thread.i.i:                          ; preds = %bb.g
  %i.o = zext i8 %.val.i.i.i to i64
  br label %agxbnext.exit.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !8
  %i.r = load ptr, ptr %0, align 8, !tbaa !8
  br label %agxbnext.exit.i

agxbnext.exit.i:                                  ; preds = %bb.h, %agxblen.exit.thread.i.i
  %.0.i6.i.i = phi i64 [ %i.q, %bb.h ], [ %i.o, %agxblen.exit.thread.i.i ]
  %.pn.i.i = phi ptr [ %i.r, %bb.h ], [ %0, %agxblen.exit.thread.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i6.i.i
  br label %bb.i

bb.i:                                             ; preds = %agxbnext.exit.i, %bb.f
  %.155.i = phi i1 [ false, %agxbnext.exit.i ], [ true, %bb.f ]
  %i.t = phi ptr [ %i.s, %agxbnext.exit.i ], [ %i.a, %bb.f ]
  %i.u = call i32 @vsnprintf(ptr noundef %i.t, i64 noundef %i.d, ptr noundef readonly %1, ptr noundef nonnull %3) #19 ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !8  ; 3 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.155.i, label %agxbnext.exit49.i, label %bb.l

agxbnext.exit49.i:                                ; preds = %bb.k
  %i.w = zext i8 %.val.i to i64
end_hunk_0
