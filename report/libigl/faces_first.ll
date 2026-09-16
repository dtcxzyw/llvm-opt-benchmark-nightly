Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/faces_first?download=true
inline.NumInlined: 415
inline.NumDeleted: 260
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3igl11faces_firstIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRT_RT0_RT1_:bb.a
  %i.dr = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i20, 4 ; 2 uses
  %i.ds = icmp slt i64 %i.dr, %i.cf
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i.i.i.i19, label %._crit_edge.i.i.i.i.i.i.i.i15, !llvm.loop !37

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i16.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i16, %middle.block48, %._crit_edge.i.i.i.i.i.i.i.i15
  %i.dt = load ptr, ptr %4, align 8, !tbaa !24
  call void @free(ptr noundef %i.dt) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.du = load ptr, ptr %3, align 8, !tbaa !13
  call void @free(ptr noundef %i.du) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i.i21.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %4, align 8, !tbaa !24
  call void @free(ptr noundef %i.dw) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.dx = load ptr, ptr %3, align 8, !tbaa !13
  call void @free(ptr noundef %i.dx) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.dv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl11faces_firstIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKT0_RS6_RS9_RT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, 63                         ; 2 uses
  %i.d = lshr i64 %i.c, 3
  %i.e = and i64 %i.d, 2305843009213693944
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #14 ; 3 uses
  %i.g = lshr i64 %i.c, 6                         ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %.idx.i.i = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %.idx.i.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit:               ; preds = %bb.b, %bb.a
  %.sroa.0158.0 = phi ptr [ null, %bb.a ], [ %i.f, %bb.b ] ; 9 uses
  %.sroa.17166.0 = phi ptr [ null, %bb.a ], [ %i.h, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25   ; 3 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader175.lr.ph, label %.preheader174

.preheader175.lr.ph:                              ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.preheader175.lr.ph.split, label %.preheader174

.preheader175.lr.ph.split:                        ; preds = %.preheader175.lr.ph
  %i.o = load ptr, ptr %1, align 8, !tbaa !24
  br label %.preheader175

.preheader175:                                    ; preds = %.preheader175.lr.ph.split, %._crit_edge
  %indvars.iv202 = phi i64 [ 0, %.preheader175.lr.ph.split ], [ %indvars.iv.next203, %._crit_edge ] ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv202
  br label %bb.c

.preheader174:                                    ; preds = %._crit_edge, %.preheader175.lr.ph, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %i.q = load i64, ptr %i.a, align 8, !tbaa !14   ; 11 uses
  %i.r = icmp sgt i64 %i.q, 0                     ; 3 uses
  br i1 %i.r, label %.lr.ph.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

.lr.ph.preheader:                                 ; preds = %.preheader174
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.preheader276, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.q, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi259 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.s = lshr i64 %index, 6
  %i.t = lshr i64 %index, 6
  %i.u = and i64 %i.s, 67108863
  %i.v = and i64 %i.t, 67108863
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %i.u
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %i.v
  %i.y = and <2 x i64> %vec.ind, splat (i64 63)
  %i.z = and <2 x i64> %step.add, splat (i64 63)
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !58
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !58
  %broadcast.splatinsert260 = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %broadcast.splat261 = shufflevector <2 x i64> %broadcast.splatinsert260, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ac = lshr <2 x i64> %broadcast.splat, %i.y
  %i.ad = lshr <2 x i64> %broadcast.splat261, %i.z
  %i.ae = trunc <2 x i64> %i.ac to <2 x i32>
  %i.af = and <2 x i32> %i.ae, splat (i32 1)
  %i.ag = trunc <2 x i64> %i.ad to <2 x i32>
  %i.ah = and <2 x i32> %i.ag, splat (i32 1)
  %i.ai = add <2 x i32> %i.af, %vec.phi           ; 2 uses
  %i.aj = add <2 x i32> %i.ah, %vec.phi259        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.aj, %i.ai
  %i.al = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge181, label %.lr.ph.preheader276

.lr.ph.preheader276:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv206.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0169179.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next203, %i.j
  br i1 %exitcond205.not, label %.preheader174, label %.preheader175, !llvm.loop !40

bb.c:                                             ; preds = %.preheader175, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader175 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.am = mul nuw nsw i64 %i.j, %indvars.iv
  %i.an = getelementptr [4 x i8], ptr %i.p, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !29 ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = sdiv i32 %i.ao, 64
  %.sext = sext i32 %i.aq to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.sroa.0158.0, i64 %.sext
  %i.as = and i64 %i.ap, -9223372036854775745
  %i.at = icmp ugt i64 %i.as, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.at, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ar, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.au = and i64 %i.ap, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !58
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !41

._crit_edge181:                                   ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.al, %middle.block ], [ %i.bl, %.lr.ph ] ; 3 uses
  %.not.i.i.i.i104 = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i.i.i104, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge181
  %i.ay = zext nneg i32 %.lcssa to i64            ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.az) #15 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.e, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.bc = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bc, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.noexc.i unwind label %.body105.thread

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body105.thread:                                  ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader276, %.lr.ph
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %.lr.ph ], [ %indvars.iv206.ph, %.lr.ph.preheader276 ] ; 3 uses
  %.0169179 = phi i32 [ %i.bl, %.lr.ph ], [ %.0169179.ph, %.lr.ph.preheader276 ]
  %i.be = lshr i64 %indvars.iv206, 6
  %.zext = and i64 %i.be, 67108863
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %.zext
  %i.bg = and i64 %indvars.iv206, 63
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !58
  %i.bi = lshr i64 %i.bh, %i.bg
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 1
  %i.bl = add nuw nsw i32 %i.bk, %.0169179        ; 2 uses
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next207, %i.q
  br i1 %exitcond209.not, label %._crit_edge181, label %.lr.ph, !llvm.loop !42

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit: ; preds = %.preheader174, %._crit_edge181, %bb.d
  %.not.i.i.i.i104254 = phi i1 [ true, %._crit_edge181 ], [ false, %bb.d ], [ true, %.preheader174 ]
  %i.bm = phi i64 [ 0, %._crit_edge181 ], [ %i.ay, %bb.d ], [ 0, %.preheader174 ] ; 2 uses
  %.0169.lcssa253 = phi i32 [ 0, %._crit_edge181 ], [ %.lcssa, %bb.d ], [ 0, %.preheader174 ] ; 7 uses
  %.sroa.0143.0 = phi ptr [ null, %._crit_edge181 ], [ %i.ba, %bb.d ], [ null, %.preheader174 ] ; 8 uses
  %i.bn = sub nsw i64 %i.q, %i.bm                 ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, 0                   ; 2 uses
  br i1 %i.bo, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit
  %i.bp = shl nuw nsw i64 %i.bn, 2
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bp) #15 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.invoke.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.bs = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bs, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.cont.i unwind label %bb.f

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.f:                                             ; preds = %.invoke.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body105

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %.sroa.0137.0 = phi ptr [ null, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit ], [ %i.bq, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i ] ; 8 uses
  br i1 %i.r, label %.lr.ph187, label %._crit_edge188

._crit_edge188:                                   ; preds = %bb.j, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !60
  %.not.i.i = icmp eq i64 %i.q, %i.bv
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge188
  %i.bw = load ptr, ptr %4, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.bw) #12
  br i1 %i.r, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.g
  %i.bx = shl nuw nsw i64 %i.q, 2
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bx) #15 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.invoke, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.g
  %.sink.i.i = phi ptr [ %i.by, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.g ]
  store ptr %.sink.i.i, ptr %4, align 8, !tbaa !61
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %._crit_edge188, %.sink.split.i.i
  store i64 %i.q, ptr %i.bu, align 8, !tbaa !60
  br i1 %.not.i.i.i.i104254, label %.preheader173, label %.lr.ph190

.lr.ph190:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ca = load ptr, ptr %4, align 8, !tbaa !61    ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.0169.lcssa253, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %5 = icmp slt i32 %.0169.lcssa253, 4
  br i1 %5, label %.epil.preheader, label %.lr.ph190.new

.lr.ph190.new:                                    ; preds = %.lr.ph190
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.m

.lr.ph187:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit, %bb.j
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %bb.j ], [ 0, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit ] ; 4 uses
  %.068185 = phi i32 [ %.1, %bb.j ], [ 0, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit ] ; 3 uses
  %.069184 = phi i32 [ %.170, %bb.j ], [ 0, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit ] ; 3 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv210 to i32 ; 2 uses
  %i.cc = lshr i64 %indvars.iv210, 6
  %.zext172 = and i64 %i.cc, 67108863
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %.zext172
  %i.ce = and i64 %indvars.iv210, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !58
  %i.ch = and i64 %i.cg, %i.cf
  %.not = icmp eq i64 %i.ch, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph187
  %i.ci = sext i32 %.069184 to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.sroa.0143.0, i64 %i.ci
  store i32 %i.cb, ptr %i.cj, align 4, !tbaa !29
  %i.ck = add nsw i32 %.069184, 1
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph187
  %i.cl = sext i32 %.068185 to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %.sroa.0137.0, i64 %i.cl
  store i32 %i.cb, ptr %i.cm, align 4, !tbaa !29
  %i.cn = add nsw i32 %.068185, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.170 = phi i32 [ %i.ck, %bb.h ], [ %.069184, %bb.i ]
  %.1 = phi i32 [ %.068185, %bb.h ], [ %i.cn, %bb.i ]
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next211, %i.q
  br i1 %exitcond213.not, label %._crit_edge188, label %.lr.ph187, !llvm.loop !43

.preheader173.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader173, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader173.loopexit.unr-lcssa, %.lr.ph190
  %indvars.iv214.epil.init = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next215.3, %.preheader173.loopexit.unr-lcssa ]
  %lcmp.mod280 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod280)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv214.epil = phi i64 [ %indvars.iv214.epil.init, %.epil.preheader ], [ %indvars.iv.next215.epil, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0143.0, i64 %indvars.iv214.epil
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !29
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cq
  %i.cs = trunc nuw nsw i64 %indvars.iv214.epil to i32
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !29
  %indvars.iv.next215.epil = add nuw nsw i64 %indvars.iv214.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader173, label %bb.k, !llvm.loop !44

.preheader173:                                    ; preds = %.preheader173.loopexit.unr-lcssa, %bb.k, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  br i1 %i.bo, label %.lr.ph192, label %._crit_edge193

.lr.ph192:                                        ; preds = %.preheader173
  %i.ct = load ptr, ptr %4, align 8, !tbaa !61    ; 5 uses
  %xtraiter282 = and i64 %i.bn, 3                 ; 3 uses
  %i.cu = sub i64 %i.bm, %i.q
  %i.cv = icmp ugt i64 %i.cu, -4
  br i1 %i.cv, label %.epil.preheader281, label %.lr.ph192.new

.lr.ph192.new:                                    ; preds = %.lr.ph192
  %unroll_iter286 = and i64 %i.bn, 9223372036854775804
  br label %bb.p

bb.l:                                             ; preds = %.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0137.0) #12
  br label %.body105

bb.m:                                             ; preds = %bb.m, %.lr.ph190.new
  %indvars.iv214 = phi i64 [ 0, %.lr.ph190.new ], [ %indvars.iv.next215.3, %bb.m ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph190.new ], [ %niter.next.3, %bb.m ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0143.0, i64 %indvars.iv214
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !29
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cz
  %i.db = trunc nuw nsw i64 %indvars.iv214 to i32
  store i32 %i.db, ptr %i.da, align 4, !tbaa !29
  %indvars.iv.next215 = or disjoint i64 %indvars.iv214, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0143.0, i64 %indvars.iv.next215
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !29
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.de
  %i.dg = trunc nuw nsw i64 %indvars.iv.next215 to i32
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !29
  %indvars.iv.next215.1 = or disjoint i64 %indvars.iv214, 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0143.0, i64 %indvars.iv.next215.1
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !29
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dj
  %i.dl = trunc nuw nsw i64 %indvars.iv.next215.1 to i32
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !29
  %indvars.iv.next215.2 = or disjoint i64 %indvars.iv214, 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0143.0, i64 %indvars.iv.next215.2
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !29
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.do
  %i.dq = trunc nuw nsw i64 %indvars.iv.next215.2 to i32
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !29
  %indvars.iv.next215.3 = add nuw nsw i64 %indvars.iv214, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader173.loopexit.unr-lcssa, label %bb.m, !llvm.loop !45

._crit_edge193.loopexit.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod284.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod284.not, label %._crit_edge193, label %.epil.preheader281

.epil.preheader281:                               ; preds = %._crit_edge193.loopexit.unr-lcssa, %.lr.ph192
  %indvars.iv218.epil.init = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next219.3, %._crit_edge193.loopexit.unr-lcssa ]
  %lcmp.mod285 = icmp ne i64 %xtraiter282, 0
  tail call void @llvm.assume(i1 %lcmp.mod285)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader281
  %indvars.iv218.epil = phi i64 [ %indvars.iv218.epil.init, %.epil.preheader281 ], [ %indvars.iv.next219.epil, %bb.n ] ; 3 uses
  %epil.iter283 = phi i64 [ 0, %.epil.preheader281 ], [ %epil.iter283.next, %bb.n ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0, i64 %indvars.iv218.epil
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !29
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dt
  %i.dv = trunc i64 %indvars.iv218.epil to i32
  %i.dw = add i32 %.0169.lcssa253, %i.dv
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !29
  %indvars.iv.next219.epil = add nuw nsw i64 %indvars.iv218.epil, 1
  %epil.iter283.next = add i64 %epil.iter283, 1   ; 2 uses
  %epil.iter283.cmp.not = icmp eq i64 %epil.iter283.next, %xtraiter282
  br i1 %epil.iter283.cmp.not, label %._crit_edge193, label %bb.n, !llvm.loop !46

._crit_edge193:                                   ; preds = %._crit_edge193.loopexit.unr-lcssa, %bb.n, %.preheader173
  %i.dx = load i64, ptr %i.i, align 8, !tbaa !25  ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !26 ; 4 uses
  %i.ea = icmp eq i64 %i.dx, 0
  %i.eb = icmp eq i64 %i.dz, 0
  %or.cond.i.i = or i1 %i.ea, %i.eb
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge193
  %i.ec = sdiv i64 9223372036854775807, %i.dz
  %i.ed = icmp sgt i64 %i.dx, %i.ec
  br i1 %i.ed, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.o, %._crit_edge193
  %i.ee = mul nsw i64 %i.dz, %i.dx
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ee, i64 noundef %i.dx, i64 noundef %i.dz)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit.preheader unwind label %bb.l

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit.preheader: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.ef = load i64, ptr %i.i, align 8, !tbaa !25  ; 5 uses
  %i.eg = icmp sgt i64 %i.ef, 0
  br i1 %i.eg, label %.preheader.lr.ph, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit._crit_edge.split

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit.preheader
  %i.eh = load i64, ptr %i.dy, align 8, !tbaa !26 ; 5 uses
  %i.ei = icmp sgt i64 %i.eh, 0
  br i1 %i.ei, label %.preheader.lr.ph.split, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ek = load ptr, ptr %1, align 8, !tbaa !24
  %i.el = load ptr, ptr %4, align 8, !tbaa !61    ; 3 uses
  %i.em = load ptr, ptr %3, align 8, !tbaa !24
  %i.en = load i64, ptr %i.ej, align 8, !tbaa !25 ; 3 uses
  %xtraiter289 = and i64 %i.eh, 1
  %i.eo = icmp eq i64 %i.eh, 1
  %unroll_iter293 = and i64 %i.eh, 9223372036854775806
  %lcmp.mod291.not = icmp eq i64 %xtraiter289, 0
  %lcmp.mod292 = trunc i64 %i.eh to i1
  br label %.preheader

bb.p:                                             ; preds = %bb.p, %.lr.ph192.new
  %indvars.iv218 = phi i64 [ 0, %.lr.ph192.new ], [ %indvars.iv.next219.3, %bb.p ] ; 6 uses
  %niter287 = phi i64 [ 0, %.lr.ph192.new ], [ %niter287.next.3, %bb.p ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0, i64 %indvars.iv218
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !29
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.er
  %i.et = trunc i64 %indvars.iv218 to i32
  %i.eu = add i32 %.0169.lcssa253, %i.et
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !29
  %indvars.iv.next219 = or disjoint i64 %indvars.iv218, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0, i64 %indvars.iv.next219
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !29
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.ex
  %i.ez = trunc i64 %indvars.iv.next219 to i32
end_hunk_0
begin_hunk_1_@_ZN3igl11faces_firstIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKT0_RS6_RS9_RT1_:bb.a
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !17
  store double %i.ij, ptr %i.ig, align 8, !tbaa !17
  %i.ik = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter295
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !55

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader275
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader275 ], [ %i.ik, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.il = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.ge
  %i.im = icmp ugt i64 %i.il, -4
  br i1 %i.im, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jk, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.in = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.gg
  %i.io = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.in
  %i.ip = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.fy
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ip
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !17
  store double %i.ir, ptr %i.io, align 8, !tbaa !17
  %i.is = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.it = mul nsw i64 %i.is, %i.gg
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.it
  %i.iv = mul nuw nsw i64 %i.is, %i.fy
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.iv
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !17
  store double %i.ix, ptr %i.iu, align 8, !tbaa !17
  %i.iy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.iz = mul nsw i64 %i.iy, %i.gg
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.iz
  %i.jb = mul nuw nsw i64 %i.iy, %i.fy
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !17
  store double %i.jd, ptr %i.ja, align 8, !tbaa !17
  %i.je = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.jf = mul nsw i64 %i.je, %i.gg
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.jf
  %i.jh = mul nuw nsw i64 %i.je, %i.fy
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !17
  store double %i.jj, ptr %i.jg, align 8, !tbaa !17
  %i.jk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.jk, %i.ge
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !56

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block271
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next231, %i.fy
  br i1 %exitcond233.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit._crit_edge.split, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !57

.body105:                                         ; preds = %bb.l, %bb.f
  %.pn94.pn.pn = phi { ptr, i32 } [ %i.cw, %bb.l ], [ %i.bt, %bb.f ] ; 2 uses
  tail call void @free(ptr noundef %.sroa.0143.0) #12
  %.not.i.i127 = icmp eq ptr %.sroa.0158.0, null
  br i1 %.not.i.i127, label %.body, label %bb.s

bb.s:                                             ; preds = %.body105.thread, %.body105
  %.pn101257 = phi { ptr, i32 } [ %i.bd, %.body105.thread ], [ %.pn94.pn.pn, %.body105 ]
  %i.jl = ptrtoint ptr %.sroa.17166.0 to i64
  %i.jm = ptrtoint ptr %.sroa.0158.0 to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 2 uses
  %i.jo = ashr exact i64 %i.jn, 3
  %i.jp = sub nsw i64 0, %i.jo
  %i.jq = getelementptr inbounds [8 x i8], ptr %.sroa.17166.0, i64 %i.jp
  tail call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jn) #16
  br label %.body

.body:                                            ; preds = %bb.s, %.body105
  %.pn101258 = phi { ptr, i32 } [ %.pn101257, %bb.s ], [ %.pn94.pn.pn, %.body105 ]
  resume { ptr, i32 } %.pn101258
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.f) #12
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #15 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !25
  store i64 %3, ptr %i.c, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.f) #12
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #15 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !14
  store i64 %3, ptr %i.c, align 8, !tbaa !15
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!12, !11, i64 16}
!16 = !{!"double", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!"p1 int", !9, i64 0}
!23 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !22, i64 0, !11, i64 8, !11, i64 16}
!24 = !{!23, !22, i64 0}
!25 = !{!23, !11, i64 8}
!26 = !{!23, !11, i64 16}
!27 = !{!"vtable pointer", !4, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!6, !6, i64 0}
!30 = distinct !{!30, !18, !19, !20}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !18, !19}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18, !19, !20}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !18, !19}
!37 = distinct !{!37, !18}
!38 = !{!5, !5, i64 0}
!39 = distinct !{!39, !18, !19, !20}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18, !20, !19}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!49 = distinct !{!49, !48, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!50 = distinct !{!50, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!51 = distinct !{!51, !50, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18, !19, !20}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !18, !19}
!57 = distinct !{!57, !18}
!58 = !{!11, !11, i64 0}
!59 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !22, i64 0, !11, i64 8}
!60 = !{!59, !11, i64 8}
!61 = !{!59, !22, i64 0}
!62 = !{!49}
!63 = !{!51}
end_hunk_1
