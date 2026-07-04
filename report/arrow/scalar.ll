inline.NumInlined: 43590
inline.NumDeleted: 6060
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5arrow15TimestampScalar11FromISO8601ESt17basic_string_viewIcSt11char_traitsIcEENS_8TimeUnit4typeE:bb.a
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l, %_ZN5arrow6ResultINS_15TimestampScalarEEC2EOS1_.exit
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !201 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5arrow6ScalarD2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.aq, align 8, !tbaa !205
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !207
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #28, !inline_history !230
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #28, !inline_history !230
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i4 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i4, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.p ], [ %i.bd, %bb.q ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !209

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !353
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEES4_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(16) @.str.9), !noalias !353
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr %4, align 8, !tbaa !62, !noalias !353 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEES4_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !66, !noalias !353
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #29
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEES4_EEES0_DpOT_.exit

bb.u:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %4, align 8, !tbaa !62, !noalias !353 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.u
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !66, !noalias !353
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !353
  resume { ptr, i32 } %i.bk

_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEES4_EEES0_DpOT_.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !353
  call void @_ZN5arrow6ResultINS_15TimestampScalarEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  %i.bq = load ptr, ptr %7, align 8, !tbaa !84    ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.v, !prof !218

bb.v:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEES4_EEES0_DpOT_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !262, !range !82, !noundef !83
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZN5arrow6StatusD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEES4_EEES0_DpOT_.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n, %_ZN5arrow6ScalarD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.std::chrono::duration", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = icmp ult i64 %1, 10
  br i1 %i.c, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, label %bb.b, !prof !209

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66
  %.not.i = icmp eq i8 %i.e, 45
  br i1 %.not.i, label %bb.c, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, !prof !218

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66
  %.not7.i = icmp eq i8 %i.g, 45
  br i1 %.not7.i, label %bb.d, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, !prof !218

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %0, align 1, !tbaa !66
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %i.j = icmp ult i8 %i.i, 10
  br i1 %i.j, label %bb.e, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, !prof !358

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.f, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, !prof !358

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !66
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.g, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, !prof !358

bb.g:                                             ; preds = %bb.f
  %narrow.i = mul nuw nsw i8 %i.i, 10
  %narrow48.i = add nuw nsw i8 %i.m, %narrow.i
  %i.s = zext nneg i8 %narrow48.i to i16
  %i.t = mul nuw nsw i16 %i.s, 10
  %i.u = zext nneg i8 %i.q to i16
  %i.v = add nuw nsw i16 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !66
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %i.z = mul nuw nsw i16 %i.v, 10
  %i.aa = icmp ult i8 %i.y, 10
  %i.ab = zext nneg i8 %i.y to i16
  %i.ac = add nuw nsw i16 %i.z, %i.ab             ; 4 uses
  br i1 %i.aa, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i:  ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !66
  %i.af = add i8 %i.ae, -48                       ; 2 uses
  %i.ag = icmp ult i8 %i.af, 10
  br i1 %i.ag, label %bb.h, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, !prof !358

bb.h:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !66
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %narrow.i8.i = mul nuw nsw i8 %i.af, 10
  %i.ak = icmp ult i8 %i.aj, 10
  %i.al = add i8 %i.aj, %narrow.i8.i              ; 6 uses
  br i1 %i.ak, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i:  ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i8, ptr %i.am, align 1, !tbaa !66
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 10
  br i1 %i.ap, label %bb.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, !prof !358

bb.i:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !66
  %i.as = add i8 %i.ar, -48                       ; 2 uses
  %narrow.i10.i = mul nuw nsw i8 %i.ao, 10
  %i.at = icmp ugt i8 %i.as, 9
  %i.au = add i8 %i.as, %narrow.i10.i             ; 3 uses
  %i.av = add i8 %i.al, -13
  %spec.select.i.i.i = icmp ult i8 %i.av, -12
  %or.cond34.not38.i = select i1 %i.at, i1 true, i1 %spec.select.i.i.i, !prof !359
  %.not8.i.i = icmp eq i8 %i.au, 0
  %or.cond35.i = select i1 %or.cond34.not38.i, i1 true, i1 %.not8.i.i, !prof !360
  br i1 %or.cond35.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, label %bb.j, !prof !360

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i8 %i.al, 2
  %i.aw = and i16 %i.ac, 3
  %i.ax = icmp eq i16 %i.aw, 0
  %or.cond.i.i = and i1 %i.ax, %.not.i.i.i
  br i1 %or.cond.i.i, label %bb.k, label %.thread.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ay = urem i16 %i.ac, 100
  %.not.i.i.i.i = icmp ne i16 %i.ay, 0
  %i.az = urem i16 %i.ac, 400
  %i.ba = icmp eq i16 %i.az, 0
  %or.cond.i.i.i = or i1 %.not.i.i.i.i, %i.ba
  br i1 %or.cond.i.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.k, %bb.j
  %i.bb = zext nneg i8 %i.al to i64
  %i.bc = add nuw nsw i64 %i.bb, 4294967295
  %i.bd = and i64 %i.bc, 4294967295
  %i.be = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !66
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i: ; preds = %.thread.i.i.i, %bb.k
  %.sroa.03.0.i.i.i = phi i8 [ %i.bf, %.thread.i.i.i ], [ 29, %bb.k ]
  %.not41.i = icmp ult i8 %.sroa.03.0.i.i.i, %i.au
  br i1 %.not41.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, label %bb.l, !prof !361

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i
  %i.bg = zext nneg i16 %i.ac to i32
  %i.bh = icmp samesign ult i8 %i.al, 3
  %.neg.i.i.i = sext i1 %i.bh to i32
  %i.bi = add nsw i32 %.neg.i.i.i, %i.bg          ; 4 uses
  %i.bj = zext nneg i8 %i.al to i32
  %i.bk = zext i8 %i.au to i32
  %i.bl = add nsw i32 %i.bi, 65137
  %i.bm = icmp slt i32 %i.bi, 0
  %i.bn = select i1 %i.bm, i32 %i.bl, i32 %i.bi
  %.lhs.trunc.i = trunc i32 %i.bn to i16
  %i.bo = sdiv i16 %.lhs.trunc.i, 400
  %.sext.i = sext i16 %i.bo to i32                ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %.sext.i, -400
  %i.bp = add nsw i32 %.neg15.i.i.i, %i.bi        ; 3 uses
  %i.bq = icmp samesign ugt i8 %i.al, 2
  %.v.i.i.i = select i1 %i.bq, i32 -3, i32 9
  %i.br = add nsw i32 %.v.i.i.i, %i.bj
  %i.bs = mul nsw i32 %i.br, 153
  %i.bt = add nsw i32 %i.bs, 2
  %i.bu = udiv i32 %i.bt, 5
  %i.bv = mul nsw i32 %i.bp, 365
  %i.bw = lshr i32 %i.bp, 2
  %i.bx = udiv i32 %i.bp, 100
  %i.by = mul nsw i32 %.sext.i, 146097
  %i.bz = add nsw i32 %i.bu, -719469
  %i.ca = add nsw i32 %i.bz, %i.by
  %i.cb = add nsw i32 %i.ca, %i.bw
  %i.cc = add nsw i32 %i.cb, %i.bv
  %i.cd = sub nsw i32 %i.cc, %i.bx
  %i.ce = add nsw i32 %i.cd, %i.bk
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = mul nsw i64 %i.cf, 86400                ; 4 uses
  %i.ch = icmp eq i64 %1, 10
  br i1 %i.ch, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  switch i32 %2, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ci = mul nsw i64 %i.cf, 86400000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i

bb.o:                                             ; preds = %bb.m
  %i.cj = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.cg, i64 1000000) ; 2 uses
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  %i.cl = extractvalue { i64, i1 } %i.cj, 0
  br i1 %i.ck, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i, !prof !362

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i: ; preds = %bb.m
  %i.cm = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.cg, i64 1000000000) ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  %i.co = extractvalue { i64, i1 } %i.cm, 0
  br i1 %i.cn, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i, !prof !362

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i: ; preds = %bb.n, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i, %bb.o, %bb.m
  %.pn25.i.i8.i = phi i64 [ %i.ci, %bb.n ], [ %i.co, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i ], [ %i.cl, %bb.o ], [ %i.cg, %bb.m ]
  store i64 %.pn25.i.i8.i, ptr %3, align 8, !tbaa !350
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit

bb.p:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !66
  switch i8 %i.cq, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit [
    i8 32, label %bb.q
    i8 84, label %bb.q
  ], !prof !363

bb.q:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 0, ptr %4, align 8
  %i.cr = getelementptr i8, ptr %0, i64 %1
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !66  ; 3 uses
  %i.cu = icmp eq i8 %i.ct, 90
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = add i64 %1, -1
  br label %bb.ai

bb.s:                                             ; preds = %bb.q
  %i.cw = add i64 %1, -3                          ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !66  ; 4 uses
  switch i8 %i.cy, label %bb.x [
    i8 43, label %bb.t
    i8 45, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !66
  %i.db = add i8 %i.da, -48                       ; 2 uses
  %i.dc = icmp ult i8 %i.db, 10
  br i1 %i.dc, label %bb.u, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

bb.u:                                             ; preds = %bb.t
  %i.dd = add i8 %i.ct, -48                       ; 2 uses
  %narrow.i.i = mul nuw nsw i8 %i.db, 10
  %i.de = icmp ugt i8 %i.dd, 9
  %i.df = add i8 %i.dd, %narrow.i.i               ; 2 uses
  %i.dg = icmp ugt i8 %i.df, 23
  %or.cond.i = select i1 %i.de, i1 true, i1 %i.dg, !prof !364
  br i1 %or.cond.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, label %bb.v, !prof !364

bb.v:                                             ; preds = %bb.u
  %i.dh = zext nneg i8 %i.df to i64
  %i.di = mul nuw nsw i64 %i.dh, 3600             ; 2 uses
  store i64 %i.di, ptr %4, align 8, !tbaa !350
  %i.dj = icmp eq i8 %i.cy, 43
  br i1 %i.dj, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.dk = sub nsw i64 0, %i.di
  store i64 %i.dk, ptr %4, align 8, !tbaa !365
  br label %bb.ai

bb.x:                                             ; preds = %bb.s
  %i.dl = add i64 %1, -5                          ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %i.dl ; 3 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !66  ; 2 uses
  switch i8 %i.dn, label %bb.ad [
    i8 43, label %bb.y
    i8 45, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !66
  %i.dq = add i8 %i.dp, -48                       ; 2 uses
  %i.dr = icmp ult i8 %i.dq, 10
  br i1 %i.dr, label %bb.z, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

bb.z:                                             ; preds = %bb.y
  %i.ds = add i8 %i.cy, -48                       ; 2 uses
  %narrow.i.i78 = mul nuw nsw i8 %i.dq, 10
  %i.dt = icmp ult i8 %i.ds, 10
  %i.du = add i8 %i.ds, %narrow.i.i78             ; 2 uses
  br i1 %i.dt, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79: ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !66
  %i.dx = add i8 %i.dw, -48                       ; 2 uses
  %i.dy = icmp ult i8 %i.dx, 10
  br i1 %i.dy, label %bb.aa, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

bb.aa:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79
  %i.dz = add i8 %i.ct, -48                       ; 2 uses
  %narrow.i8.i80 = mul nuw nsw i8 %i.dx, 10
  %i.ea = icmp ult i8 %i.dz, 10
  %i.eb = add i8 %i.dz, %narrow.i8.i80            ; 2 uses
  br i1 %i.ea, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i: ; preds = %bb.aa
  %i.ec = icmp ugt i8 %i.du, 23
  %i.ed = icmp ugt i8 %i.eb, 59
  %or.cond6.i = select i1 %i.ec, i1 true, i1 %i.ed, !prof !367
  br i1 %or.cond6.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, label %bb.ab, !prof !368

bb.ab:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i
  %i.ee = zext nneg i8 %i.du to i64
  %i.ef = zext nneg i8 %i.eb to i64
  %i.eg = mul nuw nsw i64 %i.ee, 60
  %i.eh = add nuw nsw i64 %i.eg, %i.ef
  %i.ei = mul nuw nsw i64 %i.eh, 60               ; 2 uses
  store i64 %i.ei, ptr %4, align 8, !tbaa !350
  %i.ej = icmp eq i8 %i.dn, 43
  br i1 %i.ej, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.ek = sub nsw i64 0, %i.ei
  store i64 %i.ek, ptr %4, align 8, !tbaa !365
  br label %bb.ai

bb.ad:                                            ; preds = %bb.x
  %i.el = add i64 %1, -6                          ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.el ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !66  ; 2 uses
  switch i8 %i.en, label %bb.ai [
    i8 43, label %bb.ae
    i8 45, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.eo = icmp eq i8 %i.cy, 58
  br i1 %i.eo, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eq = call fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr noundef nonnull %i.ep, ptr noundef %4)
  br i1 %i.eq, label %bb.ag, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !218

bb.ag:                                            ; preds = %bb.af
  %i.er = icmp eq i8 %i.en, 43
  br i1 %i.er, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.es = load i64, ptr %4, align 8, !tbaa !365
  %i.et = sub nsw i64 0, %i.es
  store i64 %i.et, ptr %4, align 8, !tbaa !365
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.ad, %bb.ab, %bb.ac, %bb.v, %bb.w, %bb.r, %bb.ae
  %.064 = phi i64 [ %1, %bb.ad ], [ %i.cv, %bb.r ], [ %1, %bb.ae ], [ %i.cw, %bb.v ], [ %i.dl, %bb.ab ], [ %i.cw, %bb.w ], [ %i.dl, %bb.ac ], [ %i.el, %bb.ah ], [ %i.el, %bb.ag ] ; 6 uses
  switch i64 %.064, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100 [
    i64 13, label %bb.aj
    i64 16, label %bb.al
    i64 19, label %bb.ap
    i64 21, label %bb.ap
    i64 22, label %bb.ap
    i64 23, label %bb.ap
    i64 24, label %bb.ap
    i64 25, label %bb.ap
    i64 26, label %bb.ap
    i64 27, label %bb.ap
    i64 28, label %bb.ap
    i64 29, label %bb.ap
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !66
  %i.ew = add i8 %i.ev, -48                       ; 2 uses
  %i.ex = icmp ult i8 %i.ew, 10
  br i1 %i.ex, label %bb.ak, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

bb.ak:                                            ; preds = %bb.aj
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !66
  %i.fa = add i8 %i.ez, -48                       ; 2 uses
  %narrow.i.i82 = mul nuw nsw i8 %i.ew, 10
  %i.fb = icmp ugt i8 %i.fa, 9
  %i.fc = add i8 %i.fa, %narrow.i.i82             ; 2 uses
  %i.fd = icmp ugt i8 %i.fc, 23
  %or.cond.i83 = select i1 %i.fb, i1 true, i1 %i.fd, !prof !364
  br i1 %or.cond.i83, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84, !prof !364

_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84: ; preds = %bb.ak
  %i.fe = zext nneg i8 %i.fc to i64
  %i.ff = mul nuw nsw i64 %i.fe, 3600
  br label %bb.au

bb.al:                                            ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !66
  %.not.i85 = icmp eq i8 %i.fh, 58
  br i1 %.not.i85, label %bb.am, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !218

bb.am:                                            ; preds = %bb.al
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !66
  %i.fk = add i8 %i.fj, -48                       ; 2 uses
  %i.fl = icmp ult i8 %i.fk, 10
  br i1 %i.fl, label %bb.an, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

bb.an:                                            ; preds = %bb.am
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !66
  %i.fo = add i8 %i.fn, -48                       ; 2 uses
  %narrow.i.i87 = mul nuw nsw i8 %i.fk, 10
  %i.fp = icmp ult i8 %i.fo, 10
  %i.fq = add i8 %i.fo, %narrow.i.i87             ; 2 uses
  br i1 %i.fp, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88: ; preds = %bb.an
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !66
  %i.ft = add i8 %i.fs, -48                       ; 2 uses
  %i.fu = icmp ult i8 %i.ft, 10
  br i1 %i.fu, label %bb.ao, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

bb.ao:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !66
  %i.fx = add i8 %i.fw, -48                       ; 2 uses
  %narrow.i10.i89 = mul nuw nsw i8 %i.ft, 10
  %i.fy = icmp ult i8 %i.fx, 10
  %i.fz = add i8 %i.fx, %narrow.i10.i89           ; 2 uses
  br i1 %i.fy, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i: ; preds = %bb.ao
  %i.ga = icmp ugt i8 %i.fq, 23
  %i.gb = icmp ugt i8 %i.fz, 59
  %or.cond8.i = select i1 %i.ga, i1 true, i1 %i.gb, !prof !367
  br i1 %or.cond8.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit, !prof !368

_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i
  %i.gc = zext nneg i8 %i.fq to i64
  %i.gd = zext nneg i8 %i.fz to i64
  %i.ge = mul nuw nsw i64 %i.gc, 60
  %i.gf = add nuw nsw i64 %i.ge, %i.gd
  %i.gg = mul nuw nsw i64 %i.gf, 60
  br label %bb.au

bb.ap:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !66
  %.not.i90 = icmp eq i8 %i.gj, 58
  br i1 %.not.i90, label %bb.aq, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !218

bb.aq:                                            ; preds = %bb.ap
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !66
  %.not7.i92 = icmp eq i8 %i.gl, 58
  br i1 %.not7.i92, label %bb.ar, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !218

bb.ar:                                            ; preds = %bb.aq
  %i.gm = load i8, ptr %i.gh, align 1, !tbaa !66
  %i.gn = add i8 %i.gm, -48                       ; 2 uses
  %i.go = icmp ult i8 %i.gn, 10
  br i1 %i.go, label %bb.as, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

bb.as:                                            ; preds = %bb.ar
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !66
  %i.gr = add i8 %i.gq, -48                       ; 2 uses
  %narrow.i.i93 = mul nuw nsw i8 %i.gn, 10
  %i.gs = icmp ult i8 %i.gr, 10
  %i.gt = add i8 %i.gr, %narrow.i.i93             ; 2 uses
  br i1 %i.gs, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94: ; preds = %bb.as
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !66
  %i.gw = add i8 %i.gv, -48                       ; 2 uses
  %i.gx = icmp ult i8 %i.gw, 10
  br i1 %i.gx, label %bb.at, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

bb.at:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !66
  %i.ha = add i8 %i.gz, -48                       ; 2 uses
  %narrow.i15.i = mul nuw nsw i8 %i.gw, 10
  %i.hb = icmp ult i8 %i.ha, 10
  %i.hc = add i8 %i.ha, %narrow.i15.i             ; 2 uses
  br i1 %i.hb, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i: ; preds = %bb.at
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !66
  %i.hf = add i8 %i.he, -48                       ; 2 uses
  %i.hg = icmp ult i8 %i.hf, 10
  br i1 %i.hg, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !66
  %i.hj = add i8 %i.hi, -48                       ; 2 uses
  %narrow.i18.i = mul nuw nsw i8 %i.hf, 10
  %i.hk = icmp ugt i8 %i.hj, 9
  %i.hl = add i8 %i.hj, %narrow.i18.i             ; 2 uses
  %i.hm = icmp ugt i8 %i.gt, 23
  %or.cond.i95 = select i1 %i.hk, i1 true, i1 %i.hm, !prof !369
  %i.hn = icmp ugt i8 %i.hc, 59
  %or.cond11.i = select i1 %or.cond.i95, i1 true, i1 %i.hn, !prof !367
  %i.ho = icmp ugt i8 %i.hl, 59
  %or.cond13.i = select i1 %or.cond11.i, i1 true, i1 %i.ho, !prof !370
  br i1 %or.cond13.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, label %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit, !prof !368

_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i
  %i.hp = zext nneg i8 %i.gt to i64
  %i.hq = zext nneg i8 %i.hc to i64
  %i.hr = mul nuw nsw i64 %i.hp, 60
  %i.hs = add nuw nsw i64 %i.hr, %i.hq
  %i.ht = zext nneg i8 %i.hl to i64
  %i.hu = mul nuw nsw i64 %i.hs, 60
  %i.hv = add nuw nsw i64 %i.hu, %i.ht
  br label %bb.au

bb.au:                                            ; preds = %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit, %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84
  %.sroa.02.3 = phi i64 [ %i.ff, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84 ], [ %i.gg, %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit ], [ %i.hv, %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit ]
  %i.hw = load i64, ptr %4, align 8, !tbaa !350
  %i.hx = add nsw i64 %i.hw, %.sroa.02.3
  %i.hy = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hx, i64 %i.cg) ; 2 uses
  %i.hz = extractvalue { i64, i1 } %i.hy, 1
  %i.ia = extractvalue { i64, i1 } %i.hy, 0       ; 7 uses
  br i1 %i.hz, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, label %bb.av, !prof !209

bb.av:                                            ; preds = %bb.au
  %i.ib = icmp samesign ult i64 %.064, 20
  br i1 %i.ib, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  switch i32 %2, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i96 [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99
    i32 1, label %bb.ax
    i32 2, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ic = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ia, i64 1000) ; 2 uses
  %i.id = extractvalue { i64, i1 } %i.ic, 1
  %i.ie = extractvalue { i64, i1 } %i.ic, 0
  br i1 %i.id, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i96, !prof !362

bb.ay:                                            ; preds = %bb.aw
  %i.if = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ia, i64 1000000) ; 2 uses
  %i.ig = extractvalue { i64, i1 } %i.if, 1
  %i.ih = extractvalue { i64, i1 } %i.if, 0
  br i1 %i.ig, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i96, !prof !362

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99: ; preds = %bb.aw
  %i.ii = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ia, i64 1000000000) ; 2 uses
  %i.ij = extractvalue { i64, i1 } %i.ii, 1
  %i.ik = extractvalue { i64, i1 } %i.ii, 0
  br i1 %i.ij, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i96, !prof !362

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i96: ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99, %bb.ay, %bb.ax, %bb.aw
  %.pn25.i.i8.i97 = phi i64 [ %i.ie, %bb.ax ], [ %i.ik, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99 ], [ %i.ih, %bb.ay ], [ %i.ia, %bb.aw ]
  store i64 %.pn25.i.i8.i97, ptr %3, align 8, !tbaa !350
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100

bb.az:                                            ; preds = %bb.av
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.im = load i8, ptr %i.il, align 1, !tbaa !66
  %.not76 = icmp eq i8 %i.im, 46
  br i1 %.not76, label %bb.ba, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !218

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.io = add nsw i64 %.064, -20                  ; 3 uses
  switch i32 %2, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread [
    i32 1, label %bb.bb
    i32 2, label %bb.bc
    i32 3, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ip = icmp samesign ugt i64 %.064, 23
  br i1 %i.ip, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, label %bb.bd, !prof !209

bb.bc:                                            ; preds = %bb.ba
  %i.iq = icmp samesign ugt i64 %.064, 26
  br i1 %i.iq, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, label %bb.bd, !prof !209

bb.bd:                                            ; preds = %bb.ba, %bb.bc, %bb.bb
  %.pn.i = phi i64 [ 3, %bb.bb ], [ 6, %bb.bc ], [ 9, %bb.ba ] ; 2 uses
  %i.ir = icmp eq i64 %.pn.i, %i.io
  br i1 %i.ir, label %bb.be, label %bb.bf, !prof !218

bb.be:                                            ; preds = %bb.bd
  %i.is = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.in, i64 noundef range(i64 0, -9) %i.io, ptr noundef nonnull %i.b)
  br i1 %i.is, label %bb.bh, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, !prof !300

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.it = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.in, i64 noundef range(i64 0, -9) %i.io, ptr noundef nonnull %i.a)
  br i1 %i.it, label %bb.bg, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit, !prof !218

bb.bg:                                            ; preds = %bb.bf
  %reass.sub = sub i64 %.pn.i, %.064
  %switch.tableidx = add i64 %reass.sub, 19       ; 2 uses
  %i.iu = icmp ult i64 %switch.tableidx, 8
  br i1 %i.iu, label %switch.lookup, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread20

switch.lookup:                                    ; preds = %bb.bg
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPl, i64 %switch.tableidx
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.iv = load i32, ptr %i.a, align 4, !tbaa !3
  %i.iw = mul i32 %i.iv, %switch.load
  store i32 %i.iw, ptr %i.b, align 4, !tbaa !3
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread20

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread20: ; preds = %bb.bg, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.bh

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread

bb.bh:                                            ; preds = %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread20, %bb.be
  switch i32 %2, label %default.unreachable [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i105
    i32 1, label %bb.bi
    i32 2, label %bb.bj
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.ix = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ia, i64 1000) ; 2 uses
  %i.iy = extractvalue { i64, i1 } %i.ix, 1
  br i1 %i.iy, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, label %bb.bk, !prof !362

bb.bj:                                            ; preds = %bb.bh
  %i.iz = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ia, i64 1000000) ; 2 uses
  %i.ja = extractvalue { i64, i1 } %i.iz, 1
  br i1 %i.ja, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, label %bb.bk, !prof !362

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i105: ; preds = %bb.bh
  %i.jb = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ia, i64 1000000000) ; 2 uses
  %i.jc = extractvalue { i64, i1 } %i.jb, 1
  br i1 %i.jc, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, label %bb.bk, !prof !362

default.unreachable:                              ; preds = %bb.bh
  unreachable

bb.bk:                                            ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i105, %bb.bj, %bb.bi
  %.pn = phi { i64, i1 } [ %i.ix, %bb.bi ], [ %i.jb, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i105 ], [ %i.iz, %bb.bj ]
  %.pn25.i.i8.i103 = extractvalue { i64, i1 } %.pn, 0
  %i.jd = load i32, ptr %i.b, align 4, !tbaa !3
  %i.je = zext i32 %i.jd to i64
  %i.jf = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pn25.i.i8.i103, i64 %i.je) ; 2 uses
  %i.jg = extractvalue { i64, i1 } %i.jf, 1
  %i.jh = extractvalue { i64, i1 } %i.jf, 0
  store i64 %i.jh, ptr %3, align 8
  %not. = xor i1 %i.jg, true
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread: ; preds = %bb.bi, %bb.bj, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i105, %bb.bb, %bb.bc, %bb.ba, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit, %bb.be, %bb.bk
  %.0 = phi i1 [ false, %bb.bb ], [ false, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit ], [ %not., %bb.bk ], [ false, %bb.be ], [ false, %bb.ba ], [ false, %bb.bc ], [ false, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i105 ], [ false, %bb.bj ], [ false, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i, %bb.at, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94, %bb.ar, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i, %bb.as, %bb.aq, %bb.ap, %bb.ao, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88, %bb.am, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i, %bb.an, %bb.al, %bb.aj, %bb.ak, %bb.aa, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79, %bb.y, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i, %bb.z, %bb.t, %bb.u, %bb.ai, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i96, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99, %bb.ay, %bb.ax, %bb.az, %bb.au, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, %bb.af
  %.3 = phi i1 [ false, %bb.af ], [ false, %bb.t ], [ false, %bb.ax ], [ false, %bb.ao ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.aa ], [ %.0, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread ], [ false, %bb.az ], [ false, %bb.au ], [ true, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i96 ], [ false, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99 ], [ false, %bb.ay ], [ false, %bb.u ], [ false, %bb.z ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i ], [ false, %bb.y ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79 ], [ false, %bb.ak ], [ false, %bb.al ], [ false, %bb.an ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i ], [ false, %bb.am ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88 ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %bb.as ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i ], [ false, %bb.ar ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94 ], [ false, %bb.at ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, %bb.g, %bb.e, %bb.d, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, %bb.i, %bb.c, %bb.f, %bb.b, %bb.h, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, %bb.p, %bb.o, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ %.3, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100 ], [ false, %bb.p ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i ], [ true, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i ], [ false, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i ], [ false, %bb.o ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.i ], [ false, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.g ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i ]
  ret i1 %.5
}

declare void @_ZN5arrow9timestampENS_8TimeUnit4typeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_15TimestampScalarEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow12BinaryScalarD0Ev:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !205
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !207
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !314
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !314
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !209

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !315
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !282  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !inline_history !316
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow10ListScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow14BaseListScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow15LargeListScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow14BaseListScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14ListViewScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow14BaseListScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19LargeListViewScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow14BaseListScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA52_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(52) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA49_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(49) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

declare void @_ZN5arrow3mapESt10shared_ptrINS_8DataTypeEES2_b(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow9MapScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow14BaseListScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !66
  %.not = icmp eq i8 %i.b, 58
  br i1 %.not, label %bb.b, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !218

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !66
  %i.d = add i8 %i.c, -48                         ; 2 uses
  %i.e = icmp ult i8 %i.d, 10
  br i1 %i.e, label %bb.c, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !358

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %narrow.i = mul nuw nsw i8 %i.d, 10
  %i.i = icmp ult i8 %i.h, 10
  %i.j = add i8 %i.h, %narrow.i                   ; 2 uses
  br i1 %i.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit:    ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

bb.d:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !66
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %narrow.i10 = mul nuw nsw i8 %i.m, 10
  %i.r = icmp ult i8 %i.q, 10
  %i.s = add i8 %i.q, %narrow.i10                 ; 2 uses
  br i1 %i.r, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11:  ; preds = %bb.d
  %i.t = icmp ugt i8 %i.j, 23
  %i.u = icmp ugt i8 %i.s, 59
  %or.cond8 = select i1 %i.t, i1 true, i1 %i.u, !prof !367
  br i1 %or.cond8, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, label %bb.e, !prof !368

bb.e:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11
  %i.v = zext nneg i8 %i.j to i64
  %i.w = zext nneg i8 %i.s to i64
  %i.x = mul nuw nsw i64 %i.v, 60
  %i.y = add nuw nsw i64 %i.x, %i.w
  %i.z = mul nuw nsw i64 %i.y, 60
  store i64 %i.z, ptr %1, align 8, !tbaa !350
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread: ; preds = %bb.d, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, %bb.c, %bb.b, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11, %bb.a, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %bb.c ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11 ], [ false, %bb.b ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !66
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext i8 %i.c to i32                      ; 2 uses
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.not136 = icmp eq i64 %1, 1
  br i1 %.not136, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !66
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
  %i.n = load i8, ptr %i.f, align 1, !tbaa !66
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
  %i.u = load i8, ptr %i.m, align 1, !tbaa !66
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
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !66
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
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !66
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
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !66
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
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !66
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
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !66
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
  br i1 %i.bk, label %.critedge, label %bb.u, !prof !209

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !66
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %.not145 = icmp ne i64 %i.bg, 1
  %i.bn = icmp ugt i8 %i.bm, 9
  %or.cond = or i1 %.not145, %i.bn
  br i1 %or.cond, label %.critedge, label %bb.v, !prof !369

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

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow15TimestampScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_12DurationTypeEE7ConvertERKS2_PKcmPl:bb.a
  %.133 = phi i64 [ %.023, %.thread ], [ %i.aa, %bb.l ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.ab, %bb.l ] ; 3 uses
  %i.y = load i8, ptr %.12532, align 1, !tbaa !66
  %i.z = icmp eq i8 %i.y, 48
  br i1 %i.z, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.aa = add i64 %.133, -1                       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.12532, i64 1
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %.critedge, label %bb.k, !llvm.loop !6935

.critedge:                                        ; preds = %bb.l, %bb.k
  %.125.lcssa = phi ptr [ %scevgep, %bb.l ], [ %.12532, %bb.k ]
  %.1.lcssa = phi i64 [ 0, %bb.l ], [ %.133, %bb.k ]
  %i.ac = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.ac, label %bb.m, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !218

bb.m:                                             ; preds = %.critedge
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !350 ; 4 uses
  br i1 %i.x, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp ugt i64 %i.ad, -9223372036854775808
  br i1 %i.ae, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.o, !prof !209

bb.o:                                             ; preds = %bb.n
  %i.af = sub i64 0, %i.ad
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ag = icmp slt i64 %i.ad, 0
  br i1 %i.ag, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, !prof !209

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split: ; preds = %bb.i, %bb.o, %bb.p
  %storemerge.sink = phi i64 [ %i.ad, %bb.p ], [ %i.af, %bb.o ], [ %.1.i, %bb.i ]
  store i64 %storemerge.sink, ptr %4, align 8, !tbaa !350
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread: ; preds = %bb.g, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, %bb.d, %bb.p, %bb.n, %.critedge, %bb.j, %bb.a
  %.022 = phi i1 [ false, %bb.j ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.p ], [ false, %.critedge ], [ true, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.n ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i1 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(76) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %1) #28
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !350
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !433
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %3) #28
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(21) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(76) %4)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal15StringConverterINS_10Date32TypeEvE7ConvertERKS2_PKcmPi(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %3, 10
  br i1 %.not, label %bb.b, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, !prof !218

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !66
  %.not.i = icmp eq i8 %i.b, 45
  br i1 %.not.i, label %bb.c, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, !prof !218

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.d = load i8, ptr %i.c, align 1, !tbaa !66
  %.not7.i = icmp eq i8 %i.d, 45
  br i1 %.not7.i, label %bb.d, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, !prof !218

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %2, align 1, !tbaa !66
  %i.f = add i8 %i.e, -48                         ; 2 uses
  %i.g = icmp ult i8 %i.f, 10
  br i1 %i.g, label %bb.e, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, !prof !358

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !66
  %i.j = add i8 %i.i, -48                         ; 2 uses
  %i.k = icmp ult i8 %i.j, 10
  br i1 %i.k, label %bb.f, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, !prof !358

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !66
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %bb.g, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, !prof !358

bb.g:                                             ; preds = %bb.f
  %narrow.i = mul nuw nsw i8 %i.f, 10
  %narrow49.i = add nuw nsw i8 %i.j, %narrow.i
  %i.p = zext nneg i8 %narrow49.i to i16
  %i.q = mul nuw nsw i16 %i.p, 10
  %i.r = zext nneg i8 %i.n to i16
  %i.s = add nuw nsw i16 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !66
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i16 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext nneg i8 %i.v to i16
  %i.z = add nuw nsw i16 %i.w, %i.y               ; 4 uses
  br i1 %i.x, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i:  ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !66
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = icmp ult i8 %i.ac, 10
  br i1 %i.ad, label %bb.h, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, !prof !358

bb.h:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !66
  %i.ag = add i8 %i.af, -48                       ; 2 uses
  %narrow.i8.i = mul nuw nsw i8 %i.ac, 10
  %i.ah = icmp ult i8 %i.ag, 10
  %i.ai = add i8 %i.ag, %narrow.i8.i              ; 6 uses
  br i1 %i.ah, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i:  ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !66
  %i.al = add i8 %i.ak, -48                       ; 2 uses
  %i.am = icmp ult i8 %i.al, 10
  br i1 %i.am, label %bb.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, !prof !358

bb.i:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !66
  %i.ap = add i8 %i.ao, -48                       ; 2 uses
  %narrow.i10.i = mul nuw nsw i8 %i.al, 10
  %i.aq = icmp ugt i8 %i.ap, 9
  %i.ar = add i8 %i.ap, %narrow.i10.i             ; 3 uses
  %i.as = add i8 %i.ai, -13
  %spec.select.i.i.i = icmp ult i8 %i.as, -12
  %or.cond35.not39.i = select i1 %i.aq, i1 true, i1 %spec.select.i.i.i, !prof !359
  %.not8.i.i = icmp eq i8 %i.ar, 0
  %or.cond36.i = select i1 %or.cond35.not39.i, i1 true, i1 %.not8.i.i, !prof !360
  br i1 %or.cond36.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, label %bb.j, !prof !360

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i8 %i.ai, 2
  %i.at = and i16 %i.z, 3
  %i.au = icmp eq i16 %i.at, 0
  %or.cond.i.i = and i1 %i.au, %.not.i.i.i
  br i1 %or.cond.i.i, label %bb.k, label %.thread.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.av = urem i16 %i.z, 100
  %.not.i.i.i.i = icmp ne i16 %i.av, 0
  %i.aw = urem i16 %i.z, 400
  %i.ax = icmp eq i16 %i.aw, 0
  %or.cond.i.i.i = or i1 %.not.i.i.i.i, %i.ax
  br i1 %or.cond.i.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.k, %bb.j
  %i.ay = zext nneg i8 %i.ai to i64
  %i.az = add nuw nsw i64 %i.ay, 4294967295
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !66
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i: ; preds = %.thread.i.i.i, %bb.k
  %.sroa.03.0.i.i.i = phi i8 [ %i.bc, %.thread.i.i.i ], [ 29, %bb.k ]
  %.not42.i = icmp ult i8 %.sroa.03.0.i.i.i, %i.ar
  br i1 %.not42.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, label %bb.l, !prof !361

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i
  %i.bd = zext nneg i16 %i.z to i32
  %i.be = icmp samesign ult i8 %i.ai, 3
  %.neg.i.i.i = sext i1 %i.be to i32
  %i.bf = add nsw i32 %.neg.i.i.i, %i.bd          ; 4 uses
  %i.bg = zext nneg i8 %i.ai to i32
  %i.bh = zext i8 %i.ar to i32
  %i.bi = add nsw i32 %i.bf, 65137
  %i.bj = icmp slt i32 %i.bf, 0
  %i.bk = select i1 %i.bj, i32 %i.bi, i32 %i.bf
  %.lhs.trunc.i = trunc i32 %i.bk to i16
  %i.bl = sdiv i16 %.lhs.trunc.i, 400
  %.sext.i = sext i16 %i.bl to i32                ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %.sext.i, -400
  %i.bm = add nsw i32 %.neg15.i.i.i, %i.bf        ; 3 uses
  %i.bn = icmp samesign ugt i8 %i.ai, 2
  %.v.i.i.i = select i1 %i.bn, i32 -3, i32 9
  %i.bo = add nsw i32 %.v.i.i.i, %i.bg
  %i.bp = mul nsw i32 %i.bo, 153
  %i.bq = add nsw i32 %i.bp, 2
  %i.br = udiv i32 %i.bq, 5
  %i.bs = mul nsw i32 %i.bm, 365
  %i.bt = lshr i32 %i.bm, 2
  %i.bu = udiv i32 %i.bm, 100
  %i.bv = mul nsw i32 %.sext.i, 146097
  %i.bw = add nsw i32 %i.br, -719469
  %i.bx = add nsw i32 %i.bw, %i.bv
  %i.by = add nsw i32 %i.bx, %i.bt
  %i.bz = add nsw i32 %i.by, %i.bs
  %i.ca = sub nsw i32 %i.bz, %i.bu
  %i.cb = add nsw i32 %i.ca, %i.bh
  store i32 %i.cb, ptr %4, align 4, !tbaa !3
  br label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread

_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, %bb.g, %bb.e, %bb.d, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, %bb.i, %bb.c, %bb.f, %bb.b, %bb.h, %bb.l, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.l ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.i ], [ false, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.g ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %1) #28
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !350
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !433
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %3) #28
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(21) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal15StringConverterINS_10Date64TypeEvE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %3, 10
  br i1 %.not, label %bb.b, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, !prof !218

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !66
  %.not.i = icmp eq i8 %i.b, 45
  br i1 %.not.i, label %bb.c, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, !prof !218

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.d = load i8, ptr %i.c, align 1, !tbaa !66
  %.not7.i = icmp eq i8 %i.d, 45
  br i1 %.not7.i, label %bb.d, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, !prof !218

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %2, align 1, !tbaa !66
  %i.f = add i8 %i.e, -48                         ; 2 uses
  %i.g = icmp ult i8 %i.f, 10
  br i1 %i.g, label %bb.e, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, !prof !358

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !66
  %i.j = add i8 %i.i, -48                         ; 2 uses
  %i.k = icmp ult i8 %i.j, 10
  br i1 %i.k, label %bb.f, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, !prof !358

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !66
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %bb.g, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, !prof !358

bb.g:                                             ; preds = %bb.f
  %narrow.i = mul nuw nsw i8 %i.f, 10
  %narrow48.i = add nuw nsw i8 %i.j, %narrow.i
  %i.p = zext nneg i8 %narrow48.i to i16
  %i.q = mul nuw nsw i16 %i.p, 10
  %i.r = zext nneg i8 %i.n to i16
  %i.s = add nuw nsw i16 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !66
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i16 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext nneg i8 %i.v to i16
  %i.z = add nuw nsw i16 %i.w, %i.y               ; 4 uses
  br i1 %i.x, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i:  ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !66
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = icmp ult i8 %i.ac, 10
  br i1 %i.ad, label %bb.h, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, !prof !358

bb.h:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !66
  %i.ag = add i8 %i.af, -48                       ; 2 uses
  %narrow.i8.i = mul nuw nsw i8 %i.ac, 10
  %i.ah = icmp ult i8 %i.ag, 10
  %i.ai = add i8 %i.ag, %narrow.i8.i              ; 6 uses
  br i1 %i.ah, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i:  ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !66
  %i.al = add i8 %i.ak, -48                       ; 2 uses
  %i.am = icmp ult i8 %i.al, 10
  br i1 %i.am, label %bb.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, !prof !358

bb.i:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !66
  %i.ap = add i8 %i.ao, -48                       ; 2 uses
  %narrow.i10.i = mul nuw nsw i8 %i.al, 10
  %i.aq = icmp ugt i8 %i.ap, 9
  %i.ar = add i8 %i.ap, %narrow.i10.i             ; 3 uses
  %i.as = add i8 %i.ai, -13
  %spec.select.i.i.i = icmp ult i8 %i.as, -12
  %or.cond34.not38.i = select i1 %i.aq, i1 true, i1 %spec.select.i.i.i, !prof !359
  %.not8.i.i = icmp eq i8 %i.ar, 0
  %or.cond35.i = select i1 %or.cond34.not38.i, i1 true, i1 %.not8.i.i, !prof !360
  br i1 %or.cond35.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, label %bb.j, !prof !360

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i8 %i.ai, 2
  %i.at = and i16 %i.z, 3
  %i.au = icmp eq i16 %i.at, 0
  %or.cond.i.i = and i1 %i.au, %.not.i.i.i
  br i1 %or.cond.i.i, label %bb.k, label %.thread.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.av = urem i16 %i.z, 100
  %.not.i.i.i.i = icmp ne i16 %i.av, 0
  %i.aw = urem i16 %i.z, 400
  %i.ax = icmp eq i16 %i.aw, 0
  %or.cond.i.i.i = or i1 %.not.i.i.i.i, %i.ax
  br i1 %or.cond.i.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.k, %bb.j
  %i.ay = zext nneg i8 %i.ai to i64
  %i.az = add nuw nsw i64 %i.ay, 4294967295
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !66
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i: ; preds = %.thread.i.i.i, %bb.k
  %.sroa.03.0.i.i.i = phi i8 [ %i.bc, %.thread.i.i.i ], [ 29, %bb.k ]
  %.not41.i = icmp ult i8 %.sroa.03.0.i.i.i, %i.ar
  br i1 %.not41.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, label %bb.l, !prof !361

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i
  %i.bd = zext nneg i16 %i.z to i32
  %i.be = icmp samesign ult i8 %i.ai, 3
  %.neg.i.i.i = sext i1 %i.be to i32
  %i.bf = add nsw i32 %.neg.i.i.i, %i.bd          ; 4 uses
  %i.bg = zext nneg i8 %i.ai to i32
  %i.bh = zext i8 %i.ar to i32
  %i.bi = add nsw i32 %i.bf, 65137
  %i.bj = icmp slt i32 %i.bf, 0
  %i.bk = select i1 %i.bj, i32 %i.bi, i32 %i.bf
  %.lhs.trunc.i = trunc i32 %i.bk to i16
  %i.bl = sdiv i16 %.lhs.trunc.i, 400
  %.sext.i = sext i16 %i.bl to i32                ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %.sext.i, -400
  %i.bm = add nsw i32 %.neg15.i.i.i, %i.bf        ; 3 uses
  %i.bn = icmp samesign ugt i8 %i.ai, 2
  %.v.i.i.i = select i1 %i.bn, i32 -3, i32 9
  %i.bo = add nsw i32 %.v.i.i.i, %i.bg
  %i.bp = mul nsw i32 %i.bo, 153
  %i.bq = add nsw i32 %i.bp, 2
  %i.br = udiv i32 %i.bq, 5
  %i.bs = mul nsw i32 %i.bm, 365
  %i.bt = lshr i32 %i.bm, 2
  %i.bu = udiv i32 %i.bm, 100
  %i.bv = mul nsw i32 %.sext.i, 146097
  %i.bw = add nsw i32 %i.br, -719469
  %i.bx = add nsw i32 %i.bw, %i.bv
  %i.by = add nsw i32 %i.bx, %i.bt
  %i.bz = add nsw i32 %i.by, %i.bs
  %i.ca = sub nsw i32 %i.bz, %i.bu
  %i.cb = add nsw i32 %i.ca, %i.bh
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.cc, 86400000
  store i64 %i.cd, ptr %4, align 8, !tbaa !350
  br label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread

_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, %bb.g, %bb.e, %bb.d, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, %bb.i, %bb.c, %bb.f, %bb.b, %bb.h, %bb.l, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.l ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.i ], [ false, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.g ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %1) #28
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !350
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !433
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %3) #28
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(21) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Date64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(112) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %1) #28
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !350
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !433
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %3) #28
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(21) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13TimestampTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPi(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !6936 ; 3 uses
  %i.e = icmp eq i64 %3, 5
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66
  %.not.i = icmp eq i8 %i.g, 58
  br i1 %.not.i, label %bb.c, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !218

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %2, align 1, !tbaa !66
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %i.j = icmp ult i8 %i.i, 10
  br i1 %i.j, label %bb.d, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !358

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %narrow.i.i = mul nuw nsw i8 %i.i, 10
  %i.n = icmp ult i8 %i.m, 10
  %i.o = add i8 %i.m, %narrow.i.i                 ; 2 uses
  br i1 %i.n, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i:  ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !66
  %i.r = add i8 %i.q, -48                         ; 2 uses
  %i.s = icmp ult i8 %i.r, 10
  br i1 %i.s, label %bb.e, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !358

bb.e:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !66
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %narrow.i10.i = mul nuw nsw i8 %i.r, 10
  %i.w = icmp ult i8 %i.v, 10
  %i.x = add i8 %i.v, %narrow.i10.i               ; 2 uses
  br i1 %i.w, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i: ; preds = %bb.e
  %i.y = icmp ugt i8 %i.o, 23
  %i.z = icmp ugt i8 %i.x, 59
  %or.cond8.i = select i1 %i.y, i1 true, i1 %i.z, !prof !367
  br i1 %or.cond8.i, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, label %bb.f, !prof !368

bb.f:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i
  %i.aa = zext nneg i8 %i.o to i64
  %i.ab = zext nneg i8 %i.x to i64
  %i.ac = mul nuw nsw i64 %i.aa, 60
  %i.ad = add nuw nsw i64 %i.ac, %i.ab            ; 4 uses
  %i.ae = mul nuw nsw i64 %i.ad, 60
  switch i32 %i.d, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.af = mul nuw nsw i64 %i.ad, 60000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ag = mul nuw nsw i64 %i.ad, 60000000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i: ; preds = %bb.f
  %i.ah = mul nuw nsw i64 %i.ad, 60000000000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i: ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i, %bb.g, %bb.h, %bb.f
  %.pn25.i.i8.i.i = phi i64 [ %i.af, %bb.g ], [ %i.ah, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ], [ %i.ag, %bb.h ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ai = trunc i64 %.pn25.i.i8.i.i to i32
  store i32 %i.ai, ptr %4, align 4, !tbaa !3
  %i.aj = icmp samesign ult i64 %.pn25.i.i8.i.i, 2147483648
  br label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit

bb.i:                                             ; preds = %bb.a
  %i.ak = icmp ult i64 %3, 8
  br i1 %i.ak, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, label %bb.j, !prof !209

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !66
  %.not.i14 = icmp eq i8 %i.am, 58
  br i1 %.not.i14, label %bb.k, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !218

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !66
  %.not7.i = icmp eq i8 %i.ao, 58
  br i1 %.not7.i, label %bb.l, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !218

bb.l:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %2, align 1, !tbaa !66
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = icmp ult i8 %i.aq, 10
  br i1 %i.ar, label %bb.m, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !358

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !66
  %i.au = add i8 %i.at, -48                       ; 2 uses
  %narrow.i.i16 = mul nuw nsw i8 %i.aq, 10
  %i.av = icmp ult i8 %i.au, 10
  %i.aw = add i8 %i.au, %narrow.i.i16             ; 2 uses
  br i1 %i.av, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i17, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i17: ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !66
  %i.az = add i8 %i.ay, -48                       ; 2 uses
  %i.ba = icmp ult i8 %i.az, 10
  br i1 %i.ba, label %bb.n, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !358

bb.n:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !66
  %i.bd = add i8 %i.bc, -48                       ; 2 uses
  %narrow.i15.i = mul nuw nsw i8 %i.az, 10
  %i.be = icmp ult i8 %i.bd, 10
  %i.bf = add i8 %i.bd, %narrow.i15.i             ; 2 uses
  br i1 %i.be, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !66
  %i.bi = add i8 %i.bh, -48                       ; 2 uses
  %i.bj = icmp ult i8 %i.bi, 10
  br i1 %i.bj, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !66
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %narrow.i18.i = mul nuw nsw i8 %i.bi, 10
  %i.bn = icmp ugt i8 %i.bm, 9
  %i.bo = add i8 %i.bm, %narrow.i18.i             ; 2 uses
  %i.bp = icmp ugt i8 %i.aw, 23
  %or.cond.i = select i1 %i.bn, i1 true, i1 %i.bp, !prof !369
  %i.bq = icmp ugt i8 %i.bf, 59
  %or.cond11.i = select i1 %or.cond.i, i1 true, i1 %i.bq, !prof !367
  %i.br = icmp ugt i8 %i.bo, 59
  %or.cond13.i = select i1 %or.cond11.i, i1 true, i1 %i.br, !prof !370
  br i1 %or.cond13.i, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, label %bb.o, !prof !368

bb.o:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i
  %i.bs = zext nneg i8 %i.aw to i64
  %i.bt = zext nneg i8 %i.bf to i64
  %i.bu = mul nuw nsw i64 %i.bs, 60
  %i.bv = add nuw nsw i64 %i.bu, %i.bt
  %i.bw = zext nneg i8 %i.bo to i64
  %i.bx = mul nuw nsw i64 %i.bv, 60
  %i.by = add nuw nsw i64 %i.bx, %i.bw            ; 3 uses
  switch i32 %i.d, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit22.thread [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i21
    i32 1, label %bb.p
    i32 2, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit22
  ]

bb.p:                                             ; preds = %bb.o
  %i.bz = mul nuw nsw i64 %i.by, 1000
  br label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit22.thread

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i21: ; preds = %bb.o
  br label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit22

_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit22.thread: ; preds = %bb.p, %bb.o
  %.pn25.i.i8.i.i19.ph = phi i64 [ %i.by, %bb.o ], [ %i.bz, %bb.p ]
  %i.ca = trunc nuw nsw i64 %.pn25.i.i8.i.i19.ph to i32
  store i32 %i.ca, ptr %4, align 4, !tbaa !3
  br label %bb.q

_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit22: ; preds = %bb.o, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i21
  %.sink = phi i64 [ 1000000000, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i21 ], [ 1000000, %bb.o ]
  %i.cb = mul nuw nsw i64 %i.by, %.sink           ; 2 uses
  %i.cc = trunc i64 %i.cb to i32
  store i32 %i.cc, ptr %4, align 4, !tbaa !3
  %i.cd = icmp samesign ult i64 %i.cb, 2147483648
  br i1 %i.cd, label %bb.q, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !300

bb.q:                                             ; preds = %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit22.thread, %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit22
  %i.ce = icmp eq i64 %3, 8
  br i1 %i.ce, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !66
  %.not = icmp eq i8 %i.cg, 46
  br i1 %.not, label %bb.s, label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit, !prof !218

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ci = add i64 %3, -9                          ; 6 uses
  switch i32 %i.d, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread [
    i32 1, label %bb.t
    i32 2, label %bb.u
    i32 3, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.cj = icmp ugt i64 %i.ci, 3
  br i1 %i.cj, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, label %bb.w, !prof !209

bb.u:                                             ; preds = %bb.s
  %i.ck = icmp ugt i64 %i.ci, 6
  br i1 %i.ck, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, label %bb.w, !prof !209

bb.v:                                             ; preds = %bb.s
  %i.cl = icmp ugt i64 %i.ci, 9
  br i1 %i.cl, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, label %bb.w, !prof !209

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.pn.i = phi i64 [ 3, %bb.t ], [ 6, %bb.u ], [ 9, %bb.v ] ; 2 uses
  %i.cm = icmp eq i64 %.pn.i, %i.ci
  br i1 %i.cm, label %bb.x, label %bb.y, !prof !218

bb.x:                                             ; preds = %bb.w
  %i.cn = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.ch, i64 noundef range(i64 0, -9) %i.ci, ptr noundef nonnull %i.b)
  br i1 %i.cn, label %._crit_edge, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, !prof !300

._crit_edge:                                      ; preds = %bb.x
  %.pre = load i32, ptr %i.b, align 4, !tbaa !3
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.co = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.ch, i64 noundef range(i64 0, -9) %i.ci, ptr noundef nonnull %i.a)
  br i1 %i.co, label %bb.z, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit, !prof !218

bb.z:                                             ; preds = %bb.y
  %reass.sub = sub i64 %.pn.i, %3                 ; 2 uses
  %i.cp = icmp ugt i64 %reass.sub, -9
  br i1 %i.cp, label %switch.lookup, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread37

switch.lookup:                                    ; preds = %bb.z
  %i.cq = getelementptr [4 x i8], ptr @switch.table._ZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPl, i64 %reass.sub
  %switch.gep = getelementptr i8, ptr %i.cq, i64 32
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !3
  %i.cs = mul i32 %i.cr, %switch.load
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread37

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread37: ; preds = %bb.z, %switch.lookup
  %i.ct = phi i32 [ 0, %bb.z ], [ %i.cs, %switch.lookup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.aa

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread

bb.aa:                                            ; preds = %._crit_edge, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread37
  %i.cu = phi i32 [ %.pre, %._crit_edge ], [ %i.ct, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread37 ]
  %i.cv = load i32, ptr %4, align 4, !tbaa !3
  %i.cw = add i32 %i.cv, %i.cu
  store i32 %i.cw, ptr %4, align 4, !tbaa !3
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread: ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit, %bb.x, %bb.aa
  %.1.i34 = phi i1 [ false, %bb.x ], [ false, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit ], [ true, %bb.aa ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit

_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i, %bb.n, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i17, %bb.l, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i, %bb.m, %bb.k, %bb.j, %bb.e, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, %bb.c, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i, %bb.d, %bb.b, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i, %bb.r, %bb.q, %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit22, %bb.i, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread
  %.1 = phi i1 [ %.1.i34, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread ], [ false, %bb.r ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i ], [ false, %bb.i ], [ false, %bb.e ], [ false, %_ZZN5arrow8internal15StringConverterINS_10Time32TypeEvE7ConvertERKS2_PKcmPiENKUlS8_E_clES8_.exit22 ], [ true, %bb.q ], [ %i.aj, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i ], [ false, %bb.l ], [ false, %bb.n ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i17 ], [ false, %bb.b ], [ false, %bb.d ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i ], [ false, %bb.c ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.m ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(76) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %1) #28
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !350
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !433
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %3) #28
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(21) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(76) %4)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.f ], [ %i.n, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !6936 ; 3 uses
  %i.e = icmp eq i64 %3, 5
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66
  %.not.i = icmp eq i8 %i.g, 58
  br i1 %.not.i, label %bb.c, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !218

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %2, align 1, !tbaa !66
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %i.j = icmp ult i8 %i.i, 10
  br i1 %i.j, label %bb.d, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !358

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %narrow.i.i = mul nuw nsw i8 %i.i, 10
  %i.n = icmp ult i8 %i.m, 10
  %i.o = add i8 %i.m, %narrow.i.i                 ; 2 uses
  br i1 %i.n, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i:  ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !66
  %i.r = add i8 %i.q, -48                         ; 2 uses
  %i.s = icmp ult i8 %i.r, 10
  br i1 %i.s, label %bb.e, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !358

bb.e:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !66
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %narrow.i10.i = mul nuw nsw i8 %i.r, 10
  %i.w = icmp ult i8 %i.v, 10
  %i.x = add i8 %i.v, %narrow.i10.i               ; 2 uses
  br i1 %i.w, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i: ; preds = %bb.e
  %i.y = icmp ugt i8 %i.o, 23
  %i.z = icmp ugt i8 %i.x, 59
  %or.cond8.i = select i1 %i.y, i1 true, i1 %i.z, !prof !367
  br i1 %or.cond8.i, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, label %bb.f, !prof !368

bb.f:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i
  %i.aa = zext nneg i8 %i.o to i64
  %i.ab = zext nneg i8 %i.x to i64
  %i.ac = mul nuw nsw i64 %i.aa, 60
  %i.ad = add nuw nsw i64 %i.ac, %i.ab            ; 4 uses
  %i.ae = mul nuw nsw i64 %i.ad, 60
  switch i32 %i.d, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.af = mul nuw nsw i64 %i.ad, 60000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ag = mul nuw nsw i64 %i.ad, 60000000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i: ; preds = %bb.f
  %i.ah = mul nuw nsw i64 %i.ad, 60000000000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i: ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i, %bb.g, %bb.h, %bb.f
  %.pn25.i.i8.i.i = phi i64 [ %i.af, %bb.g ], [ %i.ah, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ], [ %i.ag, %bb.h ], [ %i.ae, %bb.f ]
  store i64 %.pn25.i.i8.i.i, ptr %4, align 8, !tbaa !350
  br label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit

bb.i:                                             ; preds = %bb.a
  %i.ai = icmp ult i64 %3, 8
  br i1 %i.ai, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, label %bb.j, !prof !209

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !66
  %.not.i13 = icmp eq i8 %i.ak, 58
  br i1 %.not.i13, label %bb.k, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !218

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.am = load i8, ptr %i.al, align 1, !tbaa !66
  %.not7.i = icmp eq i8 %i.am, 58
  br i1 %.not7.i, label %bb.l, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !218

bb.l:                                             ; preds = %bb.k
  %i.an = load i8, ptr %2, align 1, !tbaa !66
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 10
  br i1 %i.ap, label %bb.m, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !358

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !66
  %i.as = add i8 %i.ar, -48                       ; 2 uses
  %narrow.i.i15 = mul nuw nsw i8 %i.ao, 10
  %i.at = icmp ult i8 %i.as, 10
  %i.au = add i8 %i.as, %narrow.i.i15             ; 2 uses
  br i1 %i.at, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i16, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i16: ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !66
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = icmp ult i8 %i.ax, 10
  br i1 %i.ay, label %bb.n, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !358

bb.n:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !66
  %i.bb = add i8 %i.ba, -48                       ; 2 uses
  %narrow.i15.i = mul nuw nsw i8 %i.ax, 10
  %i.bc = icmp ult i8 %i.bb, 10
  %i.bd = add i8 %i.bb, %narrow.i15.i             ; 2 uses
  br i1 %i.bc, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i: ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !66
  %i.bg = add i8 %i.bf, -48                       ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 10
  br i1 %i.bh, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !66
  %i.bk = add i8 %i.bj, -48                       ; 2 uses
  %narrow.i18.i = mul nuw nsw i8 %i.bg, 10
  %i.bl = icmp ugt i8 %i.bk, 9
  %i.bm = add i8 %i.bk, %narrow.i18.i             ; 2 uses
  %i.bn = icmp ugt i8 %i.au, 23
  %or.cond.i = select i1 %i.bl, i1 true, i1 %i.bn, !prof !369
  %i.bo = icmp ugt i8 %i.bd, 59
  %or.cond11.i = select i1 %or.cond.i, i1 true, i1 %i.bo, !prof !367
  %i.bp = icmp ugt i8 %i.bm, 59
  %or.cond13.i = select i1 %or.cond11.i, i1 true, i1 %i.bp, !prof !370
  br i1 %or.cond13.i, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, label %bb.o, !prof !368

bb.o:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i
  %i.bq = zext nneg i8 %i.au to i64
  %i.br = zext nneg i8 %i.bd to i64
  %i.bs = mul nuw nsw i64 %i.bq, 60
  %i.bt = add nuw nsw i64 %i.bs, %i.br
  %i.bu = zext nneg i8 %i.bm to i64
  %i.bv = mul nuw nsw i64 %i.bt, 60
  %i.bw = add nuw nsw i64 %i.bv, %i.bu            ; 4 uses
  switch i32 %i.d, label %bb.r [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i20
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bx = mul nuw nsw i64 %i.bw, 1000
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.by = mul nuw nsw i64 %i.bw, 1000000
  br label %bb.r

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i20: ; preds = %bb.o
  %i.bz = mul nuw nsw i64 %i.bw, 1000000000
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i20, %bb.p, %bb.q, %bb.o
  %.pn25.i.i8.i.i18 = phi i64 [ %i.bx, %bb.p ], [ %i.bz, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i20 ], [ %i.by, %bb.q ], [ %i.bw, %bb.o ]
  store i64 %.pn25.i.i8.i.i18, ptr %4, align 8, !tbaa !350
  %i.ca = icmp eq i64 %3, 8
  br i1 %i.ca, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !66
  %.not = icmp eq i8 %i.cc, 46
  br i1 %.not, label %bb.t, label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit, !prof !218

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ce = add i64 %3, -9                          ; 6 uses
  switch i32 %i.d, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.cf = icmp ugt i64 %i.ce, 3
  br i1 %i.cf, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, label %bb.x, !prof !209

bb.v:                                             ; preds = %bb.t
  %i.cg = icmp ugt i64 %i.ce, 6
  br i1 %i.cg, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, label %bb.x, !prof !209

bb.w:                                             ; preds = %bb.t
  %i.ch = icmp ugt i64 %i.ce, 9
  br i1 %i.ch, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, label %bb.x, !prof !209

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.pn.i = phi i64 [ 3, %bb.u ], [ 6, %bb.v ], [ 9, %bb.w ] ; 2 uses
  %i.ci = icmp eq i64 %.pn.i, %i.ce
  br i1 %i.ci, label %bb.y, label %bb.z, !prof !218

bb.y:                                             ; preds = %bb.x
  %i.cj = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.cd, i64 noundef range(i64 0, -9) %i.ce, ptr noundef nonnull %i.b)
  br i1 %i.cj, label %._crit_edge, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread, !prof !300

._crit_edge:                                      ; preds = %bb.y
  %.pre = load i32, ptr %i.b, align 4, !tbaa !3
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.ck = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.cd, i64 noundef range(i64 0, -9) %i.ce, ptr noundef nonnull %i.a)
  br i1 %i.ck, label %bb.aa, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit, !prof !218

bb.aa:                                            ; preds = %bb.z
  %reass.sub = sub i64 %.pn.i, %3                 ; 2 uses
  %i.cl = icmp ugt i64 %reass.sub, -9
  br i1 %i.cl, label %switch.lookup, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread36

switch.lookup:                                    ; preds = %bb.aa
  %i.cm = getelementptr [4 x i8], ptr @switch.table._ZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPl, i64 %reass.sub
  %switch.gep = getelementptr i8, ptr %i.cm, i64 32
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !3
  %i.co = mul i32 %i.cn, %switch.load
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread36

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread36: ; preds = %bb.aa, %switch.lookup
  %i.cp = phi i32 [ 0, %bb.aa ], [ %i.co, %switch.lookup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ab

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread

bb.ab:                                            ; preds = %._crit_edge, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread36
  %i.cq = phi i32 [ %.pre, %._crit_edge ], [ %i.cp, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread36 ]
  %i.cr = zext i32 %i.cq to i64
  %i.cs = load i64, ptr %4, align 8, !tbaa !350
  %i.ct = add nsw i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %4, align 8, !tbaa !350
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread: ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit, %bb.y, %bb.ab
  %.1.i33 = phi i1 [ false, %bb.y ], [ false, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit ], [ true, %bb.ab ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit

_ZZN5arrow8internal15StringConverterINS_10Time64TypeEvE7ConvertERKS2_PKcmPlENKUlS8_E_clES8_.exit: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i, %bb.n, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i16, %bb.l, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i, %bb.m, %bb.k, %bb.j, %bb.e, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, %bb.c, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i, %bb.d, %bb.b, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i, %bb.s, %bb.r, %bb.i, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread
  %.1 = phi i1 [ %.1.i33, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread ], [ false, %bb.s ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i16 ], [ false, %bb.i ], [ false, %bb.e ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i ], [ true, %bb.r ], [ true, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.b ], [ false, %bb.d ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i ], [ false, %bb.c ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.m ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(76) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %1) #28
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !350
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !433
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %3) #28
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(21) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !721, !nonnull !83, !align !731
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(76) %4)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISE_EEDaSN_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSN_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clIS9_EEDaSN_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10Time64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISB_EEDaSN_.exit
end_hunk_2
