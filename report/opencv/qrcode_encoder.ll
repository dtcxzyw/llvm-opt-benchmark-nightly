Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_encoder?download=true
inline.NumInlined: 1688
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN2cvL9gfPolyDivERKSt6vectorIhSaIhEES4_iRS2_:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.s, 1
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.q, align 1, !tbaa !16
  store i8 %i.v, ptr %i.r, align 1, !tbaa !16
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %.not54 = icmp sge i32 %i.g, %i.n
  %i.w = icmp sgt i32 %i.n, 0
  %or.cond = and i1 %.not54, %i.w
  br i1 %or.cond, label %.lr.ph56.split.us.preheader, label %._crit_edge

.lr.ph56.split.us.preheader:                      ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.x = and i64 %.fr, 2147483647
  %i.y = add i64 %i.d, 1
  %i.z = add i64 %.fr, %i.e
  %i.aa = sub i64 %i.y, %i.z
  %wide.trip.count63 = and i64 %i.aa, 4294967295
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph56.split.us

.lr.ph56.split.us:                                ; preds = %.lr.ph56.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv60 = phi i64 [ 0, %.lr.ph56.split.us.preheader ], [ %indvars.iv.next61, %..loopexit_crit_edge.us ] ; 2 uses
  %i.ab = xor i64 %indvars.iv60, -1
  %i.ac = add i64 %i.f, %i.ab
  %sext = shl i64 %i.ac, 32
  %i.ad = ashr exact i64 %sext, 32                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16  ; 2 uses
  %.not28.us = icmp eq i8 %i.af, 0
  br i1 %.not28.us, label %..loopexit_crit_edge.us, label %.preheader.us

bb.g:                                             ; preds = %.preheader.us, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ag = xor i64 %indvars.iv, -1
  %i.ah = getelementptr i8, ptr %i.ba, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16  ; 2 uses
  %.not29.us = icmp eq i8 %i.ai, 0
  br i1 %.not29.us, label %bb.h, label %_ZN2cvL5gfMulEhh.exit.us

_ZN2cvL5gfMulEhh.exit.us:                         ; preds = %bb.g
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = zext i8 %i.al to i16
  %i.an = load i8, ptr %i.az, align 1, !tbaa !16
  %i.ao = zext i8 %i.an to i16
  %.lhs.trunc.i.us = add nuw nsw i16 %i.ao, %i.am
  %i.ap = urem i16 %.lhs.trunc.i.us, 255
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = sub nsw i64 %i.ad, %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = xor i8 %i.av, %i.as
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %_ZN2cvL5gfMulEhh.exit.us, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.g, !llvm.loop !169

..loopexit_crit_edge.us:                          ; preds = %bb.h, %.lr.ph56.split.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge, label %.lr.ph56.split.us, !llvm.loop !170

.preheader.us:                                    ; preds = %.lr.ph56.split.us
  %i.ax = load ptr, ptr %1, align 8, !tbaa !62
  %i.ay = zext i8 %i.af to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.ax, i64 %i.x
  br label %bb.g

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.bb = sext i32 %2 to i64                      ; 4 uses
  %i.bc = icmp slt i32 %2, 0
  br i1 %i.bc, label %bb.i, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.i:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.i
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge
  %.not.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i, label %bb.k, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #30
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i ; 5 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb ; 2 uses
  %.not52 = icmp eq i32 %2, 1
  br i1 %.not52, label %bb.l, label %bb.j, !prof !97

bb.j:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.r, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr null, i64 %i.bb
  br label %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit

bb.l:                                             ; preds = %.noexc5.i
  %i.bg = load i8, ptr %i.r, align 1, !tbaa !16
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !16
  br label %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i:           ; preds = %bb.i, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i35 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIhSaIhEED2Ev.exit37, label %bb.o

_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.039.0 = phi ptr [ null, %bb.k ], [ %i.bd, %bb.j ], [ %i.bd, %bb.l ]
  %.sroa.11.0 = phi ptr [ %i.bf, %bb.k ], [ %i.be, %bb.j ], [ %i.be, %bb.l ] ; 2 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !62    ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !64
  store ptr %.sroa.039.0, ptr %3, align 8, !tbaa !62
  store ptr %.sroa.11.0, ptr %i.bj, align 8, !tbaa !61
  store ptr %.sroa.11.0, ptr %i.bk, align 8, !tbaa !64
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bo) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.m, %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit
  %.not.i.i.i32 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIhSaIhEED2Ev.exit34, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.f) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit34

_ZNSt6vectorIhSaIhEED2Ev.exit34:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.f) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit37

_ZNSt6vectorIhSaIhEED2Ev.exit37:                  ; preds = %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i, %bb.o
  resume { ptr, i32 } %i.bh
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #30 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.e = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.i, ptr nonnull %i.a, ptr nonnull %i.b)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i

common.resume:                                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit12.i69, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i59, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i49, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i ], [ %i.au, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i49 ], [ %i.cm, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i59 ], [ %i.ec, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i69 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIhSaIhEED2Ev.exit12.i:                ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit: ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !72   ; 2 uses
  %i.m = icmp slt i32 %i.l, 27
  %spec.select = select i1 %i.m, i64 11, i64 13
  %.inv = icmp sgt i32 %i.l, 9
  %.035 = select i1 %.inv, i64 %spec.select, i64 9 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 5 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.035) #30 ; 6 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %.035    ; 4 uses
  store i8 0, ptr %i.q, align 1, !tbaa !16
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
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !16
  %i.ab = trunc i64 %indvars.iv.i.i45 to i32
  %i.ac = or disjoint i32 %i.ab, 1
  %i.ad = ashr i32 %i.p, %i.ac
  %i.ae = srem i32 %i.ad, 2
  %i.af = trunc nsw i32 %i.ae to i8
  %i.ag = xor i64 %indvars.iv.i.i45, -2
  %i.ah = getelementptr i8, ptr %i.r, i64 %i.ag
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !16
  %indvars.iv.next.i.i46.1 = add nuw nsw i64 %indvars.iv.i.i45, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.u
  br i1 %niter.ncmp.1, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i48.epilog-lcssa, label %bb.a, !llvm.loop !3

_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i48.epilog-lcssa: ; preds = %bb.a
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i46.1 to i32
  %i.aj = ashr i32 %i.p, %i.ai
  %i.ak = srem i32 %i.aj, 2
  %i.al = trunc nsw i32 %i.ak to i8
  %i.am = xor i64 %indvars.iv.next.i.i46.1, -1
  %i.an = getelementptr i8, ptr %i.r, i64 %i.am
  store i8 %i.al, ptr %i.an, align 1, !tbaa !16
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.ap = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
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
  %.not75 = icmp sgt i32 %i.p, 1
  br i1 %.not75, label %.lr.ph.preheader, label %.critedge42

.lr.ph.preheader:                                 ; preds = %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit50
  %3 = shl i64 %i.o, 32
  %sext = add nsw i64 %3, -4294967296
  %4 = ashr exact i64 %sext, 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60 ] ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16  ; 4 uses
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
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16  ; 4 uses
  %i.bh = sext i8 %i.bg to i32                    ; 2 uses
  %i.bi = add i8 %i.bg, -48
  %or.cond.i51 = icmp ult i8 %i.bi, 10
  br i1 %or.cond.i51, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2cvL9mapSymbolEc.exit
  %i.bj = add nsw i32 %i.bh, -48
  br label %_ZN2cvL9mapSymbolEc.exit54

bb.g:                                             ; preds = %_ZN2cvL9mapSymbolEc.exit
  %i.bk = add i8 %i.bg, -65
  %or.cond5.i52 = icmp ult i8 %i.bk, 26
  br i1 %or.cond5.i52, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = add nsw i32 %i.bh, -55
  br label %_ZN2cvL9mapSymbolEc.exit54

bb.i:                                             ; preds = %bb.g
  %switch.tableidx95 = add i8 %i.bg, -32          ; 3 uses
  %i.bm = icmp ult i8 %switch.tableidx95, 27
  br i1 %i.bm, label %switch.hole_check, label %.critedge44

switch.hole_check:                                ; preds = %bb.i
  %switch.maskindex = zext nneg i8 %switch.tableidx95 to i32
  %switch.shifted = lshr i32 67169329, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup97, label %.critedge44

switch.lookup97:                                  ; preds = %switch.hole_check
  %i.bn = zext nneg i8 %switch.tableidx95 to i64
  %switch.gep98 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE.5, i64 %i.bn
  %switch.load99 = load i8, ptr %switch.gep98, align 1
  %switch.ext = zext i8 %switch.load99 to i32
  br label %_ZN2cvL9mapSymbolEc.exit54

_ZN2cvL9mapSymbolEc.exit54:                       ; preds = %switch.lookup97, %bb.f, %bb.h
  %.0.i53 = phi i32 [ %i.bj, %bb.f ], [ %i.bl, %bb.h ], [ %switch.ext, %switch.lookup97 ]
  %i.bo = icmp eq i32 %.0.i, -1
  br i1 %i.bo, label %.critedge44, label %.critedge

.critedge:                                        ; preds = %_ZN2cvL9mapSymbolEc.exit54
  %i.bp = mul nuw nsw i32 %.0.i, 45
  %i.bq = add nuw nsw i32 %.0.i53, %i.bp
  %.fr93 = freeze i32 %i.bq                       ; 4 uses
  %i.br = tail call noalias noundef nonnull dereferenceable(11) ptr @_Znwm(i64 noundef 11) #30 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 11
  %.lhs.trunc = trunc i32 %.fr93 to i8
  %i.bt = and i8 %.lhs.trunc, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bw = bitcast i32 %.fr93 to <4 x i8>
  %i.bx = shufflevector <4 x i8> %i.bw, <4 x i8> poison, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.by = lshr <8 x i8> %i.bx, <i8 0, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>
  %i.bz = and <8 x i8> %i.by, <i8 1, i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %i.bz, ptr %i.bv, align 1, !tbaa !16
  %i.ca = lshr i32 %.fr93, 9
  %.lhs.trunc.9 = trunc i32 %i.ca to i16          ; 3 uses
  %.urem = add i16 %.lhs.trunc.9, 254
  %.cmp = icmp ult i16 %.lhs.trunc.9, 2
  %i.cb = select i1 %.cmp, i16 %.lhs.trunc.9, i16 %.urem
  %i.cc = trunc i16 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !16
  %i.ce = lshr i32 %.fr93, 10
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.br, align 1, !tbaa !16
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.ch = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 %i.ck
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.cl, ptr nonnull %i.br, ptr nonnull %i.bs)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i59

_ZNSt6vectorIhSaIhEED2Ev.exit12.i59:              ; preds = %.critedge
  %i.cm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 11) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60: ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 11) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next, %4
  br i1 %.not, label %.lr.ph, label %.critedge42, !llvm.loop !171

.critedge42:                                      ; preds = %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit50
  %i.cn = and i32 %i.p, 1
  %.not39 = icmp eq i32 %i.cn, 0
  br i1 %.not39, label %.critedge44, label %bb.j

bb.j:                                             ; preds = %.critedge42
  %i.co = load ptr, ptr %1, align 8, !tbaa !22, !noalias !174
  %i.cp = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !174
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !16  ; 4 uses
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = add i8 %i.cs, -48
  %or.cond.i61 = icmp ult i8 %i.cu, 10
  br i1 %or.cond.i61, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cv = add nsw i32 %i.ct, -48
  br label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68

bb.l:                                             ; preds = %bb.j
  %i.cw = add i8 %i.cs, -65
  %or.cond5.i62 = icmp ult i8 %i.cw, 26
  br i1 %or.cond5.i62, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = add nsw i32 %i.ct, -55
  br label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68

bb.n:                                             ; preds = %bb.l
  %switch.tableidx100 = add i8 %i.cs, -32         ; 3 uses
  %i.cy = icmp ult i8 %switch.tableidx100, 27
  br i1 %i.cy, label %switch.hole_check102, label %.critedge44

switch.hole_check102:                             ; preds = %bb.n
  %switch.maskindex104 = zext nneg i8 %switch.tableidx100 to i32
  %switch.shifted105 = lshr i32 67169329, %switch.maskindex104
  %switch.lobit106 = trunc i32 %switch.shifted105 to i1
  br i1 %switch.lobit106, label %switch.lookup103, label %.critedge44

switch.lookup103:                                 ; preds = %switch.hole_check102
  %i.cz = zext nneg i8 %switch.tableidx100 to i64
  %switch.gep107 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE.5, i64 %i.cz
  %switch.load108 = load i8, ptr %switch.gep107, align 1
  %switch.ext109 = zext i8 %switch.load108 to i32
  br label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68

_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68:   ; preds = %switch.lookup103, %bb.k, %bb.m
  %.0.i63.ph = phi i32 [ %switch.ext109, %switch.lookup103 ], [ %i.cv, %bb.k ], [ %i.cx, %bb.m ] ; 6 uses
  %i.da = tail call noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #30 ; 10 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 6
  %.lhs.trunc74 = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dc = and i8 %.lhs.trunc74, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 5
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !16
  %i.de = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.df = lshr i8 %i.de, 1
  %i.dg = and i8 %i.df, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !16
  %i.di = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dj = lshr i8 %i.di, 2
  %i.dk = and i8 %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 3
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !16
  %i.dm = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dn = lshr i8 %i.dm, 3
  %i.do = and i8 %i.dn, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !16
  %i.dq = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dr = lshr i8 %i.dq, 4
  %i.ds = and i8 %i.dr, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !16
  %i.du = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dv = lshr i8 %i.du, 5
  store i8 %i.dv, ptr %i.da, align 1, !tbaa !16
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.dx = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 %i.ea
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.eb, ptr nonnull %i.da, ptr nonnull %i.db)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i69

_ZNSt6vectorIhSaIhEED2Ev.exit12.i69:              ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 6) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70: ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 6) #29
  br label %.critedge44

.critedge44:                                      ; preds = %_ZN2cvL9mapSymbolEc.exit54, %bb.i, %switch.hole_check, %switch.hole_check102, %bb.n, %.critedge42, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70
  %.4 = phi i1 [ true, %.critedge42 ], [ false, %bb.n ], [ true, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70 ], [ false, %switch.hole_check102 ], [ false, %switch.hole_check ], [ false, %bb.i ], [ false, %_ZN2cvL9mapSymbolEc.exit54 ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE(i32 noundef %0, i32 noundef range(i32 1, 17) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = zext nneg i32 %1 to i64                  ; 11 uses
  %i.b = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.a) #30 ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 %i.a     ; 4 uses
  store i8 0, ptr %i.b, align 1, !tbaa !16
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
  store <16 x i8> %reverse, ptr %i.i, align 1, !tbaa !16
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.k = and i64 %i.a, 12
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !177

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
  store <4 x i8> %reverse27, ptr %i.q, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.s = icmp eq i64 %index.next, %n.vec22
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !175

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
  store i8 %i.w, ptr %i.y, align 1, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.a
  br i1 %exitcond.not.i, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit, label %vec.epilog.scalar.ph, !llvm.loop !176

_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit:       ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !95
  %i.ab = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
end_hunk_0
