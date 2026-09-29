Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/simulatoralgorithm?download=true
inline.NumInlined: 4332
inline.NumDeleted: 2491
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx16SignallerBuilderINS_17LastStepSignallerEE19buildCallbackVectorIJEEESt6vectorISt8functionIFvldEESaIS7_EEDpOT_:bb.a
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !762
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !29
  store ptr %i.r, ptr %i.q, align 8, !tbaa !29
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !30
  %.not.i.i.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvldEEC2EOS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !396
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !30
  store ptr %i.u, ptr %i.t, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvldEEC2EOS1_.exit.i

_ZNSt8functionIFvldEEC2EOS1_.exit.i:              ; preds = %bb.e, %bb.d
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !761
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.e, align 8, !tbaa !761
  br label %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.f:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorISt8functionIFvldEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #30
  br label %bb.l

_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.f, %_ZNSt8functionIFvldEEC2EOS1_.exit.i, %_ZN3gmx16SignallerBuilderINS_17LastStepSignallerEE20getSignallerCallbackIJEEESt8optionalISt8functionIFvldEEEPNS_24ILastStepSignallerClientEDpOT_.exit
  %i.z = load i8, ptr %i.d, align 8, !tbaa !33, !range !250, !noundef !242
  %i.aa = trunc nuw i8 %i.z to i1
  store i8 0, ptr %i.d, align 8, !tbaa !33
  br i1 %i.aa, label %bb.i, label %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 3)
          to label %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #31
  unreachable

_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZNSt6vectorISt8functionIFvldEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #30
  resume { ptr, i32 } %.pn
}

declare void @_ZN3gmx17LastStepSignallerC1ESt6vectorISt8functionIFvldEESaIS4_EEllPNS_11StopHandlerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef align 8, i64 noundef, i64 noundef, ptr noundef) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE19buildCallbackVectorIJEEESt6vectorISt8functionIFvldEESaIS7_EEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.1012") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::optional", align 8     ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !1306   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1306 ; 2 uses
  %.not11 = icmp eq ptr %i.a, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit
  %.sroa.08.012 = phi ptr [ %i.a, %.lr.ph ], [ %i.af, %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.i = load ptr, ptr %.sroa.08.012, align 8, !tbaa !718 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !180, !noalias !1307
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1307
  invoke void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE20getSignallerCallbackIJEEESt8optionalISt8functionIFvldEEEPNS_30INeighborSearchSignallerClientEDpOT_.exit unwind label %bb.g, !inline_history !1305

_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE20getSignallerCallbackIJEEESt8optionalISt8functionIFvldEEEPNS_30INeighborSearchSignallerClientEDpOT_.exit: ; preds = %bb.b
  %i.m = load i8, ptr %i.d, align 8, !tbaa !33, !range !250, !noundef !242
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.c:                                             ; preds = %_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE20getSignallerCallbackIJEEESt8optionalISt8functionIFvldEEEPNS_30INeighborSearchSignallerClientEDpOT_.exit
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !761  ; 6 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !762
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !29
  store ptr %i.r, ptr %i.q, align 8, !tbaa !29
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !30
  %.not.i.i.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvldEEC2EOS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !396
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !30
  store ptr %i.u, ptr %i.t, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvldEEC2EOS1_.exit.i

_ZNSt8functionIFvldEEC2EOS1_.exit.i:              ; preds = %bb.e, %bb.d
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !761
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.e, align 8, !tbaa !761
  br label %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.f:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorISt8functionIFvldEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #30
  br label %bb.l

_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.f, %_ZNSt8functionIFvldEEC2EOS1_.exit.i, %_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE20getSignallerCallbackIJEEESt8optionalISt8functionIFvldEEEPNS_30INeighborSearchSignallerClientEDpOT_.exit
  %i.z = load i8, ptr %i.d, align 8, !tbaa !33, !range !250, !noundef !242
  %i.aa = trunc nuw i8 %i.z to i1
  store i8 0, ptr %i.d, align 8, !tbaa !33
  br i1 %i.aa, label %bb.i, label %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 3)
          to label %_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #31
  unreachable

_ZNSt14_Optional_baseISt8functionIFvldEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt8functionIFvldEESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZNSt6vectorISt8functionIFvldEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #30
  resume { ptr, i32 } %.pn
}

declare void @_ZN3gmx23NeighborSearchSignallerC1ESt6vectorISt8functionIFvldEESaIS4_EElld(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef align 8, i64 noundef, i64 noundef, double noundef) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %.not116 = icmp eq ptr %2, %3
  br i1 %.not116, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !224  ; 31 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %iter.check230, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

iter.check230:                                    ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 9 uses
  %i.r = add i64 %i.b, -8
  %i.s = sub i64 %i.r, %i.c                       ; 3 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 5 uses
  %min.iters.check212 = icmp ult i64 %i.s, 24
  br i1 %min.iters.check212, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck206

vector.memcheck206:                               ; preds = %iter.check230
  %i.v = add i64 %i.b, -8
  %i.w = sub i64 %i.v, %i.c
  %i.x = and i64 %i.w, -8                         ; 2 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep207 = getelementptr i8, ptr %i.y, i64 8
  %i.z = add i64 %i.x, %i.c
  %i.aa = add i64 %i.z, 8
  %i.ab = sub i64 %i.aa, %i.b
  %scevgep208 = getelementptr i8, ptr %i.i, i64 %i.ab
  %bound0209 = icmp ult ptr %i.i, %scevgep208
  %bound1210 = icmp ult ptr %i.q, %scevgep207
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check213

vector.main.loop.iter.check213:                   ; preds = %vector.memcheck206
  %min.iters.check214 = icmp ult i64 %i.s, 120
  br i1 %min.iters.check214, label %vec.epilog.ph234, label %vector.ph215

vector.ph215:                                     ; preds = %vector.main.loop.iter.check213
  %i.ac = and i64 %i.u, 12
  %n.vec216 = and i64 %i.u, 4611686018427387888   ; 4 uses
  %i.ad = shl i64 %n.vec216, 3                    ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.q, i64 %i.ad
  br label %vector.body217

vector.body217:                                   ; preds = %vector.ph215, %vector.body217
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next225, %vector.body217 ] ; 2 uses
  %i.ag = shl i64 %index218, 3                    ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.i, i64 %i.ag ; 4 uses
  %next.gep220 = getelementptr i8, ptr %i.q, i64 %i.ag ; 8 uses
  %i.ah = getelementptr i8, ptr %next.gep220, i64 32
  %i.ai = getelementptr i8, ptr %next.gep220, i64 64
  %i.aj = getelementptr i8, ptr %next.gep220, i64 96
  %wide.load221 = load <4 x i64>, ptr %next.gep220, align 8, !tbaa !226, !alias.scope !1348
  %wide.load222 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !226, !alias.scope !1348
  %wide.load223 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !226, !alias.scope !1348
  %wide.load224 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !226, !alias.scope !1348
  %i.ak = getelementptr i8, ptr %next.gep219, i64 32
  %i.al = getelementptr i8, ptr %next.gep219, i64 64
  %i.am = getelementptr i8, ptr %next.gep219, i64 96
  store <4 x i64> %wide.load221, ptr %next.gep219, align 8, !tbaa !226, !alias.scope !1349, !noalias !1348
  store <4 x i64> %wide.load222, ptr %i.ak, align 8, !tbaa !226, !alias.scope !1349, !noalias !1348
  store <4 x i64> %wide.load223, ptr %i.al, align 8, !tbaa !226, !alias.scope !1349, !noalias !1348
  store <4 x i64> %wide.load224, ptr %i.am, align 8, !tbaa !226, !alias.scope !1349, !noalias !1348
  %i.an = getelementptr i8, ptr %next.gep220, i64 32
  %i.ao = getelementptr i8, ptr %next.gep220, i64 64
  %i.ap = getelementptr i8, ptr %next.gep220, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep220, align 8, !tbaa !226, !alias.scope !1348
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !226, !alias.scope !1348
  store <4 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !226, !alias.scope !1348
  store <4 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !226, !alias.scope !1348
  %index.next225 = add nuw i64 %index218, 16      ; 2 uses
  %i.aq = icmp eq i64 %index.next225, %n.vec216
  br i1 %i.aq, label %middle.block226, label %vector.body217, !llvm.loop !1311

middle.block226:                                  ; preds = %vector.body217
  %cmp.n227 = icmp eq i64 %i.u, %n.vec216
  br i1 %cmp.n227, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %vec.epilog.iter.check232

vec.epilog.iter.check232:                         ; preds = %middle.block226
  %min.epilog.iters.check233 = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check233, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph234, !prof !753

vec.epilog.ph234:                                 ; preds = %vector.main.loop.iter.check213, %vec.epilog.iter.check232
  %vec.epilog.resume.val228 = phi i64 [ %n.vec216, %vec.epilog.iter.check232 ], [ 0, %vector.main.loop.iter.check213 ]
  %n.vec235 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec235, 3                    ; 2 uses
  %i.as = getelementptr i8, ptr %i.i, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.q, i64 %i.ar
  br label %vec.epilog.vector.body236

vec.epilog.vector.body236:                        ; preds = %vec.epilog.vector.body236, %vec.epilog.ph234
  %index237 = phi i64 [ %vec.epilog.resume.val228, %vec.epilog.ph234 ], [ %index.next241, %vec.epilog.vector.body236 ] ; 2 uses
  %i.au = shl i64 %index237, 3                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.i, i64 %i.au
  %next.gep239 = getelementptr i8, ptr %i.q, i64 %i.au ; 2 uses
  %wide.load240 = load <4 x i64>, ptr %next.gep239, align 8, !tbaa !226, !alias.scope !1348
  store <4 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !226, !alias.scope !1349, !noalias !1348
  store <4 x ptr> splat (ptr null), ptr %next.gep239, align 8, !tbaa !226, !alias.scope !1348
  %index.next241 = add nuw i64 %index237, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next241, %n.vec235
  br i1 %i.av, label %vec.epilog.middle.block242, label %vec.epilog.vector.body236, !llvm.loop !1312

vec.epilog.middle.block242:                       ; preds = %vec.epilog.vector.body236
  %cmp.n243 = icmp eq i64 %i.u, %n.vec235
  br i1 %cmp.n243, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check230, %vector.memcheck206, %vec.epilog.iter.check232, %vec.epilog.middle.block242
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check230 ], [ %i.i, %vector.memcheck206 ], [ %i.ae, %vec.epilog.iter.check232 ], [ %i.as, %vec.epilog.middle.block242 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %iter.check230 ], [ %i.q, %vector.memcheck206 ], [ %i.af, %vec.epilog.iter.check232 ], [ %i.at, %vec.epilog.middle.block242 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.aw = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !226
  store i64 %i.aw, ptr %.013.i.i.i.i.i, align 8, !tbaa !226
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !226
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1313

_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block242, %middle.block226
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.az, ptr %i.h, align 8, !tbaa !224
  %i.ba = ptrtoint ptr %i.q to i64
  %i.bb = sub i64 %i.ba, %i.m
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bl, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %i.bc, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bf, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %i.i, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.be, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %i.q, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !226
  store ptr null, ptr %i.be, align 8, !tbaa !226
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !226 ; 3 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !226
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i51
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !180
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #30, !inline_history !1314
  br label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i51
  %i.bl = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bm = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit, !llvm.loop !1315

_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit: ; preds = %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.bn = icmp sgt i64 %i.e, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55
  %.012.i.i.i.i.i = phi i64 [ %i.bv, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55 ], [ %i.e, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bu, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55 ], [ %1, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bt, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55 ], [ %2, %_ZSt13move_backwardIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %i.bo = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !226
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !226
  %i.bp = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !226 ; 3 uses
  store ptr %i.bo, ptr %.0811.i.i.i.i.i, align 8, !tbaa !226
  %.not.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i53, label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55, label %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i54

_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i52
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !180
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #30, !inline_history !1316
  br label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55

_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i55: ; preds = %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i54, %.lr.ph.i.i.i.i.i52
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bv = add nsw i64 %.012.i.i.i.i.i, -1
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag:bb.a
  %i.dh = load i64, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !226
  store i64 %i.dh, ptr %.012.i.i.i.i, align 8, !tbaa !226
  store ptr null, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !226
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.di, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1323

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.dk = sub nsw i64 %i.e, %i.o
  %i.dl = getelementptr [8 x i8], ptr %i.i, i64 %i.dk ; 7 uses
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %iter.check190

iter.check190:                                    ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.dm = add i64 %i.k, -8
  %i.dn = sub i64 %i.dm, %i.m                     ; 3 uses
  %i.do = lshr i64 %i.dn, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 5 uses
  %min.iters.check172 = icmp ult i64 %i.dn, 24
  br i1 %min.iters.check172, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.memcheck166

vector.memcheck166:                               ; preds = %iter.check190
  %i.dq = add i64 %i.k, -8
  %i.dr = sub i64 %i.dq, %i.m
  %i.ds = and i64 %i.dr, -8                       ; 2 uses
  %i.dt = add i64 %i.d, %i.ds
  %i.du = add i64 %i.dt, 8
  %i.dv = sub i64 %i.du, %i.n
  %scevgep167 = getelementptr i8, ptr %i.i, i64 %i.dv
  %i.dw = getelementptr i8, ptr %1, i64 %i.ds
  %scevgep168 = getelementptr i8, ptr %i.dw, i64 8
  %bound0169 = icmp ult ptr %i.dl, %scevgep168
  %bound1170 = icmp ult ptr %1, %scevgep167
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.main.loop.iter.check173

vector.main.loop.iter.check173:                   ; preds = %vector.memcheck166
  %min.iters.check174 = icmp ult i64 %i.dn, 120
  br i1 %min.iters.check174, label %vec.epilog.ph194, label %vector.ph175

vector.ph175:                                     ; preds = %vector.main.loop.iter.check173
  %i.dx = and i64 %i.dp, 12
  %n.vec176 = and i64 %i.dp, 4611686018427387888  ; 4 uses
  %i.dy = shl i64 %n.vec176, 3                    ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dl, i64 %i.dy
  %i.ea = getelementptr i8, ptr %1, i64 %i.dy
  br label %vector.body177

vector.body177:                                   ; preds = %vector.ph175, %vector.body177
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next185, %vector.body177 ] ; 2 uses
  %i.eb = shl i64 %index178, 3                    ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.dl, i64 %i.eb ; 4 uses
  %next.gep180 = getelementptr i8, ptr %1, i64 %i.eb ; 8 uses
  %i.ec = getelementptr i8, ptr %next.gep180, i64 32
  %i.ed = getelementptr i8, ptr %next.gep180, i64 64
  %i.ee = getelementptr i8, ptr %next.gep180, i64 96
  %wide.load181 = load <4 x i64>, ptr %next.gep180, align 8, !tbaa !226, !alias.scope !1352
  %wide.load182 = load <4 x i64>, ptr %i.ec, align 8, !tbaa !226, !alias.scope !1352
  %wide.load183 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !226, !alias.scope !1352
  %wide.load184 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !226, !alias.scope !1352
  %i.ef = getelementptr i8, ptr %next.gep179, i64 32
  %i.eg = getelementptr i8, ptr %next.gep179, i64 64
  %i.eh = getelementptr i8, ptr %next.gep179, i64 96
  store <4 x i64> %wide.load181, ptr %next.gep179, align 8, !tbaa !226, !alias.scope !1353, !noalias !1352
  store <4 x i64> %wide.load182, ptr %i.ef, align 8, !tbaa !226, !alias.scope !1353, !noalias !1352
  store <4 x i64> %wide.load183, ptr %i.eg, align 8, !tbaa !226, !alias.scope !1353, !noalias !1352
  store <4 x i64> %wide.load184, ptr %i.eh, align 8, !tbaa !226, !alias.scope !1353, !noalias !1352
  %i.ei = getelementptr i8, ptr %next.gep180, i64 32
  %i.ej = getelementptr i8, ptr %next.gep180, i64 64
  %i.ek = getelementptr i8, ptr %next.gep180, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep180, align 8, !tbaa !226, !alias.scope !1352
  store <4 x ptr> splat (ptr null), ptr %i.ei, align 8, !tbaa !226, !alias.scope !1352
  store <4 x ptr> splat (ptr null), ptr %i.ej, align 8, !tbaa !226, !alias.scope !1352
  store <4 x ptr> splat (ptr null), ptr %i.ek, align 8, !tbaa !226, !alias.scope !1352
  %index.next185 = add nuw i64 %index178, 16      ; 2 uses
  %i.el = icmp eq i64 %index.next185, %n.vec176
  br i1 %i.el, label %middle.block186, label %vector.body177, !llvm.loop !1327

middle.block186:                                  ; preds = %vector.body177
  %cmp.n187 = icmp eq i64 %i.dp, %n.vec176
  br i1 %cmp.n187, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %vec.epilog.iter.check192

vec.epilog.iter.check192:                         ; preds = %middle.block186
  %min.epilog.iters.check193 = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check193, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph194, !prof !753

vec.epilog.ph194:                                 ; preds = %vector.main.loop.iter.check173, %vec.epilog.iter.check192
  %vec.epilog.resume.val188 = phi i64 [ %n.vec176, %vec.epilog.iter.check192 ], [ 0, %vector.main.loop.iter.check173 ]
  %n.vec195 = and i64 %i.dp, 4611686018427387900  ; 3 uses
  %i.em = shl i64 %n.vec195, 3                    ; 2 uses
  %i.en = getelementptr i8, ptr %i.dl, i64 %i.em
  %i.eo = getelementptr i8, ptr %1, i64 %i.em
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph194
  %index197 = phi i64 [ %vec.epilog.resume.val188, %vec.epilog.ph194 ], [ %index.next201, %vec.epilog.vector.body196 ] ; 2 uses
  %i.ep = shl i64 %index197, 3                    ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.dl, i64 %i.ep
  %next.gep199 = getelementptr i8, ptr %1, i64 %i.ep ; 2 uses
  %wide.load200 = load <4 x i64>, ptr %next.gep199, align 8, !tbaa !226, !alias.scope !1352
  store <4 x i64> %wide.load200, ptr %next.gep198, align 8, !tbaa !226, !alias.scope !1353, !noalias !1352
  store <4 x ptr> splat (ptr null), ptr %next.gep199, align 8, !tbaa !226, !alias.scope !1352
  %index.next201 = add nuw i64 %index197, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next201, %n.vec195
  br i1 %i.eq, label %vec.epilog.middle.block202, label %vec.epilog.vector.body196, !llvm.loop !1328

vec.epilog.middle.block202:                       ; preds = %vec.epilog.vector.body196
  %cmp.n203 = icmp eq i64 %i.dp, %n.vec195
  br i1 %cmp.n203, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check190, %vector.memcheck166, %vec.epilog.iter.check192, %vec.epilog.middle.block202
  %.013.i.i.i.i.i58.ph = phi ptr [ %i.dl, %iter.check190 ], [ %i.dl, %vector.memcheck166 ], [ %i.dz, %vec.epilog.iter.check192 ], [ %i.en, %vec.epilog.middle.block202 ]
  %.sroa.08.012.i.i.i.i.i59.ph = phi ptr [ %1, %iter.check190 ], [ %1, %vector.memcheck166 ], [ %i.ea, %vec.epilog.iter.check192 ], [ %i.eo, %vec.epilog.middle.block202 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i57 ], [ %.013.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i57 ], [ %.sroa.08.012.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 3 uses
  %i.er = load i64, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !226
  store i64 %i.er, ptr %.013.i.i.i.i.i58, align 8, !tbaa !226
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !226
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 8
  %.not.i.i.i.i.i60 = icmp eq ptr %i.es, %i.i
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57, !llvm.loop !1329

_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62: ; preds = %.lr.ph.i.i.i.i.i57, %middle.block186, %vec.epilog.middle.block202, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.eu, ptr %i.h, align 8, !tbaa !224
  %i.ev = ashr exact i64 %i.n, 3                  ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i64:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70
  %.012.i.i.i.i.i65 = phi i64 [ %i.fe, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70 ], [ %i.ev, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 2 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.fd, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70 ], [ %1, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %.0910.i.i.i.i.i67 = phi ptr [ %i.fc, %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70 ], [ %2, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %i.ex = load ptr, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !226
  store ptr null, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !226
  %i.ey = load ptr, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !226 ; 3 uses
  store ptr %i.ex, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !226
  %.not.i.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i.i.i.i68, label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70, label %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i69

_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i64
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !180
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8
  tail call void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ey) #30, !inline_history !1316
  br label %_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70

_ZNSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i70: ; preds = %_ZNKSt14default_deleteIN3gmx17ISimulatorElementEEclEPS1_.exit.i.i.i.i.i.i.i.i.i69, %.lr.ph.i.i.i.i.i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i67, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  %i.fe = add nsw i64 %.012.i.i.i.i.i65, -1
  %i.ff = icmp sgt i64 %.012.i.i.i.i.i65, 1
  br i1 %i.ff, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1317

bb.d:                                             ; preds = %bb.b
  %i.fg = load ptr, ptr %0, align 8, !tbaa !223   ; 14 uses
  %i.fh = ptrtoint ptr %i.fg to i64               ; 4 uses
  %i.fi = sub i64 %i.k, %i.fh
  %i.fj = ashr exact i64 %i.fi, 3                 ; 4 uses
  %i.fk = sub nsw i64 1152921504606846975, %i.fj
  %i.fl = icmp ult i64 %i.fk, %i.e
  br i1 %i.fl, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #33
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 %i.e)
  %i.fm = add nsw i64 %.sroa.speculated.i, %i.fj  ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.fj
  %i.fo = tail call i64 @llvm.umin.i64(i64 %i.fm, i64 1152921504606846975)
  %i.fp = select i1 %i.fn, i64 1152921504606846975, i64 %i.fo ; 3 uses
  %.not.i = icmp eq i64 %i.fp, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #29
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit, %bb.f
  %i.fs = phi ptr [ %i.fr, %bb.f ], [ null, %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ] ; 11 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %i.fg, %1
  br i1 %.not11.i.i.i.i.i72, label %iter.check310, label %iter.check270

iter.check270:                                    ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit
  %i.ft = add i64 %i.a, -8
  %i.fu = sub i64 %i.ft, %i.fh                    ; 3 uses
  %i.fv = lshr i64 %i.fu, 3
  %i.fw = add nuw nsw i64 %i.fv, 1                ; 5 uses
  %min.iters.check252 = icmp ult i64 %i.fu, 24
  br i1 %min.iters.check252, label %.lr.ph.i.i.i.i.i73.preheader, label %vector.memcheck246

vector.memcheck246:                               ; preds = %iter.check270
  %i.fx = add i64 %i.a, -8
  %i.fy = sub i64 %i.fx, %i.fh
  %i.fz = and i64 %i.fy, -8
  %i.ga = add i64 %i.fz, 8                        ; 2 uses
  %scevgep247 = getelementptr i8, ptr %i.fs, i64 %i.ga
  %scevgep248 = getelementptr i8, ptr %i.fg, i64 %i.ga
  %bound0249 = icmp ult ptr %i.fs, %scevgep248
  %bound1250 = icmp ult ptr %i.fg, %scevgep247
  %found.conflict251 = and i1 %bound0249, %bound1250
  br i1 %found.conflict251, label %.lr.ph.i.i.i.i.i73.preheader, label %vector.main.loop.iter.check253

vector.main.loop.iter.check253:                   ; preds = %vector.memcheck246
  %min.iters.check254 = icmp ult i64 %i.fu, 120
  br i1 %min.iters.check254, label %vec.epilog.ph274, label %vector.ph255

vector.ph255:                                     ; preds = %vector.main.loop.iter.check253
  %i.gb = and i64 %i.fw, 12
  %n.vec256 = and i64 %i.fw, 4611686018427387888  ; 4 uses
  %i.gc = shl i64 %n.vec256, 3                    ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fs, i64 %i.gc  ; 2 uses
  %i.ge = getelementptr i8, ptr %i.fg, i64 %i.gc
  br label %vector.body257

vector.body257:                                   ; preds = %vector.ph255, %vector.body257
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next265, %vector.body257 ] ; 2 uses
  %i.gf = shl i64 %index258, 3                    ; 2 uses
  %next.gep259 = getelementptr i8, ptr %i.fs, i64 %i.gf ; 4 uses
  %next.gep260 = getelementptr i8, ptr %i.fg, i64 %i.gf ; 8 uses
  %i.gg = getelementptr i8, ptr %next.gep260, i64 32
  %i.gh = getelementptr i8, ptr %next.gep260, i64 64
  %i.gi = getelementptr i8, ptr %next.gep260, i64 96
  %wide.load261 = load <4 x i64>, ptr %next.gep260, align 8, !tbaa !226, !alias.scope !1354
  %wide.load262 = load <4 x i64>, ptr %i.gg, align 8, !tbaa !226, !alias.scope !1354
  %wide.load263 = load <4 x i64>, ptr %i.gh, align 8, !tbaa !226, !alias.scope !1354
  %wide.load264 = load <4 x i64>, ptr %i.gi, align 8, !tbaa !226, !alias.scope !1354
  %i.gj = getelementptr i8, ptr %next.gep259, i64 32
  %i.gk = getelementptr i8, ptr %next.gep259, i64 64
  %i.gl = getelementptr i8, ptr %next.gep259, i64 96
  store <4 x i64> %wide.load261, ptr %next.gep259, align 8, !tbaa !226, !alias.scope !1355, !noalias !1354
  store <4 x i64> %wide.load262, ptr %i.gj, align 8, !tbaa !226, !alias.scope !1355, !noalias !1354
  store <4 x i64> %wide.load263, ptr %i.gk, align 8, !tbaa !226, !alias.scope !1355, !noalias !1354
  store <4 x i64> %wide.load264, ptr %i.gl, align 8, !tbaa !226, !alias.scope !1355, !noalias !1354
  %i.gm = getelementptr i8, ptr %next.gep260, i64 32
  %i.gn = getelementptr i8, ptr %next.gep260, i64 64
  %i.go = getelementptr i8, ptr %next.gep260, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep260, align 8, !tbaa !226, !alias.scope !1354
  store <4 x ptr> splat (ptr null), ptr %i.gm, align 8, !tbaa !226, !alias.scope !1354
  store <4 x ptr> splat (ptr null), ptr %i.gn, align 8, !tbaa !226, !alias.scope !1354
  store <4 x ptr> splat (ptr null), ptr %i.go, align 8, !tbaa !226, !alias.scope !1354
  %index.next265 = add nuw i64 %index258, 16      ; 2 uses
  %i.gp = icmp eq i64 %index.next265, %n.vec256
  br i1 %i.gp, label %middle.block266, label %vector.body257, !llvm.loop !1333

middle.block266:                                  ; preds = %vector.body257
  %cmp.n267 = icmp eq i64 %i.fw, %n.vec256
  br i1 %cmp.n267, label %iter.check310, label %vec.epilog.iter.check272

vec.epilog.iter.check272:                         ; preds = %middle.block266
  %min.epilog.iters.check273 = icmp eq i64 %i.gb, 0
  br i1 %min.epilog.iters.check273, label %.lr.ph.i.i.i.i.i73.preheader, label %vec.epilog.ph274, !prof !753

vec.epilog.ph274:                                 ; preds = %vector.main.loop.iter.check253, %vec.epilog.iter.check272
  %vec.epilog.resume.val268 = phi i64 [ %n.vec256, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check253 ]
  %n.vec275 = and i64 %i.fw, 4611686018427387900  ; 3 uses
  %i.gq = shl i64 %n.vec275, 3                    ; 2 uses
  %i.gr = getelementptr i8, ptr %i.fs, i64 %i.gq  ; 2 uses
  %i.gs = getelementptr i8, ptr %i.fg, i64 %i.gq
  br label %vec.epilog.vector.body276

vec.epilog.vector.body276:                        ; preds = %vec.epilog.vector.body276, %vec.epilog.ph274
  %index277 = phi i64 [ %vec.epilog.resume.val268, %vec.epilog.ph274 ], [ %index.next281, %vec.epilog.vector.body276 ] ; 2 uses
  %i.gt = shl i64 %index277, 3                    ; 2 uses
  %next.gep278 = getelementptr i8, ptr %i.fs, i64 %i.gt
  %next.gep279 = getelementptr i8, ptr %i.fg, i64 %i.gt ; 2 uses
  %wide.load280 = load <4 x i64>, ptr %next.gep279, align 8, !tbaa !226, !alias.scope !1354
  store <4 x i64> %wide.load280, ptr %next.gep278, align 8, !tbaa !226, !alias.scope !1355, !noalias !1354
  store <4 x ptr> splat (ptr null), ptr %next.gep279, align 8, !tbaa !226, !alias.scope !1354
  %index.next281 = add nuw i64 %index277, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next281, %n.vec275
  br i1 %i.gu, label %vec.epilog.middle.block282, label %vec.epilog.vector.body276, !llvm.loop !1334

vec.epilog.middle.block282:                       ; preds = %vec.epilog.vector.body276
  %cmp.n283 = icmp eq i64 %i.fw, %n.vec275
  br i1 %cmp.n283, label %iter.check310, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %iter.check270, %vector.memcheck246, %vec.epilog.iter.check272, %vec.epilog.middle.block282
  %.013.i.i.i.i.i74.ph = phi ptr [ %i.fs, %iter.check270 ], [ %i.fs, %vector.memcheck246 ], [ %i.gd, %vec.epilog.iter.check272 ], [ %i.gr, %vec.epilog.middle.block282 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %i.fg, %iter.check270 ], [ %i.fg, %vector.memcheck246 ], [ %i.ge, %vec.epilog.iter.check272 ], [ %i.gs, %vec.epilog.middle.block282 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader ] ; 3 uses
  %i.gv = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !226
  store i64 %i.gv, ptr %.013.i.i.i.i.i74, align 8, !tbaa !226
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !226
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.gw, %1
  br i1 %.not.i.i.i.i.i76, label %iter.check310, label %.lr.ph.i.i.i.i.i73, !llvm.loop !1335

iter.check310:                                    ; preds = %.lr.ph.i.i.i.i.i73, %middle.block266, %vec.epilog.middle.block282, %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %i.fs, %_ZNSt12_Vector_baseISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit ], [ %i.gr, %vec.epilog.middle.block282 ], [ %i.gd, %middle.block266 ], [ %i.gx, %.lr.ph.i.i.i.i.i73 ] ; 8 uses
  %i.gy = add i64 %i.b, -8
  %i.gz = sub i64 %i.gy, %i.c                     ; 3 uses
  %i.ha = lshr i64 %i.gz, 3
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 5 uses
  %min.iters.check292 = icmp ult i64 %i.gz, 24
  br i1 %min.iters.check292, label %.lr.ph.i.i.i.i79.preheader, label %vector.memcheck286

vector.memcheck286:                               ; preds = %iter.check310
  %i.hc = add i64 %i.b, -8
  %i.hd = sub i64 %i.hc, %i.c
  %i.he = and i64 %i.hd, -8
  %i.hf = add i64 %i.he, 8                        ; 2 uses
  %scevgep287 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.hf
  %scevgep288 = getelementptr i8, ptr %2, i64 %i.hf
  %bound0289 = icmp ult ptr %.0.lcssa.i.i.i.i.i77, %scevgep288
  %bound1290 = icmp ult ptr %2, %scevgep287
  %found.conflict291 = and i1 %bound0289, %bound1290
  br i1 %found.conflict291, label %.lr.ph.i.i.i.i79.preheader, label %vector.main.loop.iter.check293

vector.main.loop.iter.check293:                   ; preds = %vector.memcheck286
  %min.iters.check294 = icmp ult i64 %i.gz, 120
  br i1 %min.iters.check294, label %vec.epilog.ph314, label %vector.ph295

vector.ph295:                                     ; preds = %vector.main.loop.iter.check293
  %i.hg = and i64 %i.hb, 12
  %n.vec296 = and i64 %i.hb, 4611686018427387888  ; 4 uses
  %i.hh = shl i64 %n.vec296, 3                    ; 2 uses
  %i.hi = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.hh ; 2 uses
  %i.hj = getelementptr i8, ptr %2, i64 %i.hh
  br label %vector.body297

vector.body297:                                   ; preds = %vector.ph295, %vector.body297
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next305, %vector.body297 ] ; 2 uses
  %i.hk = shl i64 %index298, 3                    ; 2 uses
  %next.gep299 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.hk ; 4 uses
  %next.gep300 = getelementptr i8, ptr %2, i64 %i.hk ; 8 uses
  %i.hl = getelementptr i8, ptr %next.gep300, i64 32
  %i.hm = getelementptr i8, ptr %next.gep300, i64 64
  %i.hn = getelementptr i8, ptr %next.gep300, i64 96
  %wide.load301 = load <4 x i64>, ptr %next.gep300, align 8, !tbaa !226, !alias.scope !1356
  %wide.load302 = load <4 x i64>, ptr %i.hl, align 8, !tbaa !226, !alias.scope !1356
  %wide.load303 = load <4 x i64>, ptr %i.hm, align 8, !tbaa !226, !alias.scope !1356
  %wide.load304 = load <4 x i64>, ptr %i.hn, align 8, !tbaa !226, !alias.scope !1356
  %i.ho = getelementptr i8, ptr %next.gep299, i64 32
  %i.hp = getelementptr i8, ptr %next.gep299, i64 64
  %i.hq = getelementptr i8, ptr %next.gep299, i64 96
  store <4 x i64> %wide.load301, ptr %next.gep299, align 8, !tbaa !226, !alias.scope !1357, !noalias !1356
  store <4 x i64> %wide.load302, ptr %i.ho, align 8, !tbaa !226, !alias.scope !1357, !noalias !1356
  store <4 x i64> %wide.load303, ptr %i.hp, align 8, !tbaa !226, !alias.scope !1357, !noalias !1356
  store <4 x i64> %wide.load304, ptr %i.hq, align 8, !tbaa !226, !alias.scope !1357, !noalias !1356
  %i.hr = getelementptr i8, ptr %next.gep300, i64 32
  %i.hs = getelementptr i8, ptr %next.gep300, i64 64
  %i.ht = getelementptr i8, ptr %next.gep300, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep300, align 8, !tbaa !226, !alias.scope !1356
  store <4 x ptr> splat (ptr null), ptr %i.hr, align 8, !tbaa !226, !alias.scope !1356
  store <4 x ptr> splat (ptr null), ptr %i.hs, align 8, !tbaa !226, !alias.scope !1356
  store <4 x ptr> splat (ptr null), ptr %i.ht, align 8, !tbaa !226, !alias.scope !1356
  %index.next305 = add nuw i64 %index298, 16      ; 2 uses
  %i.hu = icmp eq i64 %index.next305, %n.vec296
  br i1 %i.hu, label %middle.block306, label %vector.body297, !llvm.loop !1339

middle.block306:                                  ; preds = %vector.body297
  %cmp.n307 = icmp eq i64 %i.hb, %n.vec296
  br i1 %cmp.n307, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %vec.epilog.iter.check312

vec.epilog.iter.check312:                         ; preds = %middle.block306
  %min.epilog.iters.check313 = icmp eq i64 %i.hg, 0
  br i1 %min.epilog.iters.check313, label %.lr.ph.i.i.i.i79.preheader, label %vec.epilog.ph314, !prof !753

vec.epilog.ph314:                                 ; preds = %vector.main.loop.iter.check293, %vec.epilog.iter.check312
  %vec.epilog.resume.val308 = phi i64 [ %n.vec296, %vec.epilog.iter.check312 ], [ 0, %vector.main.loop.iter.check293 ]
  %n.vec315 = and i64 %i.hb, 4611686018427387900  ; 3 uses
  %i.hv = shl i64 %n.vec315, 3                    ; 2 uses
  %i.hw = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.hv ; 2 uses
  %i.hx = getelementptr i8, ptr %2, i64 %i.hv
  br label %vec.epilog.vector.body316

vec.epilog.vector.body316:                        ; preds = %vec.epilog.vector.body316, %vec.epilog.ph314
  %index317 = phi i64 [ %vec.epilog.resume.val308, %vec.epilog.ph314 ], [ %index.next321, %vec.epilog.vector.body316 ] ; 2 uses
  %i.hy = shl i64 %index317, 3                    ; 2 uses
  %next.gep318 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.hy
  %next.gep319 = getelementptr i8, ptr %2, i64 %i.hy ; 2 uses
  %wide.load320 = load <4 x i64>, ptr %next.gep319, align 8, !tbaa !226, !alias.scope !1356
  store <4 x i64> %wide.load320, ptr %next.gep318, align 8, !tbaa !226, !alias.scope !1357, !noalias !1356
  store <4 x ptr> splat (ptr null), ptr %next.gep319, align 8, !tbaa !226, !alias.scope !1356
  %index.next321 = add nuw i64 %index317, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next321, %n.vec315
  br i1 %i.hz, label %vec.epilog.middle.block322, label %vec.epilog.vector.body316, !llvm.loop !1340

vec.epilog.middle.block322:                       ; preds = %vec.epilog.vector.body316
  %cmp.n323 = icmp eq i64 %i.hb, %n.vec315
  br i1 %cmp.n323, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79.preheader

.lr.ph.i.i.i.i79.preheader:                       ; preds = %iter.check310, %vector.memcheck286, %vec.epilog.iter.check312, %vec.epilog.middle.block322
  %.012.i.i.i.i80.ph = phi ptr [ %.0.lcssa.i.i.i.i.i77, %iter.check310 ], [ %.0.lcssa.i.i.i.i.i77, %vector.memcheck286 ], [ %i.hi, %vec.epilog.iter.check312 ], [ %i.hw, %vec.epilog.middle.block322 ]
  %.sroa.08.011.i.i.i.i81.ph = phi ptr [ %2, %iter.check310 ], [ %2, %vector.memcheck286 ], [ %i.hj, %vec.epilog.iter.check312 ], [ %i.hx, %vec.epilog.middle.block322 ]
  br label %.lr.ph.i.i.i.i79

end_hunk_1
