Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_encoder?download=true
inline.NumInlined: 1688
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN2cvL9gfPolyDivERKSt6vectorIhSaIhEES4_iRS2_:bb.a

bb.h:                                             ; preds = %_ZN2cvL5gfMulEhh.exit.us, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.g, !llvm.loop !110

..loopexit_crit_edge.us:                          ; preds = %bb.h, %.lr.ph56.split.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge, label %.lr.ph56.split.us, !llvm.loop !111

.preheader.us:                                    ; preds = %.lr.ph56.split.us
  %i.ax = load ptr, ptr %1, align 8, !tbaa !59
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
  br i1 %.not52, label %bb.l, label %bb.j, !prof !112

bb.j:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.r, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr null, i64 %i.bb
  br label %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit

bb.l:                                             ; preds = %.noexc5.i
  %i.bg = load i8, ptr %i.r, align 1, !tbaa !10
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !10
  br label %_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i:           ; preds = %bb.i, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i35 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIhSaIhEED2Ev.exit37, label %bb.o

_ZNSt6vectorIhSaIhEEC2IN9__gnu_cxx17__normal_iteratorIPhS1_EEvEET_S7_RKS0_.exit: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.039.0 = phi ptr [ null, %bb.k ], [ %i.bd, %bb.j ], [ %i.bd, %bb.l ]
  %.sroa.11.0 = phi ptr [ %i.bf, %bb.k ], [ %i.be, %bb.j ], [ %i.be, %bb.l ] ; 2 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !59    ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !61
  store ptr %.sroa.039.0, ptr %3, align 8, !tbaa !59
  store ptr %.sroa.11.0, ptr %i.bj, align 8, !tbaa !58
  store ptr %.sroa.11.0, ptr %i.bk, align 8, !tbaa !61
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.e = load ptr, ptr %2, align 8, !tbaa !108    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.i, ptr nonnull %i.a, ptr nonnull %i.b)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i

common.resume:                                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit12.i69, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i59, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i49, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i ], [ %i.au, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i49 ], [ %i.cp, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i59 ], [ %i.eg, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i69 ]
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
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.ap = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
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
  %i.av = add nsw i32 %i.p, -1
  %.not75 = icmp sgt i32 %i.p, 1
  br i1 %.not75, label %.lr.ph, label %.critedge42

.lr.ph:                                           ; preds = %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit50, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60 ], [ 0, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit50 ] ; 2 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !10  ; 4 uses
  %i.az = sext i8 %i.ay to i32                    ; 2 uses
  %i.ba = add i8 %i.ay, -48
  %or.cond.i = icmp ult i8 %i.ba, 10
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.bb = add nsw i32 %i.az, -48
  br label %_ZN2cvL9mapSymbolEc.exit

bb.c:                                             ; preds = %.lr.ph
  %i.bc = add i8 %i.ay, -65
  %or.cond5.i = icmp ult i8 %i.bc, 26
  br i1 %or.cond5.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = add nsw i32 %i.az, -55
  br label %_ZN2cvL9mapSymbolEc.exit

bb.e:                                             ; preds = %bb.c
  %switch.tableidx = add i8 %i.ay, -32            ; 2 uses
  %i.be = icmp ult i8 %switch.tableidx, 27
  br i1 %i.be, label %switch.lookup, label %_ZN2cvL9mapSymbolEc.exit

switch.lookup:                                    ; preds = %bb.e
  %i.bf = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE, i64 %i.bf
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN2cvL9mapSymbolEc.exit

_ZN2cvL9mapSymbolEc.exit:                         ; preds = %bb.e, %switch.lookup, %bb.b, %bb.d
  %.0.i = phi i32 [ %i.bb, %bb.b ], [ %i.bd, %bb.d ], [ %switch.load, %switch.lookup ], [ -1, %bb.e ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
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
  %switch.gep99 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE.5, i64 %i.bo
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
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.ck = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
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
  %i.cq = trunc nuw i64 %indvars.iv.next to i32
  %.not = icmp sgt i32 %i.av, %i.cq
  br i1 %.not, label %.lr.ph, label %.critedge42, !llvm.loop !114

.critedge42:                                      ; preds = %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit60, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit50
  %i.cr = and i32 %i.p, 1
  %.not39 = icmp eq i32 %i.cr, 0
  br i1 %.not39, label %.critedge44, label %bb.j

bb.j:                                             ; preds = %.critedge42
  %i.cs = load ptr, ptr %1, align 8, !tbaa !11, !noalias !115
  %i.ct = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !115
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !10  ; 4 uses
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  %i.cy = add i8 %i.cw, -48
  %or.cond.i61 = icmp ult i8 %i.cy, 10
  br i1 %or.cond.i61, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cz = add nsw i32 %i.cx, -48
  br label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68

bb.l:                                             ; preds = %bb.j
  %i.da = add i8 %i.cw, -65
  %or.cond5.i62 = icmp ult i8 %i.da, 26
  br i1 %or.cond5.i62, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = add nsw i32 %i.cx, -55
  br label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68

bb.n:                                             ; preds = %bb.l
  %switch.tableidx101 = add i8 %i.cw, -32         ; 3 uses
  %i.dc = icmp ult i8 %switch.tableidx101, 27
  br i1 %i.dc, label %switch.hole_check103, label %.critedge44

switch.hole_check103:                             ; preds = %bb.n
  %switch.maskindex105 = zext nneg i8 %switch.tableidx101 to i32
  %switch.shifted106 = lshr i32 67169329, %switch.maskindex105
  %switch.lobit107 = trunc i32 %switch.shifted106 to i1
  br i1 %switch.lobit107, label %switch.lookup104, label %.critedge44

switch.lookup104:                                 ; preds = %switch.hole_check103
  %i.dd = zext nneg i8 %switch.tableidx101 to i64
  %switch.gep108 = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE.5, i64 %i.dd
  %switch.load109 = load i8, ptr %switch.gep108, align 1
  %switch.ext110 = zext i8 %switch.load109 to i32
  br label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68

_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68:   ; preds = %switch.lookup104, %bb.k, %bb.m
  %.0.i63.ph = phi i32 [ %switch.ext110, %switch.lookup104 ], [ %i.cz, %bb.k ], [ %i.db, %bb.m ] ; 6 uses
  %i.de = tail call noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #30 ; 10 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 6
  %.lhs.trunc74 = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dg = and i8 %.lhs.trunc74, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 5
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !10
  %i.di = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dj = lshr i8 %i.di, 1
  %i.dk = and i8 %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !10
  %i.dm = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dn = lshr i8 %i.dm, 2
  %i.do = and i8 %i.dn, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !10
  %i.dq = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dr = lshr i8 %i.dq, 3
  %i.ds = and i8 %i.dr, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !10
  %i.du = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dv = lshr i8 %i.du, 4
  %i.dw = and i8 %i.dv, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !10
  %i.dy = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dz = lshr i8 %i.dy, 5
  store i8 %i.dz, ptr %i.de, align 1, !tbaa !10
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.eb = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ef, ptr nonnull %i.de, ptr nonnull %i.df)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i69

_ZNSt6vectorIhSaIhEED2Ev.exit12.i69:              ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68
  %i.eg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 6) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70: ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 6) #29
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
end_hunk_0
