Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shapes?download=true
inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0
@.str.165 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.166 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.167 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.168 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: nounwind uwtable
define void @round_corners(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [7 x %struct.pointf_s], align 16    ; 15 uses
  %6 = alloca [2 x %struct.pointf_s], align 16    ; 5 uses
  %7 = alloca [5 x %struct.pointf_s], align 16    ; 127 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = and i32 %3, 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @alloc_interpolation_points(ptr noundef %1, i64 noundef %2, i32 %3, i1 noundef zeroext false) ; 2 uses
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %4) #26
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %diagonals_draw.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.014.i = phi i64 [ 0, %.lr.ph.i ], [ %i.g, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %.idx.i = mul i64 %.014.i, 48
  %i.d = getelementptr i8, ptr %i.b, i64 %.idx.i  ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !8
  %i.f = getelementptr i8, ptr %i.d, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !8
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.g = add nuw i64 %.014.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.g, %2
  br i1 %exitcond.not.i, label %diagonals_draw.exit, label %bb.c, !llvm.loop !11

diagonals_draw.exit:                              ; preds = %bb.c, %bb.b
  call void @free(ptr noundef %i.b) #26
  br label %bb.an

bb.d:                                             ; preds = %bb.a
  %i.h = lshr i32 %3, 12
  %i.i = and i32 %i.h, 127                        ; 2 uses
  switch i32 %i.i, label %bb.m [
    i32 0, label %bb.e
    i32 26, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %3, 4
  %.not1639 = icmp eq i32 %i.j, 0
  br i1 %.not1639, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call fastcc ptr @alloc_interpolation_points(ptr noundef readonly %1, i64 noundef %2, i32 %3, i1 noundef zeroext true) ; 2 uses
  %i.l = mul i64 %2, 6
  %i.m = add i64 %i.l, 2                          ; 5 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %bb.f
  %i.n = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #27
  br label %gv_calloc.exit.i

bb.g:                                             ; preds = %bb.f
  %mul.ov.i.i = icmp ugt i64 %i.m, 1152921504606846975
  br i1 %mul.ov.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.5, i64 noundef %i.m, i64 noundef 16) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 16) #27 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %gv_calloc.exit.i

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.t = shl nuw i64 %i.m, 4
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.6, i64 noundef %i.t) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.i, %.thread.i.i
  %i.v = phi ptr [ %i.n, %.thread.i.i ], [ %i.q, %bb.i ] ; 6 uses
  %.not.i1815 = icmp eq i64 %2, 0
  br i1 %.not.i1815, label %rounded_draw.exit, label %.lr.ph.i1816

.lr.ph.i1816:                                     ; preds = %gv_calloc.exit.i, %.lr.ph.i1816
  %.043.i = phi i64 [ %i.ah, %.lr.ph.i1816 ], [ 0, %gv_calloc.exit.i ] ; 2 uses
  %.04142.i = phi i64 [ %i.ae, %.lr.ph.i1816 ], [ 0, %gv_calloc.exit.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.04142.i ; 6 uses
  %.idx.i1817 = shl i64 %.043.i, 6
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i1817 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !8
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !8
  %i.aa = getelementptr i8, ptr %i.w, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !8
  %i.ab = getelementptr i8, ptr %i.w, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !8
  %i.ad = getelementptr i8, ptr %i.w, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !8
  %i.ae = add i64 %.04142.i, 6                    ; 2 uses
  %i.af = getelementptr i8, ptr %i.w, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !8
  %i.ah = add nuw i64 %.043.i, 1                  ; 2 uses
  %exitcond.not.i1818 = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not.i1818, label %rounded_draw.exit, label %.lr.ph.i1816, !llvm.loop !16

rounded_draw.exit:                                ; preds = %.lr.ph.i1816, %gv_calloc.exit.i
  %.041.lcssa.i = phi i64 [ 0, %gv_calloc.exit.i ], [ %i.ae, %.lr.ph.i1816 ] ; 2 uses
  %i.ai = or disjoint i64 %.041.lcssa.i, 1        ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.041.lcssa.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !8
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !8
  tail call void @gvrender_beziercurve(ptr noundef %0, ptr noundef nonnull %i.al, i64 noundef %i.ai, i32 noundef %4) #26
  tail call void @free(ptr noundef %i.v) #26
  tail call void @free(ptr noundef %i.k) #26
  br label %bb.an

bb.k:                                             ; preds = %bb.e
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 731) #28 ; 0 uses
  tail call void @abort() #30
  unreachable

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !17 ; 2 uses
  %i.aq = fadd double %i.ap, %i.ap                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.as, ptr %i.at, align 16, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load double, ptr %i.au, align 8, !tbaa !17
  %i.aw = fsub double %i.aq, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %i.aw, ptr %i.ax, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load double, ptr %i.ay, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32
  store double %i.az, ptr %i.ba, align 16, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !17
  %i.bd = fsub double %i.aq, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 40
  store double %i.bd, ptr %i.be, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48
  store double %i.bg, ptr %i.bh, align 16, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !17
  %i.bk = fsub double %i.aq, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 56
  store double %i.bk, ptr %i.bl, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 64
  store double %i.bn, ptr %i.bo, align 16, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !17
  %i.br = fsub double %i.aq, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 72
  store double %i.br, ptr %i.bs, align 8, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 80
  store double %i.bu, ptr %i.bv, align 16, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !17
  %i.by = fsub double %i.aq, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 88
  store double %i.by, ptr %i.bz, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !8
  tail call void @gvrender_beziercurve(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %4) #26
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 7, i32 noundef 0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.an

bb.m:                                             ; preds = %bb.d
  %i.cc = tail call fastcc ptr @alloc_interpolation_points(ptr noundef %1, i64 noundef %2, i32 %3, i1 noundef zeroext false) ; 108 uses
  switch i32 %i.i, label %bb.am [
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 7, label %bb.t
    i32 8, label %bb.u
    i32 9, label %bb.v
    i32 10, label %bb.w
    i32 11, label %bb.x
    i32 12, label %bb.y
    i32 13, label %bb.z
    i32 14, label %bb.aa
    i32 15, label %bb.ab
    i32 16, label %bb.ac
    i32 17, label %bb.ad
    i32 18, label %bb.ae
    i32 19, label %bb.af
    i32 20, label %bb.ag
    i32 21, label %bb.ah
    i32 22, label %bb.ai
    i32 23, label %bb.aj
    i32 24, label %bb.ak
    i32 25, label %bb.al
  ]

bb.n:                                             ; preds = %bb.m
  %i.cd = add i64 %2, 1                           ; 2 uses
  %i.ce = tail call fastcc ptr @gv_calloc(i64 noundef %i.cd, i64 noundef 16) ; 7 uses
  %i.cf = icmp ugt i64 %2, 1
  br i1 %i.cf, label %.lr.ph1826.preheader, label %._crit_edge1827

.lr.ph1826.preheader:                             ; preds = %bb.n
  %i.cg = add i64 %2, -1                          ; 3 uses
  %xtraiter1843 = and i64 %i.cg, 1
  %i.ch = icmp eq i64 %2, 2
  br i1 %i.ch, label %.lr.ph1826.epil.preheader, label %.lr.ph1826.preheader.new

.lr.ph1826.preheader.new:                         ; preds = %.lr.ph1826.preheader
  %unroll_iter1846 = and i64 %i.cg, -2
  br label %.lr.ph1826

._crit_edge1827.loopexit.unr-lcssa:               ; preds = %.lr.ph1826
  %lcmp.mod1844.not = icmp eq i64 %xtraiter1843, 0
  br i1 %lcmp.mod1844.not, label %._crit_edge1827, label %.lr.ph1826.epil.preheader

.lr.ph1826.epil.preheader:                        ; preds = %._crit_edge1827.loopexit.unr-lcssa, %.lr.ph1826.preheader
  %.016321824.epil.init = phi i64 [ 1, %.lr.ph1826.preheader ], [ %i.da, %._crit_edge1827.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1845 = trunc i64 %i.cg to i1
  tail call void @llvm.assume(i1 %lcmp.mod1845)
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %.016321824.epil.init
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.016321824.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !8
  br label %._crit_edge1827

._crit_edge1827:                                  ; preds = %.lr.ph1826.epil.preheader, %._crit_edge1827.loopexit.unr-lcssa, %bb.n
  %.idx = mul i64 %2, 48
  %i.ck = getelementptr i8, ptr %i.cc, i64 %.idx  ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 16     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !8
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %2
  %i.cn = getelementptr i8, ptr %i.ck, i64 -16    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !8
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.ce, i64 noundef %i.cd, i32 noundef %4) #26
  tail call void @free(ptr noundef %i.ce) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !8
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.cq = load <2 x double>, ptr %i.co, align 16, !tbaa !9
  %i.cr = load <2 x double>, ptr %7, align 16, !tbaa !9
  %i.cs = load <2 x double>, ptr %i.ck, align 8, !tbaa !9
  %i.ct = fsub <2 x double> %i.cr, %i.cs
  %i.cu = fadd <2 x double> %i.cq, %i.ct
  store <2 x double> %i.cu, ptr %i.cp, align 16, !tbaa !9
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %i.co, i64 noundef 2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.co, ptr noundef nonnull align 16 dereferenceable(16) %i.cp, i64 16, i1 false), !tbaa.struct !8
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 2) #26
  br label %bb.am

.lr.ph1826:                                       ; preds = %.lr.ph1826, %.lr.ph1826.preheader.new
  %.016321824 = phi i64 [ 1, %.lr.ph1826.preheader.new ], [ %i.da, %.lr.ph1826 ] ; 4 uses
  %niter1847 = phi i64 [ 0, %.lr.ph1826.preheader.new ], [ %niter1847.next.1, %.lr.ph1826 ]
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %.016321824
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.016321824
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !8
  %i.cx = add nuw i64 %.016321824, 1              ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cx
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !8
  %i.da = add nuw i64 %.016321824, 2              ; 2 uses
  %niter1847.next.1 = add nuw i64 %niter1847, 2   ; 2 uses
  %niter1847.ncmp.1 = icmp eq i64 %niter1847.next.1, %unroll_iter1846
  br i1 %niter1847.ncmp.1, label %._crit_edge1827.loopexit.unr-lcssa, label %.lr.ph1826, !llvm.loop !20

bb.o:                                             ; preds = %bb.m
  %i.db = add i64 %2, 2                           ; 3 uses
  %i.dc = tail call fastcc ptr @gv_calloc(i64 noundef %i.db, i64 noundef 16) ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cc, i64 64 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.di = load <2 x double>, ptr %i.de, align 8, !tbaa !9
  %i.dj = load <2 x double>, ptr %i.df, align 8, !tbaa !9
  %i.dk = load <2 x double>, ptr %i.dg, align 8, !tbaa !9
  %i.dl = fsub <2 x double> %i.dj, %i.dk
  %i.dm = fdiv <2 x double> %i.dl, splat (double 3.000000e+00)
  %i.dn = fadd <2 x double> %i.di, %i.dm
  store <2 x double> %i.dn, ptr %i.dh, align 8, !tbaa !9
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dp = load <2 x double>, ptr %i.df, align 8, !tbaa !9 ; 2 uses
  %i.dq = load <2 x double>, ptr %i.dg, align 8, !tbaa !9
  %i.dr = fsub <2 x double> %i.dp, %i.dq
  %i.ds = fdiv <2 x double> %i.dr, splat (double 3.000000e+00)
  %i.dt = fadd <2 x double> %i.dp, %i.ds
  store <2 x double> %i.dt, ptr %i.do, align 8, !tbaa !9
  %i.du = icmp ugt i64 %i.db, 4
  br i1 %i.du, label %.lr.ph1822.preheader, label %._crit_edge1823

.lr.ph1822.preheader:                             ; preds = %bb.o
  %xtraiter1838 = and i64 %2, 1
  %i.dv = icmp eq i64 %2, 3
  br i1 %i.dv, label %.lr.ph1822.epil.preheader, label %.lr.ph1822.preheader.new

.lr.ph1822.preheader.new:                         ; preds = %.lr.ph1822.preheader
  %i.dw = and i64 %2, -2
  %i.dx = add i64 %i.dw, -4
  br label %.lr.ph1822

._crit_edge1823.loopexit.unr-lcssa:               ; preds = %.lr.ph1822
  %lcmp.mod1839.not = icmp eq i64 %xtraiter1838, 0
  br i1 %lcmp.mod1839.not, label %._crit_edge1823, label %.lr.ph1822.epil.preheader

.lr.ph1822.epil.preheader:                        ; preds = %._crit_edge1823.loopexit.unr-lcssa, %.lr.ph1822.preheader
  %.016311820.epil.init = phi i64 [ 4, %.lr.ph1822.preheader ], [ %i.ej, %._crit_edge1823.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1840 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1840)
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.016311820.epil.init
  %i.dz = getelementptr [16 x i8], ptr %1, i64 %.016311820.epil.init
  %i.ea = getelementptr i8, ptr %i.dz, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, i64 16, i1 false), !tbaa.struct !8
  br label %._crit_edge1823

._crit_edge1823:                                  ; preds = %.lr.ph1822.epil.preheader, %._crit_edge1823.loopexit.unr-lcssa, %bb.o
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.dc, i64 noundef %i.db, i32 noundef %4) #26
  tail call void @free(ptr noundef nonnull %i.dc) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !8
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !8
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 2) #26
  br label %bb.am

.lr.ph1822:                                       ; preds = %.lr.ph1822, %.lr.ph1822.preheader.new
  %.016311820 = phi i64 [ 4, %.lr.ph1822.preheader.new ], [ %i.ej, %.lr.ph1822 ] ; 4 uses
  %niter1842 = phi i64 [ 0, %.lr.ph1822.preheader.new ], [ %niter1842.next.1, %.lr.ph1822 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.016311820
  %i.ed = getelementptr [16 x i8], ptr %1, i64 %.016311820
  %i.ee = getelementptr i8, ptr %i.ed, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false), !tbaa.struct !8
  %i.ef = or disjoint i64 %.016311820, 1          ; 2 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.ef
  %i.eh = getelementptr [16 x i8], ptr %1, i64 %i.ef
  %i.ei = getelementptr i8, ptr %i.eh, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !tbaa.struct !8
  %i.ej = add nuw i64 %.016311820, 2              ; 2 uses
  %niter1842.next.1 = add i64 %niter1842, 2
  %niter1842.ncmp.1 = icmp eq i64 %niter1842, %i.dx
  br i1 %niter1842.ncmp.1, label %._crit_edge1823.loopexit.unr-lcssa, label %.lr.ph1822, !llvm.loop !21

bb.p:                                             ; preds = %bb.m
  %i.ek = add i64 %2, 3                           ; 3 uses
  %i.el = tail call fastcc ptr @gv_calloc(i64 noundef %i.ek, i64 noundef 16) ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !8
  %i.em = load double, ptr %1, align 8, !tbaa !19 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !19
  %i.ep = fsub double %i.em, %i.eo
  %i.eq = fmul double %i.ep, 2.500000e-01
  %i.er = fsub double %i.em, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store double %i.er, ptr %i.es, align 8, !tbaa !19
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eu = load double, ptr %i.et, align 8, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cc, i64 56 ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !17
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !17
  %i.fa = fsub double %i.ex, %i.ez
  %i.fb = fdiv double %i.fa, 3.000000e+00
  %i.fc = fadd double %i.eu, %i.fb                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store double %i.fc, ptr %i.fd, align 8, !tbaa !17
  %i.fe = load double, ptr %1, align 8, !tbaa !19 ; 2 uses
  %i.ff = load double, ptr %i.en, align 8, !tbaa !19
  %i.fg = fsub double %i.fe, %i.ff
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double -2.000000e+00, double %i.fe)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store double %i.fh, ptr %i.fi, align 8, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  store double %i.fc, ptr %i.fj, align 8, !tbaa !17
  %i.fk = load double, ptr %1, align 8, !tbaa !19 ; 2 uses
  %i.fl = load double, ptr %i.en, align 8, !tbaa !19
  %i.fm = fsub double %i.fk, %i.fl
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fm, double -2.250000e+00, double %i.fk)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  store double %i.fn, ptr %i.fo, align 8, !tbaa !19
  %i.fp = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %i.fq = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.fr = load double, ptr %i.ew, align 8, !tbaa !17
  %i.fs = load <2 x double>, ptr %i.ev, align 8, !tbaa !9
  store double %i.fr, ptr %i.fp, align 8, !tbaa !17
  store <2 x double> %i.fs, ptr %i.fq, align 8, !tbaa !9
  %i.ft = icmp ugt i64 %i.ek, 4
  br i1 %i.ft, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.fu = add i64 %2, -1                          ; 3 uses
  %xtraiter = and i64 %i.fu, 1
  %i.fv = icmp eq i64 %2, 2
  br i1 %i.fv, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fu, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01819.epil.init = phi i64 [ 4, %.lr.ph.preheader ], [ %i.gg, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1837 = trunc i64 %i.fu to i1
  tail call void @llvm.assume(i1 %lcmp.mod1837)
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %.01819.epil.init
  %i.fx = getelementptr [16 x i8], ptr %1, i64 %.01819.epil.init
  %i.fy = getelementptr i8, ptr %i.fx, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i64 16, i1 false), !tbaa.struct !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.p
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.el, i64 noundef %i.ek, i32 noundef %4) #26
  tail call void @free(ptr noundef nonnull %i.el) #26
  br label %bb.am

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01819 = phi i64 [ 4, %.lr.ph.preheader.new ], [ %i.gg, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %.01819
  %i.ga = getelementptr [16 x i8], ptr %1, i64 %.01819
  %i.gb = getelementptr i8, ptr %i.ga, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !tbaa.struct !8
  %i.gc = or disjoint i64 %.01819, 1              ; 2 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.gc
  %i.ge = getelementptr [16 x i8], ptr %1, i64 %i.gc
  %i.gf = getelementptr i8, ptr %i.ge, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i64 16, i1 false), !tbaa.struct !8
  %i.gg = add nuw i64 %.01819, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !22

bb.q:                                             ; preds = %bb.m
  %i.gh = add i64 %2, 2                           ; 2 uses
  %i.gi = tail call fastcc ptr @gv_calloc(i64 noundef %i.gh, i64 noundef 16) ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !tbaa.struct !8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cc, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i64 16, i1 false), !tbaa.struct !8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cc, i64 128 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 16, i1 false), !tbaa.struct !8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 80
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cc, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !8
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.gi, i64 noundef %i.gh, i32 noundef %4) #26
  tail call void @free(ptr noundef %i.gi) #26
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cc, i64 176
  %i.gv = load <2 x double>, ptr %i.gt, align 8, !tbaa !9
  %i.gw = load <2 x double>, ptr %i.gu, align 8, !tbaa !9
  %i.gx = load <2 x double>, ptr %i.cc, align 8, !tbaa !9
  %i.gy = fsub <2 x double> %i.gw, %i.gx
  %i.gz = fadd <2 x double> %i.gv, %i.gy
  store <2 x double> %i.gz, ptr %7, align 16, !tbaa !9
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ha, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i64 16, i1 false), !tbaa.struct !8
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ha, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 16, i1 false), !tbaa.struct !8
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ha, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !8
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 2) #26
  br label %bb.am

bb.r:                                             ; preds = %bb.m
  %i.hb = add i64 %2, 8                           ; 2 uses
  %i.hc = tail call fastcc ptr @gv_calloc(i64 noundef %i.hb, i64 noundef 16) ; 14 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false), !tbaa.struct !8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cc, i64 64 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 32 ; 3 uses
  %i.hi = load <2 x double>, ptr %i.hf, align 8, !tbaa !9 ; 2 uses
  %i.hj = load <2 x double>, ptr %i.hg, align 8, !tbaa !9
  %i.hk = fsub <2 x double> %i.hj, %i.hi
  %i.hl = fadd <2 x double> %i.hi, %i.hk          ; 3 uses
  store <2 x double> %i.hl, ptr %i.hh, align 8, !tbaa !9
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %i.hc, i64 48 ; 2 uses
  %9 = load <2 x double>, ptr %i.hf, align 8, !tbaa !9
  %10 = load <2 x double>, ptr %i.hm, align 8, !tbaa !9
  %11 = fsub <2 x double> %9, %10
  %12 = fadd <2 x double> %i.hl, %11              ; 3 uses
  store <2 x double> %12, ptr %8, align 8, !tbaa !9
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hc, i64 64 ; 2 uses
  %i.ho = load <2 x double>, ptr %i.hg, align 8, !tbaa !9
  %i.hp = load <2 x double>, ptr %i.hf, align 8, !tbaa !9
  %i.hq = fsub <2 x double> %i.ho, %i.hp
  %i.hr = fadd <2 x double> %12, %i.hq            ; 2 uses
  store <2 x double> %i.hr, ptr %i.hn, align 8, !tbaa !9
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hc, i64 80 ; 2 uses
  %i.ht = fsub <2 x double> %i.hl, %12
  %i.hu = fadd <2 x double> %i.ht, %i.hr
  store <2 x double> %i.hu, ptr %i.hs, align 8, !tbaa !9
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cc, i64 96 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cc, i64 80 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hc, i64 144 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cc, i64 112
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hc, i64 128 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hc, i64 112 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hc, i64 96 ; 3 uses
  %13 = load <2 x double>, ptr %i.hv, align 8, !tbaa !9 ; 2 uses
  %14 = load <2 x double>, ptr %i.hw, align 8, !tbaa !9
  %i.ic = fsub <2 x double> %14, %13
  %i.id = fadd <2 x double> %13, %i.ic            ; 3 uses
  store <2 x double> %i.id, ptr %i.hx, align 8, !tbaa !9
  %15 = load <2 x double>, ptr %i.hv, align 8, !tbaa !9
  %16 = load <2 x double>, ptr %i.hy, align 8, !tbaa !9
  %17 = fsub <2 x double> %15, %16
  %18 = fadd <2 x double> %i.id, %17              ; 3 uses
  store <2 x double> %18, ptr %i.hz, align 8, !tbaa !9
  %19 = load <2 x double>, ptr %i.hw, align 8, !tbaa !9
  %20 = load <2 x double>, ptr %i.hv, align 8, !tbaa !9
  %21 = fsub <2 x double> %19, %20
  %22 = fadd <2 x double> %18, %21                ; 2 uses
  store <2 x double> %22, ptr %i.ia, align 8, !tbaa !9
  %23 = fsub <2 x double> %i.id, %18
  %24 = fadd <2 x double> %23, %22
  store <2 x double> %24, ptr %i.ib, align 8, !tbaa !9
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hc, i64 160
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %i.if, i64 16, i1 false), !tbaa.struct !8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hc, i64 176
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i64 16, i1 false), !tbaa.struct !8
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.hc, i64 noundef %i.hb, i32 noundef %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i64 16, i1 false), !tbaa.struct !8
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ik = load <2 x double>, ptr %i.hh, align 8, !tbaa !9 ; 2 uses
  %i.il = load <2 x double>, ptr %8, align 8, !tbaa !9 ; 2 uses
  %i.im = fsub <2 x double> %i.il, %i.ik
  %i.in = fsub <2 x double> %i.ik, %i.im          ; 2 uses
  store <2 x double> %i.in, ptr %i.ii, align 16, !tbaa !9
  %i.io = load <2 x double>, ptr %i.hn, align 8, !tbaa !9
  %i.ip = fsub <2 x double> %i.io, %i.il
  %i.iq = fadd <2 x double> %i.in, %i.ip
  store <2 x double> %i.iq, ptr %i.ij, align 16, !tbaa !9
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 16, i1 false), !tbaa.struct !8
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i64 16, i1 false), !tbaa.struct !8
  %i.is = load <2 x double>, ptr %i.ib, align 8, !tbaa !9 ; 2 uses
  %i.it = load <2 x double>, ptr %i.ia, align 8, !tbaa !9 ; 2 uses
  %i.iu = fsub <2 x double> %i.it, %i.is
  %i.iv = fsub <2 x double> %i.is, %i.iu          ; 2 uses
  store <2 x double> %i.iv, ptr %i.ii, align 16, !tbaa !9
  %i.iw = load <2 x double>, ptr %i.hz, align 8, !tbaa !9
  %i.ix = fsub <2 x double> %i.iw, %i.it
  %i.iy = fadd <2 x double> %i.iv, %i.ix
  store <2 x double> %i.iy, ptr %i.ij, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i64 16, i1 false), !tbaa.struct !8
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 4) #26
  call void @free(ptr noundef %i.hc) #26
  br label %bb.am

bb.s:                                             ; preds = %bb.m
  %i.iz = add i64 %2, 5                           ; 2 uses
  %i.ja = tail call fastcc ptr @gv_calloc(i64 noundef %i.iz, i64 noundef 16) ; 17 uses
  %.val1707 = load double, ptr %1, align 8, !tbaa !19 ; 2 uses
  %i.jb = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %.val1708 = load double, ptr %i.jb, align 8, !tbaa !19 ; 2 uses
  %i.jc = fadd double %.val1707, %.val1708
  %i.jd = fmul double %i.jc, 5.000000e-01
  %i.je = fsub double %.val1707, %.val1708
  %i.jf = fmul double %i.je, 1.250000e-01
  %i.jg = fadd double %i.jd, %i.jf                ; 5 uses
  store double %i.jg, ptr %i.ja, align 8, !tbaa !19
  %i.jh = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.ji = getelementptr i8, ptr %1, i64 40        ; 5 uses
  %.val1814 = load double, ptr %i.ji, align 8, !tbaa !17
  %i.jj = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.cc, i64 56 ; 5 uses
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !17
  %i.jm = getelementptr inbounds nuw i8, ptr %i.cc, i64 72 ; 5 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !17
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %.val1705 = load double, ptr %1, align 8, !tbaa !19 ; 2 uses
  %i.jp = load <2 x double>, ptr %i.jb, align 8, !tbaa !9
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jr = insertelement <2 x double> %i.jq, double %.val1705, i64 1
  %i.js = insertelement <2 x double> %i.jq, double %.val1814, i64 0 ; 2 uses
  %i.jt = fadd <2 x double> %i.jr, %i.js
  %i.ju = fmul <2 x double> %i.jt, splat (double 5.000000e-01) ; 2 uses
  %i.jv = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.jw = insertelement <2 x double> %i.jv, double %.val1705, i64 1
  %i.jx = insertelement <2 x double> %i.js, double %i.jn, i64 0
  %i.jy = fsub <2 x double> %i.jw, %i.jx
  %i.jz = fmul <2 x double> %i.jy, <double 3.000000e+00, double 1.000000e+00>
  %i.ka = fmul <2 x double> %i.jz, <double 5.000000e-01, double 2.500000e-01> ; 2 uses
  %i.kb = fadd <2 x double> %i.ju, %i.ka          ; 2 uses
  %i.kc = fsub <2 x double> %i.ju, %i.ka          ; 2 uses
  %i.kd = shufflevector <2 x double> %i.kb, <2 x double> %i.kc, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  store <4 x double> %i.kd, ptr %i.jo, align 8, !tbaa !9
  %.val1811 = load double, ptr %i.jh, align 8, !tbaa !17
  %.val1812 = load double, ptr %i.ji, align 8, !tbaa !17
  %i.ke = fadd double %.val1811, %.val1812
  %i.kf = fmul double %i.ke, 5.000000e-01
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  store double %i.kf, ptr %i.kg, align 8, !tbaa !17
  %i.kh = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !19
  %i.kj = load double, ptr %i.jj, align 8, !tbaa !19
  %i.kk = fsub double %i.ki, %i.kj
  %i.kl = fmul double %i.kk, 5.000000e-01
  %i.km = extractelement <2 x double> %i.kc, i64 1
  %i.kn = fadd double %i.km, %i.kl                ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  store double %i.kn, ptr %i.ko, align 8, !tbaa !19
  %.val1809 = load double, ptr %i.jh, align 8, !tbaa !17
  %.val1810 = load double, ptr %i.ji, align 8, !tbaa !17
  %i.kp = fadd double %.val1809, %.val1810
  %i.kq = fmul double %i.kp, 5.000000e-01
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ja, i64 56
  store double %i.kq, ptr %i.kr, align 8, !tbaa !17
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ja, i64 64
  store double %i.kn, ptr %i.ks, align 8, !tbaa !19
  %.val1807 = load double, ptr %i.jh, align 8, !tbaa !17
  %.val1808 = load double, ptr %i.ji, align 8, !tbaa !17
  %i.kt = fadd double %.val1807, %.val1808
  %i.ku = fmul double %i.kt, 5.000000e-01
  %i.kv = load double, ptr %i.jk, align 8, !tbaa !17
  %i.kw = load double, ptr %i.jm, align 8, !tbaa !17
  %i.kx = fsub double %i.kv, %i.kw
  %i.ky = fadd double %i.ku, %i.kx                ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ja, i64 72
  store double %i.ky, ptr %i.kz, align 8, !tbaa !17
  %i.la = getelementptr inbounds nuw i8, ptr %i.ja, i64 80
  store double %i.jg, ptr %i.la, align 8, !tbaa !19
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ja, i64 88
  store double %i.ky, ptr %i.lb, align 8, !tbaa !17
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ja, i64 96
  store double %i.jg, ptr %i.lc, align 8, !tbaa !19
  %i.ld = load double, ptr %i.jk, align 8, !tbaa !17
  %i.le = load double, ptr %i.jm, align 8, !tbaa !17
  %i.lf = fsub double %i.ld, %i.le
  %i.lg = fmul double %i.lf, 2.500000e-01
  %i.lh = fsub double %i.ky, %i.lg                ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ja, i64 104
  store double %i.lh, ptr %i.li, align 8, !tbaa !17
  %i.lj = load double, ptr %i.kh, align 8, !tbaa !19
  %i.lk = load double, ptr %i.jj, align 8, !tbaa !19
  %i.ll = fsub double %i.lj, %i.lk
  %i.lm = fadd double %i.jg, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ja, i64 112
  store double %i.lm, ptr %i.ln, align 8, !tbaa !19
  %i.lo = load double, ptr %i.jk, align 8, !tbaa !17
  %i.lp = load double, ptr %i.jm, align 8, !tbaa !17
  %i.lq = fsub double %i.lo, %i.lp
  %i.lr = fmul double %i.lq, 5.000000e-01
  %i.ls = fadd double %i.lh, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ja, i64 120
  store double %i.ls, ptr %i.lt, align 8, !tbaa !17
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ja, i64 128
  store double %i.jg, ptr %i.lu, align 8, !tbaa !19
  %i.lv = load double, ptr %i.jk, align 8, !tbaa !17
  %i.lw = load double, ptr %i.jm, align 8, !tbaa !17
  %i.lx = fsub double %i.lv, %i.lw
  %i.ly = fmul double %i.lx, 2.500000e-01
  %i.lz = extractelement <2 x double> %i.kb, i64 0
  %i.ma = fadd double %i.lz, %i.ly
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ja, i64 136
  store double %i.ma, ptr %i.mb, align 8, !tbaa !17
  tail call void @gvrender_polygon(ptr noundef %0, ptr noundef nonnull %i.ja, i64 noundef %i.iz, i32 noundef %4) #26
  %i.mc = load double, ptr %i.jb, align 8, !tbaa !19
  store double %i.mc, ptr %7, align 16, !tbaa !19
  %.val1805 = load double, ptr %i.jh, align 8, !tbaa !17
  %.val1806 = load double, ptr %i.ji, align 8, !tbaa !17 ; 2 uses
  %i.md = fadd double %.val1805, %.val1806
  %i.me = fmul double %i.md, 5.000000e-01
  %i.mf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.me, ptr %i.mf, align 8, !tbaa !17
  %i.mg = load double, ptr %1, align 8, !tbaa !19
  %i.mh = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.mg, ptr %i.mh, align 16, !tbaa !19
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !17
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !17
  %i.mm = fsub double %i.mj, %i.ml
  %i.mn = fmul double %i.mm, 5.000000e-01
  %i.mo = fadd double %.val1806, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %i.mo, ptr %i.mp, align 8, !tbaa !17
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 2) #26
  call void @free(ptr noundef %i.ja) #26
  br label %bb.am

bb.t:                                             ; preds = %bb.m
  %i.mq = add i64 %2, 1                           ; 2 uses
  %i.mr = tail call fastcc ptr @gv_calloc(i64 noundef %i.mq, i64 noundef 16) ; 12 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !19
  store double %i.mt, ptr %i.mr, align 8, !tbaa !19
  %i.mu = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !17
  %i.mw = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.mx = getelementptr inbounds nuw i8, ptr %i.cc, i64 56 ; 4 uses
  %i.my = load double, ptr %i.mx, align 8, !tbaa !17
  %i.mz = getelementptr inbounds nuw i8, ptr %i.cc, i64 72 ; 4 uses
  %i.na = load double, ptr %i.mz, align 8, !tbaa !17
  %i.nb = fsub double %i.my, %i.na
  %i.nc = fmul double %i.nb, 5.000000e-01
  %i.nd = fsub double %i.mv, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store double %i.nd, ptr %i.ne, align 8, !tbaa !17
  %i.nf = load double, ptr %i.mw, align 8, !tbaa !19
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store double %i.nf, ptr %i.ng, align 8, !tbaa !19
  %i.nh = load double, ptr %i.mx, align 8, !tbaa !17 ; 2 uses
  %i.ni = load double, ptr %i.mz, align 8, !tbaa !17
  %i.nj = fsub double %i.nh, %i.ni
  %i.nk = fmul double %i.nj, 5.000000e-01
  %i.nl = fsub double %i.nh, %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  store double %i.nl, ptr %i.nm, align 8, !tbaa !17
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.no = load double, ptr %i.nn, align 8, !tbaa !19
  %i.np = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  store double %i.no, ptr %i.np, align 8, !tbaa !19
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !17
  %i.ns = load double, ptr %i.mx, align 8, !tbaa !17
  %i.nt = load double, ptr %i.mz, align 8, !tbaa !17
  %i.nu = fsub double %i.ns, %i.nt
  %i.nv = fmul double %i.nu, 5.000000e-01
  %i.nw = fadd double %i.nr, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mr, i64 40
  store double %i.nw, ptr %i.nx, align 8, !tbaa !17
  %i.ny = load double, ptr %i.ms, align 8, !tbaa !19
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mr, i64 48
  store double %i.ny, ptr %i.nz, align 8, !tbaa !19
  %i.oa = load double, ptr %i.nq, align 8, !tbaa !17
  %i.ob = load double, ptr %i.mx, align 8, !tbaa !17
  %i.oc = load double, ptr %i.mz, align 8, !tbaa !17
  %i.od = fsub double %i.ob, %i.oc
  %i.oe = fmul double %i.od, 5.000000e-01
  %i.of = fadd double %i.oa, %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.mr, i64 56
  store double %i.of, ptr %i.og, align 8, !tbaa !17
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !17 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !17
  %i.ol = fsub double %i.oi, %i.ok
  %i.om = fmul double %i.ol, 5.000000e-01
  %i.on = fsub double %i.oi, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mr, i64 64
  %i.op = getelementptr inbounds nuw i8, ptr %i.mr, i64 72
  store double %i.on, ptr %i.op, align 8, !tbaa !17
  %i.oq = load double, ptr %1, align 8, !tbaa !19
  store double %i.oq, ptr %i.oo, align 8, !tbaa !19
end_hunk_0
