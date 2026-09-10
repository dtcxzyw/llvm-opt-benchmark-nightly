Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv2_int8_layer?download=true
inline.NumInlined: 1181
inline.NumDeleted: 552
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv3dnnL17getWpackShapeInt8ERKNS_8MatShapeEii:bb.a

bb.l:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.ab = add i32 %3, -1                          ; 5 uses
  %i.ac = add i32 %i.ab, %i.s
  %i.ad = sdiv i32 %i.ac, %3
  %i.ae = icmp sgt i32 %2, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.af = add i32 %i.ab, %i.m                     ; 3 uses
  %xtraiter = and i32 %2, 1
  %i.ag = icmp eq i32 %2, 1
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %2, 2147483646
  br label %bb.n

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.03660.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %.059.epil.init = phi i32 [ 0, %.lr.ph ], [ %.sroa.speculated.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod68 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.ah = mul nsw i32 %.03660.epil.init, %i.m
  %i.ai = and i32 %i.ah, %i.ab
  %i.aj = add i32 %i.af, %i.ai
  %i.ak = sdiv i32 %i.aj, %3
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %.059.epil.init, i32 %i.ak)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.l
  %.0.lcssa = phi i32 [ 0, %bb.l ], [ %.sroa.speculated.1, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.al = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #29
          to label %bb.o unwind label %bb.m       ; 7 uses

bb.m:                                             ; preds = %._crit_edge
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %.03660 = phi i32 [ 0, %.lr.ph.new ], [ %i.aw, %bb.n ] ; 3 uses
  %.059 = phi i32 [ 0, %.lr.ph.new ], [ %.sroa.speculated.1, %bb.n ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.an = mul nsw i32 %.03660, %i.m
  %i.ao = and i32 %i.an, %i.ab
  %i.ap = add i32 %i.af, %i.ao
  %i.aq = sdiv i32 %i.ap, %3
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.059, i32 %i.aq)
  %i.ar = or disjoint i32 %.03660, 1
  %i.as = mul nsw i32 %i.ar, %i.m
  %i.at = and i32 %i.as, %i.ab
  %i.au = add i32 %i.af, %i.at
  %i.av = sdiv i32 %i.au, %3
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.av) ; 3 uses
  %i.aw = add nuw nsw i32 %.03660, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !371

bb.o:                                             ; preds = %._crit_edge
  %i.ax = mul nsw i32 %3, %3
  store ptr %i.al, ptr %8, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 20 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !100
  store i32 %2, ptr %i.al, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %i.ad, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.q, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 %.0.lcssa, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 %i.ax, ptr %.sroa.8.0..sroa_idx, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !240
  invoke void @_ZN2cv8MatShapeC1ERKSt6vectorIiSaIiEENS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0, i32 noundef 0)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %8, align 8, !tbaa !44    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !100
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void

bb.r:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %8, align 8, !tbaa !44    ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i51, label %.body, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !100
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #28
  br label %.body

.body:                                            ; preds = %bb.m, %bb.s, %bb.r
  %.pn41 = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.bg, %bb.s ], [ %i.bg, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn41, %.body ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ]
  resume { ptr, i32 } %.pn41.pn.pn
}

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare void @_ZNK2cv8MatShape8toLayoutENS_10DataLayoutEi(ptr dead_on_unwind writable sret(%"struct.cv::MatShape") align 4, ptr noundef nonnull align 4 dereferenceable(52), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNKS0_3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS0_3MatERS7_iEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @_ZZNK2cv3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS_3MatERS2_iENKUlRKNS_5RangeEE_clES8_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNKS0_3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS0_3MatERS7_iEUlS3_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS1_3MatERS4_iEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZNK2cv3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS_3MatERS2_iEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !124
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS1_3MatERS4_iEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !57
  store ptr %i.a, ptr %0, align 8, !tbaa !57
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS1_3MatERS4_iEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !57
  %i.c = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !tbaa.struct !372
  store ptr %i.c, ptr %0, align 8, !tbaa !57
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS1_3MatERS4_iEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS1_3MatERS4_iEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 72) #28
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS1_3MatERS4_iEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS1_3MatERS4_iEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZNK2cv3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS_3MatERS2_iENKUlRKNS_5RangeEE_clES8_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !46     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge51

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !379, !nonnull !37, !align !120
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18   ; 3 uses
  %2 = icmp sgt i32 %i.n, 0
  br i1 %2, label %.lr.ph.split.preheader, label %._crit_edge51

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !380
  %.pre55 = load i32, ptr %.pre, align 4, !tbaa !18 ; 3 uses
  br label %.lr.ph.split

._crit_edge51:                                    ; preds = %._crit_edge46, %.lr.ph, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge46
  %i.o = phi i32 [ %i.ct, %._crit_edge46 ], [ %i.n, %.lr.ph.split.preheader ] ; 3 uses
  %i.p = phi i32 [ %i.cu, %._crit_edge46 ], [ %.pre55, %.lr.ph.split.preheader ] ; 3 uses
  %i.q = phi i32 [ %i.cv, %._crit_edge46 ], [ %.pre55, %.lr.ph.split.preheader ] ; 4 uses
  %i.r = phi i32 [ %i.cw, %._crit_edge46 ], [ %i.n, %.lr.ph.split.preheader ] ; 5 uses
  %i.s = phi i32 [ %i.cx, %._crit_edge46 ], [ %.pre55, %.lr.ph.split.preheader ] ; 4 uses
  %.03749 = phi i32 [ %i.cy, %._crit_edge46 ], [ %i.a, %.lr.ph.split.preheader ] ; 3 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !381, !nonnull !37, !align !120
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18   ; 3 uses
  %i.v = sdiv i32 %.03749, %i.u                   ; 2 uses
  %i.w = srem i32 %.03749, %i.u                   ; 2 uses
  %i.x = mul i32 %i.s, %i.w                       ; 2 uses
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !382, !nonnull !37, !align !120
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18   ; 2 uses
  %i.aa = sub i32 %i.z, %i.x
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.s) ; 7 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !383, !nonnull !37, !align !121
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.ad = mul nsw i32 %i.z, %i.v
  %i.ae = add nsw i32 %i.ad, %i.x
  %i.af = mul nsw i32 %i.r, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !384, !nonnull !37, !align !121
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ak = mul nsw i32 %i.v, %i.u
  %i.al = add nsw i32 %i.ak, %i.w
  %i.am = sext i32 %i.al to i64
  %i.an = sext i32 %i.r to i64
  %i.ao = sext i32 %i.s to i64
  %i.ap = mul nsw i64 %i.ao, %i.am
  %i.aq = mul i64 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aq ; 3 uses
  %i.as = icmp sgt i32 %i.r, 0
  br i1 %i.as, label %.preheader41.lr.ph, label %._crit_edge46

.preheader41.lr.ph:                               ; preds = %.lr.ph.split
  %i.at = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.at, label %.preheader41.us, label %.preheader41.lr.ph.split

.preheader41.us:                                  ; preds = %.preheader41.lr.ph, %._crit_edge.us
  %.03645.us = phi i32 [ %i.ci, %._crit_edge.us ], [ 0, %.preheader41.lr.ph ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader41.us, %bb.e
  %.03542.us = phi i32 [ 0, %.preheader41.us ], [ %i.bx, %bb.e ] ; 3 uses
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !379, !nonnull !37, !align !120
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18
  %i.aw = mul nsw i32 %i.av, %.03542.us
  %i.ax = add nsw i32 %i.aw, %.03645.us
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !122
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !385, !nonnull !37, !align !120
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !122
  %i.bd = fmul float %i.ba, %i.bc
  %i.be = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bf = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.be)
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !386, !nonnull !37, !align !120
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !18
  %i.bi = add nsw i32 %i.bh, %i.bf                ; 2 uses
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !387, !nonnull !37
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !22, !range !36, !noundef !37
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !380, !nonnull !37, !align !120
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !18
  %i.bo = mul nsw i32 %i.bn, %.03645.us
  %i.bp = add nsw i32 %i.bo, %.03542.us
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.ar, i64 %i.bq
  br i1 %i.bl, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bs = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 -128)
  %i.bt = tail call i32 @llvm.smin.i32(i32 %i.bs, i32 127)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 255)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink80 = phi i32 [ %i.bv, %bb.d ], [ %i.bt, %bb.c ]
  %i.bw = trunc i32 %.sink80 to i8
  store i8 %i.bw, ptr %i.br, align 1, !tbaa !43
  %i.bx = add nuw nsw i32 %.03542.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %.sroa.speculated
  br i1 %exitcond.not, label %..preheader_crit_edge.us, label %bb.b, !llvm.loop !373

.lr.ph44.us:                                      ; preds = %..preheader_crit_edge.us, %.lr.ph44.us
  %i.by = phi i32 [ %i.cf, %.lr.ph44.us ], [ %i.cn, %..preheader_crit_edge.us ]
  %.043.us = phi i32 [ %i.cd, %.lr.ph44.us ], [ %.sroa.speculated, %..preheader_crit_edge.us ] ; 2 uses
  %i.bz = mul nsw i32 %i.by, %.03645.us
  %i.ca = add nsw i32 %i.bz, %.043.us
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.ar, i64 %i.cb
  store i8 0, ptr %i.cc, align 1, !tbaa !43
  %i.cd = add nuw nsw i32 %.043.us, 1             ; 2 uses
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !380, !nonnull !37, !align !120
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !18 ; 3 uses
  %i.cg = icmp slt i32 %i.cd, %i.cf
  br i1 %i.cg, label %.lr.ph44.us, label %._crit_edge.us, !llvm.loop !374

._crit_edge.us:                                   ; preds = %.lr.ph44.us, %..preheader_crit_edge.us
  %i.ch = phi i32 [ %i.cn, %..preheader_crit_edge.us ], [ %i.cf, %.lr.ph44.us ] ; 3 uses
  %i.ci = add nuw nsw i32 %.03645.us, 1           ; 2 uses
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !379, !nonnull !37, !align !120
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !18 ; 3 uses
  %i.cl = icmp slt i32 %i.ci, %i.ck
  br i1 %i.cl, label %.preheader41.us, label %._crit_edge46, !llvm.loop !375

..preheader_crit_edge.us:                         ; preds = %bb.e
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !380, !nonnull !37, !align !120
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !18 ; 3 uses
  %i.co = icmp slt i32 %.sroa.speculated, %i.cn
  br i1 %i.co, label %.lr.ph44.us, label %._crit_edge.us

.preheader41.lr.ph.split:                         ; preds = %.preheader41.lr.ph
  %i.cp = icmp slt i32 %.sroa.speculated, %i.q
  br i1 %i.cp, label %.preheader41, label %._crit_edge46

.preheader41:                                     ; preds = %.preheader41.lr.ph.split, %._crit_edge
  %i.cq = phi i32 [ %i.db, %._crit_edge ], [ %i.o, %.preheader41.lr.ph.split ]
  %i.cr = phi i32 [ %i.dc, %._crit_edge ], [ %i.p, %.preheader41.lr.ph.split ] ; 3 uses
  %.03645 = phi i32 [ %i.dd, %._crit_edge ], [ 0, %.preheader41.lr.ph.split ] ; 2 uses
  %i.cs = icmp slt i32 %.sroa.speculated, %i.cr
  br i1 %i.cs, label %.lr.ph44, label %._crit_edge

._crit_edge46:                                    ; preds = %._crit_edge, %._crit_edge.us, %.preheader41.lr.ph.split, %.lr.ph.split
  %i.ct = phi i32 [ %i.o, %.lr.ph.split ], [ %i.ck, %._crit_edge.us ], [ %i.o, %.preheader41.lr.ph.split ], [ %i.db, %._crit_edge ]
  %i.cu = phi i32 [ %i.p, %.lr.ph.split ], [ %i.ch, %._crit_edge.us ], [ %i.p, %.preheader41.lr.ph.split ], [ %i.dc, %._crit_edge ]
  %i.cv = phi i32 [ %i.q, %.lr.ph.split ], [ %i.ch, %._crit_edge.us ], [ %i.q, %.preheader41.lr.ph.split ], [ %i.dc, %._crit_edge ]
  %i.cw = phi i32 [ %i.r, %.lr.ph.split ], [ %i.ck, %._crit_edge.us ], [ %i.r, %.preheader41.lr.ph.split ], [ %i.db, %._crit_edge ]
  %i.cx = phi i32 [ %i.s, %.lr.ph.split ], [ %i.ch, %._crit_edge.us ], [ %i.q, %.preheader41.lr.ph.split ], [ %i.dc, %._crit_edge ]
  %i.cy = add nsw i32 %.03749, 1                  ; 2 uses
  %i.cz = load i32, ptr %i.b, align 4, !tbaa !47
  %i.da = icmp slt i32 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph.split, label %._crit_edge51, !llvm.loop !376

._crit_edge.loopexit:                             ; preds = %.lr.ph44
  %.pre56.a = load ptr, ptr %i.h, align 8, !tbaa !379
  %.pre57 = load i32, ptr %.pre56.a, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader41
  %i.db = phi i32 [ %.pre57, %._crit_edge.loopexit ], [ %i.cq, %.preheader41 ] ; 4 uses
  %i.dc = phi i32 [ %i.dm, %._crit_edge.loopexit ], [ %i.cr, %.preheader41 ] ; 4 uses
  %i.dd = add nuw nsw i32 %.03645, 1              ; 2 uses
  %i.de = icmp slt i32 %i.dd, %i.db
  br i1 %i.de, label %.preheader41, label %._crit_edge46, !llvm.loop !377

.lr.ph44:                                         ; preds = %.preheader41, %.lr.ph44
  %i.df = phi i32 [ %i.dm, %.lr.ph44 ], [ %i.cr, %.preheader41 ]
  %.043 = phi i32 [ %i.dk, %.lr.ph44 ], [ %.sroa.speculated, %.preheader41 ] ; 2 uses
  %i.dg = mul nsw i32 %i.df, %.03645
  %i.dh = add nsw i32 %i.dg, %.043
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.ar, i64 %i.di
  store i8 0, ptr %i.dj, align 1, !tbaa !43
  %i.dk = add nsw i32 %.043, 1                    ; 2 uses
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !380, !nonnull !37, !align !120
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !18 ; 3 uses
  %i.dn = icmp slt i32 %i.dk, %i.dm
  br i1 %i.dn, label %.lr.ph44, label %._crit_edge.loopexit, !llvm.loop !374
}

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv3Mat6createERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(52), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat7setZeroEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL21repackConvWeightsInt8ERKNS0_3MatERS6_iiE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !57    ; 7 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !394, !nonnull !37, !align !120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZN2cv8MatShapeixEm.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.5, i32 noundef 97) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %8, align 8, !tbaa !42     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !43
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

common.resume.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58.i.i.i ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64.i.i.i ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %common.resume.i.i.i

_ZN2cv8MatShapeixEm.exit.i.i.i:                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !395, !nonnull !37, !align !120
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !396, !nonnull !37, !align !120
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = sdiv i32 %i.n, %i.q                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !397, !nonnull !37, !align !120 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 2
  br i1 %i.v, label %_ZN2cv8MatShapeixEm.exit60.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.5, i32 noundef 97) #27
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %6, align 8, !tbaa !42     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57.i.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !43
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %common.resume.i.i.i

_ZN2cv8MatShapeixEm.exit60.i.i.i:                 ; preds = %_ZN2cv8MatShapeixEm.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18
  %.fr82.i.i.i = freeze i32 %i.ad                 ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.u, 3
  br i1 %.not.i.i.i, label %bb.h, label %_ZN2cv8MatShapeixEm.exit66.i.i.i

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit60.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.5, i32 noundef 97) #27
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.i.i.i: ; preds = %bb.j
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i64.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume.i.i.i

_ZN2cv8MatShapeixEm.exit66.i.i.i:                 ; preds = %_ZN2cv8MatShapeixEm.exit60.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !398, !nonnull !37, !align !120
  %i.am = load i32, ptr %i.al, align 4, !tbaa !18 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !399, !nonnull !37, !align !121
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !225
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !400, !nonnull !37, !align !121
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !225
  %i.av = load i32, ptr %1, align 4, !tbaa !46    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.ay = icmp slt i32 %i.av, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL21repackConvWeightsInt8ERKNS0_3MatERS2_iiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.i.i.i:                                     ; preds = %_ZN2cv8MatShapeixEm.exit66.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !18 ; 2 uses
  %i.bb = add nsw i32 %i.am, -1                   ; 3 uses
  %i.bc = icmp sgt i32 %i.k, 0
  %i.bd = sext i32 %.fr82.i.i.i to i64            ; 2 uses
  %i.be = sext i32 %i.ba to i64
  %i.bf = mul nsw i64 %i.be, %i.bd
  %i.bg = sext i32 %i.am to i64                   ; 2 uses
  %i.bh = icmp sgt i32 %.fr82.i.i.i, 0
  %or.cond.i.i.i = and i1 %i.bc, %i.bh
  br i1 %or.cond.i.i.i, label %.lr.ph77.us.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL21repackConvWeightsInt8ERKNS0_3MatERS2_iiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph77.us.preheader.i.i.i:                      ; preds = %.lr.ph.i.i.i
  %factor.op.mul.i.i.i = mul i32 %i.am, %i.am
  %factor.op.mul74.reass.i.i.i = mul i32 %factor.op.mul.i.i.i, %i.ba
  %i.bi = sext i32 %factor.op.mul74.reass.i.i.i to i64 ; 5 uses
  %i.bj = sext i32 %i.av to i64
  %i.bk = zext nneg i32 %i.k to i64               ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr82.i.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.bl = icmp ult i32 %.fr82.i.i.i, 4
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph77.us.i.i.i

.lr.ph77.us.i.i.i:                                ; preds = %._crit_edge78.split.us.us.i.i.i, %.lr.ph77.us.preheader.i.i.i
  %indvars.iv90.i.i.i = phi i64 [ %i.bj, %.lr.ph77.us.preheader.i.i.i ], [ %indvars.iv.next91.i.i.i, %._crit_edge78.split.us.us.i.i.i ] ; 3 uses
  %i.bm = trunc nsw i64 %indvars.iv90.i.i.i to i32 ; 2 uses
  %i.bn = sdiv i32 %i.bm, %i.r                    ; 3 uses
  %i.bo = mul nsw i32 %i.bn, %i.r                 ; 0 uses
  %.recomposed = srem i32 %i.bm, %i.r             ; 2 uses
  %i.bp = sdiv i32 %.recomposed, %i.am
  %i.bq = and i32 %.recomposed, %i.bb
  %i.br = mul nsw i32 %i.bn, %i.k
  %i.bs = and i32 %i.br, %i.bb
  %i.bt = mul nsw i64 %indvars.iv90.i.i.i, %i.bk
  %i.bu = sext i32 %i.bn to i64
  %i.bv = sext i32 %i.bp to i64
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.mul.v4i32
!176 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !175, i64 0, !175, i64 8, !175, i64 16}
!177 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !176, i64 0}
!178 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !177, i64 0}
!179 = !{!"_ZTSSt6vectorIlSaIlEE", !178, i64 0}
!180 = !{!"_ZTSN2cv3dnn14dnn5_v2026060511ModelFormatE", !9, i64 0}
!181 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !48, i64 0}
!182 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!183 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !182, i64 0}
!184 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !89, i64 0, !40, i64 8}
!185 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !181, i64 0, !40, i64 8, !183, i64 16, !40, i64 24, !184, i64 32, !182, i64 48}
!186 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_lEEE", !185, i64 0}
!187 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!188 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !187, i64 0, !187, i64 8, !187, i64 16}
!189 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !188, i64 0}
!190 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !189, i64 0}
!191 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !190, i64 0}
!192 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606057ArgDataE", !13, i64 0}
!193 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606057ArgDataESaIS3_EE17_Vector_impl_dataE", !192, i64 0, !192, i64 8, !192, i64 16}
!194 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606057ArgDataESaIS3_EE12_Vector_implE", !193, i64 0}
!195 = !{!"_ZTSSt12_Vector_baseIN2cv3dnn14dnn5_v202606057ArgDataESaIS3_EE", !194, i64 0}
!196 = !{!"_ZTSSt6vectorIN2cv3dnn14dnn5_v202606057ArgDataESaIS3_EE", !195, i64 0}
!197 = !{!"p1 _ZTSN2cv3PtrINS_3dnn14dnn5_v202606055GraphEEE", !13, i64 0}
!198 = !{!"_ZTSNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055GraphEEESaIS5_EE17_Vector_impl_dataE", !197, i64 0, !197, i64 8, !197, i64 16}
!199 = !{!"_ZTSNSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055GraphEEESaIS5_EE12_Vector_implE", !198, i64 0}
!200 = !{!"_ZTSSt12_Vector_baseIN2cv3PtrINS0_3dnn14dnn5_v202606055GraphEEESaIS5_EE", !199, i64 0}
!201 = !{!"_ZTSSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055GraphEEESaIS5_EE", !200, i64 0}
!202 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606056KCacheEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !154, i64 0, !97, i64 8}
!203 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606056KCacheEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !202, i64 0}
!204 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE", !203, i64 0}
!205 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606056VCacheEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !154, i64 0, !97, i64 8}
!206 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606056VCacheEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !205, i64 0}
!207 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056VCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE", !206, i64 0}
!208 = !{!"_ZTSN2cv3dnn11FastGemmOptE", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !21, i64 4}
!209 = !{!"p1 _ZTSSt4pairIiiE", !13, i64 0}
!210 = !{!"_ZTSNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataE", !209, i64 0, !209, i64 8, !209, i64 16}
!211 = !{!"_ZTSNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implE", !210, i64 0}
!212 = !{!"_ZTSSt12_Vector_baseISt4pairIiiESaIS1_EE", !211, i64 0}
!213 = !{!"_ZTSSt6vectorISt4pairIiiESaIS1_EE", !212, i64 0}
!214 = !{!"_ZTSN2cv3dnn14dnn5_v2026060514KVCacheManagerE", !135, i64 0, !204, i64 8, !207, i64 56, !208, i64 104, !21, i64 109, !213, i64 112, !21, i64 136}
!215 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606055GraphE", !13, i64 0}
!216 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v202606055GraphELN9__gnu_cxx12_Lock_policyE2EE", !215, i64 0, !74, i64 8}
!217 = !{!"_ZTSSt10shared_ptrIN2cv3dnn14dnn5_v202606055GraphEE", !216, i64 0}
!218 = !{!"_ZTSN2cv3PtrINS_3dnn14dnn5_v202606055GraphEEE", !217, i64 0}
!219 = !{!"_ZTSN2cv3dnn14dnn5_v2026060511TracingModeE", !9, i64 0}
!220 = !{!"_ZTSN2cv3dnn14dnn5_v2026060513ProfilingModeE", !9, i64 0}
!221 = !{!"p1 _ZTSSo", !13, i64 0}
!222 = !{!"_ZTSN2cv3dnn14dnn5_v202606053Net4ImplE", !134, i64 8, !138, i64 24, !142, i64 40, !147, i64 56, !152, i64 80, !157, i64 128, !157, i64 176, !169, i64 224, !10, i64 368, !10, i64 372, !21, i64 376, !174, i64 384, !10, i64 432, !21, i64 436, !21, i64 437, !21, i64 438, !21, i64 439, !21, i64 440, !21, i64 441, !179, i64 448, !41, i64 472, !180, i64 504, !23, i64 508, !186, i64 512, !186, i64 568, !186, i64 624, !40, i64 680, !191, i64 688, !196, i64 712, !82, i64 736, !28, i64 760, !82, i64 784, !82, i64 808, !201, i64 832, !214, i64 856, !218, i64 1000, !10, i64 1016, !10, i64 1020, !10, i64 1024, !21, i64 1028, !21, i64 1029, !21, i64 1030, !21, i64 1031, !219, i64 1032, !220, i64 1036, !179, i64 1040, !221, i64 1064, !10, i64 1072}
!223 = !{!222, !10, i64 1024}
!224 = !{!24, !23, i64 4}
!225 = !{!110, !19, i64 24}
!226 = !{!"llvm.loop.isvectorized", i32 1}
!227 = !{!"llvm.loop.unroll.runtime.disable"}
!228 = !{!"_ZTSN2cv5Size_IiEE", !10, i64 0, !10, i64 4}
!229 = !{!"_ZTSN2cv11_InputArrayE", !10, i64 0, !13, i64 8, !228, i64 16}
!230 = !{!229, !13, i64 8}
!231 = !{!79, !78, i64 8}
!232 = !{!"p1 _ZTSN2cv4UMatE", !13, i64 0}
!233 = !{!"_ZTSNSt12_Vector_baseIN2cv4UMatESaIS1_EE17_Vector_impl_dataE", !232, i64 0, !232, i64 8, !232, i64 16}
!234 = !{!233, !232, i64 8}
!235 = !{!233, !232, i64 0}
!236 = !{!229, !10, i64 0}
!237 = !{!"_ZTSNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!238 = !{!237, !62, i64 8}
!239 = !{!237, !62, i64 0}
!240 = !{!25, !14, i64 8}
!241 = !{!"_ZTSNSt12_Vector_baseIN2cv10DataLayoutESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!242 = !{!241, !13, i64 8}
!243 = !{!241, !13, i64 0}
!244 = !{!23, !23, i64 0}
!245 = !{!241, !13, i64 16}
!246 = !{!"_ZTSN2cv5ParamE", !9, i64 0}
!247 = !{!"_ZTSN2cv3dnn14dnn5_v202606059DictValueE", !246, i64 0, !9, i64 8}
!248 = !{!247, !246, i64 0}
!249 = !{!"_ZTSN2cv10AutoBufferIlLm1EEE", !175, i64 0, !40, i64 8, !9, i64 16}
!250 = !{!249, !175, i64 0}
!251 = !{!"p1 double", !13, i64 0}
!252 = !{!"_ZTSN2cv10AutoBufferIdLm1EEE", !251, i64 0, !40, i64 8, !9, i64 16}
!253 = !{!252, !251, i64 0}
!254 = !{!"double", !9, i64 0}
!255 = !{!254, !254, i64 0}
!256 = !{!"_ZTSN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE", !187, i64 0, !40, i64 8, !9, i64 16}
!257 = !{!256, !187, i64 0}
!258 = !{!79, !78, i64 16}
!259 = !{!237, !62, i64 16}
!260 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!261 = !{!"p1 _ZTSN2cv3dnn18Conv2Int8LayerImplE", !13, i64 0}
!262 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv3dnn18Conv2Int8LayerImplELN9__gnu_cxx12_Lock_policyE2EE", !128, i64 0, !261, i64 16}
!263 = !{!262, !261, i64 16}
!264 = !{!34, !10, i64 4}
!265 = !{!34, !23, i64 76}
!266 = !{!34, !23, i64 128}
!267 = distinct !{!267, !98}
!268 = distinct !{!268, !"_ZNK2cv3dnn14dnn5_v202606054Dict9getVectorIiEESt6vectorIT_SaIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!269 = distinct !{!269, !268, !"_ZNK2cv3dnn14dnn5_v202606054Dict9getVectorIiEESt6vectorIT_SaIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!270 = distinct !{!270, !"_ZNK2cv3dnn14dnn5_v202606054Dict9getVectorIiEESt6vectorIT_SaIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!271 = distinct !{!271, !270, !"_ZNK2cv3dnn14dnn5_v202606054Dict9getVectorIiEESt6vectorIT_SaIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!272 = distinct !{!272, !"_ZNK2cv3dnn14dnn5_v202606054Dict9getVectorIiEESt6vectorIT_SaIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!273 = distinct !{!273, !272, !"_ZNK2cv3dnn14dnn5_v202606054Dict9getVectorIiEESt6vectorIT_SaIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!274 = !{!97, !95, i64 8}
!275 = !{!95, !95, i64 0}
!276 = !{!269}
!277 = !{!271}
!278 = !{!273}
!279 = !{!"_ZTSN2cv3dnn14dnn5_v2026060515Conv2Int8ParamsE", !41, i64 0, !28, i64 32, !28, i64 56, !28, i64 80, !10, i64 104, !90, i64 108, !21, i64 112, !89, i64 116, !10, i64 120, !89, i64 124, !10, i64 128, !21, i64 132, !21, i64 133, !21, i64 134, !110, i64 136, !110, i64 344, !110, i64 552}
!280 = !{!279, !21, i64 112}
!281 = !{!279, !89, i64 116}
!282 = !{!279, !10, i64 120}
!283 = !{!279, !89, i64 124}
!284 = !{!279, !10, i64 128}
!285 = !{!279, !21, i64 132}
!286 = !{!279, !21, i64 133}
!287 = !{!279, !21, i64 134}
!288 = distinct !{!288, !98}
!289 = distinct !{!289, !98}
!290 = distinct !{!290, !98}
!291 = distinct !{!291, !98}
!292 = distinct !{!292, !98}
!293 = !{!"_ZTSZN2cv3dnn12cpu_baselineL22convInt8BlockDepthwiseEPKvS3_PvRKNS0_14dnn5_v202606059ConvStateES3_PKiPKfiiPKabE3$_0", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !49, i64 104, !14, i64 112, !49, i64 120, !49, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !49, i64 232, !14, i64 240, !51, i64 248, !51, i64 256, !53, i64 264, !14, i64 272, !55, i64 280, !14, i64 288, !49, i64 296}
!294 = !{!293, !14, i64 8}
!295 = !{!293, !14, i64 16}
!296 = !{!293, !14, i64 24}
!297 = !{!293, !14, i64 32}
!298 = !{!293, !14, i64 40}
!299 = !{!293, !14, i64 64}
!300 = !{!293, !14, i64 56}
!301 = !{!293, !14, i64 48}
!302 = !{!293, !14, i64 0}
!303 = !{!293, !14, i64 72}
!304 = !{!293, !14, i64 80}
!305 = !{!293, !14, i64 96}
!306 = !{!293, !49, i64 104}
!307 = !{!293, !14, i64 112}
!308 = !{!293, !49, i64 120}
!309 = !{!293, !49, i64 128}
!310 = !{!293, !14, i64 88}
!311 = !{!293, !14, i64 136}
!312 = !{!293, !14, i64 144}
!313 = !{!293, !14, i64 152}
!314 = !{!293, !14, i64 160}
!315 = !{!293, !14, i64 168}
!316 = !{!293, !14, i64 176}
!317 = !{!293, !14, i64 184}
!318 = !{!293, !14, i64 192}
!319 = !{!293, !14, i64 200}
!320 = !{!293, !14, i64 208}
!321 = !{!293, !14, i64 216}
!322 = !{!293, !14, i64 224}
!323 = !{!293, !49, i64 232}
!324 = !{!293, !14, i64 240}
!325 = !{!293, !51, i64 248}
!326 = !{!293, !51, i64 256}
!327 = !{!293, !53, i64 264}
!328 = !{!293, !14, i64 272}
!329 = !{!293, !55, i64 280}
!330 = !{!293, !14, i64 288}
!331 = !{!293, !49, i64 296}
!332 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 8, !15, i64 32, i64 8, !15, i64 40, i64 8, !15, i64 48, i64 8, !15, i64 56, i64 8, !15, i64 64, i64 8, !15, i64 72, i64 8, !15, i64 80, i64 8, !15, i64 88, i64 8, !15, i64 96, i64 8, !15, i64 104, i64 8, !50, i64 112, i64 8, !15, i64 120, i64 8, !50, i64 128, i64 8, !50, i64 136, i64 8, !15, i64 144, i64 8, !15, i64 152, i64 8, !15, i64 160, i64 8, !15, i64 168, i64 8, !15, i64 176, i64 8, !15, i64 184, i64 8, !15, i64 192, i64 8, !15, i64 200, i64 8, !15, i64 208, i64 8, !15, i64 216, i64 8, !15, i64 224, i64 8, !15, i64 232, i64 8, !50, i64 240, i64 8, !15, i64 248, i64 8, !52, i64 256, i64 8, !52, i64 264, i64 8, !54, i64 272, i64 8, !15, i64 280, i64 8, !56, i64 288, i64 8, !15, i64 296, i64 8, !50}
!333 = distinct !{null}
!334 = distinct !{!334, !"LVerDomain"}
!335 = distinct !{!335, !334}
!336 = distinct !{!336, !334}
!337 = distinct !{!337, !334}
!338 = distinct !{!338, !334}
!339 = distinct !{!339, !334}
!340 = distinct !{!340, !98, !226, !227}
!341 = distinct !{!341, !98, !226}
!342 = !{!110, !10, i64 0}
!343 = !{!335}
!344 = !{!336}
!345 = !{!337}
!346 = !{!338}
!347 = !{!339, !336, !337, !335}
!348 = !{!339}
!349 = !{!336, !337, !335}
!350 = !{!115, !21, i64 1824}
!351 = !{!115, !19, i64 288}
!352 = distinct !{!352, !"_ZNK2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEE11dynamicCastINS2_19ActivationLayerInt8EEENS0_IT_EEv"}
!353 = distinct !{!353, !352, !"_ZNK2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEE11dynamicCastINS2_19ActivationLayerInt8EEENS0_IT_EEv: argument 0"}
!354 = distinct !{!354, !"_ZSt20dynamic_pointer_castIN2cv3dnn14dnn5_v2026060519ActivationLayerInt8ENS2_15ActivationLayerEESt10shared_ptrIT_ERKS5_IT0_E"}
!355 = distinct !{!355, !354, !"_ZSt20dynamic_pointer_castIN2cv3dnn14dnn5_v2026060519ActivationLayerInt8ENS2_15ActivationLayerEESt10shared_ptrIT_ERKS5_IT0_E: argument 0"}
!356 = distinct !{null, null, null, null, null}
!357 = !{!353}
!358 = !{!"p1 _ZTSN2cv3dnn14dnn5_v2026060515ActivationLayerE", !13, i64 0}
!359 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EE", !358, i64 0, !74, i64 8}
!360 = !{!359, !358, i64 0}
!361 = !{!355, !353}
!362 = !{!112, !111, i64 0}
!363 = distinct !{!363, !98, !226, !227}
!364 = distinct !{!364, !98, !227, !226}
!365 = distinct !{null}
!366 = distinct !{!366, !98}
!367 = distinct !{null}
!368 = distinct !{null}
!369 = distinct !{!369, !98, !226, !227}
!370 = distinct !{!370, !98, !227, !226}
!371 = distinct !{!371, !98}
!372 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 8, !56, i64 32, i64 8, !15, i64 40, i64 8, !50, i64 48, i64 8, !17, i64 56, i64 8, !15, i64 64, i64 8, !54}
!373 = distinct !{!373, !98}
!374 = distinct !{!374, !98}
!375 = distinct !{!375, !98}
!376 = distinct !{!376, !98, !388}
!377 = distinct !{!377, !98, !388}
!378 = !{!"_ZTSZNK2cv3dnn18Conv2Int8LayerImpl23quantizeInterleaveBlockERKNS_3MatERS2_iEUlRKNS_5RangeEE_", !14, i64 0, !14, i64 8, !14, i64 16, !55, i64 24, !14, i64 32, !49, i64 40, !16, i64 48, !14, i64 56, !53, i64 64}
!379 = !{!378, !14, i64 32}
!380 = !{!378, !14, i64 8}
!381 = !{!378, !14, i64 0}
!382 = !{!378, !14, i64 16}
!383 = !{!378, !55, i64 24}
!384 = !{!378, !49, i64 40}
!385 = !{!378, !16, i64 48}
!386 = !{!378, !14, i64 56}
!387 = !{!378, !53, i64 64}
!388 = !{!"llvm.loop.unswitch.partial.disable"}
!389 = distinct !{!389, !98}
!390 = distinct !{!390, !401}
!391 = distinct !{!391, !98}
!392 = distinct !{!392, !98}
!393 = !{!"_ZTSZN2cv3dnnL21repackConvWeightsInt8ERKNS_3MatERS1_iiE3$_0", !62, i64 0, !14, i64 8, !14, i64 16, !62, i64 24, !14, i64 32, !78, i64 40, !78, i64 48}
!394 = !{!393, !62, i64 0}
!395 = !{!393, !14, i64 8}
!396 = !{!393, !14, i64 16}
!397 = !{!393, !62, i64 24}
!398 = !{!393, !14, i64 32}
!399 = !{!393, !78, i64 40}
!400 = !{!393, !78, i64 48}
!401 = !{!"llvm.loop.unroll.disable"}
!402 = !{i64 0, i64 8, !63, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 8, !63, i64 32, i64 8, !15, i64 40, i64 8, !118, i64 48, i64 8, !118}
!403 = distinct !{!403, !98}
!404 = !{!"_ZTSZN2cv3dnnL20repackWeightsForVNNIERKNS_3MatEiiiS3_RS1_S4_E3$_0", !49, i64 0, !14, i64 8, !49, i64 16}
!405 = !{!404, !49, i64 0}
!406 = !{!404, !14, i64 8}
!407 = !{!404, !49, i64 16}
!408 = !{i64 0, i64 8, !50, i64 8, i64 8, !15, i64 16, i64 8, !50}
!409 = distinct !{!409, !98}
!410 = distinct !{!410, !98}
!411 = distinct !{!411, !98}
!412 = !{!"_ZTSZN2cv3dnnL20repackWeightsForVNNIERKNS_3MatEiiiS3_RS1_S4_E3$_1", !14, i64 0, !14, i64 8, !49, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !51, i64 48, !51, i64 56}
!413 = !{!412, !14, i64 0}
!414 = !{!412, !14, i64 8}
!415 = !{!412, !49, i64 16}
!416 = !{!412, !14, i64 24}
!417 = !{!412, !14, i64 32}
!418 = !{!412, !14, i64 40}
!419 = !{!412, !51, i64 56}
!420 = !{!412, !51, i64 48}
!421 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !50, i64 24, i64 8, !15, i64 32, i64 8, !15, i64 40, i64 8, !15, i64 48, i64 8, !52, i64 56, i64 8, !52}
!422 = distinct !{!422, !98}
!423 = distinct !{!423, !98}
!424 = distinct !{!424, !98}
!425 = distinct !{!425, !98}
!426 = !{!233, !232, i64 16}
!427 = distinct !{null, null}
!428 = distinct !{!428, !98}
!429 = distinct !{!429, !98, !226, !227}
!430 = distinct !{!430, !98, !227, !226}
!431 = distinct !{!431, !98, !226, !227}
!432 = distinct !{!432, !98, !227, !226}
!433 = distinct !{!433, !98, !226, !227}
!434 = distinct !{!434, !98, !227, !226}
!435 = distinct !{!435, !98, !226, !227}
!436 = distinct !{!436, !98, !227, !226}
!437 = distinct !{!437, !98}
!438 = distinct !{!438, !98}
!439 = distinct !{!439, !98}
!440 = distinct !{!440, !98}
!441 = distinct !{!441, !98}
!442 = distinct !{!442, !98}
!443 = !{!"_ZTSZN2cv3dnn12cpu_baseline13convInt8BlockEPKvS3_PvRKNS0_14dnn5_v202606059ConvStateES3_S3_PKiSA_PKfiiPKabE3$_0", !53, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !62, i64 40, !14, i64 48, !64, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !49, i64 120, !14, i64 128, !49, i64 136, !14, i64 144, !49, i64 152, !14, i64 160, !49, i64 168, !51, i64 176, !55, i64 184, !51, i64 192, !14, i64 200, !49, i64 208}
!444 = !{!443, !53, i64 0}
!445 = !{!443, !14, i64 8}
!446 = !{!443, !14, i64 16}
!447 = !{!443, !14, i64 24}
!448 = !{!443, !14, i64 32}
!449 = !{!443, !62, i64 40}
!450 = !{!443, !14, i64 48}
!451 = !{!443, !64, i64 56}
!452 = !{!443, !14, i64 64}
!453 = !{!443, !14, i64 72}
!454 = !{!443, !14, i64 80}
!455 = !{!443, !14, i64 88}
!456 = !{!443, !14, i64 96}
!457 = !{!443, !14, i64 104}
!458 = !{!443, !14, i64 112}
!459 = !{!443, !49, i64 120}
!460 = !{!443, !14, i64 128}
!461 = !{!443, !49, i64 136}
!462 = !{!443, !14, i64 144}
!463 = !{!443, !49, i64 152}
!464 = !{!443, !14, i64 160}
!465 = !{!443, !49, i64 168}
!466 = !{!443, !51, i64 176}
!467 = !{!443, !55, i64 184}
!468 = !{!443, !51, i64 192}
!469 = !{!443, !14, i64 200}
!470 = !{!443, !49, i64 208}
!471 = !{i64 0, i64 8, !54, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 8, !15, i64 32, i64 8, !15, i64 40, i64 8, !63, i64 48, i64 8, !15, i64 56, i64 8, !65, i64 64, i64 8, !15, i64 72, i64 8, !15, i64 80, i64 8, !15, i64 88, i64 8, !15, i64 96, i64 8, !15, i64 104, i64 8, !15, i64 112, i64 8, !15, i64 120, i64 8, !50, i64 128, i64 8, !15, i64 136, i64 8, !50, i64 144, i64 8, !15, i64 152, i64 8, !50, i64 160, i64 8, !15, i64 168, i64 8, !50, i64 176, i64 8, !52, i64 184, i64 8, !56, i64 192, i64 8, !52, i64 200, i64 8, !15, i64 208, i64 8, !50}
end_hunk_1
