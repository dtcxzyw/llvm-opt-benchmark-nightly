Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/filter.dispatch?download=true
inline.NumInlined: 4426
inline.NumDeleted: 1773
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 195
begin_hunk_0_@_ZN2cv12cpu_baseline18SymmRowSmallFilterIffNS0_17SymmRowSmallNoVecEEC2ERKNS_3MatEiiRKS2_:bb.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !220
  %i.e = icmp slt i32 %i.d, 6
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv12cpu_baseline18SymmRowSmallFilterIhiNS0_17SymmRowSmallNoVecEEC2ERKNS_3MatEiiRKS2_, ptr noundef nonnull @.str.1, i32 noundef 2744) #26
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !24     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !25
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv12cpu_baseline9RowFilterIffNS0_17SymmRowSmallNoVecEEE, i64 16), ptr %0, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #25, !inline_history !257
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv12cpu_baseline9RowFilterIffNS0_17SymmRowSmallNoVecEEC2ERKNS_3MatEiRKS2_(ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.18", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 -1, ptr %i.a, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 -1, ptr %i.b, align 4, !tbaa !221
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv12cpu_baseline9RowFilterIffNS0_17SymmRowSmallNoVecEEE, i64 16), ptr %0, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.c) #25
  %i.d = load i32, ptr %1, align 8, !tbaa !107
  %i.e = and i32 %i.d, 16384
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.g unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.i, align 8
  store i32 33619968, ptr %4, align 8, !tbaa !193
  store ptr %i.c, ptr %i.h, align 8, !tbaa !194
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.o

bb.g:                                             ; preds = %bb.b, %bb.e
  store i32 %2, ptr %i.b, align 4, !tbaa !221
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !876  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !877  ; 2 uses
  %i.o = add i32 %i.l, -1
  %i.p = add i32 %i.o, %i.n
  store i32 %i.p, ptr %i.a, align 8, !tbaa !220
  %i.q = load i32, ptr %i.c, align 8, !tbaa !107
  %i.r = and i32 %i.q, 4095
  %i.s = icmp eq i32 %i.r, 5
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq i32 %i.l, 1
  %i.u = icmp eq i32 %i.n, 1
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv12cpu_baseline9RowFilterIhiNS0_17SymmRowSmallNoVecEEC2ERKNS_3MatEiRKS2_, ptr noundef nonnull @.str.1, i32 noundef 2681) #26
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %5, align 8, !tbaa !24     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !25
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn10 = phi { ptr, i32 } [ %i.v, %bb.l ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  ret void

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.c
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %bb.c ], [ %i.j, %bb.f ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #25
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12cpu_baseline9RowFilterIffNS0_17SymmRowSmallNoVecEED2Ev(ptr noundef nonnull align 8 dead_on_return(225) dereferenceable(225) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv12cpu_baseline9RowFilterIffNS0_17SymmRowSmallNoVecEEE, i64 16), ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12cpu_baseline18SymmRowSmallFilterIffNS0_17SymmRowSmallNoVecEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv12cpu_baseline9RowFilterIffNS0_17SymmRowSmallNoVecEEE, i64 16), ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #25, !inline_history !257
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv12cpu_baseline18SymmRowSmallFilterIffNS0_17SymmRowSmallNoVecEEclEPKhPhii(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline18SymmRowSmallFilterIffNS0_17SymmRowSmallNoVecEEclEPKhPhiiE26__cv_trace_location_fn2749)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !220  ; 6 uses
  %i.c = sdiv i32 %i.b, 2                         ; 5 uses
  %i.d = mul i32 %i.c, %4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %i.g = sext i32 %i.c to i64                     ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.f, i64 %i.g ; 19 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.j = load i32, ptr %i.i, align 4, !tbaa !256
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  %i.l = sext i32 %i.d to i64                     ; 10 uses
  %i.m = getelementptr [4 x i8], ptr %1, i64 %i.l ; 53 uses
  %i.n = mul i32 %4, %3                           ; 22 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %.thread [
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load float, ptr %i.h, align 4, !tbaa !240
  %i.p = fcmp oeq float %i.o, 1.000000e+00
  br i1 %i.p, label %.preheader316, label %.thread

.preheader316:                                    ; preds = %bb.c
  %.not310353 = icmp slt i32 %i.n, 2
  br i1 %.not310353, label %._crit_edge, label %.lr.ph355.preheader

.lr.ph355.preheader:                              ; preds = %.preheader316
  %i.q = add nsw i32 %i.n, -2                     ; 2 uses
  %i.r = zext nneg i32 %i.q to i64                ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check731 = icmp ult i32 %i.q, 26
  br i1 %min.iters.check731, label %.lr.ph355.preheader917, label %vector.memcheck724

vector.memcheck724:                               ; preds = %.lr.ph355.preheader
  %i.u = shl nuw nsw i64 %i.r, 2
  %i.v = and i64 %i.u, 8589934584                 ; 2 uses
  %i.w = getelementptr i8, ptr %2, i64 %i.v
  %scevgep725 = getelementptr i8, ptr %i.w, i64 8
  %i.x = shl nsw i64 %i.l, 2
  %i.y = getelementptr i8, ptr %1, i64 %i.v
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x
  %scevgep726 = getelementptr i8, ptr %i.z, i64 8
  %bound0727 = icmp ult ptr %2, %scevgep726
  %bound1728 = icmp ult ptr %i.m, %scevgep725
  %found.conflict729 = and i1 %bound0727, %bound1728
  br i1 %found.conflict729, label %.lr.ph355.preheader917, label %vector.ph732

vector.ph732:                                     ; preds = %vector.memcheck724
  %n.vec733 = and i64 %i.t, 2147483644            ; 3 uses
  %i.aa = shl nuw nsw i64 %n.vec733, 1            ; 2 uses
  br label %vector.body734

vector.body734:                                   ; preds = %vector.body734, %vector.ph732
  %index735 = phi i64 [ 0, %vector.ph732 ], [ %index.next744, %vector.body734 ] ; 2 uses
  %i.ab = shl nuw i64 %index735, 1                ; 3 uses
  %i.ac = or disjoint i64 %i.ab, 4                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ab
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ac
  %wide.vec736 = load <4 x float>, ptr %i.ad, align 4, !tbaa !240, !alias.scope !953
  %wide.vec739 = load <4 x float>, ptr %i.ae, align 4, !tbaa !240, !alias.scope !953
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  store <4 x float> %wide.vec736, ptr %i.af, align 4, !tbaa !240, !alias.scope !954, !noalias !953
  store <4 x float> %wide.vec739, ptr %i.ag, align 4, !tbaa !240, !alias.scope !954, !noalias !953
  %index.next744 = add nuw i64 %index735, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next744, %n.vec733
  br i1 %i.ah, label %middle.block745, label %vector.body734, !llvm.loop !881

middle.block745:                                  ; preds = %vector.body734
  %cmp.n746 = icmp eq i64 %i.t, %n.vec733
  br i1 %cmp.n746, label %._crit_edge.loopexit, label %.lr.ph355.preheader917

.lr.ph355.preheader917:                           ; preds = %vector.memcheck724, %.lr.ph355.preheader, %middle.block745
  %indvars.iv439.ph = phi i64 [ 0, %vector.memcheck724 ], [ 0, %.lr.ph355.preheader ], [ %i.aa, %middle.block745 ]
  br label %.lr.ph355

.lr.ph355:                                        ; preds = %.lr.ph355.preheader917, %.lr.ph355
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %.lr.ph355 ], [ %indvars.iv439.ph, %.lr.ph355.preheader917 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv439
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv439
  %i.ak = load <2 x float>, ptr %i.ai, align 4, !tbaa !240
  store <2 x float> %i.ak, ptr %i.aj, align 4, !tbaa !240
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 2 ; 3 uses
  %.not310 = icmp samesign ugt i64 %indvars.iv.next440, %i.r
  br i1 %.not310, label %._crit_edge.loopexit, label %.lr.ph355, !llvm.loop !882

._crit_edge.loopexit:                             ; preds = %.lr.ph355, %middle.block745
  %indvars.iv.next440.lcssa = phi i64 [ %i.aa, %middle.block745 ], [ %indvars.iv.next440, %.lr.ph355 ]
  %i.al = trunc nuw nsw i64 %indvars.iv.next440.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader316
  %.0281.lcssa = phi i32 [ 0, %.preheader316 ], [ %i.al, %._crit_edge.loopexit ] ; 2 uses
  %i.am = zext nneg i32 %.0281.lcssa to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.am
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.ao = load float, ptr %i.h, align 4, !tbaa !240 ; 4 uses
  %i.ap = fcmp oeq float %i.ao, 2.000000e+00
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !240
  %i.as = fcmp oeq float %i.ar, 1.000000e+00
  br i1 %i.as, label %.preheader317, label %bb.f

.preheader317:                                    ; preds = %bb.e
  %.not309347 = icmp slt i32 %i.n, 2
  br i1 %.not309347, label %.thread, label %.lr.ph350

.lr.ph350:                                        ; preds = %.preheader317
  %i.at = add nsw i32 %i.n, -2                    ; 2 uses
  %i.au = sub nsw i32 0, %4
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = sext i32 %4 to i64                      ; 3 uses
  %i.ax = zext nneg i32 %i.at to i64              ; 3 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check703 = icmp ult i32 %i.at, 22
  br i1 %min.iters.check703, label %scalar.ph702.preheader, label %vector.memcheck684

vector.memcheck684:                               ; preds = %.lr.ph350
  %i.ba = shl nuw nsw i64 %i.ax, 2
  %i.bb = and i64 %i.ba, 8589934584               ; 3 uses
  %i.bc = getelementptr i8, ptr %2, i64 %i.bb
  %scevgep685 = getelementptr i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bd = shl nsw i64 %i.aw, 2                    ; 4 uses
  %i.be = shl nsw i64 %i.l, 2                     ; 4 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.bd
  %scevgep686 = getelementptr i8, ptr %i.bf, i64 %i.be
  %i.bg = getelementptr i8, ptr %1, i64 %i.bb
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bd
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.be
  %scevgep687 = getelementptr i8, ptr %i.bi, i64 8
  %i.bj = add nsw i64 %i.bb, %i.be
  %i.bk = add nsw i64 %i.bj, 8                    ; 2 uses
  %scevgep688 = getelementptr i8, ptr %1, i64 %i.bk
  %i.bl = sub nsw i64 %i.be, %i.bd
  %scevgep689 = getelementptr i8, ptr %1, i64 %i.bl
  %i.bm = sub nsw i64 %i.bk, %i.bd
  %scevgep690 = getelementptr i8, ptr %1, i64 %i.bm
  %bound0691 = icmp ult ptr %2, %scevgep687
  %bound1692 = icmp ult ptr %scevgep686, %scevgep685
  %found.conflict693 = and i1 %bound0691, %bound1692
  %bound0694 = icmp ult ptr %2, %scevgep688
  %bound1695 = icmp ult ptr %i.m, %scevgep685
  %found.conflict696 = and i1 %bound0694, %bound1695
  %conflict.rdx697 = or i1 %found.conflict693, %found.conflict696
  %bound0698 = icmp ult ptr %2, %scevgep690
  %bound1699 = icmp ult ptr %scevgep689, %scevgep685
  %found.conflict700 = and i1 %bound0698, %bound1699
  %conflict.rdx701 = or i1 %conflict.rdx697, %found.conflict700
  br i1 %conflict.rdx701, label %scalar.ph702.preheader, label %vector.ph704

vector.ph704:                                     ; preds = %vector.memcheck684
  %n.vec705 = and i64 %i.az, 2147483644           ; 4 uses
  %i.bn = shl nuw nsw i64 %n.vec705, 1            ; 2 uses
  %i.bo = shl nuw nsw i64 %n.vec705, 3
  %i.bp = getelementptr i8, ptr %i.m, i64 %i.bo   ; 2 uses
  br label %vector.body706

vector.body706:                                   ; preds = %vector.body706, %vector.ph704
  %index707 = phi i64 [ 0, %vector.ph704 ], [ %index.next719, %vector.body706 ] ; 3 uses
  %i.bq = shl i64 %index707, 3
  %next.gep708 = getelementptr i8, ptr %i.m, i64 %i.bq ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %next.gep708, i64 %i.av
  %wide.vec709 = load <8 x float>, ptr %i.br, align 4, !tbaa !240, !alias.scope !955
  %wide.vec712 = load <8 x float>, ptr %next.gep708, align 4, !tbaa !240, !alias.scope !956
  %i.bs = getelementptr inbounds [4 x i8], ptr %next.gep708, i64 %i.aw
  %wide.vec715 = load <8 x float>, ptr %i.bs, align 4, !tbaa !240, !alias.scope !957
  %.idx904 = shl nuw i64 %index707, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %.idx904
  %i.bu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.vec712, <8 x float> splat (float 2.000000e+00), <8 x float> %wide.vec709)
  %interleaved.vec718 = fadd <8 x float> %i.bu, %wide.vec715
  store <8 x float> %interleaved.vec718, ptr %i.bt, align 4, !tbaa !240, !alias.scope !958, !noalias !959
  %index.next719 = add nuw i64 %index707, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next719, %n.vec705
  br i1 %i.bv, label %middle.block720, label %vector.body706, !llvm.loop !888

middle.block720:                                  ; preds = %vector.body706
  %cmp.n721 = icmp eq i64 %i.az, %n.vec705
  br i1 %cmp.n721, label %.thread.loopexit, label %scalar.ph702.preheader

scalar.ph702.preheader:                           ; preds = %vector.memcheck684, %.lr.ph350, %middle.block720
  %indvars.iv436.ph = phi i64 [ 0, %vector.memcheck684 ], [ 0, %.lr.ph350 ], [ %i.bn, %middle.block720 ]
  %.0286348.ph = phi ptr [ %i.m, %vector.memcheck684 ], [ %i.m, %.lr.ph350 ], [ %i.bp, %middle.block720 ]
  br label %scalar.ph702

scalar.ph702:                                     ; preds = %scalar.ph702.preheader, %scalar.ph702
  %indvars.iv436 = phi i64 [ %indvars.iv.next437, %scalar.ph702 ], [ %indvars.iv436.ph, %scalar.ph702.preheader ] ; 2 uses
  %.0286348 = phi ptr [ %i.ce, %scalar.ph702 ], [ %.0286348.ph, %scalar.ph702.preheader ] ; 4 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %.0286348, i64 %i.av
  %i.bx = getelementptr inbounds [4 x i8], ptr %.0286348, i64 %i.aw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv436
  %i.bz = load <2 x float>, ptr %i.bw, align 4, !tbaa !240
  %i.ca = load <2 x float>, ptr %.0286348, align 4, !tbaa !240
  %i.cb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> splat (float 2.000000e+00), <2 x float> %i.bz)
  %i.cc = load <2 x float>, ptr %i.bx, align 4, !tbaa !240
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline18SymmRowSmallFilterIffNS0_17SymmRowSmallNoVecEEclEPKhPhii:bb.a

bb.h:                                             ; preds = %bb.a
  switch i32 %i.b, label %.loopexit312 [
    i32 3, label %bb.i
    i32 5, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ou = load <2 x float>, ptr %i.h, align 4, !tbaa !240 ; 3 uses
  %i.ov = fcmp oeq <2 x float> %i.ou, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ow = extractelement <2 x i1> %i.ov, i64 0
  %i.ox = extractelement <2 x i1> %i.ov, i64 1
  %or.cond494 = select i1 %i.ow, i1 %i.ox, i1 false
  %.not303382 = icmp slt i32 %i.n, 2              ; 2 uses
  br i1 %or.cond494, label %.preheader, label %._crit_edge477

.preheader:                                       ; preds = %bb.i
  br i1 %.not303382, label %.loopexit312, label %.lr.ph385

.lr.ph385:                                        ; preds = %.preheader
  %i.oy = add nsw i32 %i.n, -2                    ; 2 uses
  %i.oz = sext i32 %4 to i64                      ; 3 uses
  %i.pa = sub nsw i32 0, %4
  %i.pb = sext i32 %i.pa to i64                   ; 2 uses
  %i.pc = zext nneg i32 %i.oy to i64              ; 3 uses
  %i.pd = lshr i64 %i.pc, 1
  %i.pe = add nuw nsw i64 %i.pd, 1                ; 2 uses
  %min.iters.check883 = icmp ult i32 %i.oy, 38
  br i1 %min.iters.check883, label %scalar.ph882.preheader, label %vector.memcheck869

vector.memcheck869:                               ; preds = %.lr.ph385
  %i.pf = shl nuw nsw i64 %i.pc, 2
  %i.pg = and i64 %i.pf, 8589934584               ; 3 uses
  %i.ph = getelementptr i8, ptr %2, i64 %i.pg
  %scevgep870 = getelementptr i8, ptr %i.ph, i64 8 ; 2 uses
  %i.pi = shl nsw i64 %i.l, 2                     ; 4 uses
  %i.pj = shl nsw i64 %i.oz, 2                    ; 4 uses
  %i.pk = sub nsw i64 %i.pi, %i.pj
  %scevgep871 = getelementptr i8, ptr %1, i64 %i.pk
  %i.pl = add nsw i64 %i.pg, %i.pi
  %i.pm = add nsw i64 %i.pl, 8
  %i.pn = sub nsw i64 %i.pm, %i.pj
  %scevgep872 = getelementptr i8, ptr %1, i64 %i.pn
  %i.po = getelementptr i8, ptr %1, i64 %i.pj
  %scevgep873 = getelementptr i8, ptr %i.po, i64 %i.pi
  %i.pp = getelementptr i8, ptr %1, i64 %i.pg
  %i.pq = getelementptr i8, ptr %i.pp, i64 %i.pj
  %i.pr = getelementptr i8, ptr %i.pq, i64 %i.pi
  %scevgep874 = getelementptr i8, ptr %i.pr, i64 8
  %bound0875 = icmp ult ptr %2, %scevgep872
  %bound1876 = icmp ult ptr %scevgep871, %scevgep870
  %found.conflict877 = and i1 %bound0875, %bound1876
  %bound0878 = icmp ult ptr %2, %scevgep874
  %bound1879 = icmp ult ptr %scevgep873, %scevgep870
  %found.conflict880 = and i1 %bound0878, %bound1879
  %conflict.rdx881 = or i1 %found.conflict877, %found.conflict880
  br i1 %conflict.rdx881, label %scalar.ph882.preheader, label %vector.ph884

vector.ph884:                                     ; preds = %vector.memcheck869
  %n.vec885 = and i64 %i.pe, 2147483644           ; 4 uses
  %i.ps = shl nuw nsw i64 %n.vec885, 1            ; 2 uses
  %i.pt = shl nuw nsw i64 %n.vec885, 3
  %i.pu = getelementptr i8, ptr %i.m, i64 %i.pt   ; 2 uses
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %vector.ph884
  %index887 = phi i64 [ 0, %vector.ph884 ], [ %index.next896, %vector.body886 ] ; 3 uses
  %i.pv = shl i64 %index887, 3
  %next.gep888 = getelementptr i8, ptr %i.m, i64 %i.pv ; 2 uses
  %i.pw = getelementptr inbounds [4 x i8], ptr %next.gep888, i64 %i.oz
  %wide.vec889 = load <8 x float>, ptr %i.pw, align 4, !tbaa !240, !alias.scope !988
  %i.px = getelementptr inbounds [4 x i8], ptr %next.gep888, i64 %i.pb
  %wide.vec892 = load <8 x float>, ptr %i.px, align 4, !tbaa !240, !alias.scope !989
  %.idx907 = shl nuw i64 %index887, 3
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 %.idx907
  %interleaved.vec895 = fsub <8 x float> %wide.vec889, %wide.vec892
  store <8 x float> %interleaved.vec895, ptr %i.py, align 4, !tbaa !240, !alias.scope !990, !noalias !991
  %index.next896 = add nuw i64 %index887, 4       ; 2 uses
  %i.pz = icmp eq i64 %index.next896, %n.vec885
  br i1 %i.pz, label %middle.block897, label %vector.body886, !llvm.loop !934

middle.block897:                                  ; preds = %vector.body886
  %cmp.n898 = icmp eq i64 %i.pe, %n.vec885
  br i1 %cmp.n898, label %.loopexit312.loopexit, label %scalar.ph882.preheader

scalar.ph882.preheader:                           ; preds = %vector.memcheck869, %.lr.ph385, %middle.block897
  %indvars.iv461.ph = phi i64 [ 0, %vector.memcheck869 ], [ 0, %.lr.ph385 ], [ %i.ps, %middle.block897 ]
  %.8294383.ph = phi ptr [ %i.m, %vector.memcheck869 ], [ %i.m, %.lr.ph385 ], [ %i.pu, %middle.block897 ]
  br label %scalar.ph882

scalar.ph882:                                     ; preds = %scalar.ph882.preheader, %scalar.ph882
  %indvars.iv461 = phi i64 [ %indvars.iv.next462, %scalar.ph882 ], [ %indvars.iv461.ph, %scalar.ph882.preheader ] ; 2 uses
  %.8294383 = phi ptr [ %i.qg, %scalar.ph882 ], [ %.8294383.ph, %scalar.ph882.preheader ] ; 3 uses
  %i.qa = getelementptr inbounds [4 x i8], ptr %.8294383, i64 %i.oz
  %i.qb = getelementptr inbounds [4 x i8], ptr %.8294383, i64 %i.pb
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv461
  %i.qd = load <2 x float>, ptr %i.qa, align 4, !tbaa !240
  %i.qe = load <2 x float>, ptr %i.qb, align 4, !tbaa !240
  %i.qf = fsub <2 x float> %i.qd, %i.qe
  store <2 x float> %i.qf, ptr %i.qc, align 4, !tbaa !240
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 2 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.8294383, i64 8 ; 2 uses
  %.not303 = icmp samesign ugt i64 %indvars.iv.next462, %i.pc
  br i1 %.not303, label %.loopexit312.loopexit, label %scalar.ph882, !llvm.loop !935

._crit_edge477:                                   ; preds = %bb.i
  br i1 %.not303382, label %.loopexit312, label %.lr.ph379

.lr.ph379:                                        ; preds = %._crit_edge477
  %i.qh = add nsw i32 %i.n, -2                    ; 2 uses
  %i.qi = sext i32 %4 to i64                      ; 3 uses
  %i.qj = sub nsw i32 0, %4
  %i.qk = sext i32 %i.qj to i64                   ; 2 uses
  %i.ql = zext nneg i32 %i.qh to i64              ; 3 uses
  %i.qm = lshr i64 %i.ql, 1
  %i.qn = add nuw nsw i64 %i.qm, 1                ; 2 uses
  %min.iters.check849 = icmp ult i32 %i.qh, 30
  br i1 %min.iters.check849, label %scalar.ph848.preheader, label %vector.memcheck835

vector.memcheck835:                               ; preds = %.lr.ph379
  %i.qo = shl nuw nsw i64 %i.ql, 2
  %i.qp = and i64 %i.qo, 8589934584               ; 3 uses
  %i.qq = getelementptr i8, ptr %2, i64 %i.qp
  %scevgep836 = getelementptr i8, ptr %i.qq, i64 8 ; 2 uses
  %i.qr = shl nsw i64 %i.l, 2                     ; 4 uses
  %i.qs = shl nsw i64 %i.qi, 2                    ; 4 uses
  %i.qt = sub nsw i64 %i.qr, %i.qs
  %scevgep837 = getelementptr i8, ptr %1, i64 %i.qt
  %i.qu = add nsw i64 %i.qp, %i.qr
  %i.qv = add nsw i64 %i.qu, 8
  %i.qw = sub nsw i64 %i.qv, %i.qs
  %scevgep838 = getelementptr i8, ptr %1, i64 %i.qw
  %i.qx = getelementptr i8, ptr %1, i64 %i.qs
  %scevgep839 = getelementptr i8, ptr %i.qx, i64 %i.qr
  %i.qy = getelementptr i8, ptr %1, i64 %i.qp
  %i.qz = getelementptr i8, ptr %i.qy, i64 %i.qs
  %i.ra = getelementptr i8, ptr %i.qz, i64 %i.qr
  %scevgep840 = getelementptr i8, ptr %i.ra, i64 8
  %bound0841 = icmp ult ptr %2, %scevgep838
  %bound1842 = icmp ult ptr %scevgep837, %scevgep836
  %found.conflict843 = and i1 %bound0841, %bound1842
  %bound0844 = icmp ult ptr %2, %scevgep840
  %bound1845 = icmp ult ptr %scevgep839, %scevgep836
  %found.conflict846 = and i1 %bound0844, %bound1845
  %conflict.rdx847 = or i1 %found.conflict843, %found.conflict846
  br i1 %conflict.rdx847, label %scalar.ph848.preheader, label %vector.ph850

vector.ph850:                                     ; preds = %vector.memcheck835
  %n.vec851 = and i64 %i.qn, 2147483644           ; 4 uses
  %i.rb = shl nuw nsw i64 %n.vec851, 1            ; 2 uses
  %i.rc = shl nuw nsw i64 %n.vec851, 3
  %i.rd = getelementptr i8, ptr %i.m, i64 %i.rc   ; 2 uses
  %i.re = shufflevector <2 x float> %i.ou, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body854

vector.body854:                                   ; preds = %vector.body854, %vector.ph850
  %index855 = phi i64 [ 0, %vector.ph850 ], [ %index.next864, %vector.body854 ] ; 3 uses
  %i.rf = shl i64 %index855, 3
  %next.gep856 = getelementptr i8, ptr %i.m, i64 %i.rf ; 2 uses
  %i.rg = getelementptr inbounds [4 x i8], ptr %next.gep856, i64 %i.qi
  %wide.vec857 = load <8 x float>, ptr %i.rg, align 4, !tbaa !240, !alias.scope !992
  %i.rh = getelementptr inbounds [4 x i8], ptr %next.gep856, i64 %i.qk
  %wide.vec860 = load <8 x float>, ptr %i.rh, align 4, !tbaa !240, !alias.scope !993
  %.idx906 = shl nuw i64 %index855, 3
  %i.ri = getelementptr inbounds nuw i8, ptr %2, i64 %.idx906
  %i.rj = fsub <8 x float> %wide.vec857, %wide.vec860
  %interleaved.vec863 = fmul <8 x float> %i.re, %i.rj
  store <8 x float> %interleaved.vec863, ptr %i.ri, align 4, !tbaa !240, !alias.scope !994, !noalias !995
  %index.next864 = add nuw i64 %index855, 4       ; 2 uses
  %i.rk = icmp eq i64 %index.next864, %n.vec851
  br i1 %i.rk, label %middle.block865, label %vector.body854, !llvm.loop !940

middle.block865:                                  ; preds = %vector.body854
  %cmp.n866 = icmp eq i64 %i.qn, %n.vec851
  br i1 %cmp.n866, label %.loopexit312.loopexit400, label %scalar.ph848.preheader

scalar.ph848.preheader:                           ; preds = %vector.memcheck835, %.lr.ph379, %middle.block865
  %indvars.iv458.ph = phi i64 [ 0, %vector.memcheck835 ], [ 0, %.lr.ph379 ], [ %i.rb, %middle.block865 ]
  %.9295376.ph = phi ptr [ %i.m, %vector.memcheck835 ], [ %i.m, %.lr.ph379 ], [ %i.rd, %middle.block865 ]
  %i.rl = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %scalar.ph848

scalar.ph848:                                     ; preds = %scalar.ph848.preheader, %scalar.ph848
  %indvars.iv458 = phi i64 [ %indvars.iv.next459, %scalar.ph848 ], [ %indvars.iv458.ph, %scalar.ph848.preheader ] ; 2 uses
  %.9295376 = phi ptr [ %i.rt, %scalar.ph848 ], [ %.9295376.ph, %scalar.ph848.preheader ] ; 3 uses
  %i.rm = getelementptr inbounds [4 x i8], ptr %.9295376, i64 %i.qi
  %i.rn = getelementptr inbounds [4 x i8], ptr %.9295376, i64 %i.qk
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv458
  %i.rp = load <2 x float>, ptr %i.rm, align 4, !tbaa !240
  %i.rq = load <2 x float>, ptr %i.rn, align 4, !tbaa !240
  %i.rr = fsub <2 x float> %i.rp, %i.rq
  %i.rs = fmul <2 x float> %i.rl, %i.rr
  store <2 x float> %i.rs, ptr %i.ro, align 4, !tbaa !240
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 2 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.9295376, i64 8 ; 2 uses
  %.not302 = icmp samesign ugt i64 %indvars.iv.next459, %i.ql
  br i1 %.not302, label %.loopexit312.loopexit400, label %scalar.ph848, !llvm.loop !941

bb.j:                                             ; preds = %bb.h
  %i.ru = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %6 = load <2 x float>, ptr %i.ru, align 4, !tbaa !240 ; 4 uses
  %.not301368 = icmp slt i32 %i.n, 2
  br i1 %.not301368, label %.loopexit312, label %.lr.ph372

.lr.ph372:                                        ; preds = %bb.j
  %i.rv = add nsw i32 %i.n, -2                    ; 2 uses
  %i.rw = sext i32 %4 to i64                      ; 3 uses
  %i.rx = sub i32 0, %4                           ; 2 uses
  %i.ry = sext i32 %i.rx to i64                   ; 2 uses
  %i.rz = shl nsw i32 %4, 1                       ; 2 uses
  %i.sa = sext i32 %i.rz to i64                   ; 3 uses
  %i.sb = shl i32 %i.rx, 1
  %i.sc = sext i32 %i.sb to i64                   ; 3 uses
  %i.sd = sub nsw i32 1, %4
  %i.se = sext i32 %i.sd to i64
  %i.sf = sub nsw i32 1, %i.rz
  %i.sg = sext i32 %i.sf to i64                   ; 2 uses
  %i.sh = zext i32 %i.rv to i64                   ; 3 uses
  %i.si = lshr i64 %i.sh, 1
  %i.sj = add nuw nsw i64 %i.si, 1                ; 2 uses
  %min.iters.check807 = icmp ult i32 %i.rv, 32
  br i1 %min.iters.check807, label %scalar.ph806.preheader, label %vector.memcheck775

vector.memcheck775:                               ; preds = %.lr.ph372
  %i.sk = shl nuw nsw i64 %i.sh, 2
  %i.sl = and i64 %i.sk, 17179869176              ; 5 uses
  %i.sm = getelementptr i8, ptr %2, i64 %i.sl
  %scevgep776 = getelementptr i8, ptr %i.sm, i64 8 ; 5 uses
  %i.sn = shl nsw i64 %i.l, 2                     ; 9 uses
  %i.so = add nsw i64 %i.sn, 4
  %i.sp = shl nsw i64 %i.sa, 2                    ; 4 uses
  %i.sq = sub nsw i64 %i.so, %i.sp
  %scevgep777 = getelementptr i8, ptr %1, i64 %i.sq
  %i.sr = add nsw i64 %i.sl, %i.sn                ; 2 uses
  %i.ss = add nsw i64 %i.sr, 8
  %i.st = sub nsw i64 %i.ss, %i.sp
  %scevgep778 = getelementptr i8, ptr %1, i64 %i.st
  %i.su = getelementptr i8, ptr %1, i64 %i.sn
  %scevgep779 = getelementptr i8, ptr %i.su, i64 %i.sp
  %i.sv = getelementptr i8, ptr %1, i64 %i.sr
  %i.sw = getelementptr i8, ptr %i.sv, i64 %i.sp
  %scevgep780 = getelementptr i8, ptr %i.sw, i64 8
  %i.sx = shl nsw i64 %i.rw, 2                    ; 4 uses
  %i.sy = sub nsw i64 %i.sn, %i.sx
  %scevgep781 = getelementptr i8, ptr %1, i64 %i.sy
  %i.sz = add nsw i64 %i.sl, %i.sn
  %i.ta = add nsw i64 %i.sz, 8
  %i.tb = sub nsw i64 %i.ta, %i.sx
  %scevgep782 = getelementptr i8, ptr %1, i64 %i.tb
  %i.tc = getelementptr i8, ptr %1, i64 %i.sx
  %scevgep783 = getelementptr i8, ptr %i.tc, i64 %i.sn
  %i.td = getelementptr i8, ptr %1, i64 %i.sl
  %i.te = getelementptr i8, ptr %i.td, i64 %i.sx
  %i.tf = getelementptr i8, ptr %i.te, i64 %i.sn
  %scevgep784 = getelementptr i8, ptr %i.tf, i64 8
  %i.tg = shl nsw i64 %i.sc, 2                    ; 2 uses
  %i.th = getelementptr i8, ptr %1, i64 %i.sn
  %scevgep785 = getelementptr i8, ptr %i.th, i64 %i.tg
  %i.ti = getelementptr i8, ptr %1, i64 %i.sl
  %i.tj = getelementptr i8, ptr %i.ti, i64 %i.sn
  %i.tk = getelementptr i8, ptr %i.tj, i64 %i.tg
  %scevgep786 = getelementptr i8, ptr %i.tk, i64 4
  %bound0787 = icmp ult ptr %2, %scevgep778
  %bound1788 = icmp ult ptr %scevgep777, %scevgep776
  %found.conflict789 = and i1 %bound0787, %bound1788
  %bound0790 = icmp ult ptr %2, %scevgep780
  %bound1791 = icmp ult ptr %scevgep779, %scevgep776
  %found.conflict792 = and i1 %bound0790, %bound1791
  %conflict.rdx793 = or i1 %found.conflict789, %found.conflict792
  %bound0794 = icmp ult ptr %2, %scevgep782
  %bound1795 = icmp ult ptr %scevgep781, %scevgep776
  %found.conflict796 = and i1 %bound0794, %bound1795
  %conflict.rdx797 = or i1 %conflict.rdx793, %found.conflict796
  %bound0798 = icmp ult ptr %2, %scevgep784
  %bound1799 = icmp ult ptr %scevgep783, %scevgep776
  %found.conflict800 = and i1 %bound0798, %bound1799
  %conflict.rdx801 = or i1 %conflict.rdx797, %found.conflict800
  %bound0802 = icmp ult ptr %2, %scevgep786
  %bound1803 = icmp ult ptr %scevgep785, %scevgep776
  %found.conflict804 = and i1 %bound0802, %bound1803
  %conflict.rdx805 = or i1 %conflict.rdx801, %found.conflict804
  br i1 %conflict.rdx805, label %scalar.ph806.preheader, label %vector.ph808

vector.ph808:                                     ; preds = %vector.memcheck775
  %i.tl = and i64 %i.sj, 3                        ; 2 uses
  %i.tm = icmp eq i64 %i.tl, 0
  %i.tn = select i1 %i.tm, i64 4, i64 %i.tl
  %n.vec809 = sub nsw i64 %i.sj, %i.tn            ; 3 uses
  %i.to = shl nsw i64 %n.vec809, 1
  %i.tp = shl nsw i64 %n.vec809, 3
  %i.tq = getelementptr i8, ptr %i.m, i64 %i.tp
  %broadcast.splat811 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat813 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body814

vector.body814:                                   ; preds = %vector.body814, %vector.ph808
  %index815 = phi i64 [ 0, %vector.ph808 ], [ %index.next831, %vector.body814 ] ; 3 uses
  %i.tr = shl i64 %index815, 3
  %next.gep816 = getelementptr i8, ptr %i.m, i64 %i.tr ; 5 uses
  %i.ts = getelementptr inbounds [4 x i8], ptr %next.gep816, i64 %i.rw
  %wide.vec817 = load <8 x float>, ptr %i.ts, align 4, !tbaa !240, !alias.scope !996 ; 2 uses
  %strided.vec818 = shufflevector <8 x float> %wide.vec817, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec819 = shufflevector <8 x float> %wide.vec817, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.tt = getelementptr inbounds [4 x i8], ptr %next.gep816, i64 %i.ry
  %wide.vec820 = load <8 x float>, ptr %i.tt, align 4, !tbaa !240, !alias.scope !997 ; 2 uses
  %strided.vec821 = shufflevector <8 x float> %wide.vec820, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec822 = shufflevector <8 x float> %wide.vec820, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.tu = fsub <4 x float> %strided.vec818, %strided.vec821
  %i.tv = getelementptr inbounds [4 x i8], ptr %next.gep816, i64 %i.sa
  %wide.vec823 = load <8 x float>, ptr %i.tv, align 4, !tbaa !240, !alias.scope !998 ; 2 uses
  %strided.vec824 = shufflevector <8 x float> %wide.vec823, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec825 = shufflevector <8 x float> %wide.vec823, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.tw = getelementptr inbounds [4 x i8], ptr %next.gep816, i64 %i.sc
  %wide.vec826 = load <8 x float>, ptr %i.tw, align 4, !tbaa !240, !alias.scope !999
  %strided.vec827 = shufflevector <8 x float> %wide.vec826, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.tx = fsub <4 x float> %strided.vec824, %strided.vec827
  %i.ty = fmul <4 x float> %broadcast.splat811, %i.tx
  %i.tz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tu, <4 x float> %broadcast.splat813, <4 x float> %i.ty)
  %i.ua = fsub <4 x float> %strided.vec819, %strided.vec822
  %i.ub = getelementptr inbounds [4 x i8], ptr %next.gep816, i64 %i.sg
  %wide.vec828 = load <8 x float>, ptr %i.ub, align 4, !tbaa !240, !alias.scope !1000
  %strided.vec829 = shufflevector <8 x float> %wide.vec828, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.uc = fsub <4 x float> %strided.vec825, %strided.vec829
  %i.ud = fmul <4 x float> %broadcast.splat811, %i.uc
  %i.ue = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ua, <4 x float> %broadcast.splat813, <4 x float> %i.ud)
  %.idx905 = shl nuw i64 %index815, 3
  %i.uf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx905
  %interleaved.vec830 = shufflevector <4 x float> %i.tz, <4 x float> %i.ue, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec830, ptr %i.uf, align 4, !tbaa !240, !alias.scope !1001, !noalias !1002
  %index.next831 = add nuw i64 %index815, 4       ; 2 uses
  %i.ug = icmp eq i64 %index.next831, %n.vec809
  br i1 %i.ug, label %scalar.ph806.preheader, label %vector.body814, !llvm.loop !949

scalar.ph806.preheader:                           ; preds = %vector.body814, %vector.memcheck775, %.lr.ph372
  %indvars.iv455.ph = phi i64 [ 0, %vector.memcheck775 ], [ 0, %.lr.ph372 ], [ %i.to, %vector.body814 ]
  %.10296369.ph = phi ptr [ %i.m, %vector.memcheck775 ], [ %i.m, %.lr.ph372 ], [ %i.tq, %vector.body814 ]
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uh = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph806

scalar.ph806:                                     ; preds = %scalar.ph806.preheader, %scalar.ph806
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %scalar.ph806 ], [ %indvars.iv455.ph, %scalar.ph806.preheader ] ; 2 uses
  %.10296369 = phi ptr [ %i.vd, %scalar.ph806 ], [ %.10296369.ph, %scalar.ph806.preheader ] ; 7 uses
  %i.ui = getelementptr inbounds [4 x i8], ptr %.10296369, i64 %i.rw
  %i.uj = getelementptr inbounds [4 x i8], ptr %.10296369, i64 %i.ry
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !240
  %i.ul = getelementptr inbounds [4 x i8], ptr %.10296369, i64 %i.sa
  %i.um = getelementptr inbounds [4 x i8], ptr %.10296369, i64 %i.sc
  %i.un = load float, ptr %i.um, align 4, !tbaa !240
  %i.uo = getelementptr inbounds [4 x i8], ptr %.10296369, i64 %i.se
  %i.up = load float, ptr %i.uo, align 4, !tbaa !240
  %i.uq = getelementptr inbounds [4 x i8], ptr %.10296369, i64 %i.sg
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !240
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv455
  %i.ut = load <2 x float>, ptr %i.ui, align 4, !tbaa !240
  %i.uu = insertelement <2 x float> poison, float %i.uk, i64 0
  %i.uv = insertelement <2 x float> %i.uu, float %i.up, i64 1
  %i.uw = fsub <2 x float> %i.ut, %i.uv
  %i.ux = load <2 x float>, ptr %i.ul, align 4, !tbaa !240
  %i.uy = insertelement <2 x float> poison, float %i.un, i64 0
  %i.uz = insertelement <2 x float> %i.uy, float %i.ur, i64 1
  %i.va = fsub <2 x float> %i.ux, %i.uz
  %i.vb = fmul <2 x float> %7, %i.va
  %i.vc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uw, <2 x float> %i.uh, <2 x float> %i.vb)
  store <2 x float> %i.vc, ptr %i.us, align 4, !tbaa !240
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 2 ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.10296369, i64 8 ; 2 uses
  %.not301 = icmp samesign ugt i64 %indvars.iv.next456, %i.sh
  br i1 %.not301, label %.loopexit312.loopexit401, label %scalar.ph806, !llvm.loop !950

.loopexit312.loopexit:                            ; preds = %scalar.ph882, %middle.block897
  %indvars.iv.next462.lcssa = phi i64 [ %i.ps, %middle.block897 ], [ %indvars.iv.next462, %scalar.ph882 ]
  %.lcssa497 = phi ptr [ %i.pu, %middle.block897 ], [ %i.qg, %scalar.ph882 ]
  %i.ve = trunc nuw nsw i64 %indvars.iv.next462.lcssa to i32
  br label %.loopexit312

.loopexit312.loopexit400:                         ; preds = %scalar.ph848, %middle.block865
  %indvars.iv.next459.lcssa = phi i64 [ %i.rb, %middle.block865 ], [ %indvars.iv.next459, %scalar.ph848 ]
  %.lcssa498 = phi ptr [ %i.rd, %middle.block865 ], [ %i.rt, %scalar.ph848 ]
  %i.vf = trunc nuw nsw i64 %indvars.iv.next459.lcssa to i32
  br label %.loopexit312

.loopexit312.loopexit401:                         ; preds = %scalar.ph806
  %i.vg = trunc nuw nsw i64 %indvars.iv.next456 to i32
  br label %.loopexit312

.loopexit312:                                     ; preds = %.loopexit312.loopexit401, %.loopexit312.loopexit400, %.loopexit312.loopexit, %bb.j, %._crit_edge477, %.preheader, %bb.h
  %.11297 = phi ptr [ %.lcssa498, %.loopexit312.loopexit400 ], [ %i.m, %bb.h ], [ %.lcssa497, %.loopexit312.loopexit ], [ %i.m, %.preheader ], [ %i.m, %._crit_edge477 ], [ %i.m, %bb.j ], [ %i.vd, %.loopexit312.loopexit401 ]
  %.12 = phi i32 [ %i.vf, %.loopexit312.loopexit400 ], [ 0, %bb.h ], [ %i.ve, %.loopexit312.loopexit ], [ 0, %.preheader ], [ 0, %._crit_edge477 ], [ 0, %bb.j ], [ %i.vg, %.loopexit312.loopexit401 ] ; 2 uses
  %i.vh = icmp slt i32 %.12, %i.n
  br i1 %i.vh, label %.lr.ph399, label %.loopexit

.lr.ph399:                                        ; preds = %.loopexit312
  %.not304388 = icmp slt i32 %i.b, 2
  %i.vi = sext i32 %4 to i64                      ; 4 uses
  %i.vj = add nsw i32 %i.c, 1                     ; 2 uses
  %i.vk = zext nneg i32 %.12 to i64
  %wide.trip.count471 = zext i32 %i.vj to i64
  %i.vl = add nsw i64 %wide.trip.count471, -1     ; 3 uses
  %xtraiter929 = and i64 %i.vl, 1
  %i.vm = icmp eq i32 %i.vj, 2
  %unroll_iter933 = and i64 %i.vl, -2
  %lcmp.mod930.not = icmp eq i64 %xtraiter929, 0
  %lcmp.mod932 = trunc i64 %i.vl to i1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph399, %._crit_edge394
  %indvars.iv473 = phi i64 [ %i.vk, %.lr.ph399 ], [ %indvars.iv.next474, %._crit_edge394 ] ; 2 uses
  %.12298396 = phi ptr [ %.11297, %.lr.ph399 ], [ %i.wt, %._crit_edge394 ] ; 8 uses
  %i.vn = load float, ptr %i.h, align 4, !tbaa !240
  %i.vo = load float, ptr %.12298396, align 4, !tbaa !240
  %i.vp = fmul float %i.vn, %i.vo                 ; 3 uses
  br i1 %.not304388, label %._crit_edge394, label %.lr.ph393.preheader

.lr.ph393.preheader:                              ; preds = %bb.k
  br i1 %i.vm, label %.lr.ph393.epil.preheader, label %.lr.ph393

.lr.ph393:                                        ; preds = %.lr.ph393.preheader, %.lr.ph393
  %indvars.iv466 = phi i64 [ %indvars.iv.next467.1, %.lr.ph393 ], [ 1, %.lr.ph393.preheader ] ; 3 uses
  %indvars.iv464 = phi i64 [ %indvars.iv.next465.1, %.lr.ph393 ], [ %i.vi, %.lr.ph393.preheader ] ; 3 uses
  %.0391 = phi float [ %i.wi, %.lr.ph393 ], [ %i.vp, %.lr.ph393.preheader ]
  %niter934 = phi i64 [ %niter934.next.1, %.lr.ph393 ], [ 0, %.lr.ph393.preheader ]
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv466
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !240
  %i.vs = getelementptr inbounds [4 x i8], ptr %.12298396, i64 %indvars.iv464
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !240
  %i.vu = sub nsw i64 0, %indvars.iv464
  %i.vv = getelementptr inbounds [4 x i8], ptr %.12298396, i64 %i.vu
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !240
  %i.vx = fsub float %i.vt, %i.vw
  %i.vy = call float @llvm.fmuladd.f32(float %i.vr, float %i.vx, float %.0391)
  %indvars.iv.next465 = add nsw i64 %indvars.iv464, %i.vi ; 3 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv466
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !240
  %i.wc = getelementptr inbounds [4 x i8], ptr %.12298396, i64 %indvars.iv.next465
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !240
  %i.we = sub nsw i64 0, %indvars.iv.next465
  %i.wf = getelementptr inbounds [4 x i8], ptr %.12298396, i64 %i.we
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !240
  %i.wh = fsub float %i.wd, %i.wg
  %i.wi = call float @llvm.fmuladd.f32(float %i.wb, float %i.wh, float %i.vy) ; 3 uses
  %indvars.iv.next467.1 = add nuw nsw i64 %indvars.iv466, 2 ; 2 uses
  %indvars.iv.next465.1 = add nsw i64 %indvars.iv.next465, %i.vi ; 2 uses
  %niter934.next.1 = add nuw i64 %niter934, 2     ; 2 uses
  %niter934.ncmp.1 = icmp eq i64 %niter934.next.1, %unroll_iter933
  br i1 %niter934.ncmp.1, label %._crit_edge394.loopexit.unr-lcssa, label %.lr.ph393, !llvm.loop !951

._crit_edge394.loopexit.unr-lcssa:                ; preds = %.lr.ph393
  br i1 %lcmp.mod930.not, label %._crit_edge394, label %.lr.ph393.epil.preheader

.lr.ph393.epil.preheader:                         ; preds = %._crit_edge394.loopexit.unr-lcssa, %.lr.ph393.preheader
  %indvars.iv466.epil.init = phi i64 [ 1, %.lr.ph393.preheader ], [ %indvars.iv.next467.1, %._crit_edge394.loopexit.unr-lcssa ]
  %indvars.iv464.epil.init = phi i64 [ %i.vi, %.lr.ph393.preheader ], [ %indvars.iv.next465.1, %._crit_edge394.loopexit.unr-lcssa ] ; 2 uses
  %.0391.epil.init = phi float [ %i.vp, %.lr.ph393.preheader ], [ %i.wi, %._crit_edge394.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod932)
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv466.epil.init
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !240
  %i.wl = getelementptr inbounds [4 x i8], ptr %.12298396, i64 %indvars.iv464.epil.init
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !240
  %i.wn = sub nsw i64 0, %indvars.iv464.epil.init
  %i.wo = getelementptr inbounds [4 x i8], ptr %.12298396, i64 %i.wn
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !240
  %i.wq = fsub float %i.wm, %i.wp
  %i.wr = call float @llvm.fmuladd.f32(float %i.wk, float %i.wq, float %.0391.epil.init)
  br label %._crit_edge394

._crit_edge394:                                   ; preds = %.lr.ph393.epil.preheader, %._crit_edge394.loopexit.unr-lcssa, %bb.k
  %.0.lcssa = phi float [ %i.vp, %bb.k ], [ %i.wi, %._crit_edge394.loopexit.unr-lcssa ], [ %i.wr, %.lr.ph393.epil.preheader ]
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv473
  store float %.0.lcssa, ptr %i.ws, align 4, !tbaa !240
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.12298396, i64 4
  %i.wu = trunc nuw i64 %indvars.iv.next474 to i32
  %i.wv = icmp sgt i32 %i.n, %i.wu
  br i1 %i.wv, label %bb.k, label %.loopexit, !llvm.loop !952

.loopexit:                                        ; preds = %._crit_edge363, %.lr.ph367.split.us, %._crit_edge394, %middle.block771, %.thread, %.loopexit312
  %i.ww = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !96
  %.not.i = icmp eq i32 %i.wx, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.wy = landingpad { ptr, i32 }
          catch ptr null
  %i.wz = extractvalue { ptr, i32 } %i.wy, 0
  call void @__clang_call_terminate(ptr %i.wz) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.loopexit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv12cpu_baseline9RowFilterIffNS0_17SymmRowSmallNoVecEE11isStatelessEv(ptr noundef nonnull align 8 dereferenceable(225) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12cpu_baseline9RowFilterIffNS0_17SymmRowSmallNoVecEED0Ev(ptr noundef nonnull align 8 dereferenceable(225) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv12cpu_baseline9RowFilterIffNS0_17SymmRowSmallNoVecEEE, i64 16), ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #25, !inline_history !257
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv12cpu_baseline9RowFilterIffNS0_17SymmRowSmallNoVecEEclEPKhPhii(ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline9RowFilterIffNS0_17SymmRowSmallNoVecEEclEPKhPhiiE26__cv_trace_location_fn2689)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !220  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105  ; 14 uses
  %i.e = mul nsw i32 %4, %3                       ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph34, label %._crit_edge35

.lr.ph34:                                         ; preds = %bb.a
  %i.g = icmp sgt i32 %i.b, 1
  %i.h = sext i32 %4 to i64                       ; 5 uses
  %wide.trip.count46 = zext nneg i32 %i.e to i64  ; 7 uses
  br i1 %i.g, label %.lr.ph.us.preheader, label %.lr.ph34.split.preheader

.lr.ph34.split.preheader:                         ; preds = %.lr.ph34
  %min.iters.check = icmp ult i32 %i.e, 12
  br i1 %min.iters.check, label %.lr.ph34.split.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph34.split.preheader
  %i.i = shl nuw nsw i64 %wide.trip.count46, 2    ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.i   ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.d, i64 4
  %scevgep52 = getelementptr i8, ptr %1, i64 %i.i
  %bound0 = icmp ult ptr %2, %scevgep51
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound053 = icmp ult ptr %2, %scevgep52
  %bound154 = icmp ult ptr %1, %scevgep
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx = or i1 %found.conflict, %found.conflict55
  br i1 %conflict.rdx, label %.lr.ph34.split.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count46, 2147483640 ; 3 uses
  %i.j = load float, ptr %i.d, align 4, !tbaa !240, !alias.scope !1013
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
end_hunk_1
