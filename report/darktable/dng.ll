Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dng?download=true
inline.NumInlined: 65
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN6LibRaw16adobe_copy_pixelEjjPPt:bb.a
  store i16 %i.az, ptr %i.bg, align 2, !tbaa !81
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.pre33, i64 %indvars.iv.next.1
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !81
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !81
  %i.bm = load i16, ptr %i.ab, align 2, !tbaa !80
  %i.bn = zext i16 %i.bm to i32
  %i.bo = mul nuw i32 %1, %i.bn
  %i.bp = add nuw i32 %i.bo, %2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv.next.1
  store i16 %i.bl, ptr %i.bs, align 2, !tbaa !81
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.pre33, i64 %indvars.iv.next.2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !81
  %i.bv = zext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !81
  %i.by = load i16, ptr %i.ab, align 2, !tbaa !80
  %i.bz = zext i16 %i.by to i32
  %i.ca = mul nuw i32 %1, %i.bz
  %i.cb = add nuw i32 %i.ca, %2
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv.next.2
  store i16 %i.bx, ptr %i.ce, align 2, !tbaa !81
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !0

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.pre33, i64 %indvars.iv.epil
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !81
  %i.ch = zext i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !81
  %i.ck = load i16, ptr %i.ab, align 2, !tbaa !80
  %i.cl = zext i16 %i.ck to i32
  %i.cm = mul nuw i32 %1, %i.cl
  %i.cn = add nuw i32 %i.cm, %2
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.co
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv.epil
  store i16 %i.cj, ptr %i.cq, align 2, !tbaa !81
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.j, !llvm.loop !103

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %bb.h, %..loopexit_crit_edge, %bb.e, %bb.f, %._crit_edge
  %.sink = phi ptr [ %.pre31, %bb.e ], [ %.pre, %._crit_edge ], [ %.pre31, %bb.f ], [ %.pre32, %..loopexit_crit_edge ], [ %.pre33, %bb.h ], [ %.pre33, %bb.j ], [ %.pre33, %.loopexit.loopexit.unr-lcssa ]
  %i.cr = zext i32 %i.b to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.sink, i64 %i.cr
  %spec.select.idx = select i1 %or.cond, i64 0, i64 -2
  %spec.select = getelementptr inbounds i8, ptr %i.cs, i64 %spec.select.idx
  store ptr %spec.select, ptr %3, align 8, !tbaa !104
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw21lossless_dng_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.jhead, align 8              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5556 ; 23 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384256
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %i.f = tail call i32 @llvm.umin.i32(i32 %i.e, i32 19)
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !86
  %i.j = and i32 %i.i, 255
  store i32 %i.j, ptr %i.a, align 4, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 40 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !79
  %.not233 = icmp eq i16 %i.l, 0
  br i1 %.not233, label %._crit_edge229, label %.lr.ph228

.lr.ph228:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 381856 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 381832 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 103 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 80 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 381852 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph228, %bb.br
  %.073225 = phi i32 [ 0, %.lr.ph228 ], [ %.174, %bb.br ] ; 6 uses
  %.075223 = phi i32 [ 0, %.lr.ph228 ], [ %.176, %bb.br ] ; 7 uses
  call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !87  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa), !call_target !123
  %i.af = load i32, ptr %i.m, align 8, !tbaa !95
  %i.ag = icmp ult i32 %i.af, 2147483647
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !87  ; 2 uses
  %i.ai = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !89
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef %i.aj, i32 noundef 0), !call_target !99 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = call noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1, i32 noundef 0)
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %._crit_edge229, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %i.n, align 4, !tbaa !125 ; 3 uses
  %i.aq = load i32, ptr %i.o, align 8, !tbaa !126
  %.not81 = icmp eq i32 %i.aq, 0
  br i1 %.not81, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %i.r, align 4, !tbaa !100
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %.thread136, label %.thread

.thread136:                                       ; preds = %bb.f
  %i.at = load i32, ptr %i.p, align 8, !tbaa !127
  %i.au = mul i32 %i.at, %i.ap
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.av = load i32, ptr %i.p, align 8, !tbaa !127
  %i.aw = mul i32 %i.av, %i.ap
  %i.ax = load i32, ptr %i.q, align 8, !tbaa !77
  %i.ay = icmp eq i32 %i.ax, 2
  %i.az = zext i1 %i.ay to i32
  %spec.select = lshr i32 %i.aw, %i.az
  br label %.thread

.thread:                                          ; preds = %bb.f, %.thread136, %bb.g
  %.172 = phi i32 [ %i.au, %.thread136 ], [ %spec.select, %bb.g ], [ %i.ap, %bb.f ] ; 4 uses
  %i.ba = load i32, ptr %1, align 8, !tbaa !128
  switch i32 %i.ba, label %.loopexit145 [
    i32 193, label %bb.h
    i32 195, label %.preheader149
  ]

.preheader149:                                    ; preds = %.thread
  %i.bb = load i32, ptr %i.s, align 8, !tbaa !129
  %.not234 = icmp eq i32 %i.bb, 0
  br i1 %.not234, label %.loopexit145, label %.lr.ph171

.lr.ph171:                                        ; preds = %.preheader149
  %.not235 = icmp eq i32 %.172, 0
  br label %bb.aq

bb.h:                                             ; preds = %.thread
  store i32 16384, ptr %i.y, align 8, !tbaa !86
  %i.bc = invoke noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef -1, ptr noundef null)
          to label %.preheader144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader144:                                    ; preds = %bb.h
  %i.bd = load i32, ptr %i.s, align 8, !tbaa !129
  %i.be = icmp ugt i32 %i.bd, 7
  br i1 %i.be, label %.lr.ph222, label %.loopexit145

.lr.ph222:                                        ; preds = %.preheader144, %._crit_edge
  %.069221 = phi i32 [ %i.asr, %._crit_edge ], [ 0, %.preheader144 ] ; 2 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader140:                                    ; preds = %.lr.ph222
  %i.bf = load i32, ptr %i.n, align 4, !tbaa !125
  %i.bg = icmp ugt i32 %i.bf, 7
  br i1 %i.bg, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %.preheader140
  %i.bh = shl i32 %.069221, 1
  %i.bi = add i32 %i.bh, %.075223
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph220, %.split212.us
  %.066219 = phi i32 [ 0, %.lr.ph220 ], [ %i.aso, %.split212.us ] ; 3 uses
  invoke void @_ZN6LibRaw10ljpeg_idctEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.bj = load i32, ptr %i.x, align 4, !tbaa !101 ; 2 uses
  %i.bk = udiv i32 %.066219, %i.bj
  %i.bl = urem i32 %.066219, %i.bj
  %i.bm = add i32 %i.bl, %.073225                 ; 41 uses
  %i.bn = add i32 %i.bi, %i.bk                    ; 4 uses
  %i.bo = load i32, ptr %i.q, align 8, !tbaa !77
  %.fr237 = freeze i32 %i.bo                      ; 11 uses
  %.not512 = icmp eq i32 %.fr237, 2               ; 2 uses
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !78  ; 17 uses
  %.not23.i = icmp eq ptr %i.bp, null
  %i.bq = zext i32 %.fr237 to i64                 ; 97 uses
  br i1 %.not23.i, label %.split190.us, label %.split190

.split190.us:                                     ; preds = %bb.j
  %i.br = icmp sgt i32 %.fr237, 0
  br i1 %i.br, label %.split190.us.split.us, label %.split212.us

.split190.us.split.us:                            ; preds = %.split190.us
  %i.bs = add i32 %i.bm, 1                        ; 2 uses
  %i.bt = add nuw nsw i32 %i.bm, 1                ; 2 uses
  %i.bu = add i32 %i.bm, 2                        ; 2 uses
  %i.bv = add i32 %i.bm, 2                        ; 2 uses
  %i.bw = add i32 %i.bm, 3                        ; 2 uses
  %i.bx = add i32 %i.bm, 3                        ; 2 uses
  %i.by = add i32 %i.bm, 4                        ; 2 uses
  %i.bz = add i32 %i.bm, 4                        ; 2 uses
  %i.ca = add i32 %i.bm, 5                        ; 2 uses
  %i.cb = add i32 %i.bm, 5                        ; 2 uses
  %i.cc = add i32 %i.bm, 6                        ; 2 uses
  %i.cd = add i32 %i.bm, 6                        ; 2 uses
  %i.ce = add i32 %i.bm, 7                        ; 2 uses
  %i.cf = add i32 %i.bm, 7                        ; 2 uses
  br i1 %.not512, label %.preheader.us.us, label %.preheader.us.us.us.preheader

.preheader.us.us.us.preheader:                    ; preds = %.split190.us.split.us
  %xtraiter898 = and i64 %i.bq, 3                 ; 3 uses
  %i.cg = icmp ult i32 %.fr237, 4
  %unroll_iter902 = and i64 %i.bq, 2147483644
  %lcmp.mod900.not = icmp eq i64 %xtraiter898, 0
  %lcmp.mod901 = icmp ne i64 %xtraiter898, 0
  %xtraiter914 = and i64 %i.bq, 3                 ; 3 uses
  %i.ch = icmp ult i32 %.fr237, 4
  %unroll_iter918 = and i64 %i.bq, 2147483644
  %lcmp.mod916.not = icmp eq i64 %xtraiter914, 0
  %lcmp.mod917 = icmp ne i64 %xtraiter914, 0
  %xtraiter921 = and i64 %i.bq, 3                 ; 3 uses
  %i.ci = icmp ult i32 %.fr237, 4
  %unroll_iter925 = and i64 %i.bq, 2147483644
  %lcmp.mod923.not = icmp eq i64 %xtraiter921, 0
  %lcmp.mod924 = icmp ne i64 %xtraiter921, 0
  %xtraiter928 = and i64 %i.bq, 3                 ; 3 uses
  %i.cj = icmp ult i32 %.fr237, 4
  %unroll_iter932 = and i64 %i.bq, 2147483644
  %lcmp.mod930.not = icmp eq i64 %xtraiter928, 0
  %lcmp.mod931 = icmp ne i64 %xtraiter928, 0
  %xtraiter935 = and i64 %i.bq, 3                 ; 3 uses
  %i.ck = icmp ult i32 %.fr237, 4
  %unroll_iter939 = and i64 %i.bq, 2147483644
  %lcmp.mod937.not = icmp eq i64 %xtraiter935, 0
  %lcmp.mod938 = icmp ne i64 %xtraiter935, 0
  %xtraiter942 = and i64 %i.bq, 3                 ; 3 uses
  %i.cl = icmp ult i32 %.fr237, 4
  %unroll_iter946 = and i64 %i.bq, 2147483644
  %lcmp.mod944.not = icmp eq i64 %xtraiter942, 0
  %lcmp.mod945 = icmp ne i64 %xtraiter942, 0
  %xtraiter949 = and i64 %i.bq, 3                 ; 3 uses
  %i.cm = icmp ult i32 %.fr237, 4
  %unroll_iter953 = and i64 %i.bq, 2147483644
  %lcmp.mod951.not = icmp eq i64 %xtraiter949, 0
  %lcmp.mod952 = icmp ne i64 %xtraiter949, 0
  %xtraiter956 = and i64 %i.bq, 3                 ; 3 uses
  %i.cn = icmp ult i32 %.fr237, 4
  %unroll_iter960 = and i64 %i.bq, 2147483644
  %lcmp.mod958.not = icmp eq i64 %xtraiter956, 0
  %lcmp.mod959 = icmp ne i64 %xtraiter956, 0
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7
  %.058189.us.us.us = phi i32 [ %i.xw, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7 ], [ 0, %.preheader.us.us.us.preheader ] ; 3 uses
  %.0128188.us.us.us = phi ptr [ %i.xv, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7 ], [ %i.z, %.preheader.us.us.us.preheader ] ; 7 uses
  %i.co = add i32 %i.bn, %.058189.us.us.us        ; 48 uses
  %i.cp = load i16, ptr %i.k, align 8, !tbaa !79
  %i.cq = zext i16 %i.cp to i32
  %i.cr = icmp ult i32 %i.co, %i.cq
  br i1 %i.cr, label %bb.k, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread

bb.k:                                             ; preds = %.preheader.us.us.us
  %i.cs = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ct = zext i16 %i.cs to i32
  %i.cu = icmp ult i32 %i.bm, %i.ct
  br i1 %i.cu, label %.lr.ph.i.us.us.us.us.us, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread

.lr.ph.i.us.us.us.us.us:                          ; preds = %bb.k
  %i.cv = load ptr, ptr %i.u, align 8, !tbaa !82  ; 5 uses
  br i1 %i.cg, label %.epil.preheader897, label %.lr.ph.i.us.us.us.us.us.new

.lr.ph.i.us.us.us.us.us.new:                      ; preds = %.lr.ph.i.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.new
  %indvars.iv.i.us.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.3911, %.lr.ph.i.us.us.us.us.us.new ], [ 0, %.lr.ph.i.us.us.us.us.us ] ; 6 uses
  %niter903 = phi i64 [ %niter903.next.3, %.lr.ph.i.us.us.us.us.us.new ], [ 0, %.lr.ph.i.us.us.us.us.us ]
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.i.us.us.us.us.us
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !81
  %i.cy = zext i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !81
  %i.db = load i16, ptr %i.t, align 2, !tbaa !80
  %i.dc = zext i16 %i.db to i32
  %i.dd = mul nuw i32 %i.co, %i.dc
  %i.de = add nuw i32 %i.dd, %i.bm
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.df
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv.i.us.us.us.us.us
  store i16 %i.da, ptr %i.dh, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !81
  %i.dk = zext i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !81
  %i.dn = load i16, ptr %i.t, align 2, !tbaa !80
  %i.do = zext i16 %i.dn to i32
  %i.dp = mul nuw i32 %i.co, %i.do
  %i.dq = add nuw i32 %i.dp, %i.bm
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dr
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %indvars.iv.next.i.us.us.us.us.us
  store i16 %i.dm, ptr %i.dt, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.1905 = or disjoint i64 %indvars.iv.i.us.us.us.us.us, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.1905
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !81
  %i.dw = zext i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !81
  %i.dz = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ea = zext i16 %i.dz to i32
  %i.eb = mul nuw i32 %i.co, %i.ea
  %i.ec = add nuw i32 %i.eb, %i.bm
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ed
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %indvars.iv.next.i.us.us.us.us.us.1905
  store i16 %i.dy, ptr %i.ef, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.2908 = or disjoint i64 %indvars.iv.i.us.us.us.us.us, 3 ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.2908
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !81
  %i.ei = zext i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !81
  %i.el = load i16, ptr %i.t, align 2, !tbaa !80
  %i.em = zext i16 %i.el to i32
  %i.en = mul nuw i32 %i.co, %i.em
  %i.eo = add nuw i32 %i.en, %i.bm
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ep
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv.next.i.us.us.us.us.us.2908
  store i16 %i.ek, ptr %i.er, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.3911 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us, 4 ; 2 uses
  %niter903.next.3 = add i64 %niter903, 4         ; 2 uses
  %niter903.ncmp.3 = icmp eq i64 %niter903.next.3, %unroll_iter902
  br i1 %niter903.ncmp.3, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.new, !llvm.loop !0

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa: ; preds = %.lr.ph.i.us.us.us.us.us.new
  br i1 %lcmp.mod900.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us, label %.epil.preheader897

.epil.preheader897:                               ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa, %.lr.ph.i.us.us.us.us.us
  %indvars.iv.i.us.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us ], [ %indvars.iv.next.i.us.us.us.us.us.3911, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod901)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader897
  %indvars.iv.i.us.us.us.us.us.epil = phi i64 [ %indvars.iv.i.us.us.us.us.us.epil.init, %.epil.preheader897 ], [ %indvars.iv.next.i.us.us.us.us.us.epil, %bb.l ] ; 3 uses
  %epil.iter899 = phi i64 [ 0, %.epil.preheader897 ], [ %epil.iter899.next, %bb.l ]
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.0128188.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.epil
  %i.et = load i16, ptr %i.es, align 2, !tbaa !81
  %i.eu = zext i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !81
  %i.ex = load i16, ptr %i.t, align 2, !tbaa !80
  %i.ey = zext i16 %i.ex to i32
  %i.ez = mul nuw i32 %i.co, %i.ey
  %i.fa = add nuw i32 %i.ez, %i.bm
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.fb
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %indvars.iv.i.us.us.us.us.us.epil
  store i16 %i.ew, ptr %i.fd, align 2, !tbaa !81
  %indvars.iv.next.i.us.us.us.us.us.epil = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.epil, 1
  %epil.iter899.next = add i64 %epil.iter899, 1   ; 2 uses
  %epil.iter899.cmp.not = icmp eq i64 %epil.iter899.next, %xtraiter898
  br i1 %epil.iter899.cmp.not, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us, label %bb.l, !llvm.loop !105

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us: ; preds = %bb.l, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.unr-lcssa
  %.pre341 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre348 = zext i16 %.pre341 to i32
  %i.fe = icmp samesign ult i32 %i.co, %.pre348
  br i1 %i.fe, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.5.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.thread: ; preds = %bb.k, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us
  %i.ff = phi i32 [ %i.bt, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us ], [ %i.bs, %bb.k ] ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6LibRaw21lossless_dng_load_rawEv:bb.a
  %i.apz = phi i32 [ %i.api, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3.thread787 ], [ %.pre312, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3 ] ; 2 uses
  %i.aqa = load i16, ptr %i.t, align 2, !tbaa !80
  %i.aqb = zext i16 %i.aqa to i32                 ; 2 uses
  %i.aqc = icmp ult i32 %i.apy, %i.aqb
  br i1 %i.aqc, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread809

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread809: ; preds = %bb.ak
  %i.aqd = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.4797, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx813.sroa.sel.idx = select i1 %.not.i.4796, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx813.sroa.sel = getelementptr inbounds i8, ptr %i.aqd, i64 %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx813.sroa.sel.idx
  %.not.i.5815 = icmp eq i32 %i.apz, 0            ; 2 uses
  %spec.select232.5816 = select i1 %.not.i.5815, i64 0, i64 2
  %spec.select137.5817 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx813.sroa.sel, i64 %spec.select232.5816
  br label %bb.al

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3.thread
  %spec.select137.4786.ph = phi ptr [ %spec.select137.4784, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3.thread ], [ %spec.select137.4, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3 ]
  %.not.i.4785.ph = phi i1 [ %.not.i.4782, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3.thread ], [ %.not.i.4, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3 ]
  %.ph798 = phi i32 [ %.ph776, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3.thread ], [ %.pre312, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.3 ] ; 2 uses
  %i.aqe = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.4786.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx802.sroa.sel.idx = select i1 %.not.i.4785.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx802.sroa.sel = getelementptr inbounds i8, ptr %i.aqe, i64 %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx802.sroa.sel.idx
  %.not.i.5804 = icmp eq i32 %.ph798, 0           ; 2 uses
  %spec.select232.5805 = select i1 %.not.i.5804, i64 0, i64 2
  %spec.select137.5806 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx802.sroa.sel, i64 %spec.select232.5805
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4:        ; preds = %bb.ak
  %i.aqf = load i16, ptr %spec.select137.4797, align 2, !tbaa !81
  %i.aqg = zext i16 %i.aqf to i64
  %i.aqh = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aqg
  %i.aqi = load i16, ptr %i.aqh, align 2, !tbaa !81
  %i.aqj = mul nuw i32 %i.anf, %i.aqb
  %i.aqk = add nuw i32 %i.aqj, %i.apy
  %i.aql = zext i32 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.aql
  store i16 %i.aqi, ptr %i.aqm, align 2, !tbaa !81
  %.pre314 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre315 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre397 = zext i16 %.pre315 to i32
  %i.aqn = icmp samesign ult i32 %i.anf, %.pre397
  %i.aqo = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.4797, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.4796, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.aqo, i64 %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx.sroa.sel.idx
  %.not.i.5 = icmp eq i32 %.pre314, 0             ; 3 uses
  %spec.select232.5 = select i1 %.not.i.5, i64 0, i64 2
  %spec.select137.5 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.4.sroa.sel.idx.sroa.sel, i64 %spec.select232.5 ; 2 uses
  br i1 %i.aqn, label %bb.al, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread

bb.al:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread809, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4
  %spec.select137.5819 = phi ptr [ %spec.select137.5817, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread809 ], [ %spec.select137.5, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4 ] ; 3 uses
  %.not.i.5818 = phi i1 [ %.not.i.5815, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread809 ], [ %.not.i.5, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4 ] ; 2 uses
  %i.aqp = phi i32 [ %i.aic, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread809 ], [ %i.aid, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4 ] ; 2 uses
  %i.aqq = phi i32 [ %i.apz, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread809 ], [ %.pre314, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4 ] ; 2 uses
  %i.aqr = load i16, ptr %i.t, align 2, !tbaa !80
  %i.aqs = zext i16 %i.aqr to i32                 ; 2 uses
  %i.aqt = icmp ult i32 %i.aqp, %i.aqs
  br i1 %i.aqt, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread831

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread831: ; preds = %bb.al
  %i.aqu = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.5819, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx835.sroa.sel.idx = select i1 %.not.i.5818, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx835.sroa.sel = getelementptr inbounds i8, ptr %i.aqu, i64 %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx835.sroa.sel.idx
  %.not.i.6837 = icmp eq i32 %i.aqq, 0            ; 2 uses
  %spec.select232.6838 = select i1 %.not.i.6837, i64 0, i64 2
  %spec.select137.6839 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx835.sroa.sel, i64 %spec.select232.6838
  br label %bb.am

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread
  %spec.select137.5808.ph = phi ptr [ %spec.select137.5806, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread ], [ %spec.select137.5, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4 ]
  %.not.i.5807.ph = phi i1 [ %.not.i.5804, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread ], [ %.not.i.5, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4 ]
  %.ph820 = phi i32 [ %.ph798, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4.thread ], [ %.pre314, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.4 ] ; 2 uses
  %i.aqv = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.5808.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx824.sroa.sel.idx = select i1 %.not.i.5807.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx824.sroa.sel = getelementptr inbounds i8, ptr %i.aqv, i64 %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx824.sroa.sel.idx
  %.not.i.6826 = icmp eq i32 %.ph820, 0           ; 2 uses
  %spec.select232.6827 = select i1 %.not.i.6826, i64 0, i64 2
  %spec.select137.6828 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx824.sroa.sel, i64 %spec.select232.6827
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5:        ; preds = %bb.al
  %i.aqw = load i16, ptr %spec.select137.5819, align 2, !tbaa !81
  %i.aqx = zext i16 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aqx
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !81
  %i.ara = mul nuw i32 %i.anf, %i.aqs
  %i.arb = add nuw i32 %i.ara, %i.aqp
  %i.arc = zext i32 %i.arb to i64
  %i.ard = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.arc
  store i16 %i.aqz, ptr %i.ard, align 2, !tbaa !81
  %.pre316 = load i32, ptr %i.a, align 4          ; 3 uses
  %.pre317 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre399 = zext i16 %.pre317 to i32
  %i.are = icmp samesign ult i32 %i.anf, %.pre399
  %i.arf = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.5819, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.5818, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.arf, i64 %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx.sroa.sel.idx
  %.not.i.6 = icmp eq i32 %.pre316, 0             ; 3 uses
  %spec.select232.6 = select i1 %.not.i.6, i64 0, i64 2
  %spec.select137.6 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.5.sroa.sel.idx.sroa.sel, i64 %spec.select232.6 ; 2 uses
  br i1 %i.are, label %bb.am, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread

bb.am:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread831, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5
  %spec.select137.6841 = phi ptr [ %spec.select137.6839, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread831 ], [ %spec.select137.6, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5 ] ; 3 uses
  %.not.i.6840 = phi i1 [ %.not.i.6837, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread831 ], [ %.not.i.6, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5 ] ; 2 uses
  %i.arg = phi i32 [ %i.aie, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread831 ], [ %i.aif, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5 ] ; 2 uses
  %i.arh = phi i32 [ %i.aqq, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread831 ], [ %.pre316, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5 ]
  %i.ari = load i16, ptr %i.t, align 2, !tbaa !80
  %i.arj = zext i16 %i.ari to i32                 ; 2 uses
  %i.ark = icmp ult i32 %i.arg, %i.arj
  br i1 %i.ark, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread853

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread853: ; preds = %bb.am
  %i.arl = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.6841, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx857.sroa.sel.idx = select i1 %.not.i.6840, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx857.sroa.sel = getelementptr inbounds i8, ptr %i.arl, i64 %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx857.sroa.sel.idx
  %.not.i.7859 = icmp eq i32 %i.arh, 0            ; 2 uses
  %spec.select232.7860 = select i1 %.not.i.7859, i64 0, i64 2
  %spec.select137.7861 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx857.sroa.sel, i64 %spec.select232.7860
  br label %bb.an

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread: ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread
  %spec.select137.6830.ph = phi ptr [ %spec.select137.6828, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread ], [ %spec.select137.6, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5 ]
  %.not.i.6829.ph = phi i1 [ %.not.i.6826, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread ], [ %.not.i.6, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5 ]
  %.ph842 = phi i32 [ %.ph820, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5.thread ], [ %.pre316, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.5 ]
  %i.arm = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.6830.ph, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx846.sroa.sel.idx = select i1 %.not.i.6829.ph, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx846.sroa.sel = getelementptr inbounds i8, ptr %i.arm, i64 %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx846.sroa.sel.idx
  %.not.i.7848 = icmp eq i32 %.ph842, 0           ; 2 uses
  %spec.select232.7849 = select i1 %.not.i.7848, i64 0, i64 2
  %spec.select137.7850 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx846.sroa.sel, i64 %spec.select232.7849
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6:        ; preds = %bb.am
  %i.arn = load i16, ptr %spec.select137.6841, align 2, !tbaa !81
  %i.aro = zext i16 %i.arn to i64
  %i.arp = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aro
  %i.arq = load i16, ptr %i.arp, align 2, !tbaa !81
  %i.arr = mul nuw i32 %i.anf, %i.arj
  %i.ars = add nuw i32 %i.arr, %i.arg
  %i.art = zext i32 %i.ars to i64
  %i.aru = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.art
  store i16 %i.arq, ptr %i.aru, align 2, !tbaa !81
  %.pre318 = load i32, ptr %i.a, align 4
  %.pre319 = load i16, ptr %i.k, align 8, !tbaa !79
  %.pre401 = zext i16 %.pre319 to i32
  %i.arv = icmp samesign ult i32 %i.anf, %.pre401
  %i.arw = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.6841, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.6840, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.arw, i64 %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx.sroa.sel.idx
  %.not.i.7 = icmp eq i32 %.pre318, 0             ; 3 uses
  %spec.select232.7 = select i1 %.not.i.7, i64 0, i64 2
  %spec.select137.7 = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.idx.6.sroa.sel.idx.sroa.sel, i64 %spec.select232.7 ; 2 uses
  br i1 %i.arv, label %bb.an, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7

bb.an:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread853, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6
  %spec.select137.7863 = phi ptr [ %spec.select137.7861, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread853 ], [ %spec.select137.7, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6 ] ; 3 uses
  %.not.i.7862 = phi i1 [ %.not.i.7859, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread853 ], [ %.not.i.7, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6 ] ; 2 uses
  %i.arx = phi i32 [ %i.aig, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread853 ], [ %i.aih, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6 ] ; 2 uses
  %i.ary = load i16, ptr %i.t, align 2, !tbaa !80
  %i.arz = zext i16 %i.ary to i32                 ; 2 uses
  %i.asa = icmp ult i32 %i.arx, %i.arz
  br i1 %i.asa, label %bb.ao, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7

bb.ao:                                            ; preds = %bb.an
  %i.asb = load i16, ptr %spec.select137.7863, align 2, !tbaa !81
  %i.asc = zext i16 %i.asb to i64
  %i.asd = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.asc
  %i.ase = load i16, ptr %i.asd, align 2, !tbaa !81
  %i.asf = mul nuw i32 %i.anf, %i.arz
  %i.asg = add nuw i32 %i.asf, %i.arx
  %i.ash = zext i32 %i.asg to i64
  %i.asi = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.ash
  store i16 %i.ase, ptr %i.asi, align 2, !tbaa !81
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7:        ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread, %bb.ao, %bb.an, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6
  %spec.select137.7852 = phi ptr [ %spec.select137.7850, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread ], [ %spec.select137.7863, %bb.ao ], [ %spec.select137.7863, %bb.an ], [ %spec.select137.7, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6 ]
  %.not.i.7851 = phi i1 [ %.not.i.7848, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6.thread ], [ %.not.i.7862, %bb.ao ], [ %.not.i.7862, %bb.an ], [ %.not.i.7, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.6 ]
  %i.asj = getelementptr inbounds nuw [2 x i8], ptr %spec.select137.7852, i64 %i.bq
  %spec.select.idx.i.sroa.sel.idx.7.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i.7851, i64 0, i64 -2
  %spec.select.idx.i.sroa.sel.idx.7.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %i.asj, i64 %spec.select.idx.i.sroa.sel.idx.7.sroa.sel.idx.sroa.sel.idx
  %i.ask = add nuw nsw i32 %.058189, 2
  %i.asl = icmp samesign ult i32 %.058189, 14
  br i1 %i.asl, label %.preheader, label %.split212.us, !llvm.loop !113

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph222, %bb.i, %bb.ar, %bb.aq, %bb.h
  %lpad.loopexit.split-lp893 = landingpad { ptr, i32 }
          catch ptr null
  %i.asm = extractvalue { ptr, i32 } %lpad.loopexit.split-lp893, 0
  %i.asn = call ptr @__cxa_begin_catch(ptr %i.asm) #13 ; 0 uses
  invoke void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
          to label %bb.ap unwind label %bb.bo

bb.ap:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  store i32 %i.b, ptr %i.a, align 4, !tbaa !85
  invoke void @__cxa_rethrow() #14
          to label %bb.bt unwind label %bb.bo

.split212.us:                                     ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us179.us.7, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.7, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.us.us.7, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit.us.us206.us.7, %.split190.us
  %i.aso = add i32 %.066219, 8                    ; 2 uses
  %2 = or disjoint i32 %i.aso, 7
  %i.asp = load i32, ptr %i.n, align 4, !tbaa !125
  %i.asq = icmp ult i32 %2, %i.asp
  br i1 %i.asq, label %bb.i, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %.split212.us, %.preheader140
  %i.asr = add i32 %.069221, 8                    ; 2 uses
  %3 = or disjoint i32 %i.asr, 7
  %i.ass = load i32, ptr %i.s, align 8, !tbaa !129
  %i.ast = icmp ult i32 %3, %i.ass
  br i1 %i.ast, label %.lr.ph222, label %.loopexit145, !llvm.loop !115

bb.aq:                                            ; preds = %.lr.ph171, %.loopexit142
  %.059170 = phi i32 [ 0, %.lr.ph171 ], [ %.5, %.loopexit142 ] ; 6 uses
  %.060169 = phi i32 [ 0, %.lr.ph171 ], [ %.565, %.loopexit142 ] ; 6 uses
  %.170168 = phi i32 [ 0, %.lr.ph171 ], [ %i.azc, %.loopexit142 ] ; 2 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.asu = invoke noundef ptr @_ZN6LibRaw9ljpeg_rowEiP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.170168, ptr noundef nonnull %1)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.as:                                            ; preds = %bb.ar
  %i.asv = load i32, ptr %i.q, align 8, !tbaa !77 ; 5 uses
  %i.asw = icmp eq i32 %i.asv, 1
  %i.asx = load i32, ptr %i.p, align 8            ; 2 uses
  %i.asy = icmp sgt i32 %i.asx, 1
  %or.cond = select i1 %i.asw, i1 %i.asy, i1 false
  br i1 %or.cond, label %bb.at, label %bb.bd

bb.at:                                            ; preds = %bb.as
  %i.asz = mul i32 %i.asx, %.172                  ; 4 uses
  %i.ata = load i16, ptr %i.t, align 2, !tbaa !80
  %i.atb = zext i16 %i.ata to i32
  %i.atc = icmp eq i32 %i.asz, %i.atb
  br i1 %i.atc, label %.preheader141, label %bb.bd

.preheader141:                                    ; preds = %bb.at
  %.not236 = icmp eq i32 %i.asz, 0
  br i1 %.not236, label %.loopexit142, label %.lr.ph163

.lr.ph163:                                        ; preds = %.preheader141
  %i.atd = load ptr, ptr %i.v, align 8, !tbaa !78 ; 2 uses
  %.not23.i90 = icmp eq ptr %i.atd, null
  %i.ate = load i32, ptr %i.x, align 4, !tbaa !101 ; 2 uses
  %.pre305 = load i16, ptr %i.k, align 8, !tbaa !79 ; 2 uses
  br i1 %.not23.i90, label %.lr.ph163.split.us, label %.lr.ph163.split

.lr.ph163.split.us:                               ; preds = %.lr.ph163, %bb.ax
  %i.atf = phi i16 [ %i.atw, %bb.ax ], [ %.pre305, %.lr.ph163 ] ; 3 uses
  %.1162.us = phi i32 [ %.2.us, %bb.ax ], [ %.059170, %.lr.ph163 ] ; 2 uses
  %.161161.us = phi i32 [ %.262.us, %bb.ax ], [ %.060169, %.lr.ph163 ] ; 3 uses
  %.167160.us = phi i32 [ %i.auc, %bb.ax ], [ 0, %.lr.ph163 ]
  %.2130159.us = phi ptr [ %i.atx, %bb.ax ], [ %i.asu, %.lr.ph163 ] ; 2 uses
  %i.atg = add i32 %.161161.us, %.075223          ; 2 uses
  %i.ath = add i32 %.1162.us, %.073225            ; 2 uses
  %i.ati = zext i16 %i.atf to i32
  %i.atj = icmp ult i32 %i.atg, %i.ati
  br i1 %i.atj, label %bb.au, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106.us

bb.au:                                            ; preds = %.lr.ph163.split.us
  %i.atk = load i16, ptr %i.t, align 2, !tbaa !80
  %i.atl = zext i16 %i.atk to i32                 ; 2 uses
  %i.atm = icmp ult i32 %i.ath, %i.atl
  br i1 %i.atm, label %.lr.ph.i101.us, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106.us

.lr.ph.i101.us:                                   ; preds = %bb.au
  %i.atn = load ptr, ptr %i.u, align 8, !tbaa !82
  %i.ato = load i16, ptr %.2130159.us, align 2, !tbaa !81
  %i.atp = zext i16 %i.ato to i64
  %i.atq = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.atp
  %i.atr = load i16, ptr %i.atq, align 2, !tbaa !81
  %i.ats = mul nuw i32 %i.atg, %i.atl
  %i.att = add nuw i32 %i.ats, %i.ath
  %i.atu = zext i32 %i.att to i64
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %i.atn, i64 %i.atu
  store i16 %i.atr, ptr %i.atv, align 2, !tbaa !81
  %.pre304 = load i16, ptr %i.k, align 8, !tbaa !79
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106.us

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106.us:    ; preds = %.lr.ph.i101.us, %bb.au, %.lr.ph163.split.us
  %i.atw = phi i16 [ %.pre304, %.lr.ph.i101.us ], [ %i.atf, %bb.au ], [ %i.atf, %.lr.ph163.split.us ]
  %i.atx = getelementptr inbounds nuw i8, ptr %.2130159.us, i64 2
  %i.aty = add i32 %.1162.us, 1                   ; 3 uses
  %.not85.us = icmp ult i32 %i.aty, %i.ate
  br i1 %.not85.us, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106.us
  %i.atz = load i16, ptr %i.t, align 2, !tbaa !80
  %i.aua = zext i16 %i.atz to i32
  %.not86.us = icmp ult i32 %i.aty, %i.aua
  br i1 %.not86.us, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106.us
  %i.aub = add i32 %.161161.us, 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.262.us = phi i32 [ %i.aub, %bb.aw ], [ %.161161.us, %bb.av ] ; 2 uses
  %.2.us = phi i32 [ 0, %bb.aw ], [ %i.aty, %bb.av ] ; 2 uses
  %i.auc = add nuw i32 %.167160.us, 1             ; 2 uses
  %exitcond256.not = icmp eq i32 %i.auc, %i.asz
  br i1 %exitcond256.not, label %.loopexit142, label %.lr.ph163.split.us, !llvm.loop !116

.lr.ph163.split:                                  ; preds = %.lr.ph163, %bb.bc
  %i.aud = phi i16 [ %i.aut, %bb.bc ], [ %.pre305, %.lr.ph163 ] ; 3 uses
  %.1162 = phi i32 [ %.2, %bb.bc ], [ %.059170, %.lr.ph163 ] ; 2 uses
  %.161161 = phi i32 [ %.262, %bb.bc ], [ %.060169, %.lr.ph163 ] ; 3 uses
  %.167160 = phi i32 [ %i.auz, %bb.bc ], [ 0, %.lr.ph163 ]
  %.2130159 = phi ptr [ %i.auu, %bb.bc ], [ %i.asu, %.lr.ph163 ] ; 2 uses
  %i.aue = add i32 %.161161, %.075223             ; 2 uses
  %i.auf = add i32 %.1162, %.073225               ; 2 uses
  %i.aug = zext i16 %i.aud to i32
  %i.auh = icmp ult i32 %i.aue, %i.aug
  br i1 %i.auh, label %bb.ay, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106

bb.ay:                                            ; preds = %.lr.ph163.split
  %i.aui = load i16, ptr %i.t, align 2, !tbaa !80
  %i.auj = zext i16 %i.aui to i32                 ; 2 uses
  %i.auk = icmp ult i32 %i.auf, %i.auj
  br i1 %i.auk, label %bb.az, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106

bb.az:                                            ; preds = %bb.ay
  %i.aul = load i16, ptr %.2130159, align 2, !tbaa !81
  %i.aum = zext i16 %i.aul to i64
  %i.aun = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.aum
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !81
  %i.aup = mul nuw i32 %i.aue, %i.auj
  %i.auq = add nuw i32 %i.aup, %i.auf
  %i.aur = zext i32 %i.auq to i64
  %i.aus = getelementptr inbounds nuw [2 x i8], ptr %i.atd, i64 %i.aur
  store i16 %i.auo, ptr %i.aus, align 2, !tbaa !81
  %.pre302 = load i16, ptr %i.k, align 8, !tbaa !79
  br label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106

_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106:       ; preds = %.lr.ph163.split, %bb.ay, %bb.az
  %i.aut = phi i16 [ %i.aud, %.lr.ph163.split ], [ %i.aud, %bb.ay ], [ %.pre302, %bb.az ]
  %i.auu = getelementptr inbounds nuw i8, ptr %.2130159, i64 2
  %i.auv = add i32 %.1162, 1                      ; 3 uses
  %.not85 = icmp ult i32 %i.auv, %i.ate
  br i1 %.not85, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106
  %i.auw = load i16, ptr %i.t, align 2, !tbaa !80
  %i.aux = zext i16 %i.auw to i32
  %.not86 = icmp ult i32 %i.auv, %i.aux
  br i1 %.not86, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit106
  %i.auy = add i32 %.161161, 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.262 = phi i32 [ %i.auy, %bb.bb ], [ %.161161, %bb.ba ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.bb ], [ %i.auv, %bb.ba ] ; 2 uses
  %i.auz = add nuw i32 %.167160, 1                ; 2 uses
  %exitcond255.not = icmp eq i32 %i.auz, %i.asz
  br i1 %exitcond255.not, label %.loopexit142, label %.lr.ph163.split, !llvm.loop !116

bb.bd:                                            ; preds = %bb.at, %bb.as
  br i1 %.not235, label %.loopexit142, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bd
  %i.ava = icmp ne i32 %i.asv, 2                  ; 2 uses
  %i.avb = load ptr, ptr %i.v, align 8, !tbaa !78 ; 2 uses
  %.not23.i109 = icmp eq ptr %i.avb, null
  %i.avc = icmp sgt i32 %i.asv, 0
  %wide.trip.count.i121 = zext i32 %i.asv to i64  ; 4 uses
  %i.avd = load i32, ptr %i.x, align 4, !tbaa !101 ; 2 uses
  br i1 %.not23.i109, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count.i121, 3    ; 3 uses
  %i.ave = icmp ult i32 %i.asv, 4
  %unroll_iter = and i64 %wide.trip.count.i121, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod896 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre299 = load i32, ptr %i.a, align 4
  %.pre301 = load i16, ptr %i.k, align 8, !tbaa !79
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.bi
  %.3156.us = phi i32 [ %.4.us, %bb.bi ], [ %.059170, %.lr.ph.split.us.preheader ] ; 2 uses
  %.363155.us = phi i32 [ %.464.us, %bb.bi ], [ %.060169, %.lr.ph.split.us.preheader ] ; 3 uses
  %.268154.us = phi i32 [ %i.ayc, %bb.bi ], [ 0, %.lr.ph.split.us.preheader ]
  %.3131153.us = phi ptr [ %spec.select.i114.us, %bb.bi ], [ %i.asu, %.lr.ph.split.us.preheader ]
  %i.avf = add i32 %.363155.us, %.075223          ; 6 uses
  %i.avg = add i32 %.3156.us, %.073225            ; 6 uses
  %i.avh = load i32, ptr %i.a, align 4
  %.not.i107.us = icmp eq i32 %i.avh, 0
  %or.cond.i108.us = select i1 %i.ava, i1 true, i1 %.not.i107.us ; 2 uses
  %spec.select139.idx.us = select i1 %or.cond.i108.us, i64 0, i64 2
  %spec.select139.us = getelementptr inbounds nuw i8, ptr %.3131153.us, i64 %spec.select139.idx.us ; 6 uses
  %i.avi = load i16, ptr %i.k, align 8, !tbaa !79
  %i.avj = zext i16 %i.avi to i32
  %i.avk = icmp ult i32 %i.avf, %i.avj
  br i1 %i.avk, label %bb.be, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit125.us

bb.be:                                            ; preds = %.lr.ph.split.us
  %i.avl = load i16, ptr %i.t, align 2, !tbaa !80
  %i.avm = zext i16 %i.avl to i32
  %i.avn = icmp ult i32 %i.avg, %i.avm
  %or.cond29.i118.us = and i1 %i.avc, %i.avn
  br i1 %or.cond29.i118.us, label %.lr.ph.i120.us, label %_ZN6LibRaw16adobe_copy_pixelEjjPPt.exit125.us
end_hunk_1
