Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/kd_tree_attributes_encoder?download=true
inline.NumInlined: 2777
inline.NumDeleted: 1138
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodeInternalINS_12PointDVectorIjE20PointDVectorIteratorEEEvT_S6_:bb.a

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ir, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !222
  %i.iu = load ptr, ptr %i.an, align 8, !tbaa !220
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 64
  store ptr %i.iv, ptr %i.an, align 8, !tbaa !220
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushEOS7_.exit

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(60) %5)
          to label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushEOS7_.exit unwind label %bb.ae

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushEOS7_.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.loopexit.split-lp

bb.af:                                            ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushEOS7_.exit, %bb.aa
  %.not190 = icmp eq i64 %.us-phi47.sink.i.i, %.sroa.5144.0.copyload296
  br i1 %.not190, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 %.us-phi47.sink.i.i, ptr %6, align 8, !tbaa !91
  store ptr %i.bl, ptr %.sroa.4184.0..sroa_idx, align 8, !tbaa !221
  store i32 %.fr.i.i, ptr %.sroa.5185.0..sroa_idx, align 8, !tbaa !58
  store i32 %.sroa.4170.0.copyload, ptr %.sroa.6186.0..sroa_idx, align 4
  store i32 %i.cq, ptr %i.bh, align 8, !tbaa !507
  store i32 %i.ep, ptr %i.bi, align 8, !tbaa !508
  %i.ix = load i64, ptr %i.bg, align 8, !tbaa !173
  %i.iy = sub i64 %i.ix, %.us-phi47.sink.i.i
  %i.iz = trunc i64 %i.iy to i32
  store i32 %i.iz, ptr %i.bj, align 4, !tbaa !509
  %i.ja = load ptr, ptr %i.an, align 8, !tbaa !220 ; 2 uses
  %i.jb = load ptr, ptr %i.ap, align 8, !tbaa !510
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -64
  %.not.i.i.i117 = icmp eq ptr %i.ja, %i.jc
  br i1 %.not.i.i.i117, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ja, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !222
  %i.jd = load ptr, ptr %i.an, align 8, !tbaa !220
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 64
  store ptr %i.je, ptr %i.an, align 8, !tbaa !220
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushEOS7_.exit119

bb.ai:                                            ; preds = %bb.ag
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(60) %6)
          to label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushEOS7_.exit119 unwind label %bb.aj

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushEOS7_.exit119: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.loopexit.split-lp

..loopexit_crit_edge:                             ; preds = %._crit_edge
  br label %.loopexit, !llvm.loop !482

.loopexit:                                        ; preds = %.preheader, %..loopexit_crit_edge, %bb.af, %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushEOS7_.exit119, %bb.i
  %i.jg = load ptr, ptr %i.an, align 8, !tbaa !223 ; 2 uses
  %i.jh = load ptr, ptr %i.av, align 8, !tbaa !223
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %._crit_edge221, label %bb.f

._crit_edge221:                                   ; preds = %.loopexit, %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit
  %i.jj = load ptr, ptr %4, align 8, !tbaa !229   ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i120, label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge221
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !230 ; 2 uses
  %i.jn = load ptr, ptr %i.jk, align 8, !tbaa !227 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = icmp ult ptr %i.jm, %i.jo
  br i1 %i.jp, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.jr, %.lr.ph.i.i.i.i ], [ %i.jm, %bb.ak ] ; 3 uses
  %i.jq = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !226
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef 512) #20
  %i.jr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.js = icmp ult ptr %.06.i.i.i.i, %i.jn
  br i1 %i.js, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_.exit.loopexit.i.i.i, !llvm.loop !4

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !229
  br label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_.exit.i.i.i

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_.exit.loopexit.i.i.i, %bb.ak
  %i.jt = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_.exit.loopexit.i.i.i ], [ %i.jj, %bb.ak ]
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !231
  %i.jw = shl i64 %i.jv, 3
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #20
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEED2Ev.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEED2Ev.exit: ; preds = %._crit_edge221, %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit194, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.k, %bb.y, %bb.p, %bb.ae, %bb.aj, %bb.j
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.j ], [ %i.da, %bb.k ], [ %i.jf, %bb.aj ], [ %i.el, %bb.p ], [ %i.ht, %bb.y ], [ %i.iw, %bb.ae ], [ %lpad.loopexit, %.loopexit194 ], [ %lpad.loopexit195, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp196, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn82.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco18FoldedBit32EncoderINS_14RAnsBitEncoderEE11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(1848) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef %1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef %1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef %1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef %1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef %1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef %1)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 728
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef %1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef %1)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 840
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 896
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef %1)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 952
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef %1)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1008
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef %1)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1064
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef %1)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1120
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef %1)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1176
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef %1)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1232
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef %1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1344
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef %1)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1400
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef %1)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1456
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef %1)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1512
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef %1)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1568
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef %1)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1624
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1680
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef %1)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1736
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef %1)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1792
  tail call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef %1)
  ret void
}

declare void @_ZN5draco16DirectBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE16GetAndEncodeAxisINS_12PointDVectorIjE20PointDVectorIteratorEEEjT_S6_RKSt6vectorIjSaIjEESB_j(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %1, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !173    ; 6 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !173    ; 7 uses
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp ult i64 %i.c, 64
  br i1 %i.d, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !214  ; 3 uses
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %.lr.ph61, label %.loopexit

.lr.ph61:                                         ; preds = %.preheader
  %i.h = load ptr, ptr %4, align 8, !tbaa !160    ; 6 uses
  %wide.trip.count78 = zext i32 %i.f to i64
  %.pre = load i32, ptr %i.h, align 4, !tbaa !58  ; 2 uses
  %i.i = add nsw i64 %wide.trip.count78, -1       ; 2 uses
  %xtraiter106 = and i64 %i.i, 3                  ; 3 uses
  %i.j = add i32 %i.f, -2
  %i.k = icmp ult i32 %i.j, 3
  br i1 %i.k, label %.epil.preheader105, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter111 = and i64 %i.i, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph61.new
  %i.l = phi i32 [ %.pre, %.lr.ph61.new ], [ %i.af, %bb.b ] ; 2 uses
  %indvars.iv75 = phi i64 [ 1, %.lr.ph61.new ], [ %indvars.iv.next76.3, %bb.b ] ; 6 uses
  %.03659 = phi i32 [ 0, %.lr.ph61.new ], [ %spec.select.3, %bb.b ]
  %niter112 = phi i64 [ 0, %.lr.ph61.new ], [ %niter112.next.3, %bb.b ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv75
  %i.n = load i32, ptr %i.m, align 4, !tbaa !58   ; 2 uses
  %i.o = icmp ugt i32 %i.l, %i.n
  %i.p = trunc nuw i64 %indvars.iv75 to i32
  %spec.select = select i1 %i.o, i32 %i.p, i32 %.03659
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.n) ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next76
  %i.s = load i32, ptr %i.r, align 4, !tbaa !58   ; 2 uses
  %i.t = icmp ugt i32 %i.q, %i.s
  %i.u = trunc nuw i64 %indvars.iv.next76 to i32
  %spec.select.1 = select i1 %i.t, i32 %i.u, i32 %spec.select
  %indvars.iv.next76.1 = add nuw nsw i64 %indvars.iv75, 2 ; 2 uses
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.s) ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next76.1
  %i.x = load i32, ptr %i.w, align 4, !tbaa !58   ; 2 uses
  %i.y = icmp ugt i32 %i.v, %i.x
  %i.z = trunc nuw i64 %indvars.iv.next76.1 to i32
  %spec.select.2 = select i1 %i.y, i32 %i.z, i32 %spec.select.1
  %indvars.iv.next76.2 = add nuw nsw i64 %indvars.iv75, 3 ; 2 uses
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.x) ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next76.2
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !58 ; 2 uses
  %i.ad = icmp ugt i32 %i.aa, %i.ac
  %i.ae = trunc nuw i64 %indvars.iv.next76.2 to i32
  %spec.select.3 = select i1 %i.ad, i32 %i.ae, i32 %spec.select.2 ; 3 uses
  %indvars.iv.next76.3 = add nuw nsw i64 %indvars.iv75, 4 ; 2 uses
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ac) ; 2 uses
  %niter112.next.3 = add nuw i64 %niter112, 4     ; 2 uses
  %niter112.ncmp.3 = icmp eq i64 %niter112.next.3, %unroll_iter111
  br i1 %niter112.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !520

bb.c:                                             ; preds = %bb.a
  %i.ag = trunc i64 %i.c to i32                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !214
  %.not63 = icmp eq i32 %i.ai, 0
  br i1 %.not63, label %._crit_edge57, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !160 ; 3 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !160   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !160 ; 2 uses
  %i.ao = load ptr, ptr %3, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not4648 = icmp eq i64 %i.b, %i.a
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 40
  %7 = zext i32 %.sroa.8.0.copyload to i64        ; 3 uses
  %.not4648.fr = freeze i1 %.not4648
  br i1 %.not4648.fr, label %.lr.ph52.split.us, label %.lr.ph52.split.preheader

.lr.ph52.split.preheader:                         ; preds = %.lr.ph52
  %ident.check.not = icmp eq i32 %.sroa.8.0.copyload, 1
  %n.vec = and i64 %i.c, -8                       ; 3 uses
  %8 = add i64 %i.b, %n.vec
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br label %.lr.ph52.split

.lr.ph52.split.us:                                ; preds = %.lr.ph52, %18
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %18 ], [ 0, %.lr.ph52 ] ; 4 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69 ; 3 uses
  store i32 0, ptr %9, align 4, !tbaa !58
  %10 = load i32, ptr %0, align 8, !tbaa !189     ; 2 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv69
  %12 = load i32, ptr %11, align 4, !tbaa !58     ; 2 uses
  %13 = sub i32 %10, %12
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv69
  store i32 %13, ptr %14, align 4, !tbaa !58
  %.not38.us = icmp eq i32 %10, %12
  br i1 %.not38.us, label %18, label %15

15:                                               ; preds = %.lr.ph52.split.us
  %16 = load i32, ptr %9, align 4, !tbaa !58      ; 2 uses
  %17 = sub i32 %i.ag, %16
  %.sroa.speculated.us = tail call i32 @llvm.umax.i32(i32 %17, i32 %16)
  store i32 %.sroa.speculated.us, ptr %9, align 4, !tbaa !58
  br label %18

18:                                               ; preds = %15, %.lr.ph52.split.us
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %19 = load i32, ptr %i.ah, align 8, !tbaa !214  ; 2 uses
  %20 = zext i32 %19 to i64
  %21 = icmp samesign ult i64 %indvars.iv.next70, %20
  br i1 %21, label %.lr.ph52.split.us, label %.preheader47, !llvm.loop !521

.preheader47:                                     ; preds = %bb.d, %18
  %.lcssa = phi i32 [ %19, %18 ], [ %i.ct, %bb.d ] ; 4 uses
  %.not64 = icmp eq i32 %.lcssa, 0
  br i1 %.not64, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader47
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !160 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 3 uses
  %wide.trip.count = zext i32 %.lcssa to i64      ; 2 uses
  %xtraiter101 = and i64 %wide.trip.count, 1
  %i.as = icmp eq i32 %.lcssa, 1
  br i1 %i.as, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.f

.lr.ph52.split:                                   ; preds = %.lr.ph52.split.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph52.split.preheader ] ; 9 uses
  %i.at = shl nuw nsw i64 %indvars.iv, 2
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.at
  %scevgep = getelementptr i8, ptr %i.au, i64 4
  %i.av = add i64 %i.b, %indvars.iv
  %i.aw = shl i64 %i.av, 2
  %i.ax = add i64 %i.a, %indvars.iv
  %i.ay = shl i64 %i.ax, 2
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv ; 8 uses
  store i32 0, ptr %i.az, align 4, !tbaa !58
  %i.ba = load i32, ptr %0, align 8, !tbaa !189   ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !58 ; 2 uses
  %i.bd = sub i32 %i.ba, %i.bc                    ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !58
  %.not38 = icmp eq i32 %i.ba, %i.bc
  br i1 %.not38, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph52.split
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !58
  %i.bh = add i32 %i.bd, -1
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = add i32 %i.bg, %i.bi                    ; 4 uses
  %i.bk = load ptr, ptr %6, align 8, !tbaa !163, !noalias !531 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bk, i64 %indvars.iv ; 4 uses
  %.promoted = load i32, ptr %i.az, align 4, !tbaa !58 ; 3 uses
  br i1 %ident.check.not, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep91 = getelementptr i8, ptr %i.bk, i64 %i.aw
  %scevgep92 = getelementptr i8, ptr %i.bk, i64 %i.ay
  %bound0 = icmp ult ptr %i.az, %scevgep92
  %bound1 = icmp ult ptr %scevgep91, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bl, %vector.ph ], [ %i.bt, %vector.body ]
  %vec.phi93 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bu, %vector.body ]
  %i.bn = getelementptr [4 x i8], ptr %i.bm, i64 %index ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %wide.load = load <4 x i32>, ptr %i.bn, align 4, !tbaa !58, !alias.scope !532
  %wide.load94 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !58, !alias.scope !532
  %i.bp = icmp ult <4 x i32> %wide.load, %broadcast.splat
  %i.bq = icmp ult <4 x i32> %wide.load94, %broadcast.splat
  %i.br = zext <4 x i1> %i.bp to <4 x i32>
  %i.bs = zext <4 x i1> %i.bq to <4 x i32>
  %i.bt = add <4 x i32> %vec.phi, %i.br           ; 2 uses
  %i.bu = add <4 x i32> %vec.phi93, %i.bs         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !526

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bu, %i.bt
  %i.bw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.bw, ptr %i.az, align 4, !tbaa !58, !alias.scope !533, !noalias !532
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i32 [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.bw, %middle.block ] ; 2 uses
  %.sroa.041.049.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph ], [ %8, %middle.block ] ; 5 uses
  %i.bx = sub i64 %i.a, %.sroa.041.049.ph
  %.neg = add i64 %.sroa.041.049.ph, 1
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.by = mul i64 %.sroa.041.049.ph, %7
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.by
  %i.bz = load i32, ptr %gep.prol, align 4, !tbaa !58
  %i.ca = icmp ult i32 %i.bz, %i.bj
  %i.cb = zext i1 %i.ca to i32
  %i.cc = add i32 %.ph, %i.cb                     ; 3 uses
  store i32 %i.cc, ptr %i.az, align 4, !tbaa !58
  %i.cd = add i64 %.sroa.041.049.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa99.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.cc, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.cc, %scalar.ph.prol ]
  %.sroa.041.049.unr = phi i64 [ %.sroa.041.049.ph, %scalar.ph.preheader ], [ %i.cd, %scalar.ph.prol ]
  %i.ce = icmp eq i64 %i.a, %.neg
  br i1 %i.ce, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa89 = phi i32 [ %i.bw, %middle.block ], [ %.lcssa99.unr, %scalar.ph.prol.loopexit ], [ %i.cr, %scalar.ph ] ; 2 uses
  %i.cf = sub i32 %i.ag, %.lcssa89
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.cf, i32 %.lcssa89)
  store i32 %.sroa.speculated, ptr %i.az, align 4, !tbaa !58
  br label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.cg = phi i32 [ %i.cr, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %.sroa.041.049 = phi i64 [ %i.cs, %scalar.ph ], [ %.sroa.041.049.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ch = mul i64 %.sroa.041.049, %7
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ch
  %i.ci = load i32, ptr %gep, align 4, !tbaa !58
  %i.cj = icmp ult i32 %i.ci, %i.bj
  %i.ck = zext i1 %i.cj to i32
  %i.cl = add i32 %i.cg, %i.ck                    ; 2 uses
  store i32 %i.cl, ptr %i.az, align 4, !tbaa !58
  %i.cm = add i64 %.sroa.041.049, 1
  %i.cn = mul i64 %i.cm, %7
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cn
  %i.co = load i32, ptr %gep.1, align 4, !tbaa !58
  %i.cp = icmp ult i32 %i.co, %i.bj
  %i.cq = zext i1 %i.cp to i32
  %i.cr = add i32 %i.cl, %i.cq                    ; 3 uses
  store i32 %i.cr, ptr %i.az, align 4, !tbaa !58
  %i.cs = add i64 %.sroa.041.049, 2               ; 2 uses
  %.not46.1 = icmp eq i64 %i.cs, %i.a
  br i1 %.not46.1, label %._crit_edge, label %scalar.ph, !llvm.loop !528

bb.d:                                             ; preds = %.lr.ph52.split, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = load i32, ptr %i.ah, align 8, !tbaa !214 ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next, %i.cu
  br i1 %i.cv, label %.lr.ph52.split, label %.preheader47, !llvm.loop !521

._crit_edge57.loopexit.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %._crit_edge57, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge57.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv72.epil.init = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next73.1, %._crit_edge57.loopexit.unr-lcssa ] ; 3 uses
  %.03354.epil.init = phi i32 [ 0, %.lr.ph56 ], [ %.1.1, %._crit_edge57.loopexit.unr-lcssa ]
  %.253.epil.init = phi i32 [ 0, %.lr.ph56 ], [ %.3.1, %._crit_edge57.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod104 = trunc i32 %.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv72.epil.init
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !58
  %.not.epil = icmp eq i32 %i.cx, 0
  br i1 %.not.epil, label %._crit_edge57, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %i.cy = load ptr, ptr %i.ar, align 8, !tbaa !160
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv72.epil.init
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !58
  %i.db = icmp ult i32 %.03354.epil.init, %i.da
  %i.dc = trunc nuw i64 %indvars.iv72.epil.init to i32
  %spec.select44.epil = select i1 %i.db, i32 %i.dc, i32 %.253.epil.init
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %bb.c, %.preheader47
  %.2.lcssa = phi i32 [ 0, %.preheader47 ], [ 0, %bb.c ], [ %.3.1, %._crit_edge57.loopexit.unr-lcssa ], [ %.253.epil.init, %.epil.preheader ], [ %spec.select44.epil, %bb.e ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1896
  tail call void @_ZN5draco16DirectBitEncoder28EncodeLeastSignificantBits32Eij(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i32 noundef 4, i32 noundef %.2.lcssa)
  br label %.loopexit

bb.f:                                             ; preds = %bb.j, %.lr.ph56.new
  %indvars.iv72 = phi i64 [ 0, %.lr.ph56.new ], [ %indvars.iv.next73.1, %bb.j ] ; 5 uses
  %.03354 = phi i32 [ 0, %.lr.ph56.new ], [ %.1.1, %bb.j ] ; 3 uses
  %.253 = phi i32 [ 0, %.lr.ph56.new ], [ %.3.1, %bb.j ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.j ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv72
  %i.df = load i32, ptr %i.de, align 4, !tbaa !58
  %.not = icmp eq i32 %i.df, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = load ptr, ptr %i.ar, align 8, !tbaa !160
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv72
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !58 ; 2 uses
  %i.dj = icmp ult i32 %.03354, %i.di
  %i.dk = trunc nuw i64 %indvars.iv72 to i32
  %spec.select44 = select i1 %i.dj, i32 %i.dk, i32 %.253
  %spec.select45 = tail call i32 @llvm.umax.i32(i32 %.03354, i32 %i.di)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3 = phi i32 [ %.253, %bb.f ], [ %spec.select44, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %.03354, %bb.f ], [ %spec.select45, %bb.g ] ; 3 uses
  %indvars.iv.next73 = or disjoint i64 %indvars.iv72, 1 ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next73
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !58
  %.not.1 = icmp eq i32 %i.dm, 0
  br i1 %.not.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.ar, align 8, !tbaa !160
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next73
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !58 ; 2 uses
  %i.dq = icmp ult i32 %.1, %i.dp
  %i.dr = trunc nuw i64 %indvars.iv.next73 to i32
  %spec.select44.1 = select i1 %i.dq, i32 %i.dr, i32 %.3
  %spec.select45.1 = tail call i32 @llvm.umax.i32(i32 %.1, i32 %i.dp)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3.1 = phi i32 [ %.3, %bb.h ], [ %spec.select44.1, %bb.i ] ; 3 uses
  %.1.1 = phi i32 [ %.1, %bb.h ], [ %spec.select45.1, %bb.i ] ; 2 uses
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge57.loopexit.unr-lcssa, label %bb.f, !llvm.loop !529

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod108.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %.loopexit, label %.epil.preheader105

.epil.preheader105:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph61
  %.epil.init = phi i32 [ %.pre, %.lr.ph61 ], [ %i.af, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv75.epil.init = phi i64 [ 1, %.lr.ph61 ], [ %indvars.iv.next76.3, %.loopexit.loopexit.unr-lcssa ]
  %.03659.epil.init = phi i32 [ 0, %.lr.ph61 ], [ %spec.select.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter106, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader105
  %i.ds = phi i32 [ %.epil.init, %.epil.preheader105 ], [ %i.dx, %bb.k ] ; 2 uses
  %indvars.iv75.epil = phi i64 [ %indvars.iv75.epil.init, %.epil.preheader105 ], [ %indvars.iv.next76.epil, %bb.k ] ; 3 uses
  %.03659.epil = phi i32 [ %.03659.epil.init, %.epil.preheader105 ], [ %spec.select.epil, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader105 ], [ %epil.iter.next, %bb.k ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv75.epil
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !58 ; 2 uses
  %i.dv = icmp ugt i32 %i.ds, %i.du
  %i.dw = trunc nuw i64 %indvars.iv75.epil to i32
  %spec.select.epil = select i1 %i.dv, i32 %i.dw, i32 %.03659.epil ; 2 uses
  %indvars.iv.next76.epil = add nuw nsw i64 %indvars.iv75.epil, 1
  %i.dx = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 %i.du)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter106
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.k, !llvm.loop !530

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.preheader, %._crit_edge57
  %.4 = phi i32 [ %.2.lcssa, %._crit_edge57 ], [ 0, %.preheader ], [ %spec.select.3, %.loopexit.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.k ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco16DirectBitEncoder28EncodeLeastSignificantBits32Eij(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !232  ; 3 uses
  %i.c = sub i32 32, %i.b                         ; 2 uses
  %i.d = sub nsw i32 32, %1                       ; 2 uses
  %i.e = shl i32 %2, %i.d                         ; 2 uses
  %.not = icmp sgt i32 %1, %i.c
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %i.e, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !233
  %i.i = or i32 %i.h, %i.f                        ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !233
  %i.j = add i32 %i.b, %1                         ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !232
  %i.k = icmp eq i32 %i.j, 32
  br i1 %i.k, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !161
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.i, ptr %i.m, align 4, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %i.p, ptr %i.l, align 8, !tbaa !162
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !160    ; 4 uses
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %i.z = select i1 %i.x, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #21 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !58
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !58
  %i.ae = icmp sgt i64 %i.t, 0
  br i1 %i.ae, label %bb.g, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.t) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !160
  store ptr %i.af, ptr %i.l, align 8, !tbaa !162
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !161
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.d, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  store i32 0, ptr %i.g, align 8, !tbaa !233
  store i32 0, ptr %i.a, align 4, !tbaa !232
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.ah = lshr exact i32 %i.e, %i.d               ; 2 uses
  %i.ai = sub nsw i32 %1, %i.c                    ; 2 uses
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !232
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !233
  %i.am = or i32 %i.al, %i.aj                     ; 2 uses
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !233
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!321 = distinct !{!321, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!322 = distinct !{!322, !321, !"_ZSt19__relocate_object_aISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!323 = distinct !{!323, !321, !"_ZSt19__relocate_object_aISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!324 = distinct !{!324, i1 false, !"LVerDomain"}
!325 = distinct !{!325, !324}
!326 = distinct !{!326, !324}
!327 = distinct !{!327, !76, !108, !109}
!328 = distinct !{!328, !76, !108}
!329 = distinct !{!329, !76, !108, !109}
!330 = distinct !{!330, !76, !109, !108}
!331 = distinct !{!331, !76, !108, !109}
!332 = distinct !{!332, !76}
!333 = distinct !{!333, !76, !109, !108}
!334 = distinct !{!334, !76}
!335 = distinct !{!335, !76}
!336 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_20PointIndex_tag_type_EEE", !21, i64 0}
!337 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !336, i64 0, !336, i64 8, !336, i64 16}
!338 = !{!337, !336, i64 0}
!339 = !{!337, !336, i64 16}
!340 = !{!322}
!341 = !{!323}
!342 = !{!323, !325}
!343 = !{!322, !326}
!344 = !{!325}
!345 = !{!129, !16, i64 96}
!346 = distinct !{!346, !76}
!347 = distinct !{!347, !76}
!348 = distinct !{!348, i1 true, !"_ZNK5draco14PointAttribute12mapped_indexENS_9IndexTypeIjNS_20PointIndex_tag_type_EEE"}
!349 = distinct !{!349, !348, !"_ZNK5draco14PointAttribute12mapped_indexENS_9IndexTypeIjNS_20PointIndex_tag_type_EEE: argument 0"}
!350 = distinct !{!350, !76}
!351 = distinct !{!351, i1 true, !"_ZNK5draco14PointAttribute12mapped_indexENS_9IndexTypeIjNS_20PointIndex_tag_type_EEE"}
!352 = distinct !{!352, !351, !"_ZNK5draco14PointAttribute12mapped_indexENS_9IndexTypeIjNS_20PointIndex_tag_type_EEE: argument 0"}
!353 = distinct !{!353, !76, !108, !109}
!354 = distinct !{!354, !68}
!355 = distinct !{!355, !76}
!356 = distinct !{!356, !76, !108}
!357 = distinct !{!357, i1 true, !"_ZNK5draco14PointAttribute12mapped_indexENS_9IndexTypeIjNS_20PointIndex_tag_type_EEE"}
!358 = distinct !{!358, !357, !"_ZNK5draco14PointAttribute12mapped_indexENS_9IndexTypeIjNS_20PointIndex_tag_type_EEE: argument 0"}
!359 = distinct !{!359, !76}
!360 = distinct !{!360, !76}
!361 = distinct !{!361, !76}
!362 = distinct !{!362, i1 true, !"_ZN5draco12PointDVectorIjE5beginEv"}
!363 = distinct !{!363, !362, !"_ZN5draco12PointDVectorIjE5beginEv: argument 0"}
!364 = distinct !{!364, i1 true, !"_ZN5draco12PointDVectorIjE3endEv"}
!365 = distinct !{!365, !364, !"_ZN5draco12PointDVectorIjE3endEv: argument 0"}
!366 = distinct !{!366, i1 true, !"_ZN5draco12PointDVectorIjE5beginEv"}
!367 = distinct !{!367, !366, !"_ZN5draco12PointDVectorIjE5beginEv: argument 0"}
!368 = distinct !{!368, i1 true, !"_ZN5draco12PointDVectorIjE3endEv"}
!369 = distinct !{!369, !368, !"_ZN5draco12PointDVectorIjE3endEv: argument 0"}
!370 = distinct !{!370, i1 true, !"_ZN5draco12PointDVectorIjE5beginEv"}
!371 = distinct !{!371, !370, !"_ZN5draco12PointDVectorIjE5beginEv: argument 0"}
!372 = distinct !{!372, i1 true, !"_ZN5draco12PointDVectorIjE3endEv"}
!373 = distinct !{!373, !372, !"_ZN5draco12PointDVectorIjE3endEv: argument 0"}
!374 = distinct !{!374, i1 true, !"_ZN5draco12PointDVectorIjE5beginEv"}
!375 = distinct !{!375, !374, !"_ZN5draco12PointDVectorIjE5beginEv: argument 0"}
!376 = distinct !{!376, i1 true, !"_ZN5draco12PointDVectorIjE3endEv"}
!377 = distinct !{!377, !376, !"_ZN5draco12PointDVectorIjE3endEv: argument 0"}
!378 = distinct !{!378, i1 true, !"_ZN5draco12PointDVectorIjE5beginEv"}
!379 = distinct !{!379, !378, !"_ZN5draco12PointDVectorIjE5beginEv: argument 0"}
!380 = distinct !{!380, i1 true, !"_ZN5draco12PointDVectorIjE3endEv"}
!381 = distinct !{!381, !380, !"_ZN5draco12PointDVectorIjE3endEv: argument 0"}
!382 = distinct !{!382, i1 true, !"_ZN5draco12PointDVectorIjE5beginEv"}
!383 = distinct !{!383, !382, !"_ZN5draco12PointDVectorIjE5beginEv: argument 0"}
!384 = distinct !{!384, i1 true, !"_ZN5draco12PointDVectorIjE3endEv"}
!385 = distinct !{!385, !384, !"_ZN5draco12PointDVectorIjE3endEv: argument 0"}
!386 = distinct !{!386, i1 true, !"_ZN5draco12PointDVectorIjE5beginEv"}
!387 = distinct !{!387, !386, !"_ZN5draco12PointDVectorIjE5beginEv: argument 0"}
!388 = distinct !{!388, i1 true, !"_ZN5draco12PointDVectorIjE3endEv"}
!389 = distinct !{!389, !388, !"_ZN5draco12PointDVectorIjE3endEv: argument 0"}
!390 = !{!158, !16, i64 0}
!391 = !{!158, !16, i64 8}
!392 = !{!129, !64, i64 100}
!393 = !{!349}
!394 = !{!352}
!395 = !{!358}
!396 = !{!363}
!397 = !{!172, !171, i64 8}
!398 = !{!172, !16, i64 16}
!399 = !{!365}
!400 = !{!367}
!401 = !{!369}
!402 = !{!371}
!403 = !{!373}
!404 = !{!375}
!405 = !{!377}
!406 = !{!379}
!407 = !{!381}
!408 = !{!383}
!409 = !{!385}
!410 = !{!387}
!411 = !{!389}
!412 = !{!188, !16, i64 4}
!413 = !{!193, !16, i64 4}
!414 = !{!196, !16, i64 4}
!415 = !{!198, !16, i64 4}
!416 = !{!201, !16, i64 4}
!417 = !{!203, !16, i64 4}
!418 = !{!206, !16, i64 4}
!419 = distinct !{!419, !76}
!420 = distinct !{null, null, null, null}
!421 = distinct !{!421, !76}
!422 = distinct !{!422, !76}
!423 = distinct !{!423, i1 true, !"_ZSt19__relocate_object_aIN5draco30AttributeQuantizationTransformES1_SaIS1_EEvPT_PT0_RT1_"}
!424 = distinct !{!424, !423, !"_ZSt19__relocate_object_aIN5draco30AttributeQuantizationTransformES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!425 = distinct !{!425, !423, !"_ZSt19__relocate_object_aIN5draco30AttributeQuantizationTransformES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!426 = distinct !{null, null, null, null}
!427 = distinct !{!427, !76}
!428 = distinct !{!428, i1 true, !"_ZSt19__relocate_object_aIN5draco30AttributeQuantizationTransformES1_SaIS1_EEvPT_PT0_RT1_"}
!429 = distinct !{!429, !428, !"_ZSt19__relocate_object_aIN5draco30AttributeQuantizationTransformES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!430 = distinct !{!430, !428, !"_ZSt19__relocate_object_aIN5draco30AttributeQuantizationTransformES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!431 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!432 = !{!424}
!433 = !{!425}
!434 = !{!424, !425}
!435 = !{!429}
!436 = !{!430}
!437 = !{!429, !430}
!438 = !{!122, !122, i64 0}
!439 = !{!169, !88, i64 16}
!440 = !{!117, !116, i64 0}
!441 = !{!117, !116, i64 16}
!442 = !{!61, !61, i64 0}
!443 = distinct !{!443, !76}
!444 = distinct !{!444, !76}
!445 = distinct !{!445, !76}
!446 = distinct !{!446, !76}
!447 = distinct !{!447, !76}
!448 = distinct !{!448, !76}
!449 = distinct !{!449, !76}
!450 = distinct !{!450, !76}
!451 = distinct !{!451, !76}
!452 = distinct !{!452, !76}
!453 = distinct !{!453, !76}
!454 = distinct !{!454, !76, !108, !109}
!455 = distinct !{!455, !76, !108, !109}
!456 = distinct !{!456, !76, !108}
!457 = distinct !{!457, !76, !108, !109}
!458 = distinct !{!458, !76, !108, !109}
!459 = distinct !{!459, !76, !108}
!460 = distinct !{!460, !76, !108, !109}
!461 = distinct !{!461, !76, !108, !109}
!462 = distinct !{!462, !76, !108}
!463 = !{!140, !88, i64 16}
!464 = !{!140, !88, i64 8}
!465 = !{!"branch_weights", i32 4, i32 28}
!466 = !{!140, !88, i64 0}
!467 = distinct !{!467, !76}
!468 = distinct !{!468, !76}
!469 = distinct !{!469, !76}
!470 = distinct !{!470, !76}
!471 = distinct !{!471, !76}
!472 = distinct !{!472, !76}
!473 = distinct !{!473, !76}
!474 = distinct !{!474, !76}
!475 = distinct !{!475, !76}
!476 = distinct !{!476, !76}
!477 = distinct !{!477, !76}
!478 = distinct !{!478, !76}
!479 = !{!22, !22, i64 0}
!480 = distinct !{!480, i1 true, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv"}
!481 = distinct !{!481, !480, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv: argument 0"}
!482 = distinct !{!482, !76}
!483 = distinct !{!483, !76}
!484 = distinct !{!484, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi"}
!485 = distinct !{!485, !484, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi: argument 0"}
!486 = distinct !{!486, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!487 = distinct !{!487, !486, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!488 = distinct !{!488, !76}
!489 = distinct !{!489, !76}
!490 = distinct !{!490, i1 true, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi6EE8SplitterEET_S7_S7_T0_"}
!491 = distinct !{!491, !490, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi6EE8SplitterEET_S7_S7_T0_: argument 0"}
!492 = distinct !{!492, i1 true, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi6EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag"}
!493 = distinct !{!493, !492, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi6EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag: argument 0"}
!494 = distinct !{!494, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!495 = distinct !{!495, !494, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!496 = distinct !{!496, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!497 = distinct !{!497, !496, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!498 = distinct !{!498, !76}
!499 = distinct !{!499, !76}
!500 = distinct !{!500, !76}
!501 = distinct !{!501, i1 false, !"LVerDomain"}
!502 = distinct !{!502, !501}
!503 = distinct !{!503, !501}
!504 = distinct !{!504, !76, !108, !109}
!505 = distinct !{!505, !76, !108}
!506 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS_12PointDVectorIjE20PointDVectorIteratorEEE", !172, i64 0, !172, i64 24, !16, i64 48, !16, i64 52, !16, i64 56}
!507 = !{!506, !16, i64 48}
!508 = !{!506, !16, i64 56}
!509 = !{!506, !16, i64 52}
!510 = !{!219, !217, i64 64}
!511 = !{!481}
!512 = !{!485}
!513 = !{!487}
!514 = !{!495, !493, !491}
!515 = !{!493, !491}
!516 = !{!497, !493, !491}
!517 = !{!502}
!518 = !{!493, !491, !503}
!519 = !{!503}
!520 = distinct !{!520, !76}
!521 = distinct !{!521, !76}
!522 = distinct !{!522, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!523 = distinct !{!523, !522, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!524 = distinct !{!524, i1 false, !"LVerDomain"}
!525 = distinct !{!525, !524}
!526 = distinct !{!526, !76, !108, !109}
!527 = distinct !{!527, !524}
!528 = distinct !{!528, !76, !108}
!529 = distinct !{!529, !76}
!530 = distinct !{!530, !68}
!531 = !{!523}
!532 = !{!525}
!533 = !{!527}
!534 = distinct !{!534, !76}
!535 = !{!219, !217, i64 16}
!536 = distinct !{!536, i1 true, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv"}
!537 = distinct !{!537, !536, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv: argument 0"}
!538 = distinct !{!538, !76}
!539 = distinct !{!539, !76}
!540 = distinct !{!540, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi"}
!541 = distinct !{!541, !540, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi: argument 0"}
!542 = distinct !{!542, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!543 = distinct !{!543, !542, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!544 = distinct !{!544, !76}
!545 = distinct !{!545, !76}
!546 = distinct !{!546, i1 true, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi5EE8SplitterEET_S7_S7_T0_"}
!547 = distinct !{!547, !546, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi5EE8SplitterEET_S7_S7_T0_: argument 0"}
!548 = distinct !{!548, i1 true, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi5EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag"}
!549 = distinct !{!549, !548, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi5EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag: argument 0"}
!550 = distinct !{!550, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!551 = distinct !{!551, !550, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!552 = distinct !{!552, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!553 = distinct !{!553, !552, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!554 = distinct !{!554, !76}
!555 = distinct !{!555, !76}
!556 = distinct !{!556, !76}
!557 = distinct !{!557, i1 false, !"LVerDomain"}
!558 = distinct !{!558, !557}
!559 = distinct !{!559, !557}
!560 = distinct !{!560, !76, !108, !109}
!561 = distinct !{!561, !76, !108}
!562 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS_12PointDVectorIjE20PointDVectorIteratorEEE", !172, i64 0, !172, i64 24, !16, i64 48, !16, i64 52, !16, i64 56}
!563 = !{!562, !16, i64 48}
!564 = !{!562, !16, i64 56}
!565 = !{!562, !16, i64 52}
!566 = !{!237, !235, i64 64}
!567 = !{!537}
!568 = !{!541}
!569 = !{!543}
!570 = !{!551, !549, !547}
!571 = !{!549, !547}
!572 = !{!553, !549, !547}
!573 = !{!558}
!574 = !{!549, !547, !559}
!575 = !{!559}
!576 = distinct !{!576, !76}
!577 = !{!237, !235, i64 16}
!578 = distinct !{!578, i1 true, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv"}
!579 = distinct !{!579, !578, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv: argument 0"}
!580 = distinct !{!580, !76}
!581 = distinct !{!581, !76}
!582 = distinct !{!582, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi"}
!583 = distinct !{!583, !582, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi: argument 0"}
!584 = distinct !{!584, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!585 = distinct !{!585, !584, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!586 = distinct !{!586, !76}
!587 = distinct !{!587, !76}
!588 = distinct !{!588, i1 true, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi4EE8SplitterEET_S7_S7_T0_"}
!589 = distinct !{!589, !588, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi4EE8SplitterEET_S7_S7_T0_: argument 0"}
!590 = distinct !{!590, i1 true, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi4EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag"}
!591 = distinct !{!591, !590, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi4EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag: argument 0"}
!592 = distinct !{!592, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!593 = distinct !{!593, !592, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!594 = distinct !{!594, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!595 = distinct !{!595, !594, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!596 = distinct !{!596, !76}
!597 = distinct !{!597, !76}
!598 = distinct !{!598, !76}
!599 = distinct !{!599, i1 false, !"LVerDomain"}
!600 = distinct !{!600, !599}
!601 = distinct !{!601, !599}
!602 = distinct !{!602, !76, !108, !109}
!603 = distinct !{!603, !76, !108}
!604 = !{!196, !16, i64 8}
!605 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS_12PointDVectorIjE20PointDVectorIteratorEEE", !172, i64 0, !172, i64 24, !16, i64 48, !16, i64 52, !16, i64 56}
!606 = !{!605, !16, i64 48}
!607 = !{!605, !16, i64 56}
!608 = !{!605, !16, i64 52}
!609 = !{!251, !249, i64 64}
!610 = !{!579}
!611 = !{!583}
!612 = !{!585}
!613 = !{!593, !591, !589}
!614 = !{!591, !589}
!615 = !{!595, !591, !589}
!616 = !{!600}
!617 = !{!591, !589, !601}
!618 = !{!601}
!619 = distinct !{!619, !76}
!620 = !{!251, !249, i64 16}
!621 = distinct !{!621, i1 true, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv"}
!622 = distinct !{!622, !621, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv: argument 0"}
!623 = distinct !{!623, !76}
!624 = distinct !{!624, !76}
!625 = distinct !{!625, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi"}
!626 = distinct !{!626, !625, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi: argument 0"}
!627 = distinct !{!627, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!628 = distinct !{!628, !627, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!629 = distinct !{!629, !76, !273}
!630 = distinct !{!630, !76}
!631 = distinct !{!631, i1 true, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi3EE8SplitterEET_S7_S7_T0_"}
!632 = distinct !{!632, !631, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi3EE8SplitterEET_S7_S7_T0_: argument 0"}
!633 = distinct !{!633, i1 true, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi3EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag"}
!634 = distinct !{!634, !633, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi3EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag: argument 0"}
!635 = distinct !{!635, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!636 = distinct !{!636, !635, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!637 = distinct !{!637, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!638 = distinct !{!638, !637, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!639 = distinct !{!639, !76}
!640 = distinct !{!640, !76}
!641 = distinct !{!641, !76}
!642 = distinct !{!642, i1 false, !"LVerDomain"}
!643 = distinct !{!643, !642}
!644 = distinct !{!644, !642}
!645 = distinct !{!645, !76, !108, !109}
!646 = distinct !{!646, !76, !108}
!647 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS_12PointDVectorIjE20PointDVectorIteratorEEE", !172, i64 0, !172, i64 24, !16, i64 48, !16, i64 52, !16, i64 56}
!648 = !{!647, !16, i64 48}
!649 = !{!647, !16, i64 56}
!650 = !{!647, !16, i64 52}
!651 = !{!265, !263, i64 64}
!652 = !{!622}
!653 = !{!626}
!654 = !{!628}
!655 = !{!636, !634, !632}
!656 = !{!634, !632}
!657 = !{!638, !634, !632}
!658 = !{!643}
!659 = !{!634, !632, !644}
!660 = !{!644}
!661 = distinct !{!661, !76}
!662 = !{!265, !263, i64 16}
!663 = distinct !{!663, i1 true, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv"}
!664 = distinct !{!664, !663, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv: argument 0"}
!665 = distinct !{!665, !76}
!666 = distinct !{!666, !76}
!667 = distinct !{!667, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi"}
!668 = distinct !{!668, !667, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi: argument 0"}
!669 = distinct !{!669, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!670 = distinct !{!670, !669, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!671 = distinct !{!671, !76, !273}
!672 = distinct !{!672, !76}
!673 = distinct !{!673, i1 true, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi2EE8SplitterEET_S7_S7_T0_"}
!674 = distinct !{!674, !673, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi2EE8SplitterEET_S7_S7_T0_: argument 0"}
!675 = distinct !{!675, i1 true, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi2EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag"}
!676 = distinct !{!676, !675, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi2EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag: argument 0"}
!677 = distinct !{!677, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!678 = distinct !{!678, !677, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!679 = distinct !{!679, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!680 = distinct !{!680, !679, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!681 = distinct !{!681, !76}
!682 = distinct !{!682, !76}
!683 = distinct !{!683, !76}
!684 = distinct !{!684, i1 false, !"LVerDomain"}
!685 = distinct !{!685, !684}
!686 = distinct !{!686, !684}
!687 = distinct !{!687, !76, !108, !109}
!688 = distinct !{!688, !76, !108}
!689 = !{!201, !16, i64 8}
!690 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS_12PointDVectorIjE20PointDVectorIteratorEEE", !172, i64 0, !172, i64 24, !16, i64 48, !16, i64 52, !16, i64 56}
!691 = !{!690, !16, i64 48}
!692 = !{!690, !16, i64 56}
!693 = !{!690, !16, i64 52}
!694 = !{!280, !278, i64 64}
!695 = !{!664}
!696 = !{!668}
!697 = !{!670}
!698 = !{!678, !676, !674}
!699 = !{!676, !674}
!700 = !{!680, !676, !674}
!701 = !{!685}
!702 = !{!676, !674, !686}
!703 = !{!686}
!704 = distinct !{!704, !76}
!705 = !{!280, !278, i64 16}
!706 = distinct !{!706, i1 true, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv"}
!707 = distinct !{!707, !706, !"_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE3endEv: argument 0"}
!708 = distinct !{!708, !76}
!709 = distinct !{!709, !76}
!710 = distinct !{!710, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi"}
!711 = distinct !{!711, !710, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratorplERKi: argument 0"}
!712 = distinct !{!712, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!713 = distinct !{!713, !712, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!714 = distinct !{!714, !76, !273}
!715 = distinct !{!715, !76}
!716 = distinct !{!716, i1 true, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi1EE8SplitterEET_S7_S7_T0_"}
!717 = distinct !{!717, !716, !"_ZSt9partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi1EE8SplitterEET_S7_S7_T0_: argument 0"}
!718 = distinct !{!718, i1 true, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi1EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag"}
!719 = distinct !{!719, !718, !"_ZSt11__partitionIN5draco12PointDVectorIjE20PointDVectorIteratorENS0_33DynamicIntegerPointsKdTreeEncoderILi1EE8SplitterEET_S7_S7_T0_St26bidirectional_iterator_tag: argument 0"}
!720 = distinct !{!720, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!721 = distinct !{!721, !720, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!722 = distinct !{!722, i1 true, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv"}
!723 = distinct !{!723, !722, !"_ZNK5draco12PointDVectorIjE20PointDVectorIteratordeEv: argument 0"}
!724 = distinct !{!724, !76}
!725 = distinct !{!725, !76}
!726 = distinct !{!726, !76}
!727 = distinct !{!727, i1 false, !"LVerDomain"}
!728 = distinct !{!728, !727}
!729 = distinct !{!729, !727}
!730 = distinct !{!730, !76, !108, !109}
!731 = distinct !{!731, !76, !108}
!732 = !{!"_ZTSN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS_12PointDVectorIjE20PointDVectorIteratorEEE", !172, i64 0, !172, i64 24, !16, i64 48, !16, i64 52, !16, i64 56}
!733 = !{!732, !16, i64 48}
end_hunk_1
