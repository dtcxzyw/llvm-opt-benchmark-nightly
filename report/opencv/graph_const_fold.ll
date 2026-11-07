Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graph_const_fold?download=true
inline.NumInlined: 445
inline.NumDeleted: 254
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512ConstFolding7processEv:bb.a

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i5: ; preds = %.lr.ph.i.i.i.i2
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !29
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit:      ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i5
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9useCountsERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(1076), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn14dnn5_v2026060512ConstFolding12processGraphERNS_3PtrINS1_5GraphEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.45", align 1 ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"class.std::vector.92", align 8    ; 14 uses
  %6 = alloca %"class.std::vector.63", align 8    ; 13 uses
  %7 = alloca %"class.std::vector.63", align 8    ; 11 uses
  %8 = alloca %"class.std::vector", align 8       ; 14 uses
  %9 = alloca %"class.std::vector", align 8       ; 9 uses
  %10 = alloca %"class.std::vector", align 8      ; 9 uses
  %11 = alloca %"class.std::vector.102", align 8  ; 13 uses
  %12 = alloca %"class.std::vector.102", align 8  ; 9 uses
  %13 = alloca %"class.std::vector.102", align 8  ; 9 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %16 = alloca %"class.std::vector.63", align 8   ; 15 uses
  %17 = alloca %"class.std::vector.111", align 8  ; 8 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.45", align 1 ; 3 uses
  %23 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #16
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.c, ptr %i.d, align 8, !tbaa !29
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit:      ; preds = %bb.a, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not275 = icmp eq ptr %i.m, %i.n
  br i1 %.not275, label %._crit_edge273.thread, label %.lr.ph272

.lr.ph272:                                        ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE5clearEv.exit
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph272, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit
  %.0271 = phi i1 [ false, %.lr.ph272 ], [ %.4, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit ] ; 4 uses
  %.071270 = phi i64 [ 0, %.lr.ph272 ], [ %i.jg, %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit ] ; 2 uses
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.071270 ; 12 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(156) %i.ak)
          to label %bb.c unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !72 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !72 ; 2 uses
  %.not203257 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not203257, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.d
  %.1.lcssa = phi i1 [ %.0271, %bb.d ], [ %spec.select, %bb.j ] ; 2 uses
  %i.as = load ptr, ptr %i.s, align 8, !tbaa !38  ; 5 uses
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !45
  store <2 x ptr> %i.aw, ptr %i.as, align 8, !tbaa !45
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !47
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !47
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !38
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i

_ZN2cv3PtrINS_3dnn14dnn5_v202606055LayerEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.bc = phi ptr [ %i.as, %bb.e ], [ %i.as, %bb.g ], [ %.pre.i, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bd, ptr %i.s, align 8, !tbaa !38
  br label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit

bb.i:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %_ZNSt6vectorIN2cv3PtrINS0_3dnn14dnn5_v202606055LayerEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.d, %bb.j
  %.1259 = phi i1 [ %spec.select, %bb.j ], [ %.0271, %bb.d ]
  %.sroa.0196.0258 = phi ptr [ %i.bf, %bb.j ], [ %i.ap, %bb.d ] ; 2 uses
  %i.be = invoke noundef zeroext i1 @_ZN2cv3dnn14dnn5_v2026060512ConstFolding12processGraphERNS_3PtrINS1_5GraphEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0196.0258)
          to label %bb.j unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.lr.ph
  %spec.select = select i1 %i.be, i1 true, i1 %.1259 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0196.0258, i64 16 ; 2 uses
  %.not203 = icmp eq ptr %i.bf, %i.ar
  br i1 %.not203, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !75 ; 2 uses
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !76 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = ashr exact i64 %i.bo, 2                 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !75 ; 2 uses
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !76 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %14) #16
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6assignEmRKS1_.exit unwind label %bb.x

_ZNSt6vectorIN2cv3MatESaIS1_EE6assignEmRKS1_.exit: ; preds = %bb.k
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.bx = load ptr, ptr %i.u, align 8, !tbaa !77  ; 4 uses
  %i.by = load ptr, ptr %8, align 8, !tbaa !21    ; 5 uses
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = ashr exact i64 %i.cb, 2                 ; 7 uses
  %i.cd = icmp ugt i64 %i.bp, %i.cc
  br i1 %i.cd, label %bb.l, label %bb.r

bb.l:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6assignEmRKS1_.exit
  %i.ce = sub nuw nsw i64 %i.bp, %i.cc            ; 6 uses
  %i.cf = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.bz
  %i.ci = ashr exact i64 %i.ch, 2                 ; 2 uses
  %i.cj = icmp ult i64 %i.cc, 2305843009213693952
  call void @llvm.assume(i1 %i.cj)
  %i.ck = xor i64 %i.cc, 2305843009213693951      ; 2 uses
  %i.cl = icmp ule i64 %i.ci, %i.ck
  call void @llvm.assume(i1 %i.cl)
  %.not28.i = icmp ult i64 %i.ci, %i.ce
  br i1 %.not28.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bx, align 4, !tbaa !47
  %i.cm = getelementptr i8, ptr %i.bx, i64 4      ; 3 uses
  %i.cn = add nsw i64 %i.ce, -1                   ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.m
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.cn, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.cm, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.m
  %.0.i.i.i.i = phi ptr [ %i.cp, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.cm, %bb.m ]
  store ptr %.0.i.i.i.i, ptr %i.u, align 8, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.n:                                             ; preds = %bb.l
  %i.cq = icmp ult i64 %i.ck, %i.ce
  br i1 %i.cq, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
          to label %.noexc193 unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc193:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.n
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 %i.ce)
  %i.cr = add nuw nsw i64 %.sroa.speculated.i.i, %i.cc
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cr, i64 2305843009213693951) ; 2 uses
  %i.ct = shl nuw nsw i64 %i.cs, 2
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #19
          to label %.noexc194 unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc194:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cb ; 3 uses
  store i32 0, ptr %i.cv, align 4, !tbaa !47
  %i.cw = add nsw i64 %i.ce, -1                   ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc194
  %i.cy = getelementptr i8, ptr %i.cv, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cy, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !47
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc194
  %i.cz = icmp sgt i64 %i.cb, 0
  br i1 %i.cz, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.p:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %i.by, i64 %i.cb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.p, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.by, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.da = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.dc) #17
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.cu, ptr %8, align 8, !tbaa !21
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ce
  store ptr %i.dd, ptr %i.u, align 8, !tbaa !77
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.de, ptr %i.v, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6assignEmRKS1_.exit
  %i.df = icmp ult i64 %i.bp, %i.cc
  br i1 %i.df, label %bb.s, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bo ; 2 uses
  %.not.i.i116 = icmp eq ptr %i.bx, %i.dg
  br i1 %.not.i.i116, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.s
  store ptr %i.dg, ptr %i.u, align 8, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.s, %bb.r, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i
  %i.dh = load ptr, ptr %i.w, align 8, !tbaa !50  ; 2 uses
  %i.di = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 52                ; 3 uses
  %i.dn = icmp ugt i64 %i.bp, %i.dm
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.do = sub nuw nsw i64 %i.bp, %i.dm
  invoke void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.do)
          to label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEm.exit unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.dp = icmp ult i64 %i.bp, %i.dm
  br i1 %i.dp, label %bb.v, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEm.exit

bb.v:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw [52 x i8], ptr %i.di, i64 %i.bp ; 2 uses
  %.not.i.i118 = icmp eq ptr %i.dh, %i.dq
  br i1 %.not.i.i118, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.v
  store ptr %i.dq, ptr %i.w, align 8, !tbaa !50
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEm.exit: ; preds = %bb.t, %bb.u, %bb.v, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i
  %.not276 = icmp eq ptr %i.bk, %i.bl             ; 2 uses
  br i1 %.not276, label %._crit_edge263.thread, label %.lr.ph262

.lr.ph262:                                        ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEm.exit, %bb.ac
  %.072261 = phi i8 [ %spec.select114, %bb.ac ], [ 1, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEm.exit ]
  %.074260 = phi i64 [ %i.el, %bb.ac ], [ 0, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEm.exit ] ; 5 uses
  %i.dr = load ptr, ptr %i.bh, align 8, !tbaa !76
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.074260
  %.sroa.016.0.copyload = load i32, ptr %i.ds, align 4, !tbaa !47 ; 2 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !20
  %i.du = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dt, i32 %.sroa.016.0.copyload)
          to label %bb.w unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %.lr.ph262
  %spec.select114 = select i1 %i.du, i8 %.072261, i8 0 ; 3 uses
  %i.dv = trunc nuw i8 %spec.select114 to i1
  br i1 %i.dv, label %bb.y, label %bb.ac

bb.x:                                             ; preds = %bb.k
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %.loopexit.split-lp210

bb.y:                                             ; preds = %bb.w
  %i.dx = load ptr, ptr %0, align 8, !tbaa !20
  %i.dy = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.dx, i32 %.sroa.016.0.copyload)
          to label %bb.z unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.z:                                             ; preds = %bb.y
  %i.dz = load ptr, ptr %6, align 8, !tbaa !30
  %i.ea = getelementptr inbounds nuw [208 x i8], ptr %i.dz, i64 %.074260
  %i.eb = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ea, ptr noundef nonnull align 8 dereferenceable(208) %i.dy)
          to label %bb.aa unwind label %.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ec = load i32, ptr %i.dy, align 8, !tbaa !84
  %i.ed = and i32 %i.ec, 4095
  %i.ee = load ptr, ptr %8, align 8, !tbaa !21
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.074260
  store i32 %i.ed, ptr %i.ef, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %15, ptr noundef nonnull align 4 dereferenceable(52) %i.eg)
          to label %_ZNK2cv3Mat5shapeEv.exit unwind label %bb.ab

_ZNK2cv3Mat5shapeEv.exit:                         ; preds = %bb.aa
  %i.eh = load ptr, ptr %11, align 8, !tbaa !51
  %i.ei = getelementptr inbounds nuw [52 x i8], ptr %i.eh, i64 %.074260
  %i.ej = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.ei, ptr noundef nonnull align 4 dereferenceable(52) %15)
          to label %24 unwind label %bb.ab        ; 0 uses

24:                                               ; preds = %_ZNK2cv3Mat5shapeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.ac

.loopexit.split-lp210.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.y, %bb.z, %.lr.ph262, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.bm, %bb.t, %bb.i, %bb.b, %bb.o, %bb.bn
  %lpad.loopexit.split-lp436 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp210

bb.ab:                                            ; preds = %bb.aa, %_ZNK2cv3Mat5shapeEv.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %.loopexit.split-lp210

bb.ac:                                            ; preds = %24, %bb.w
  %i.el = add nuw i64 %.074260, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.el, %i.bp
  br i1 %exitcond.not, label %._crit_edge263, label %.lr.ph262, !llvm.loop !63

._crit_edge263:                                   ; preds = %bb.ac
  %25 = trunc nuw i8 %spec.select114 to i1
  br i1 %25, label %._crit_edge263.thread, label %bb.bh

._crit_edge263.thread:                            ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEm.exit, %._crit_edge263
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.em = icmp ugt i64 %i.bw, 44343134792571037
  br i1 %i.em, label %bb.ad, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.ad:                                            ; preds = %._crit_edge263.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
          to label %.noexc123 unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc123:                                        ; preds = %bb.ad
  unreachable

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %._crit_edge263.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %.not.i.i.i.i121 = icmp eq ptr %i.br, %i.bs     ; 2 uses
  br i1 %.not.i.i.i.i121, label %.loopexit208, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.en = mul nuw nsw i64 %i.bw, 208
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #19
          to label %.noexc124 unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc124:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.eo, ptr %16, align 8, !tbaa !30
  store ptr %i.eo, ptr %i.x, align 8, !tbaa !29
  %i.ep = getelementptr inbounds nuw [208 x i8], ptr %i.eo, i64 %i.bw
  store ptr %i.ep, ptr %i.y, align 8, !tbaa !53
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.noexc124
  %.08.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i ], [ %i.eo, %.noexc124 ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i ], [ %i.bw, %.noexc124 ]
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #16
  %i.eq = add nsw i64 %.057.i.i.i.i.i, -1         ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i122 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i.i.i122, label %.loopexit208, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.loopexit208:                                     ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.er, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.x, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.es = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 264
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(156) %i.es)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %.loopexit208
  br i1 %i.ew, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ex = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 808
  invoke void @_ZN2cv3dnn14dnn5_v202606053Net4Impl20allocateLayerOutputsERKNS_3PtrINS1_5LayerEEERKSt6vectorIiSaIiEERKS9_INS_8MatShapeESaISE_EERSB_RSG_RS9_ISt4pairIPhmESaISN_EERS9_INS_3MatESaISR_EESJ_SK_SU_SU_b(ptr noundef nonnull align 8 dereferenceable(1076) %i.ex, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i1 noundef zeroext false)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i, %bb.ad
  %lpad.loopexit.split-lp439 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp219

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ez = load ptr, ptr %i.aj, align 8, !tbaa !42
  invoke void @_ZN2cv3dnn14dnn5_v202606055Layer8finalizeERKSt6vectorINS_3MatESaIS4_EERS6_(ptr noundef nonnull align 8 dereferenceable(156) %i.ez, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.fa = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  store i32 0, ptr %i.z, align 8, !tbaa !86
  store i32 0, ptr %i.aa, align 4, !tbaa !87
  store i32 17104896, ptr %18, align 8, !tbaa !89
  store ptr %6, ptr %i.ab, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store i64 0, ptr %i.ad, align 8
  store i32 33882112, ptr %19, align 8, !tbaa !89
  store ptr %16, ptr %i.ac, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  store i64 0, ptr %i.af, align 8
  store i32 33882112, ptr %20, align 8, !tbaa !89
  store ptr %7, ptr %i.ae, align 8, !tbaa !90
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !35
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8
  invoke void %i.fd(ptr noundef nonnull align 8 dereferenceable(156) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %i.fe = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.ff = load ptr, ptr %16, align 8, !tbaa !30
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = sdiv exact i64 %i.fi, 208
  %i.fk = icmp eq i64 %i.fj, %i.bw
  br i1 %i.fk, label %.preheader204, label %bb.ak

.preheader204:                                    ; preds = %bb.ai
  br i1 %.not.i.i.i.i121, label %.preheader, label %.lr.ph266

bb.aj:                                            ; preds = %bb.ah
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %.body

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ConstFolding12processGraphERNS_3PtrINS1_5GraphEEE, ptr noundef nonnull @.str.2, i32 noundef 103) #18
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ao:                                            ; preds = %bb.al
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %21, align 8, !tbaa !57   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !46
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.an
  %.pn100 = phi { ptr, i32 } [ %i.fm, %bb.an ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %.body

.preheader:                                       ; preds = %bb.as, %.preheader204
  br i1 %.not276, label %._crit_edge269, label %.lr.ph268

.lr.ph266:                                        ; preds = %.preheader204, %bb.as
  %.175265 = phi i64 [ %i.hb, %bb.as ], [ 0, %.preheader204 ] ; 3 uses
  %i.ft = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.175265
  %.sroa.08.0.copyload = load i32, ptr %i.fu, align 4, !tbaa !47
  %i.fv = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 712
  %i.fx = sext i32 %.sroa.08.0.copyload to i64    ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 720
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !25
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !26 ; 2 uses
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = sdiv exact i64 %i.gd, 96                ; 2 uses
  %.not.i.i125 = icmp ugt i64 %i.ge, %i.fx
  br i1 %.not.i.i125, label %bb.ap, label %.invoke

bb.ap:                                            ; preds = %.lr.ph266
  %i.gf = getelementptr inbounds nuw [96 x i8], ptr %i.ga, i64 %i.fx ; 3 uses
  %i.gg = load ptr, ptr %16, align 8, !tbaa !30
  %i.gh = getelementptr inbounds nuw [208 x i8], ptr %i.gg, i64 %.175265 ; 3 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !84
  %i.gj = and i32 %i.gi, 4095
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 88
  store i32 %i.gj, ptr %i.gk, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %23, ptr noundef nonnull align 4 dereferenceable(52) %i.gl)
          to label %_ZNK2cv3Mat5shapeEv.exit128 unwind label %bb.at

_ZNK2cv3Mat5shapeEv.exit128:                      ; preds = %bb.ap
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 36
  %i.gn = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.gm, ptr noundef nonnull align 4 dereferenceable(52) %23)
          to label %bb.aq unwind label %bb.at     ; 0 uses

bb.aq:                                            ; preds = %_ZNK2cv3Mat5shapeEv.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  store i32 1, ptr %i.go, align 8, !tbaa !94
  %i.gp = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 736
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 744
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !29
  %i.gt = load ptr, ptr %i.gq, align 8, !tbaa !30 ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
end_hunk_0
