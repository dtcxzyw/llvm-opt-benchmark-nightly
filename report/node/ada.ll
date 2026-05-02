inline.NumInlined: 8297
inline.NumDeleted: 1222
begin_hunk_0_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %36 = alloca %"class.std::basic_string_view.2", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.b, i8 0, i64 264, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 22 uses
  store i8 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
bb.lx:                                            ; preds = %bb.lw
  %i.bfw = load i8, ptr %i.f, align 1
  %.not1910 = icmp eq i8 %i.bfw, 1
  br i1 %.not1910, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.bfx = icmp eq i8 %i.bfv, 92
  %37 = zext i1 %i.bfx to i8
  br label %bb.lz

bb.lz:                                            ; preds = %bb.lw, %bb.lw, %bb.ly, %bb.lx, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770
  %38 = phi i8 [ 1, %bb.lw ], [ 1, %bb.lw ], [ 1, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1770 ], [ 0, %bb.lx ], [ %37, %bb.ly ]
  %i.bfy = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %39 = and i8 %i.bfy, %38                        ; 2 uses
  store i8 %39, ptr %i.c, align 8
  %40 = trunc nuw i8 %39 to i1
  br i1 %40, label %_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit, label %.critedge329

_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit: ; preds = %bb.lz
  %i.bfz = load i8, ptr %i.f, align 1
end_hunk_1
begin_hunk_2_@_ZN3ada6parser14parse_url_implINS_3urlELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.critedge346.critedge

.critedge329:                                     ; preds = %bb.lz, %bb.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit819, %bb.fj, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398, %bb.rd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1185, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.lp, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit398.thread1752, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit416.thread, %bb.ig, %_ZN3ada3url10parse_hostESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread1846, %.thread1636
  %i.crz = load ptr, ptr %27, align 8             ; 2 uses
  %i.csa = icmp eq ptr %i.crz, %i.ad
  br i1 %i.csa, label %.critedge346.sink.split, label %.critedge346.sink.split.sink.split
end_hunk_2
begin_hunk_3_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %39 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  store i8 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %.pre-phi = phi i64 [ %i.bdp, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.bdm, %.thread ], [ %i.bdp, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %.pre2326, %bb.kn ]
  %i.beo = phi i1 [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ false, %.thread ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ true, %bb.kn ]
  %.014551652 = phi i16 [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ 0, %.thread ], [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.bem, %bb.kn ] ; 3 uses
  %i.bep = sub i64 %.pre-phi, %i.ben              ; 6 uses
  %i.beq = icmp eq i64 %i.bep, %i.bdj
  br i1 %i.beq, label %bb.kr, label %bb.ko

end_hunk_4
begin_hunk_5_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
bb.kp:                                            ; preds = %bb.ko
  %i.bet = load i8, ptr %i.f, align 1
  %.not1757 = icmp eq i8 %i.bet, 1
  br i1 %.not1757, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.beu = icmp eq i8 %i.bes, 92
  %40 = zext i1 %i.beu to i8
  br label %bb.kr

bb.kr:                                            ; preds = %bb.ko, %bb.ko, %bb.kq, %bb.kp, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646
  %41 = phi i8 [ 1, %bb.ko ], [ 1, %bb.ko ], [ 1, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1646 ], [ 0, %bb.kp ], [ %40, %bb.kq ]
  %i.bev = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %42 = and i8 %i.bev, %41                        ; 2 uses
  store i8 %42, ptr %i.c, align 8
  %43 = trunc nuw i8 %42 to i1
  br i1 %43, label %bb.ks, label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.ks:                                            ; preds = %bb.kr
  %i.bew = load i8, ptr %i.f, align 1
end_hunk_5
begin_hunk_6_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb1EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  store i32 -1, ptr %i.k, align 8
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit: ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.kr, %bb.kt, %bb.ku, %bb.le, %bb.kh
  %.1.i455 = phi i64 [ 0, %bb.kh ], [ 0, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread ], [ %i.bep, %bb.kt ], [ %i.bep, %bb.kr ], [ %i.bep, %bb.ku ], [ %i.bep, %bb.le ]
  %i.bgh = add i64 %.1.i455, %.03112133
  %i.bgi = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %i.bgj = trunc nuw i8 %i.bgi to i1
end_hunk_6
begin_hunk_7_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %35 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  store i8 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
end_hunk_7
begin_hunk_8_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  %.pre-phi = phi i64 [ %i.bca, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.bbx, %.thread ], [ %i.bca, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %.pre2181, %bb.ki ]
  %i.bcz = phi i1 [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ false, %.thread ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ true, %bb.ki ]
  %.013741569 = phi i16 [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ 0, %.thread ], [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.bcx, %bb.ki ] ; 3 uses
  %i.bda = sub i64 %.pre-phi, %i.bcy              ; 6 uses
  %i.bdb = icmp eq i64 %i.bda, %i.bbu
  br i1 %i.bdb, label %bb.km, label %bb.kj

end_hunk_8
begin_hunk_9_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
bb.kk:                                            ; preds = %bb.kj
  %i.bde = load i8, ptr %i.f, align 1
  %.not1674 = icmp eq i8 %i.bde, 1
  br i1 %.not1674, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.bdf = icmp eq i8 %i.bdd, 92
  %36 = zext i1 %i.bdf to i8
  br label %bb.km

bb.km:                                            ; preds = %bb.kj, %bb.kj, %bb.kl, %bb.kk, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1563
  %37 = phi i8 [ 1, %bb.kj ], [ 1, %bb.kj ], [ 1, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread1563 ], [ 0, %bb.kk ], [ %36, %bb.kl ]
  %i.bdg = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %38 = and i8 %i.bdg, %37                        ; 2 uses
  store i8 %38, ptr %i.c, align 8
  %39 = trunc nuw i8 %38 to i1
  br i1 %39, label %bb.kn, label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

bb.kn:                                            ; preds = %bb.km
  %i.bdh = load i8, ptr %i.f, align 1
end_hunk_9
begin_hunk_10_@_ZN3ada6parser14parse_url_implINS_14url_aggregatorELb0EEET_St17basic_string_viewIcSt11char_traitsIcEEPKS3_:bb.a
  store i32 -1, ptr %i.k, align 8
  br label %_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit

_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb.exit: ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.km, %bb.ko, %bb.kp, %bb.kz, %bb.kc
  %.1.i420 = phi i64 [ 0, %bb.kc ], [ 0, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread ], [ %i.bda, %bb.ko ], [ %i.bda, %bb.km ], [ %i.bda, %bb.kp ], [ %i.bda, %bb.kz ]
  %i.bes = add i64 %.1.i420, %.02771995
  %i.bet = load i8, ptr %i.c, align 8, !range !73, !noundef !74
  %i.beu = trunc nuw i8 %i.bet to i1
end_hunk_10
begin_hunk_11_@_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  %.pre-phi = phi i64 [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.b, %.thread ], [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %.pre52, %bb.i ]
  %i.ag = phi i1 [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ false, %.thread ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ true, %bb.i ]
  %.02841 = phi i16 [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ 0, %.thread ], [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.ad, %bb.i ] ; 3 uses
  %i.ah = sub i64 %.pre-phi, %i.af                ; 4 uses
  br i1 %3, label %bb.j, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35._crit_edge

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35._crit_edge: ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !73
  br label %9

bb.j:                                             ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35
  %i.ai = icmp eq i64 %i.ah, %1
end_hunk_11
begin_hunk_12_@_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.am = load i8, ptr %i.al, align 1
  %.not48 = icmp eq i8 %i.am, 1
  br i1 %.not48, label %bb.m, label %4

4:                                                ; preds = %bb.l
  %5 = icmp eq i8 %i.ak, 92
  %6 = zext i1 %5 to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.l, %4, %bb.j
  %7 = phi i8 [ 1, %bb.k ], [ 1, %bb.k ], [ 1, %bb.j ], [ 0, %bb.l ], [ %6, %4 ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !range !73, !noundef !74
  %8 = and i8 %i.ao, %7                           ; 2 uses
  store i8 %8, ptr %i.an, align 8
  br label %9

9:                                                ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35._crit_edge, %bb.m
  %10 = phi i8 [ %.pre, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread35._crit_edge ], [ %8, %bb.m ]
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %bb.n, label %bb.o

bb.n:                                             ; preds = %9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN3ada3url10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  store i32 %.sroa.0.0.insert.insert, ptr %i.ay, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.n, %9, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ 0, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread ], [ %i.ah, %bb.n ], [ %i.ah, %9 ]
  ret i64 %.1
}

end_hunk_13
begin_hunk_14_@_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  %.pre-phi = phi i64 [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ %i.b, %.thread ], [ %i.g, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %.pre47, %bb.i ]
  %i.ag = phi i1 [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ false, %.thread ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ true, %bb.i ]
  %.02639 = phi i16 [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.i ], [ 0, %.thread ], [ 0, %_ZNSt8__detail22__from_chars_pow2_baseILb1EjEEbRPKcS2_RT0_i.exit.thread.i ], [ %i.ad, %bb.i ] ; 3 uses
  %i.ah = sub i64 %.pre-phi, %i.af                ; 6 uses
  br i1 %3, label %bb.j, label %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33._crit_edge

_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33._crit_edge: ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !73
  br label %9

bb.j:                                             ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33
  %i.ai = icmp eq i64 %i.ah, %1
end_hunk_14
begin_hunk_15_@_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.am = load i8, ptr %i.al, align 1
  %.not44 = icmp eq i8 %i.am, 1
  br i1 %.not44, label %bb.m, label %4

4:                                                ; preds = %bb.l
  %5 = icmp eq i8 %i.ak, 92
  %6 = zext i1 %5 to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.l, %4, %bb.j
  %7 = phi i8 [ 1, %bb.k ], [ 1, %bb.k ], [ 1, %bb.j ], [ 0, %bb.l ], [ %6, %4 ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !range !73, !noundef !74
  %8 = and i8 %i.ao, %7                           ; 2 uses
  store i8 %8, ptr %i.an, align 8
  br label %9

9:                                                ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33._crit_edge, %bb.m
  %10 = phi i8 [ %.pre, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread33._crit_edge ], [ %8, %bb.m ]
  %11 = trunc nuw i8 %10 to i1
  br i1 %11, label %bb.n, label %_ZN3ada14url_aggregator10clear_portEv.exit

bb.n:                                             ; preds = %9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN3ada14url_aggregator10parse_portESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  store i32 -1, ptr %i.az, align 8
  br label %_ZN3ada14url_aggregator10clear_portEv.exit

_ZN3ada14url_aggregator10clear_portEv.exit:       ; preds = %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread, %bb.o, %9, %bb.p, %bb.z, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ 0, %_ZSt10from_charsItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.thread ], [ %i.ah, %bb.o ], [ %i.ah, %9 ], [ %i.ah, %bb.p ], [ %i.ah, %bb.z ]
  ret i64 %.1
}

end_hunk_16
