Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_encoder?download=true
inline.NumInlined: 1684
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN2cvL9gfPolyDivERKSt6vectorIhSaIhEES4_iRS2_:bb.a

bb.f:                                             ; preds = %bb.c
  %i.q = load i8, ptr %.0.val, align 1, !tbaa !10
  store i8 %i.q, ptr %i.m, align 1, !tbaa !10
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.e, %bb.d, %bb.f
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  %i.s = phi ptr [ %i.m, %bb.d ], [ null, %bb.e ], [ %i.m, %bb.f ] ; 9 uses
  %.not22 = icmp sge i32 %i.d, %i.k
  %i.t = icmp sgt i32 %i.k, 0
  %or.cond = and i1 %.not22, %i.t
  br i1 %or.cond, label %.lr.ph24.split.us.preheader, label %._crit_edge

.lr.ph24.split.us.preheader:                      ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.u = and i64 %.fr, 2147483647
  %i.v = add i64 %i.a, 1
  %i.w = add i64 %.fr, %i.b
  %i.x = sub i64 %i.v, %i.w
  %wide.trip.count31 = and i64 %i.x, 4294967295
  %wide.trip.count = and i64 %.fr, 2147483647
  %i.y = getelementptr i8, ptr %i.g, i64 %i.u
  br label %.lr.ph24.split.us

.lr.ph24.split.us:                                ; preds = %.lr.ph24.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv28 = phi i64 [ 0, %.lr.ph24.split.us.preheader ], [ %indvars.iv.next29, %..loopexit_crit_edge.us ] ; 2 uses
  %i.z = xor i64 %indvars.iv28, -1
  %i.aa = add i64 %i.c, %i.z
  %sext = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext, 32                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10  ; 2 uses
  %.not28.us = icmp eq i8 %i.ad, 0
  br i1 %.not28.us, label %..loopexit_crit_edge.us, label %.preheader.us

bb.g:                                             ; preds = %.preheader.us, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ae = xor i64 %indvars.iv, -1
  %i.af = getelementptr i8, ptr %i.y, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !10  ; 2 uses
  %.not29.us = icmp eq i8 %i.ag, 0
  br i1 %.not29.us, label %bb.h, label %_ZN2cvL5gfMulEhh.exit.us

_ZN2cvL5gfMulEhh.exit.us:                         ; preds = %bb.g
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !10
  %i.ak = zext i8 %i.aj to i16
  %i.al = load i8, ptr %i.aw, align 1, !tbaa !10
  %i.am = zext i8 %i.al to i16
  %.lhs.trunc.i.us = add nuw nsw i16 %i.am, %i.ak
  %i.an = urem i16 %.lhs.trunc.i.us, 255
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = sub nsw i64 %i.ab, %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %i.au = xor i8 %i.at, %i.aq
  store i8 %i.au, ptr %i.as, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %_ZN2cvL5gfMulEhh.exit.us, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.g, !llvm.loop !109

..loopexit_crit_edge.us:                          ; preds = %bb.h, %.lr.ph24.split.us
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %._crit_edge, label %.lr.ph24.split.us, !llvm.loop !110

.preheader.us:                                    ; preds = %.lr.ph24.split.us
  %i.av = zext i8 %i.ad to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.av
  br label %bb.g

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ax = sext i32 %1 to i64                      ; 4 uses
  %i.ay = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.az = icmp slt i32 %1, 0
  br i1 %i.az, label %bb.i, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.i:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc.i unwind label %.body

.noexc.i:                                         ; preds = %bb.i
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge
  %.not.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i, label %bb.k, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #30
          to label %.noexc5.i unwind label %.body ; 5 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax ; 2 uses
  %.not20 = icmp eq i32 %1, 1
  br i1 %.not20, label %bb.l, label %bb.j, !prof !111

bb.j:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %i.s, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr null, i64 %i.ax
  br label %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit

bb.l:                                             ; preds = %.noexc5.i
  %i.bd = load i8, ptr %i.s, align 1, !tbaa !10
  store i8 %i.bd, ptr %i.ba, align 1, !tbaa !10
  br label %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit

_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.02.0 = phi ptr [ null, %bb.k ], [ %i.ba, %bb.j ], [ %i.ba, %bb.l ]
  %.sroa.11.0 = phi ptr [ %i.bc, %bb.k ], [ %i.bb, %bb.j ], [ %i.bb, %bb.l ] ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !59    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !61
  store ptr %.sroa.02.0, ptr %2, align 8, !tbaa !59
  store ptr %.sroa.11.0, ptr %i.bf, align 8, !tbaa !58
  store ptr %.sroa.11.0, ptr %i.bg, align 8, !tbaa !61
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.be to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bk) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.m, %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit
  %.not.i.i.i32 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIhSaIhEED2Ev.exit34, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.bl = ptrtoint ptr %i.r to i64
  %i.bm = sub i64 %i.bl, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bm) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit34

_ZNSt6vectorIhSaIhEED2Ev.exit34:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.n
  ret void

.body:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i, %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i35 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIhSaIhEED2Ev.exit37, label %.body.thread

.body.thread:                                     ; preds = %.body
  %i.bo = ptrtoint ptr %i.r to i64
  %i.bp = sub i64 %i.bo, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bp) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit37

_ZNSt6vectorIhSaIhEED2Ev.exit37:                  ; preds = %.body, %.body.thread
  resume { ptr, i32 } %i.bn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #30 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.e = load ptr, ptr %2, align 8, !tbaa !112    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.i, ptr nonnull %i.a, ptr nonnull %i.b)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i

common.resume:                                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit12.i69, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i59, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i49, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i ], [ %i.au, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i49 ], [ %i.cp, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i59 ], [ %i.ef, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i69 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIhSaIhEED2Ev.exit12.i:                ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit: ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !83   ; 2 uses
  %i.m = icmp slt i32 %i.l, 27
  %spec.select = select i1 %i.m, i64 11, i64 13
  %.inv = icmp sgt i32 %i.l, 9
  %.035 = select i1 %.inv, i64 %spec.select, i64 9 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = trunc i64 %i.o to i32                    ; 6 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.035) #30 ; 6 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %.035    ; 4 uses
  store i8 0, ptr %i.q, align 1, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.t = add nsw i64 %.035, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, i8 0, i64 %i.t, i1 false)
  %i.u = add nsw i64 %.035, -3
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit
  %indvars.iv.i.i45 = phi i64 [ 0, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit ], [ %indvars.iv.next.i.i46.1, %bb.a ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit ], [ %niter.next.1, %bb.a ] ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.i.i45 to i32
  %i.w = ashr i32 %i.p, %i.v
  %i.x = srem i32 %i.w, 2
  %i.y = trunc nsw i32 %i.x to i8
  %i.z = xor i64 %indvars.iv.i.i45, -1
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !10
  %i.ab = trunc i64 %indvars.iv.i.i45 to i32
  %i.ac = or disjoint i32 %i.ab, 1
  %i.ad = ashr i32 %i.p, %i.ac
  %i.ae = srem i32 %i.ad, 2
  %i.af = trunc nsw i32 %i.ae to i8
  %i.ag = xor i64 %indvars.iv.i.i45, -2
  %i.ah = getelementptr i8, ptr %i.r, i64 %i.ag
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !10
  %indvars.iv.next.i.i46.1 = add nuw nsw i64 %indvars.iv.i.i45, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.u
  br i1 %niter.ncmp.1, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i48.epilog-lcssa, label %bb.a, !llvm.loop !113

_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i48.epilog-lcssa: ; preds = %bb.a
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i46.1 to i32
  %i.aj = ashr i32 %i.p, %i.ai
  %i.ak = srem i32 %i.aj, 2
  %i.al = trunc nsw i32 %i.ak to i8
  %i.am = xor i64 %indvars.iv.next.i.i46.1, -1
  %i.an = getelementptr i8, ptr %i.r, i64 %i.am
  store i8 %i.al, ptr %i.an, align 1, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.ap = load ptr, ptr %2, align 8, !tbaa !112   ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.at, ptr nonnull %i.q, ptr %i.r)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit50 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i49

_ZNSt6vectorIhSaIhEED2Ev.exit12.i49:              ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i48.epilog-lcssa
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %.035) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit50: ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i48.epilog-lcssa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %.035) #29
  %3 = add nsw i32 %i.p, -1
  %.not75 = icmp sgt i32 %i.p, 1
  br i1 %.not75, label %.lr.ph, label %.critedge42

.lr.ph:                                           ; preds = %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit50, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60 ], [ 0, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit50 ] ; 3 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !11    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10  ; 4 uses
  %i.ay = sext i8 %i.ax to i32                    ; 2 uses
  %i.az = add i8 %i.ax, -48
  %or.cond.i = icmp ult i8 %i.az, 10
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ba = add nsw i32 %i.ay, -48
  br label %_ZN2cvL9mapSymbolEc.exit

bb.c:                                             ; preds = %.lr.ph
  %i.bb = add i8 %i.ax, -65
  %or.cond5.i = icmp ult i8 %i.bb, 26
  br i1 %or.cond5.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bc = add nsw i32 %i.ay, -55
  br label %_ZN2cvL9mapSymbolEc.exit

bb.e:                                             ; preds = %bb.c
  %switch.tableidx = add i8 %i.ax, -32            ; 2 uses
  %i.bd = icmp ult i8 %switch.tableidx, 27
  br i1 %i.bd, label %switch.lookup, label %_ZN2cvL9mapSymbolEc.exit

switch.lookup:                                    ; preds = %bb.e
  %i.be = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE, i64 %i.be
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN2cvL9mapSymbolEc.exit

_ZN2cvL9mapSymbolEc.exit:                         ; preds = %bb.e, %switch.lookup, %bb.b, %bb.d
  %.0.i = phi i32 [ %i.ba, %bb.b ], [ %i.bc, %bb.d ], [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !10  ; 4 uses
  %i.bi = sext i8 %i.bh to i32                    ; 2 uses
  %i.bj = add i8 %i.bh, -48
  %or.cond.i51 = icmp ult i8 %i.bj, 10
  br i1 %or.cond.i51, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2cvL9mapSymbolEc.exit
  %i.bk = add nsw i32 %i.bi, -48
  br label %_ZN2cvL9mapSymbolEc.exit54

bb.g:                                             ; preds = %_ZN2cvL9mapSymbolEc.exit
  %i.bl = add i8 %i.bh, -65
  %or.cond5.i52 = icmp ult i8 %i.bl, 26
  br i1 %or.cond5.i52, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = add nsw i32 %i.bi, -55
  br label %_ZN2cvL9mapSymbolEc.exit54

bb.i:                                             ; preds = %bb.g
  %switch.tableidx96 = add i8 %i.bh, -32          ; 3 uses
  %i.bn = icmp ult i8 %switch.tableidx96, 27
  br i1 %i.bn, label %switch.hole_check, label %.critedge44

switch.hole_check:                                ; preds = %bb.i
  %switch.maskindex = zext nneg i8 %switch.tableidx96 to i32
  %switch.shifted = lshr i32 67169329, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup98, label %.critedge44

switch.lookup98:                                  ; preds = %switch.hole_check
  %i.bo = zext nneg i8 %switch.tableidx96 to i64
  %switch.gep99 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE.6, i64 %i.bo
  %switch.load100 = load i8, ptr %switch.gep99, align 1
  %switch.ext = zext i8 %switch.load100 to i32
  br label %_ZN2cvL9mapSymbolEc.exit54

_ZN2cvL9mapSymbolEc.exit54:                       ; preds = %switch.lookup98, %bb.f, %bb.h
  %.0.i53 = phi i32 [ %i.bk, %bb.f ], [ %i.bm, %bb.h ], [ %switch.ext, %switch.lookup98 ]
  %i.bp = icmp eq i32 %.0.i, -1
  br i1 %i.bp, label %.critedge44, label %.critedge

.critedge:                                        ; preds = %_ZN2cvL9mapSymbolEc.exit54
  %i.bq = mul nuw nsw i32 %.0.i, 45
  %i.br = add nuw nsw i32 %.0.i53, %i.bq
  %.fr94 = freeze i32 %i.br                       ; 4 uses
  %i.bs = tail call noalias noundef nonnull dereferenceable(11) ptr @_Znwm(i64 noundef 11) #30 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.bv = trunc i32 %.fr94 to i8
  %i.bw = insertelement <8 x i8> poison, i8 %i.bv, i64 0
  %i.bx = shufflevector <8 x i8> %i.bw, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.by = lshr <8 x i8> %i.bx, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.bz = and <8 x i8> %i.by, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %i.bz, ptr %i.bu, align 1, !tbaa !10
  %i.ca = lshr i32 %.fr94, 8
  %.lhs.trunc91 = trunc i32 %i.ca to i8
  %i.cb = and i8 %.lhs.trunc91, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !10
  %i.cd = lshr i32 %.fr94, 9
  %.lhs.trunc.9 = trunc i32 %i.cd to i16          ; 3 uses
  %.urem = add i16 %.lhs.trunc.9, 254
  %.cmp = icmp ult i16 %.lhs.trunc.9, 2
  %i.ce = select i1 %.cmp, i16 %.lhs.trunc.9, i16 %.urem
  %i.cf = trunc i16 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !10
  %i.ch = lshr i32 %.fr94, 10
  %i.ci = trunc i32 %i.ch to i8
  store i8 %i.ci, ptr %i.bs, align 1, !tbaa !10
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.ck = load ptr, ptr %2, align 8, !tbaa !112   ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.cn
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.co, ptr nonnull %i.bs, ptr nonnull %i.bt)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i59

_ZNSt6vectorIhSaIhEED2Ev.exit12.i59:              ; preds = %.critedge
  %i.cp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 11) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60: ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 11) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next to i32
  %.not = icmp sgt i32 %3, %4
  br i1 %.not, label %.lr.ph, label %.critedge42, !llvm.loop !114

.critedge42:                                      ; preds = %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit50
  %i.cq = and i32 %i.p, 1
  %.not39 = icmp eq i32 %i.cq, 0
  br i1 %.not39, label %.critedge44, label %bb.j

bb.j:                                             ; preds = %.critedge42
  %i.cr = load ptr, ptr %1, align 8, !tbaa !11, !noalias !115
  %i.cs = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !115
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !10  ; 4 uses
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = add i8 %i.cv, -48
  %or.cond.i61 = icmp ult i8 %i.cx, 10
  br i1 %or.cond.i61, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = add nsw i32 %i.cw, -48
  br label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68

bb.l:                                             ; preds = %bb.j
  %i.cz = add i8 %i.cv, -65
  %or.cond5.i62 = icmp ult i8 %i.cz, 26
  br i1 %or.cond5.i62, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = add nsw i32 %i.cw, -55
  br label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68

bb.n:                                             ; preds = %bb.l
  %switch.tableidx101 = add i8 %i.cv, -32         ; 3 uses
  %i.db = icmp ult i8 %switch.tableidx101, 27
  br i1 %i.db, label %switch.hole_check103, label %.critedge44

switch.hole_check103:                             ; preds = %bb.n
  %switch.maskindex105 = zext nneg i8 %switch.tableidx101 to i32
  %switch.shifted106 = lshr i32 67169329, %switch.maskindex105
  %switch.lobit107 = trunc i32 %switch.shifted106 to i1
  br i1 %switch.lobit107, label %switch.lookup104, label %.critedge44

switch.lookup104:                                 ; preds = %switch.hole_check103
  %i.dc = zext nneg i8 %switch.tableidx101 to i64
  %switch.gep108 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE.6, i64 %i.dc
  %switch.load109 = load i8, ptr %switch.gep108, align 1
  %switch.ext110 = zext i8 %switch.load109 to i32
  br label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68

_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68:   ; preds = %switch.lookup104, %bb.k, %bb.m
  %.0.i63.ph = phi i32 [ %switch.ext110, %switch.lookup104 ], [ %i.cy, %bb.k ], [ %i.da, %bb.m ] ; 6 uses
  %i.dd = tail call noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #30 ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  %.lhs.trunc74 = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.df = and i8 %.lhs.trunc74, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 5
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !10
  %i.dh = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.di = lshr i8 %i.dh, 1
  %i.dj = and i8 %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !10
  %i.dl = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dm = lshr i8 %i.dl, 2
  %i.dn = and i8 %i.dm, 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 3
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !10
  %i.dp = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dq = lshr i8 %i.dp, 3
  %i.dr = and i8 %i.dq, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !10
  %i.dt = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.du = lshr i8 %i.dt, 4
  %i.dv = and i8 %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !10
  %i.dx = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dy = lshr i8 %i.dx, 5
  store i8 %i.dy, ptr %i.dd, align 1, !tbaa !10
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.ea = load ptr, ptr %2, align 8, !tbaa !112   ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 %i.ed
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ee, ptr nonnull %i.dd, ptr nonnull %i.de)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i69

_ZNSt6vectorIhSaIhEED2Ev.exit12.i69:              ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68
  %i.ef = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 6) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70: ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 6) #29
  br label %.critedge44

.critedge44:                                      ; preds = %_ZN2cvL9mapSymbolEc.exit54, %bb.i, %switch.hole_check, %switch.hole_check103, %bb.n, %.critedge42, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70
  %.4 = phi i1 [ true, %.critedge42 ], [ false, %bb.n ], [ true, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70 ], [ false, %switch.hole_check103 ], [ false, %switch.hole_check ], [ false, %bb.i ], [ false, %_ZN2cvL9mapSymbolEc.exit54 ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE(i32 noundef %0, i32 noundef range(i32 1, 17) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = zext nneg i32 %1 to i64                  ; 11 uses
  %i.b = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.a) #30 ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 %i.a     ; 4 uses
  store i8 0, ptr %i.b, align 1, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.e = add nsw i64 %i.a, -1                     ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %iter.check, label %bb.a

bb.a:                                             ; preds = %.noexc
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %i.e, i1 false)
  br label %iter.check

iter.check:                                       ; preds = %bb.a, %.noexc
  %.0.i.i.i.i.i = phi ptr [ %i.c, %bb.a ], [ %i.d, %.noexc ]
  %min.iters.check = icmp samesign ult i32 %1, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp samesign ult i32 %1, 16
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.a, 16                       ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.g = ashr <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.h = srem <16 x i32> %i.g, splat (i32 2)
  %i.i = getelementptr i8, ptr %i.c, i64 -16
  %i.j = shufflevector <16 x i32> %i.h, <16 x i32> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse = trunc nsw <16 x i32> %i.j to <16 x i8>
  store <16 x i8> %reverse, ptr %i.i, align 1, !tbaa !10
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.k = and i64 %i.a, 12
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !118

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec22 = and i64 %i.a, 28                     ; 3 uses
  %broadcast.splatinsert23 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat24 = shufflevector <4 x i32> %broadcast.splatinsert23, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.l = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert25 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat26 = shufflevector <4 x i32> %broadcast.splatinsert25, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat26, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next, %vec.epilog.vector.body ] ; 2 uses
  %i.m = ashr <4 x i32> %broadcast.splat24, %vec.ind
  %i.n = srem <4 x i32> %i.m, splat (i32 2)
  %i.o = xor i64 %index, -1
  %i.p = getelementptr i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -3
  %i.r = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse27 = trunc nsw <4 x i32> %i.r to <4 x i8>
  store <4 x i8> %reverse27, ptr %i.q, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.s = icmp eq i64 %index.next, %n.vec22
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %n.vec22, %i.a
  br i1 %cmp.n28, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.u = ashr i32 %0, %i.t
  %i.v = srem i32 %i.u, 2
  %i.w = trunc nsw i32 %i.v to i8
  %i.x = xor i64 %indvars.iv.i, -1
  %i.y = getelementptr i8, ptr %i.c, i64 %i.x
  store i8 %i.w, ptr %i.y, align 1, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.a
  br i1 %exitcond.not.i, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit, label %vec.epilog.scalar.ph, !llvm.loop !120

_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit:       ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !112
  %i.ab = load ptr, ptr %2, align 8, !tbaa !112   ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
end_hunk_0
begin_hunk_1_@_ZN2cv17QRCodeEncoderImpl12padBitStreamEv:bb.a
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2cv17QRCodeEncoderImpl12padBitStreamEv.pad_patterns, i64 %i.at
  %i.av = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !22
  %i.ay = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %i.az = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.ba = ashr <8 x i32> %i.az, <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bb = srem <8 x i32> %i.ba, splat (i32 2)
  %i.bc = trunc nsw <8 x i32> %i.bb to <8 x i8>
  store <8 x i8> %i.bc, ptr %i.av, align 1, !tbaa !10
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !112
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !112 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.bi, ptr nonnull %i.av, ptr nonnull %i.aw)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i

_ZNSt6vectorIhSaIhEED2Ev.exit12.i:                ; preds = %.lr.ph
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 8) #29
  resume { ptr, i32 } %i.bj

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit: ; preds = %.lr.ph
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 8) #29
  %i.bk = add nuw nsw i32 %.025, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bk, %i.ar
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !129

.loopexit:                                        ; preds = %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit, %bb.g, %bb.c, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl12stringToBitsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  switch i32 %i.b, label %bb.h [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 7, label %bb.f
    i32 8, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl13encodeNumericERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_ZN2cv17QRCodeEncoderImpl10encodeAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEEPNS_13QRCodeEncoder10EncodeModeE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_ZN2cv17QRCodeEncoderImpl10encodeAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEEPNS_13QRCodeEncoder10EncodeModeE.exit

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl15encodeStructureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 0 uses
  br label %_ZN2cv17QRCodeEncoderImpl10encodeAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEEPNS_13QRCodeEncoder10EncodeModeE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl10encodeByteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 0 uses
  br label %_ZN2cv17QRCodeEncoderImpl10encodeAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEEPNS_13QRCodeEncoder10EncodeModeE.exit

bb.f:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl9encodeECIERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 0 uses
  br label %_ZN2cv17QRCodeEncoderImpl10encodeAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEEPNS_13QRCodeEncoder10EncodeModeE.exit

bb.g:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl11encodeKanjiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 0 uses
  br label %_ZN2cv17QRCodeEncoderImpl10encodeAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEEPNS_13QRCodeEncoder10EncodeModeE.exit

bb.h:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19   ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.m = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.n = add nuw i64 %.0810.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.n, %i.k
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %bb.j, !llvm.loop !55

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.0810.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.n, %bb.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0810.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %i.q = add i8 %i.p, -48
  %or.cond.i.i.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.i.i.i, label %bb.i, label %.lr.ph.i3.i.i

.lr.ph.i3.i.i:                                    ; preds = %bb.j, %bb.l
  %.069.i.i.i = phi i64 [ %i.v, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %.069.i.i.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10    ; 3 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i.i.i.i = icmp ult i8 %i.t, 10
  %i.u = add i8 %i.s, -65
  %or.cond5.i.i.i.i = icmp ult i8 %i.u, 26
  %or.cond.i4.i.i = or i1 %or.cond.i.i.i.i, %or.cond5.i.i.i.i
  br i1 %or.cond.i4.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i3.i.i
  switch i8 %i.s, label %_ZNK2cv17QRCodeEncoderImpl14autoEncodeModeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i [
    i8 32, label %bb.l
    i8 36, label %bb.l
    i8 37, label %bb.l
    i8 42, label %bb.l
    i8 43, label %bb.l
    i8 45, label %bb.l
    i8 46, label %bb.l
    i8 47, label %bb.l
    i8 58, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %.lr.ph.i3.i.i
  %i.v = add nuw i64 %.069.i.i.i, 1               ; 2 uses
  %exitcond.not.i5.i.i = icmp eq i64 %i.v, %i.k
  br i1 %exitcond.not.i5.i.i, label %bb.m, label %.lr.ph.i3.i.i, !llvm.loop !57

.loopexit.i:                                      ; preds = %bb.i, %bb.h
  %i.w = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl13encodeNumericERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull readonly align 8 dereferenceable(608) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 0 uses
  br label %_ZN2cv17QRCodeEncoderImpl10encodeAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEEPNS_13QRCodeEncoder10EncodeModeE.exit

bb.m:                                             ; preds = %bb.l
  %i.x = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull readonly align 8 dereferenceable(608) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 0 uses
  br label %_ZN2cv17QRCodeEncoderImpl10encodeAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEEPNS_13QRCodeEncoder10EncodeModeE.exit

_ZNK2cv17QRCodeEncoderImpl14autoEncodeModeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.k
  %i.y = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl10encodeByteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull readonly align 8 dereferenceable(608) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 0 uses
  br label %_ZN2cv17QRCodeEncoderImpl10encodeAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEEPNS_13QRCodeEncoder10EncodeModeE.exit

_ZN2cv17QRCodeEncoderImpl10encodeAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEEPNS_13QRCodeEncoder10EncodeModeE.exit: ; preds = %_ZNK2cv17QRCodeEncoderImpl14autoEncodeModeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.m, %.loopexit.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.g ], [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %.loopexit.i ], [ true, %bb.m ], [ true, %_ZNK2cv17QRCodeEncoderImpl14autoEncodeModeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv17QRCodeEncoderImpl11eccGenerateERSt6vectorIS1_IhSaIhEESaIS3_EES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %3 = alloca %"class.std::vector.3", align 8     ; 7 uses
  %4 = alloca %"class.std::vector.3", align 8     ; 13 uses
  %5 = alloca %"class.std::vector.3", align 8     ; 15 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 10 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 10 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.std::vector.3", align 8    ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.d = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #30 ; 6 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !61
  store i16 257, ptr %i.d, align 1
  store ptr %i.f, ptr %i.e, align 8, !tbaa !58
  %i.h = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #30
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit.i unwind label %bb.a ; 3 uses

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  store i8 1, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !59
  store ptr %i.i, ptr %i.j, align 8, !tbaa !58
  store ptr %i.i, ptr %i.k, align 8, !tbaa !61
  %.not23.i = icmp slt i32 %i.c, 1
  br i1 %.not23.i, label %.loopexit95, label %.lr.ph.i

bb.a:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit17.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.b
  %.024.i = phi i32 [ %i.q, %bb.b ], [ 1, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 3 uses
  %i.m = add nsw i32 %.024.i, -1
  %.urem.i = urem i32 %i.m, 255
  %i.n = zext nneg i32 %.urem.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  store i8 %i.p, ptr %i.d, align 1, !tbaa !10
  invoke fastcc void @_ZN2cvL9gfPolyMulERKSt6vectorIhSaIhEES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = add nuw i32 %.024.i, 1
  %exitcond.not.i = icmp eq i32 %.024.i, %i.c
  br i1 %exitcond.not.i, label %.loopexit95, label %.lr.ph.i, !llvm.loop !130

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit17.i

_ZNSt6vectorIhSaIhEED2Ev.exit17.i:                ; preds = %bb.c, %bb.a
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.l, %bb.a ]
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body

.loopexit95:                                      ; preds = %bb.b, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !25
  %i.x = add nsw i32 %i.w, %i.u                   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %.loopexit95
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = sext i32 %i.c to i64                    ; 3 uses
  %i.ad = icmp slt i32 %i.c, 0
  %.not.i.i.i.i40 = icmp eq i32 %i.c, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.e

._crit_edge112:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit70, %.loopexit95
  %i.aw = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge112
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %._crit_edge112, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.e:                                             ; preds = %.lr.ph111, %_ZNSt6vectorIhSaIhEED2Ev.exit70
  %.018109 = phi i32 [ 0, %.lr.ph111 ], [ %i.ft, %_ZNSt6vectorIhSaIhEED2Ev.exit70 ] ; 2 uses
  %.084108 = phi i32 [ 0, %.lr.ph111 ], [ %.1.lcssa, %_ZNSt6vectorIhSaIhEED2Ev.exit70 ] ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !86  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25
  %i.be = icmp slt i32 %.018109, %i.bd
  %.017.in.v = select i1 %i.be, i64 8, i64 16
  %.017.in = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.017.in.v
  %.017 = load i32, ptr %.017.in, align 4, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.bf = sext i32 %.017 to i64                   ; 4 uses
  %i.bg = icmp slt i32 %.017, 0
  br i1 %i.bg, label %bb.f, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %.017, 0
  br i1 %.not.i.i.i.i, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %._crit_edge

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #30
          to label %.lr.ph.preheader unwind label %.loopexit ; 3 uses

.lr.ph.preheader:                                 ; preds = %bb.g
  store ptr %i.bh, ptr %5, align 8, !tbaa !59
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf ; 2 uses
  store ptr %i.bi, ptr %i.aa, align 8, !tbaa !61
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bh, i8 0, i64 %i.bf, i1 false)
  store ptr %i.bi, ptr %i.z, align 8, !tbaa !58
  %wide.trip.count = zext nneg i32 %.017 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.thread
  %.1.lcssa = phi i32 [ %.084108, %.thread ], [ %indvars.iv.next.7.i, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  br i1 %i.ad, label %bb.h, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i39

bb.h:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc43 unwind label %.loopexit.split-lp86

.noexc43:                                         ; preds = %bb.h
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i39: ; preds = %._crit_edge
  br i1 %.not.i.i.i.i40, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i42, label %bb.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i42: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i39
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #30
          to label %.noexc44 unwind label %.loopexit85 ; 4 uses

.noexc44:                                         ; preds = %bb.i
  store ptr %i.bj, ptr %7, align 8, !tbaa !59
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ac ; 2 uses
  store ptr %i.bk, ptr %i.af, align 8, !tbaa !61
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bj, i8 0, i64 %i.ac, i1 false)
  %i.bl = ptrtoint ptr %i.bj to i64
  br label %bb.j

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit78

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit78

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.1106 = phi i32 [ %.084108, %.lr.ph.preheader ], [ %indvars.iv.next.7.i, %.lr.ph ] ; 2 uses
  %.val = load ptr, ptr %i.ab, align 8
  %i.bm = sext i32 %.1106 to i64
  %i.bn = getelementptr i8, ptr %.val, i64 %i.bm  ; 8 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10
  %i.bp = getelementptr i8, ptr %i.bn, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !10
  %i.br = shl i8 %i.bo, 2
  %i.bs = shl i8 %i.bq, 1
  %i.bt = add i8 %i.bs, %i.br
  %i.bu = getelementptr i8, ptr %i.bn, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !10
  %i.bw = add i8 %i.bt, %i.bv
  %i.bx = getelementptr i8, ptr %i.bn, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.bz = getelementptr i8, ptr %i.bn, i64 4
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !10
  %i.cb = getelementptr i8, ptr %i.bn, i64 5
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !10
  %i.cd = shl i8 %i.bw, 4
  %i.ce = shl i8 %i.by, 3
  %i.cf = shl i8 %i.ca, 2
  %i.cg = add i8 %i.ce, %i.cf
  %i.ch = add i8 %i.cd, %i.cg
  %i.ci = shl i8 %i.cc, 1
  %i.cj = getelementptr i8, ptr %i.bn, i64 6
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !10
  %i.cl = add i8 %i.ck, %i.ci
  %i.cm = add i8 %i.cl, %i.ch
  %i.cn = shl i8 %i.cm, 1
  %indvars.iv.next.7.i = add i32 %.1106, 8        ; 2 uses
  %i.co = getelementptr i8, ptr %i.bn, i64 7
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !10
  %i.cq = add i8 %i.cn, %i.cp
  %i.cr = xor i64 %indvars.iv, -1
  %i.cs = load ptr, ptr %5, align 8, !tbaa !59
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.bf
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.cr
  store i8 %i.cq, ptr %i.cu, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131
end_hunk_1
begin_hunk_2_@_ZN2cv17QRCodeDecoderImpl16extractCodewordsERNS_3MatERSt6vectorIhSaIhEE:_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1:        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.u = load <2 x i32>, ptr %i.t, align 4, !tbaa !22
  store <2 x i32> %i.u, ptr %i.l, align 4, !tbaa !22
  %.sroa.16.2.1 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.not.2 = icmp ult i32 %i.i, 7
  br i1 %.not.2, label %.preheader341.lr.ph, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22
  store i32 %i.w, ptr %.sroa.16.2.1, align 4, !tbaa !22
  %.sroa.16.2.2 = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %.not.3 = icmp ult i32 %i.i, 14
  br i1 %.not.3, label %.preheader341.lr.ph, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.y = load i32, ptr %i.x, align 16, !tbaa !22
  store i32 %i.y, ptr %.sroa.16.2.2, align 4, !tbaa !22
  %.sroa.16.2.3 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.not.4 = icmp ult i32 %i.i, 21
  br i1 %.not.4, label %.preheader341.lr.ph, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.4

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.4:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !22
  store i32 %i.aa, ptr %.sroa.16.2.3, align 4, !tbaa !22
  %.sroa.16.2.4 = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %.not.5 = icmp ult i32 %i.i, 28
  br i1 %.not.5, label %.preheader341.lr.ph, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.5

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.5:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !22
  store i32 %i.ac, ptr %.sroa.16.2.4, align 4, !tbaa !22
  %.sroa.16.2.5 = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.not.6 = icmp ult i32 %i.i, 35
  br i1 %.not.6, label %.preheader341.lr.ph, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.6

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.6:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22
  store i32 %i.ae, ptr %.sroa.16.2.5, align 4, !tbaa !22
  %.sroa.16.2.6 = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  br label %.preheader341.lr.ph

.preheader341:                                    ; preds = %.preheader341.lr.ph, %.split438.us
  %.0101439 = phi i64 [ 0, %.preheader341.lr.ph ], [ %i.ax, %.split438.us ] ; 5 uses
  %i.af = icmp eq i64 %.0101439, %i.q
  %i.ag = icmp eq i64 %.0101439, 0                ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0101439 ; 2 uses
  %.fr = freeze i1 %i.af
  br i1 %.fr, label %.preheader341.split.preheader, label %.preheader341.split.us

.preheader341.split.preheader:                    ; preds = %.preheader341
  br i1 %exitcond533.peel.not, label %.split438.us, label %.preheader341.split

.preheader341.split.us:                           ; preds = %.preheader341, %bb.e
  %.0100433.us = phi i64 [ %i.at, %bb.e ], [ 0, %.preheader341 ] ; 4 uses
  %i.ai = or i64 %.0100433.us, %.0101439
  %or.cond3.us = icmp eq i64 %i.ai, 0
  %i.aj = icmp eq i64 %.0100433.us, %i.q
  %or.cond5.us = and i1 %i.ag, %i.aj
  %or.cond332.us = or i1 %or.cond3.us, %or.cond5.us
  br i1 %or.cond332.us, label %bb.e, label %bb.a

bb.a:                                             ; preds = %.preheader341.split.us
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !22 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0100433.us
  %i.am = load i32, ptr %i.al, align 4, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  %i.an = add nsw i32 %i.ak, -2
  %i.ao = add nsw i32 %i.ak, 3
  %i.ap = add nsw i32 %i.am, -2
  %i.aq = add nsw i32 %i.am, 3
  %.sroa.2285.0.insert.ext.us = zext i32 %i.ao to i64
  %.sroa.2285.0.insert.shift.us = shl nuw i64 %.sroa.2285.0.insert.ext.us, 32
  %.sroa.0284.0.insert.ext.us = zext i32 %i.an to i64
  %.sroa.0284.0.insert.insert.us = or disjoint i64 %.sroa.2285.0.insert.shift.us, %.sroa.0284.0.insert.ext.us
  %.sroa.2.0.insert.ext.us = zext i32 %i.aq to i64
  %.sroa.2.0.insert.shift.us = shl nuw i64 %.sroa.2.0.insert.ext.us, 32
  %.sroa.0283.0.insert.ext.us = zext i32 %i.ap to i64
  %.sroa.0283.0.insert.insert.us = or disjoint i64 %.sroa.2.0.insert.shift.us, %.sroa.0283.0.insert.ext.us
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store i64 %.sroa.0284.0.insert.insert.us, ptr %31, align 8, !noalias !237
  store i64 %.sroa.0283.0.insert.insert.us, ptr %32, align 8, !noalias !237
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %31, ptr noundef nonnull align 4 dereferenceable(8) %32)
          to label %bb.b unwind label %.split.us

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store double 1.100000e+02, ptr %i.b, align 8, !tbaa !87
  store i32 -1056833530, ptr %36, align 8, !tbaa !96
  store ptr %i.b, ptr %i.s, align 8, !tbaa !98
  store i64 4294967297, ptr %i.r, align 8
  %i.ar = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.c unwind label %.split435.us

bb.c:                                             ; preds = %bb.b
  %i.as = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.d unwind label %.split435.us ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader341.split.us
  %i.at = add nuw i64 %.0100433.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %i.p
  br i1 %exitcond.not, label %.split438.us, label %.preheader341.split.us, !llvm.loop !240

.split.us:                                        ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit253.thread324

.split435.us:                                     ; preds = %bb.c, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %.split438.us, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27, !noalias !241
  store i32 0, ptr %33, align 4, !tbaa !244, !noalias !241
  %i.aw = getelementptr inbounds nuw i8, ptr %33, i64 4
  store i32 9, ptr %i.aw, align 4, !tbaa !246, !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27, !noalias !241
  store i64 9223372034707292160, ptr %34, align 8, !noalias !241
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %38, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %33, ptr noundef nonnull align 4 dereferenceable(8) %34)
          to label %bb.l unwind label %bb.ag

.split438.us:                                     ; preds = %bb.e, %bb.j, %.preheader341.split.preheader
  %i.ax = add nuw i64 %.0101439, 1                ; 2 uses
  %exitcond541.not = icmp eq i64 %i.ax, %i.p
  br i1 %exitcond541.not, label %._crit_edge, label %.preheader341, !llvm.loop !247

.preheader341.split:                              ; preds = %.preheader341.split.preheader, %bb.j
  %.0100433 = phi i64 [ %i.bi, %bb.j ], [ 1, %.preheader341.split.preheader ] ; 3 uses
  %i.ay = icmp eq i64 %.0100433, %i.q
  %or.cond5 = and i1 %i.ag, %i.ay
  br i1 %or.cond5, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.preheader341.split
  %i.az = load i32, ptr %i.ah, align 4, !tbaa !22 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0100433
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  %i.bc = add nsw i32 %i.az, -2
  %i.bd = add nsw i32 %i.az, 3
  %i.be = add nsw i32 %i.bb, -2
  %i.bf = add nsw i32 %i.bb, 3
  %.sroa.2285.0.insert.ext = zext i32 %i.bd to i64
  %.sroa.2285.0.insert.shift = shl nuw i64 %.sroa.2285.0.insert.ext, 32
  %.sroa.0284.0.insert.ext = zext i32 %i.bc to i64
  %.sroa.0284.0.insert.insert = or disjoint i64 %.sroa.2285.0.insert.shift, %.sroa.0284.0.insert.ext
  %.sroa.2.0.insert.ext = zext i32 %i.bf to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0283.0.insert.ext = zext i32 %i.be to i64
  %.sroa.0283.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0283.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store i64 %.sroa.0284.0.insert.insert, ptr %31, align 8, !noalias !237
  store i64 %.sroa.0283.0.insert.insert, ptr %32, align 8, !noalias !237
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %31, ptr noundef nonnull align 4 dereferenceable(8) %32)
          to label %bb.g unwind label %.split

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store double 1.100000e+02, ptr %i.b, align 8, !tbaa !87
  store i32 -1056833530, ptr %36, align 8, !tbaa !96
  store ptr %i.b, ptr %i.s, align 8, !tbaa !98
  store i64 4294967297, ptr %i.r, align 8
  %i.bg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.h unwind label %.split435

bb.h:                                             ; preds = %bb.g
  %i.bh = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.i unwind label %.split435  ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.j

bb.j:                                             ; preds = %.preheader341.split, %bb.i
  %i.bi = add nuw i64 %.0100433, 1                ; 2 uses
  %exitcond533.not = icmp eq i64 %i.bi, %i.p
  br i1 %exitcond533.not, label %.split438.us, label %.preheader341.split, !llvm.loop !248

.split:                                           ; preds = %bb.f
  %lpad.loopexit535 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit253.thread324

.split435:                                        ; preds = %bb.h, %bb.g
  %lpad.loopexit538 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.split435.us, %.split435
  %.us-phi436 = phi { ptr, i32 } [ %lpad.loopexit538, %.split435 ], [ %i.av, %.split435.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit253.thread324

_ZNSt6vectorIhSaIhEED2Ev.exit253.thread324:       ; preds = %.split, %.split.us, %bb.k
  %.pn167.pn = phi { ptr, i32 } [ %.us-phi436, %bb.k ], [ %lpad.loopexit535, %.split ], [ %i.au, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit255

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27, !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27, !noalias !241
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !231 ; 2 uses
  %i.bl = add nsw i32 %i.bk, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27, !noalias !249
  store i64 9223372034707292160, ptr %29, align 8, !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27, !noalias !249
  store i32 %i.bl, ptr %30, align 4, !tbaa !244, !noalias !249
  %i.bm = getelementptr inbounds nuw i8, ptr %30, i64 4
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !246, !noalias !249
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 8 dereferenceable(208) %38, ptr noundef nonnull align 4 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(8) %30)
          to label %bb.m unwind label %bb.ah

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27, !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store double 1.100000e+02, ptr %i.c, align 8, !tbaa !87
  %i.bn = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i32 -1056833530, ptr %39, align 8, !tbaa !96
  %i.bo = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !98
  store i64 4294967297, ptr %i.bn, align 8
  %i.bp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.n unwind label %bb.ai

bb.n:                                             ; preds = %bb.m
  %i.bq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.o unwind label %bb.ai      ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27, !noalias !252
  store i32 0, ptr %27, align 4, !tbaa !244, !noalias !252
  %i.br = getelementptr inbounds nuw i8, ptr %27, i64 4
  store i32 9, ptr %i.br, align 4, !tbaa !246, !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27, !noalias !252
  store i64 9223372034707292160, ptr %28, align 8, !noalias !252
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %27, ptr noundef nonnull align 4 dereferenceable(8) %28)
          to label %bb.p unwind label %bb.al

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27, !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27, !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27, !noalias !255
  store i64 9223372034707292160, ptr %25, align 8, !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27, !noalias !255
  store i32 0, ptr %26, align 4, !tbaa !244, !noalias !255
  %i.bs = getelementptr inbounds nuw i8, ptr %26, i64 4
  store i32 9, ptr %i.bs, align 4, !tbaa !246, !noalias !255
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %40, ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 4 dereferenceable(8) %25, ptr noundef nonnull align 4 dereferenceable(8) %26)
          to label %bb.q unwind label %bb.am

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27, !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store double 1.100000e+02, ptr %i.d, align 8, !tbaa !87
  %i.bt = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i32 -1056833530, ptr %42, align 8, !tbaa !96
  %i.bu = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %i.d, ptr %i.bu, align 8, !tbaa !98
  store i64 4294967297, ptr %i.bt, align 8
  %i.bv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.r unwind label %bb.an

bb.r:                                             ; preds = %bb.q
  %i.bw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %40, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %bb.s unwind label %bb.an      ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27, !noalias !258
  store i64 9223372034707292160, ptr %23, align 8, !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27, !noalias !258
  store i32 0, ptr %24, align 4, !tbaa !244, !noalias !258
  %i.bx = getelementptr inbounds nuw i8, ptr %24, i64 4
  store i32 9, ptr %i.bx, align 4, !tbaa !246, !noalias !258
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %23, ptr noundef nonnull align 4 dereferenceable(8) %24)
          to label %bb.t unwind label %bb.aq

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27, !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27, !noalias !258
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !179 ; 2 uses
  %i.ca = add nsw i32 %i.bz, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27, !noalias !261
  store i32 %i.ca, ptr %21, align 4, !tbaa !244, !noalias !261
  %i.cb = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !246, !noalias !261
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27, !noalias !261
  store i64 9223372034707292160, ptr %22, align 8, !noalias !261
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %22)
          to label %bb.u unwind label %bb.ar

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27, !noalias !261
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store double 1.100000e+02, ptr %i.e, align 8, !tbaa !87
  %i.cc = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i32 -1056833530, ptr %45, align 8, !tbaa !96
  %i.cd = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %i.e, ptr %i.cd, align 8, !tbaa !98
  store i64 4294967297, ptr %i.cc, align 8
  %i.ce = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.v unwind label %bb.as

bb.v:                                             ; preds = %bb.u
  %i.cf = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
          to label %bb.w unwind label %bb.as      ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  %i.cg = load i32, ptr %i.h, align 8, !tbaa !232
  %i.ch = icmp sgt i32 %i.cg, 6
  br i1 %i.ch, label %bb.x, label %bb.bf

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27, !noalias !264
  store i32 0, ptr %19, align 4, !tbaa !244, !noalias !264
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 6, ptr %i.ci, align 4, !tbaa !246, !noalias !264
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27, !noalias !264
  store i64 9223372034707292160, ptr %20, align 8, !noalias !264
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %20)
          to label %bb.y unwind label %bb.av

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27, !noalias !264
  %i.cj = load i32, ptr %i.bj, align 4, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27, !noalias !267
  store i64 9223372034707292160, ptr %17, align 8, !noalias !267
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27, !noalias !267
  %i.ck = insertelement <2 x i32> poison, i32 %i.cj, i64 0
  %i.cl = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cm = add nsw <2 x i32> %i.cl, <i32 -12, i32 -9>
  store <2 x i32> %i.cm, ptr %18, align 8, !tbaa !22, !noalias !267
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %46, ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18)
          to label %bb.z unwind label %bb.aw

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27, !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27, !noalias !267
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store double 1.100000e+02, ptr %i.f, align 8, !tbaa !87
end_hunk_2
