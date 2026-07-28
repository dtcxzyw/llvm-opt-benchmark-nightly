inline.NumInlined: 43590
inline.NumDeleted: 6060
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5arrow15TimestampScalar11FromISO8601ESt17basic_string_viewIcSt11char_traitsIcEENS_8TimeUnit4typeE:bb.a
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
  %narrow47.i = add nuw nsw i8 %i.m, %narrow.i
  %i.s = zext nneg i8 %narrow47.i to i16
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
  %5 = add nuw nsw i64 %i.bb, 4294967295
  %6 = and i64 %5, 4294967295
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %6
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !66
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i: ; preds = %.thread.i.i.i, %bb.k
  %.sroa.03.0.i.i.i = phi i8 [ %i.bd, %.thread.i.i.i ], [ 29, %bb.k ]
  %.not41.i = icmp ult i8 %.sroa.03.0.i.i.i, %i.au
  br i1 %.not41.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, label %bb.l, !prof !361

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i
  %i.be = zext nneg i16 %i.ac to i32
  %i.bf = icmp samesign ult i8 %i.al, 3
  %.neg.i.i.i = sext i1 %i.bf to i32
  %i.bg = add nsw i32 %.neg.i.i.i, %i.be          ; 4 uses
  %i.bh = zext nneg i8 %i.al to i32
  %i.bi = zext i8 %i.au to i32
  %i.bj = add nsw i32 %i.bg, 65137
  %i.bk = icmp slt i32 %i.bg, 0
  %i.bl = select i1 %i.bk, i32 %i.bj, i32 %i.bg
  %.lhs.trunc.i = trunc i32 %i.bl to i16
  %i.bm = sdiv i16 %.lhs.trunc.i, 400
  %.sext.i = sext i16 %i.bm to i32                ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %.sext.i, -400
  %i.bn = add nsw i32 %.neg15.i.i.i, %i.bg        ; 3 uses
  %i.bo = icmp samesign ugt i8 %i.al, 2
  %.v.i.i.i = select i1 %i.bo, i32 -3, i32 9
  %i.bp = add nsw i32 %.v.i.i.i, %i.bh
  %i.bq = mul nsw i32 %i.bp, 153
  %i.br = add nsw i32 %i.bq, 2
  %i.bs = udiv i32 %i.br, 5
  %i.bt = mul nsw i32 %i.bn, 365
  %i.bu = lshr i32 %i.bn, 2
  %i.bv = udiv i32 %i.bn, 100
  %i.bw = mul nsw i32 %.sext.i, 146097
  %i.bx = add nsw i32 %i.bs, -719469
  %i.by = add nsw i32 %i.bx, %i.bw
  %i.bz = add nsw i32 %i.by, %i.bu
  %i.ca = add nsw i32 %i.bz, %i.bt
  %i.cb = sub nsw i32 %i.ca, %i.bv
  %i.cc = add nsw i32 %i.cb, %i.bi
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = mul nsw i64 %i.cd, 86400                ; 4 uses
  %i.cf = icmp eq i64 %1, 10
  br i1 %i.cf, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  switch i32 %2, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.cg = mul nsw i64 %i.cd, 86400000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i

bb.o:                                             ; preds = %bb.m
  %i.ch = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ce, i64 1000000) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  %i.cj = extractvalue { i64, i1 } %i.ch, 0
  br i1 %i.ci, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i, !prof !362

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i: ; preds = %bb.m
  %i.ck = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ce, i64 1000000000) ; 2 uses
  %i.cl = extractvalue { i64, i1 } %i.ck, 1
  %i.cm = extractvalue { i64, i1 } %i.ck, 0
  br i1 %i.cl, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i, !prof !362

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i: ; preds = %bb.n, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i, %bb.o, %bb.m
  %.pn25.i.i8.i = phi i64 [ %i.cg, %bb.n ], [ %i.cm, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i ], [ %i.cj, %bb.o ], [ %i.ce, %bb.m ]
  store i64 %.pn25.i.i8.i, ptr %3, align 8, !tbaa !350
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit

bb.p:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !66
  switch i8 %i.co, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit [
    i8 32, label %bb.q
    i8 84, label %bb.q
  ], !prof !363

bb.q:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 0, ptr %4, align 8
  %i.cp = getelementptr i8, ptr %0, i64 %1
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !66  ; 3 uses
  %i.cs = icmp eq i8 %i.cr, 90
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = add i64 %1, -1
  br label %bb.ai

bb.s:                                             ; preds = %bb.q
  %i.cu = add i64 %1, -3                          ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !66  ; 4 uses
  switch i8 %i.cw, label %bb.x [
    i8 43, label %bb.t
    i8 45, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !66
  %i.cz = add i8 %i.cy, -48                       ; 2 uses
  %i.da = icmp ult i8 %i.cz, 10
  br i1 %i.da, label %bb.u, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

bb.u:                                             ; preds = %bb.t
  %i.db = add i8 %i.cr, -48                       ; 2 uses
  %narrow.i.i = mul nuw nsw i8 %i.cz, 10
  %i.dc = icmp ugt i8 %i.db, 9
  %i.dd = add i8 %i.db, %narrow.i.i               ; 2 uses
  %i.de = icmp ugt i8 %i.dd, 23
  %or.cond.i = select i1 %i.dc, i1 true, i1 %i.de, !prof !364
  br i1 %or.cond.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, label %bb.v, !prof !364

bb.v:                                             ; preds = %bb.u
  %i.df = zext nneg i8 %i.dd to i64
  %i.dg = mul nuw nsw i64 %i.df, 3600             ; 2 uses
  store i64 %i.dg, ptr %4, align 8, !tbaa !350
  %i.dh = icmp eq i8 %i.cw, 43
  br i1 %i.dh, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.di = sub nsw i64 0, %i.dg
  store i64 %i.di, ptr %4, align 8, !tbaa !365
  br label %bb.ai

bb.x:                                             ; preds = %bb.s
  %i.dj = add i64 %1, -5                          ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %i.dj ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !66  ; 2 uses
  switch i8 %i.dl, label %bb.ad [
    i8 43, label %bb.y
    i8 45, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !66
  %i.do = add i8 %i.dn, -48                       ; 2 uses
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %bb.z, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

bb.z:                                             ; preds = %bb.y
  %i.dq = add i8 %i.cw, -48                       ; 2 uses
  %narrow.i.i78 = mul nuw nsw i8 %i.do, 10
  %i.dr = icmp ult i8 %i.dq, 10
  %i.ds = add i8 %i.dq, %narrow.i.i78             ; 2 uses
  br i1 %i.dr, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79: ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !66
  %i.dv = add i8 %i.du, -48                       ; 2 uses
  %i.dw = icmp ult i8 %i.dv, 10
  br i1 %i.dw, label %bb.aa, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

bb.aa:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79
  %i.dx = add i8 %i.cr, -48                       ; 2 uses
  %narrow.i8.i80 = mul nuw nsw i8 %i.dv, 10
  %i.dy = icmp ult i8 %i.dx, 10
  %i.dz = add i8 %i.dx, %narrow.i8.i80            ; 2 uses
  br i1 %i.dy, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, !prof !358

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i: ; preds = %bb.aa
  %i.ea = icmp ugt i8 %i.ds, 23
  %i.eb = icmp ugt i8 %i.dz, 59
  %or.cond6.i = select i1 %i.ea, i1 true, i1 %i.eb, !prof !367
  br i1 %or.cond6.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit100, label %bb.ab, !prof !368

bb.ab:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i
  %i.ec = zext nneg i8 %i.ds to i64
  %i.ed = zext nneg i8 %i.dz to i64
  %i.ee = mul nuw nsw i64 %i.ec, 60
  %i.ef = add nuw nsw i64 %i.ee, %i.ed
  %i.eg = mul nuw nsw i64 %i.ef, 60               ; 2 uses
  store i64 %i.eg, ptr %4, align 8, !tbaa !350
  %i.eh = icmp eq i8 %i.dl, 43
  br i1 %i.eh, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.ei = sub nsw i64 0, %i.eg
  store i64 %i.ei, ptr %4, align 8, !tbaa !365
  br label %bb.ai

bb.ad:                                            ; preds = %bb.x
  %i.ej = add i64 %1, -6                          ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %i.ej ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !66  ; 2 uses
  switch i8 %i.el, label %bb.ai [
    i8 43, label %bb.ae
    i8 45, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.em = icmp eq i8 %i.cw, 58
  br i1 %i.em, label %bb.af, label %bb.ai
end_hunk_0
begin_hunk_1_@_ZN5arrow15ScalarParseImpl5VisitINS_10UInt32TypeEvEENS_6StatusERKT_:bb.a
bb.ay:                                            ; preds = %bb.av
  %i.ct = zext nneg i8 %i.cn to i32
  %i.cu = add nsw i32 %i.ct, -55
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i.i.7
  %i.cv = zext nneg i8 %i.co to i32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.pn.i.i.i.7 = phi i32 [ %i.cv, %bb.az ], [ %i.cu, %bb.ay ], [ %i.cs, %bb.ax ]
  %.1.i.i.i.7 = or i32 %.pn.i.i.i.7, %i.cl
  br label %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread4

_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread4: ; preds = %bb.ba, %bb.au, %bb.ao, %bb.ai, %bb.ac, %bb.w, %bb.q, %bb.k
  %.1.i.i.i.lcssa = phi i32 [ %.pn.i.i.i, %bb.k ], [ %.1.i.i.i.1, %bb.q ], [ %.1.i.i.i.2, %bb.w ], [ %.1.i.i.i.3, %bb.ac ], [ %.1.i.i.i.4, %bb.ai ], [ %.1.i.i.i.5, %bb.ao ], [ %.1.i.i.i.6, %bb.au ], [ %.1.i.i.i.7, %bb.ba ]
  store i32 %.1.i.i.i.lcssa, ptr %i.a, align 4, !tbaa !3
  br label %bb.bg

bb.bb:                                            ; preds = %bb.d, %bb.c, %bb.b
  %scevgep.i.i = getelementptr i8, ptr %i.d, i64 %i.e
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %.01722.i.i = phi i64 [ %i.e, %bb.bb ], [ %i.cy, %bb.bd ] ; 2 uses
  %.01821.i.i = phi ptr [ %i.d, %bb.bb ], [ %i.cz, %bb.bd ] ; 3 uses
  %i.cw = load i8, ptr %.01821.i.i, align 1, !tbaa !66
  %i.cx = icmp eq i8 %i.cw, 48
  br i1 %i.cx, label %bb.bd, label %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.cy = add i64 %.01722.i.i, -1                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.01821.i.i, i64 1
  %.not.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit, label %bb.bc, !llvm.loop !2069

_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit: ; preds = %bb.bc, %bb.bd
  %.018.lcssa.i.i = phi ptr [ %scevgep.i.i, %bb.bd ], [ %.01821.i.i, %bb.bc ]
  %.017.lcssa.i.i = phi i64 [ 0, %bb.bd ], [ %.01722.i.i, %bb.bc ]
  %i.da = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %.018.lcssa.i.i, i64 noundef %.017.lcssa.i.i, ptr noundef nonnull %i.a)
  br i1 %i.da, label %bb.bg, label %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread

_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread: ; preds = %bb.i, %bb.m, %bb.s, %bb.y, %bb.ae, %bb.ak, %bb.aq, %bb.aw, %bb.e, %bb.a, %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !2070
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10UInt32TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(16) @.str.75, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(21) @.str.76, ptr noundef nonnull align 8 dereferenceable(72) %2), !noalias !2070
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread
  %i.db = load ptr, ptr %3, align 8, !tbaa !62, !noalias !2070 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10UInt32TypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.be
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !66, !noalias !2070
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #29
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10UInt32TypeEEEES0_DpOT_.exit

bb.bf:                                            ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = load ptr, ptr %3, align 8, !tbaa !62, !noalias !2070 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.bf
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !66, !noalias !2070
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2070
  resume { ptr, i32 } %i.dg

_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10UInt32TypeEEEES0_DpOT_.exit: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2070
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread4, %_ZN5arrow8internal10ParseValueINS_10UInt32TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit
  call void @_ZN5arrow15ScalarParseImpl6FinishIRjEENS_6StatusEOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10UInt32TypeEEEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15ScalarParseImpl5VisitINS_9Int64TypeEvEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.arrow::internal::StringConverter.846", align 1 ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2036
  %i.e = load i64, ptr %i.b, align 8, !tbaa !2038
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.f = call noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.d, i64 noundef %i.e, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !2075
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_9Int64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(16) @.str.75, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(21) @.str.76, ptr noundef nonnull align 8 dereferenceable(72) %2), !noalias !2075
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %3, align 8, !tbaa !62, !noalias !2075 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_9Int64TypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !66, !noalias !2075
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_9Int64TypeEEEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %3, align 8, !tbaa !62, !noalias !2075 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !66, !noalias !2075
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2075
  resume { ptr, i32 } %i.l

_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_9Int64TypeEEEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2075
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @_ZN5arrow15ScalarParseImpl6FinishIRlEENS_6StatusEOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_9Int64TypeEEEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15ScalarParseImpl5VisitINS_10UInt64TypeEvEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2036 ; 5 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !2038 ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread, label %bb.b, !prof !209

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.e, 2
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.d, align 1, !tbaa !66
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66
  switch i8 %i.k, label %bb.k [
    i8 120, label %bb.e
    i8 88, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.m = add i64 %i.e, -3                         ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread, !prof !218

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.j
  %.03049.i.i.i = phi i64 [ %i.u, %bb.j ], [ 0, %bb.e ] ; 3 uses
  %.03148.i.i.i = phi i64 [ %.1.i.i.i, %bb.j ], [ 0, %bb.e ]
  %i.o = shl i64 %.03148.i.i.i, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.03049.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !66    ; 5 uses
  %i.r = add i8 %i.q, -48                         ; 2 uses
  %or.cond.i.i.i = icmp ult i8 %i.r, 10
  br i1 %or.cond.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.s = add i8 %i.q, -65
  %or.cond42.i.i.i = icmp ult i8 %i.s, 6
  br i1 %or.cond42.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %narrow40.i.i.i = add nuw nsw i8 %i.q, 9
  %4 = and i8 %narrow40.i.i.i, 31
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.t = add i8 %i.q, -97
  %or.cond43.i.i.i = icmp ult i8 %i.t, 6
  br i1 %or.cond43.i.i.i, label %bb.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread

bb.i:                                             ; preds = %bb.h
  %narrow.i.i.i = add nuw nsw i8 %i.q, 9
  %5 = and i8 %narrow.i.i.i, 31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %.lr.ph.i.i.i
  %.pn.in.i.i.i = phi i8 [ %5, %bb.i ], [ %4, %bb.g ], [ %i.r, %.lr.ph.i.i.i ]
  %.pn.i.i.i = zext nneg i8 %.pn.in.i.i.i to i64
  %.1.i.i.i = or i64 %i.o, %.pn.i.i.i             ; 2 uses
  %i.u = add nuw nsw i64 %.03049.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %.03049.i.i.i, %i.m
  br i1 %exitcond.not.i.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread4, label %.lr.ph.i.i.i, !llvm.loop !2080

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread4: ; preds = %bb.j
  store i64 %.1.i.i.i, ptr %i.a, align 8, !tbaa !350
  br label %bb.p

bb.k:                                             ; preds = %bb.d, %bb.c, %bb.b
  %scevgep.i.i = getelementptr i8, ptr %i.d, i64 %i.e
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.01722.i.i = phi i64 [ %i.e, %bb.k ], [ %i.x, %bb.m ] ; 2 uses
  %.01821.i.i = phi ptr [ %i.d, %bb.k ], [ %i.y, %bb.m ] ; 3 uses
  %i.v = load i8, ptr %.01821.i.i, align 1, !tbaa !66
  %i.w = icmp eq i8 %i.v, 48
  br i1 %i.w, label %bb.m, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit

bb.m:                                             ; preds = %bb.l
  %i.x = add i64 %.01722.i.i, -1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01821.i.i, i64 1
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit, label %bb.l, !llvm.loop !2081

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit: ; preds = %bb.l, %bb.m
  %.018.lcssa.i.i = phi ptr [ %scevgep.i.i, %bb.m ], [ %.01821.i.i, %bb.l ]
  %.017.lcssa.i.i = phi i64 [ 0, %bb.m ], [ %.01722.i.i, %bb.l ]
  %i.z = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i.i, i64 noundef %.017.lcssa.i.i, ptr noundef nonnull %i.a)
  br i1 %i.z, label %bb.p, label %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread

_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread: ; preds = %bb.h, %bb.e, %bb.a, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !2082
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10UInt64TypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(16) @.str.75, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(21) @.str.76, ptr noundef nonnull align 8 dereferenceable(72) %2), !noalias !2082
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread
  %i.aa = load ptr, ptr %3, align 8, !tbaa !62, !noalias !2082 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10UInt64TypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !66, !noalias !2082
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #29
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10UInt64TypeEEEES0_DpOT_.exit

bb.o:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %3, align 8, !tbaa !62, !noalias !2082 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.o
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !66, !noalias !2082
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2082
  resume { ptr, i32 } %i.af

_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10UInt64TypeEEEES0_DpOT_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2082
  br label %bb.q

bb.p:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit.thread4, %_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEEbRKT_PKcmPNS0_15StringConverterIS3_vE10value_typeE.exit
  call void @_ZN5arrow15ScalarParseImpl6FinishIRmEENS_6StatusEOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_10UInt64TypeEEEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15ScalarParseImpl5VisitINS_13HalfFloatTypeEvEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2036
  %i.d = load i64, ptr %i.a, align 8, !tbaa !2038
  %i.e = call noundef zeroext i1 @_ZN5arrow8internal13StringToFloatEPKcmcPNS_4util7Float16E(ptr noundef %i.c, i64 noundef %i.d, i8 noundef signext 46, ptr noundef nonnull %4)
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !2087
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13HalfFloatTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(16) @.str.75, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.76, ptr noundef nonnull align 8 dereferenceable(72) %2), !noalias !2087
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %3, align 8, !tbaa !62, !noalias !2087 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13HalfFloatTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !66, !noalias !2087
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13HalfFloatTypeEEEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %3, align 8, !tbaa !62, !noalias !2087 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !66, !noalias !2087
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2087
  resume { ptr, i32 } %i.k

_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13HalfFloatTypeEEEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2087
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @_ZN5arrow15ScalarParseImpl6FinishIRNS_4util7Float16EEENS_6StatusEOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 2 dereferenceable(2) %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_13HalfFloatTypeEEEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15ScalarParseImpl5VisitINS_9FloatTypeEvEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2036
  %i.e = load i64, ptr %i.b, align 8, !tbaa !2038
  %i.f = call noundef zeroext i1 @_ZN5arrow8internal13StringToFloatEPKcmcPf(ptr noundef %i.d, i64 noundef %i.e, i8 noundef signext 46, ptr noundef nonnull %i.a)
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !2092
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_9FloatTypeEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(16) @.str.75, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(21) @.str.76, ptr noundef nonnull align 8 dereferenceable(72) %2), !noalias !2092
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %3, align 8, !tbaa !62, !noalias !2092 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_9FloatTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !66, !noalias !2092
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_9FloatTypeEEEES0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %3, align 8, !tbaa !62, !noalias !2092 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !66, !noalias !2092
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2092
  resume { ptr, i32 } %i.l

_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_9FloatTypeEEEES0_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2092
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @_ZN5arrow15ScalarParseImpl6FinishIRfEENS_6StatusEOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5arrow6Status7InvalidIJRA16_KcRSt17basic_string_viewIcSt11char_traitsIcEERA21_S2_RKNS_9FloatTypeEEEES0_DpOT_.exit
end_hunk_1
begin_hunk_2_@_ZN5arrow15ScalarParseImpl6FinishIRlEENS_6StatusEOT_:bb.a

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4, !noalias !4799
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.g ], [ %i.z, %bb.h ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.i, label %thread-pre-split, !prof !209

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !noalias !4799
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i
  %.pr = load ptr, ptr %3, align 8, !tbaa !84
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split, %.noexc
  %i.ab = phi ptr [ %.pr, %thread-pre-split ], [ %i.g, %.noexc ] ; 2 uses
  %storemerge.i = phi ptr [ null, %thread-pre-split ], [ %i.f, %.noexc ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !84, !alias.scope !4799
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !218

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !201 ; 8 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i5, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.af, align 8, !tbaa !205
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !207
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #28, !inline_history !423
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #28, !inline_history !423
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i6 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i7

bb.p:                                             ; preds = %bb.n
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i7: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i8 = phi i32 [ %i.ai, %bb.o ], [ %i.as, %bb.p ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i8, 1
  br i1 %i.at, label %bb.q, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !209

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i7, %bb.m, %bb.k
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !84   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !300

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.j
  %i.au = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.ab, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !262, !range !82, !noundef !83
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.r
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !201 ; 8 uses
  %.not.i.i9 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i9, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.az, align 8, !tbaa !205
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !207
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #28, !inline_history !230
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !55
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #28, !inline_history !230
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.v ], [ %i.bm, %bb.w ]
  %i.bn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bn, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !209

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.y:                                             ; preds = %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZNO5arrow6ResultISt10shared_ptrINS_6ScalarEEE6statusEv.exit.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.z ], [ %i.bo, %bb.y ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !350
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.b, !prof !209

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %3, 2
  %i.d = load i8, ptr %2, align 1, !tbaa !66      ; 2 uses
  %i.e = icmp eq i8 %i.d, 48
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66
  switch i8 %i.g, label %.thread [
    i8 120, label %bb.d
    i8 88, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = add i64 %3, -3                           ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !218

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %.03049.i = phi i64 [ %i.q, %bb.i ], [ 0, %bb.d ] ; 3 uses
  %.03148.i = phi i64 [ %.1.i, %bb.i ], [ 0, %bb.d ]
  %i.k = shl i64 %.03148.i, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.03049.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !66    ; 5 uses
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.n, 10
  br i1 %or.cond.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = add i8 %i.m, -65
  %or.cond42.i = icmp ult i8 %i.o, 6
  br i1 %or.cond42.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %narrow40.i = add nuw nsw i8 %i.m, 9
  %5 = and i8 %narrow40.i, 31
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = add i8 %i.m, -97
  %or.cond43.i = icmp ult i8 %i.p, 6
  br i1 %or.cond43.i, label %bb.h, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !358

bb.h:                                             ; preds = %bb.g
  %narrow.i = add nuw nsw i8 %i.m, 9
  %6 = and i8 %narrow.i, 31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph.i
  %.pn.in.i = phi i8 [ %6, %bb.h ], [ %5, %bb.f ], [ %i.n, %.lr.ph.i ]
  %.pn.i = zext nneg i8 %.pn.in.i to i64
  %.1.i = or i64 %i.k, %.pn.i                     ; 2 uses
  %i.q = add nuw nsw i64 %.03049.i, 1
  %exitcond.not.i = icmp eq i64 %.03049.i, %i.i
  br i1 %exitcond.not.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, label %.lr.ph.i, !llvm.loop !2080

thread-pre-split:                                 ; preds = %bb.b
  %i.r = icmp eq i8 %i.d, 45
  br i1 %i.r, label %bb.j, label %.thread

bb.j:                                             ; preds = %thread-pre-split
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.t = add i64 %3, -1                           ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.c, %bb.j, %thread-pre-split
  %i.v = phi i1 [ true, %bb.j ], [ false, %thread-pre-split ], [ false, %bb.c ]
  %.024 = phi ptr [ %i.s, %bb.j ], [ %2, %thread-pre-split ], [ %2, %bb.c ] ; 2 uses
  %.023 = phi i64 [ %i.t, %bb.j ], [ %3, %thread-pre-split ], [ %3, %bb.c ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.024, i64 %.023
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.l
  %.133 = phi i64 [ %.023, %.thread ], [ %i.y, %bb.l ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.z, %bb.l ] ; 3 uses
  %i.w = load i8, ptr %.12532, align 1, !tbaa !66
  %i.x = icmp eq i8 %i.w, 48
  br i1 %i.x, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %.133, -1                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.12532, i64 1
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.critedge, label %bb.k, !llvm.loop !4809

.critedge:                                        ; preds = %bb.l, %bb.k
  %.125.lcssa = phi ptr [ %scevgep, %bb.l ], [ %.12532, %bb.k ]
  %.1.lcssa = phi i64 [ 0, %bb.l ], [ %.133, %bb.k ]
  %i.aa = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.aa, label %bb.m, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !218

bb.m:                                             ; preds = %.critedge
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !350 ; 4 uses
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp ugt i64 %i.ab, -9223372036854775808
  br i1 %i.ac, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.o, !prof !209

bb.o:                                             ; preds = %bb.n
  %i.ad = sub i64 0, %i.ab
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ae = icmp slt i64 %i.ab, 0
  br i1 %i.ae, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, !prof !209

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split: ; preds = %bb.i, %bb.o, %bb.p
  %storemerge.sink = phi i64 [ %i.ab, %bb.p ], [ %i.ad, %bb.o ], [ %.1.i, %bb.i ]
  store i64 %storemerge.sink, ptr %4, align 8, !tbaa !350
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread: ; preds = %bb.g, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, %bb.d, %bb.p, %bb.n, %.critedge, %bb.j, %bb.a
  %.022 = phi i1 [ false, %bb.j ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.p ], [ false, %.critedge ], [ true, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.n ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i1 %.022
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !66
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext nneg i8 %i.c to i64                 ; 2 uses
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not247 = icmp eq i64 %1, 1
  br i1 %.not247, label %bb.aq, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !66
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext nneg i8 %i.h to i64
  %i.l = add nuw nsw i64 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not248 = icmp eq i64 %1, 2
  br i1 %.not248, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !66
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i64 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext nneg i8 %i.o to i64
  %i.s = add nuw nsw i64 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %.not249 = icmp eq i64 %1, 3
  br i1 %.not249, label %bb.aq, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !66
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i64 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext nneg i8 %i.v to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not250 = icmp eq i64 %1, 4
  br i1 %.not250, label %bb.aq, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !66
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i64 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext nneg i8 %i.ac to i64
  %i.ag = add nuw nsw i64 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.not251 = icmp eq i64 %1, 5
  br i1 %.not251, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !66
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i64 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext nneg i8 %i.aj to i64
  %i.an = add nuw nsw i64 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %.not252 = icmp eq i64 %1, 6
  br i1 %.not252, label %bb.aq, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !66
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i64 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext nneg i8 %i.aq to i64
  %i.au = add nuw nsw i64 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %.not253 = icmp eq i64 %1, 7
  br i1 %.not253, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !66
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i64 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext nneg i8 %i.ax to i64
  %i.bb = add nuw nsw i64 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.not254 = icmp eq i64 %1, 8
  br i1 %.not254, label %bb.aq, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !66
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i64 %i.bb, 10
  %i.bg = icmp ult i8 %i.be, 10
  %i.bh = zext nneg i8 %i.be to i64
  %i.bi = add nuw nsw i64 %i.bf, %i.bh            ; 2 uses
  br i1 %i.bg, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %.not255 = icmp eq i64 %1, 9
  br i1 %.not255, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !66
end_hunk_2
begin_hunk_3_@_ZNSt12__shared_ptrIN5arrow21FixedSizeBinaryScalarELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_6BufferEES7_INS0_8DataTypeEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_:bb.a
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #28, !inline_history !1815
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !282
  br label %_ZNSt12__shared_ptrIN5arrow21FixedSizeBinaryScalarELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow21FixedSizeBinaryScalarELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow21FixedSizeBinaryScalarEJSt10shared_ptrINS0_6BufferEES2_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.9", align 16 ; 4 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !200
  store ptr null, ptr %i.b, align 8, !tbaa !201
  store <2 x ptr> %i.c, ptr %3, align 16, !tbaa !200
  store ptr null, ptr %1, align 8, !tbaa !202
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !200
  store ptr null, ptr %i.d, align 8, !tbaa !201
  store <2 x ptr> %i.e, ptr %4, align 16, !tbaa !200
  store ptr null, ptr %2, align 8, !tbaa !33
  invoke void @_ZN5arrow21FixedSizeBinaryScalarC1ESt10shared_ptrINS_6BufferEES1_INS_8DataTypeEEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201  ; 8 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !205
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !207
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28, !inline_history !230
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28, !inline_history !230
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !209

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !201  ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.x, align 8, !tbaa !205
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !207
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !219
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !219
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i5 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.m:                                             ; preds = %bb.k
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i7 = phi i32 [ %i.aa, %bb.l ], [ %i.ak, %bb.m ]
  %i.al = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.al, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !209

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_12DurationTypeEE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !350
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.b, !prof !209

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %3, 2
  %i.d = load i8, ptr %2, align 1, !tbaa !66      ; 2 uses
  %i.e = icmp eq i8 %i.d, 48
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66
  switch i8 %i.g, label %.thread [
    i8 120, label %bb.d
    i8 88, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = add i64 %3, -3                           ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !218

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %.03049.i = phi i64 [ %i.q, %bb.i ], [ 0, %bb.d ] ; 3 uses
  %.03148.i = phi i64 [ %.1.i, %bb.i ], [ 0, %bb.d ]
  %i.k = shl i64 %.03148.i, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.03049.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !66    ; 5 uses
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.n, 10
  br i1 %or.cond.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = add i8 %i.m, -65
  %or.cond42.i = icmp ult i8 %i.o, 6
  br i1 %or.cond42.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %narrow40.i = add nuw nsw i8 %i.m, 9
  %5 = and i8 %narrow40.i, 31
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = add i8 %i.m, -97
  %or.cond43.i = icmp ult i8 %i.p, 6
  br i1 %or.cond43.i, label %bb.h, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !358

bb.h:                                             ; preds = %bb.g
  %narrow.i = add nuw nsw i8 %i.m, 9
  %6 = and i8 %narrow.i, 31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph.i
  %.pn.in.i = phi i8 [ %6, %bb.h ], [ %5, %bb.f ], [ %i.n, %.lr.ph.i ]
  %.pn.i = zext nneg i8 %.pn.in.i to i64
  %.1.i = or i64 %i.k, %.pn.i                     ; 2 uses
  %i.q = add nuw nsw i64 %.03049.i, 1
  %exitcond.not.i = icmp eq i64 %.03049.i, %i.i
  br i1 %exitcond.not.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, label %.lr.ph.i, !llvm.loop !2080

thread-pre-split:                                 ; preds = %bb.b
  %i.r = icmp eq i8 %i.d, 45
  br i1 %i.r, label %bb.j, label %.thread

bb.j:                                             ; preds = %thread-pre-split
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.t = add i64 %3, -1                           ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.c, %bb.j, %thread-pre-split
  %i.v = phi i1 [ true, %bb.j ], [ false, %thread-pre-split ], [ false, %bb.c ]
  %.024 = phi ptr [ %i.s, %bb.j ], [ %2, %thread-pre-split ], [ %2, %bb.c ] ; 2 uses
  %.023 = phi i64 [ %i.t, %bb.j ], [ %3, %thread-pre-split ], [ %3, %bb.c ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.024, i64 %.023
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.l
  %.133 = phi i64 [ %.023, %.thread ], [ %i.y, %bb.l ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.z, %bb.l ] ; 3 uses
  %i.w = load i8, ptr %.12532, align 1, !tbaa !66
  %i.x = icmp eq i8 %i.w, 48
  br i1 %i.x, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %.133, -1                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.12532, i64 1
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.critedge, label %bb.k, !llvm.loop !6935

.critedge:                                        ; preds = %bb.l, %bb.k
  %.125.lcssa = phi ptr [ %scevgep, %bb.l ], [ %.12532, %bb.k ]
  %.1.lcssa = phi i64 [ 0, %bb.l ], [ %.133, %bb.k ]
  %i.aa = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.aa, label %bb.m, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !218

bb.m:                                             ; preds = %.critedge
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !350 ; 4 uses
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp ugt i64 %i.ab, -9223372036854775808
  br i1 %i.ac, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.o, !prof !209

bb.o:                                             ; preds = %bb.n
  %i.ad = sub i64 0, %i.ab
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ae = icmp slt i64 %i.ab, 0
  br i1 %i.ae, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, !prof !209

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split: ; preds = %bb.i, %bb.o, %bb.p
  %storemerge.sink = phi i64 [ %i.ab, %bb.p ], [ %i.ad, %bb.o ], [ %.1.i, %bb.i ]
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
  %5 = add nuw nsw i64 %i.ay, 4294967295
  %6 = and i64 %5, 4294967295
  %i.az = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %6
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !66
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i: ; preds = %.thread.i.i.i, %bb.k
  %.sroa.03.0.i.i.i = phi i8 [ %i.ba, %.thread.i.i.i ], [ 29, %bb.k ]
  %.not42.i = icmp ult i8 %.sroa.03.0.i.i.i, %i.ar
  br i1 %.not42.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIiSt5ratioILl86400ELl1EEEEEEbPKcPT_.exit.thread, label %bb.l, !prof !361

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i
  %i.bb = zext nneg i16 %i.z to i32
  %i.bc = icmp samesign ult i8 %i.ai, 3
  %.neg.i.i.i = sext i1 %i.bc to i32
  %i.bd = add nsw i32 %.neg.i.i.i, %i.bb          ; 4 uses
  %i.be = zext nneg i8 %i.ai to i32
  %i.bf = zext i8 %i.ar to i32
  %i.bg = add nsw i32 %i.bd, 65137
  %i.bh = icmp slt i32 %i.bd, 0
  %i.bi = select i1 %i.bh, i32 %i.bg, i32 %i.bd
  %.lhs.trunc.i = trunc i32 %i.bi to i16
  %i.bj = sdiv i16 %.lhs.trunc.i, 400
  %.sext.i = sext i16 %i.bj to i32                ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %.sext.i, -400
  %i.bk = add nsw i32 %.neg15.i.i.i, %i.bd        ; 3 uses
  %i.bl = icmp samesign ugt i8 %i.ai, 2
  %.v.i.i.i = select i1 %i.bl, i32 -3, i32 9
  %i.bm = add nsw i32 %.v.i.i.i, %i.be
  %i.bn = mul nsw i32 %i.bm, 153
  %i.bo = add nsw i32 %i.bn, 2
  %i.bp = udiv i32 %i.bo, 5
  %i.bq = mul nsw i32 %i.bk, 365
  %i.br = lshr i32 %i.bk, 2
  %i.bs = udiv i32 %i.bk, 100
  %i.bt = mul nsw i32 %.sext.i, 146097
  %i.bu = add nsw i32 %i.bp, -719469
  %i.bv = add nsw i32 %i.bu, %i.bt
  %i.bw = add nsw i32 %i.bv, %i.br
  %i.bx = add nsw i32 %i.bw, %i.bq
  %i.by = sub nsw i32 %i.bx, %i.bs
  %i.bz = add nsw i32 %i.by, %i.bf
  store i32 %i.bz, ptr %4, align 4, !tbaa !3
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
  %narrow47.i = add nuw nsw i8 %i.j, %narrow.i
  %i.p = zext nneg i8 %narrow47.i to i16
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
  %5 = add nuw nsw i64 %i.ay, 4294967295
  %6 = and i64 %5, 4294967295
  %i.az = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %6
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !66
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i: ; preds = %.thread.i.i.i, %bb.k
  %.sroa.03.0.i.i.i = phi i8 [ %i.ba, %.thread.i.i.i ], [ 29, %bb.k ]
  %.not41.i = icmp ult i8 %.sroa.03.0.i.i.i, %i.ar
  br i1 %.not41.i, label %_ZN5arrow8internalL15ParseYYYY_MM_DDINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEbPKcPT_.exit.thread, label %bb.l, !prof !361

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i
  %i.bb = zext nneg i16 %i.z to i32
  %i.bc = icmp samesign ult i8 %i.ai, 3
  %.neg.i.i.i = sext i1 %i.bc to i32
  %i.bd = add nsw i32 %.neg.i.i.i, %i.bb          ; 4 uses
  %i.be = zext nneg i8 %i.ai to i32
  %i.bf = zext i8 %i.ar to i32
  %i.bg = add nsw i32 %i.bd, 65137
  %i.bh = icmp slt i32 %i.bd, 0
  %i.bi = select i1 %i.bh, i32 %i.bg, i32 %i.bd
  %.lhs.trunc.i = trunc i32 %i.bi to i16
  %i.bj = sdiv i16 %.lhs.trunc.i, 400
  %.sext.i = sext i16 %i.bj to i32                ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %.sext.i, -400
  %i.bk = add nsw i32 %.neg15.i.i.i, %i.bd        ; 3 uses
  %i.bl = icmp samesign ugt i8 %i.ai, 2
  %.v.i.i.i = select i1 %i.bl, i32 -3, i32 9
  %i.bm = add nsw i32 %.v.i.i.i, %i.be
  %i.bn = mul nsw i32 %i.bm, 153
  %i.bo = add nsw i32 %i.bn, 2
  %i.bp = udiv i32 %i.bo, 5
  %i.bq = mul nsw i32 %i.bk, 365
  %i.br = lshr i32 %i.bk, 2
  %i.bs = udiv i32 %i.bk, 100
  %i.bt = mul nsw i32 %.sext.i, 146097
  %i.bu = add nsw i32 %i.bp, -719469
  %i.bv = add nsw i32 %i.bu, %i.bt
  %i.bw = add nsw i32 %i.bv, %i.br
  %i.bx = add nsw i32 %i.bw, %i.bq
  %i.by = sub nsw i32 %i.bx, %i.bs
  %i.bz = add nsw i32 %i.by, %i.bf
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.ca, 86400000
  store i64 %i.cb, ptr %4, align 8, !tbaa !350
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
end_hunk_3
