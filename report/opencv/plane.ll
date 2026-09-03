Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/plane?download=true
inline.NumInlined: 673
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2cv10findPlanesERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_iiddddNS_15RgbdPlaneMethodE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #20
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.bk
  %.pn136.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn, %bb.fh ], [ %i.ey, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %.body

.body:                                            ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.fi, %bb.aq, %bb.ai, %bb.x, %bb.p
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn, %bb.fi ], [ %.pn110.pn, %bb.x ], [ %.pn118, %bb.ai ], [ %.pn115.pn, %bb.aq ], [ %.pn113, %bb.p ], [ %i.w, %bb.m ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.fj

bb.fj:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn136.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn136.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !140
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !83
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !14
  %i.g = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.g, ptr %i.b, align 8, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.i, ptr %i.h, align 1, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !141
  %i.l = load ptr, ptr %0, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_INS_3VecIfLi4EEEEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !22
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 101
  store i32 %i.d, ptr %0, align 8, !tbaa !22
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 101
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 4, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863579, ptr %3, align 8, !tbaa !26
  store ptr %0, ptr %i.o, align 8, !tbaa !25
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 101, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv9PlaneGridC2ERKNS_4Mat_INS_3VecIfLi4EEEEEi(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Matx.10", align 16      ; 7 uses
  %4 = alloca %"class.cv::SVD", align 8           ; 18 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  store i32 %2, ptr %0, align 8, !tbaa !152
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #20
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 69
  store i32 %i.d, ptr %i.a, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.e) #20
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22
  %i.g = and i32 %i.f, -4096
  %i.h = or disjoint i32 %i.g, 69
  store i32 %i.h, ptr %i.e, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.i) #20
  %i.j = load i32, ptr %i.i, align 8, !tbaa !22
  %i.k = and i32 %i.j, -4096
  %i.l = or disjoint i32 %i.k, 261
  store i32 %i.l, ptr %i.i, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 5 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.m) #20
  %i.n = load i32, ptr %i.m, align 8, !tbaa !22
  %i.o = and i32 %i.n, -4096
  %i.p = or disjoint i32 %i.o, 5
  store i32 %i.p, ptr %i.m, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %7 = load <2 x i32>, ptr %i.q, align 8, !tbaa !61
  %8 = insertelement <2 x i32> poison, i32 %2, i64 0
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %.frozen = freeze <2 x i32> %7                  ; 2 uses
  %10 = sdiv <2 x i32> %.frozen, %9               ; 3 uses
  %11 = mul <2 x i32> %10, %9
  %.decomposed = sub <2 x i32> %.frozen, %11
  %12 = icmp ne <2 x i32> %.decomposed, zeroinitializer ; 2 uses
  %13 = extractelement <2 x i1> %12, i64 0
  %14 = zext i1 %13 to i32
  %15 = extractelement <2 x i32> %10, i64 0
  %spec.select = add nsw i32 %15, %14             ; 5 uses
  %16 = extractelement <2 x i1> %12, i64 1
  %i.r = zext i1 %16 to i32
  %17 = extractelement <2 x i32> %10, i64 1
  %.094 = add nsw i32 %17, %i.r                   ; 6 uses
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i32 noundef %spec.select, i32 noundef %.094, i32 noundef 69)
          to label %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit unwind label %bb.b

_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit:      ; preds = %bb.a
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.e, i32 noundef %spec.select, i32 noundef %.094, i32 noundef 69)
          to label %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit133 unwind label %bb.b

_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit133:   ; preds = %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit
  %i.s = load i32, ptr %i.q, align 8, !tbaa !67
  %i.t = load i32, ptr %6, align 4, !tbaa !68
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.i, i32 noundef %i.s, i32 noundef %i.t, i32 noundef 261)
          to label %_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit unwind label %bb.b

_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit:      ; preds = %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit133
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.m, i32 noundef %spec.select, i32 noundef %.094, i32 noundef 5)
          to label %_ZN2cv4Mat_IfE6createEii.exit.preheader unwind label %bb.b

_ZN2cv4Mat_IfE6createEii.exit.preheader:          ; preds = %_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit
  %i.u = icmp sgt i32 %spec.select, 0
  br i1 %i.u, label %.preheader.lr.ph, label %_ZN2cv4Mat_IfE6createEii.exit._crit_edge.split

.preheader.lr.ph:                                 ; preds = %_ZN2cv4Mat_IfE6createEii.exit.preheader
  %i.v = icmp sgt i32 %.094, 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ae = sext i32 %2 to i64                      ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 416 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 420
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 544
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 292
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 336 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  br i1 %i.v, label %.preheader.preheader, label %_ZN2cv4Mat_IfE6createEii.exit._crit_edge.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bd = add nsw i32 %.094, -1
  %i.be = zext nneg i32 %i.bd to i64
  %wide.trip.count258 = zext nneg i32 %spec.select to i64
  %wide.trip.count = zext nneg i32 %.094 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %indvars.iv255 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next256, %._crit_edge247 ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge247 ] ; 2 uses
  %i.bf = mul nsw i64 %indvars.iv255, %i.ae
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 3 uses
  %i.bg = trunc i64 %indvars.iv.next256 to i32
  %i.bh = mul i32 %2, %i.bg
  br label %bb.c

_ZN2cv4Mat_IfE6createEii.exit._crit_edge.split:   ; preds = %._crit_edge247, %.preheader.lr.ph, %_ZN2cv4Mat_IfE6createEii.exit.preheader
  ret void

bb.b:                                             ; preds = %_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit, %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit133, %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit, %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

._crit_edge247:                                   ; preds = %bb.v
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ae
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %_ZN2cv4Mat_IfE6createEii.exit._crit_edge.split, label %.preheader, !llvm.loop !142

bb.c:                                             ; preds = %.preheader, %bb.v
  %indvars.iv252 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next253, %bb.v ] ; 7 uses
  %i.bj = load i32, ptr %i.q, align 8, !tbaa !61
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bh)
  %i.bk = sext i32 %.sroa.speculated to i64       ; 2 uses
  %i.bl = icmp slt i64 %i.bf, %i.bk
  br i1 %i.bl, label %.lr.ph230, label %._crit_edge231.thread

.lr.ph230:                                        ; preds = %bb.c
  %i.bm = mul nsw i64 %indvars.iv252, %i.ae       ; 2 uses
  %i.bn = load i32, ptr %i.w, align 4, !tbaa !33
  %i.bo = icmp slt i32 %i.bn, 2                   ; 2 uses
  %i.bp = load ptr, ptr %i.x, align 8, !tbaa !34  ; 4 uses
  %i.bq = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.br = icmp slt i32 %i.bq, 2
  %i.bs = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 2 uses
  %i.bt = icmp eq i64 %indvars.iv252, %i.be
  %i.bu = load i64, ptr %i.y, align 8, !tbaa !83  ; 4 uses
  %i.bv = load i64, ptr %i.ac, align 8, !tbaa !83 ; 2 uses
  br label %bb.d

._crit_edge231:                                   ; preds = %._crit_edge
  %i.bw = icmp eq i32 %.1.lcssa, 0
  br i1 %i.bw, label %._crit_edge231.thread, label %bb.n

bb.d:                                             ; preds = %.lr.ph230, %._crit_edge
  %indvars.iv249 = phi i64 [ %indvars.iv, %.lr.ph230 ], [ %indvars.iv.next250, %._crit_edge ] ; 4 uses
  %.099226 = phi i32 [ 0, %.lr.ph230 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.bx = phi <4 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.ez, %._crit_edge ] ; 2 uses
  %i.by = phi <2 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.fa, %._crit_edge ] ; 2 uses
  %i.bz = phi <4 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.fb, %._crit_edge ] ; 2 uses
  %i.ca = phi <2 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.fc, %._crit_edge ] ; 2 uses
  br i1 %i.bo, label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cb = mul i64 %i.bu, %indvars.iv249
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cb
  %i.cd = load i64, ptr %i.z, align 8, !tbaa !83
  br label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit

_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit:     ; preds = %bb.d, %bb.e
  %.sink276 = phi i64 [ %i.cd, %bb.e ], [ %i.bu, %bb.d ]
  %.sink = phi ptr [ %i.cc, %bb.e ], [ %i.bp, %bb.d ]
  %i.ce = mul i64 %.sink276, %i.bm
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.ce ; 3 uses
  br i1 %i.br, label %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit
  %i.cg = mul i64 %i.bv, %indvars.iv249
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cg
  %i.ci = load i64, ptr %i.ad, align 8, !tbaa !83
  br label %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit

_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit:       ; preds = %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit, %bb.f
  %.sink279 = phi i64 [ %i.ci, %bb.f ], [ %i.bv, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit ]
  %.sink277 = phi ptr [ %i.ch, %bb.f ], [ %i.bs, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit ]
  %i.cj = mul i64 %.sink279, %i.bm
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink277, i64 %i.cj
  br i1 %i.bt, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit
  %i.cl = load i32, ptr %6, align 4, !tbaa !68
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul i64 %i.bu, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.co
  br label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136

bb.i:                                             ; preds = %bb.g
  %i.cq = mul i64 %i.bu, %indvars.iv249
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cq
  %i.cs = sext i32 %i.cm to i64
  %i.ct = load i64, ptr %i.z, align 8, !tbaa !83
  %i.cu = mul i64 %i.ct, %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cu
  br label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136

_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136:  ; preds = %bb.i, %bb.h
  %.0.i135 = phi ptr [ %i.cp, %bb.h ], [ %i.cv, %bb.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i135, i64 16
  br label %bb.k

bb.j:                                             ; preds = %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.cf, i64 %i.ae
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136
  %.096 = phi ptr [ %i.cw, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136 ], [ %i.cx, %bb.j ] ; 2 uses
  %.not124186 = icmp eq ptr %i.cf, %.096
  br i1 %.not124186, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.m
  %.095201 = phi ptr [ %i.ey, %bb.m ], [ %i.ck, %bb.k ] ; 10 uses
  %.097200 = phi ptr [ %i.ex, %bb.m ], [ %i.cf, %bb.k ] ; 7 uses
  %.1199 = phi i32 [ %.2, %bb.m ], [ %.099226, %bb.k ] ; 2 uses
  %i.cy = phi <4 x float> [ %i.et, %bb.m ], [ %i.bx, %bb.k ] ; 2 uses
  %i.cz = phi <2 x float> [ %i.eu, %bb.m ], [ %i.by, %bb.k ] ; 2 uses
  %i.da = phi <4 x float> [ %i.ev, %bb.m ], [ %i.bz, %bb.k ] ; 2 uses
  %i.db = phi <2 x float> [ %i.ew, %bb.m ], [ %i.ca, %bb.k ] ; 2 uses
  %i.dc = load float, ptr %.097200, align 4, !tbaa !39 ; 3 uses
  %i.dd = fcmp ord float %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.de = fmul float %i.dc, %i.dc                 ; 2 uses
  store float %i.de, ptr %.095201, align 4, !tbaa !39
  %i.df = load float, ptr %.097200, align 4, !tbaa !39
  %i.dg = getelementptr inbounds nuw i8, ptr %.097200, i64 4 ; 3 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !39
  %i.di = fmul float %i.df, %i.dh                 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.095201, i64 4
  store float %i.di, ptr %i.dj, align 4, !tbaa !39
  %i.dk = load float, ptr %.097200, align 4, !tbaa !39
  %i.dl = getelementptr inbounds nuw i8, ptr %.097200, i64 8 ; 4 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !39
  %i.dn = getelementptr inbounds nuw i8, ptr %.095201, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %.095201, i64 12
  store float %i.di, ptr %i.do, align 4, !tbaa !39
  %i.dp = getelementptr inbounds nuw i8, ptr %.095201, i64 16
  %i.dq = fmul float %i.dk, %i.dm                 ; 4 uses
  store float %i.dq, ptr %i.dn, align 4, !tbaa !39
  %i.dr = load float, ptr %i.dg, align 4, !tbaa !39 ; 2 uses
  %i.ds = fmul float %i.dr, %i.dr                 ; 2 uses
  store float %i.ds, ptr %i.dp, align 4, !tbaa !39
  %i.dt = load float, ptr %i.dg, align 4, !tbaa !39
  %i.du = load float, ptr %i.dl, align 4, !tbaa !39
  %i.dv = fmul float %i.dt, %i.du                 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.095201, i64 20
  store float %i.dv, ptr %i.dw, align 4, !tbaa !39
  %i.dx = getelementptr inbounds nuw i8, ptr %.095201, i64 24
  store float %i.dq, ptr %i.dx, align 4, !tbaa !39
  %i.dy = getelementptr inbounds nuw i8, ptr %.095201, i64 28
  store float %i.dv, ptr %i.dy, align 4, !tbaa !39
  %i.dz = load float, ptr %i.dl, align 4, !tbaa !39 ; 2 uses
  %i.ea = fmul float %i.dz, %i.dz                 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.095201, i64 32
  store float %i.ea, ptr %i.eb, align 4, !tbaa !39
  %i.ec = insertelement <4 x float> poison, float %i.de, i64 0
  %i.ed = insertelement <4 x float> %i.ec, float %i.di, i64 1
  %i.ee = insertelement <4 x float> %i.ed, float %i.dq, i64 2
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.eg = fadd <4 x float> %i.cy, %i.ef
  %i.eh = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.dv, i64 1
  %i.ej = insertelement <4 x float> %i.ei, float %i.dq, i64 2
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.el = fadd <4 x float> %i.da, %i.ek
  %i.em = load float, ptr %i.dl, align 4, !tbaa !39
  %i.en = load <2 x float>, ptr %.097200, align 4, !tbaa !39
  %i.eo = fadd <2 x float> %i.cz, %i.en
  %i.ep = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.em, i64 1
  %i.er = fadd <2 x float> %i.db, %i.eq
  %i.es = add nsw i32 %.1199, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %.2 = phi i32 [ %i.es, %bb.l ], [ %.1199, %.lr.ph ] ; 2 uses
  %i.et = phi <4 x float> [ %i.eg, %bb.l ], [ %i.cy, %.lr.ph ] ; 2 uses
  %i.eu = phi <2 x float> [ %i.eo, %bb.l ], [ %i.cz, %.lr.ph ] ; 2 uses
  %i.ev = phi <4 x float> [ %i.el, %bb.l ], [ %i.da, %.lr.ph ] ; 2 uses
  %i.ew = phi <2 x float> [ %i.er, %bb.l ], [ %i.db, %.lr.ph ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.097200, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.095201, i64 36
  %.not124 = icmp eq ptr %i.ex, %.096
  br i1 %.not124, label %._crit_edge, label %.lr.ph, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.m, %bb.k
  %.1.lcssa = phi i32 [ %.099226, %bb.k ], [ %.2, %bb.m ] ; 4 uses
  %i.ez = phi <4 x float> [ %i.bx, %bb.k ], [ %i.et, %bb.m ] ; 2 uses
  %i.fa = phi <2 x float> [ %i.by, %bb.k ], [ %i.eu, %bb.m ] ; 2 uses
  %i.fb = phi <4 x float> [ %i.bz, %bb.k ], [ %i.ev, %bb.m ] ; 2 uses
  %i.fc = phi <2 x float> [ %i.ca, %bb.k ], [ %i.ew, %bb.m ] ; 3 uses
  %indvars.iv.next250 = add nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.fd = icmp slt i64 %indvars.iv.next250, %i.bk
  br i1 %i.fd, label %bb.d, label %._crit_edge231, !llvm.loop !144

._crit_edge231.thread:                            ; preds = %bb.c, %._crit_edge231
  %i.fe = load i32, ptr %i.ba, align 4, !tbaa !33
  %i.ff = icmp slt i32 %i.fe, 2
  %i.fg = load ptr, ptr %i.bb, align 8, !tbaa !34
  %i.fh = load i64, ptr %i.bc, align 8
  %i.fi = mul i64 %i.fh, %indvars.iv255
  %.sink.idx.i = select i1 %i.ff, i64 0, i64 %i.fi
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.sink.idx.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv252
  store float f0x7F7FFFFF, ptr %i.fj, align 4, !tbaa !39
  br label %bb.v

bb.n:                                             ; preds = %._crit_edge231
  %i.fk = extractelement <2 x float> %i.fc, i64 1
  %i.fl = fpext float %i.fk to double
  %i.fm = fpext <2 x float> %i.fa to <2 x double>
  %i.fn = sitofp i32 %.1.lcssa to double
  %i.fo = fdiv nnan double 1.000000e+00, %i.fn    ; 2 uses
  %i.fp = load i32, ptr %i.af, align 4, !tbaa !33
  %i.fq = icmp slt i32 %i.fp, 2
  %i.fr = load ptr, ptr %i.ag, align 8, !tbaa !34
  %i.fs = load i64, ptr %i.ah, align 8
  %i.ft = mul i64 %i.fs, %indvars.iv255
  %.sink.idx.i137 = select i1 %i.fq, i64 0, i64 %i.ft
  %.sink.i138 = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sink.idx.i137
  %i.fu = getelementptr inbounds nuw [12 x i8], ptr %.sink.i138, i64 %indvars.iv252 ; 3 uses
  %.sroa.11165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fv = sitofp i32 %.1.lcssa to float           ; 3 uses
  %i.fw = fmul double %i.fo, %i.fl
  %i.fx = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = fmul <2 x double> %i.fy, %i.fm
  %i.ga = fptrunc double %i.fw to float           ; 5 uses
  %i.gb = fptrunc <2 x double> %i.fz to <2 x float> ; 6 uses
  %i.gc = extractelement <2 x float> %i.gb, i64 0
  store float %i.gc, ptr %i.fu, align 4
  %i.gd = extractelement <2 x float> %i.gb, i64 1
  store float %i.gd, ptr %.sroa.11165.0..sroa_idx, align 4
  store float %i.ga, ptr %.sroa.18.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ge = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x float> %i.gf, %i.gb           ; 2 uses
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gi = fmul float %i.fv, %i.ga                 ; 2 uses
  %i.gj = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.gk = insertelement <4 x float> %i.gj, float %i.ga, i64 2
  %i.gl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gh, <4 x float> %i.gk, <4 x float> zeroinitializer)
  %i.gm = call float @llvm.fmuladd.f32(float %i.gi, float %i.ga, float 0.000000e+00)
  %i.gn = fsub <4 x float> %i.ez, %i.gl
  store <4 x float> %i.gn, ptr %3, align 16, !tbaa !39, !alias.scope !153
  %i.go = shufflevector <2 x float> %i.gg, <2 x float> %i.gb, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.gp = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gq = insertelement <4 x float> %i.gp, float %i.ga, i64 1
  %i.gr = insertelement <4 x float> %i.gq, float %i.gi, i64 2
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.gt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.gs, <4 x float> zeroinitializer)
  %i.gu = fsub <4 x float> %i.fb, %i.gt
  store <4 x float> %i.gu, ptr %i.ai, align 16, !tbaa !39, !alias.scope !153
  %i.gv = extractelement <2 x float> %i.fc, i64 0
  %i.gw = fsub float %i.gv, %i.gm
  store float %i.gw, ptr %i.aj, align 16, !tbaa !39, !alias.scope !153
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i32 -1056833531, ptr %5, align 8, !tbaa !26
  store ptr %3, ptr %i.al, align 8, !tbaa !25
  store i64 12884901891, ptr %i.ak, align 8
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(624) %4) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.am) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.an) #20
  %i.gx = invoke noundef nonnull align 8 dereferenceable(624) ptr @_ZN2cv3SVDclERKNS_11_InputArrayEi(ptr noundef nonnull align 8 dereferenceable(624) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 0)
          to label %bb.o unwind label %.body      ; 0 uses

.body:                                            ; preds = %bb.n
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.an) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.am) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
end_hunk_0
