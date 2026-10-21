Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/slice2_layer?download=true
inline.NumInlined: 1113
inline.NumDeleted: 431
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK2cv3dnn15Slice2LayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !21
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %common.resume

bb.j:                                             ; preds = %_ZNK2cv3dnn15Slice2LayerImpl14checkNumInputsEm.exit
  %i.w = load ptr, ptr %5, align 8, !tbaa !32     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  store ptr %i.w, ptr %i.x, align 8, !tbaa !44
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.j, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv3dnn15Slice2LayerImpl10getLayoutsERKSt6vectorINS_10DataLayoutESaIS3_EERS5_iS8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::vector.8", align 8     ; 10 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 508
  %i.f = load i32, ptr %i.e, align 4, !tbaa !293  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.i = load ptr, ptr %1, align 8, !tbaa !81
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv10DataLayoutESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.k = sext i32 %3 to i64                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !82
  call void @_ZNSt6vectorIN2cv10DataLayoutESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !81
  %i.m = load i32, ptr %i.l, align 4, !tbaa !82
  %i.n = icmp eq i32 %i.m, 7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !32   ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.w, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !83

.noexc.i.i:                                       ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !29  ; 3 uses
  %.pre54 = load ptr, ptr %i.q, align 8, !tbaa !29 ; 2 uses
  %.pre57 = ptrtoint ptr %.pre54 to i64
  %.pre58 = ptrtoint ptr %.pre to i64
  %i.y = icmp eq ptr %.pre54, %.pre
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.c
  %.pre-phi59 = phi i64 [ %.pre58, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.u, %bb.c ]
  %.pre-phi = phi i64 [ %.pre57, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.t, %bb.c ]
  %i.z = phi i1 [ %i.y, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.c ]
  %i.aa = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %i.x, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.c ] ; 8 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !31
  %i.af = sub i64 %.pre-phi, %.pre-phi59          ; 4 uses
  %i.ag = icmp sgt i64 %i.af, 4
  br i1 %i.ag, label %bb.f, label %bb.g, !prof !84

bb.f:                                             ; preds = %bb.e
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ab, ptr align 4 %i.aa, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp eq i64 %i.af, 4
  br i1 %i.ah, label %bb.h, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %i.aa, align 4, !tbaa !40
  store i32 %i.ai, ptr %i.ab, align 4, !tbaa !40
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 %i.af ; 4 uses
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !44
  br i1 %i.z, label %bb.i, label %bb.t

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !85
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !74 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ugt i64 %i.aq, 12
  br i1 %i.ar, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.sroa.010.0.copyload = load i32, ptr %i.as, align 4, !tbaa !40
  %i.at = invoke noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.d, i32 %.sroa.010.0.copyload)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.at, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !74
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %.sroa.0.0.copyload = load i32, ptr %i.av, align 4, !tbaa !40
  %i.aw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv3dnn14dnn5_v202606053Net4Impl9argTensorENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.d, i32 %.sroa.0.0.copyload)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.aw)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv3dnn14tensorToIntVecERKNS_3MatERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pre55 = load ptr, ptr %5, align 8, !tbaa !29
  %.pre56 = load ptr, ptr %i.ac, align 8, !tbaa !29
  br label %bb.t

bb.p:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.q:                                             ; preds = %bb.m, %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.az, %bb.r ], [ %i.ay, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ae

bb.t:                                             ; preds = %bb.o, %bb.k, %bb.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ba = phi ptr [ %.pre56, %bb.o ], [ %i.aj, %bb.k ], [ %i.aj, %bb.i ], [ %i.aj, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %i.bb = phi ptr [ %.pre55, %bb.o ], [ %i.ab, %bb.k ], [ %i.ab, %bb.i ], [ %i.ab, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ba
  br i1 %i.bc, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = icmp eq i32 %i.f, 2
  %i.be = icmp eq i32 %i.f, 4
  %i.bf = select i1 %i.be, i32 3, i32 -1
  %i.bg = select i1 %i.bd, i32 1, i32 %i.bf
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.sroa.044.052 = phi ptr [ %i.bb, %bb.u ], [ %8, %bb.v ] ; 2 uses
  %i.bh = load i32, ptr %.sroa.044.052, align 4, !tbaa !40 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, -1
  %7 = icmp ne i32 %i.bh, %i.bg
  %or.cond41.not = select i1 %i.bi, i1 %7, i1 false ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.044.052, i64 4 ; 2 uses
  %.not49.a = icmp ne ptr %8, %i.ba
  %or.cond69.not = select i1 %or.cond41.not, i1 %.not49.a, i1 false
  br i1 %or.cond69.not, label %bb.v, label %bb.w

bb.w:                                             ; preds = %bb.v
  %or.cond = and i1 %i.o, %or.cond41.not
  br i1 %or.cond, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 7, ptr %i.b, align 4, !tbaa !82
  invoke void @_ZNSt6vectorIN2cv10DataLayoutESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIN2cv10DataLayoutESaIS1_EE6assignEmRKS1_.exit unwind label %bb.y

_ZNSt6vectorIN2cv10DataLayoutESaIS1_EE6assignEmRKS1_.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.ae

.thread:                                          ; preds = %bb.t, %bb.w
  br i1 %i.o, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread
  %i.bk = load ptr, ptr %2, align 8, !tbaa !81
  store i32 %i.f, ptr %i.bk, align 4, !tbaa !82
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z, %_ZNSt6vectorIN2cv10DataLayoutESaIS1_EE6assignEmRKS1_.exit
  %i.bl = load ptr, ptr %4, align 8, !tbaa !81
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !82
  %i.bn = icmp eq i32 %i.bm, 7
  br i1 %i.bn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 1024
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !294
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.bq = phi i32 [ %i.bp, %bb.ab ], [ 0, %bb.aa ]
  %i.br = load ptr, ptr %5, align 8, !tbaa !32    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %i.bq

bb.ae:                                            ; preds = %bb.y, %bb.s, %bb.p
  %.pn39 = phi { ptr, i32 } [ %i.bj, %bb.y ], [ %.pn, %bb.s ], [ %i.ax, %bb.p ]
  %i.bw = load ptr, ptr %5, align 8, !tbaa !32    ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIiSaIiEED2Ev.exit43, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bx = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit43

_ZNSt6vectorIiSaIiEED2Ev.exit43:                  ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn39
}

declare noundef i64 @_ZNK2cv3dnn14dnn5_v202606055Layer8getFLOPSERKSt6vectorINS_8MatShapeESaIS4_EES8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer18updateMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer20alwaysSupportInplaceEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn15Slice2LayerImpl19dynamicOutputShapesEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 2 uses
  %.not9 = icmp ugt i64 %i.j, 1
  br i1 %.not9, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0810 = phi i64 [ %i.n, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.0810
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 4, !tbaa !40
  %i.m = tail call noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606053Net4Impl10isConstArgENS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(1076) %i.b, i32 %.sroa.0.0.copyload) ; 2 uses
  %i.n = add nuw i64 %.0810, 1                    ; 2 uses
  %exitcond.not = icmp ne i64 %i.n, %i.j
  %or.cond.not = select i1 %i.m, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !295

.critedge.loopexit:                               ; preds = %.lr.ph
  %.not.lcssa.ph = xor i1 %i.m, true
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %.not.lcssa.ph, %.critedge.loopexit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn15Slice2LayerImpl15isDataShufflingEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 true
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer9dumpAttrsERSoi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer4dumpERSoib(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn14dnn5_v2026060511Slice2LayerD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 296) (i8, ptr @_ZTVN2cv3dnn14dnn5_v2026060511Slice2LayerE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19, !inline_history !34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19, !inline_history !34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i, label %_ZN2cv3dnn14dnn5_v2026060511Slice2LayerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #19, !inline_history !34
  br label %_ZN2cv3dnn14dnn5_v2026060511Slice2LayerD2Ev.exit

_ZN2cv3dnn14dnn5_v2026060511Slice2LayerD2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, %bb.d
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(232) %0) #20, !inline_history !34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #19
  ret void
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(156), i32 noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EEiRS6_S9_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer8getTypesERKSt6vectorIiSaIiEEiiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef i32 @_ZNK2cv3dnn14dnn5_v202606055Layer10getLayoutsERKSt6vectorINS_10DataLayoutESaIS4_EERS6_iS9_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer19dynamicOutputShapesEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer15isDataShufflingEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn14dnn5_v202606059DictValue3getISt6vectorIiSaIiEEEET_i(ptr dead_on_unwind noalias writable sret(%"class.std::vector.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getISt6vectorIiSaIiEEEET_i, ptr noundef nonnull @.str.4, i32 noundef 130) #21
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable
end_hunk_0
