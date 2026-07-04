inline.NumInlined: 15359
inline.NumDeleted: 6624
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E:bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !67
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.e, align 8, !tbaa !68
  store i32 0, ptr %i.f, align 4, !tbaa !70
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #30, !inline_history !244
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #30, !inline_history !244
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.m, %bb.l
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSA_m.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #30
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3039 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #30, !inline_history !3041
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !606  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !49
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #30
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal15StringConverterINS_13TimestampTypeEvE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.std::chrono::duration", align 8 ; 12 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3042 ; 4 uses
  %i.e = icmp ult i64 %3, 10
  br i1 %i.e, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i8, ptr %i.f, align 1, !tbaa !49
  %.not.i.i = icmp eq i8 %i.g, 45
  br i1 %.not.i.i, label %bb.c, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.i = load i8, ptr %i.h, align 1, !tbaa !49
  %.not7.i.i = icmp eq i8 %i.i, 45
  br i1 %.not7.i.i, label %bb.d, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %2, align 1, !tbaa !49
  %i.k = add i8 %i.j, -48                         ; 2 uses
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.e, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !3046

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !49
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = icmp ult i8 %i.o, 10
  br i1 %i.p, label %bb.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !3046

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !49
  %i.s = add i8 %i.r, -48                         ; 2 uses
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %bb.g, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !3046

bb.g:                                             ; preds = %bb.f
  %narrow.i.i = mul nuw nsw i8 %i.k, 10
  %narrow48.i.i = add nuw nsw i8 %i.o, %narrow.i.i
  %i.u = zext nneg i8 %narrow48.i.i to i16
  %i.v = mul nuw nsw i16 %i.u, 10
  %i.w = zext nneg i8 %i.s to i16
  %i.x = add nuw nsw i16 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !49
  %i.aa = add i8 %i.z, -48                        ; 2 uses
  %i.ab = mul nuw nsw i16 %i.x, 10
  %i.ac = icmp ult i8 %i.aa, 10
  %i.ad = zext nneg i8 %i.aa to i16
  %i.ae = add nuw nsw i16 %i.ab, %i.ad            ; 4 uses
  br i1 %i.ac, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !3046

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !49
  %i.ah = add i8 %i.ag, -48                       ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %bb.h, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !3046

bb.h:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !49
  %i.al = add i8 %i.ak, -48                       ; 2 uses
  %narrow.i8.i.i = mul nuw nsw i8 %i.ah, 10
  %i.am = icmp ult i8 %i.al, 10
  %i.an = add i8 %i.al, %narrow.i8.i.i            ; 6 uses
  br i1 %i.am, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !3046

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !49
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = icmp ult i8 %i.aq, 10
  br i1 %i.ar, label %bb.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !3046

bb.i:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !49
  %i.au = add i8 %i.at, -48                       ; 2 uses
  %narrow.i10.i.i = mul nuw nsw i8 %i.aq, 10
  %i.av = icmp ugt i8 %i.au, 9
  %i.aw = add i8 %i.au, %narrow.i10.i.i           ; 3 uses
  %i.ax = add i8 %i.an, -13
  %spec.select.i.i.i.i = icmp ult i8 %i.ax, -12
  %or.cond34.not38.i.i = select i1 %i.av, i1 true, i1 %spec.select.i.i.i.i, !prof !3047
  %.not8.i.i.i = icmp eq i8 %i.aw, 0
  %or.cond35.i.i = select i1 %or.cond34.not38.i.i, i1 true, i1 %.not8.i.i.i, !prof !3048
  br i1 %or.cond35.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.j, !prof !3048

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i8 %i.an, 2
  %i.ay = and i16 %i.ae, 3
  %i.az = icmp eq i16 %i.ay, 0
  %or.cond.i.i.i = and i1 %i.az, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.k, label %.thread.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ba = urem i16 %i.ae, 100
  %.not.i.i.i.i.i = icmp ne i16 %i.ba, 0
  %i.bb = urem i16 %i.ae, 400
  %i.bc = icmp eq i16 %i.bb, 0
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.bc
  br i1 %or.cond.i.i.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.k, %bb.j
  %i.bd = zext nneg i8 %i.an to i64
  %i.be = add nuw nsw i64 %i.bd, 4294967295
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !49
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i: ; preds = %.thread.i.i.i.i, %bb.k
  %.sroa.03.0.i.i.i.i = phi i8 [ %i.bh, %.thread.i.i.i.i ], [ 29, %bb.k ]
  %.not41.i.i = icmp ult i8 %.sroa.03.0.i.i.i.i, %i.aw
  br i1 %.not41.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.l, !prof !50

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i
  %i.bi = zext nneg i16 %i.ae to i32
  %i.bj = icmp samesign ult i8 %i.an, 3
  %.neg.i.i.i.i = sext i1 %i.bj to i32
  %i.bk = add nsw i32 %.neg.i.i.i.i, %i.bi        ; 4 uses
  %i.bl = zext nneg i8 %i.an to i32
  %i.bm = zext i8 %i.aw to i32
  %i.bn = add nsw i32 %i.bk, 65137
  %i.bo = icmp slt i32 %i.bk, 0
  %i.bp = select i1 %i.bo, i32 %i.bn, i32 %i.bk
  %.lhs.trunc.i.i = trunc i32 %i.bp to i16
  %i.bq = sdiv i16 %.lhs.trunc.i.i, 400
  %.sext.i.i = sext i16 %i.bq to i32              ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %.sext.i.i, -400
  %i.br = add nsw i32 %.neg15.i.i.i.i, %i.bk      ; 3 uses
  %i.bs = icmp samesign ugt i8 %i.an, 2
  %.v.i.i.i.i = select i1 %i.bs, i32 -3, i32 9
  %i.bt = add nsw i32 %.v.i.i.i.i, %i.bl
  %i.bu = mul nsw i32 %i.bt, 153
  %i.bv = add nsw i32 %i.bu, 2
  %i.bw = udiv i32 %i.bv, 5
  %i.bx = mul nsw i32 %i.br, 365
  %i.by = lshr i32 %i.br, 2
  %i.bz = udiv i32 %i.br, 100
  %i.ca = mul nsw i32 %.sext.i.i, 146097
  %i.cb = add nsw i32 %i.bw, -719469
  %i.cc = add nsw i32 %i.cb, %i.ca
  %i.cd = add nsw i32 %i.cc, %i.by
  %i.ce = add nsw i32 %i.cd, %i.bx
  %i.cf = sub nsw i32 %i.ce, %i.bz
  %i.cg = add nsw i32 %i.cf, %i.bm
  %i.ch = sext i32 %i.cg to i64                   ; 4 uses
  %i.ci = mul nsw i64 %i.ch, 86400                ; 3 uses
  %i.cj = icmp eq i64 %3, 10
  br i1 %i.cj, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  switch i32 %i.d, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i [
    i32 3, label %bb.p
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ck = mul nsw i64 %i.ch, 86400000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cl = mul nsw i64 %i.ch, 86400000000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i

bb.p:                                             ; preds = %bb.m
  %i.cm = mul nsw i64 %i.ch, 86400000000000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.0.i.i.i = phi i64 [ %i.cl, %bb.o ], [ %i.cm, %bb.p ], [ %i.ck, %bb.n ], [ %i.ci, %bb.m ]
  store i64 %.0.i.i.i, ptr %4, align 8, !tbaa !51
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit

bb.q:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !49
  switch i8 %i.co, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit [
    i8 32, label %bb.r
    i8 84, label %bb.r
  ], !prof !3049

bb.r:                                             ; preds = %bb.q, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i64 0, ptr %5, align 8
  %i.cp = getelementptr i8, ptr %2, i64 %3
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !49  ; 3 uses
  %i.cs = icmp eq i8 %i.cr, 90
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ct = add i64 %3, -1
  br label %bb.aj

bb.t:                                             ; preds = %bb.r
  %i.cu = add i64 %3, -3                          ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !49  ; 4 uses
  switch i8 %i.cw, label %bb.y [
    i8 43, label %bb.u
    i8 45, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !49
  %i.cz = add i8 %i.cy, -48                       ; 2 uses
  %i.da = icmp ult i8 %i.cz, 10
  br i1 %i.da, label %bb.v, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

bb.v:                                             ; preds = %bb.u
  %i.db = add i8 %i.cr, -48                       ; 2 uses
  %narrow.i.i.i = mul nuw nsw i8 %i.cz, 10
  %i.dc = icmp ugt i8 %i.db, 9
  %i.dd = add i8 %narrow.i.i.i, %i.db             ; 2 uses
  %i.de = icmp ugt i8 %i.dd, 23
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.de, !prof !3050
  br i1 %or.cond.i.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, label %bb.w, !prof !3050

bb.w:                                             ; preds = %bb.v
  %i.df = zext nneg i8 %i.dd to i64
  %i.dg = mul nuw nsw i64 %i.df, 3600             ; 2 uses
  store i64 %i.dg, ptr %5, align 8, !tbaa !51
  %i.dh = icmp eq i8 %i.cw, 43
  br i1 %i.dh, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %bb.w
  %i.di = sub nsw i64 0, %i.dg
  store i64 %i.di, ptr %5, align 8, !tbaa !3051
  br label %bb.aj

bb.y:                                             ; preds = %bb.t
  %i.dj = add i64 %3, -5                          ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %i.dj ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !49  ; 2 uses
  switch i8 %i.dl, label %bb.ae [
    i8 43, label %bb.z
    i8 45, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !49
  %i.do = add i8 %i.dn, -48                       ; 2 uses
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %bb.aa, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

bb.aa:                                            ; preds = %bb.z
  %i.dq = add i8 %i.cw, -48                       ; 2 uses
  %narrow.i.i76.i = mul nuw nsw i8 %i.do, 10
  %i.dr = icmp ult i8 %i.dq, 10
  %i.ds = add i8 %narrow.i.i76.i, %i.dq           ; 2 uses
  br i1 %i.dr, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i77.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i77.i: ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !49
  %i.dv = add i8 %i.du, -48                       ; 2 uses
  %i.dw = icmp ult i8 %i.dv, 10
  br i1 %i.dw, label %bb.ab, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

bb.ab:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i77.i
  %i.dx = add i8 %i.cr, -48                       ; 2 uses
  %narrow.i8.i78.i = mul nuw nsw i8 %i.dv, 10
  %i.dy = icmp ult i8 %i.dx, 10
  %i.dz = add i8 %narrow.i8.i78.i, %i.dx          ; 2 uses
  br i1 %i.dy, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i: ; preds = %bb.ab
  %i.ea = icmp ugt i8 %i.ds, 23
  %i.eb = icmp ugt i8 %i.dz, 59
  %or.cond6.i.i = select i1 %i.ea, i1 true, i1 %i.eb, !prof !3053
  br i1 %or.cond6.i.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, label %bb.ac, !prof !3054

bb.ac:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i
  %i.ec = zext nneg i8 %i.ds to i64
  %i.ed = zext nneg i8 %i.dz to i64
  %i.ee = mul nuw nsw i64 %i.ec, 60
  %i.ef = add nuw nsw i64 %i.ee, %i.ed
  %i.eg = mul nuw nsw i64 %i.ef, 60               ; 2 uses
  store i64 %i.eg, ptr %5, align 8, !tbaa !51
  %i.eh = icmp eq i8 %i.dl, 43
  br i1 %i.eh, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.ei = sub nsw i64 0, %i.eg
  store i64 %i.ei, ptr %5, align 8, !tbaa !3051
  br label %bb.aj

bb.ae:                                            ; preds = %bb.y
  %i.ej = add i64 %3, -6                          ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 %i.ej ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !49  ; 2 uses
  switch i8 %i.el, label %bb.aj [
    i8 43, label %bb.af
    i8 45, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.em = icmp eq i8 %i.cw, 58
  br i1 %i.em, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.eo = call fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr noundef nonnull %i.en, ptr noundef %5)
  br i1 %i.eo, label %bb.ah, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !14

bb.ah:                                            ; preds = %bb.ag
  %i.ep = icmp eq i8 %i.el, 43
  br i1 %i.ep, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eq = load i64, ptr %5, align 8, !tbaa !3051
  %i.er = sub nsw i64 0, %i.eq
  store i64 %i.er, ptr %5, align 8, !tbaa !3051
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.x, %bb.w, %bb.s
  %.062.i = phi i64 [ %3, %bb.ae ], [ %i.ct, %bb.s ], [ %3, %bb.af ], [ %i.cu, %bb.w ], [ %i.dj, %bb.ac ], [ %i.cu, %bb.x ], [ %i.dj, %bb.ad ], [ %i.ej, %bb.ai ], [ %i.ej, %bb.ah ] ; 6 uses
  switch i64 %.062.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i [
    i64 13, label %bb.ak
    i64 16, label %bb.am
    i64 19, label %bb.aq
    i64 21, label %bb.aq
    i64 22, label %bb.aq
    i64 23, label %bb.aq
    i64 24, label %bb.aq
    i64 25, label %bb.aq
    i64 26, label %bb.aq
    i64 27, label %bb.aq
    i64 28, label %bb.aq
    i64 29, label %bb.aq
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.et = load i8, ptr %i.es, align 1, !tbaa !49
  %i.eu = add i8 %i.et, -48                       ; 2 uses
  %i.ev = icmp ult i8 %i.eu, 10
  br i1 %i.ev, label %bb.al, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !49
  %i.ey = add i8 %i.ex, -48                       ; 2 uses
  %narrow.i.i80.i = mul nuw nsw i8 %i.eu, 10
  %i.ez = icmp ugt i8 %i.ey, 9
  %i.fa = add i8 %i.ey, %narrow.i.i80.i           ; 2 uses
  %i.fb = icmp ugt i8 %i.fa, 23
  %or.cond.i81.i = select i1 %i.ez, i1 true, i1 %i.fb, !prof !3050
  br i1 %or.cond.i81.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit82.i, !prof !3050

_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit82.i: ; preds = %bb.al
  %i.fc = zext nneg i8 %i.fa to i64
  %i.fd = mul nuw nsw i64 %i.fc, 3600
  br label %.thread.i

bb.am:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !49
  %.not.i83.i = icmp eq i8 %i.ff, 58
  br i1 %.not.i83.i, label %bb.an, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !14

bb.an:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !49
  %i.fi = add i8 %i.fh, -48                       ; 2 uses
  %i.fj = icmp ult i8 %i.fi, 10
  br i1 %i.fj, label %bb.ao, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

bb.ao:                                            ; preds = %bb.an
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !49
  %i.fm = add i8 %i.fl, -48                       ; 2 uses
  %narrow.i.i85.i = mul nuw nsw i8 %i.fi, 10
  %i.fn = icmp ult i8 %i.fm, 10
  %i.fo = add i8 %i.fm, %narrow.i.i85.i           ; 2 uses
  br i1 %i.fn, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i86.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i86.i: ; preds = %bb.ao
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !49
  %i.fr = add i8 %i.fq, -48                       ; 2 uses
  %i.fs = icmp ult i8 %i.fr, 10
  br i1 %i.fs, label %bb.ap, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

bb.ap:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i86.i
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !49
  %i.fv = add i8 %i.fu, -48                       ; 2 uses
  %narrow.i10.i87.i = mul nuw nsw i8 %i.fr, 10
  %i.fw = icmp ult i8 %i.fv, 10
  %i.fx = add i8 %i.fv, %narrow.i10.i87.i         ; 2 uses
  br i1 %i.fw, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i: ; preds = %bb.ap
  %i.fy = icmp ugt i8 %i.fo, 23
  %i.fz = icmp ugt i8 %i.fx, 59
  %or.cond8.i.i = select i1 %i.fy, i1 true, i1 %i.fz, !prof !3053
  br i1 %or.cond8.i.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, !prof !3054

_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i
  %i.ga = zext nneg i8 %i.fo to i64
  %i.gb = zext nneg i8 %i.fx to i64
  %i.gc = mul nuw nsw i64 %i.ga, 60
  %i.gd = add nuw nsw i64 %i.gc, %i.gb
  %i.ge = mul nuw nsw i64 %i.gd, 60
  br label %.thread.i

bb.aq:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !49
  %.not.i88.i = icmp eq i8 %i.gh, 58
  br i1 %.not.i88.i, label %bb.ar, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !14

bb.ar:                                            ; preds = %bb.aq
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !49
  %.not7.i90.i = icmp eq i8 %i.gj, 58
  br i1 %.not7.i90.i, label %bb.as, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !14

bb.as:                                            ; preds = %bb.ar
  %i.gk = load i8, ptr %i.gf, align 1, !tbaa !49
  %i.gl = add i8 %i.gk, -48                       ; 2 uses
  %i.gm = icmp ult i8 %i.gl, 10
  br i1 %i.gm, label %bb.at, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

bb.at:                                            ; preds = %bb.as
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !49
  %i.gp = add i8 %i.go, -48                       ; 2 uses
  %narrow.i.i91.i = mul nuw nsw i8 %i.gl, 10
  %i.gq = icmp ult i8 %i.gp, 10
  %i.gr = add i8 %i.gp, %narrow.i.i91.i           ; 2 uses
  br i1 %i.gq, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i92.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i92.i: ; preds = %bb.at
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !49
  %i.gu = add i8 %i.gt, -48                       ; 2 uses
  %i.gv = icmp ult i8 %i.gu, 10
  br i1 %i.gv, label %bb.au, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

bb.au:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i92.i
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !49
  %i.gy = add i8 %i.gx, -48                       ; 2 uses
  %narrow.i15.i.i = mul nuw nsw i8 %i.gu, 10
  %i.gz = icmp ult i8 %i.gy, 10
  %i.ha = add i8 %i.gy, %narrow.i15.i.i           ; 2 uses
  br i1 %i.gz, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i: ; preds = %bb.au
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !49
  %i.hd = add i8 %i.hc, -48                       ; 2 uses
  %i.he = icmp ult i8 %i.hd, 10
  br i1 %i.he, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !3046

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !49
  %i.hh = add i8 %i.hg, -48                       ; 2 uses
  %narrow.i18.i.i = mul nuw nsw i8 %i.hd, 10
  %i.hi = icmp ugt i8 %i.hh, 9
  %i.hj = add i8 %i.hh, %narrow.i18.i.i           ; 2 uses
  %i.hk = icmp ugt i8 %i.gr, 23
  %or.cond.i93.i = select i1 %i.hi, i1 true, i1 %i.hk, !prof !3055
  %i.hl = icmp ugt i8 %i.ha, 59
  %or.cond11.i.i = select i1 %or.cond.i93.i, i1 true, i1 %i.hl, !prof !3053
  %i.hm = icmp ugt i8 %i.hj, 59
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 true, i1 %i.hm, !prof !3056
  br i1 %or.cond13.i.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, label %bb.av, !prof !3054

.thread.i:                                        ; preds = %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit82.i
  %.sroa.0.3.ph.i = phi i64 [ %i.ge, %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i ], [ %i.fd, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit82.i ]
  %i.hn = add nsw i64 %.sroa.0.3.ph.i, %i.ci
  %i.ho = load i64, ptr %5, align 8, !tbaa !3051
  %i.hp = add nsw i64 %i.hn, %i.ho
  br label %bb.aw

bb.av:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i
  %i.hq = zext nneg i8 %i.gr to i64
  %i.hr = zext nneg i8 %i.ha to i64
  %i.hs = mul nuw nsw i64 %i.hq, 60
  %i.ht = add nuw nsw i64 %i.hs, %i.hr
  %i.hu = zext nneg i8 %i.hj to i64
  %i.hv = mul nuw nsw i64 %i.ht, 60
  %i.hw = load i64, ptr %5, align 8, !tbaa !3051
  %i.hx = add nsw i64 %i.hv, %i.ci
  %i.hy = add nsw i64 %i.hx, %i.hu
  %i.hz = add nsw i64 %i.hy, %i.hw                ; 2 uses
  %i.ia = icmp samesign ult i64 %.062.i, 20
  br i1 %i.ia, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av, %.thread.i
  %i.ib = phi i64 [ %i.hp, %.thread.i ], [ %i.hz, %bb.av ] ; 4 uses
  switch i32 %i.d, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit95.i [
    i32 3, label %bb.az
    i32 1, label %bb.ax
    i32 2, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ic = mul nsw i64 %i.ib, 1000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit95.i

bb.ay:                                            ; preds = %bb.aw
  %i.id = mul nsw i64 %i.ib, 1000000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit95.i

bb.az:                                            ; preds = %bb.aw
  %i.ie = mul nsw i64 %i.ib, 1000000000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit95.i

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit95.i: ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %.0.i.i94.i = phi i64 [ %i.id, %bb.ay ], [ %i.ie, %bb.az ], [ %i.ic, %bb.ax ], [ %i.ib, %bb.aw ]
  store i64 %.0.i.i94.i, ptr %4, align 8, !tbaa !51
  br label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i

bb.ba:                                            ; preds = %bb.av
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !49
  %.not74.i = icmp eq i8 %i.ig, 46
  br i1 %.not74.i, label %bb.bb, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i, !prof !14

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ii = add nsw i64 %.062.i, -20                ; 3 uses
  switch i32 %i.d, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i [
    i32 1, label %bb.bc
    i32 2, label %bb.bd
    i32 3, label %bb.be
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.ij = icmp samesign ugt i64 %.062.i, 23
  br i1 %i.ij, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.be, !prof !48

bb.bd:                                            ; preds = %bb.bb
  %i.ik = icmp samesign ugt i64 %.062.i, 26
  br i1 %i.ik, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.be, !prof !48

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %.pn.i.i = phi i64 [ 3, %bb.bc ], [ 6, %bb.bd ], [ 9, %bb.bb ] ; 2 uses
  %i.il = icmp eq i64 %.pn.i.i, %i.ii
  br i1 %i.il, label %bb.bf, label %bb.bg, !prof !14

bb.bf:                                            ; preds = %bb.be
  %i.im = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.ih, i64 noundef range(i64 0, -20) %i.ii, ptr noundef nonnull %i.b)
  br i1 %i.im, label %switch.lookup30, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, !prof !264

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.in = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.ih, i64 noundef range(i64 0, -20) %i.ii, ptr noundef nonnull %i.a)
  br i1 %i.in, label %bb.bh, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i, !prof !14

bb.bh:                                            ; preds = %bb.bg
  %reass.sub = sub i64 %.pn.i.i, %.062.i
  %switch.tableidx = add i64 %reass.sub, 19       ; 2 uses
  %i.io = icmp ult i64 %switch.tableidx, 8
  br i1 %i.io, label %switch.lookup, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread23.i

switch.lookup:                                    ; preds = %bb.bh
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5arrow8internal15StringConverterINS_13TimestampTypeEvE7ConvertERKS2_PKcmPl, i64 %switch.tableidx
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.ip = load i32, ptr %i.a, align 4, !tbaa !3
  %i.iq = mul i32 %i.ip, %switch.load
  store i32 %i.iq, ptr %i.b, align 4, !tbaa !3
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread23.i

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread23.i: ; preds = %bb.bh, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %switch.lookup30

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i

switch.lookup30:                                  ; preds = %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread23.i, %bb.bf
  %i.ir = sext i32 %i.d to i64
  %i.is = getelementptr [4 x i8], ptr @switch.table._ZN5arrow8internal15StringConverterINS_13TimestampTypeEvE7ConvertERKS2_PKcmPl.912, i64 %i.ir
  %switch.gep31 = getelementptr i8, ptr %i.is, i64 -4
  %switch.load32 = load i32, ptr %switch.gep31, align 4
  %switch.ext = zext i32 %switch.load32 to i64
  %i.it = mul nsw i64 %i.hz, %switch.ext
  %i.iu = load i32, ptr %i.b, align 4, !tbaa !3
  %i.iv = zext i32 %i.iu to i64
  %i.iw = add nsw i64 %i.it, %i.iv
  store i64 %i.iw, ptr %4, align 8, !tbaa !51
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i: ; preds = %switch.lookup30, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i, %bb.bf, %bb.bd, %bb.bc, %bb.bb
  %.1.i9620.i = phi i1 [ false, %bb.bf ], [ false, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i ], [ true, %switch.lookup30 ], [ false, %bb.bb ], [ false, %bb.bd ], [ false, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i

_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i: ; preds = %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, %bb.ba, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit95.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i, %bb.au, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i92.i, %bb.at, %bb.as, %bb.ar, %bb.aq, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i, %bb.ap, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i86.i, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ag, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i, %bb.ab, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i77.i, %bb.aa, %bb.z, %bb.v, %bb.u
  %.2.i = phi i1 [ false, %bb.ag ], [ false, %bb.u ], [ false, %bb.ba ], [ false, %bb.ap ], [ false, %bb.ak ], [ true, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit95.i ], [ false, %bb.aj ], [ %.1.i9620.i, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i ], [ false, %bb.ab ], [ false, %bb.v ], [ false, %bb.aa ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i ], [ false, %bb.z ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i77.i ], [ false, %bb.al ], [ false, %bb.am ], [ false, %bb.ao ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i ], [ false, %bb.an ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i86.i ], [ false, %bb.aq ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i ], [ false, %bb.as ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i92.i ], [ false, %bb.au ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i, %bb.h, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i, %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i, %bb.q, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i
  %.4.i = phi i1 [ false, %bb.a ], [ %.2.i, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.thread.i ], [ true, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i ], [ false, %bb.q ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.i ], [ false, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.g ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i ]
  ret i1 %.4.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !49
  %.not = icmp eq i8 %i.b, 58
  br i1 %.not, label %bb.b, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !49
  %i.d = add i8 %i.c, -48                         ; 2 uses
  %i.e = icmp ult i8 %i.d, 10
  br i1 %i.e, label %bb.c, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !3046

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !49
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %narrow.i = mul nuw nsw i8 %i.d, 10
  %i.i = icmp ult i8 %i.h, 10
  %i.j = add i8 %i.h, %narrow.i                   ; 2 uses
  br i1 %i.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !3046

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit:    ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !49
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

bb.d:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !49
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %narrow.i10 = mul nuw nsw i8 %i.m, 10
  %i.r = icmp ult i8 %i.q, 10
  %i.s = add i8 %i.q, %narrow.i10                 ; 2 uses
  br i1 %i.r, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11:  ; preds = %bb.d
  %i.t = icmp ugt i8 %i.j, 23
  %i.u = icmp ugt i8 %i.s, 59
  %or.cond8 = select i1 %i.t, i1 true, i1 %i.u, !prof !3053
  br i1 %or.cond8, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, label %bb.e, !prof !3054

bb.e:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11
  %i.v = zext nneg i8 %i.j to i64
  %i.w = zext nneg i8 %i.s to i64
  %i.x = mul nuw nsw i64 %i.v, 60
  %i.y = add nuw nsw i64 %i.x, %i.w
  %i.z = mul nuw nsw i64 %i.y, 60
  store i64 %i.z, ptr %1, align 8, !tbaa !51
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread: ; preds = %bb.d, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, %bb.c, %bb.b, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11, %bb.a, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %bb.c ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11 ], [ false, %bb.b ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !49
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext i8 %i.c to i32                      ; 2 uses
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.not136 = icmp eq i64 %1, 1
  br i1 %.not136, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !49
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i32 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext i8 %i.h to i32
  %i.l = add nuw nsw i32 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %.not137 = icmp eq i64 %1, 2
  br i1 %.not137, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !49
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i32 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext i8 %i.o to i32
  %i.s = add nuw nsw i32 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %.not138 = icmp eq i64 %1, 3
  br i1 %.not138, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !49
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i32 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext i8 %i.v to i32
  %i.z = add nuw nsw i32 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %.not139 = icmp eq i64 %1, 4
  br i1 %.not139, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !49
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i32 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext i8 %i.ac to i32
  %i.ag = add nuw nsw i32 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %.not140 = icmp eq i64 %1, 5
  br i1 %.not140, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !49
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i32 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext i8 %i.aj to i32
  %i.an = add nuw nsw i32 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %.not141 = icmp eq i64 %1, 6
  br i1 %.not141, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !49
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i32 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %.not142 = icmp eq i64 %1, 7
  br i1 %.not142, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !49
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i32 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nuw nsw i32 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %.not143 = icmp eq i64 %1, 8
  br i1 %.not143, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !49
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i32 %i.bb, 10
  %i.bg = add i64 %1, -9                          ; 2 uses
  %i.bh = icmp ult i8 %i.be, 10
  %i.bi = zext i8 %i.be to i32
  %i.bj = add nuw nsw i32 %i.bf, %i.bi            ; 3 uses
  br i1 %i.bh, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %.not144 = icmp eq i64 %i.bg, 0
  br i1 %.not144, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %i.bk, label %.critedge, label %bb.u, !prof !48

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !49
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %.not145 = icmp ne i64 %i.bg, 1
  %i.bn = icmp ugt i8 %i.bm, 9
  %or.cond = or i1 %.not145, %i.bn
  br i1 %or.cond, label %.critedge, label %bb.v, !prof !3055

bb.v:                                             ; preds = %bb.u
  %i.bo = mul nuw i32 %i.bj, 10                   ; 3 uses
  %i.bp = zext nneg i8 %i.bm to i32
  %i.bq = add i32 %i.bo, %i.bp                    ; 2 uses
  %.not147 = icmp ult i32 %i.bq, %i.bo
  %.146 = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bo)
  br i1 %.not147, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.10105 = phi i32 [ %.146, %bb.v ], [ %i.bj, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i32 %.10105, ptr %2, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.t, %bb.v, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.w
  %.10 = phi i1 [ false, %bb.b ], [ true, %bb.w ], [ false, %bb.v ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.t ], [ false, %bb.u ]
  ret i1 %.10
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc8internal4json12_GLOBAL__N_116IntegerConverterINS0_10Date32TypeENS0_14NumericBuilderIS6_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc8internal4json12_GLOBAL__N_116IntegerConverterINS0_10Date32TypeENS0_14NumericBuilderIS6_EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((16, 24)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow14NumericBuilderINS0_10Date32TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm:bb.a
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ResizeEm.exit

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ResizeEm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.t
  store ptr %i.z, ptr %i.q, align 8, !tbaa !4644
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %spec.select
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !4643
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow9rapidjson15GenericDocumentINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEES5_E6StringEPKcjb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4643
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4644 ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.g, 16                    ; 2 uses
  br i1 %3, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef 1)
  %.pre7 = load ptr, ptr %i.c, align 8, !tbaa !4644
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.d, %bb.b ], [ %.pre7, %bb.c ] ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.c, align 8, !tbaa !4644
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.n = icmp ult i32 %2, 14
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 14 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit
  store i16 7173, ptr %i.o, align 2, !tbaa !49
  %i.p = trunc nuw nsw i32 %2 to i8
  %i.q = sub nuw nsw i8 13, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  store i8 %i.q, ptr %i.r, align 1, !tbaa !49
  br label %_ZN5arrow9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEC2EPKcjRS6_.exit

bb.e:                                             ; preds = %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit
  store i16 3077, ptr %i.o, align 2, !tbaa !49
  store i32 %2, ptr %i.j, align 8, !tbaa !49
  %i.s = add i32 %2, 1                            ; 2 uses
  %.not.i.i3.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i3.i, label %_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE6MallocEm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 7
  %i.v = and i64 %i.u, 8589934584                 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74  ; 2 uses
  %i.ab = add i64 %i.aa, %i.v                     ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !5903
  %i.ad = icmp ugt i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !24
  %..i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.v)
  %i.af = tail call noundef zeroext i1 @_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE8AddChunkEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %..i.i.i)
  br i1 %i.af, label %._crit_edge.i.i.i, label %_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE6MallocEm.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g
  %.pre.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !32
  %.pre11.i.i.i = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 8
  %.pre12.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !74 ; 2 uses
  %.pre13.i.i.i = add i64 %.pre12.i.i.i, %i.v
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %.pre13.i.i.i, %._crit_edge.i.i.i ], [ %i.ab, %bb.f ]
  %i.ag = phi i64 [ %.pre12.i.i.i, %._crit_edge.i.i.i ], [ %i.aa, %bb.f ]
  %i.ah = phi ptr [ %.pre11.i.i.i, %._crit_edge.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i64 %.pre-phi.i.i.i, ptr %i.aj, align 8, !tbaa !74
  br label %_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE6MallocEm.exit.i.i

_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE6MallocEm.exit.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %.0.i.i.i = phi ptr [ %i.ak, %bb.h ], [ null, %bb.e ], [ null, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, -281474976710656
  %i.ap = ptrtoint ptr %.0.i.i.i to i64
  %i.aq = or i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !49
  br label %_ZN5arrow9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEC2EPKcjRS6_.exit

_ZN5arrow9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEC2EPKcjRS6_.exit: ; preds = %bb.d, %_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE6MallocEm.exit.i.i
  %.0.i.i = phi ptr [ %i.j, %bb.d ], [ %.0.i.i.i, %_ZN5arrow9rapidjson19MemoryPoolAllocatorINS0_12CrtAllocatorEE6MallocEm.exit.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %1, null
  %i.as = select i1 %.not.i.i.i, ptr @_ZN5arrow9rapidjson16GenericStringRefIcE11emptyStringE, ptr %1, !prof !48
  %i.at = zext i32 %2 to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr nonnull align 1 %i.as, i64 %i.at, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.at
  store i8 0, ptr %i.au, align 1, !tbaa !49
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.j, label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit5, !prof !48

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.av, i64 noundef 1)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !4644
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit5

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit5: ; preds = %bb.i, %bb.j
  %i.aw = phi ptr [ %i.d, %bb.i ], [ %.pre, %bb.j ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !4644
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %.not.i.i.i6 = icmp eq ptr %1, null
  %i.ay = select i1 %.not.i.i.i6, ptr @_ZN5arrow9rapidjson16GenericStringRefIcE11emptyStringE, ptr %1, !prof !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  store i16 1029, ptr %i.az, align 2, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !49
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -281474976710656
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = or i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ba, align 8, !tbaa !49
  store i32 %2, ptr %i.aw, align 8, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveINS0_12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorIS3_EEEEEEvm.exit5, %_ZN5arrow9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEC2EPKcjRS6_.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseHex4INS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEjRT_m(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !5887, !nonnull !76, !align !724 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 4 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !41 ; 6 uses
  %i.d = icmp eq ptr %.promoted, %i.c
  br i1 %i.d, label %.thread39, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit, !prof !48

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit: ; preds = %bb.a
  %i.e = load i8, ptr %.promoted, align 1, !tbaa !49 ; 4 uses
  %i.f = sext i8 %i.e to i32
  %i.g = add i8 %i.e, -48
  %or.cond = icmp ult i8 %i.g, 10
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  %i.h = add i8 %i.e, -65
  %or.cond6 = icmp ult i8 %i.h, 6
  br i1 %or.cond6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %i.e, -97
  %or.cond9 = icmp ult i8 %i.i, 6
  br i1 %or.cond9, label %bb.d, label %.thread39

.thread39:                                        ; preds = %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.a, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 8, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %i.k, align 8, !tbaa !23
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  %.sink = phi i32 [ -48, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit ], [ -55, %bb.b ], [ -87, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 3 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !41
  %i.m = icmp eq ptr %i.l, %i.c
  br i1 %i.m, label %.thread39, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.1, !prof !48

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.1: ; preds = %bb.d
  %i.n = add nsw i32 %.sink, %i.f
  %i.o = load i8, ptr %i.l, align 1, !tbaa !49    ; 4 uses
  %i.p = shl nuw nsw i32 %i.n, 4
  %i.q = sext i8 %i.o to i32
  %i.r = add nsw i32 %i.p, %i.q
  %i.s = add i8 %i.o, -48
  %or.cond.1 = icmp ult i8 %i.s, 10
  br i1 %or.cond.1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.1
  %i.t = add i8 %i.o, -65
  %or.cond6.1 = icmp ult i8 %i.t, 6
  br i1 %or.cond6.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add i8 %i.o, -97
  %or.cond9.1 = icmp ult i8 %i.u, 6
  br i1 %or.cond9.1, label %bb.g, label %.thread39

bb.g:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.1, %bb.e, %bb.f
  %.sink51 = phi i32 [ -55, %bb.e ], [ -87, %bb.f ], [ -48, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.1 ]
  %i.v = getelementptr inbounds nuw i8, ptr %.promoted, i64 2 ; 3 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !41
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %.thread39, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.2, !prof !48

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.2: ; preds = %bb.g
  %i.x = add nsw i32 %i.r, %.sink51
  %i.y = load i8, ptr %i.v, align 1, !tbaa !49    ; 4 uses
  %i.z = shl nsw i32 %i.x, 4
  %i.aa = sext i8 %i.y to i32
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = add i8 %i.y, -48
  %or.cond.2 = icmp ult i8 %i.ac, 10
  br i1 %or.cond.2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.2
  %i.ad = add i8 %i.y, -65
  %or.cond6.2 = icmp ult i8 %i.ad, 6
  br i1 %or.cond6.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = add i8 %i.y, -97
  %or.cond9.2 = icmp ult i8 %i.ae, 6
  br i1 %or.cond9.2, label %bb.j, label %.thread39

bb.j:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.2, %bb.h, %bb.i
  %.sink52 = phi i32 [ -55, %bb.h ], [ -87, %bb.i ], [ -48, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.2 ]
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted, i64 3 ; 3 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !41
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.thread39, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.3, !prof !48

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.3: ; preds = %bb.j
  %i.ah = add i32 %i.ab, %.sink52
  %i.ai = load i8, ptr %i.af, align 1, !tbaa !49  ; 4 uses
  %i.aj = shl i32 %i.ah, 4
  %i.ak = sext i8 %i.ai to i32
  %i.al = add i32 %i.aj, %i.ak
  %i.am = add i8 %i.ai, -48
  %or.cond.3 = icmp ult i8 %i.am, 10
  br i1 %or.cond.3, label %.loopexit.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.3
  %i.an = add i8 %i.ai, -65
  %or.cond6.3 = icmp ult i8 %i.an, 6
  br i1 %or.cond6.3, label %.loopexit.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = add i8 %i.ai, -97
  %or.cond9.3 = icmp ult i8 %i.ao, 6
  br i1 %or.cond9.3, label %.loopexit.loopexit, label %.thread39

.loopexit.loopexit:                               ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.3, %bb.k, %bb.l
  %.sink53 = phi i32 [ -55, %bb.k ], [ -87, %bb.l ], [ -48, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.3 ]
  %i.ap = add i32 %i.al, %.sink53
  %i.aq = getelementptr inbounds nuw i8, ptr %.promoted, i64 4
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.thread39
  %spec.select = phi i32 [ 0, %.thread39 ], [ %i.ap, %.loopexit.loopexit ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow9rapidjson4UTF8IcE6EncodeINS0_13GenericReaderIS2_S2_NS0_12CrtAllocatorEE11StackStreamIcEEEEvRT_j(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %1 to i8
  %i.c = load ptr, ptr %0, align 8, !tbaa !5898, !nonnull !76, !align !724 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4643
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4644 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit30, !prof !48

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 1)
  %.pre39 = load ptr, ptr %i.f, align 8, !tbaa !4644
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit30

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit30: ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.g, %bb.b ], [ %.pre39, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %i.f, align 8, !tbaa !4644
  store i8 %i.b, ptr %i.l, align 1, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !5895
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !5895
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.q = icmp ult i32 %1, 2048
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = lshr i32 %1, 6
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = or disjoint i8 %i.s, -64
  %i.u = load ptr, ptr %0, align 8, !tbaa !5898, !nonnull !76, !align !724 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !4643
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4644 ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %bb.f, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit29, !prof !48

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef 1)
  %.pre37 = load ptr, ptr %i.x, align 8, !tbaa !4644
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit29

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit29: ; preds = %bb.e, %bb.f
  %i.ad = phi ptr [ %i.y, %bb.e ], [ %.pre37, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !4644
  store i8 %i.t, ptr %i.ad, align 1, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !5895
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !5895
  %i.ai = trunc i32 %1 to i8
  %i.aj = and i8 %i.ai, 63
  %i.ak = or disjoint i8 %i.aj, -128
  %i.al = load ptr, ptr %0, align 8, !tbaa !5898, !nonnull !76, !align !724 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !4643
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !4644 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp slt i64 %i.as, 1
  br i1 %i.at, label %bb.g, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit28, !prof !48

bb.g:                                             ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit29
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 noundef 1)
  %.pre38 = load ptr, ptr %i.ao, align 8, !tbaa !4644
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit28

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit28: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit29, %bb.g
  %i.au = phi ptr [ %i.ap, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit29 ], [ %.pre38, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %i.ao, align 8, !tbaa !4644
  store i8 %i.ak, ptr %i.au, align 1, !tbaa !49
  %i.aw = load i32, ptr %i.af, align 8, !tbaa !5895
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.af, align 8, !tbaa !5895
  br label %bb.r

bb.h:                                             ; preds = %bb.d
  %i.ay = icmp ult i32 %1, 65536
  %i.az = load ptr, ptr %0, align 8, !tbaa !5898, !nonnull !76, !align !724 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !4643
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 5 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !4644 ; 3 uses
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp slt i64 %i.bg, 1                   ; 2 uses
  br i1 %i.ay, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bi = lshr i32 %1, 12
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, -32
  br i1 %i.bh, label %bb.j, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit27, !prof !48

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.az, i64 noundef 1)
  %.pre34 = load ptr, ptr %i.bc, align 8, !tbaa !4644
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcE3PutEc.exit27
end_hunk_1
