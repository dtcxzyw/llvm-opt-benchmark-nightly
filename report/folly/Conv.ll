Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Conv?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZZN3fmt2v96detail9write_intINS0_8appenderEcZNS1_9write_intIcS3_oEET0_S5_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refEEUlS3_E0_EESA_SA_ijRKNS9_IS5_EES7_ENKUlS3_E_clES3_:bb.a
  %i.w = load i128, ptr %i.v, align 16, !tbaa !857 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i32, ptr %i.x, align 16, !tbaa !858 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !859, !range !86, !noundef !78
  %i.ab = trunc nuw i8 %i.aa to i1                ; 2 uses
  %i.ac = zext i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !118
  %i.ah = add i64 %i.ae, %i.ac                    ; 2 uses
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i.i, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i.i

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i.i: ; preds = %_ZN3fmt2v96detail6fill_nINS0_8appenderEmcEET_S4_T0_RKT1_.exit
  store i64 %i.ah, ptr %i.ad, align 8, !tbaa !117
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !116 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.not.i.i, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ae
  %i.am = sext i32 %i.y to i64
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  %.str.23..str.24.i.i.i = select i1 %i.ab, ptr @.str.23, ptr @.str.24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.09.i.i.i = phi i128 [ %i.w, %bb.d ], [ %i.at, %bb.e ] ; 2 uses
  %.0.i14.i.i = phi ptr [ %i.an, %bb.d ], [ %i.as, %bb.e ]
  %i.ao = trunc i128 %.09.i.i.i to i64
  %i.ap = and i64 %i.ao, 15
  %i.aq = getelementptr inbounds nuw i8, ptr %.str.23..str.24.i.i.i, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !71
  %i.as = getelementptr inbounds i8, ptr %.0.i14.i.i, i64 -1 ; 2 uses
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !71
  %i.at = lshr i128 %.09.i.i.i, 4                 ; 2 uses
  %.not.i.i.i = icmp eq i128 %i.at, 0
  br i1 %.not.i.i.i, label %_ZZN3fmt2v96detail9write_intIcNS0_8appenderEoEET0_S4_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refEENKUlS3_E0_clES3_.exit, label %bb.e, !llvm.loop !53

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i.i: ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i.i, %_ZN3fmt2v96detail6fill_nINS0_8appenderEmcEET_S4_T0_RKT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.au = sext i32 %i.y to i64
  %i.av = getelementptr inbounds i8, ptr %i.a, i64 %i.au ; 2 uses
  %.str.23..str.24.i15.i.i = select i1 %i.ab, ptr @.str.23, ptr @.str.24
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i.i
  %.09.i16.i.i = phi i128 [ %i.w, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i.i ], [ %i.bb, %bb.f ] ; 2 uses
  %.0.i17.i.i = phi ptr [ %i.av, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i.i ], [ %i.ba, %bb.f ]
  %i.aw = trunc i128 %.09.i16.i.i to i64
  %i.ax = and i64 %i.aw, 15
  %i.ay = getelementptr inbounds nuw i8, ptr %.str.23..str.24.i15.i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !71
  %i.ba = getelementptr inbounds i8, ptr %.0.i17.i.i, i64 -1 ; 2 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !71
  %i.bb = lshr i128 %.09.i16.i.i, 4               ; 2 uses
  %.not.i18.i.i = icmp eq i128 %i.bb, 0
  br i1 %.not.i18.i.i, label %_ZN3fmt2v96detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit19.i.i, label %bb.f, !llvm.loop !53

_ZN3fmt2v96detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit19.i.i: ; preds = %bb.f
  %i.bc = call ptr @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS0_8appenderEEET1_T0_S6_S5_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.av, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZZN3fmt2v96detail9write_intIcNS0_8appenderEoEET0_S4_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refEENKUlS3_E0_clES3_.exit

_ZZN3fmt2v96detail9write_intIcNS0_8appenderEoEET0_S4_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refEENKUlS3_E0_clES3_.exit: ; preds = %bb.e, %_ZN3fmt2v96detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit19.i.i
  %.sroa.012.1.i.i = phi ptr [ %i.bc, %_ZN3fmt2v96detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit19.i.i ], [ %1, %bb.e ]
  ret ptr %.sroa.012.1.i.i

bb.g:                                             ; preds = %.lr.ph, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit
  %.09 = phi i32 [ %i.c, %.lr.ph ], [ %i.bn, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit ] ; 2 uses
  %i.bd = trunc i32 %.09 to i8
  %i.be = load i64, ptr %i.d, align 8, !tbaa !117 ; 2 uses
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !118
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.h, label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %1, align 8, !tbaa !95
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bf), !call_target !133, !inline_history !25
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !117 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit

_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit: ; preds = %bb.g, %bb.h
  %.pre-phi.i.i = phi i64 [ %i.bf, %bb.g ], [ %.pre2.i.i, %bb.h ]
  %i.bk = phi i64 [ %i.be, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !116
  store i64 %.pre-phi.i.i, ptr %i.d, align 8, !tbaa !117
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 %i.bd, ptr %i.bm, align 1, !tbaa !71
  %i.bn = lshr i32 %.09, 8                        ; 2 uses
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !855
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EENS1_10locale_refE(ptr %0, i8 noundef signext %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %3) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i8, ptr %i.a, align 4, !tbaa !207   ; 2 uses
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 15, label %bb.c
    i8 18, label %bb.c
    i8 1, label %_ZN3fmt2v96detail16check_char_specsIcNS1_13error_handlerEEEbRKNS0_18basic_format_specsIT_EEOT0_.exit
    i8 6, label %_ZN3fmt2v96detail16check_char_specsIcNS1_13error_handlerEEEbRKNS0_18basic_format_specsIT_EEOT0_.exit
    i8 5, label %_ZN3fmt2v96detail16check_char_specsIcNS1_13error_handlerEEEbRKNS0_18basic_format_specsIT_EEOT0_.exit
    i8 4, label %_ZN3fmt2v96detail16check_char_specsIcNS1_13error_handlerEEEbRKNS0_18basic_format_specsIT_EEOT0_.exit
    i8 3, label %_ZN3fmt2v96detail16check_char_specsIcNS1_13error_handlerEEEbRKNS0_18basic_format_specsIT_EEOT0_.exit
    i8 2, label %_ZN3fmt2v96detail16check_char_specsIcNS1_13error_handlerEEEbRKNS0_18basic_format_specsIT_EEOT0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.d = load i16, ptr %i.c, align 1              ; 2 uses
  %i.e = and i16 %i.d, 15                         ; 2 uses
  %i.f = icmp ne i16 %i.e, 4
  %i.g = and i16 %i.d, 240
  %i.h = icmp eq i16 %i.g, 0
  %or.cond15.i = and i1 %i.f, %i.h
  br i1 %or.cond15.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.54) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i8 %i.b, 18
  %i.j = load i32, ptr %2, align 4, !tbaa !205
  %i.k = zext i32 %i.j to i64
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 1) ; 3 uses
  %i.m = zext nneg i16 %i.e to i64
  %i.n = getelementptr inbounds nuw i8, ptr @.str.25, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !71
  %i.p = sext i8 %i.o to i64
  %i.q = and i64 %i.p, 4294967295
  %i.r = lshr i64 %i.l, %i.q                      ; 4 uses
  %i.s = sub nuw nsw i64 %i.l, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call ptr @_ZN3fmt2v96detail4fillINS0_8appenderEcEET_S4_mRKNS1_6fill_tIT0_EE(ptr %0, i64 noundef %i.r, ptr noundef nonnull align 1 dereferenceable(5) %i.t)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.08.0.i.i.i = phi ptr [ %i.u, %bb.f ], [ %0, %bb.e ] ; 7 uses
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call ptr @_ZN3fmt2v96detail18write_escaped_charIcNS0_8appenderEEET0_S4_T_(ptr %.sroa.08.0.i.i.i, i8 noundef signext %1)
  br label %_ZZN3fmt2v96detail10write_charIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EEENKUlS3_E_clES3_.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i.i, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !117  ; 2 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i.i, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !118
  %i.ab = icmp ugt i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.j, label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSERKc.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %.sroa.08.0.i.i.i, align 8, !tbaa !95
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.0.i.i.i, i64 noundef %i.y), !call_target !133, !inline_history !33
  %.pre.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !117 ; 2 uses
  %.pre2.i.i.i.i.i.i = add i64 %.pre.i.i.i.i.i.i, 1
  br label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSERKc.exit.i.i.i.i

_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSERKc.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %i.y, %bb.i ], [ %.pre2.i.i.i.i.i.i, %bb.j ]
  %i.ae = phi i64 [ %i.x, %bb.i ], [ %.pre.i.i.i.i.i.i, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !116
  store i64 %.pre-phi.i.i.i.i.i.i, ptr %i.w, align 8, !tbaa !117
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 %1, ptr %i.ah, align 1, !tbaa !71
  br label %_ZZN3fmt2v96detail10write_charIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EEENKUlS3_E_clES3_.exit.i.i.i

_ZZN3fmt2v96detail10write_charIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EEENKUlS3_E_clES3_.exit.i.i.i: ; preds = %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSERKc.exit.i.i.i.i, %bb.h
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ %.sroa.08.0.i.i.i, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSERKc.exit.i.i.i.i ] ; 2 uses
  %.not29.i.i.i = icmp eq i64 %i.l, %i.r
  br i1 %.not29.i.i.i, label %_ZN3fmt2v96detail10write_charIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZZN3fmt2v96detail10write_charIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EEENKUlS3_E_clES3_.exit.i.i.i
  %i.ai = tail call ptr @_ZN3fmt2v96detail4fillINS0_8appenderEcEET_S4_mRKNS1_6fill_tIT0_EE(ptr %.sroa.01.0.i.i.i.i, i64 noundef %i.s, ptr noundef nonnull align 1 dereferenceable(5) %i.t)
  br label %_ZN3fmt2v96detail10write_charIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EE.exit

_ZN3fmt2v96detail16check_char_specsIcNS1_13error_handlerEEEbRKNS0_18basic_format_specsIT_EEOT0_.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %4 = sext i8 %1 to i32                          ; 2 uses
  %i.aj = icmp slt i8 %1, 0
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN3fmt2v96detail16check_char_specsIcNS1_13error_handlerEEEbRKNS0_18basic_format_specsIT_EEOT0_.exit
  %5 = sub nsw i32 0, %4
  br label %_ZN3fmt2v96detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

bb.m:                                             ; preds = %_ZN3fmt2v96detail16check_char_specsIcNS1_13error_handlerEEEbRKNS0_18basic_format_specsIT_EEOT0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = lshr i16 %i.al, 4
  %i.an = and i16 %i.am, 7
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt2v96detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.prefixes, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !236
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 32
  br label %_ZN3fmt2v96detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit

_ZN3fmt2v96detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit: ; preds = %bb.l, %bb.m
  %.06.i = phi i64 [ 72057787311456256, %bb.l ], [ %i.as, %bb.m ]
  %.0.i9 = phi i32 [ %5, %bb.l ], [ %4, %bb.m ]
  %.sroa.0.0.insert.ext.i = zext nneg i32 %.0.i9 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.06.i, %.sroa.0.0.insert.ext.i
  %i.at = tail call ptr @_ZN3fmt2v96detail18write_int_noinlineIcNS0_8appenderEjEET0_S4_NS1_13write_int_argIT1_EERKNS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %0, i64 %.sroa.0.0.insert.insert.i, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %3)
  br label %_ZN3fmt2v96detail10write_charIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EE.exit

_ZN3fmt2v96detail10write_charIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EE.exit: ; preds = %bb.k, %_ZZN3fmt2v96detail10write_charIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EEENKUlS3_E_clES3_.exit.i.i.i, %_ZN3fmt2v96detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit
  %.sroa.08.0 = phi ptr [ %i.at, %_ZN3fmt2v96detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE.exit ], [ %i.ai, %bb.k ], [ %.sroa.01.0.i.i.i.i, %_ZZN3fmt2v96detail10write_charIcNS0_8appenderEEET0_S4_T_RKNS0_18basic_format_specsIS5_EEENKUlS3_E_clES3_.exit.i.i.i ]
  ret ptr %.sroa.08.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEfTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S8_S5_NS0_18basic_format_specsIT_EENS1_10locale_refE(ptr %0, float noundef %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v9::basic_format_specs", align 16 ; 5 uses
  %6 = alloca %class.anon.85, align 8             ; 5 uses
  %7 = alloca %"struct.fmt::v9::basic_format_specs", align 16 ; 11 uses
  %8 = alloca %"struct.fmt::v9::detail::error_handler", align 1 ; 3 uses
  %9 = alloca %"class.fmt::v9::basic_memory_buffer.91", align 8 ; 10 uses
  %10 = alloca %"struct.fmt::v9::detail::big_decimal_fp", align 8 ; 7 uses
  store i64 %2, ptr %7, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.b = call i64 @_ZN3fmt2v96detail21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) ; 3 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 9
  %i.d = load i16, ptr %i.c, align 1              ; 2 uses
  %i.e = and i32 %.sroa.8.0.extract.trunc, -65281 ; 2 uses
  %i.f = bitcast float %1 to i32
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = or disjoint i32 %i.e, 256
  %i.i = fneg float %1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = shl i16 %i.d, 4
  %i.k = and i16 %i.j, 1792                       ; 2 uses
  %i.l = icmp eq i16 %i.k, 256
  %narrow = select i1 %i.l, i16 0, i16 %i.k
  %i.m = zext nneg i16 %narrow to i32
  %spec.select = or disjoint i32 %i.e, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.8.0 = phi i32 [ %i.h, %bb.b ], [ %spec.select, %bb.c ] ; 6 uses
  %.0 = phi float [ %i.i, %bb.b ], [ %1, %bb.c ]  ; 4 uses
  %i.n = fcmp ueq float %.0, +inf
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = fcmp uno float %.0, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8
  %i.p = load <2 x i64>, ptr %7, align 16
  store <2 x i64> %i.p, ptr %5, align 16
  %i.q = and i64 %.sroa.2.0.copyload, -72057589759737856
  %or.cond.i = icmp eq i64 %i.q, 72057594843234304
  br i1 %or.cond.i, label %bb.f, label %_ZN3fmt2v96detail15write_nonfiniteIcNS0_8appenderEEET0_S4_bNS0_18basic_format_specsIT_EERKNS1_11float_specsE.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 11
  store i8 32, ptr %i.r, align 1, !tbaa !71
  br label %_ZN3fmt2v96detail15write_nonfiniteIcNS0_8appenderEEET0_S4_bNS0_18basic_format_specsIT_EERKNS1_11float_specsE.exit

_ZN3fmt2v96detail15write_nonfiniteIcNS0_8appenderEEET0_S4_bNS0_18basic_format_specsIT_EERKNS1_11float_specsE.exit: ; preds = %bb.e, %bb.f
  %i.s = and i32 %.sroa.8.0, 65536
  %.not10.i = icmp eq i32 %i.s, 0                 ; 2 uses
  %.str.26..str.i = select i1 %.not10.i, ptr @.str, ptr @.str.26
  %.str.27..str.28.i = select i1 %.not10.i, ptr @.str.28, ptr @.str.27
  %i.t = select i1 %i.o, ptr %.str.26..str.i, ptr %.str.27..str.28.i
  %i.u = lshr i32 %.sroa.8.0, 8
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %.not11.not.i = icmp eq i8 %i.v, 0
  %i.w = select i1 %.not11.not.i, i64 3, i64 4    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i8 %i.v, ptr %6, align 8, !tbaa !210
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.t, ptr %i.x, align 8, !tbaa !211
  %i.y = call ptr @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE1ENS0_8appenderEcRZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_18basic_format_specsIT_EERKNS1_11float_specsEEUlS5_E_EES7_S7_RKNS8_IT1_EEmmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef %i.w, i64 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.af

bb.g:                                             ; preds = %bb.d
  %i.z = and i16 %i.d, 15
  %i.aa = icmp ne i16 %i.z, 4
  %i.ab = and i32 %.sroa.8.0, 65280
  %.not = icmp eq i32 %i.ab, 0
  %or.cond77 = select i1 %i.aa, i1 true, i1 %.not
  br i1 %or.cond77, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = lshr i32 %.sroa.8.0, 8
  %i.ad = and i32 %i.ac, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @.str.29, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !71
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !117 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !118
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %0, align 8, !tbaa !95
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aj), !call_target !133, !inline_history !25
  %.pre.i.i = load i64, ptr %i.ah, align 8, !tbaa !117 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit

_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit: ; preds = %bb.h, %bb.i
  %.pre-phi.i.i = phi i64 [ %i.aj, %bb.h ], [ %.pre2.i.i, %bb.i ]
  %i.ap = phi i64 [ %i.ai, %bb.h ], [ %.pre.i.i, %bb.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !116
  store i64 %.pre-phi.i.i, ptr %i.ah, align 8, !tbaa !117
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 %i.ag, ptr %i.as, align 1, !tbaa !71
  %i.at = and i32 %.sroa.8.0, -65281              ; 2 uses
  %i.au = load i32, ptr %7, align 16, !tbaa !205  ; 2 uses
  %.not38 = icmp eq i32 %i.au, 0
  br i1 %.not38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit
  %i.av = add nsw i32 %i.au, -1
  store i32 %i.av, ptr %7, align 16, !tbaa !205
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit, %bb.j, %bb.g
  %.sroa.8.1 = phi i32 [ %i.at, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit ], [ %.sroa.8.0, %bb.g ], [ %i.at, %bb.j ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store i64 0, ptr %i.ay, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %9, align 8, !tbaa !95
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !116
  store i64 500, ptr %i.ax, align 8, !tbaa !118
  %i.ba = trunc i32 %.sroa.8.1 to i8              ; 3 uses
  %i.bb = icmp eq i8 %i.ba, 3
  br i1 %i.bb, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bc = and i32 %.sroa.8.1, 65280
  %.not42 = icmp eq i32 %i.bc, 0
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = lshr i32 %.sroa.8.1, 8
  %i.be = and i32 %i.bd, 255
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @.str.29, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !71
  store i64 1, ptr %i.ay, align 8, !tbaa !117
  store i8 %i.bh, ptr %i.az, align 8, !tbaa !71
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = fpext float %.0 to double
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !206
  %.sroa.8.0.insert.ext63 = zext i32 %.sroa.8.1 to i64
  %.sroa.8.0.insert.shift64 = shl nuw i64 %.sroa.8.0.insert.ext63, 32
  %.sroa.052.0.insert.ext56 = and i64 %i.b, 4294967295
  %.sroa.052.0.insert.insert58 = or disjoint i64 %.sroa.8.0.insert.shift64, %.sroa.052.0.insert.ext56
  %i.bl = invoke noundef i32 @_ZN3fmt2v96detail14snprintf_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %i.bi, i32 noundef %i.bk, i64 %.sroa.052.0.insert.insert58, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !116
  %i.bn = load i64, ptr %i.ay, align 8, !tbaa !117
  %i.bo = invoke ptr @_ZN3fmt2v96detail11write_bytesILNS0_5align4typeE2EcNS0_8appenderEEET1_S6_NS0_17basic_string_viewIcEERKNS0_18basic_format_specsIT0_EE(ptr %0, ptr %i.bm, i64 %i.bn, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %bb.ab unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.q:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !206 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  %i.bt = load i8, ptr %i.a, align 8
  %i.bu = icmp eq i8 %i.bt, 0
  %or.cond = select i1 %i.bs, i1 true, i1 %i.bu
  %i.bv = select i1 %or.cond, i32 %i.br, i32 6    ; 4 uses
  %i.bw = icmp eq i8 %i.ba, 1
  br i1 %i.bw, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.bx = icmp eq i32 %i.bv, 2147483647
  br i1 %i.bx, label %bb.s, label %bb.v
end_hunk_0
