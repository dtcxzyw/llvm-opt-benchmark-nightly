Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/depth_to_3d?download=true
inline.NumInlined: 534
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv19convertDepthToFloatItEEvRKNS_3MatEfS3_RNS_4Mat_IfEE:bb.a
  %.val18 = phi ptr [ %.val1834, %bb.o ], [ %.val1834, %bb.p ], [ %.val18.pre, %bb.q ] ; 2 uses
  %.val17 = phi ptr [ %.val1732, %bb.o ], [ %.val1732, %bb.p ], [ %.val17.pre, %bb.q ] ; 2 uses
  %.val16 = phi ptr [ %.val1630, %bb.o ], [ %i.bt, %bb.p ], [ %.val16.pre, %bb.q ] ; 2 uses
  %.val = phi ptr [ null, %bb.o ], [ %.val28, %bb.p ], [ %.val.pre, %bb.q ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %.not.i = icmp ne ptr %.val, %.val17
  %i.bw = icmp ne ptr %.val16, %.val18
  %i.bx = select i1 %.not.i, i1 true, i1 %i.bw
  br i1 %i.bx, label %bb.o, label %._crit_edge, !llvm.loop !100
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19convertDepthToFloatIfEEvRKNS_3MatEfS3_RNS_4Mat_IfEE(ptr noundef nonnull align 8 dereferenceable(208) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::Mat_", align 8          ; 7 uses
  %7 = alloca %"class.cv::MatConstIterator_", align 8 ; 10 uses
  %8 = alloca %"class.cv::MatConstIterator_", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #14
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !25
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bb, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.l = icmp eq i32 %i.b, 2
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.b, 0
  %i.q = zext i1 %i.p to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.r = phi i32 [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.s = icmp eq i32 %i.b, 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp sgt i32 %i.b, -1
  %i.w = zext i1 %i.v to i32
  %i.x = select i1 %i.s, i32 %i.u, i32 %i.w
  call void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef %i.x, i32 noundef %i.r, i32 noundef 5)
  %i.y = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %_ZN2cv4Mat_IfEaSEOS1_.exit unwind label %bb.n ; 0 uses

_ZN2cv4Mat_IfEaSEOS1_.exit:                       ; preds = %_ZNK2cv8MatShapeclEv.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.ab = call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %2), !noalias !108
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2cv4Mat_IfEaSEOS1_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false), !alias.scope !108
  br label %_ZNK2cv3Mat5beginINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit

bb.i:                                             ; preds = %_ZN2cv4Mat_IfEaSEOS1_.exit
  call void @_ZN2cv16MatConstIteratorC2EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(208) %2)
  br label %_ZNK2cv3Mat5beginINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit

_ZNK2cv3Mat5beginINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.ac = call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %2), !noalias !109
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK2cv3Mat5beginINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false), !alias.scope !109
  br label %_ZNK2cv3Mat3endINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit

bb.k:                                             ; preds = %_ZNK2cv3Mat5beginINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit
  call void @_ZN2cv16MatConstIteratorC2EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(208) %2)
  %i.ad = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %2) ; 3 uses
  %i.ae = load ptr, ptr %8, align 8, !tbaa !52, !alias.scope !109 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  %i.ag = icmp eq i64 %i.ad, 0
  %or.cond.i.i.i = or i1 %i.ag, %i.af
  br i1 %or.cond.i.i.i, label %_ZNK2cv3Mat3endINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !53, !alias.scope !109
  %i.aj = mul i64 %i.ai, %i.ad
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54, !alias.scope !109 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.aj ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !54, !alias.scope !109
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !55, !alias.scope !109
  %i.ap = icmp uge ptr %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !109
  %.not.i.i.i = icmp ugt ptr %i.ar, %i.am
  %or.cond9.i.i.i = select i1 %i.ap, i1 %.not.i.i.i, i1 false
  br i1 %or.cond9.i.i.i, label %_ZNK2cv3Mat3endINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !54, !alias.scope !109
  call void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40) %8, i64 noundef %i.ad, i1 noundef zeroext true)
  %.val1722.pre = load ptr, ptr %8, align 8, !tbaa !52
  br label %_ZNK2cv3Mat3endINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit

_ZNK2cv3Mat3endINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.val1722 = phi ptr [ null, %bb.j ], [ %i.ae, %bb.k ], [ %i.ae, %bb.l ], [ %.val1722.pre, %bb.m ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val20 = load ptr, ptr %7, align 8, !tbaa !52  ; 2 uses
  %.val1621 = load ptr, ptr %i.as, align 8        ; 2 uses
  %.val1823 = load ptr, ptr %i.at, align 8        ; 2 uses
  %.not.i24 = icmp ne ptr %.val20, %.val1722
  %i.au = icmp ne ptr %.val1621, %.val1823
  %i.av = select i1 %.not.i24, i1 true, i1 %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv3Mat3endINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN2cv17MatConstIterator_INS_3VecIfLi2EEEEppEv.exit, %_ZNK2cv3Mat3endINS_3VecIfLi2EEEEENS_17MatConstIterator_IT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void

bb.n:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %common.resume

bb.o:                                             ; preds = %.lr.ph, %_ZN2cv17MatConstIterator_INS_3VecIfLi2EEEEppEv.exit
  %.val1835 = phi ptr [ %.val1823, %.lr.ph ], [ %.val18, %_ZN2cv17MatConstIterator_INS_3VecIfLi2EEEEppEv.exit ] ; 2 uses
  %.val1733 = phi ptr [ %.val1722, %.lr.ph ], [ %.val17, %_ZN2cv17MatConstIterator_INS_3VecIfLi2EEEEppEv.exit ] ; 2 uses
  %.val1631 = phi ptr [ %.val1621, %.lr.ph ], [ %.val16, %_ZN2cv17MatConstIterator_INS_3VecIfLi2EEEEppEv.exit ] ; 5 uses
  %.val29 = phi ptr [ %.val20, %.lr.ph ], [ %.val, %_ZN2cv17MatConstIterator_INS_3VecIfLi2EEEEppEv.exit ] ; 2 uses
  %.025 = phi ptr [ %i.aa, %.lr.ph ], [ %i.bv, %_ZN2cv17MatConstIterator_INS_3VecIfLi2EEEEppEv.exit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1631, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !57
  %i.be = fptosi float %i.bd to i32
  %i.bf = load float, ptr %.val1631, align 4, !tbaa !57
  %i.bg = fptosi float %i.bf to i32
  %i.bh = load i32, ptr %i.aw, align 4, !tbaa !58
  %i.bi = icmp slt i32 %i.bh, 2
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !50
  %i.bk = load i64, ptr %i.ay, align 8
  %i.bl = sext i32 %i.be to i64
  %i.bm = mul i64 %i.bk, %i.bl
  %.sink.idx.i = select i1 %i.bi, i64 0, i64 %i.bm
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sink.idx.i
  %i.bn = sext i32 %i.bg to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !57 ; 3 uses
  %or.cond = fcmp ueq float %i.bp, f0x00800000
  %i.bq = fcmp oeq float %i.bp, f0x7F7FFFFF
  %or.cond19 = or i1 %or.cond, %i.bq
  %i.br = fmul float %1, %i.bp
  %storemerge = select i1 %or.cond19, float +qnan, float %i.br
  store float %storemerge, ptr %.025, align 4, !tbaa !57
  %.not.i.i = icmp eq ptr %.val29, null
  br i1 %.not.i.i, label %_ZN2cv17MatConstIterator_INS_3VecIfLi2EEEEppEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = load i64, ptr %i.az, align 8, !tbaa !53
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1631, i64 %i.bs ; 2 uses
  %i.bu = load ptr, ptr %i.ba, align 8, !tbaa !61
  %.not1.i.i = icmp ult ptr %i.bt, %i.bu
  br i1 %.not1.i.i, label %_ZN2cv17MatConstIterator_INS_3VecIfLi2EEEEppEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %.val1631, ptr %i.as, align 8, !tbaa !54
  call void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40) %7, i64 noundef 1, i1 noundef zeroext true)
  %.val.pre = load ptr, ptr %7, align 8, !tbaa !52
  %.val16.pre = load ptr, ptr %i.as, align 8
  %.val17.pre = load ptr, ptr %8, align 8, !tbaa !52
  %.val18.pre = load ptr, ptr %i.at, align 8
  br label %_ZN2cv17MatConstIterator_INS_3VecIfLi2EEEEppEv.exit

_ZN2cv17MatConstIterator_INS_3VecIfLi2EEEEppEv.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.val18 = phi ptr [ %.val1835, %bb.o ], [ %.val1835, %bb.p ], [ %.val18.pre, %bb.q ] ; 2 uses
  %.val17 = phi ptr [ %.val1733, %bb.o ], [ %.val1733, %bb.p ], [ %.val17.pre, %bb.q ] ; 2 uses
  %.val16 = phi ptr [ %.val1631, %bb.o ], [ %i.bt, %bb.p ], [ %.val16.pre, %bb.q ] ; 2 uses
  %.val = phi ptr [ null, %bb.o ], [ %.val29, %bb.p ], [ %.val.pre, %bb.q ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.025, i64 4
  %.not.i = icmp ne ptr %.val, %.val17
  %i.bw = icmp ne ptr %.val16, %.val18
  %i.bx = select i1 %.not.i, i1 true, i1 %i.bw
  br i1 %i.bx, label %bb.o, label %._crit_edge, !llvm.loop !107
}

declare void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL18depthTo3d_from_uvzERKNS_3MatES2_S2_S2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.cv::Mat_", align 8         ; 13 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.std::vector", align 8      ; 18 uses
  %20 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %21 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %22 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %23 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %24 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %25 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %26 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %27 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %28 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %31 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %32 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %33 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %35 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %37 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #14
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %11, align 8, !tbaa !24    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !25
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i93 ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101 ], [ %.pn78.pn.pn.pn.pn, %bb.cx ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.l = icmp eq i32 %i.b, 2
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.b, 0
  %i.q = zext i1 %i.p to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.r = phi i32 [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.s = icmp eq i32 %i.b, 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp sgt i32 %i.b, -1
  %i.w = zext i1 %i.v to i32
  %i.x = select i1 %i.s, i32 %i.u, i32 %i.w       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !26   ; 7 uses
  %i.aa = icmp slt i32 %i.z, 3
  br i1 %i.aa, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #14
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92: ; preds = %bb.j
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i93: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %common.resume

bb.k:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ah = icmp sgt i32 %i.z, 0                    ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.aj = icmp eq i32 %i.z, 2
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27
  br label %_ZNK2cv8MatShapeclEv.exit99

bb.m:                                             ; preds = %bb.k
  %i.an = icmp eq i32 %i.z, 0
  %i.ao = zext i1 %i.an to i32
  br label %_ZNK2cv8MatShapeclEv.exit99

_ZNK2cv8MatShapeclEv.exit99:                      ; preds = %bb.l, %bb.m
  %i.ap = phi i32 [ %i.am, %bb.l ], [ %i.ao, %bb.m ]
  %i.aq = icmp eq i32 %i.z, 2                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp sgt i32 %i.z, -1
  %i.au = zext i1 %i.at to i32
  %i.av = select i1 %i.aq, i32 %i.as, i32 %i.au
  %i.aw = icmp eq i32 %i.r, %i.ap
  %i.ax = icmp eq i32 %i.x, %i.av
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %bb.n, label %.critedge
end_hunk_0
begin_hunk_1_@_ZN2cv19convertDepthToFloatIfEEmRKNS_3MatES3_fRNS_4Mat_IfEES6_S6_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.q = load i64, ptr %i.o, align 8, !tbaa !25
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ae, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ak, %bb.n ], [ %.pn66.pn, %bb.ae ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.s = icmp sgt i32 %i.k, 0
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.u = icmp eq i32 %i.k, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  br label %_ZNK2cv8MatShapeclEv.exit

bb.m:                                             ; preds = %bb.k
  %i.y = icmp eq i32 %i.k, 0
  %i.z = zext i1 %i.y to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.l, %bb.m
  %i.aa = phi i32 [ %i.x, %bb.l ], [ %i.z, %bb.m ] ; 3 uses
  %i.ab = icmp eq i32 %i.k, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp sgt i32 %i.k, -1
  %i.af = zext i1 %i.ae to i32
  %i.ag = select i1 %i.ab, i32 %i.ad, i32 %i.af   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #13
  %i.ah = load i32, ptr %10, align 8, !tbaa !20
  %i.ai = and i32 %i.ah, -4096
  store i32 %i.ai, ptr %10, align 8, !tbaa !20
  %i.aj = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IhEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %_ZN2cv4Mat_IhEC2ERKNS_3MatE.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #13
  br label %common.resume

_ZN2cv4Mat_IhEC2ERKNS_3MatE.exit:                 ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.al = load i32, ptr %1, align 8, !tbaa !20
  %i.am = and i32 %i.al, 31
  switch i32 %i.am, label %bb.o [
    i32 1, label %bb.r
    i32 0, label %bb.r
    i32 9, label %bb.r
  ]

bb.o:                                             ; preds = %_ZN2cv4Mat_IhEC2ERKNS_3MatE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.ao, align 8
  store i32 -2113863680, ptr %11, align 8, !tbaa !28
  store ptr %10, ptr %i.an, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.ae

bb.r:                                             ; preds = %_ZN2cv4Mat_IhEC2ERKNS_3MatE.exit, %_ZN2cv4Mat_IhEC2ERKNS_3MatE.exit, %_ZN2cv4Mat_IhEC2ERKNS_3MatE.exit, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.aq = mul nsw i32 %i.ag, %i.aa                ; 3 uses
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef %i.aq, i32 noundef 1, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEC2Eii.exit unwind label %bb.v

_ZN2cv4Mat_IfEC2Eii.exit:                         ; preds = %bb.r
  %i.ar = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %_ZN2cv4Mat_IfEaSEOS1_.exit unwind label %bb.w ; 0 uses

_ZN2cv4Mat_IfEaSEOS1_.exit:                       ; preds = %_ZN2cv4Mat_IfEC2Eii.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.aq, i32 noundef 1, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEC2Eii.exit71 unwind label %bb.y

_ZN2cv4Mat_IfEC2Eii.exit71:                       ; preds = %_ZN2cv4Mat_IfEaSEOS1_.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %_ZN2cv4Mat_IfEaSEOS1_.exit72 unwind label %bb.z ; 0 uses

_ZN2cv4Mat_IfEaSEOS1_.exit72:                     ; preds = %_ZN2cv4Mat_IfEC2Eii.exit71
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef %i.aq, i32 noundef 1, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEC2Eii.exit73 unwind label %bb.ab

_ZN2cv4Mat_IfEC2Eii.exit73:                       ; preds = %_ZN2cv4Mat_IfEaSEOS1_.exit72
  %i.at = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %_ZN2cv4Mat_IfEaSEOS1_.exit74 unwind label %bb.ac ; 0 uses

_ZN2cv4Mat_IfEaSEOS1_.exit74:                     ; preds = %_ZN2cv4Mat_IfEC2Eii.exit73
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %i.au = icmp sgt i32 %i.ag, 0
  br i1 %i.au, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit.lr.ph, label %._crit_edge95

_ZN2cv3Mat3ptrIhEEPT_ii.exit.lr.ph:               ; preds = %_ZN2cv4Mat_IfEaSEOS1_.exit74
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !58
  %i.ax = icmp slt i32 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.bb = icmp sgt i32 %i.aa, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 128
  br i1 %i.bb, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit.us.preheader, label %._crit_edge95

_ZN2cv3Mat3ptrIhEEPT_ii.exit.us.preheader:        ; preds = %_ZN2cv3Mat3ptrIhEEPT_ii.exit.lr.ph
  %wide.trip.count102 = zext nneg i32 %i.ag to i64
  %wide.trip.count = zext nneg i32 %i.aa to i64
  br label %_ZN2cv3Mat3ptrIhEEPT_ii.exit.us

_ZN2cv3Mat3ptrIhEEPT_ii.exit.us:                  ; preds = %_ZN2cv3Mat3ptrIhEEPT_ii.exit.us.preheader, %._crit_edge.us
  %indvars.iv99 = phi i64 [ 0, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.us.preheader ], [ %indvars.iv.next100, %._crit_edge.us ] ; 4 uses
  %.04193.us = phi i64 [ 0, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.us.preheader ], [ %.2.us, %._crit_edge.us ]
  %i.bo = load i64, ptr %i.ba, align 8
  %i.bp = mul i64 %i.bo, %indvars.iv99
  %.0.i.us.idx = select i1 %i.ax, i64 0, i64 %i.bp
  %.0.i.us = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0.i.us.idx
  %i.bq = trunc nuw nsw i64 %indvars.iv99 to i32
  %i.br = uitofp nneg i32 %i.bq to float
  br label %bb.s

bb.s:                                             ; preds = %_ZN2cv3Mat3ptrIhEEPT_ii.exit.us, %bb.u
  %indvars.iv = phi i64 [ 0, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.us ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %.03991.us = phi ptr [ %.0.i.us, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.us ], [ %i.cw, %bb.u ] ; 2 uses
  %.190.us = phi i64 [ %.04193.us, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.us ], [ %.2.us, %bb.u ] ; 3 uses
  %i.bs = load i8, ptr %.03991.us, align 1, !tbaa !25
  %.not65.us = icmp eq i8 %i.bs, 0
  br i1 %.not65.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  %i.bu = uitofp nneg i32 %i.bt to float
  %i.bv = load i32, ptr %i.bc, align 4, !tbaa !58
  %i.bw = icmp slt i32 %i.bv, 2
  %i.bx = load ptr, ptr %i.bd, align 8, !tbaa !50
  %i.by = load i64, ptr %i.be, align 8
  %i.bz = shl i64 %.190.us, 32
  %i.ca = ashr exact i64 %i.bz, 32                ; 3 uses
  %i.cb = mul i64 %i.by, %i.ca
  %.sink.idx.i.us = select i1 %i.bw, i64 0, i64 %i.cb
  %.sink.i.us = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink.idx.i.us
  store float %i.bu, ptr %.sink.i.us, align 4, !tbaa !57
  %i.cc = load i32, ptr %i.bf, align 4, !tbaa !58
  %i.cd = icmp slt i32 %i.cc, 2
  %i.ce = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.cf = load i64, ptr %i.bh, align 8
  %i.cg = mul i64 %i.cf, %i.ca
  %.sink.idx.i75.us = select i1 %i.cd, i64 0, i64 %i.cg
  %.sink.i76.us = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sink.idx.i75.us
  store float %i.br, ptr %.sink.i76.us, align 4, !tbaa !57
  %i.ch = load i32, ptr %i.bi, align 4, !tbaa !58
  %i.ci = icmp slt i32 %i.ch, 2
  %i.cj = load ptr, ptr %i.bj, align 8, !tbaa !50
  %i.ck = load i64, ptr %i.bk, align 8
  %i.cl = mul i64 %i.ck, %indvars.iv99
  %.sink.idx.i77.us = select i1 %i.ci, i64 0, i64 %i.cl
  %.sink.i78.us = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sink.idx.i77.us
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sink.i78.us, i64 %indvars.iv
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !57 ; 3 uses
  %or.cond.us = fcmp ueq float %i.cn, f0x00800000
  %i.co = fcmp oeq float %i.cn, f0x7F7FFFFF
  %or.cond89.us = or i1 %or.cond.us, %i.co
  %i.cp = fmul float %2, %i.cn
  %.sink = select i1 %or.cond89.us, float +qnan, float %i.cp
  %i.cq = load i32, ptr %i.bl, align 4, !tbaa !58
  %i.cr = icmp slt i32 %i.cq, 2
  %i.cs = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.ct = load i64, ptr %i.bn, align 8
  %i.cu = mul i64 %i.ct, %i.ca
  %.sink.idx.i79.us = select i1 %i.cr, i64 0, i64 %i.cu
  %.sink.i80.us = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sink.idx.i79.us
  store float %.sink, ptr %.sink.i80.us, align 4, !tbaa !57
  %i.cv = add i64 %.190.us, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.us = phi i64 [ %i.cv, %bb.t ], [ %.190.us, %bb.s ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03991.us, i64 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.s, !llvm.loop !164

._crit_edge.us:                                   ; preds = %bb.u
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge95, label %_ZN2cv3Mat3ptrIhEEPT_ii.exit.us, !llvm.loop !165

._crit_edge95:                                    ; preds = %._crit_edge.us, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.lr.ph, %_ZN2cv4Mat_IfEaSEOS1_.exit74
  %.041.lcssa = phi i64 [ 0, %_ZN2cv4Mat_IfEaSEOS1_.exit74 ], [ 0, %_ZN2cv3Mat3ptrIhEEPT_ii.exit.lr.ph ], [ %.2.us, %._crit_edge.us ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  ret i64 %.041.lcssa

bb.v:                                             ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %_ZN2cv4Mat_IfEC2Eii.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn59 = phi { ptr, i32 } [ %i.cy, %bb.w ], [ %i.cx, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.ae

bb.y:                                             ; preds = %_ZN2cv4Mat_IfEaSEOS1_.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZN2cv4Mat_IfEC2Eii.exit71
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn61 = phi { ptr, i32 } [ %i.da, %bb.z ], [ %i.cz, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN2cv4Mat_IfEaSEOS1_.exit72
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN2cv4Mat_IfEC2Eii.exit73
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn63 = phi { ptr, i32 } [ %i.dc, %bb.ac ], [ %i.db, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa, %bb.x, %bb.q
  %.pn66.pn = phi { ptr, i32 } [ %i.ap, %bb.q ], [ %.pn63, %bb.ad ], [ %.pn61, %bb.aa ], [ %.pn59, %bb.x ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %common.resume
}

declare void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #3

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IhEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !20
  %i.c = and i32 %i.b, -4096
  store i32 %i.c, ptr %0, align 8, !tbaa !20
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.e = and i32 %i.d, 4095
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.h = and i32 %i.d, 31
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !58
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.k, ptr noundef null)
  %i.l = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IhEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.n = and i32 %i.d, 4064
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.p, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4Mat_IfEaSERKNS_3MatE, ptr noundef nonnull @.str.8, i32 noundef 1630) #14
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.v = load i64, ptr %i.t, align 8, !tbaa !25
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.q, %bb.n ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.r

bb.p:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.y, align 8
  store i32 -2113863680, ptr %5, align 8, !tbaa !28
  store ptr %0, ptr %i.x, align 8, !tbaa !12
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 0, double noundef 1.000000e+00, double noundef 0.000000e+00)
end_hunk_1
