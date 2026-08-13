inline.NumInlined: 2868
inline.NumDeleted: 1469
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv5gimpl8ProtocolaSEOS1_:bb.a

.lr.ph.i.i.i.i.i6:                                ; preds = %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EEaSEOS4_.exit, %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i.i.i.i8
  %.05.i.i.i.i.i7 = phi ptr [ %i.ak, %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i.i.i.i8 ], [ %i.v, %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EEaSEOS4_.exit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i7, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !131
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @constinit.12, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i7, i64 16
  invoke void %i.ag(ptr noundef nonnull %i.ah)
          to label %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i.i.i.i8 unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i6
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #25
  unreachable

_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i.i6
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i7, i64 48 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.ak, %i.x
  br i1 %.not.i.i.i.i.i9, label %_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exit.i.i.i10, label %.lr.ph.i.i.i.i.i6, !llvm.loop !353

_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exit.i.i.i10: ; preds = %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i.i.i.i8, %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EEaSEOS4_.exit
  %.not.i.i1.i.i.i11 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i11, label %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EEaSEOS4_.exit12, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exit.i.i.i10
  %i.al = ptrtoint ptr %i.z to i64
  %i.am = ptrtoint ptr %i.v to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.an) #26
  br label %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EEaSEOS4_.exit12

_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EEaSEOS4_.exit12: ; preds = %_ZSt8_DestroyIPN2cv5gimpl6RcDescES2_EvT_S4_RSaIT0_E.exit.i.i.i10, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !141 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !142 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !116
  %i.av = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !114
  store <2 x ptr> %i.av, ptr %i.ao, align 8, !tbaa !114
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !116
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !116
  %.not4.i.i.i.i.i13 = icmp eq ptr %i.aq, %i.as
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i13, label %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EEaSEOS4_.exit12, %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i15 = phi ptr [ %i.bj, %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i ], [ %i.aq, %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EEaSEOS4_.exit12 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i15, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !143 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12 ; 3 uses
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !25 ; 2 uses
  %i.bd = add nsw i32 %i.bc, -1
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.be = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bc, %bb.g ], [ %i.be, %bb.h ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.i, label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #23, !inline_history !545
  br label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i14
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i15, i64 16 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.bj, %i.as
  br i1 %.not.i.i.i.i.i16, label %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i14, !llvm.loop !146

_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorIN2cv5gimpl6RcDescESaIS2_EEaSEOS4_.exit12
  %.not.i.i1.i.i.i17 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i.i.i17, label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EEaSEOS5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.bk = ptrtoint ptr %i.au to i64
  %i.bl = ptrtoint ptr %i.aq to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bm) #26
  br label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EEaSEOS5_.exit

_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EEaSEOS5_.exit: ; preds = %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !141 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !142 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !116
  %i.bu = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !114
  store <2 x ptr> %i.bu, ptr %i.bn, align 8, !tbaa !114
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !116
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !116
  %.not4.i.i.i.i.i18 = icmp eq ptr %i.bp, %i.br
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i18, label %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i27, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EEaSEOS5_.exit, %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i25
  %.05.i.i.i.i.i20 = phi ptr [ %i.ci, %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i25 ], [ %i.bp, %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EEaSEOS5_.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i20, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !143 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i21 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i.i.i21, label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i25, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12 ; 3 uses
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i.i22 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !25 ; 2 uses
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i23

bb.m:                                             ; preds = %bb.k
  %i.cd = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i23: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i.i.i24 = phi i32 [ %i.cb, %bb.l ], [ %i.cd, %bb.m ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i24, 1
  br i1 %i.ce, label %bb.n, label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i25

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i23
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #23, !inline_history !545
  br label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i25

_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i25: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i23, %.lr.ph.i.i.i.i.i19
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.ci, %i.br
  br i1 %.not.i.i.i.i.i26, label %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i27, label %.lr.ph.i.i.i.i.i19, !llvm.loop !146

_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i27: ; preds = %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i.i.i25, %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EEaSEOS5_.exit
  %.not.i.i1.i.i.i28 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i.i.i28, label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EEaSEOS5_.exit29, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i27
  %i.cj = ptrtoint ptr %i.bt to i64
  %i.ck = ptrtoint ptr %i.bp to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.cl) #26
  br label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EEaSEOS5_.exit29

_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EEaSEOS5_.exit29: ; preds = %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i.i.i27, %bb.o
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE19_M_range_initializeINS0_4util5Range13IterableRangeINS8_8MapRangeINS8_9IterRangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIS2_ES_ISF_SaISF_EEEESJ_EENS0_5Graph12HandleMapperEEEE8iteratorEEEvT_SQ_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef byval(%"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<std::shared_ptr<ade::Node> *, std::vector<std::shared_ptr<ade::Node>>>>, ade::Graph::HandleMapper>>::iterator") align 8 %1, ptr noundef byval(%"struct.ade::util::Range::IterableRange<ade::util::Range::MapRange<ade::util::Range::IterRange<__gnu_cxx::__normal_iterator<std::shared_ptr<ade::Node> *, std::vector<std::shared_ptr<ade::Node>>>>, ade::Graph::HandleMapper>>::iterator") align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ade::Handle", align 16      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !546  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !484
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %.promoted = load ptr, ptr %1, align 8, !tbaa !546 ; 2 uses
  %i.f = icmp eq ptr %.promoted, %i.b
  %or.cond.i.i11 = select i1 %i.f, i1 %i.e, i1 false
  br i1 %or.cond.i.i11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !548, !range !484, !noundef !195
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %2, align 8
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = icmp eq ptr %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %brmerge.not = select i1 %i.i, i1 %i.m, i1 false
  br label %4

4:                                                ; preds = %.lr.ph, %_ZN3ade6HandleINS_4NodeEED2Ev.exit
  %5 = phi ptr [ %.promoted, %.lr.ph ], [ %i.al, %_ZN3ade6HandleINS_4NodeEED2Ev.exit ] ; 3 uses
  br i1 %brmerge.not, label %._crit_edge, label %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESE_EENS_5Graph12HandleMapperEEEE8iteratorneERKSK_.exit

_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESE_EENS_5Graph12HandleMapperEEEE8iteratorneERKSK_.exit: ; preds = %4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21, !noalias !563 ; 2 uses
  %i.s = load <2 x ptr>, ptr %5, align 8, !tbaa !17, !noalias !563
  store <2 x ptr> %i.s, ptr %3, align 16, !tbaa !17, !alias.scope !563
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESE_EENS_5Graph12HandleMapperEEEE8iteratordeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESE_EENS_5Graph12HandleMapperEEEE8iteratorneERKSK_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !563
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.t, align 4, !tbaa !25, !noalias !563
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !25, !noalias !563
  br label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESE_EENS_5Graph12HandleMapperEEEE8iteratordeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4, !noalias !563 ; 0 uses
  br label %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESE_EENS_5Graph12HandleMapperEEEE8iteratordeEv.exit

_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESE_EENS_5Graph12HandleMapperEEEE8iteratordeEv.exit: ; preds = %bb.d, %bb.c, %_ZNK3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESE_EENS_5Graph12HandleMapperEEEE8iteratorneERKSK_.exit
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !142  ; 4 uses
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !116
  %.not.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i, label %bb.e, label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.thread

_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.thread: ; preds = %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESE_EENS_5Graph12HandleMapperEEEE8iteratordeEv.exit
  %i.aa = load <2 x ptr>, ptr %3, align 16, !tbaa !17
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ab, ptr %i.o, align 8, !tbaa !142
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit

bb.e:                                             ; preds = %_ZN3ade4util5Range13IterableRangeINS1_8MapRangeINS1_9IterRangeIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrINS_4NodeEESt6vectorIS9_SaIS9_EEEESE_EENS_5Graph12HandleMapperEEEE8iteratordeEv.exit
  invoke void @_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit unwind label %bb.j

_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e
  %.pr = load ptr, ptr %i.n, align 8, !tbaa !143  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.pr, i64 12 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !25 ; 2 uses
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.i, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.ai = load ptr, ptr %.pr, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23, !inline_history !564
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit

_ZN3ade6HandleINS_4NodeEED2Ev.exit:               ; preds = %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.thread, %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  %or.cond.i.i = select i1 %i.am, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %._crit_edge, label %4

bb.j:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !143 ; 4 uses
  %.not.i.i.i4 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i4, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit8, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i5 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !25 ; 2 uses
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6

bb.m:                                             ; preds = %bb.k
  %i.at = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i7 = phi i32 [ %i.ar, %bb.l ], [ %i.at, %bb.m ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i7, 1
  br i1 %i.au, label %bb.n, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit8

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #23, !inline_history !564
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit8

_ZN3ade6HandleINS_4NodeEED2Ev.exit8:              ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.1 = extractvalue { ptr, i32 } %i.an, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %.1) #23 ; 0 uses
  call void @_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit8
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

._crit_edge:                                      ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit, %4, %bb.a
  ret void

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.az

bb.q:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #25
  unreachable

bb.r:                                             ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit8
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !141    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i, label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !143  ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !25   ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %i.k = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !565
  br label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !146

_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !142
  br label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEES3_EvT_S5_RSaIT0_E.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !141    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #24
  unreachable

_ZNKSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !17
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !17, !alias.scope !569, !noalias !566
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !17, !alias.scope !566, !noalias !569
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i, i8 0, i64 16, i1 false), !alias.scope !569, !noalias !566
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !571

_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.y, %.lr.ph.i.i.i17 ], [ %i.v, %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.x, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.w = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !17, !alias.scope !575, !noalias !572
  store <2 x ptr> %i.w, ptr %.012.i.i.i18, align 8, !tbaa !17, !alias.scope !572, !noalias !575
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19, i8 0, i64 16, i1 false), !alias.scope !575, !noalias !572
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !571

_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.v, %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.y, %.lr.ph.i.i.i17 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !116
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #26
  br label %_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !141
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !142
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cv4util7variantIJNS3_9monostateENS2_8GMatDescENS2_11GScalarDescENS2_10GArrayDescENS2_11GOpaqueDescENS2_10GFrameDescEEEESt6vectorISB_SaISB_EEEEPSB_ET0_T_SK_SJ_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEJRKS9_EEvPT_DpOT0_.exit
  %.019 = phi ptr [ %i.ab, %_ZSt10_ConstructIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEJRKS9_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 8 uses
  %.sroa.010.018 = phi ptr [ %i.aa, %_ZSt10_ConstructIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEJRKS9_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 5 uses
  %i.a = load i64, ptr %.sroa.010.018, align 8, !tbaa !133 ; 2 uses
  store i64 %i.a, ptr %.019, align 8, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8 ; 2 uses
  switch i64 %i.a, label %default.switch.case.unreachable.i [
    i64 0, label %_ZSt10_ConstructIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEJRKS9_EEvPT_DpOT0_.exit
    i64 1, label %call.1.i
    i64 2, label %_ZSt10_ConstructIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEJRKS9_EEvPT_DpOT0_.exit
    i64 3, label %_ZSt10_ConstructIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEJRKS9_EEvPT_DpOT0_.exit
    i64 4, label %_ZSt10_ConstructIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEJRKS9_EEvPT_DpOT0_.exit
    i64 5, label %call.5.i
  ], !prof !425

default.switch.case.unreachable.i:                ; preds = %.lr.ph
  unreachable

call.1.i:                                         ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 17, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.019, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !485  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !365  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.noexc9, label %bb.b
end_hunk_0
