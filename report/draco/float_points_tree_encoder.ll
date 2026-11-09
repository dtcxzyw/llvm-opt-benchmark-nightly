Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/float_points_tree_encoder?download=true
inline.NumInlined: 1853
inline.NumDeleted: 689
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodeInternalIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEvT_SC_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gi, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !99
  %i.gl = load ptr, ptr %i.ao, align 8, !tbaa !191
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  store ptr %i.gm, ptr %i.ao, align 8, !tbaa !191
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit

bb.z:                                             ; preds = %bb.x
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit unwind label %bb.aa

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit.split-lp

bb.ab:                                            ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit, %bb.w
  %.not169 = icmp eq ptr %.sroa.011.118.i.i, %i.cb
  br i1 %.not169, label %.loopexit171, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %.sroa.011.118.i.i, ptr %6, align 8, !tbaa !43
  store ptr %i.cb, ptr %i.bh, align 8, !tbaa !43
  store i32 %i.ch, ptr %i.bi, align 8, !tbaa !338
  store i32 %i.ea, ptr %i.bj, align 8, !tbaa !339
  store i32 %i.fm, ptr %i.bk, align 4, !tbaa !340
  %i.go = load ptr, ptr %i.ao, align 8, !tbaa !191 ; 2 uses
  %i.gp = load ptr, ptr %i.aq, align 8, !tbaa !341
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -32
  %.not.i.i.i124 = icmp eq ptr %i.go, %i.gq
  br i1 %.not.i.i.i124, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !99
  %i.gr = load ptr, ptr %i.ao, align 8, !tbaa !191
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  store ptr %i.gs, ptr %i.ao, align 8, !tbaa !191
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit126

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %6)
          to label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit126 unwind label %bb.af

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit126: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.loopexit171

bb.af:                                            ; preds = %bb.ae
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.loopexit.split-lp

..loopexit171_crit_edge:                          ; preds = %._crit_edge, %.lr.ph191
  br label %.loopexit171, !llvm.loop !330

.loopexit171:                                     ; preds = %.preheader, %..loopexit171_crit_edge, %bb.ab, %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit126, %bb.i
  %i.gu = load ptr, ptr %i.ao, align 8, !tbaa !192 ; 2 uses
  %i.gv = load ptr, ptr %i.aw, align 8, !tbaa !192
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %._crit_edge193, label %bb.f

._crit_edge193:                                   ; preds = %.loopexit171, %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit
  %i.gx = load ptr, ptr %4, align 8, !tbaa !198   ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i127, label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge193
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !199 ; 2 uses
  %i.hb = load ptr, ptr %i.gy, align 8, !tbaa !196 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = icmp ult ptr %i.ha, %i.hc
  br i1 %i.hd, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ag, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.hf, %.lr.ph.i.i.i.i ], [ %i.ha, %bb.ag ] ; 3 uses
  %i.he = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !195
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef 512) #17
  %i.hf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.hg = icmp ult ptr %.06.i.i.i.i, %i.hb
  br i1 %i.hg, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i.i, !llvm.loop !8

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !198
  br label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i.i

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i.i, %bb.ag
  %i.hh = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i.i ], [ %i.gx, %bb.ag ]
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !200
  %i.hk = shl i64 %i.hj, 3
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #17
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEED2Ev.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEED2Ev.exit: ; preds = %._crit_edge193, %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa, %bb.af
  %.pn92.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.aa ], [ %i.gt, %bb.af ], [ %lpad.loopexit.split-lp291, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn92.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE16GetAndEncodeAxisIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEjT_SC_RKS8_IjSaIjEESG_j(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 768
  br i1 %i.d, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !186  ; 3 uses
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %.lr.ph65, label %.loopexit

.lr.ph65:                                         ; preds = %.preheader
  %i.h = load ptr, ptr %4, align 8, !tbaa !62     ; 6 uses
  %wide.trip.count75 = zext i32 %i.f to i64
  %.pre = load i32, ptr %i.h, align 4, !tbaa !44  ; 2 uses
  %i.i = add nsw i64 %wide.trip.count75, -1       ; 2 uses
  %xtraiter101 = and i64 %i.i, 3                  ; 3 uses
  %i.j = add i32 %i.f, -2
  %i.k = icmp ult i32 %i.j, 3
  br i1 %i.k, label %.epil.preheader100, label %.lr.ph65.new

.lr.ph65.new:                                     ; preds = %.lr.ph65
  %unroll_iter105 = and i64 %i.i, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph65.new
  %i.l = phi i32 [ %.pre, %.lr.ph65.new ], [ %i.af, %bb.b ] ; 2 uses
  %indvars.iv72 = phi i64 [ 1, %.lr.ph65.new ], [ %indvars.iv.next73.3, %bb.b ] ; 6 uses
  %.03663 = phi i32 [ 0, %.lr.ph65.new ], [ %spec.select.3, %bb.b ]
  %niter106 = phi i64 [ 0, %.lr.ph65.new ], [ %niter106.next.3, %bb.b ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv72
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44   ; 2 uses
  %i.o = icmp ugt i32 %i.l, %i.n
  %i.p = trunc nuw i64 %indvars.iv72 to i32
  %spec.select = select i1 %i.o, i32 %i.p, i32 %.03663
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.n) ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next73
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44   ; 2 uses
  %i.t = icmp ugt i32 %i.q, %i.s
  %i.u = trunc nuw i64 %indvars.iv.next73 to i32
  %spec.select.1 = select i1 %i.t, i32 %i.u, i32 %spec.select
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.s) ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next73.1
  %i.x = load i32, ptr %i.w, align 4, !tbaa !44   ; 2 uses
  %i.y = icmp ugt i32 %i.v, %i.x
  %i.z = trunc nuw i64 %indvars.iv.next73.1 to i32
  %spec.select.2 = select i1 %i.y, i32 %i.z, i32 %spec.select.1
  %indvars.iv.next73.2 = add nuw nsw i64 %indvars.iv72, 3 ; 2 uses
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.x) ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next73.2
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !44 ; 2 uses
  %i.ad = icmp ugt i32 %i.aa, %i.ac
  %i.ae = trunc nuw i64 %indvars.iv.next73.2 to i32
  %spec.select.3 = select i1 %i.ad, i32 %i.ae, i32 %spec.select.2 ; 3 uses
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ac) ; 2 uses
  %niter106.next.3 = add nuw i64 %niter106, 4     ; 2 uses
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !343

bb.c:                                             ; preds = %bb.a
  %i.ag = udiv exact i64 %i.c, 12
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !186
  %.not67 = icmp eq i32 %i.aj, 0
  br i1 %.not67, label %._crit_edge61, label %.lr.ph56.split.preheader

.lr.ph56.split.preheader:                         ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !62 ; 2 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62
  %i.ap = load ptr, ptr %3, align 8
  %i.aq = add i64 %i.a, -12
  %i.ar = sub i64 %i.aq, %i.b
  %.fr = freeze i64 %i.ar                         ; 2 uses
  %i.as = urem i64 %.fr, 12
  %i.at = sub nuw i64 %.fr, %i.as
  %6 = getelementptr i8, ptr %1, i64 %i.at
  %i.au = getelementptr i8, ptr %6, i64 4
  %i.av = add i64 %i.a, -12
  %i.aw = sub i64 %i.av, %i.b
  %i.ax = udiv i64 %i.aw, 12
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.az = and i64 %i.ay, 7                        ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = select i1 %i.ba, i64 8, i64 %i.az
  %n.vec = sub nsw i64 %i.ay, %i.bb               ; 2 uses
  %i.bc = mul i64 %n.vec, 12
  %i.bd = getelementptr i8, ptr %1, i64 %i.bc
  br label %.lr.ph56.split

.preheader50:                                     ; preds = %bb.d
  %.not68 = icmp eq i32 %i.dy, 0
  br i1 %.not68, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader50
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !62 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 3 uses
  %wide.trip.count = zext i32 %i.dy to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bh = icmp eq i32 %i.dy, 1
  br i1 %i.bh, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.f

.lr.ph56.split:                                   ; preds = %.lr.ph56.split.preheader, %bb.d
  %indvar = phi i64 [ 0, %.lr.ph56.split.preheader ], [ %indvar.next, %bb.d ] ; 2 uses
  %.03453 = phi i32 [ 0, %.lr.ph56.split.preheader ], [ %i.dx, %bb.d ] ; 3 uses
  %i.bi = zext i32 %.03453 to i64                 ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bi ; 6 uses
  store i32 0, ptr %i.bj, align 4, !tbaa !44
  %i.bk = load i32, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bi
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !44 ; 2 uses
  %i.bn = sub i32 %i.bk, %i.bm                    ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bi
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !44
  %.not38 = icmp eq i32 %i.bk, %i.bm
  br i1 %.not38, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph56.split
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bi
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !44
  %i.br = add i32 %i.bn, -1
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = add i32 %i.bq, %i.bs                    ; 2 uses
  %i.bu = sext i32 %.03453 to i64                 ; 10 uses
  %.promoted = load i32, ptr %i.bj, align 4, !tbaa !44 ; 2 uses
  %i.bv = shl nuw nsw i64 %indvar, 2
  %i.bw = getelementptr i8, ptr %i.al, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  %i.by = shl nsw i64 %i.bu, 2                    ; 2 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.au, i64 %i.by
  %bound0 = icmp ult ptr %i.bj, %i.ca
  %bound1 = icmp ult ptr %i.bz, %i.bx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.cb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cb, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi87 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %i.cc = mul i64 %index, 12                      ; 8 uses
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  %next.gep88 = getelementptr i8, ptr %i.cd, i64 12
  %i.ce = getelementptr i8, ptr %1, i64 %i.cc
  %next.gep89 = getelementptr i8, ptr %i.ce, i64 24
  %i.cf = getelementptr i8, ptr %1, i64 %i.cc
  %next.gep90 = getelementptr i8, ptr %i.cf, i64 36
  %i.cg = getelementptr i8, ptr %1, i64 %i.cc
  %next.gep91 = getelementptr i8, ptr %i.cg, i64 48
  %i.ch = getelementptr i8, ptr %1, i64 %i.cc
  %next.gep92 = getelementptr i8, ptr %i.ch, i64 60
  %i.ci = getelementptr i8, ptr %1, i64 %i.cc
  %next.gep93 = getelementptr i8, ptr %i.ci, i64 72
  %i.cj = getelementptr i8, ptr %1, i64 %i.cc
  %next.gep94 = getelementptr i8, ptr %i.cj, i64 84
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.cc
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %next.gep88, i64 %i.bu
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %next.gep89, i64 %i.bu
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %next.gep90, i64 %i.bu
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %next.gep91, i64 %i.bu
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %next.gep92, i64 %i.bu
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %next.gep93, i64 %i.bu
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %next.gep94, i64 %i.bu
  %i.cr = load i32, ptr %gep, align 4, !tbaa !44, !alias.scope !352
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !44, !alias.scope !352
  %i.ct = load i32, ptr %i.cl, align 4, !tbaa !44, !alias.scope !352
  %i.cu = load i32, ptr %i.cm, align 4, !tbaa !44, !alias.scope !352
  %i.cv = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %i.cw = insertelement <4 x i32> %i.cv, i32 %i.cs, i64 1
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.ct, i64 2
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cu, i64 3
  %i.cz = load i32, ptr %i.cn, align 4, !tbaa !44, !alias.scope !352
  %i.da = load i32, ptr %i.co, align 4, !tbaa !44, !alias.scope !352
  %i.db = load i32, ptr %i.cp, align 4, !tbaa !44, !alias.scope !352
  %i.dc = load i32, ptr %i.cq, align 4, !tbaa !44, !alias.scope !352
  %i.dd = insertelement <4 x i32> poison, i32 %i.cz, i64 0
  %i.de = insertelement <4 x i32> %i.dd, i32 %i.da, i64 1
  %i.df = insertelement <4 x i32> %i.de, i32 %i.db, i64 2
  %i.dg = insertelement <4 x i32> %i.df, i32 %i.dc, i64 3
  %i.dh = icmp ult <4 x i32> %i.cy, %broadcast.splat
  %i.di = icmp ult <4 x i32> %i.dg, %broadcast.splat
  %i.dj = zext <4 x i1> %i.dh to <4 x i32>
  %i.dk = zext <4 x i1> %i.di to <4 x i32>
  %i.dl = add <4 x i32> %vec.phi, %i.dj           ; 2 uses
  %i.dm = add <4 x i32> %vec.phi87, %i.dk         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !346

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dm, %i.dl
  %i.do = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.do, ptr %i.bj, align 4, !tbaa !44, !alias.scope !353, !noalias !352
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi i32 [ %.promoted, %.lr.ph ], [ %i.do, %middle.block ]
  %.sroa.0.052.ph = phi ptr [ %1, %.lr.ph ], [ %i.bd, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph
  %i.dp = sub i32 %i.ah, %i.dv
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.dp, i32 %i.dv)
  store i32 %.sroa.speculated, ptr %i.bj, align 4, !tbaa !44
  br label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.dq = phi i32 [ %i.dv, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.sroa.0.052 = phi ptr [ %i.dw, %scalar.ph ], [ %.sroa.0.052.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.052, i64 %i.bu
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !44
  %i.dt = icmp ult i32 %i.ds, %i.bt
  %i.du = zext i1 %i.dt to i32
  %i.dv = add i32 %i.dq, %i.du                    ; 4 uses
  store i32 %i.dv, ptr %i.bj, align 4, !tbaa !44
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.052, i64 12 ; 2 uses
  %.not49 = icmp eq ptr %i.dw, %2
  br i1 %.not49, label %._crit_edge, label %scalar.ph, !llvm.loop !348

bb.d:                                             ; preds = %.lr.ph56.split, %._crit_edge
  %i.dx = add nuw i32 %.03453, 1                  ; 2 uses
  %i.dy = load i32, ptr %i.ai, align 8, !tbaa !186 ; 5 uses
  %i.dz = icmp ult i32 %i.dx, %i.dy
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dz, label %.lr.ph56.split, label %.preheader50, !llvm.loop !349

._crit_edge61.loopexit.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.loopexit.unr-lcssa, %.lr.ph60
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next.1, %._crit_edge61.loopexit.unr-lcssa ] ; 3 uses
  %.03358.epil.init = phi i32 [ 0, %.lr.ph60 ], [ %.1.1, %._crit_edge61.loopexit.unr-lcssa ]
  %.257.epil.init = phi i32 [ 0, %.lr.ph60 ], [ %.3.1, %._crit_edge61.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod99 = trunc i32 %i.dy to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.epil.init
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !44
  %.not.epil = icmp eq i32 %i.eb, 0
  br i1 %.not.epil, label %._crit_edge61, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %i.ec = load ptr, ptr %i.bg, align 8, !tbaa !62
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.epil.init
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !44
  %i.ef = icmp ult i32 %.03358.epil.init, %i.ee
  %i.eg = trunc nuw i64 %indvars.iv.epil.init to i32
  %spec.select47.epil = select i1 %i.ef, i32 %i.eg, i32 %.257.epil.init
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %._crit_edge61.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %bb.c, %.preheader50
  %.2.lcssa = phi i32 [ 0, %.preheader50 ], [ 0, %bb.c ], [ %.3.1, %._crit_edge61.loopexit.unr-lcssa ], [ %.257.epil.init, %.epil.preheader ], [ %spec.select47.epil, %bb.e ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1896
  tail call void @_ZN5draco16DirectBitEncoder28EncodeLeastSignificantBits32Eij(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i32 noundef 4, i32 noundef %.2.lcssa)
  br label %.loopexit

bb.f:                                             ; preds = %bb.j, %.lr.ph60.new
  %indvars.iv = phi i64 [ 0, %.lr.ph60.new ], [ %indvars.iv.next.1, %bb.j ] ; 5 uses
  %.03358 = phi i32 [ 0, %.lr.ph60.new ], [ %.1.1, %bb.j ] ; 3 uses
  %.257 = phi i32 [ 0, %.lr.ph60.new ], [ %.3.1, %bb.j ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.1, %bb.j ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !44
  %.not = icmp eq i32 %i.ej, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ek = load ptr, ptr %i.bg, align 8, !tbaa !62
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv
  %i.em = load i32, ptr %i.el, align 4, !tbaa !44 ; 2 uses
  %i.en = icmp ult i32 %.03358, %i.em
  %i.eo = trunc nuw i64 %indvars.iv to i32
  %spec.select47 = select i1 %i.en, i32 %i.eo, i32 %.257
  %spec.select48 = tail call i32 @llvm.umax.i32(i32 %.03358, i32 %i.em)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3 = phi i32 [ %.257, %bb.f ], [ %spec.select47, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %.03358, %bb.f ], [ %spec.select48, %bb.g ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !44
  %.not.1 = icmp eq i32 %i.eq, 0
  br i1 %.not.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.er = load ptr, ptr %i.bg, align 8, !tbaa !62
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv.next
  %i.et = load i32, ptr %i.es, align 4, !tbaa !44 ; 2 uses
  %i.eu = icmp ult i32 %.1, %i.et
  %i.ev = trunc nuw i64 %indvars.iv.next to i32
  %spec.select47.1 = select i1 %i.eu, i32 %i.ev, i32 %.3
  %spec.select48.1 = tail call i32 @llvm.umax.i32(i32 %.1, i32 %i.et)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3.1 = phi i32 [ %.3, %bb.h ], [ %spec.select47.1, %bb.i ] ; 3 uses
  %.1.1 = phi i32 [ %.1, %bb.h ], [ %spec.select48.1, %bb.i ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge61.loopexit.unr-lcssa, label %bb.f, !llvm.loop !350

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.loopexit, label %.epil.preheader100

.epil.preheader100:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph65
  %.epil.init = phi i32 [ %.pre, %.lr.ph65 ], [ %i.af, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv72.epil.init = phi i64 [ 1, %.lr.ph65 ], [ %indvars.iv.next73.3, %.loopexit.loopexit.unr-lcssa ]
  %.03663.epil.init = phi i32 [ 0, %.lr.ph65 ], [ %spec.select.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter101, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader100
  %i.ew = phi i32 [ %.epil.init, %.epil.preheader100 ], [ %i.fb, %bb.k ] ; 2 uses
  %indvars.iv72.epil = phi i64 [ %indvars.iv72.epil.init, %.epil.preheader100 ], [ %indvars.iv.next73.epil, %bb.k ] ; 3 uses
  %.03663.epil = phi i32 [ %.03663.epil.init, %.epil.preheader100 ], [ %spec.select.epil, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader100 ], [ %epil.iter.next, %bb.k ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv72.epil
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !44 ; 2 uses
  %i.ez = icmp ugt i32 %i.ew, %i.ey
  %i.fa = trunc nuw i64 %indvars.iv72.epil to i32
  %spec.select.epil = select i1 %i.ez, i32 %i.fa, i32 %.03663.epil ; 2 uses
  %indvars.iv.next73.epil = add nuw nsw i64 %indvars.iv72.epil, 1
end_hunk_0
