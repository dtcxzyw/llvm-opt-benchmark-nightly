Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/float_points_tree_encoder?download=true
inline.NumInlined: 1853
inline.NumDeleted: 689
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodeInternalIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEvT_SC_:bb.a
bb.aa:                                            ; preds = %_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE12EncodeNumberEij.exit
  %.not168 = icmp eq ptr %.sroa.011.118.i.i, %i.ca
  br i1 %.not168, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.ca, ptr %5, align 8, !tbaa !43
  store ptr %.sroa.011.118.i.i, ptr %i.bd, align 8, !tbaa !43
  store i32 %i.ch, ptr %i.be, align 8, !tbaa !338
  store i32 %.sroa.766.0.copyload164, ptr %i.bf, align 8, !tbaa !339
  store i32 %i.fm, ptr %i.bg, align 4, !tbaa !340
  %i.gm = load ptr, ptr %i.ao, align 8, !tbaa !191 ; 2 uses
  %i.gn = load ptr, ptr %i.aq, align 8, !tbaa !341
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -32
  %.not.i.i.i122 = icmp eq ptr %i.gm, %i.go
  br i1 %.not.i.i.i122, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !99
  %i.gp = load ptr, ptr %i.ao, align 8, !tbaa !191
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store ptr %i.gq, ptr %i.ao, align 8, !tbaa !191
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit unwind label %bb.ae

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit.split-lp

bb.af:                                            ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit, %bb.aa
  %.not169 = icmp eq ptr %.sroa.011.118.i.i, %i.cb
  br i1 %.not169, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %.sroa.011.118.i.i, ptr %6, align 8, !tbaa !43
  store ptr %i.cb, ptr %i.bh, align 8, !tbaa !43
  store i32 %i.ch, ptr %i.bi, align 8, !tbaa !338
  store i32 %i.ed, ptr %i.bj, align 8, !tbaa !339
  store i32 %i.fp, ptr %i.bk, align 4, !tbaa !340
  %i.gs = load ptr, ptr %i.ao, align 8, !tbaa !191 ; 2 uses
  %i.gt = load ptr, ptr %i.aq, align 8, !tbaa !341
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -32
  %.not.i.i.i124 = icmp eq ptr %i.gs, %i.gu
  br i1 %.not.i.i.i124, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !99
  %i.gv = load ptr, ptr %i.ao, align 8, !tbaa !191
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  store ptr %i.gw, ptr %i.ao, align 8, !tbaa !191
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit126

bb.ai:                                            ; preds = %bb.ag
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %6)
          to label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit126 unwind label %bb.aj

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit126: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.loopexit.split-lp

..loopexit_crit_edge:                             ; preds = %._crit_edge, %.lr.ph186
  br label %.loopexit, !llvm.loop !330

.loopexit:                                        ; preds = %.preheader, %..loopexit_crit_edge, %bb.af, %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushEOSD_.exit126, %bb.i
  %i.gy = load ptr, ptr %i.ao, align 8, !tbaa !192 ; 2 uses
  %i.gz = load ptr, ptr %i.aw, align 8, !tbaa !192
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %._crit_edge188, label %bb.f

._crit_edge188:                                   ; preds = %.loopexit, %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit
  %i.hb = load ptr, ptr %4, align 8, !tbaa !198   ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i127, label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge188
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !199 ; 2 uses
  %i.hf = load ptr, ptr %i.hc, align 8, !tbaa !196 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = icmp ult ptr %i.he, %i.hg
  br i1 %i.hh, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i ], [ %i.he, %bb.ak ] ; 3 uses
  %i.hi = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !195
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef 512) #17
  %i.hj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.hk = icmp ult ptr %.06.i.i.i.i, %i.hf
  br i1 %i.hk, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i.i, !llvm.loop !8

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !198
  br label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i.i

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i.i, %bb.ak
  %i.hl = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i.i ], [ %i.hb, %bb.ak ]
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !200
  %i.ho = shl i64 %i.hn, 3
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #17
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEED2Ev.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEED2Ev.exit: ; preds = %._crit_edge188, %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit171, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.k, %bb.y, %bb.p, %bb.ae, %bb.aj, %bb.j
  %.pn92.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.j ], [ %i.cs, %bb.k ], [ %i.dz, %bb.p ], [ %i.fr, %bb.y ], [ %i.gr, %bb.ae ], [ %i.gx, %bb.aj ], [ %lpad.loopexit, %.loopexit171 ], [ %lpad.loopexit172, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp173, %.loopexit.split-lp.loopexit.split-lp ]
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
  %wide.trip.count79 = zext i32 %i.f to i64
  %.pre = load i32, ptr %i.h, align 4, !tbaa !44  ; 2 uses
  %i.i = add nsw i64 %wide.trip.count79, -1       ; 2 uses
  %xtraiter114 = and i64 %i.i, 3                  ; 3 uses
  %i.j = add i32 %i.f, -2
  %i.k = icmp ult i32 %i.j, 3
  br i1 %i.k, label %.epil.preheader113, label %.lr.ph65.new

.lr.ph65.new:                                     ; preds = %.lr.ph65
  %unroll_iter118 = and i64 %i.i, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph65.new
  %i.l = phi i32 [ %.pre, %.lr.ph65.new ], [ %i.af, %bb.b ] ; 2 uses
  %indvars.iv76 = phi i64 [ 1, %.lr.ph65.new ], [ %indvars.iv.next77.3, %bb.b ] ; 6 uses
  %.03663 = phi i32 [ 0, %.lr.ph65.new ], [ %spec.select.3, %bb.b ]
  %niter119 = phi i64 [ 0, %.lr.ph65.new ], [ %niter119.next.3, %bb.b ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44   ; 2 uses
  %i.o = icmp ugt i32 %i.l, %i.n
  %i.p = trunc nuw i64 %indvars.iv76 to i32
  %spec.select = select i1 %i.o, i32 %i.p, i32 %.03663
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.n) ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next77
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44   ; 2 uses
  %i.t = icmp ugt i32 %i.q, %i.s
  %i.u = trunc nuw i64 %indvars.iv.next77 to i32
  %spec.select.1 = select i1 %i.t, i32 %i.u, i32 %spec.select
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.s) ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next77.1
  %i.x = load i32, ptr %i.w, align 4, !tbaa !44   ; 2 uses
  %i.y = icmp ugt i32 %i.v, %i.x
  %i.z = trunc nuw i64 %indvars.iv.next77.1 to i32
  %spec.select.2 = select i1 %i.y, i32 %i.z, i32 %spec.select.1
  %indvars.iv.next77.2 = add nuw nsw i64 %indvars.iv76, 3 ; 2 uses
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.x) ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next77.2
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !44 ; 2 uses
  %i.ad = icmp ugt i32 %i.aa, %i.ac
  %i.ae = trunc nuw i64 %indvars.iv.next77.2 to i32
  %spec.select.3 = select i1 %i.ad, i32 %i.ae, i32 %spec.select.2 ; 3 uses
  %indvars.iv.next77.3 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ac) ; 2 uses
  %niter119.next.3 = add nuw i64 %niter119, 4     ; 2 uses
  %niter119.ncmp.3 = icmp eq i64 %niter119.next.3, %unroll_iter118
  br i1 %niter119.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !343

bb.c:                                             ; preds = %bb.a
  %i.ag = udiv exact i64 %i.c, 12
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !186
  %.not67 = icmp eq i32 %i.aj, 0
  br i1 %.not67, label %._crit_edge61, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.c
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %7 = load ptr, ptr %6, align 8, !tbaa !62       ; 3 uses
  %8 = load ptr, ptr %4, align 8, !tbaa !62       ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %10 = load ptr, ptr %9, align 8, !tbaa !62      ; 2 uses
  %11 = load ptr, ptr %3, align 8
  %.not4951 = icmp eq ptr %1, %2
  %.not4951.fr = freeze i1 %.not4951
  br i1 %.not4951.fr, label %.lr.ph56.split.us, label %.lr.ph56.split.preheader

.lr.ph56.split.preheader:                         ; preds = %.lr.ph56
  %i.ak = add i64 %i.a, -12
  %i.al = sub i64 %i.ak, %i.b
  %.fr = freeze i64 %i.al                         ; 2 uses
  %i.am = urem i64 %.fr, 12
  %i.an = sub nuw i64 %.fr, %i.am
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  %scevgep95 = getelementptr i8, ptr %i.ao, i64 4
  %i.ap = add i64 %i.a, -12
  %i.aq = sub i64 %i.ap, %i.b
  %i.ar = udiv i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %i.at = and i64 %i.as, 7                        ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = select i1 %i.au, i64 8, i64 %i.at
  %n.vec = sub nsw i64 %i.as, %i.av               ; 2 uses
  %i.aw = mul i64 %n.vec, 12
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  br label %.lr.ph56.split

.lr.ph56.split.us:                                ; preds = %.lr.ph56, %21
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %.lr.ph56 ] ; 4 uses
  %12 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv ; 3 uses
  store i32 0, ptr %12, align 4, !tbaa !44
  %13 = load i32, ptr %0, align 8, !tbaa !89      ; 2 uses
  %14 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  %15 = load i32, ptr %14, align 4, !tbaa !44     ; 2 uses
  %16 = sub i32 %13, %15
  %17 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  store i32 %16, ptr %17, align 4, !tbaa !44
  %.not38.us = icmp eq i32 %13, %15
  br i1 %.not38.us, label %21, label %18

18:                                               ; preds = %.lr.ph56.split.us
  %19 = load i32, ptr %12, align 4, !tbaa !44     ; 2 uses
  %20 = sub i32 %i.ah, %19
  %.sroa.speculated.us = tail call i32 @llvm.umax.i32(i32 %20, i32 %19)
  store i32 %.sroa.speculated.us, ptr %12, align 4, !tbaa !44
  br label %21

21:                                               ; preds = %18, %.lr.ph56.split.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %22 = load i32, ptr %i.ai, align 8, !tbaa !186  ; 2 uses
  %23 = zext i32 %22 to i64
  %24 = icmp samesign ult i64 %indvars.iv.next, %23
  br i1 %24, label %.lr.ph56.split.us, label %.preheader50, !llvm.loop !344

.preheader50:                                     ; preds = %bb.d, %21
  %.lcssa = phi i32 [ %22, %21 ], [ %i.dq, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.lcssa, 0
  br i1 %.not68, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader50
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !62 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 3 uses
  %wide.trip.count = zext i32 %.lcssa to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bb = icmp eq i32 %.lcssa, 1
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.f

.lr.ph56.split:                                   ; preds = %.lr.ph56.split.preheader, %bb.d
  %indvar = phi i64 [ 0, %.lr.ph56.split.preheader ], [ %indvar.next, %bb.d ] ; 2 uses
  %.03453 = phi i32 [ 0, %.lr.ph56.split.preheader ], [ %i.dp, %bb.d ] ; 4 uses
  %i.bc = zext i32 %.03453 to i64                 ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.bc ; 6 uses
  store i32 0, ptr %i.bd, align 4, !tbaa !44
  %i.be = load i32, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.bc
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !44 ; 2 uses
  %i.bh = sub i32 %i.be, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.bc
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !44
  %.not38 = icmp eq i32 %i.be, %i.bg
  br i1 %.not38, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph56.split
  %i.bj = sext i32 %.03453 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2                ; 2 uses
  %scevgep96 = getelementptr i8, ptr %scevgep95, i64 %i.bk
  %scevgep94 = getelementptr i8, ptr %1, i64 %i.bk
  %i.bl = shl nuw nsw i64 %indvar, 2
  %i.bm = getelementptr i8, ptr %7, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.bm, i64 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.bc
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !44
  %i.bp = add i32 %i.bh, -1
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = add i32 %i.bo, %i.bq                    ; 2 uses
  %i.bs = sext i32 %.03453 to i64                 ; 9 uses
  %.promoted = load i32, ptr %i.bd, align 4, !tbaa !44 ; 2 uses
  %bound0 = icmp ult ptr %i.bd, %scevgep96
  %bound1 = icmp ult ptr %scevgep94, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.bt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bt, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi97 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %i.bu = mul i64 %index, 12                      ; 8 uses
  %i.bv = getelementptr i8, ptr %1, i64 %i.bu
  %next.gep98 = getelementptr i8, ptr %i.bv, i64 12
  %i.bw = getelementptr i8, ptr %1, i64 %i.bu
  %next.gep99 = getelementptr i8, ptr %i.bw, i64 24
  %i.bx = getelementptr i8, ptr %1, i64 %i.bu
  %next.gep100 = getelementptr i8, ptr %i.bx, i64 36
  %i.by = getelementptr i8, ptr %1, i64 %i.bu
  %next.gep101 = getelementptr i8, ptr %i.by, i64 48
  %i.bz = getelementptr i8, ptr %1, i64 %i.bu
  %next.gep102 = getelementptr i8, ptr %i.bz, i64 60
  %i.ca = getelementptr i8, ptr %1, i64 %i.bu
  %next.gep103 = getelementptr i8, ptr %i.ca, i64 72
  %i.cb = getelementptr i8, ptr %1, i64 %i.bu
  %next.gep104 = getelementptr i8, ptr %i.cb, i64 84
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bu
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %next.gep98, i64 %i.bs
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %next.gep99, i64 %i.bs
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %next.gep100, i64 %i.bs
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %next.gep101, i64 %i.bs
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %next.gep102, i64 %i.bs
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %next.gep103, i64 %i.bs
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %next.gep104, i64 %i.bs
  %i.cj = load i32, ptr %gep, align 4, !tbaa !44, !alias.scope !352
  %i.ck = load i32, ptr %i.cc, align 4, !tbaa !44, !alias.scope !352
  %i.cl = load i32, ptr %i.cd, align 4, !tbaa !44, !alias.scope !352
  %i.cm = load i32, ptr %i.ce, align 4, !tbaa !44, !alias.scope !352
  %i.cn = insertelement <4 x i32> poison, i32 %i.cj, i64 0
  %i.co = insertelement <4 x i32> %i.cn, i32 %i.ck, i64 1
  %i.cp = insertelement <4 x i32> %i.co, i32 %i.cl, i64 2
  %i.cq = insertelement <4 x i32> %i.cp, i32 %i.cm, i64 3
  %i.cr = load i32, ptr %i.cf, align 4, !tbaa !44, !alias.scope !352
  %i.cs = load i32, ptr %i.cg, align 4, !tbaa !44, !alias.scope !352
  %i.ct = load i32, ptr %i.ch, align 4, !tbaa !44, !alias.scope !352
  %i.cu = load i32, ptr %i.ci, align 4, !tbaa !44, !alias.scope !352
  %i.cv = insertelement <4 x i32> poison, i32 %i.cr, i64 0
  %i.cw = insertelement <4 x i32> %i.cv, i32 %i.cs, i64 1
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.ct, i64 2
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cu, i64 3
  %i.cz = icmp ult <4 x i32> %i.cq, %broadcast.splat
  %i.da = icmp ult <4 x i32> %i.cy, %broadcast.splat
  %i.db = zext <4 x i1> %i.cz to <4 x i32>
  %i.dc = zext <4 x i1> %i.da to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.db           ; 2 uses
  %i.de = add <4 x i32> %vec.phi97, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !347

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %i.dg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.dg, ptr %i.bd, align 4, !tbaa !44, !alias.scope !353, !noalias !352
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi i32 [ %.promoted, %.lr.ph ], [ %i.dg, %middle.block ]
  %.sroa.0.052.ph = phi ptr [ %1, %.lr.ph ], [ %i.ax, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph
  %i.dh = sub i32 %i.ah, %i.dn
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.dh, i32 %i.dn)
  store i32 %.sroa.speculated, ptr %i.bd, align 4, !tbaa !44
  br label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.di = phi i32 [ %i.dn, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.sroa.0.052 = phi ptr [ %i.do, %scalar.ph ], [ %.sroa.0.052.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.052, i64 %i.bs
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !44
  %i.dl = icmp ult i32 %i.dk, %i.br
  %i.dm = zext i1 %i.dl to i32
  %i.dn = add i32 %i.di, %i.dm                    ; 4 uses
  store i32 %i.dn, ptr %i.bd, align 4, !tbaa !44
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.052, i64 12 ; 2 uses
  %.not49 = icmp eq ptr %i.do, %2
  br i1 %.not49, label %._crit_edge, label %scalar.ph, !llvm.loop !349

bb.d:                                             ; preds = %.lr.ph56.split, %._crit_edge
  %i.dp = add nuw i32 %.03453, 1                  ; 2 uses
  %i.dq = load i32, ptr %i.ai, align 8, !tbaa !186 ; 2 uses
  %i.dr = icmp ult i32 %i.dp, %i.dq
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dr, label %.lr.ph56.split, label %.preheader50, !llvm.loop !344

._crit_edge61.loopexit.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.loopexit.unr-lcssa, %.lr.ph60
  %indvars.iv73.epil.init = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next74.1, %._crit_edge61.loopexit.unr-lcssa ] ; 3 uses
  %.03358.epil.init = phi i32 [ 0, %.lr.ph60 ], [ %.1.1, %._crit_edge61.loopexit.unr-lcssa ]
  %.257.epil.init = phi i32 [ 0, %.lr.ph60 ], [ %.3.1, %._crit_edge61.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod112 = trunc i32 %.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv73.epil.init
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !44
  %.not.epil = icmp eq i32 %i.dt, 0
  br i1 %.not.epil, label %._crit_edge61, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %i.du = load ptr, ptr %i.ba, align 8, !tbaa !62
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv73.epil.init
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !44
  %i.dx = icmp ult i32 %.03358.epil.init, %i.dw
  %i.dy = trunc nuw i64 %indvars.iv73.epil.init to i32
  %spec.select47.epil = select i1 %i.dx, i32 %i.dy, i32 %.257.epil.init
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %._crit_edge61.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %bb.c, %.preheader50
  %.2.lcssa = phi i32 [ 0, %.preheader50 ], [ 0, %bb.c ], [ %.3.1, %._crit_edge61.loopexit.unr-lcssa ], [ %.257.epil.init, %.epil.preheader ], [ %spec.select47.epil, %bb.e ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1896
  tail call void @_ZN5draco16DirectBitEncoder28EncodeLeastSignificantBits32Eij(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i32 noundef 4, i32 noundef %.2.lcssa)
  br label %.loopexit

bb.f:                                             ; preds = %bb.j, %.lr.ph60.new
  %indvars.iv73 = phi i64 [ 0, %.lr.ph60.new ], [ %indvars.iv.next74.1, %bb.j ] ; 5 uses
  %.03358 = phi i32 [ 0, %.lr.ph60.new ], [ %.1.1, %bb.j ] ; 3 uses
  %.257 = phi i32 [ 0, %.lr.ph60.new ], [ %.3.1, %bb.j ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.1, %bb.j ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv73
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !44
  %.not = icmp eq i32 %i.eb, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ec = load ptr, ptr %i.ba, align 8, !tbaa !62
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv73
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !44 ; 2 uses
  %i.ef = icmp ult i32 %.03358, %i.ee
  %i.eg = trunc nuw i64 %indvars.iv73 to i32
  %spec.select47 = select i1 %i.ef, i32 %i.eg, i32 %.257
  %spec.select48 = tail call i32 @llvm.umax.i32(i32 %.03358, i32 %i.ee)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3 = phi i32 [ %.257, %bb.f ], [ %spec.select47, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %.03358, %bb.f ], [ %spec.select48, %bb.g ] ; 3 uses
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next74
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !44
  %.not.1 = icmp eq i32 %i.ei, 0
  br i1 %.not.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ej = load ptr, ptr %i.ba, align 8, !tbaa !62
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next74
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !44 ; 2 uses
  %i.em = icmp ult i32 %.1, %i.el
  %i.en = trunc nuw i64 %indvars.iv.next74 to i32
  %spec.select47.1 = select i1 %i.em, i32 %i.en, i32 %.3
  %spec.select48.1 = tail call i32 @llvm.umax.i32(i32 %.1, i32 %i.el)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3.1 = phi i32 [ %.3, %bb.h ], [ %spec.select47.1, %bb.i ] ; 3 uses
  %.1.1 = phi i32 [ %.1, %bb.h ], [ %spec.select48.1, %bb.i ] ; 2 uses
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge61.loopexit.unr-lcssa, label %bb.f, !llvm.loop !350

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.loopexit, label %.epil.preheader113

.epil.preheader113:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph65
  %.epil.init = phi i32 [ %.pre, %.lr.ph65 ], [ %i.af, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv76.epil.init = phi i64 [ 1, %.lr.ph65 ], [ %indvars.iv.next77.3, %.loopexit.loopexit.unr-lcssa ]
  %.03663.epil.init = phi i32 [ 0, %.lr.ph65 ], [ %spec.select.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod117 = icmp ne i64 %xtraiter114, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader113
  %i.eo = phi i32 [ %.epil.init, %.epil.preheader113 ], [ %i.et, %bb.k ] ; 2 uses
  %indvars.iv76.epil = phi i64 [ %indvars.iv76.epil.init, %.epil.preheader113 ], [ %indvars.iv.next77.epil, %bb.k ] ; 3 uses
  %.03663.epil = phi i32 [ %.03663.epil.init, %.epil.preheader113 ], [ %spec.select.epil, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader113 ], [ %epil.iter.next, %bb.k ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv76.epil
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !44 ; 2 uses
  %i.er = icmp ugt i32 %i.eo, %i.eq
  %i.es = trunc nuw i64 %indvars.iv76.epil to i32
  %spec.select.epil = select i1 %i.er, i32 %i.es, i32 %.03663.epil ; 2 uses
  %indvars.iv.next77.epil = add nuw nsw i64 %indvars.iv76.epil, 1
  %i.et = tail call i32 @llvm.umin.i32(i32 %i.eo, i32 %i.eq)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter114
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.k, !llvm.loop !351

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.preheader, %._crit_edge61
  %.4 = phi i32 [ %.2.lcssa, %._crit_edge61 ], [ 0, %.preheader ], [ %spec.select.3, %.loopexit.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.k ]
  ret i32 %.4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !198    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !199  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !196  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !195
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #17
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i, !llvm.loop !8

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !198
  br label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !200
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #17
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EED2Ev.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 2 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.b, 3     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !200
  %i.d = icmp ugt i64 %1, -49
  br i1 %i.d, label %.noexc3.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit, !prof !90

.noexc3.i:                                        ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !198
  %i.h = sub nuw nsw i64 %.sroa.speculated, %i.e
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
          to label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_allocate_nodeEv.exit.i unwind label %bb.b

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !195
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_create_nodesEPPSD_SH_.exit, !llvm.loop !355

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #16 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !195
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #17
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i, !llvm.loop !8

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  invoke void @__cxa_rethrow() #20
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_destroy_nodesEPPSD_SH_.exit.i
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!144 = !{!"p2 _ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !93, i64 0}
!145 = !{!"p1 _ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !20, i64 0}
!146 = !{!"_ZTSSt15_Deque_iteratorIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEERSD_PSD_E", !145, i64 0, !145, i64 8, !145, i64 16, !144, i64 24}
!147 = !{!"_ZTSNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_Deque_impl_dataE", !144, i64 0, !33, i64 8, !146, i64 16, !146, i64 48}
!148 = !{!147, !145, i64 48}
!149 = !{!146, !145, i64 0}
!150 = !{!146, !145, i64 8}
!151 = !{!146, !144, i64 24}
!152 = !{!145, !145, i64 0}
!153 = !{!147, !144, i64 72}
!154 = !{!146, !145, i64 16}
!155 = !{!147, !144, i64 0}
!156 = !{!147, !144, i64 40}
!157 = !{!147, !33, i64 8}
!158 = !{!"p2 _ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !93, i64 0}
!159 = !{!"p1 _ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !20, i64 0}
!160 = !{!"_ZTSSt15_Deque_iteratorIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEERSD_PSD_E", !159, i64 0, !159, i64 8, !159, i64 16, !158, i64 24}
!161 = !{!"_ZTSNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_Deque_impl_dataE", !158, i64 0, !33, i64 8, !160, i64 16, !160, i64 48}
!162 = !{!161, !159, i64 48}
!163 = !{!160, !159, i64 0}
!164 = !{!160, !159, i64 8}
!165 = !{!160, !158, i64 24}
!166 = !{!159, !159, i64 0}
!167 = !{!161, !158, i64 72}
!168 = !{!160, !159, i64 16}
!169 = !{!161, !158, i64 0}
!170 = !{!161, !158, i64 40}
!171 = !{!161, !33, i64 8}
!172 = !{!"p2 _ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !93, i64 0}
!173 = !{!"p1 _ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !20, i64 0}
!174 = !{!"_ZTSSt15_Deque_iteratorIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEERSD_PSD_E", !173, i64 0, !173, i64 8, !173, i64 16, !172, i64 24}
!175 = !{!"_ZTSNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_Deque_impl_dataE", !172, i64 0, !33, i64 8, !174, i64 16, !174, i64 48}
!176 = !{!175, !173, i64 48}
!177 = !{!174, !173, i64 0}
!178 = !{!174, !173, i64 8}
!179 = !{!174, !172, i64 24}
!180 = !{!173, !173, i64 0}
!181 = !{!175, !172, i64 72}
!182 = !{!174, !173, i64 16}
!183 = !{!175, !172, i64 0}
!184 = !{!175, !172, i64 40}
!185 = !{!175, !33, i64 8}
!186 = !{!88, !14, i64 8}
!187 = !{!"p2 _ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !93, i64 0}
!188 = !{!"p1 _ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !20, i64 0}
!189 = !{!"_ZTSSt15_Deque_iteratorIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEERSD_PSD_E", !188, i64 0, !188, i64 8, !188, i64 16, !187, i64 24}
!190 = !{!"_ZTSNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_Deque_impl_dataE", !187, i64 0, !33, i64 8, !189, i64 16, !189, i64 48}
!191 = !{!190, !188, i64 48}
!192 = !{!189, !188, i64 0}
!193 = !{!189, !188, i64 8}
!194 = !{!189, !187, i64 24}
!195 = !{!188, !188, i64 0}
!196 = !{!190, !187, i64 72}
!197 = !{!189, !188, i64 16}
!198 = !{!190, !187, i64 0}
!199 = !{!190, !187, i64 40}
!200 = !{!190, !33, i64 8}
!201 = !{!56, !14, i64 4}
!202 = !{!66, !14, i64 4}
!203 = !{!76, !14, i64 4}
!204 = !{!78, !14, i64 4}
!205 = !{!83, !14, i64 4}
!206 = !{!85, !14, i64 4}
!207 = !{!88, !14, i64 4}
!208 = distinct !{!208, !64}
!209 = !{!45, !45, i64 0}
!210 = distinct !{!210, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv"}
!211 = distinct !{!211, !210, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv: argument 0"}
!212 = distinct !{!212, !64}
!213 = distinct !{!213, !64}
!214 = distinct !{!214, !64, !106}
!215 = distinct !{!215, !64}
!216 = distinct !{!216, !64}
!217 = distinct !{!217, !64}
!218 = distinct !{!218, !64}
!219 = !{!56, !14, i64 8}
!220 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !92, i64 0, !92, i64 8, !14, i64 16, !14, i64 20, !14, i64 24}
!221 = !{!220, !14, i64 16}
!222 = !{!220, !14, i64 24}
!223 = !{!220, !14, i64 20}
!224 = !{!97, !95, i64 64}
!225 = !{!211}
!226 = distinct !{!226, !64, !112, !113}
!227 = distinct !{!227, !64, !112, !113}
!228 = distinct !{!228, !64, !112}
!229 = distinct !{!229, !64, !112, !113}
!230 = distinct !{!230, !64, !112, !113}
!231 = distinct !{!231, !64, !112}
!232 = distinct !{!232, !64, !112, !113}
!233 = distinct !{!233, !64, !112, !113}
!234 = distinct !{!234, !64, !112}
!235 = !{!22, !21, i64 16}
!236 = !{!22, !21, i64 8}
!237 = !{!"branch_weights", i32 4, i32 28}
!238 = !{!22, !21, i64 0}
!239 = distinct !{!239, !64}
!240 = !{!97, !95, i64 16}
!241 = distinct !{!241, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv"}
!242 = distinct !{!242, !241, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv: argument 0"}
!243 = distinct !{!243, !64}
!244 = distinct !{!244, !64}
!245 = distinct !{!245, !64, !106}
!246 = distinct !{!246, !64}
!247 = distinct !{!247, !64}
!248 = distinct !{!248, !64}
!249 = distinct !{!249, !64}
!250 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !92, i64 0, !92, i64 8, !14, i64 16, !14, i64 20, !14, i64 24}
!251 = !{!250, !14, i64 16}
!252 = !{!250, !14, i64 24}
!253 = !{!250, !14, i64 20}
!254 = !{!119, !117, i64 64}
!255 = !{!242}
!256 = distinct !{!256, !64}
!257 = !{!119, !117, i64 16}
!258 = distinct !{!258, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv"}
!259 = distinct !{!259, !258, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv: argument 0"}
!260 = distinct !{!260, !64}
!261 = distinct !{!261, !64}
!262 = distinct !{!262, !64, !106}
!263 = distinct !{!263, !64}
!264 = distinct !{!264, !64}
!265 = distinct !{!265, !64}
!266 = distinct !{!266, !64}
!267 = !{!76, !14, i64 8}
!268 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !92, i64 0, !92, i64 8, !14, i64 16, !14, i64 20, !14, i64 24}
!269 = !{!268, !14, i64 16}
!270 = !{!268, !14, i64 24}
!271 = !{!268, !14, i64 20}
!272 = !{!133, !131, i64 64}
!273 = !{!259}
!274 = distinct !{!274, !64}
!275 = !{!133, !131, i64 16}
!276 = distinct !{!276, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv"}
!277 = distinct !{!277, !276, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv: argument 0"}
!278 = distinct !{!278, !64}
!279 = distinct !{!279, !64}
!280 = distinct !{!280, !64, !106}
!281 = distinct !{!281, !64}
!282 = distinct !{!282, !64}
!283 = distinct !{!283, !64}
!284 = distinct !{!284, !64}
!285 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !92, i64 0, !92, i64 8, !14, i64 16, !14, i64 20, !14, i64 24}
!286 = !{!285, !14, i64 16}
!287 = !{!285, !14, i64 24}
!288 = !{!285, !14, i64 20}
!289 = !{!147, !145, i64 64}
!290 = !{!277}
!291 = distinct !{!291, !64}
!292 = !{!147, !145, i64 16}
!293 = distinct !{!293, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv"}
!294 = distinct !{!294, !293, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv: argument 0"}
!295 = distinct !{!295, !64}
!296 = distinct !{!296, !64}
!297 = distinct !{!297, !64, !106}
!298 = distinct !{!298, !64}
!299 = distinct !{!299, !64}
!300 = distinct !{!300, !64}
!301 = distinct !{!301, !64}
!302 = !{!83, !14, i64 8}
!303 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !92, i64 0, !92, i64 8, !14, i64 16, !14, i64 20, !14, i64 24}
!304 = !{!303, !14, i64 16}
!305 = !{!303, !14, i64 24}
!306 = !{!303, !14, i64 20}
!307 = !{!161, !159, i64 64}
!308 = !{!294}
!309 = distinct !{!309, !64}
!310 = !{!161, !159, i64 16}
!311 = distinct !{!311, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv"}
!312 = distinct !{!312, !311, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv: argument 0"}
!313 = distinct !{!313, !64}
!314 = distinct !{!314, !64}
!315 = distinct !{!315, !64, !106}
!316 = distinct !{!316, !64}
!317 = distinct !{!317, !64}
!318 = distinct !{!318, !64}
!319 = distinct !{!319, !64}
!320 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !92, i64 0, !92, i64 8, !14, i64 16, !14, i64 20, !14, i64 24}
!321 = !{!320, !14, i64 16}
!322 = !{!320, !14, i64 24}
!323 = !{!320, !14, i64 20}
!324 = !{!175, !173, i64 64}
!325 = !{!312}
!326 = distinct !{!326, !64}
!327 = !{!175, !173, i64 16}
!328 = distinct !{!328, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv"}
!329 = distinct !{!329, !328, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE3endEv: argument 0"}
!330 = distinct !{!330, !64}
!331 = distinct !{!331, !64}
!332 = distinct !{!332, !64, !106}
!333 = distinct !{!333, !64}
!334 = distinct !{!334, !64}
!335 = distinct !{!335, !64}
!336 = distinct !{!336, !64}
!337 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEE", !92, i64 0, !92, i64 8, !14, i64 16, !14, i64 20, !14, i64 24}
!338 = !{!337, !14, i64 16}
!339 = !{!337, !14, i64 24}
!340 = !{!337, !14, i64 20}
!341 = !{!190, !188, i64 64}
!342 = !{!329}
!343 = distinct !{!343, !64}
!344 = distinct !{!344, !64}
!345 = distinct !{!345, !"LVerDomain"}
!346 = distinct !{!346, !345}
!347 = distinct !{!347, !64, !112, !113}
!348 = distinct !{!348, !345}
!349 = distinct !{!349, !64, !112}
!350 = distinct !{!350, !64}
!351 = distinct !{!351, !354}
!352 = !{!346}
!353 = !{!348}
!354 = !{!"llvm.loop.unroll.disable"}
!355 = distinct !{!355, !64}
!356 = !{!190, !188, i64 16}
end_hunk_1
