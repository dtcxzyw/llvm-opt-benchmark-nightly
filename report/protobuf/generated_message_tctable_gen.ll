inline.NumInlined: 1028
inline.NumDeleted: 519
begin_hunk_0_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #16
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not447 = icmp eq i64 %4, 0                    ; 2 uses
  br i1 %.not447, label %._crit_edge, label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.e = mul nuw nsw i64 %4, 24                   ; 2 uses
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #17
          to label %.lr.ph.preheader unwind label %bb.g ; 3 uses

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_M_allocateEm.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %0, align 8, !tbaa !41
  store ptr %i.f, ptr %i.g, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %4
  store ptr %i.h, ptr %i.d, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.e ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread", %bb.c
  %i.j = phi ptr [ %3, %bb.c ], [ %i.i, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread" ]
  %.0104.lcssa = phi i64 [ 0, %bb.c ], [ %i.az, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread" ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 32 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !49     ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 6 uses
  %i.r = add i64 %i.q, %.0104.lcssa               ; 3 uses
  %i.s = icmp ugt i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %.0104.lcssa)
          to label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit unwind label %bb.m

bb.e:                                             ; preds = %._crit_edge
  %i.t = icmp ult i64 %i.r, %i.q
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.u, ptr %i.k, align 8, !tbaa !46
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_M_allocateEm.exit.i, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread"
  %.0104399 = phi i64 [ %i.az, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread" ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.0106398 = phi ptr [ %i.ba, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread" ], [ %3, %.lr.ph.preheader ] ; 6 uses
  %i.w = load ptr, ptr %.0106398, align 8, !tbaa !50 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.y = load i8, ptr %i.x, align 2, !tbaa !19    ; 2 uses
  %i.z = and i8 %i.y, -2
  %switch.i = icmp eq i8 %i.z, 10
  br i1 %switch.i, label %bb.h, label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread"

bb.h:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 16
  %.not.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i, label %bb.i, label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread"

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 95
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38, !range !39, !noundef !40
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq i8 %i.y, 11
  br i1 %i.ai, label %bb.k, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.0106398, i64 16
  %.val.i = load i16, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, 32
  %.not.i.i128 = icmp eq i8 %i.am, 0
  %i.an = icmp ne i16 %.val.i, 0
  %spec.select.i.i = select i1 %.not.i.i128, i1 %i.an, i1 false
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i: ; preds = %bb.k, %bb.j
  %i.ao = phi i1 [ %spec.select.i.i, %bb.k ], [ false, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0106398, i64 19
  %i.aq = load i8, ptr %i.ap, align 1, !range !39
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i = select i1 %i.ao, i1 true, i1 %i.ar
  %or.cond.not.i = xor i1 %or.cond.i, true
  %i.as = getelementptr inbounds nuw i8, ptr %.0106398, i64 20
  %i.at = load i8, ptr %i.as, align 4, !range !39
  %i.au = trunc nuw i8 %i.at to i1
  %or.cond15.i = select i1 %or.cond.not.i, i1 %i.au, i1 false
  br i1 %or.cond15.i, label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit", label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread"

"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit": ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0106398, i64 12
  %.val16.i = load float, ptr %i.av, align 4, !tbaa !54
  %.val16.i.fr = freeze float %.val16.i
  %i.aw = fpext float %.val16.i.fr to double
  %i.ax = fcmp oge double %i.aw, 5.000000e-03
  %i.ay = zext i1 %i.ax to i64
  %spec.select = add i64 %.0104399, %i.ay
  br label %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread"

"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit.thread": ; preds = %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit", %bb.h, %bb.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i, %.lr.ph
  %i.az = phi i64 [ %.0104399, %bb.h ], [ %spec.select, %"_ZZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EEENK3$_1clERSD_.exit" ], [ %.0104399, %.lr.ph ], [ %.0104399, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i ], [ %.0104399, %bb.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0106398, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.f, %bb.e, %bb.d
  br i1 %.not447, label %._crit_edge407, label %.lr.ph406

.lr.ph406:                                        ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 15 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  br label %bb.n

._crit_edge407:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit
  %.0107.lcssa = phi i64 [ %i.q, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE6resizeEm.exit ], [ %.2109, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175 ]
  %i.be = sub i64 %.0107.lcssa, %i.q              ; 2 uses
  %i.bf = icmp eq i64 %i.be, %.0104.lcssa
  br i1 %i.bf, label %bb.fk, label %bb.l, !prof !55

bb.l:                                             ; preds = %._crit_edge407
  %i.bg = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef %i.be, i64 noundef %.0104.lcssa, ptr noundef nonnull @.str)
          to label %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit unwind label %bb.fl

bb.m:                                             ; preds = %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.n:                                             ; preds = %.lr.ph406, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175
  %.0107405 = phi i64 [ %i.q, %.lr.ph406 ], [ %.2109, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175 ] ; 23 uses
  %.0110401 = phi ptr [ %3, %.lr.ph406 ], [ %i.qb, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175 ] ; 14 uses
  %i.bi = load ptr, ptr %.0110401, align 8, !tbaa !50 ; 47 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0110401, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !56 ; 2 uses
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !44 ; 8 uses
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !45
  %.not.i.i130 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i130, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !57
  %.sroa.6309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %i.bk, ptr %.sroa.6309.0..sroa_idx, align 8, !tbaa !3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i16 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !58
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !58
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !59
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  store ptr %i.bn, ptr %i.bb, align 8, !tbaa !44
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE9push_backEOS4_.exit

bb.p:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %0, align 8, !tbaa !41    ; 4 uses
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 6 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %bb.q, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc131 unwind label %.loopexit.split-lp

.noexc131:                                        ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.bt = sdiv exact i64 %i.br, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 384307168202282325)
  %i.bx = select i1 %i.bv, i64 384307168202282325, i64 %i.bw ; 2 uses
  %i.by = mul nuw nsw i64 %i.bx, 24
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #17
          to label %.noexc132 unwind label %.loopexit ; 4 uses

.noexc132:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.br ; 6 uses
  store ptr %i.bi, ptr %i.ca, align 8, !tbaa !57
  %.sroa.6309.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %i.bk, ptr %.sroa.6309.0..sroa_idx310, align 8, !tbaa !3
  %.sroa.7.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i16 0, ptr %.sroa.7.0..sroa_idx312, align 4, !tbaa !58
  %.sroa.8.0..sroa_idx314 = getelementptr inbounds nuw i8, ptr %i.ca, i64 14
  store i16 0, ptr %.sroa.8.0..sroa_idx314, align 2, !tbaa !58
  %.sroa.9.0..sroa_idx316 = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i8 0, ptr %.sroa.9.0..sroa_idx316, align 8, !tbaa !59
  %i.cb = icmp sgt i64 %i.br, 0
  br i1 %i.cb, label %bb.r, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.r:                                             ; preds = %.noexc132
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %i.bo, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.r, %.noexc132
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.br) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.bz, ptr %0, align 8, !tbaa !41
  store ptr %i.cc, ptr %i.bb, align 8, !tbaa !44
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cd, ptr %i.d, align 8, !tbaa !45
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.o
  %i.ce = phi ptr [ %i.cc, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.bn, %bb.o ] ; 9 uses
  %i.cf = load i8, ptr %2, align 1, !tbaa !61, !range !39, !noundef !40
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = invoke noundef zeroext i8 @_ZN6google8protobuf8internal3cpp16GetUtf8CheckModeEPKNS0_15FieldDescriptorEb(ptr noundef %i.bi, i1 noundef zeroext %i.cg)
          to label %bb.t unwind label %.loopexit330 ; 2 uses

bb.t:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE9push_backEOS4_.exit
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 -8
  store i8 %i.ch, ptr %i.ci, align 8, !tbaa !63
  %i.cj = getelementptr inbounds i8, ptr %i.ce, i64 -16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !65
  %i.cl = icmp sgt i32 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 5 uses
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = and i8 %i.cn, 32                        ; 2 uses
  %i.cp = icmp ne i8 %i.co, 0                     ; 15 uses
  %brmerge.i = or i1 %i.cl, %i.cp
  %.mux.i = select i1 %i.cp, i16 32, i16 16
  br i1 %brmerge.i, label %bb.u, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i

_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i: ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = and i8 %i.cr, 8
  %.not.i.i133 = icmp eq i8 %i.cs, 0
  %spec.select103.i = select i1 %.not.i.i133, i16 0, i16 48
  br label %bb.u

bb.u:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i, %bb.t
  %.0.i = phi i16 [ %spec.select103.i, %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i ], [ %.mux.i, %bb.t ] ; 28 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !19  ; 2 uses
  switch i8 %i.cu, label %bb.ck [
    i8 1, label %bb.v
    i8 2, label %bb.y
    i8 7, label %bb.ab
    i8 15, label %bb.ae
    i8 6, label %bb.ah
    i8 16, label %bb.ak
    i8 8, label %bb.an
    i8 14, label %bb.aq
    i8 13, label %bb.ba
    i8 17, label %bb.bd
    i8 5, label %bb.bg
    i8 4, label %bb.bj
    i8 18, label %bb.bm
    i8 3, label %bb.bp
    i8 12, label %bb.bs
    i8 9, label %bb.bt
    i8 10, label %bb.bw
    i8 11, label %bb.cb
  ]

bb.v:                                             ; preds = %bb.u
  br i1 %i.cp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cv = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %.noexc138 unwind label %.loopexit330

.noexc138:                                        ; preds = %bb.w
  %i.cw = select i1 %i.cv, i16 6340, i16 6339
  br label %bb.x

bb.x:                                             ; preds = %.noexc138, %bb.v
  %i.cx = phi i16 [ 6339, %bb.v ], [ %i.cw, %.noexc138 ]
  %i.cy = or disjoint i16 %i.cx, %.0.i
  br label %thread-pre-split.i

bb.y:                                             ; preds = %bb.u
  br i1 %i.cp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cz = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %.noexc139 unwind label %.loopexit330

.noexc139:                                        ; preds = %bb.z
  %i.da = select i1 %i.cz, i16 6276, i16 6275
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc139, %bb.y
  %i.db = phi i16 [ 6275, %bb.y ], [ %i.da, %.noexc139 ]
  %i.dc = or disjoint i16 %i.db, %.0.i
  br label %thread-pre-split.i

bb.ab:                                            ; preds = %bb.u
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dd = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %.noexc140 unwind label %.loopexit330

.noexc140:                                        ; preds = %bb.ac
  %i.de = select i1 %i.dd, i16 2180, i16 2179
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc140, %bb.ab
  %i.df = phi i16 [ 2179, %bb.ab ], [ %i.de, %.noexc140 ]
  %i.dg = or disjoint i16 %i.df, %.0.i
  br label %thread-pre-split.i

bb.ae:                                            ; preds = %bb.u
  br i1 %i.cp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dh = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %.noexc141 unwind label %.loopexit330

.noexc141:                                        ; preds = %bb.af
  %i.di = select i1 %i.dh, i16 4228, i16 4227
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc141, %bb.ae
  %i.dj = phi i16 [ 4227, %bb.ae ], [ %i.di, %.noexc141 ]
  %i.dk = or disjoint i16 %i.dj, %.0.i
  br label %thread-pre-split.i

bb.ah:                                            ; preds = %bb.u
  br i1 %i.cp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dl = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %.noexc142 unwind label %.loopexit330

.noexc142:                                        ; preds = %bb.ai
  %i.dm = select i1 %i.dl, i16 2244, i16 2243
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc142, %bb.ah
  %i.dn = phi i16 [ 2243, %bb.ah ], [ %i.dm, %.noexc142 ]
  %i.do = or disjoint i16 %i.dn, %.0.i
  br label %thread-pre-split.i

bb.ak:                                            ; preds = %bb.u
  br i1 %i.cp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dp = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %.noexc143 unwind label %.loopexit330

.noexc143:                                        ; preds = %bb.al
  %i.dq = select i1 %i.dp, i16 4292, i16 4291
  br label %bb.am

bb.am:                                            ; preds = %.noexc143, %bb.ak
  %i.dr = phi i16 [ 4291, %bb.ak ], [ %i.dq, %.noexc143 ]
  %i.ds = or disjoint i16 %i.dr, %.0.i
  br label %thread-pre-split.i

bb.an:                                            ; preds = %bb.u
  br i1 %i.cp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dt = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %.noexc144 unwind label %.loopexit330

.noexc144:                                        ; preds = %bb.ao
  %i.du = select i1 %i.dt, i16 2, i16 1
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc144, %bb.an
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a
bb.bx:                                            ; preds = %bb.bw
  %i.fv = or disjoint i16 %.0.i, 1606
  br label %thread-pre-split.i

bb.by:                                            ; preds = %bb.bw
  %i.fw = getelementptr inbounds nuw i8, ptr %.0110401, i64 20
  %i.fx = load i8, ptr %i.fw, align 4, !tbaa !68, !range !39, !noundef !40
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.fz = or disjoint i16 %.0.i, 1094
  br label %thread-pre-split.i

bb.ca:                                            ; preds = %bb.by
  %i.ga = or disjoint i16 %.0.i, 582
  br label %thread-pre-split.i

bb.cb:                                            ; preds = %bb.u
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = and i8 %i.gc, 16
  %.not.i134 = icmp eq i8 %i.gd, 0
  br i1 %.not.i134, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i135, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ge = or disjoint i16 %.0.i, 7
  br label %thread-pre-split.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i135: ; preds = %bb.cb
  %i.gf = getelementptr inbounds nuw i8, ptr %.0110401, i64 16
  %.val.i136 = load i16, ptr %i.gf, align 8       ; 3 uses
  %.not.i97.i = icmp eq i8 %i.co, 0
  %i.gg = icmp ne i16 %.val.i136, 0
  %spec.select.i.i137 = select i1 %.not.i97.i, i1 %i.gg, i1 false
  br i1 %spec.select.i.i137, label %bb.cd, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i

bb.cd:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i135
  switch i16 %.val.i136, label %bb.ce [
    i16 1024, label %.critedge.i
    i16 512, label %.critedge.i
  ], !prof !69

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 622, ptr noundef nonnull @.str.3) #20
          to label %.noexc159 unwind label %.loopexit.split-lp331

.noexc159:                                        ; preds = %bb.ce
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.cf

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %.noexc159
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  unreachable

bb.cf:                                            ; preds = %.noexc159
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  unreachable

.critedge.i:                                      ; preds = %bb.cd, %bb.cd
  %i.gi = or i16 %.0.i, %.val.i136
  %i.gj = or i16 %i.gi, 134
  br label %thread-pre-split.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i135
  %i.gk = getelementptr inbounds nuw i8, ptr %.0110401, i64 19
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !67, !range !39, !noundef !40
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i
  %i.gn = or disjoint i16 %.0.i, 1542
  br label %thread-pre-split.i

bb.ch:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i
  %i.go = getelementptr inbounds nuw i8, ptr %.0110401, i64 20
  %i.gp = load i8, ptr %i.go, align 4, !tbaa !68, !range !39, !noundef !40
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.gr = or disjoint i16 %.0.i, 1030
  br label %thread-pre-split.i

bb.cj:                                            ; preds = %bb.ch
  %i.gs = or disjoint i16 %.0.i, 518
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.cj, %bb.ci, %bb.cg, %.critedge.i, %bb.cc, %bb.ca, %bb.bz, %bb.bx, %bb.br, %bb.bo, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.az, %bb.au, %bb.ap, %bb.am, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x
  %.2.ph.i = phi i16 [ %i.gs, %bb.cj ], [ %i.gr, %bb.ci ], [ %i.gn, %bb.cg ], [ %i.gj, %.critedge.i ], [ %i.ge, %bb.cc ], [ %i.ga, %bb.ca ], [ %i.fz, %bb.bz ], [ %i.fv, %bb.bx ], [ %i.fo, %bb.br ], [ %i.fk, %bb.bo ], [ %i.fg, %bb.bl ], [ %i.fc, %bb.bi ], [ %i.ey, %bb.bf ], [ %i.eu, %bb.bc ], [ %.1.i, %bb.az ], [ %i.ei, %bb.au ], [ %i.dw, %bb.ap ], [ %i.ds, %bb.am ], [ %i.do, %bb.aj ], [ %i.dk, %bb.ag ], [ %i.dg, %bb.ad ], [ %i.dc, %bb.aa ], [ %i.cy, %bb.x ]
  %.pr.i = load i8, ptr %i.ct, align 2, !tbaa !19
  br label %bb.ck

bb.ck:                                            ; preds = %thread-pre-split.i, %bb.u
  %i.gt = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.cu, %bb.u ] ; 4 uses
  %.2.i = phi i16 [ %.2.ph.i, %thread-pre-split.i ], [ %.0.i, %bb.u ] ; 3 uses
  switch i8 %i.gt, label %bb.cp [
    i8 12, label %.thread.i
    i8 9, label %.thread.i
  ]

.thread.i:                                        ; preds = %bb.ck, %bb.ck, %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %i.gu = phi i8 [ %i.gt, %bb.ck ], [ %i.gt, %bb.ck ], [ 12, %bb.bs ], [ 9, %bb.bv ], [ 9, %bb.bu ], [ 9, %bb.bt ] ; 4 uses
  %.2107.i = phi i16 [ %.2.i, %bb.ck ], [ %.2.i, %bb.ck ], [ %i.fp, %bb.bs ], [ %i.fr, %bb.bv ], [ %i.fq, %bb.bu ], [ %.0.i, %bb.bt ] ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = and i8 %i.gw, 7
  switch i8 %i.gx, label %bb.cp [
    i8 2, label %bb.cl
    i8 1, label %bb.cm
    i8 3, label %bb.cm
  ]

bb.cl:                                            ; preds = %.thread.i
  %i.gy = or i16 %.2107.i, 128
  br label %bb.cp

bb.cm:                                            ; preds = %.thread.i, %.thread.i
  %i.gz = load i8, ptr %i.cm, align 1
  %i.ha = and i8 %i.gz, 32
  %.not102.i = icmp eq i8 %i.ha, 0
  br i1 %.not102.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hb = or i16 %.2107.i, 256
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.hc = getelementptr inbounds nuw i8, ptr %.0110401, i64 22
  %i.hd = load i8, ptr %i.hc, align 2, !tbaa !70, !range !39, !noundef !40
  %i.he = trunc nuw i8 %i.hd to i1
  %i.hf = select i1 %i.he, i16 320, i16 0
  %i.hg = or i16 %i.hf, %.2107.i
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cl, %.thread.i, %bb.ck
  %i.hh = phi i8 [ %i.gu, %.thread.i ], [ %i.gu, %bb.cl ], [ %i.gu, %bb.cn ], [ %i.gu, %bb.co ], [ %i.gt, %bb.ck ] ; 2 uses
  %.3.i = phi i16 [ %.2107.i, %.thread.i ], [ %i.gy, %bb.cl ], [ %i.hb, %bb.cn ], [ %i.hg, %bb.co ], [ %.2.i, %bb.ck ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.0110401, i64 21
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !71, !range !39, !noundef !40
  %i.hk = shl nuw nsw i8 %i.hj, 3
  %i.hl = zext nneg i8 %i.hk to i16
  %spec.select.i = or i16 %.3.i, %i.hl
  %i.hm = getelementptr inbounds i8, ptr %i.ce, i64 -10 ; 2 uses
  store i16 %spec.select.i, ptr %i.hm, align 2, !tbaa !72
  switch i8 %i.hh, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175 [
    i8 11, label %bb.cq
    i8 10, label %bb.cq
    i8 14, label %bb.ew
  ]

bb.cq:                                            ; preds = %bb.cp, %bb.cp
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = and i8 %i.ho, 16
  %.not329 = icmp eq i8 %i.hp, 0
  br i1 %.not329, label %bb.dr, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hq = load ptr, ptr %i.k, align 8, !tbaa !46  ; 4 uses
  %i.hr = load ptr, ptr %5, align 8, !tbaa !49    ; 4 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 6 uses
  %i.hv = ashr exact i64 %i.hu, 4                 ; 4 uses
  %i.hw = trunc i64 %i.hv to i16
  %i.hx = getelementptr inbounds i8, ptr %i.ce, i64 -12
  store i16 %i.hw, ptr %i.hx, align 4, !tbaa !73
  %i.hy = load ptr, ptr %i.bc, align 8, !tbaa !74
  %.not.i.i160 = icmp eq ptr %i.hq, %i.hy
  br i1 %.not.i.i160, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store i32 11, ptr %i.hq, align 8, !tbaa !75
  %.sroa.6304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr %i.bi, ptr %.sroa.6304.0..sroa_idx, align 8, !tbaa !38
  %i.hz = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store ptr %i.ia, ptr %i.k, align 8, !tbaa !46
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit

bb.ct:                                            ; preds = %bb.cr
  %i.ib = icmp eq i64 %i.hu, 9223372036854775792
  br i1 %i.ib, label %bb.cu, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc164.a unwind label %.loopexit.split-lp341

.noexc164.a:                                      ; preds = %bb.cu
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ct
  %.sroa.speculated.i.i.i.i161 = tail call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.ic = add nsw i64 %.sroa.speculated.i.i.i.i161, %i.hv ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.hv
  %i.ie = tail call i64 @llvm.umin.i64(i64 %i.ic, i64 576460752303423487)
  %i.if = select i1 %i.id, i64 576460752303423487, i64 %i.ie ; 2 uses
  %i.ig = shl nuw nsw i64 %i.if, 4
  %i.ih = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ig) #17
          to label %.noexc165 unwind label %.loopexit340 ; 4 uses

.noexc165:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 %i.hu ; 3 uses
  store i32 11, ptr %i.ii, align 8, !tbaa !75
  %.sroa.6304.0..sroa_idx305 = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr %i.bi, ptr %.sroa.6304.0..sroa_idx305, align 8, !tbaa !38
  %i.ij = icmp sgt i64 %i.hu, 0
  br i1 %i.ij, label %bb.cv, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.cv:                                            ; preds = %.noexc165
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr align 8 %i.hr, i64 %i.hu, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.cv, %.noexc165
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %.not.i17.i.i.i163 = icmp eq ptr %i.hr, null
  br i1 %.not.i17.i.i.i163, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.hu) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.cw, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.ih, ptr %5, align 8, !tbaa !49
  store ptr %i.ik, ptr %i.k, align 8, !tbaa !46
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %i.if
  store ptr %i.il, ptr %i.bc, align 8, !tbaa !74
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.cs
  %i.im = load i8, ptr %i.bd, align 1, !tbaa !77, !range !39, !noundef !40
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.cx, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

bb.cx:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit
  %i.io = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %bb.cy unwind label %bb.dh

bb.cy:                                            ; preds = %bb.cx
  %i.ip = invoke noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160) %i.io)
          to label %bb.cz unwind label %bb.dh     ; 7 uses

bb.cz:                                            ; preds = %bb.cy
  %i.iq = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ip)
          to label %bb.da unwind label %bb.dh

bb.da:                                            ; preds = %bb.cz
  %.not116 = icmp eq ptr %i.iq, null
  br i1 %.not116, label %bb.di, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ir = load ptr, ptr %i.k, align 8, !tbaa !46  ; 4 uses
  %i.is = load ptr, ptr %i.bc, align 8, !tbaa !74
  %.not.i.i166 = icmp eq ptr %i.ir, %i.is
  br i1 %.not.i.i166, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i32 4, ptr %i.ir, align 8, !tbaa !75
  %.sroa.6296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr %i.ip, ptr %.sroa.6296.0..sroa_idx, align 8, !tbaa !38
  %i.it = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store ptr %i.iu, ptr %i.k, align 8, !tbaa !46
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

bb.dd:                                            ; preds = %bb.db
  %i.iv = load ptr, ptr %5, align 8, !tbaa !49    ; 4 uses
  %i.iw = ptrtoint ptr %i.ir to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix                    ; 6 uses
  %i.iz = icmp eq i64 %i.iy, 9223372036854775792
  br i1 %i.iz, label %bb.de, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i167

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc173 unwind label %.loopexit.split-lp346

.noexc173:                                        ; preds = %bb.de
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i167: ; preds = %bb.dd
  %i.ja = ashr exact i64 %i.iy, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i168 = tail call i64 @llvm.umax.i64(i64 %i.ja, i64 1)
  %i.jb = add nsw i64 %.sroa.speculated.i.i.i.i168, %i.ja ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.ja
  %i.jd = tail call i64 @llvm.umin.i64(i64 %i.jb, i64 576460752303423487)
  %i.je = select i1 %i.jc, i64 576460752303423487, i64 %i.jd ; 2 uses
  %i.jf = shl nuw nsw i64 %i.je, 4
  %i.jg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jf) #17
          to label %.noexc174 unwind label %.loopexit345 ; 4 uses

.noexc174:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i167
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 %i.iy ; 3 uses
  store i32 4, ptr %i.jh, align 8, !tbaa !75
  %.sroa.6296.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store ptr %i.ip, ptr %.sroa.6296.0..sroa_idx297, align 8, !tbaa !38
  %i.ji = icmp sgt i64 %i.iy, 0
  br i1 %i.ji, label %bb.df, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i170

bb.df:                                            ; preds = %.noexc174
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jg, ptr align 8 %i.iv, i64 %i.iy, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i170

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i170: ; preds = %bb.df, %.noexc174
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %.not.i17.i.i.i171 = icmp eq ptr %i.iv, null
  br i1 %.not.i17.i.i.i171, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i172, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i170
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.iy) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i172

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i172: ; preds = %bb.dg, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i170
  store ptr %i.jg, ptr %5, align 8, !tbaa !49
  store ptr %i.jj, ptr %i.k, align 8, !tbaa !46
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %i.je
  store ptr %i.jk, ptr %i.bc, align 8, !tbaa !74
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit330:                                     ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE9push_backEOS4_.exit, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.al, %bb.ao, %bb.aq, %bb.ar, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.i, %bb.at, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i, %.noexc149, %bb.aw, %bb.ay, %bb.bb, %bb.be, %bb.bh, %bb.bk, %bb.bn, %bb.bq, %bb.ew, %bb.ex, %bb.ez
  %lpad.loopexit332 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp331:                            ; preds = %bb.ce
  %lpad.loopexit.split-lp333 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit340:                                     ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit342 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp341:                            ; preds = %bb.cu
  %lpad.loopexit.split-lp343 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.dh:                                            ; preds = %bb.dj, %bb.cz, %bb.cy, %bb.cx
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit345:                                     ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i167
  %lpad.loopexit347 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp346:                            ; preds = %bb.de
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.di:                                            ; preds = %bb.da
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.jn = load i8, ptr %i.jm, align 2, !tbaa !19
  %i.jo = icmp eq i8 %i.jn, 14
  br i1 %i.jo, label %bb.dj, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

bb.dj:                                            ; preds = %bb.di
  %i.jp = invoke noundef zeroext i1 @_ZN6google8protobuf8internal3cpp33HasPreservingUnknownEnumSemanticsEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.ip)
          to label %bb.dk unwind label %bb.dh

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.jp, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.jq = load ptr, ptr %i.k, align 8, !tbaa !46  ; 4 uses
  %i.jr = load ptr, ptr %i.bc, align 8, !tbaa !74
  %.not.i.i176 = icmp eq ptr %i.jq, %i.jr
  br i1 %.not.i.i176, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store i32 9, ptr %i.jq, align 8, !tbaa !75
  %.sroa.6288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store ptr %i.ip, ptr %.sroa.6288.0..sroa_idx, align 8, !tbaa !38
  %i.js = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store ptr %i.jt, ptr %i.k, align 8, !tbaa !46
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

bb.dn:                                            ; preds = %bb.dl
  %i.ju = load ptr, ptr %5, align 8, !tbaa !49    ; 4 uses
  %i.jv = ptrtoint ptr %i.jq to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 6 uses
  %i.jy = icmp eq i64 %i.jx, 9223372036854775792
  br i1 %i.jy, label %bb.do, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i177

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc183 unwind label %.loopexit.split-lp351

.noexc183:                                        ; preds = %bb.do
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i177: ; preds = %bb.dn
  %i.jz = ashr exact i64 %i.jx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i178 = tail call i64 @llvm.umax.i64(i64 %i.jz, i64 1)
  %i.ka = add nsw i64 %.sroa.speculated.i.i.i.i178, %i.jz ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %i.jz
  %i.kc = tail call i64 @llvm.umin.i64(i64 %i.ka, i64 576460752303423487)
  %i.kd = select i1 %i.kb, i64 576460752303423487, i64 %i.kc ; 2 uses
  %i.ke = shl nuw nsw i64 %i.kd, 4
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #17
          to label %.noexc184 unwind label %.loopexit350 ; 4 uses

.noexc184:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i177
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %i.jx ; 3 uses
  store i32 9, ptr %i.kg, align 8, !tbaa !75
  %.sroa.6288.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr %i.ip, ptr %.sroa.6288.0..sroa_idx289, align 8, !tbaa !38
  %i.kh = icmp sgt i64 %i.jx, 0
  br i1 %i.kh, label %bb.dp, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i180

bb.dp:                                            ; preds = %.noexc184
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kf, ptr align 8 %i.ju, i64 %i.jx, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i180

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i180: ; preds = %bb.dp, %.noexc184
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %.not.i17.i.i.i181 = icmp eq ptr %i.ju, null
  br i1 %.not.i17.i.i.i181, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i182, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i180
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jx) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i182

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i182: ; preds = %bb.dq, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i180
  store ptr %i.kf, ptr %5, align 8, !tbaa !49
  store ptr %i.ki, ptr %i.k, align 8, !tbaa !46
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.kd
  store ptr %i.kj, ptr %i.bc, align 8, !tbaa !74
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

.loopexit350:                                     ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i177
  %lpad.loopexit352 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp351:                            ; preds = %bb.do
  %lpad.loopexit.split-lp353 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.dr:                                            ; preds = %bb.cq
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !37
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 95
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !38, !range !39, !noundef !40
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store i16 0, ptr %i.hm, align 2, !tbaa !72
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

bb.dt:                                            ; preds = %bb.dr
  %i.kp = getelementptr i8, ptr %.0110401, i64 16 ; 2 uses
  %i.kq = icmp eq i8 %i.hh, 11
  br i1 %i.kq, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit: ; preds = %bb.dt
  %.0110.val = load i16, ptr %i.kp, align 8
  %i.kr = load i8, ptr %i.cm, align 1
  %i.ks = and i8 %i.kr, 32
  %.not.i186 = icmp eq i8 %i.ks, 0
  %i.kt = icmp ne i16 %.0110.val, 0
  %spec.select.i187 = select i1 %.not.i186, i1 %i.kt, i1 false
  br i1 %spec.select.i187, label %bb.du, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread

bb.du:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit
  %i.ku = load i8, ptr %i.bd, align 1, !tbaa !77, !range !39, !noundef !40
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.dv, label %bb.en

bb.dv:                                            ; preds = %bb.du
  %i.kw = load ptr, ptr %i.k, align 8, !tbaa !46  ; 4 uses
  %i.kx = load ptr, ptr %5, align 8, !tbaa !49    ; 4 uses
  %i.ky = ptrtoint ptr %i.kw to i64
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 6 uses
  %i.lb = ashr exact i64 %i.la, 4                 ; 4 uses
  %i.lc = trunc i64 %i.lb to i16
  %i.ld = getelementptr inbounds i8, ptr %i.ce, i64 -12
  store i16 %i.lc, ptr %i.ld, align 4, !tbaa !73
  %i.le = load ptr, ptr %i.bc, align 8, !tbaa !74
  %.not.i.i188 = icmp eq ptr %i.kw, %i.le
  br i1 %.not.i.i188, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store i32 3, ptr %i.kw, align 8, !tbaa !75
  %.sroa.6280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store ptr %i.bi, ptr %.sroa.6280.0..sroa_idx, align 8, !tbaa !38
  %i.lf = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 2 uses
  store ptr %i.lg, ptr %i.k, align 8, !tbaa !46
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit197

bb.dx:                                            ; preds = %bb.dv
  %i.lh = icmp eq i64 %i.la, 9223372036854775792
  br i1 %i.lh, label %bb.dy, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i189

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc195 unwind label %.loopexit.split-lp361

.noexc195:                                        ; preds = %bb.dy
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i189: ; preds = %bb.dx
  %.sroa.speculated.i.i.i.i190 = tail call i64 @llvm.umax.i64(i64 %i.lb, i64 1)
  %i.li = add nsw i64 %.sroa.speculated.i.i.i.i190, %i.lb ; 2 uses
  %i.lj = icmp ult i64 %i.li, %i.lb
  %i.lk = tail call i64 @llvm.umin.i64(i64 %i.li, i64 576460752303423487)
  %i.ll = select i1 %i.lj, i64 576460752303423487, i64 %i.lk ; 2 uses
  %i.lm = shl nuw nsw i64 %i.ll, 4
  %i.ln = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lm) #17
          to label %.noexc196 unwind label %.loopexit360 ; 4 uses

.noexc196:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i189
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 %i.la ; 3 uses
  store i32 3, ptr %i.lo, align 8, !tbaa !75
  %.sroa.6280.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store ptr %i.bi, ptr %.sroa.6280.0..sroa_idx281, align 8, !tbaa !38
  %i.lp = icmp sgt i64 %i.la, 0
  br i1 %i.lp, label %bb.dz, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i192

bb.dz:                                            ; preds = %.noexc196
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ln, ptr align 8 %i.kx, i64 %i.la, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i192

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i192: ; preds = %bb.dz, %.noexc196
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 16 ; 2 uses
  %.not.i17.i.i.i193 = icmp eq ptr %i.kx, null
  br i1 %.not.i17.i.i.i193, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i194, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i192
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.la) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i194

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i194: ; preds = %bb.ea, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i192
  store ptr %i.ln, ptr %5, align 8, !tbaa !49
  store ptr %i.lq, ptr %i.k, align 8, !tbaa !46
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.ll
  store ptr %i.lr, ptr %i.bc, align 8, !tbaa !74
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit197

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit197: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i194, %bb.dw
  %i.ls = phi ptr [ %i.lq, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i194 ], [ %i.lg, %bb.dw ] ; 7 uses
  %i.lt = load i16, ptr %i.kp, align 8, !tbaa !78
  %i.lu = icmp eq i16 %i.lt, 512
  %i.lv = load ptr, ptr %i.bc, align 8, !tbaa !74
  %.not.i.i198 = icmp eq ptr %i.ls, %i.lv         ; 2 uses
  br i1 %i.lu, label %bb.eb, label %bb.eh

bb.eb:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit197
  br i1 %.not.i.i198, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i32 6, ptr %i.ls, align 8, !tbaa !75
  %.sroa.6272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %i.bi, ptr %.sroa.6272.0..sroa_idx, align 8, !tbaa !38
  %i.lw = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store ptr %i.lx, ptr %i.k, align 8, !tbaa !46
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

bb.ed:                                            ; preds = %bb.eb
  %i.ly = load ptr, ptr %5, align 8, !tbaa !49    ; 4 uses
  %i.lz = ptrtoint ptr %i.ls to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma                    ; 6 uses
  %i.mc = icmp eq i64 %i.mb, 9223372036854775792
  br i1 %i.mc, label %bb.ee, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i199

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc205 unwind label %.loopexit.split-lp371

.noexc205:                                        ; preds = %bb.ee
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i199: ; preds = %bb.ed
  %i.md = ashr exact i64 %i.mb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i200 = tail call i64 @llvm.umax.i64(i64 %i.md, i64 1)
  %i.me = add nsw i64 %.sroa.speculated.i.i.i.i200, %i.md ; 2 uses
  %i.mf = icmp ult i64 %i.me, %i.md
  %i.mg = tail call i64 @llvm.umin.i64(i64 %i.me, i64 576460752303423487)
  %i.mh = select i1 %i.mf, i64 576460752303423487, i64 %i.mg ; 2 uses
  %i.mi = shl nuw nsw i64 %i.mh, 4
  %i.mj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mi) #17
          to label %.noexc206 unwind label %.loopexit370 ; 4 uses

.noexc206:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i199
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 %i.mb ; 3 uses
  store i32 6, ptr %i.mk, align 8, !tbaa !75
  %.sroa.6272.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store ptr %i.bi, ptr %.sroa.6272.0..sroa_idx273, align 8, !tbaa !38
  %i.ml = icmp sgt i64 %i.mb, 0
  br i1 %i.ml, label %bb.ef, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i202

bb.ef:                                            ; preds = %.noexc206
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mj, ptr align 8 %i.ly, i64 %i.mb, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i202

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i202: ; preds = %bb.ef, %.noexc206
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %.not.i17.i.i.i203 = icmp eq ptr %i.ly, null
  br i1 %.not.i17.i.i.i203, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i204, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i202
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.mb) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i204

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i204: ; preds = %bb.eg, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i202
  store ptr %i.mj, ptr %5, align 8, !tbaa !49
  store ptr %i.mm, ptr %i.k, align 8, !tbaa !46
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.mh
  store ptr %i.mn, ptr %i.bc, align 8, !tbaa !74
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

.loopexit360:                                     ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i189
  %lpad.loopexit362 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp361:                            ; preds = %bb.dy
  %lpad.loopexit.split-lp363 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit370:                                     ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i199
  %lpad.loopexit372 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp371:                            ; preds = %bb.ee
  %lpad.loopexit.split-lp373 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.eh:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit197
  br i1 %.not.i.i198, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i32 0, ptr %i.ls, align 8, !tbaa !75
  %.sroa.6264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr null, ptr %.sroa.6264.0..sroa_idx, align 8, !tbaa !38
  %i.mo = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store ptr %i.mp, ptr %i.k, align 8, !tbaa !46
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

bb.ej:                                            ; preds = %bb.eh
  %i.mq = load ptr, ptr %5, align 8, !tbaa !49    ; 4 uses
  %i.mr = ptrtoint ptr %i.ls to i64
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = sub i64 %i.mr, %i.ms                    ; 6 uses
  %i.mu = icmp eq i64 %i.mt, 9223372036854775792
  br i1 %i.mu, label %bb.ek, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i209

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc215 unwind label %.loopexit.split-lp366

.noexc215:                                        ; preds = %bb.ek
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i209: ; preds = %bb.ej
  %i.mv = ashr exact i64 %i.mt, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i210 = tail call i64 @llvm.umax.i64(i64 %i.mv, i64 1)
  %i.mw = add nsw i64 %.sroa.speculated.i.i.i.i210, %i.mv ; 2 uses
  %i.mx = icmp ult i64 %i.mw, %i.mv
  %i.my = tail call i64 @llvm.umin.i64(i64 %i.mw, i64 576460752303423487)
  %i.mz = select i1 %i.mx, i64 576460752303423487, i64 %i.my ; 2 uses
  %i.na = shl nuw nsw i64 %i.mz, 4
  %i.nb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.na) #17
          to label %.noexc216 unwind label %.loopexit365 ; 4 uses

.noexc216:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i209
  %i.nc = getelementptr inbounds i8, ptr %i.nb, i64 %i.mt ; 3 uses
  store i32 0, ptr %i.nc, align 8, !tbaa !75
  %.sroa.6264.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store ptr null, ptr %.sroa.6264.0..sroa_idx265, align 8, !tbaa !38
  %i.nd = icmp sgt i64 %i.mt, 0
  br i1 %i.nd, label %bb.el, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i212

bb.el:                                            ; preds = %.noexc216
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nb, ptr align 8 %i.mq, i64 %i.mt, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i212

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i212: ; preds = %bb.el, %.noexc216
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %.not.i17.i.i.i213 = icmp eq ptr %i.mq, null
  br i1 %.not.i17.i.i.i213, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i214, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i212
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.mt) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i214

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i214: ; preds = %bb.em, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i212
  store ptr %i.nb, ptr %5, align 8, !tbaa !49
  store ptr %i.ne, ptr %i.k, align 8, !tbaa !46
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.nb, i64 %i.mz
  store ptr %i.nf, ptr %i.bc, align 8, !tbaa !74
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

.loopexit365:                                     ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i209
  %lpad.loopexit367 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp366:                            ; preds = %bb.ek
  %lpad.loopexit.split-lp368 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.en:                                            ; preds = %bb.du
  %i.ng = getelementptr inbounds i8, ptr %i.ce, i64 -12
  store i16 -1, ptr %i.ng, align 4, !tbaa !73
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread: ; preds = %bb.dt, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %.0110401, i64 19
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !67, !range !39, !noundef !40
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %.thread, label %bb.eo

bb.eo:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread
  %i.nk = getelementptr inbounds nuw i8, ptr %.0110401, i64 20
  %i.nl = load i8, ptr %i.nk, align 4, !tbaa !68, !range !39, !noundef !40
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.ep, label %.thread

bb.ep:                                            ; preds = %bb.eo
  %i.nn = getelementptr i8, ptr %.0110401, i64 12
  %.0110.val125 = load float, ptr %i.nn, align 4, !tbaa !54
  %i.no = fpext float %.0110.val125 to double
  %i.np = fcmp ult double %i.no, 5.000000e-03
  br i1 %i.np, label %.thread, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.nq = load ptr, ptr %5, align 8, !tbaa !49
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.nq, i64 %.0107405 ; 2 uses
  store i32 4, ptr %i.nr, align 8, !tbaa !75
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store ptr %i.bi, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !38
  %i.ns = trunc i64 %.0107405 to i16
  %i.nt = getelementptr inbounds i8, ptr %i.ce, i64 -12
  store i16 %i.ns, ptr %i.nt, align 4, !tbaa !73
  %i.nu = add i64 %.0107405, 1
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

.thread:                                          ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread, %bb.eo, %bb.ep
  %i.nv = phi i32 [ 4, %bb.ep ], [ 5, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread ], [ 3, %bb.eo ] ; 2 uses
  %i.nw = load ptr, ptr %i.k, align 8, !tbaa !46  ; 4 uses
  %i.nx = load ptr, ptr %5, align 8, !tbaa !49    ; 4 uses
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz                    ; 6 uses
  %i.ob = ashr exact i64 %i.oa, 4                 ; 4 uses
  %i.oc = trunc i64 %i.ob to i16
  %i.od = getelementptr inbounds i8, ptr %i.ce, i64 -12
  store i16 %i.oc, ptr %i.od, align 4, !tbaa !73
  %i.oe = load ptr, ptr %i.bc, align 8, !tbaa !74
  %.not.i.i218 = icmp eq ptr %i.nw, %i.oe
  br i1 %.not.i.i218, label %bb.es, label %bb.er

bb.er:                                            ; preds = %.thread
  store i32 %i.nv, ptr %i.nw, align 8, !tbaa !75
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr %i.bi, ptr %.sroa.6256.0..sroa_idx, align 8, !tbaa !38
  %i.of = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store ptr %i.og, ptr %i.k, align 8, !tbaa !46
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

bb.es:                                            ; preds = %.thread
  %i.oh = icmp eq i64 %i.oa, 9223372036854775792
  br i1 %i.oh, label %bb.et, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i219

bb.et:                                            ; preds = %bb.es
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc225 unwind label %.loopexit.split-lp356

.noexc225:                                        ; preds = %bb.et
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i219: ; preds = %bb.es
  %.sroa.speculated.i.i.i.i220 = tail call i64 @llvm.umax.i64(i64 %i.ob, i64 1)
  %i.oi = add nsw i64 %.sroa.speculated.i.i.i.i220, %i.ob ; 2 uses
  %i.oj = icmp ult i64 %i.oi, %i.ob
  %i.ok = tail call i64 @llvm.umin.i64(i64 %i.oi, i64 576460752303423487)
  %i.ol = select i1 %i.oj, i64 576460752303423487, i64 %i.ok ; 2 uses
  %i.om = shl nuw nsw i64 %i.ol, 4
  %i.on = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.om) #17
          to label %.noexc226 unwind label %.loopexit355 ; 4 uses

.noexc226:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i219
  %i.oo = getelementptr inbounds i8, ptr %i.on, i64 %i.oa ; 3 uses
  store i32 %i.nv, ptr %i.oo, align 8, !tbaa !75
  %.sroa.6256.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store ptr %i.bi, ptr %.sroa.6256.0..sroa_idx257, align 8, !tbaa !38
  %i.op = icmp sgt i64 %i.oa, 0
  br i1 %i.op, label %bb.eu, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i222

bb.eu:                                            ; preds = %.noexc226
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.on, ptr align 8 %i.nx, i64 %i.oa, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i222

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i222: ; preds = %bb.eu, %.noexc226
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %.not.i17.i.i.i223 = icmp eq ptr %i.nx, null
  br i1 %.not.i17.i.i.i223, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i224, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i222
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.oa) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i224

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i224: ; preds = %bb.ev, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i222
  store ptr %i.on, ptr %5, align 8, !tbaa !49
  store ptr %i.oq, ptr %i.k, align 8, !tbaa !46
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %i.on, i64 %i.ol
  store ptr %i.or, ptr %i.bc, align 8, !tbaa !74
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

.loopexit355:                                     ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i219
  %lpad.loopexit357 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp356:                            ; preds = %bb.et
  %lpad.loopexit.split-lp358 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.ew:                                            ; preds = %bb.cp
  %i.os = invoke noundef zeroext i1 @_ZN6google8protobuf8internal3cpp33HasPreservingUnknownEnumSemanticsEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.bi)
          to label %.noexc229 unwind label %.loopexit330

.noexc229:                                        ; preds = %bb.ew
  br i1 %i.os, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175, label %bb.ex

bb.ex:                                            ; preds = %.noexc229
  %i.ot = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %.noexc230 unwind label %.loopexit330

.noexc230:                                        ; preds = %bb.ex
  %.not.i228 = icmp eq ptr %i.ot, null
  br i1 %.not.i228, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread, label %bb.ey

bb.ey:                                            ; preds = %.noexc230
  %i.ou = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !66 ; 2 uses
  %.not5.i = icmp eq ptr %i.ov, null
  br i1 %.not5.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ow = invoke noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160) %i.ov)
          to label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit unwind label %.loopexit330

_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.ez
  %i.ox = icmp eq ptr %i.ow, %i.bi
  br i1 %i.ox, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %.noexc230, %bb.ey, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit
  %i.oy = load ptr, ptr %i.k, align 8, !tbaa !46  ; 4 uses
  %i.oz = load ptr, ptr %5, align 8, !tbaa !49    ; 4 uses
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb                    ; 6 uses
  %i.pd = ashr exact i64 %i.pc, 4                 ; 4 uses
  %i.pe = trunc i64 %i.pd to i16
  %i.pf = getelementptr inbounds i8, ptr %i.ce, i64 -12
  store i16 %i.pe, ptr %i.pf, align 4, !tbaa !73
  %i.pg = load ptr, ptr %i.bc, align 8, !tbaa !74
  %.not.i.i232 = icmp eq ptr %i.oy, %i.pg
  br i1 %.not.i.i232, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread
  store i32 0, ptr %i.oy, align 8, !tbaa !75
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store ptr null, ptr %.sroa.6248.0..sroa_idx, align 8, !tbaa !38
  %i.ph = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16 ; 2 uses
  store ptr %i.pi, ptr %i.k, align 8, !tbaa !46
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit241

bb.fb:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread
  %i.pj = icmp eq i64 %i.pc, 9223372036854775792
  br i1 %i.pj, label %bb.fc, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i233

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
          to label %.noexc239 unwind label %.loopexit.split-lp336

.noexc239:                                        ; preds = %bb.fc
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i233: ; preds = %bb.fb
  %.sroa.speculated.i.i.i.i234 = tail call i64 @llvm.umax.i64(i64 %i.pd, i64 1)
  %i.pk = add nsw i64 %.sroa.speculated.i.i.i.i234, %i.pd ; 2 uses
  %i.pl = icmp ult i64 %i.pk, %i.pd
  %i.pm = tail call i64 @llvm.umin.i64(i64 %i.pk, i64 576460752303423487)
  %i.pn = select i1 %i.pl, i64 576460752303423487, i64 %i.pm ; 2 uses
  %i.po = shl nuw nsw i64 %i.pn, 4
  %i.pp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.po) #17
          to label %.noexc240 unwind label %.loopexit335 ; 4 uses

.noexc240:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i233
  %i.pq = getelementptr inbounds i8, ptr %i.pp, i64 %i.pc ; 3 uses
  store i32 0, ptr %i.pq, align 8, !tbaa !75
  %.sroa.6248.0..sroa_idx249 = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store ptr null, ptr %.sroa.6248.0..sroa_idx249, align 8, !tbaa !38
  %i.pr = icmp sgt i64 %i.pc, 0
  br i1 %i.pr, label %bb.fd, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i236

bb.fd:                                            ; preds = %.noexc240
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pp, ptr align 8 %i.oz, i64 %i.pc, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i236

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i236: ; preds = %bb.fd, %.noexc240
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 16 ; 2 uses
  %.not.i17.i.i.i237 = icmp eq ptr %i.oz, null
  br i1 %.not.i17.i.i.i237, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i238, label %bb.fe

bb.fe:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i236
  tail call void @_ZdlPvm(ptr noundef nonnull %i.oz, i64 noundef %i.pc) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i238

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i238: ; preds = %bb.fe, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i236
  store ptr %i.pp, ptr %5, align 8, !tbaa !49
  store ptr %i.ps, ptr %i.k, align 8, !tbaa !46
  %i.pt = getelementptr inbounds nuw [16 x i8], ptr %i.pp, i64 %i.pn
  store ptr %i.pt, ptr %i.bc, align 8, !tbaa !74
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit241

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit241: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i238, %bb.fa
  %i.pu = phi ptr [ %i.ps, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i238 ], [ %i.pi, %bb.fa ] ; 3 uses
  %i.pv = getelementptr inbounds i8, ptr %i.pu, i64 -16 ; 2 uses
  %i.pw = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %bb.ff unwind label %bb.fi

bb.ff:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit241
  %i.px = getelementptr inbounds i8, ptr %i.pu, i64 -8 ; 2 uses
  %i.py = getelementptr inbounds i8, ptr %i.pu, i64 -4
  %i.pz = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf8internal12_GLOBAL__N_122GetEnumValidationRangeEPKNS0_14EnumDescriptorERiS6_(ptr noundef %i.pw, ptr noundef nonnull align 4 dereferenceable(4) %i.px, ptr noundef nonnull align 4 dereferenceable(4) %i.py)
          to label %bb.fg unwind label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.pz, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  store i32 8, ptr %i.pv, align 8, !tbaa !79
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

.loopexit335:                                     ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i233
  %lpad.loopexit337 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp336:                            ; preds = %bb.fc
  %lpad.loopexit.split-lp338 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fi:                                            ; preds = %bb.ff, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit241
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fj:                                            ; preds = %bb.fg
  store i32 9, ptr %i.pv, align 8, !tbaa !79
  store ptr %i.bi, ptr %i.px, align 8, !tbaa !38
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175: ; preds = %bb.cp, %.noexc229, %bb.er, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i224, %bb.ei, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i214, %bb.ec, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i204, %bb.dm, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i182, %bb.dc, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i172, %bb.fh, %bb.fj, %bb.eq, %bb.dk, %bb.di, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit, %bb.en, %bb.ds
  %.2109 = phi i64 [ %.0107405, %bb.cp ], [ %.0107405, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit ], [ %.0107405, %bb.ds ], [ %.0107405, %bb.dm ], [ %.0107405, %bb.ec ], [ %.0107405, %bb.en ], [ %.0107405, %bb.fh ], [ %.0107405, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit ], [ %.0107405, %bb.ei ], [ %.0107405, %bb.di ], [ %.0107405, %bb.dk ], [ %.0107405, %bb.dc ], [ %i.nu, %bb.eq ], [ %.0107405, %bb.fj ], [ %.0107405, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i172 ], [ %.0107405, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i182 ], [ %.0107405, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i204 ], [ %.0107405, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i214 ], [ %.0107405, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i224 ], [ %.0107405, %bb.er ], [ %.0107405, %.noexc229 ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.0110401, i64 24 ; 2 uses
  %.not113 = icmp eq ptr %i.qb, %i.j
  br i1 %.not113, label %._crit_edge407, label %bb.n

bb.fk:                                            ; preds = %._crit_edge407
  ret void

bb.fl:                                            ; preds = %bb.l
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.1, i32 noundef 838, ptr noundef nonnull %i.bg) #20
          to label %bb.fm unwind label %bb.fn

bb.fm:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.fo

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.fm
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #21
  unreachable

bb.fn:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #21
  unreachable

bb.fp:                                            ; preds = %.loopexit335, %.loopexit.split-lp336, %.loopexit355, %.loopexit.split-lp356, %.loopexit365, %.loopexit.split-lp366, %.loopexit370, %.loopexit.split-lp371, %.loopexit360, %.loopexit.split-lp361, %.loopexit350, %.loopexit.split-lp351, %.loopexit345, %.loopexit.split-lp346, %.loopexit340, %.loopexit.split-lp341, %.loopexit330, %.loopexit.split-lp331, %.loopexit, %.loopexit.split-lp, %bb.fl, %bb.fn, %bb.dh, %bb.fi, %bb.m, %bb.g
  %.pn122.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.qc, %bb.fl ], [ %i.bh, %bb.m ], [ %i.jl, %bb.dh ], [ %i.qd, %bb.fn ], [ %lpad.loopexit.split-lp358, %.loopexit.split-lp356 ], [ %lpad.loopexit.split-lp333, %.loopexit.split-lp331 ], [ %lpad.loopexit.split-lp363, %.loopexit.split-lp361 ], [ %lpad.loopexit.split-lp373, %.loopexit.split-lp371 ], [ %lpad.loopexit.split-lp353, %.loopexit.split-lp351 ], [ %lpad.loopexit.split-lp368, %.loopexit.split-lp366 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.qa, %bb.fi ], [ %lpad.loopexit.split-lp343, %.loopexit.split-lp341 ], [ %lpad.loopexit.split-lp348, %.loopexit.split-lp346 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit332, %.loopexit330 ], [ %lpad.loopexit342, %.loopexit340 ], [ %lpad.loopexit347, %.loopexit345 ], [ %lpad.loopexit352, %.loopexit350 ], [ %lpad.loopexit362, %.loopexit360 ], [ %lpad.loopexit372, %.loopexit370 ], [ %lpad.loopexit367, %.loopexit365 ], [ %lpad.loopexit357, %.loopexit355 ], [ %lpad.loopexit337, %.loopexit335 ], [ %lpad.loopexit.split-lp338, %.loopexit.split-lp336 ]
  %i.qf = load ptr, ptr %0, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.qf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !45
  %i.qi = ptrtoint ptr %i.qh to i64
  %i.qj = ptrtoint ptr %i.qf to i64
  %i.qk = sub i64 %i.qi, %i.qj
  call void @_ZdlPvm(ptr noundef nonnull %i.qf, i64 noundef %i.qk) #18
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit: ; preds = %bb.fp, %bb.fq
  resume { ptr, i32 } %.pn122.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i8 @_ZN6google8protobuf8internal3cpp16GetUtf8CheckModeEPKNS0_15FieldDescriptorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf8internal3cpp33HasPreservingUnknownEnumSemanticsEPKNS0_15FieldDescriptorE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6google8protobuf8internal12_GLOBAL__N_122GetEnumValidationRangeEPKNS0_14EnumDescriptorERiS6_(ptr noundef readonly captures(none) %0, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::FixedArray", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !81
  %i.c = sext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !86   ; 5 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = icmp eq i32 %i.f, %i.c
  %i.h = getelementptr i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !88   ; 6 uses
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %i.e, 1
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %i.m = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.m, -8                       ; 3 uses
  %i.n = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ax, %vector.body ]
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %index
  %i.v = getelementptr [48 x i8], ptr %i.i, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 100
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 148
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 196
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 244
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 292
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 340
  %i.ad = getelementptr i8, ptr %i.v, i64 388
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !88
  %i.af = load i32, ptr %i.x, align 4, !tbaa !88
  %i.ag = load i32, ptr %i.y, align 4, !tbaa !88
  %i.ah = load i32, ptr %i.z, align 4, !tbaa !88
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEE:bb.a
.noexc25:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #17 ; 4 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !150
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !151
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ar, i8 0, i64 %i.ao, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %.noexc25, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.au = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.ar, %.noexc25 ] ; 3 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ], [ %i.as, %.noexc25 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.av, align 8, !tbaa !184
  %i.aw = trunc nuw i16 %.sroa.speculated48 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !38
  %i.ay = and i64 %i.c, 1
  %lcmp.mod58.not.not = icmp eq i64 %i.ay, 0
  br i1 %lcmp.mod58.not.not, label %.lr.ph.i27.prol, label %.lr.ph.i27.prol.loopexit

.lr.ph.i27.prol:                                  ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !63
  %.not9.i28.prol = icmp eq i8 %i.ba, 2
  br i1 %.not9.i28.prol, label %.lr.ph.i27.prol.loopexit.unr-lcssa, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i27.prol
  %i.bb = load ptr, ptr %2, align 8, !tbaa !158
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %.0.copyload.i.i.i.i29.prol = load i16, ptr %i.bd, align 1
  %i.be = trunc i16 %.0.copyload.i.i.i.i29.prol to i8
  store i8 %i.be, ptr %i.ax, align 1, !tbaa !38
  br label %.lr.ph.i27.prol.loopexit.unr-lcssa

.lr.ph.i27.prol.loopexit.unr-lcssa:               ; preds = %bb.h, %.lr.ph.i27.prol
  %.145.prol = getelementptr inbounds nuw i8, ptr %i.au, i64 2 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.lr.ph.i27.prol.loopexit

.lr.ph.i27.prol.loopexit:                         ; preds = %.lr.ph.i27.prol.loopexit.unr-lcssa, %bb.g
  %.145.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.145.prol, %.lr.ph.i27.prol.loopexit.unr-lcssa ]
  %.044.unr = phi ptr [ %i.ax, %bb.g ], [ %.145.prol, %.lr.ph.i27.prol.loopexit.unr-lcssa ]
  %.04.i.unr = phi ptr [ %2, %bb.g ], [ %i.bf, %.lr.ph.i27.prol.loopexit.unr-lcssa ]
  %i.bg = icmp ult i64 %i.b, 24
  br i1 %i.bg, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_3ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_4EEDaT_T0_.exit", label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.prol.loopexit, %bb.k
  %.044 = phi ptr [ %.145.1, %bb.k ], [ %.044.unr, %.lr.ph.i27.prol.loopexit ] ; 3 uses
  %.04.i = phi ptr [ %i.bu, %bb.k ], [ %.04.i.unr, %.lr.ph.i27.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.04.i, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !63
  %.not9.i28 = icmp eq i8 %i.bi, 2
  br i1 %.not9.i28, label %.lr.ph.i27.1, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i27
  %i.bj = load ptr, ptr %.04.i, align 8, !tbaa !158
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !183
  %.0.copyload.i.i.i.i29 = load i16, ptr %i.bl, align 1
  %i.bm = trunc i16 %.0.copyload.i.i.i.i29 to i8
  store i8 %i.bm, ptr %.044, align 1, !tbaa !38
  br label %.lr.ph.i27.1

.lr.ph.i27.1:                                     ; preds = %.lr.ph.i27, %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.04.i, i64 40
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !63
  %.not9.i28.1 = icmp eq i8 %i.bo, 2
  br i1 %.not9.i28.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i27.1
  %i.bp = getelementptr inbounds nuw i8, ptr %.04.i, i64 24
  %.145 = getelementptr inbounds nuw i8, ptr %.044, i64 1
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !158
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !183
  %.0.copyload.i.i.i.i29.1 = load i16, ptr %i.bs, align 1
  %i.bt = trunc i16 %.0.copyload.i.i.i.i29.1 to i8
  store i8 %i.bt, ptr %.145, align 1, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i27.1
  %.145.1 = getelementptr inbounds nuw i8, ptr %.044, i64 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.04.i, i64 48 ; 2 uses
  %.not.i30.1 = icmp eq ptr %i.bu, %i.a
  br i1 %.not.i30.1, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_3ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_4EEDaT_T0_.exit", label %.lr.ph.i27

"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_3ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_4EEDaT_T0_.exit": ; preds = %bb.k, %.lr.ph.i27.prol.loopexit
  %.145.lcssa = phi ptr [ %.145.lcssa.unr, %.lr.ph.i27.prol.loopexit ], [ %.145.1, %bb.k ]
  %i.bv = add i64 %.idx.i, -24
  %i.bw = udiv i64 %i.bv, 24
  %i.bx = sub nsw i64 6, %i.bw
  %i.by = and i64 %i.bx, 7
  %i.bz = getelementptr inbounds nuw i8, ptr %.145.lcssa, i64 %i.by ; 7 uses
  br i1 %i.ak, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_7clESt17basic_string_viewIcSt11char_traitsIcEE.exit", label %bb.l

"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_7clESt17basic_string_viewIcSt11char_traitsIcEE.exit": ; preds = %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_3ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_4EEDaT_T0_.exit"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(126) %i.bz, ptr noundef nonnull readonly align 1 dereferenceable(126) %i.aj, i64 126, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ca, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 129
  %i.cc = getelementptr inbounds i8, ptr %i.af, i64 -127
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(126) %i.cb, ptr noundef nonnull readonly align 1 dereferenceable(126) %i.cc, i64 126, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 255
  br label %.lr.ph.i40.preheader

bb.l:                                             ; preds = %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_3ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_4EEDaT_T0_.exit"
  %i.ce = icmp eq i16 %.0.copyload.i.i.i, 0
  br i1 %i.ce, label %.lr.ph.i40.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %i.aj, i64 %i.ah, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ah
  br label %.lr.ph.i40.preheader

.lr.ph.i40.preheader:                             ; preds = %bb.m, %bb.l, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_7clESt17basic_string_viewIcSt11char_traitsIcEE.exit"
  %.8.ph = phi ptr [ %i.bz, %bb.l ], [ %i.cf, %bb.m ], [ %i.cd, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_7clESt17basic_string_viewIcSt11char_traitsIcEE.exit" ]
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.preheader, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i"
  %.8 = phi ptr [ %.9, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i" ], [ %.8.ph, %.lr.ph.i40.preheader ] ; 4 uses
  %.02.i41 = phi ptr [ %i.cq, %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i" ], [ %2, %.lr.ph.i40.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02.i41, i64 16
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !63
  %.not9.i42 = icmp eq i8 %i.ch, 2
  br i1 %.not9.i42, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i", label %bb.n

bb.n:                                             ; preds = %.lr.ph.i40
  %i.ci = load ptr, ptr %.02.i41, align 8, !tbaa !158
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183 ; 2 uses
  %.0.copyload.i.i.i.i43 = load i16, ptr %i.ck, align 1 ; 2 uses
  %i.cl = icmp eq i16 %.0.copyload.i.i.i.i43, 0
  br i1 %i.cl, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = zext i16 %.0.copyload.i.i.i.i43 to i64  ; 3 uses
  %i.cn = xor i64 %i.cm, -1
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.8, ptr nonnull readonly align 1 %i.co, i64 %i.cm, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.8, i64 %i.cm
  br label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i"

"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i": ; preds = %bb.o, %bb.n, %.lr.ph.i40
  %.9 = phi ptr [ %.8, %.lr.ph.i40 ], [ %.8, %bb.n ], [ %i.cp, %bb.o ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.02.i41, i64 24 ; 2 uses
  %.not.i44 = icmp eq ptr %i.cq, %i.a
  br i1 %.not.i44, label %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_5ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_6EEDaT_T0_.exit", label %.lr.ph.i40

"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_5ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_6EEDaT_T0_.exit": ; preds = %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_5clISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_.exit.i", %"_ZZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEEENK3$_1clIZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_0ZNS2_18GenerateFieldNamesES5_SC_SF_SI_E3$_2EEDaT_T0_.exit.thread"
  ret void
}

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !141    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i32, ptr %2, align 8, !tbaa !173
  store i32 %i.r, ptr %i.q, align 8, !tbaa !173
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !185
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !185
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !148
  store ptr %i.x, ptr %i.v, align 8, !tbaa !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.y = load i32, ptr %.0911.i.i.i, align 8, !tbaa !173, !alias.scope !189, !noalias !186
  store i32 %i.y, ptr %.012.i.i.i, align 8, !tbaa !173, !alias.scope !186, !noalias !189
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !185, !alias.scope !189, !noalias !186
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !185, !alias.scope !186, !noalias !189
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !148, !alias.scope !189, !noalias !186
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !148, !alias.scope !186, !noalias !189
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false), !alias.scope !189, !noalias !186
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !191

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ag, %.lr.ph.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.aq, %.lr.ph.i.i.i17 ], [ %i.ah, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.ap, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.ai = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !173, !alias.scope !195, !noalias !192
  store i32 %i.ai, ptr %.012.i.i.i18, align 8, !tbaa !173, !alias.scope !192, !noalias !195
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !185, !alias.scope !195, !noalias !192
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !185, !alias.scope !192, !noalias !195
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148, !alias.scope !195, !noalias !192
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !148, !alias.scope !192, !noalias !195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false), !alias.scope !195, !noalias !192
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !191

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.aq, %.lr.ph.i.i.i17 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !143
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.au) #18
  br label %_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !141
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !142
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !143
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 1152921504606846974
  %i.u = and i64 %i.t, 1152921504606846975
  %i.v = add i64 %1, 3
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !198

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.x = icmp samesign ult i64 %i.u, 3
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !200

_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !46
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #16
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #17 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ai, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i30
  %i.am = add i64 %1, 1152921504606846974
  %i.an = and i64 %i.am, 1152921504606846975
  %i.ao = add i64 %1, 3
  %xtraiter45 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol
end_hunk_2
