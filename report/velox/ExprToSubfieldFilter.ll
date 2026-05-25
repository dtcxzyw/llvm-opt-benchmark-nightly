inline.NumInlined: 6844
inline.NumDeleted: 2832
begin_hunk_0_@_ZN8facebook5velox4exec26ExprToSubfieldFilterParser15makeEqualFilterERKSt10shared_ptrIKNS0_4core10ITypedExprEEPNS4_19ExpressionEvaluatorE:bb.a
          cleanup
  br label %bb.bi

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !129
  switch i8 %i.m, label %bb.ba [
    i8 0, label %bb.i
    i8 1, label %bb.m
    i8 2, label %bb.q
    i8 3, label %bb.u
    i8 4, label %bb.y
    i8 10, label %bb.ae
    i8 7, label %bb.aj
    i8 9, label %bb.av
  ]

bb.i:                                             ; preds = %bb.h
  %i.n = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.a, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIbEE, i64 0) #37 ; 3 uses
  %.not.i17 = icmp eq ptr %i.n, null
  br i1 %.not.i17, label %bb.j, label %bb.k, !prof !18

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIbEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 384
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(108) %i.n, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIbEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.l, !inline_history !364

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIbEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.k
  %i.s = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common9BoolValueESt14default_deleteIS3_EED2Ev.exit unwind label %bb.l ; 6 uses

_ZNSt10unique_ptrIN8facebook5velox6common9BoolValueESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIbEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.t = zext i1 %i.r to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 0, ptr %i.u, align 8, !tbaa !119, !noalias !365
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  store i8 1, ptr %i.v, align 1, !tbaa !126, !noalias !365
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 4, ptr %i.w, align 4, !tbaa !127, !noalias !365
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common9BoolValueE, i64 16), ptr %i.s, align 8, !tbaa !14, !noalias !365
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i8 %i.t, ptr %i.x, align 8, !tbaa !370, !noalias !365
  store ptr %i.s, ptr %0, align 8, !tbaa !116
  br label %bb.bb

bb.l:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIbEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.m:                                             ; preds = %bb.h
  %i.z = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.a, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIaEE, i64 0) #37 ; 3 uses
  %.not.i21 = icmp eq ptr %i.z, null
  br i1 %.not.i21, label %bb.n, label %bb.o, !prof !18

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc22 unwind label %bb.p

.noexc22:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 384
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(108) %i.z, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.p, !inline_history !225 ; 3 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.o
  %i.ae = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit unwind label %bb.p ; 14 uses

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.af = sext i8 %i.ad to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !119, !noalias !372
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  store i8 1, ptr %i.ah, align 1, !tbaa !126, !noalias !372
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 5, ptr %i.ai, align 4, !tbaa !127, !noalias !372
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.ae, align 8, !tbaa !14, !noalias !372
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !231, !noalias !372
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !234, !noalias !372
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.am = sext i8 %i.ad to i32                    ; 2 uses
  store i32 %i.am, ptr %i.al, align 8, !tbaa !235, !noalias !372
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  store i32 %i.am, ptr %i.an, align 4, !tbaa !236, !noalias !372
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ap = sext i8 %i.ad to i16                    ; 2 uses
  store i16 %i.ap, ptr %i.ao, align 8, !tbaa !237, !noalias !372
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 42
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !238, !noalias !372
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  store i8 1, ptr %i.ar, align 4, !tbaa !239, !noalias !372
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 45
  store i8 1, ptr %i.as, align 1, !tbaa !240, !noalias !372
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 46
  store i8 1, ptr %i.at, align 2, !tbaa !241, !noalias !372
  store ptr %i.ae, ptr %0, align 8, !tbaa !116
  br label %bb.bb

bb.p:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.o, %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.q:                                             ; preds = %bb.h
  %i.av = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.a, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIsEE, i64 0) #37 ; 3 uses
  %.not.i26 = icmp eq ptr %i.av, null
  br i1 %.not.i26, label %bb.r, label %bb.s, !prof !18

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc27 unwind label %bb.t

.noexc27:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 384
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef signext i16 %i.ay(ptr noundef nonnull align 8 dereferenceable(112) %i.av, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.t, !inline_history !242 ; 4 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.s
  %i.ba = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit33 unwind label %bb.t ; 14 uses

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit33: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.bb = sext i16 %i.az to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i8 0, ptr %i.bc, align 8, !tbaa !119, !noalias !377
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 9
  store i8 1, ptr %i.bd, align 1, !tbaa !126, !noalias !377
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 5, ptr %i.be, align 4, !tbaa !127, !noalias !377
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.ba, align 8, !tbaa !14, !noalias !377
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.bb, ptr %i.bf, align 8, !tbaa !231, !noalias !377
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !234, !noalias !377
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bi = sext i16 %i.az to i32                   ; 2 uses
  store i32 %i.bi, ptr %i.bh, align 8, !tbaa !235, !noalias !377
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 36
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !236, !noalias !377
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i16 %i.az, ptr %i.bk, align 8, !tbaa !237, !noalias !377
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 42
  store i16 %i.az, ptr %i.bl, align 2, !tbaa !238, !noalias !377
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  store i8 1, ptr %i.bm, align 4, !tbaa !239, !noalias !377
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 45
  store i8 1, ptr %i.bn, align 1, !tbaa !240, !noalias !377
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 46
  store i8 1, ptr %i.bo, align 2, !tbaa !241, !noalias !377
  store ptr %i.ba, ptr %0, align 8, !tbaa !116
  br label %bb.bb

bb.t:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.s, %bb.r
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.u:                                             ; preds = %bb.h
  %i.bq = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.a, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIiEE, i64 0) #37 ; 3 uses
  %.not.i34 = icmp eq ptr %i.bq, null
  br i1 %.not.i34, label %bb.v, label %bb.w, !prof !18

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc35 unwind label %bb.x

.noexc35:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 384
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(120) %i.bq, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.x, !inline_history !248 ; 4 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.w
  %i.bv = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %.noexc37 unwind label %bb.x   ; 14 uses

.noexc37:                                         ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.bw = sext i32 %i.bu to i64                   ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 0, ptr %i.bx, align 8, !tbaa !119, !noalias !382
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 9
  store i8 1, ptr %i.by, align 1, !tbaa !126, !noalias !382
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 5, ptr %i.bz, align 4, !tbaa !127, !noalias !382
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.bv, align 8, !tbaa !14, !noalias !382
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %i.bw, ptr %i.ca, align 8, !tbaa !231, !noalias !382
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i64 %i.bw, ptr %i.cb, align 8, !tbaa !234, !noalias !382
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i32 %i.bu, ptr %i.cc, align 8, !tbaa !235, !noalias !382
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 36
  store i32 %i.bu, ptr %i.cd, align 4, !tbaa !236, !noalias !382
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %.sroa.speculated7.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bw, i64 -32768)
  %i.cf = trunc i64 %.sroa.speculated7.i.i.i to i16
  store i16 %i.cf, ptr %i.ce, align 8, !tbaa !237, !noalias !382
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 42
  %.sroa.speculated.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.bw, i64 32767)
  %i.ch = trunc i64 %.sroa.speculated.i.i.i to i16
  store i16 %i.ch, ptr %i.cg, align 2, !tbaa !238, !noalias !382
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 44
  store i8 1, ptr %i.ci, align 4, !tbaa !239, !noalias !382
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 45
  store i8 1, ptr %i.cj, align 1, !tbaa !240, !noalias !382
  %i.ck = add i32 %i.bu, 32768
  %narrow = icmp ult i32 %i.ck, 65536
  %i.cl = zext i1 %narrow to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 46
  store i8 %i.cl, ptr %i.cm, align 2, !tbaa !241, !noalias !382
  store ptr %i.bv, ptr %0, align 8, !tbaa !116
  br label %bb.bb

bb.x:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.w, %bb.v
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.y:                                             ; preds = %bb.h
  %i.co = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.a, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIlEE, i64 0) #37 ; 3 uses
  %.not.i42 = icmp eq ptr %i.co, null
  br i1 %.not.i42, label %bb.z, label %bb.aa, !prof !18

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc43 unwind label %bb.ad

.noexc43:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 384
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef i64 %i.cr(ptr noundef nonnull align 8 dereferenceable(136) %i.co, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.ad, !inline_history !254 ; 10 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.aa
  %i.ct = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %.noexc48 unwind label %bb.ad  ; 14 uses

.noexc48:                                         ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i8 0, ptr %i.cu, align 8, !tbaa !119, !noalias !387
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 9
  store i8 1, ptr %i.cv, align 1, !tbaa !126, !noalias !387
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 5, ptr %i.cw, align 4, !tbaa !127, !noalias !387
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.ct, align 8, !tbaa !14, !noalias !387
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 %i.cs, ptr %i.cx, align 8, !tbaa !231, !noalias !387
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store i64 %i.cs, ptr %i.cy, align 8, !tbaa !234, !noalias !387
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %.sroa.speculated15.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.cs, i64 -2147483648)
  %i.da = trunc i64 %.sroa.speculated15.i.i.i to i32
  store i32 %i.da, ptr %i.cz, align 8, !tbaa !235, !noalias !387
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  %.sroa.speculated11.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.cs, i64 2147483647)
  %i.dc = trunc i64 %.sroa.speculated11.i.i.i to i32
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !236, !noalias !387
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %.sroa.speculated7.i.i.i45 = tail call i64 @llvm.smax.i64(i64 %i.cs, i64 -32768)
  %i.de = trunc i64 %.sroa.speculated7.i.i.i45 to i16
  store i16 %i.de, ptr %i.dd, align 8, !tbaa !237, !noalias !387
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 42
  %.sroa.speculated.i.i.i46 = tail call i64 @llvm.smin.i64(i64 %i.cs, i64 32767)
  %i.dg = trunc i64 %.sroa.speculated.i.i.i46 to i16
  store i16 %i.dg, ptr %i.df, align 2, !tbaa !238, !noalias !387
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 44
  store i8 1, ptr %i.dh, align 4, !tbaa !239, !noalias !387
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 45 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %i.cs, 2147483647
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.ab

.thread.i.i.i:                                    ; preds = %.noexc48
  store i8 0, ptr %i.di, align 1, !tbaa !240, !noalias !387
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit52

bb.ab:                                            ; preds = %.noexc48
  %i.dj = icmp sgt i64 %i.cs, -2147483649
  %i.dk = zext i1 %i.dj to i8
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !240, !noalias !387
  %.not1.i.i.i47 = icmp sgt i64 %i.cs, 32767
  br i1 %.not1.i.i.i47, label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit52, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = icmp sgt i64 %i.cs, -32769
  %i.dm = zext i1 %i.dl to i8
  br label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit52

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit52: ; preds = %.thread.i.i.i, %bb.ab, %bb.ac
  %i.dn = phi i8 [ 0, %bb.ab ], [ %i.dm, %bb.ac ], [ 0, %.thread.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 46
  store i8 %i.dn, ptr %i.do, align 2, !tbaa !241, !noalias !387
  store ptr %i.ct, ptr %0, align 8, !tbaa !116
  br label %bb.bb

bb.ad:                                            ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.aa, %bb.z
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ae:                                            ; preds = %bb.h
  %i.dq = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.a, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorInEE, i64 0) #37 ; 3 uses
  %.not.i53 = icmp eq ptr %i.dq, null
  br i1 %.not.i53, label %bb.af, label %bb.ag, !prof !18

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueInEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc54 unwind label %bb.ai

.noexc54:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dr = load ptr, ptr %i.dq, align 16, !tbaa !14
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 384
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = invoke noundef nonnull align 16 dereferenceable(16) ptr %i.dt(ptr noundef nonnull align 16 dereferenceable(176) %i.dq, i32 noundef 0)
          to label %bb.ah unwind label %bb.ai, !inline_history !260

bb.ah:                                            ; preds = %bb.ag
  %i.dv = load i128, ptr %i.du, align 16, !tbaa !261 ; 2 uses
  %i.dw = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common12HugeintRangeESt14default_deleteIS3_EED2Ev.exit unwind label %bb.ai ; 7 uses

_ZNSt10unique_ptrIN8facebook5velox6common12HugeintRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.ah
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i8 0, ptr %i.dx, align 8, !tbaa !119, !noalias !392
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 9
  store i8 1, ptr %i.dy, align 1, !tbaa !126, !noalias !392
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 19, ptr %i.dz, align 4, !tbaa !127, !noalias !392
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common12HugeintRangeE, i64 16), ptr %i.dw, align 16, !tbaa !14, !noalias !392
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i128 %i.dv, ptr %i.ea, align 16, !tbaa !268, !noalias !392
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store i128 %i.dv, ptr %i.eb, align 16, !tbaa !270, !noalias !392
  store ptr %i.dw, ptr %0, align 8, !tbaa !116
  br label %bb.bb

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aj:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ed = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.a, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 0) #37 ; 3 uses
  %.not.i58 = icmp eq ptr %i.ed, null
  br i1 %.not.i58, label %bb.ak, label %bb.al, !prof !18

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueINS0_10StringViewEEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc59 unwind label %bb.as

.noexc59:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 384
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.eg(ptr noundef nonnull align 8 dereferenceable(208) %i.ed, i32 noundef 0)
          to label %bb.am unwind label %bb.as, !inline_history !296 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %.sroa.0.0.copyload.i = load i64, ptr %i.eh, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !17 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %6, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.ei, align 8
  %i.ej = trunc i64 %.sroa.0.0.copyload.i to i32  ; 3 uses
  %i.ek = icmp ult i32 %i.ej, 13
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.em = select i1 %i.ek, ptr %i.el, ptr %.sroa.2.0.copyload.i ; 2 uses
  %i.en = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.eo, ptr %5, align 8, !tbaa !297
  %i.ep = icmp eq ptr %i.em, null
  %i.eq = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.er = trunc i64 %i.eq to i8
  br i1 %i.ep, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #40
          to label %.noexc61 unwind label %bb.at

.noexc61:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.es = icmp ugt i32 %i.ej, 15
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, label %._crit_edge.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ao
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec26ExprToSubfieldFilterParser25makeLessThanOrEqualFilterERKSt10shared_ptrIKNS0_4core10ITypedExprEEPNS4_19ExpressionEvaluatorE:bb.a
  %3 = alloca %"class.std::shared_ptr.35", align 8 ; 7 uses
  %4 = alloca %"class.std::unique_ptr.131", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_110toConstantERKSt10shared_ptrIKNS0_4core10ITypedExprEEPNS4_19ExpressionEvaluatorE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2)
  %i.f = load ptr, ptr %3, align 8, !tbaa !113    ; 13 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(94) %i.f, i32 noundef 0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11AlwaysFalseESt14default_deleteIS3_EED2Ev.exit unwind label %bb.g ; 5 uses

_ZNSt10unique_ptrIN8facebook5velox6common11AlwaysFalseESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 0, ptr %i.l, align 8, !tbaa !119, !noalias !411
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  store i8 1, ptr %i.m, align 1, !tbaa !126, !noalias !411
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !127, !noalias !411
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11AlwaysFalseE, i64 16), ptr %i.k, align 8, !tbaa !14, !noalias !411
  store ptr %i.k, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !129
  switch i8 %i.r, label %bb.be [
    i8 1, label %bb.i
    i8 2, label %bb.m
    i8 3, label %bb.q
    i8 4, label %bb.u
    i8 10, label %bb.y
    i8 6, label %bb.ad
    i8 5, label %bb.ai
    i8 7, label %bb.an
    i8 9, label %bb.az
  ]

bb.i:                                             ; preds = %bb.h
  %i.s = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIaEE, i64 0) #37 ; 3 uses
  %.not.i18 = icmp eq ptr %i.s, null
  br i1 %.not.i18, label %bb.j, label %bb.k, !prof !18

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(108) %i.s, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.l, !inline_history !225 ; 3 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.k
  %i.x = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit unwind label %bb.l ; 14 uses

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.y = sext i8 %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 0, ptr %i.z, align 8, !tbaa !119, !noalias !414
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 1, ptr %i.aa, align 1, !tbaa !126, !noalias !414
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 5, ptr %i.ab, align 4, !tbaa !127, !noalias !414
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.x, align 8, !tbaa !14, !noalias !414
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 -9223372036854775808, ptr %i.ac, align 8, !tbaa !231, !noalias !414
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %i.y, ptr %i.ad, align 8, !tbaa !234, !noalias !414
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 -2147483648, ptr %i.ae, align 8, !tbaa !235, !noalias !414
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.ag = sext i8 %i.w to i32
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !236, !noalias !414
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i16 -32768, ptr %i.ah, align 8, !tbaa !237, !noalias !414
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 42
  %i.aj = sext i8 %i.w to i16
  store i16 %i.aj, ptr %i.ai, align 2, !tbaa !238, !noalias !414
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  store i8 0, ptr %i.ak, align 4, !tbaa !239, !noalias !414
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 45
  store i8 1, ptr %i.al, align 1, !tbaa !240, !noalias !414
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 46
  store i8 1, ptr %i.am, align 2, !tbaa !241, !noalias !414
  store ptr %i.x, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.l:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.k, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.h
  %i.ao = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIsEE, i64 0) #37 ; 3 uses
  %.not.i22 = icmp eq ptr %i.ao, null
  br i1 %.not.i22, label %bb.n, label %bb.o, !prof !18

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc23 unwind label %bb.p

.noexc23:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 384
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef signext i16 %i.ar(ptr noundef nonnull align 8 dereferenceable(112) %i.ao, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.p, !inline_history !242 ; 3 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.o
  %i.at = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit29 unwind label %bb.p ; 14 uses

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit29: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.au = sext i16 %i.as to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 0, ptr %i.av, align 8, !tbaa !119, !noalias !419
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  store i8 1, ptr %i.aw, align 1, !tbaa !126, !noalias !419
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 5, ptr %i.ax, align 4, !tbaa !127, !noalias !419
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.at, align 8, !tbaa !14, !noalias !419
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 -9223372036854775808, ptr %i.ay, align 8, !tbaa !231, !noalias !419
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.au, ptr %i.az, align 8, !tbaa !234, !noalias !419
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i32 -2147483648, ptr %i.ba, align 8, !tbaa !235, !noalias !419
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  %i.bc = sext i16 %i.as to i32
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !236, !noalias !419
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i16 -32768, ptr %i.bd, align 8, !tbaa !237, !noalias !419
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 42
  store i16 %i.as, ptr %i.be, align 2, !tbaa !238, !noalias !419
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  store i8 0, ptr %i.bf, align 4, !tbaa !239, !noalias !419
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.bg, align 1, !tbaa !240, !noalias !419
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 46
  store i8 1, ptr %i.bh, align 2, !tbaa !241, !noalias !419
  store ptr %i.at, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.p:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.o, %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.h
  %i.bj = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIiEE, i64 0) #37 ; 3 uses
  %.not.i30 = icmp eq ptr %i.bj, null
  br i1 %.not.i30, label %bb.r, label %bb.s, !prof !18

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc31 unwind label %bb.t

.noexc31:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 384
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.t, !inline_history !248 ; 3 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.s
  %i.bo = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit37 unwind label %bb.t ; 14 uses

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit37: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.bp = sext i32 %i.bn to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 0, ptr %i.bq, align 8, !tbaa !119, !noalias !424
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  store i8 1, ptr %i.br, align 1, !tbaa !126, !noalias !424
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 5, ptr %i.bs, align 4, !tbaa !127, !noalias !424
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.bo, align 8, !tbaa !14, !noalias !424
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 -9223372036854775808, ptr %i.bt, align 8, !tbaa !231, !noalias !424
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %i.bp, ptr %i.bu, align 8, !tbaa !234, !noalias !424
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i32 -2147483648, ptr %i.bv, align 8, !tbaa !235, !noalias !424
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  store i32 %i.bn, ptr %i.bw, align 4, !tbaa !236, !noalias !424
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i16 -32768, ptr %i.bx, align 8, !tbaa !237, !noalias !424
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 42
  %.sroa.speculated.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.bp, i64 32767)
  %i.bz = trunc i64 %.sroa.speculated.i.i.i to i16
  store i16 %i.bz, ptr %i.by, align 2, !tbaa !238, !noalias !424
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  store i8 0, ptr %i.ca, align 4, !tbaa !239, !noalias !424
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 45
  store i8 1, ptr %i.cb, align 1, !tbaa !240, !noalias !424
  %i.cc = icmp sgt i32 %i.bn, -32769
  %i.cd = zext i1 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 46
  store i8 %i.cd, ptr %i.ce, align 2, !tbaa !241, !noalias !424
  store ptr %i.bo, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.t:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.s, %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.h
  %i.cg = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIlEE, i64 0) #37 ; 3 uses
  %.not.i38 = icmp eq ptr %i.cg, null
  br i1 %.not.i38, label %bb.v, label %bb.w, !prof !18

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc39 unwind label %bb.x

.noexc39:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 384
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef i64 %i.cj(ptr noundef nonnull align 8 dereferenceable(136) %i.cg, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.x, !inline_history !254 ; 6 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.w
  %i.cl = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit46 unwind label %bb.x ; 14 uses

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit46: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i8 0, ptr %i.cm, align 8, !tbaa !119, !noalias !429
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 9
  store i8 1, ptr %i.cn, align 1, !tbaa !126, !noalias !429
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 5, ptr %i.co, align 4, !tbaa !127, !noalias !429
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.cl, align 8, !tbaa !14, !noalias !429
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 -9223372036854775808, ptr %i.cp, align 8, !tbaa !231, !noalias !429
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %i.ck, ptr %i.cq, align 8, !tbaa !234, !noalias !429
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store i32 -2147483648, ptr %i.cr, align 8, !tbaa !235, !noalias !429
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 36
  %.sroa.speculated11.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.ck, i64 2147483647)
  %i.ct = trunc i64 %.sroa.speculated11.i.i.i to i32
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !236, !noalias !429
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i16 -32768, ptr %i.cu, align 8, !tbaa !237, !noalias !429
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 42
  %.sroa.speculated.i.i.i41 = tail call i64 @llvm.smin.i64(i64 %i.ck, i64 32767)
  %i.cw = trunc i64 %.sroa.speculated.i.i.i41 to i16
  store i16 %i.cw, ptr %i.cv, align 2, !tbaa !238, !noalias !429
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.cy = icmp eq i64 %i.ck, -9223372036854775808
  %i.cz = zext i1 %i.cy to i8
  store i8 %i.cz, ptr %i.cx, align 4, !tbaa !239, !noalias !429
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 45
  %i.db = icmp sgt i64 %i.ck, -2147483649
  %i.dc = zext i1 %i.db to i8
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !240, !noalias !429
  %i.dd = icmp sgt i64 %i.ck, -32769
  %i.de = zext i1 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cl, i64 46
  store i8 %i.de, ptr %i.df, align 2, !tbaa !241, !noalias !429
  store ptr %i.cl, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.x:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.w, %bb.v
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.h
  %i.dh = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorInEE, i64 0) #37 ; 3 uses
  %.not.i47 = icmp eq ptr %i.dh, null
  br i1 %.not.i47, label %bb.z, label %bb.aa, !prof !18

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueInEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc48 unwind label %bb.ac

.noexc48:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.di = load ptr, ptr %i.dh, align 16, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 384
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke noundef nonnull align 16 dereferenceable(16) ptr %i.dk(ptr noundef nonnull align 16 dereferenceable(176) %i.dh, i32 noundef 0)
          to label %bb.ab unwind label %bb.ac, !inline_history !260

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load i128, ptr %i.dl, align 16, !tbaa !261
  %i.dn = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common12HugeintRangeESt14default_deleteIS3_EED2Ev.exit unwind label %bb.ac ; 7 uses

_ZNSt10unique_ptrIN8facebook5velox6common12HugeintRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i8 0, ptr %i.do, align 8, !tbaa !119, !noalias !434
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 9
  store i8 1, ptr %i.dp, align 1, !tbaa !126, !noalias !434
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 19, ptr %i.dq, align 4, !tbaa !127, !noalias !434
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common12HugeintRangeE, i64 16), ptr %i.dn, align 16, !tbaa !14, !noalias !434
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i128 -170141183460469231731687303715884105728, ptr %i.dr, align 16, !tbaa !268, !noalias !434
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store i128 %i.dm, ptr %i.ds, align 16, !tbaa !270, !noalias !434
  store ptr %i.dn, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %bb.h
  %i.du = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIdEE, i64 0) #37 ; 3 uses
  %.not.i52 = icmp eq ptr %i.du, null
  br i1 %.not.i52, label %bb.ae, label %bb.af, !prof !18

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIdEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc53 unwind label %bb.ah

.noexc53:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !14
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 384
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = invoke noundef double %i.dx(ptr noundef nonnull align 8 dereferenceable(136) %i.du, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIdEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.ah, !inline_history !271 ; 2 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIdEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.af
  %i.dz = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %.noexc55 unwind label %bb.ah  ; 9 uses

.noexc55:                                         ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIdEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i8 0, ptr %i.ea, align 8, !tbaa !119, !noalias !439
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 9
  store i8 1, ptr %i.eb, align 1, !tbaa !126, !noalias !439
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 11, ptr %i.ec, align 4, !tbaa !127, !noalias !439
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ed, align 8, !tbaa !277, !noalias !439
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common18FloatingPointRangeIdEE, i64 16), ptr %i.dz, align 8, !tbaa !14, !noalias !439
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.ee, align 8, !tbaa !278, !noalias !439
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store double %i.dy, ptr %i.ef, align 8, !tbaa !282, !noalias !439
  %i.eg = fcmp ord double %i.dy, 0.000000e+00
  br i1 %i.eg, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit, label %.invoke.i.i, !prof !283

.invoke.i.i:                                      ; preds = %.noexc55
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common18FloatingPointRangeIdEC1EdbbdbbbE18veloxCheckFailArgs_0) #40
          to label %.cont.i.i unwind label %bb.ag, !noalias !439, !inline_history !284

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %.invoke.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef 40) #39, !noalias !439
  br label %.body

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit: ; preds = %.noexc55
  store ptr %i.dz, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.ah:                                            ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIdEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.af, %bb.ae
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.h
  %i.ej = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIfEE, i64 0) #37 ; 3 uses
  %.not.i57 = icmp eq ptr %i.ej, null
  br i1 %.not.i57, label %bb.aj, label %bb.ak, !prof !18

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIfEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc58 unwind label %bb.am

.noexc58:                                         ; preds = %bb.aj
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec26ExprToSubfieldFilterParser28makeGreaterThanOrEqualFilterERKSt10shared_ptrIKNS0_4core10ITypedExprEEPNS4_19ExpressionEvaluatorE:bb.a
  %3 = alloca %"class.std::shared_ptr.35", align 8 ; 7 uses
  %4 = alloca %"class.std::unique_ptr.131", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_110toConstantERKSt10shared_ptrIKNS0_4core10ITypedExprEEPNS4_19ExpressionEvaluatorE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2)
  %i.f = load ptr, ptr %3, align 8, !tbaa !113    ; 13 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(94) %i.f, i32 noundef 0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11AlwaysFalseESt14default_deleteIS3_EED2Ev.exit unwind label %bb.g ; 5 uses

_ZNSt10unique_ptrIN8facebook5velox6common11AlwaysFalseESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 0, ptr %i.l, align 8, !tbaa !119, !noalias !457
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  store i8 1, ptr %i.m, align 1, !tbaa !126, !noalias !457
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !127, !noalias !457
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11AlwaysFalseE, i64 16), ptr %i.k, align 8, !tbaa !14, !noalias !457
  store ptr %i.k, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !129
  switch i8 %i.r, label %bb.be [
    i8 1, label %bb.i
    i8 2, label %bb.m
    i8 3, label %bb.q
    i8 4, label %bb.u
    i8 10, label %bb.y
    i8 6, label %bb.ad
    i8 5, label %bb.ai
    i8 7, label %bb.an
    i8 9, label %bb.az
  ]

bb.i:                                             ; preds = %bb.h
  %i.s = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIaEE, i64 0) #37 ; 3 uses
  %.not.i18 = icmp eq ptr %i.s, null
  br i1 %.not.i18, label %bb.j, label %bb.k, !prof !18

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(108) %i.s, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.l, !inline_history !225 ; 3 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.k
  %i.x = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit unwind label %bb.l ; 14 uses

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.y = sext i8 %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 0, ptr %i.z, align 8, !tbaa !119, !noalias !460
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 1, ptr %i.aa, align 1, !tbaa !126, !noalias !460
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 5, ptr %i.ab, align 4, !tbaa !127, !noalias !460
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.x, align 8, !tbaa !14, !noalias !460
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.y, ptr %i.ac, align 8, !tbaa !231, !noalias !460
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 9223372036854775807, ptr %i.ad, align 8, !tbaa !234, !noalias !460
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.af = sext i8 %i.w to i32
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !235, !noalias !460
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  store i32 2147483647, ptr %i.ag, align 4, !tbaa !236, !noalias !460
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ai = sext i8 %i.w to i16
  store i16 %i.ai, ptr %i.ah, align 8, !tbaa !237, !noalias !460
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 42
  store i16 32767, ptr %i.aj, align 2, !tbaa !238, !noalias !460
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  store i8 0, ptr %i.ak, align 4, !tbaa !239, !noalias !460
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 45
  store i8 1, ptr %i.al, align 1, !tbaa !240, !noalias !460
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 46
  store i8 1, ptr %i.am, align 2, !tbaa !241, !noalias !460
  store ptr %i.x, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.l:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIaEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.k, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.h
  %i.ao = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIsEE, i64 0) #37 ; 3 uses
  %.not.i22 = icmp eq ptr %i.ao, null
  br i1 %.not.i22, label %bb.n, label %bb.o, !prof !18

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc23 unwind label %bb.p

.noexc23:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 384
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef signext i16 %i.ar(ptr noundef nonnull align 8 dereferenceable(112) %i.ao, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.p, !inline_history !242 ; 3 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.o
  %i.at = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit29 unwind label %bb.p ; 14 uses

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit29: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.au = sext i16 %i.as to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 0, ptr %i.av, align 8, !tbaa !119, !noalias !465
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  store i8 1, ptr %i.aw, align 1, !tbaa !126, !noalias !465
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 5, ptr %i.ax, align 4, !tbaa !127, !noalias !465
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.at, align 8, !tbaa !14, !noalias !465
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.au, ptr %i.ay, align 8, !tbaa !231, !noalias !465
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 9223372036854775807, ptr %i.az, align 8, !tbaa !234, !noalias !465
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bb = sext i16 %i.as to i32
  store i32 %i.bb, ptr %i.ba, align 8, !tbaa !235, !noalias !465
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  store i32 2147483647, ptr %i.bc, align 4, !tbaa !236, !noalias !465
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i16 %i.as, ptr %i.bd, align 8, !tbaa !237, !noalias !465
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 42
  store i16 32767, ptr %i.be, align 2, !tbaa !238, !noalias !465
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  store i8 0, ptr %i.bf, align 4, !tbaa !239, !noalias !465
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.bg, align 1, !tbaa !240, !noalias !465
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 46
  store i8 1, ptr %i.bh, align 2, !tbaa !241, !noalias !465
  store ptr %i.at, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.p:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIsEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.o, %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.h
  %i.bj = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIiEE, i64 0) #37 ; 3 uses
  %.not.i30 = icmp eq ptr %i.bj, null
  br i1 %.not.i30, label %bb.r, label %bb.s, !prof !18

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc31 unwind label %bb.t

.noexc31:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 384
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.t, !inline_history !248 ; 3 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.s
  %i.bo = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit37 unwind label %bb.t ; 14 uses

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit37: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.bp = sext i32 %i.bn to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 0, ptr %i.bq, align 8, !tbaa !119, !noalias !470
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  store i8 1, ptr %i.br, align 1, !tbaa !126, !noalias !470
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 5, ptr %i.bs, align 4, !tbaa !127, !noalias !470
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.bo, align 8, !tbaa !14, !noalias !470
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %i.bp, ptr %i.bt, align 8, !tbaa !231, !noalias !470
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 9223372036854775807, ptr %i.bu, align 8, !tbaa !234, !noalias !470
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i32 %i.bn, ptr %i.bv, align 8, !tbaa !235, !noalias !470
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  store i32 2147483647, ptr %i.bw, align 4, !tbaa !236, !noalias !470
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %.sroa.speculated7.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bp, i64 -32768)
  %i.by = trunc i64 %.sroa.speculated7.i.i.i to i16
  store i16 %i.by, ptr %i.bx, align 8, !tbaa !237, !noalias !470
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 42
  store i16 32767, ptr %i.bz, align 2, !tbaa !238, !noalias !470
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  store i8 0, ptr %i.ca, align 4, !tbaa !239, !noalias !470
  %.not1.i.i.i = icmp slt i32 %i.bn, 32768
  %i.cb = zext i1 %.not1.i.i.i to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 45
  store i8 1, ptr %i.cc, align 1, !tbaa !240, !noalias !470
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 46
  store i8 %i.cb, ptr %i.cd, align 2, !tbaa !241, !noalias !470
  store ptr %i.bo, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.t:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIiEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.s, %bb.r
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.h
  %i.cf = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIlEE, i64 0) #37 ; 3 uses
  %.not.i38 = icmp eq ptr %i.cf, null
  br i1 %.not.i38, label %bb.v, label %bb.w, !prof !18

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc39 unwind label %bb.x

.noexc39:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 384
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = invoke noundef i64 %i.ci(ptr noundef nonnull align 8 dereferenceable(136) %i.cf, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.x, !inline_history !254 ; 6 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.w
  %i.ck = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit47 unwind label %bb.x ; 14 uses

_ZNSt10unique_ptrIN8facebook5velox6common11BigintRangeESt14default_deleteIS3_EED2Ev.exit47: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i8 0, ptr %i.cl, align 8, !tbaa !119, !noalias !475
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 9
  store i8 1, ptr %i.cm, align 1, !tbaa !126, !noalias !475
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 5, ptr %i.cn, align 4, !tbaa !127, !noalias !475
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common11BigintRangeE, i64 16), ptr %i.ck, align 8, !tbaa !14, !noalias !475
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 %i.cj, ptr %i.co, align 8, !tbaa !231, !noalias !475
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i64 9223372036854775807, ptr %i.cp, align 8, !tbaa !234, !noalias !475
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %.sroa.speculated15.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.cj, i64 -2147483648)
  %i.cr = trunc i64 %.sroa.speculated15.i.i.i to i32
  store i32 %i.cr, ptr %i.cq, align 8, !tbaa !235, !noalias !475
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 36
  store i32 2147483647, ptr %i.cs, align 4, !tbaa !236, !noalias !475
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %.sroa.speculated7.i.i.i41 = tail call i64 @llvm.smax.i64(i64 %i.cj, i64 -32768)
  %i.cu = trunc i64 %.sroa.speculated7.i.i.i41 to i16
  store i16 %i.cu, ptr %i.ct, align 8, !tbaa !237, !noalias !475
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 42
  store i16 32767, ptr %i.cv, align 2, !tbaa !238, !noalias !475
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 44
  %i.cx = icmp eq i64 %i.cj, 9223372036854775807
  %i.cy = zext i1 %i.cx to i8
  store i8 %i.cy, ptr %i.cw, align 4, !tbaa !239, !noalias !475
  %.not.i.i.i = icmp slt i64 %i.cj, 2147483648
  %.not1.i.i.i42 = icmp slt i64 %i.cj, 32768
  %.sink.i = zext i1 %.not.i.i.i to i8
  %i.cz = zext i1 %.not1.i.i.i42 to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 45
  store i8 %.sink.i, ptr %i.da, align 1, !tbaa !240, !noalias !475
  %i.db = getelementptr inbounds nuw i8, ptr %i.ck, i64 46
  store i8 %i.cz, ptr %i.db, align 2, !tbaa !241, !noalias !475
  store ptr %i.ck, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.x:                                             ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIlEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.w, %bb.v
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.h
  %i.dd = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorInEE, i64 0) #37 ; 3 uses
  %.not.i48 = icmp eq ptr %i.dd, null
  br i1 %.not.i48, label %bb.z, label %bb.aa, !prof !18

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueInEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc49 unwind label %bb.ac

.noexc49:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.de = load ptr, ptr %i.dd, align 16, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 384
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef nonnull align 16 dereferenceable(16) ptr %i.dg(ptr noundef nonnull align 16 dereferenceable(176) %i.dd, i32 noundef 0)
          to label %bb.ab unwind label %bb.ac, !inline_history !260

bb.ab:                                            ; preds = %bb.aa
  %i.di = load i128, ptr %i.dh, align 16, !tbaa !261
  %i.dj = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common12HugeintRangeESt14default_deleteIS3_EED2Ev.exit unwind label %bb.ac ; 7 uses

_ZNSt10unique_ptrIN8facebook5velox6common12HugeintRangeESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i8 0, ptr %i.dk, align 8, !tbaa !119, !noalias !480
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 9
  store i8 1, ptr %i.dl, align 1, !tbaa !126, !noalias !480
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 19, ptr %i.dm, align 4, !tbaa !127, !noalias !480
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common12HugeintRangeE, i64 16), ptr %i.dj, align 16, !tbaa !14, !noalias !480
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i128 %i.di, ptr %i.dn, align 16, !tbaa !268, !noalias !480
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i128 170141183460469231731687303715884105727, ptr %i.do, align 16, !tbaa !270, !noalias !480
  store ptr %i.dj, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %bb.h
  %i.dq = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIdEE, i64 0) #37 ; 3 uses
  %.not.i53 = icmp eq ptr %i.dq, null
  br i1 %.not.i53, label %bb.ae, label %bb.af, !prof !18

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIdEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc54 unwind label %bb.ah

.noexc54:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !14
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 384
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = invoke noundef double %i.dt(ptr noundef nonnull align 8 dereferenceable(136) %i.dq, i32 noundef 0)
          to label %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIdEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit unwind label %bb.ah, !inline_history !271 ; 2 uses

_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIdEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit: ; preds = %bb.af
  %i.dv = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %.noexc56 unwind label %bb.ah  ; 9 uses

.noexc56:                                         ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIdEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i8 0, ptr %i.dw, align 8, !tbaa !119, !noalias !485
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 9
  store i8 1, ptr %i.dx, align 1, !tbaa !126, !noalias !485
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 11, ptr %i.dy, align 4, !tbaa !127, !noalias !485
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %i.dz, align 8, !tbaa !277, !noalias !485
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common18FloatingPointRangeIdEE, i64 16), ptr %i.dv, align 8, !tbaa !14, !noalias !485
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store double %i.du, ptr %i.ea, align 8, !tbaa !278, !noalias !485
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.eb, align 8, !tbaa !282, !noalias !485
  %i.ec = fcmp ord double %i.du, 0.000000e+00
  br i1 %i.ec, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit, label %.invoke.i.i, !prof !283

.invoke.i.i:                                      ; preds = %.noexc56
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common18FloatingPointRangeIdEC1EdbbdbbbE18veloxCheckFailArgs) #40
          to label %.cont.i.i unwind label %bb.ag, !noalias !485, !inline_history !284

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %.invoke.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef 40) #39, !noalias !485
  br label %.body

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit: ; preds = %.noexc56
  store ptr %i.dv, ptr %0, align 8, !tbaa !116
  br label %bb.bf

bb.ah:                                            ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_111singleValueIdEET_RKSt10shared_ptrINS0_10BaseVectorEE.exit, %bb.af, %bb.ae
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.h
  %i.ef = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.f, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIfEE, i64 0) #37 ; 3 uses
  %.not.i58 = icmp eq ptr %i.ef, null
  br i1 %.not.i58, label %bb.aj, label %bb.ak, !prof !18

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_111singleValueIfEET_RKSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #40
          to label %.noexc59 unwind label %bb.am
end_hunk_2
begin_hunk_3_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SU_SU_T1_T2_:bb.a
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit27 ], [ %.010.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESU_EEbSH_RSK_.exit.i ], [ %.0911.i, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i ], [ %.010.i, %bb.h ], [ %.010.i, %bb.g ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !578 ; 2 uses
  store ptr %i.al, ptr %i.bc, align 8, !tbaa !578
  %.not.i.i.i.i10.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i10.i, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i11.i

_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i11.i: ; preds = %.critedge.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit: ; preds = %.critedge.i, %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i11.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SR_SU_(ptr %0, ptr readnone captures(address) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit23, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.013.024 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq ptr %.sroa.013.024, %1
  br i1 %i.b, label %.loopexit23, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit
  %.sroa.013.026 = phi ptr [ %.sroa.013.024, %.lr.ph ], [ %.sroa.013.0, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit ] ; 8 uses
  %.pn25 = phi ptr [ %0, %.lr.ph ], [ %.sroa.013.026, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit ]
  %.val.i = load ptr, ptr %.sroa.013.026, align 8 ; 5 uses
  %.val1.i = load ptr, ptr %0, align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !710, !range !613, !noundef !614 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !710, !range !613, !noundef !614
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESY_EEbSH_SK_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESY_EEbSH_SK_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 20
  %i.k = load float, ptr %i.j, align 4, !tbaa !291
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !291
  %i.n = fcmp olt float %i.k, %i.m
  br i1 %i.n, label %bb.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESY_EEbSH_SK_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESY_EEbSH_SK_.exit: ; preds = %bb.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESY_EEbSH_SK_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESY_EEbSH_SK_.exit
  store ptr null, ptr %.sroa.013.026, align 8, !tbaa !578
  %i.o = ptrtoint ptr %.sroa.013.026 to i64
  %i.p = sub i64 %i.o, %i.c
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn25, i64 16
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.x, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.preheader ]
  %.078.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.i.i.i.i ], [ %.sroa.013.026, %.lr.ph.i.i.i.i.i.preheader ]
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !578
  store ptr null, ptr %i.t, align 8, !tbaa !578
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !578  ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !578
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.x = add nsw i64 %.010.i.i.i.i.i, -1
  %i.y = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !1356

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.i.i.i.i, %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !578    ; 2 uses
  store ptr %.val.i, ptr %0, align 8, !tbaa !578
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit.sink.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESY_EEbSH_SK_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESY_EEbSH_SK_.exit
  store ptr null, ptr %.sroa.013.026, align 8, !tbaa !578
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 20
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.outer

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.outer: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESY_EEbSH_SK_.exit.thread
  %.pre28.ph = phi i8 [ %.pre.pre, %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i.i ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESY_EEbSH_SK_.exit.thread ]
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.0.0.i, %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i.i ], [ %.sroa.013.026, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPS7_INS8_18FloatingPointRangeIfEESA_ISS_EESD_ISU_SaISU_EEEESY_EEbSH_SK_.exit.thread ]
  %i.ab = trunc nuw i8 %.pre28.ph to i1
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i: ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.outer, %bb.h
  %.sroa.012.0.i = phi ptr [ %.sroa.0.0.i, %bb.h ], [ %.sroa.012.0.i.ph, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.outer ] ; 5 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -8 ; 4 uses
  %.val2.i.i = load ptr, ptr %.sroa.0.0.i, align 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !710, !range !613, !noundef !614
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclIS7_INS8_18FloatingPointRangeIfEESA_ISR_EENS_17__normal_iteratorIPST_SD_IST_SaIST_EEEEEEbRSH_SK_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclIS7_INS8_18FloatingPointRangeIfEESA_ISR_EENS_17__normal_iteratorIPST_SD_IST_SaIST_EEEEEEbRSH_SK_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load float, ptr %i.aa, align 4, !tbaa !291
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 20
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !291
  %i.ai = fcmp olt float %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclIS7_INS8_18FloatingPointRangeIfEESA_ISR_EENS_17__normal_iteratorIPST_SD_IST_SaIST_EEEEEEbRSH_SK_.exit.thread.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclIS7_INS8_18FloatingPointRangeIfEESA_ISR_EENS_17__normal_iteratorIPST_SD_IST_SaIST_EEEEEEbRSH_SK_.exit.i: ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclIS7_INS8_18FloatingPointRangeIfEESA_ISR_EENS_17__normal_iteratorIPST_SD_IST_SaIST_EEEEEEbRSH_SK_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclIS7_INS8_18FloatingPointRangeIfEESA_ISR_EENS_17__normal_iteratorIPST_SD_IST_SaIST_EEEEEEbRSH_SK_.exit.i, %bb.g
  store ptr null, ptr %.sroa.0.0.i, align 8, !tbaa !578
  %i.aj = load ptr, ptr %.sroa.012.0.i, align 8, !tbaa !578 ; 2 uses
  store ptr %.val2.i.i, ptr %.sroa.012.0.i, align 8, !tbaa !578
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i, label %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i.i, !llvm.loop !804

_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i.i: ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 32) #39
  %.pre.pre = load i8, ptr %i.d, align 8, !tbaa !710, !range !613
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EEaSEOS7_.exit.i.outer, !llvm.loop !804

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclIS7_INS8_18FloatingPointRangeIfEESA_ISR_EENS_17__normal_iteratorIPST_SD_IST_SaIST_EEEEEEbRSH_SK_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclIS7_INS8_18FloatingPointRangeIfEESA_ISR_EENS_17__normal_iteratorIPST_SD_IST_SaIST_EEEEEEbRSH_SK_.exit.i, %bb.g, %bb.f
  %i.ak = load ptr, ptr %.sroa.012.0.i, align 8, !tbaa !578 ; 2 uses
  store ptr %.val.i, ptr %.sroa.012.0.i, align 8, !tbaa !578
  %.not.i.i.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit.sink.split

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit.sink.split: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclIS7_INS8_18FloatingPointRangeIfEESA_ISR_EENS_17__normal_iteratorIPST_SD_IST_SaIST_EEEEEEbRSH_SK_.exit.thread.i, %.loopexit
  %.sink = phi ptr [ %i.z, %.loopexit ], [ %i.ak, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclIS7_INS8_18FloatingPointRangeIfEESA_ISR_EENS_17__normal_iteratorIPST_SD_IST_SaIST_EEEEEEbRSH_SK_.exit.thread.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit.sink.split, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS3_6common6FilterESt14default_deleteIS9_EERSt6vectorISC_SaISC_EEEUlRKT_RKT0_E_EclIS7_INS8_18FloatingPointRangeIfEESA_ISR_EENS_17__normal_iteratorIPST_SD_IST_SaIST_EEEEEEbRSH_SK_.exit.thread.i, %.loopexit
  %.sroa.013.0 = getelementptr inbounds nuw i8, ptr %.sroa.013.026, i64 8 ; 2 uses
  %i.al = icmp eq ptr %.sroa.013.0, %1
  br i1 %i.al, label %.loopexit23, label %bb.b, !llvm.loop !1357

.loopexit23:                                      ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_ExprToSubfieldFilter.cpp() #34 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38, !noalias !1358 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !11, !noalias !1363
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !13, !noalias !1363
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec32PrestoExprToSubfieldFilterParserESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !14, !noalias !1363
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec32PrestoExprToSubfieldFilterParserE, i64 16), ptr %i.d, align 8, !tbaa !14, !noalias !1363
  store ptr %i.d, ptr @_ZN8facebook5velox4exec26ExprToSubfieldFilterParser7parser_E, align 8, !tbaa !1364
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4exec26ExprToSubfieldFilterParser7parser_E, i64 8), align 8, !tbaa !7
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN8facebook5velox4exec26ExprToSubfieldFilterParserELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZN8facebook5velox4exec26ExprToSubfieldFilterParser7parser_E, ptr nonnull @__dso_handle) #37 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind memory(none) }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { cold noreturn }
attributes #26 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { inlinehint mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn }
attributes #34 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #37 = { nounwind }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { builtin nounwind }
attributes #40 = { noreturn }
attributes #41 = { noreturn nounwind }
attributes #42 = { cold noreturn nounwind }
attributes #43 = { allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!9 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !4, i64 8}
!12 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!13 = !{!12, !4, i64 12}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !6, i64 0}
!16 = distinct !{null, null}
!17 = !{!5, !5, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = distinct !{null}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZSt11make_uniqueIN8facebook5velox6common8Subfield11NestedFieldEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!22 = distinct !{!22, !"_ZSt11make_uniqueIN8facebook5velox6common8Subfield11NestedFieldEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSN8facebook5velox6common8Subfield11NestedFieldE", !10, i64 0}
!25 = !{!26, !27, i64 8}
!26 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS4_EE", !10, i64 0}
!28 = !{!26, !27, i64 16}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSN8facebook5velox6common8Subfield11PathElementE", !10, i64 0}
!31 = !{!26, !27, i64 0}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!34 = distinct !{!34, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_SaIS8_EEvPT_PT0_RT1_"}
!35 = !{!36}
!36 = distinct !{!36, !34, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!37 = !{!36, !38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!33, !41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !43, !44, !45}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"branch_weights", i32 4, i32 12}
!47 = distinct !{!47, !43, !44, !45}
!48 = distinct !{!48, !43, !44}
!49 = distinct !{null, null}
!50 = !{!51, !54, i64 8}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !52, i64 0, !54, i64 8, !5, i64 16}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!53 = !{!"p1 omnipotent char", !10, i64 0}
!54 = !{!"long", !5, i64 0}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZSt11make_uniqueIN8facebook5velox6common8Subfield11NestedFieldEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!57 = distinct !{!57, !"_ZSt11make_uniqueIN8facebook5velox6common8Subfield11NestedFieldEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!60 = distinct !{!60, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_SaIS8_EEvPT_PT0_RT1_"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!63 = !{!62, !64}
!64 = distinct !{!64, !65}
!65 = distinct !{!65, !"LVerDomain"}
!66 = !{!59, !67}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !43, !44, !45}
!69 = distinct !{!69, !43, !44, !45}
!70 = distinct !{!70, !43, !44}
!71 = !{!72, !72, i64 0}
!72 = !{!"p1 _ZTSSt10shared_ptrIKN8facebook5velox4core10ITypedExprEE", !10, i64 0}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4core10ITypedExprELN9__gnu_cxx12_Lock_policyE2EE", !75, i64 0, !8, i64 8}
!75 = !{!"p1 _ZTSN8facebook5velox4core10ITypedExprE", !10, i64 0}
!76 = distinct !{!76, !43}
!77 = !{!27, !27, i64 0}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !43, !44, !45}
!84 = distinct !{!84, !43, !44}
!85 = distinct !{null, null, null, ptr @_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EED2Ev, null, null, null, null, null, null}
!86 = distinct !{!86, !43}
!87 = distinct !{ptr @_ZN8facebook5velox6common8SubfieldD2Ev, ptr @_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EED2Ev, null, null, null, null, null, null}
!88 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common8Subfield11PathElementESt14default_deleteIS5_EESaIS8_EED2Ev, null, null, null, null, null, null}
!89 = !{!51, !53, i64 0}
!90 = !{!91, !72, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4core10ITypedExprEESaIS6_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!92 = !{!93, !94, i64 0}
!93 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !8, i64 8}
!94 = !{!"p1 _ZTSN8facebook5velox4TypeE", !10, i64 0}
!95 = !{!96, !4, i64 56}
!96 = !{!"_ZTSN8facebook5velox4core20DereferenceTypedExprE", !97, i64 0, !4, i64 56}
!97 = !{!"_ZTSN8facebook5velox4core10ITypedExprE", !98, i64 0, !99, i64 8, !100, i64 16, !101, i64 32}
!98 = !{!"_ZTSN8facebook5velox13ISerializableE"}
!99 = !{!"_ZTSN8facebook5velox4core8ExprKindE", !5, i64 0}
!100 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !93, i64 0}
!101 = !{!"_ZTSSt6vectorISt10shared_ptrIKN8facebook5velox4core10ITypedExprEESaIS6_EE", !102, i64 0}
!102 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4core10ITypedExprEESaIS6_EE", !103, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4core10ITypedExprEESaIS6_EE12_Vector_implE", !91, i64 0}
!104 = !{!105, !106, i64 8}
!105 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!106 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!107 = !{!105, !106, i64 0}
!108 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN8facebook5velox12errorMessageIJjmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!111 = distinct !{!111, !"_ZN8facebook5velox12errorMessageIJjmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!112 = distinct !{null, null, null, null, null, null}
!113 = !{!114, !115, i64 0}
!114 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !115, i64 0, !8, i64 8}
!115 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !10, i64 0}
!116 = !{!117, !118, i64 0}
!117 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox6common6FilterELb0EE", !118, i64 0}
!118 = !{!"p1 _ZTSN8facebook5velox6common6FilterE", !10, i64 0}
!119 = !{!120, !121, i64 8}
!120 = !{!"_ZTSN8facebook5velox6common6FilterE", !98, i64 0, !121, i64 8, !121, i64 9, !122, i64 12}
!121 = !{!"bool", !5, i64 0}
!122 = !{!"_ZTSN8facebook5velox6common10FilterKindE", !5, i64 0}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZSt11make_uniqueIN8facebook5velox6common11AlwaysFalseEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!125 = distinct !{!125, !"_ZSt11make_uniqueIN8facebook5velox6common11AlwaysFalseEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!126 = !{!120, !121, i64 9}
!127 = !{!120, !122, i64 12}
!128 = !{!118, !118, i64 0}
!129 = !{!130, !131, i64 24}
!130 = !{!"_ZTSN8facebook5velox10BaseVectorE", !100, i64 8, !131, i64 24, !121, i64 25, !132, i64 28, !133, i64 32, !135, i64 40, !136, i64 48, !4, i64 56, !137, i64 60, !137, i64 68, !137, i64 76, !137, i64 84, !141, i64 92, !121, i64 93}
!131 = !{!"_ZTSN8facebook5velox8TypeKindE", !5, i64 0}
!132 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !5, i64 0}
!133 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !134, i64 0}
!134 = !{!"p1 _ZTSN8facebook5velox6BufferE", !10, i64 0}
!135 = !{!"p1 long", !10, i64 0}
!136 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !10, i64 0}
!137 = !{!"_ZTSSt8optionalIiE", !138, i64 0}
!138 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !139, i64 0}
!139 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !140, i64 0}
!140 = !{!"_ZTSSt22_Optional_payload_baseIiE", !5, i64 0, !121, i64 4}
!141 = !{!"_ZTSSt6atomicIbE", !142, i64 0}
!142 = !{!"_ZTSSt13__atomic_baseIbE", !121, i64 0}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN8facebook5velox4exec12_GLOBAL__N_113asBigintRangeERSt10unique_ptrINS0_6common6FilterESt14default_deleteIS5_EE: argument 0"}
!145 = distinct !{!145, !"_ZN8facebook5velox4exec12_GLOBAL__N_113asBigintRangeERSt10unique_ptrINS0_6common6FilterESt14default_deleteIS5_EE"}
!146 = !{!147, !147, i64 0}
!147 = !{!"p1 _ZTSN8facebook5velox6common11BigintRangeE", !10, i64 0}
!148 = !{!149, !144}
!149 = distinct !{!149, !150, !"_ZN8facebook5velox4exec12_GLOBAL__N_111asUniquePtrINS0_6common11BigintRangeENS4_6FilterEEESt10unique_ptrIT_St14default_deleteIS8_EES7_IT0_S9_ISC_EE: argument 0"}
!150 = distinct !{!150, !"_ZN8facebook5velox4exec12_GLOBAL__N_111asUniquePtrINS0_6common11BigintRangeENS4_6FilterEEESt10unique_ptrIT_St14default_deleteIS8_EES7_IT0_S9_ISC_EE"}
end_hunk_3
