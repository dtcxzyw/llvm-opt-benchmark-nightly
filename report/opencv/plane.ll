Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/plane?download=true
inline.NumInlined: 673
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2cv10findPlanesERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_iiddddNS_15RgbdPlaneMethodE:bb.a
  %.pn136.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn, %bb.fh ], [ %i.ez, %bb.bk ]
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !34
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
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.s = load <2 x i32>, ptr %i.q, align 8, !tbaa !27
  %i.t = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.u = shufflevector <2 x i32> %i.t, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %.frozen = freeze <2 x i32> %i.s                ; 2 uses
  %i.v = sdiv <2 x i32> %.frozen, %i.u            ; 2 uses
  %i.w = mul <2 x i32> %i.v, %i.u
  %.decomposed = sub <2 x i32> %.frozen, %i.w
  %i.x = icmp ne <2 x i32> %.decomposed, zeroinitializer
  %6 = zext <2 x i1> %i.x to <2 x i32>
  %7 = add nsw <2 x i32> %i.v, %6                 ; 2 uses
  %i.y = extractelement <2 x i32> %7, i64 0       ; 5 uses
  %i.z = extractelement <2 x i32> %7, i64 1       ; 6 uses
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 69)
          to label %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit unwind label %bb.b

_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit:      ; preds = %bb.a
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.e, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 69)
          to label %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit133 unwind label %bb.b

_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit133:   ; preds = %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit
  %i.aa = load i32, ptr %i.q, align 8, !tbaa !67
  %i.ab = load i32, ptr %i.r, align 4, !tbaa !68
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.i, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef 261)
          to label %_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit unwind label %bb.b

_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit:      ; preds = %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit133
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.m, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 5)
          to label %_ZN2cv4Mat_IfE6createEii.exit.preheader unwind label %bb.b

_ZN2cv4Mat_IfE6createEii.exit.preheader:          ; preds = %_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit
  %i.ac = icmp sgt i32 %i.y, 0
  br i1 %i.ac, label %.preheader.lr.ph, label %_ZN2cv4Mat_IfE6createEii.exit._crit_edge.split

.preheader.lr.ph:                                 ; preds = %_ZN2cv4Mat_IfE6createEii.exit.preheader
  %i.ad = icmp sgt i32 %i.z, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.am = sext i32 %2 to i64                      ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 416 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 420
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 544
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 292
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 336 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  br i1 %i.ad, label %.preheader.preheader, label %_ZN2cv4Mat_IfE6createEii.exit._crit_edge.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bl = add nsw i32 %i.z, -1
  %i.bm = zext nneg i32 %i.bl to i64
  %wide.trip.count258 = zext nneg i32 %i.z to i64
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %indvars.iv255 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next256, %._crit_edge247 ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge247 ] ; 2 uses
  %i.bn = mul nsw i64 %indvars.iv255, %i.am
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 3 uses
  %i.bo = trunc i64 %indvars.iv.next256 to i32
  %i.bp = mul i32 %2, %i.bo
  br label %bb.c

_ZN2cv4Mat_IfE6createEii.exit._crit_edge.split:   ; preds = %._crit_edge247, %.preheader.lr.ph, %_ZN2cv4Mat_IfE6createEii.exit.preheader
  ret void

bb.b:                                             ; preds = %_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit, %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit133, %_ZN2cv4Mat_INS_3VecIfLi3EEEE6createEii.exit, %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

._crit_edge247:                                   ; preds = %bb.v
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.am
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count
  br i1 %exitcond259.not, label %_ZN2cv4Mat_IfE6createEii.exit._crit_edge.split, label %.preheader, !llvm.loop !142

bb.c:                                             ; preds = %.preheader, %bb.v
  %indvars.iv252 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next253, %bb.v ] ; 7 uses
  %i.br = load i32, ptr %i.q, align 8, !tbaa !27
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.br, i32 %i.bp)
  %i.bs = sext i32 %.sroa.speculated to i64       ; 2 uses
  %i.bt = icmp slt i64 %i.bn, %i.bs
  br i1 %i.bt, label %.lr.ph230, label %._crit_edge231.thread

.lr.ph230:                                        ; preds = %bb.c
  %i.bu = mul nsw i64 %indvars.iv252, %i.am       ; 2 uses
  %i.bv = load i32, ptr %i.ae, align 4, !tbaa !34
  %i.bw = icmp slt i32 %i.bv, 2                   ; 2 uses
  %i.bx = load ptr, ptr %i.af, align 8, !tbaa !35 ; 4 uses
  %i.by = load i32, ptr %i.ai, align 4, !tbaa !34
  %i.bz = icmp slt i32 %i.by, 2
  %i.ca = load ptr, ptr %i.aj, align 8, !tbaa !35 ; 2 uses
  %i.cb = icmp eq i64 %indvars.iv252, %i.bm
  %i.cc = load i64, ptr %i.ag, align 8, !tbaa !83 ; 4 uses
  %i.cd = load i64, ptr %i.ak, align 8, !tbaa !83 ; 2 uses
  br label %bb.d

._crit_edge231:                                   ; preds = %._crit_edge
  %i.ce = icmp eq i32 %.1.lcssa, 0
  br i1 %i.ce, label %._crit_edge231.thread, label %bb.n

bb.d:                                             ; preds = %.lr.ph230, %._crit_edge
  %indvars.iv249 = phi i64 [ %indvars.iv, %.lr.ph230 ], [ %indvars.iv.next250, %._crit_edge ] ; 4 uses
  %.099226 = phi i32 [ 0, %.lr.ph230 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.cf = phi <4 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.fh, %._crit_edge ] ; 2 uses
  %i.cg = phi <2 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.fi, %._crit_edge ] ; 2 uses
  %i.ch = phi <4 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.fj, %._crit_edge ] ; 2 uses
  %i.ci = phi <2 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.fk, %._crit_edge ] ; 2 uses
  br i1 %i.bw, label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cj = mul i64 %i.cc, %indvars.iv249
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cj
  %i.cl = load i64, ptr %i.ah, align 8, !tbaa !83
  br label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit

_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit:     ; preds = %bb.d, %bb.e
  %.sink276 = phi i64 [ %i.cl, %bb.e ], [ %i.cc, %bb.d ]
  %.sink = phi ptr [ %i.ck, %bb.e ], [ %i.bx, %bb.d ]
  %i.cm = mul i64 %.sink276, %i.bu
  %i.cn = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.cm ; 3 uses
  br i1 %i.bz, label %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit
  %i.co = mul i64 %i.cd, %indvars.iv249
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.co
  %i.cq = load i64, ptr %i.al, align 8, !tbaa !83
  br label %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit

_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit:       ; preds = %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit, %bb.f
  %.sink279 = phi i64 [ %i.cq, %bb.f ], [ %i.cd, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit ]
  %.sink277 = phi ptr [ %i.cp, %bb.f ], [ %i.ca, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit ]
  %i.cr = mul i64 %.sink279, %i.bu
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink277, i64 %i.cr
  br i1 %i.cb, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit
  %i.ct = load i32, ptr %i.r, align 4, !tbaa !68
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul i64 %i.cc, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cw
  br label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136

bb.i:                                             ; preds = %bb.g
  %i.cy = mul i64 %i.cc, %indvars.iv249
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cy
  %i.da = sext i32 %i.cu to i64
  %i.db = load i64, ptr %i.ah, align 8, !tbaa !83
  %i.dc = mul i64 %i.db, %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dc
  br label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136

_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136:  ; preds = %bb.i, %bb.h
  %.0.i135 = phi ptr [ %i.cx, %bb.h ], [ %i.dd, %bb.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i135, i64 16
  br label %bb.k

bb.j:                                             ; preds = %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit
  %i.df = getelementptr inbounds [16 x i8], ptr %i.cn, i64 %i.am
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136
  %.096 = phi ptr [ %i.de, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136 ], [ %i.df, %bb.j ] ; 2 uses
  %.not124186 = icmp eq ptr %i.cn, %.096
  br i1 %.not124186, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.m
  %.095201 = phi ptr [ %i.fg, %bb.m ], [ %i.cs, %bb.k ] ; 10 uses
  %.097200 = phi ptr [ %i.ff, %bb.m ], [ %i.cn, %bb.k ] ; 7 uses
  %.1199 = phi i32 [ %.2, %bb.m ], [ %.099226, %bb.k ] ; 2 uses
  %i.dg = phi <4 x float> [ %i.fb, %bb.m ], [ %i.cf, %bb.k ] ; 2 uses
  %i.dh = phi <2 x float> [ %i.fc, %bb.m ], [ %i.cg, %bb.k ] ; 2 uses
  %i.di = phi <4 x float> [ %i.fd, %bb.m ], [ %i.ch, %bb.k ] ; 2 uses
  %i.dj = phi <2 x float> [ %i.fe, %bb.m ], [ %i.ci, %bb.k ] ; 2 uses
  %i.dk = load float, ptr %.097200, align 4, !tbaa !40 ; 3 uses
  %i.dl = fcmp ord float %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.dm = fmul float %i.dk, %i.dk                 ; 2 uses
  store float %i.dm, ptr %.095201, align 4, !tbaa !40
  %i.dn = load float, ptr %.097200, align 4, !tbaa !40
  %i.do = getelementptr inbounds nuw i8, ptr %.097200, i64 4 ; 3 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !40
  %i.dq = fmul float %i.dn, %i.dp                 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.095201, i64 4
  store float %i.dq, ptr %i.dr, align 4, !tbaa !40
  %i.ds = load float, ptr %.097200, align 4, !tbaa !40
  %i.dt = getelementptr inbounds nuw i8, ptr %.097200, i64 8 ; 4 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %.095201, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.095201, i64 12
  store float %i.dq, ptr %i.dw, align 4, !tbaa !40
  %i.dx = getelementptr inbounds nuw i8, ptr %.095201, i64 16
  %i.dy = fmul float %i.ds, %i.du                 ; 4 uses
  store float %i.dy, ptr %i.dv, align 4, !tbaa !40
  %i.dz = load float, ptr %i.do, align 4, !tbaa !40 ; 2 uses
  %i.ea = fmul float %i.dz, %i.dz                 ; 2 uses
  store float %i.ea, ptr %i.dx, align 4, !tbaa !40
  %i.eb = load float, ptr %i.do, align 4, !tbaa !40
  %i.ec = load float, ptr %i.dt, align 4, !tbaa !40
  %i.ed = fmul float %i.eb, %i.ec                 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.095201, i64 20
  store float %i.ed, ptr %i.ee, align 4, !tbaa !40
  %i.ef = getelementptr inbounds nuw i8, ptr %.095201, i64 24
  store float %i.dy, ptr %i.ef, align 4, !tbaa !40
  %i.eg = getelementptr inbounds nuw i8, ptr %.095201, i64 28
  store float %i.ed, ptr %i.eg, align 4, !tbaa !40
  %i.eh = load float, ptr %i.dt, align 4, !tbaa !40 ; 2 uses
  %i.ei = fmul float %i.eh, %i.eh                 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.095201, i64 32
  store float %i.ei, ptr %i.ej, align 4, !tbaa !40
  %i.ek = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.el = insertelement <4 x float> %i.ek, float %i.dq, i64 1
  %i.em = insertelement <4 x float> %i.el, float %i.dy, i64 2
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.eo = fadd <4 x float> %i.dg, %i.en
  %i.ep = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.ed, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.dy, i64 2
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.et = fadd <4 x float> %i.di, %i.es
  %i.eu = load <2 x float>, ptr %.097200, align 4, !tbaa !40
  %i.ev = load float, ptr %i.dt, align 4, !tbaa !40
  %i.ew = fadd <2 x float> %i.dh, %i.eu
  %i.ex = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.ev, i64 1
  %i.ez = fadd <2 x float> %i.dj, %i.ey
  %i.fa = add nsw i32 %.1199, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %.2 = phi i32 [ %i.fa, %bb.l ], [ %.1199, %.lr.ph ] ; 2 uses
  %i.fb = phi <4 x float> [ %i.eo, %bb.l ], [ %i.dg, %.lr.ph ] ; 2 uses
  %i.fc = phi <2 x float> [ %i.ew, %bb.l ], [ %i.dh, %.lr.ph ] ; 2 uses
  %i.fd = phi <4 x float> [ %i.et, %bb.l ], [ %i.di, %.lr.ph ] ; 2 uses
  %i.fe = phi <2 x float> [ %i.ez, %bb.l ], [ %i.dj, %.lr.ph ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.097200, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.095201, i64 36
  %.not124 = icmp eq ptr %i.ff, %.096
  br i1 %.not124, label %._crit_edge, label %.lr.ph, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.m, %bb.k
  %.1.lcssa = phi i32 [ %.099226, %bb.k ], [ %.2, %bb.m ] ; 4 uses
  %i.fh = phi <4 x float> [ %i.cf, %bb.k ], [ %i.fb, %bb.m ] ; 2 uses
  %i.fi = phi <2 x float> [ %i.cg, %bb.k ], [ %i.fc, %bb.m ] ; 2 uses
  %i.fj = phi <4 x float> [ %i.ch, %bb.k ], [ %i.fd, %bb.m ] ; 2 uses
  %i.fk = phi <2 x float> [ %i.ci, %bb.k ], [ %i.fe, %bb.m ] ; 3 uses
  %indvars.iv.next250 = add nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.fl = icmp slt i64 %indvars.iv.next250, %i.bs
  br i1 %i.fl, label %bb.d, label %._crit_edge231, !llvm.loop !144

._crit_edge231.thread:                            ; preds = %bb.c, %._crit_edge231
  %i.fm = load i32, ptr %i.bi, align 4, !tbaa !34
  %i.fn = icmp slt i32 %i.fm, 2
  %i.fo = load ptr, ptr %i.bj, align 8, !tbaa !35
  %i.fp = load i64, ptr %i.bk, align 8
  %i.fq = mul i64 %i.fp, %indvars.iv255
  %.sink.idx.i = select i1 %i.fn, i64 0, i64 %i.fq
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sink.idx.i
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv252
  store float f0x7F7FFFFF, ptr %i.fr, align 4, !tbaa !40
  br label %bb.v

bb.n:                                             ; preds = %._crit_edge231
  %i.fs = extractelement <2 x float> %i.fk, i64 1
  %i.ft = fpext float %i.fs to double
  %i.fu = fpext <2 x float> %i.fi to <2 x double>
  %i.fv = sitofp i32 %.1.lcssa to double
  %i.fw = fdiv nnan double 1.000000e+00, %i.fv    ; 2 uses
  %i.fx = load i32, ptr %i.an, align 4, !tbaa !34
  %i.fy = icmp slt i32 %i.fx, 2
  %i.fz = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.ga = load i64, ptr %i.ap, align 8
  %i.gb = mul i64 %i.ga, %indvars.iv255
  %.sink.idx.i137 = select i1 %i.fy, i64 0, i64 %i.gb
  %.sink.i138 = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.sink.idx.i137
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %.sink.i138, i64 %indvars.iv252 ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gd = sitofp i32 %.1.lcssa to float           ; 3 uses
  %i.ge = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x double> %i.gf, %i.fu
  %i.gh = fptrunc <2 x double> %i.gg to <2 x float> ; 5 uses
  %i.gi = fmul double %i.fw, %i.ft
  %i.gj = fptrunc double %i.gi to float           ; 5 uses
  store <2 x float> %i.gh, ptr %i.gc, align 4
  store float %i.gj, ptr %.sroa.18.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.gk = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = fmul <2 x float> %i.gl, %i.gh           ; 2 uses
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.go = fmul float %i.gd, %i.gj                 ; 2 uses
  %i.gp = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.gq = insertelement <4 x float> %i.gp, float %i.gj, i64 2
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> %i.gq, <4 x float> zeroinitializer)
  %i.gs = call float @llvm.fmuladd.f32(float %i.go, float %i.gj, float 0.000000e+00)
  %i.gt = fsub <4 x float> %i.fh, %i.gr
  store <4 x float> %i.gt, ptr %3, align 16, !tbaa !40, !alias.scope !153
  %i.gu = shufflevector <2 x float> %i.gm, <2 x float> %i.gh, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.gv = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gw = insertelement <4 x float> %i.gv, float %i.gj, i64 1
  %i.gx = insertelement <4 x float> %i.gw, float %i.go, i64 2
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.gz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> %i.gy, <4 x float> zeroinitializer)
  %i.ha = fsub <4 x float> %i.fj, %i.gz
  store <4 x float> %i.ha, ptr %i.aq, align 16, !tbaa !40, !alias.scope !153
  %i.hb = extractelement <2 x float> %i.fk, i64 0
  %i.hc = fsub float %i.hb, %i.gs
  store float %i.hc, ptr %i.ar, align 16, !tbaa !40, !alias.scope !153
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i32 -1056833531, ptr %5, align 8, !tbaa !26
  store ptr %3, ptr %i.at, align 8, !tbaa !25
  store i64 12884901891, ptr %i.as, align 8, !tbaa !27
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(624) %4) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.au) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.av) #20
  %i.hd = invoke noundef nonnull align 8 dereferenceable(624) ptr @_ZN2cv3SVDclERKNS_11_InputArrayEi(ptr noundef nonnull align 8 dereferenceable(624) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 0)
          to label %bb.o unwind label %.body      ; 0 uses

.body:                                            ; preds = %bb.n
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.av) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.hf = load i32, ptr %i.aw, align 4, !tbaa !34
  %i.hg = icmp slt i32 %i.hf, 2
  %i.hh = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.hi = load i64, ptr %i.ay, align 8
  %i.hj = shl i64 %i.hi, 1
  %.sink.idx.i139 = select i1 %i.hg, i64 0, i64 %i.hj
  %.sink.i140 = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.sink.idx.i139 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sink.i140, i64 8
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !40
  %i.hm = load i32, ptr %i.az, align 4, !tbaa !34
  %i.hn = icmp slt i32 %i.hm, 2
  %i.ho = load ptr, ptr %i.ba, align 8, !tbaa !35
  %i.hp = load i64, ptr %i.bb, align 8
  %i.hq = mul i64 %i.hp, %indvars.iv255
  %.sink.idx.i145 = select i1 %i.hn, i64 0, i64 %i.hq
  %.sink.i146 = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.sink.idx.i145
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %.sink.i146, i64 %indvars.iv252 ; 2 uses
  %i.hs = load <2 x float>, ptr %.sink.i140, align 4, !tbaa !40
  store <2 x float> %i.hs, ptr %i.hr, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store float %i.hl, ptr %.sroa.6.0..sroa_idx, align 4
  %i.ht = load i32, ptr %i.bc, align 4, !tbaa !34
  %i.hu = icmp slt i32 %i.ht, 2
  br i1 %i.hu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hv = load ptr, ptr %i.bg, align 8, !tbaa !35
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.q:                                             ; preds = %bb.o
  %i.hx = load i32, ptr %i.au, align 8, !tbaa !22
  %i.hy = and i32 %i.hx, 16384
  %i.hz = icmp ne i32 %i.hy, 0
  %i.ia = load i32, ptr %i.bd, align 4
  %i.ib = icmp eq i32 %i.ia, 1
  %or.cond.i = select i1 %i.hz, i1 true, i1 %i.ib
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ic = load ptr, ptr %i.bg, align 8, !tbaa !35
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.s:                                             ; preds = %bb.q
  %i.ie = load i32, ptr %i.be, align 8, !tbaa !27
  %i.if = icmp eq i32 %i.ie, 1
  br i1 %i.if, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ig = load ptr, ptr %i.bg, align 8, !tbaa !35
  %i.ih = load i64, ptr %i.bh, align 8, !tbaa !83
  %i.ii = shl i64 %i.ih, 1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ii
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.u:                                             ; preds = %bb.s
  %i.ik = load i32, ptr %i.bf, align 4, !tbaa !68 ; 3 uses
  %i.il = sdiv i32 2, %i.ik                       ; 2 uses
  %i.im = mul nsw i32 %i.il, %i.ik                ; 0 uses
  %.recomposed = srem i32 2, %i.ik
  %i.in = load ptr, ptr %i.bg, align 8, !tbaa !35
  %i.io = load i64, ptr %i.bh, align 8, !tbaa !83
  %i.ip = sext i32 %i.il to i64
  %i.iq = mul i64 %i.io, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.iq
  %i.is = sext i32 %.recomposed to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.is
  br label %_ZN2cv3Mat2atIfEERT_i.exit

_ZN2cv3Mat2atIfEERT_i.exit:                       ; preds = %bb.u, %bb.t, %bb.r, %bb.p
  %.0.i147 = phi ptr [ %i.hw, %bb.p ], [ %i.id, %bb.r ], [ %i.ij, %bb.t ], [ %i.it, %bb.u ]
  %i.iu = load float, ptr %.0.i147, align 4, !tbaa !40
  %i.iv = fdiv float %i.iu, %i.gd
  %i.iw = load i32, ptr %i.bi, align 4, !tbaa !34
  %i.ix = icmp slt i32 %i.iw, 2
  %i.iy = load ptr, ptr %i.bj, align 8, !tbaa !35
  %i.iz = load i64, ptr %i.bk, align 8
  %i.ja = mul i64 %i.iz, %indvars.iv255
  %.sink.idx.i148 = select i1 %i.ix, i64 0, i64 %i.ja
  %.sink.i149 = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.sink.idx.i148
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.sink.i149, i64 %indvars.iv252
  store float %i.iv, ptr %i.jb, align 4, !tbaa !40
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.av) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.v

bb.v:                                             ; preds = %_ZN2cv3Mat2atIfEERT_i.exit, %._crit_edge231.thread
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next253, %wide.trip.count258
  br i1 %exitcond.not, label %._crit_edge247, label %bb.c, !llvm.loop !147

bb.w:                                             ; preds = %.body, %bb.b
  %.pn126.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.b ], [ %i.he, %.body ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.e) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  resume { ptr, i32 } %.pn126.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv9TileQueueC2ERKNS_9PlaneGridE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(840) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !90
  store ptr %0, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.c) #20
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = and i32 %i.d, -4096
  store i32 %i.e, ptr %i.c, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 644 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !68
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %2, i32 noundef %i.g, i32 noundef %i.i, i32 noundef 0)
          to label %_ZN2cv4Mat_IhE5zerosEii.exit unwind label %bb.b

_ZN2cv4Mat_IhE5zerosEii.exit:                     ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(688) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.c, i32 noundef 0)
          to label %_ZN2cv4Mat_IhEaSERKNS_7MatExprE.exit unwind label %bb.c, !inline_history !154

_ZN2cv4Mat_IhEaSERKNS_7MatExprE.exit:             ; preds = %_ZN2cv4Mat_IhE5zerosEii.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.p) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.q = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not8.i.i = icmp eq ptr %i.q, %0
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIN2cv9TileQueue9PlaneTileESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv4Mat_IhEaSERKNS_7MatExprE.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.q, %_ZN2cv4Mat_IhEaSERKNS_7MatExprE.exit ] ; 2 uses
  %i.r = load ptr, ptr %.09.i.i, align 8, !tbaa !31 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 32) #22
  %.not.i.i = icmp eq ptr %i.r, %0
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIN2cv9TileQueue9PlaneTileESaIS3_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt7__cxx114listIN2cv9TileQueue9PlaneTileESaIS3_EE5clearEv.exit: ; preds = %.lr.ph.i.i, %_ZN2cv4Mat_IhEaSERKNS_7MatExprE.exit
  store ptr %0, ptr %i.a, align 8, !tbaa !90
  store ptr %0, ptr %0, align 8, !tbaa !31
  store i64 0, ptr %i.b, align 8, !tbaa !157
  %i.s = load i32, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge33

.preheader.lr.ph:                                 ; preds = %_ZNSt7__cxx114listIN2cv9TileQueue9PlaneTileESaIS3_EE5clearEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 636
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.x = load i32, ptr %i.h, align 4, !tbaa !68   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader, label %._crit_edge33

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.z = phi i32 [ %i.ag, %._crit_edge ], [ %i.s, %.preheader.lr.ph ]
  %i.aa = phi i32 [ %i.ah, %._crit_edge ], [ %i.x, %.preheader.lr.ph ] ; 2 uses
  %i.ab = phi i32 [ %i.ai, %._crit_edge ], [ %i.x, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ad = trunc nuw nsw i64 %indvars.iv36 to i32
  br label %bb.e

._crit_edge33:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %_ZNSt7__cxx114listIN2cv9TileQueue9PlaneTileESaIS3_EE5clearEv.exit
  invoke void @_ZNSt7__cxx114listIN2cv9TileQueue9PlaneTileESaIS3_EE4sortEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.j unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN2cv4Mat_IhE5zerosEii.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %2) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.af, %bb.c ], [ %i.ae, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre39 = load i32, ptr %i.f, align 8, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ag = phi i32 [ %.pre39, %._crit_edge.loopexit ], [ %i.z, %.preheader ] ; 2 uses
  %i.ah = phi i32 [ %i.ba, %._crit_edge.loopexit ], [ %i.aa, %.preheader ]
  %i.ai = phi i32 [ %i.ba, %._crit_edge.loopexit ], [ %i.ab, %.preheader ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.aj = sext i32 %i.ag to i64
  %i.ak = icmp slt i64 %indvars.iv.next37, %i.aj
  br i1 %i.ak, label %.preheader, label %._crit_edge33, !llvm.loop !155

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %i.al = phi i32 [ %i.aa, %.lr.ph ], [ %i.ba, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.am = load i32, ptr %i.u, align 4, !tbaa !34
  %i.an = icmp slt i32 %i.am, 2
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.ap = load i64, ptr %i.w, align 8
  %i.aq = mul i64 %i.ap, %indvars.iv36
  %.sink.idx.i = select i1 %i.an, i64 0, i64 %i.aq
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sink.idx.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !40 ; 2 uses
  %i.at = fcmp une float %i.as, f0x7F7FFFFF
  br i1 %i.at, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.au = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23
          to label %bb.g unwind label %bb.h       ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !27
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i32 %i.ad, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !27
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store float %i.as, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !40
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !39
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !39
  %.pre = load i32, ptr %i.h, align 4, !tbaa !68
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.e, %bb.g
  %i.ba = phi i32 [ %i.al, %bb.e ], [ %.pre, %bb.g ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !156

bb.j:                                             ; preds = %._crit_edge33
  ret void

bb.k:                                             ; preds = %._crit_edge33
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.d
  %.pn23 = phi { ptr, i32 } [ %i.az, %bb.h ], [ %i.bd, %bb.k ], [ %.pn, %bb.d ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #20
  %i.be = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %.not8.i.i27 = icmp eq ptr %i.be, %0
  br i1 %.not8.i.i27, label %_ZNSt7__cxx1110_List_baseIN2cv9TileQueue9PlaneTileESaIS3_EED2Ev.exit, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %bb.l, %.lr.ph.i.i28
  %.09.i.i29 = phi ptr [ %i.bf, %.lr.ph.i.i28 ], [ %i.be, %bb.l ] ; 2 uses
  %i.bf = load ptr, ptr %.09.i.i29, align 8, !tbaa !31 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i29, i64 noundef 32) #22
  %.not.i.i30 = icmp eq ptr %i.bf, %0
  br i1 %.not.i.i30, label %_ZNSt7__cxx1110_List_baseIN2cv9TileQueue9PlaneTileESaIS3_EED2Ev.exit, label %.lr.ph.i.i28, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIN2cv9TileQueue9PlaneTileESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i28, %bb.l
  resume { ptr, i32 } %.pn23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
end_hunk_0
