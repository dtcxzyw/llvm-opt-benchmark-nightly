inline.NumInlined: 3182
inline.NumDeleted: 940
begin_hunk_0_@_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcmNS1_14digit_groupingIcEEEET_S7_T1_iiT0_RKT2_:bb.a
  %i.et = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i29, ptr nonnull %6)
          to label %bb.t unwind label %bb.x       ; 0 uses

bb.t:                                             ; preds = %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.eu = load ptr, ptr %6, align 8, !tbaa !138
  %i.ev = zext i32 %3 to i64
  %i.ew = invoke ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr %0, ptr %i.eu, i64 %i.ev)
          to label %bb.u unwind label %bb.x       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ex = load ptr, ptr %6, align 8, !tbaa !138   ; 2 uses
  %i.ey = sext i32 %3 to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 %i.ey
  %i.fa = load i64, ptr %i.bz, align 8, !tbaa !143
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fa
  %i.fc = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef %i.ez, ptr noundef %i.fb, ptr %0)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.fd = load ptr, ptr %6, align 8, !tbaa !138   ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.fd, %i.ca
  br i1 %.not.i.i46, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.fd) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.z

bb.x:                                             ; preds = %_ZN3fmt3v126detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i, %bb.u, %bb.t
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %6, align 8, !tbaa !138   ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.ff, %i.ca
  br i1 %.not.i.i47, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit48, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.ff) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit48

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit48: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %i.fe

bb.z:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %.sroa.018.0 = phi ptr [ %i.fc, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %i.bw, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ]
  ret ptr %.sroa.018.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !669, !nonnull !86, !align !244
  %i.b = load i32, ptr %i.a, align 4, !tbaa !317  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !143  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !139
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !191
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !143 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !138
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !143
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !143  ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !139
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !136
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s), !inline_history !191
  %.pre.i.i6 = load i64, ptr %i.q, align 8, !tbaa !143 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

_ZN3fmt3v1214basic_appenderIcEaSEc.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ]
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !138
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !143
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !671, !nonnull !86
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !325, !range !85, !noundef !86
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !672, !nonnull !86
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !143 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !139
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !136
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj), !inline_history !191
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !143 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

_ZN3fmt3v1214basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !138
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !143
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !673, !nonnull !86, !align !244
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !143 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !139
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !136
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax), !inline_history !345
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !143 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bb = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !138
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !143
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 48, ptr %i.bd, align 1, !tbaa !9
  %i.be = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !341

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !674, !nonnull !86, !align !265
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !373
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !675, !nonnull !86, !align !244
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %1, i64 noundef %i.bh, i32 noundef %i.bk)
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %.sroa.03.0 = phi ptr [ %i.bl, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8 ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %"class.fmt::v12::basic_string_view", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.anon.88, align 8             ; 6 uses
  %6 = alloca %class.anon.89, align 8             ; 6 uses
  store ptr %1, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.f = load i32, ptr %3, align 4, !tbaa !167
  %i.g = and i32 %i.f, 7
  %i.h = icmp eq i32 %i.g, 1                      ; 3 uses
  %i.i = zext i1 %i.h to i8
  store i8 %i.i, ptr %i.a, align 1, !tbaa !325
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !169  ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %7, label %11

7:                                                ; preds = %bb.a
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = load i32, ptr %8, align 4, !tbaa !218
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %bb.b, label %.thread

.thread:                                          ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  br label %bb.i

bb.b:                                             ; preds = %7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !143
  %i.o = add i64 %i.n, %2                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !139
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !136
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o), !inline_history !219
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.b, %bb.c
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.u = tail call ptr @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr nonnull %0, ptr %1, i64 %2)
  br label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit

bb.e:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not31.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.e
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i.i = load i64, ptr %i.m, align 8, !tbaa !143
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.y = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.be, %._crit_edge.i.i.i ] ; 3 uses
  %.02532.i.i.i = phi ptr [ %1, %.lr.ph34.i.i.i ], [ %i.bf, %._crit_edge.i.i.i ] ; 9 uses
  %i.z = load i64, ptr %i.p, align 8, !tbaa !139
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = ptrtoint ptr %.02532.i.i.i to i64       ; 2 uses
  %i.ac = sub i64 %i.w, %i.ab                     ; 4 uses
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.af = add i64 %i.ac, %i.y
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af), !inline_history !676
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !143 ; 2 uses
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !139
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.027.i.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %.026.i.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.ac, %bb.f ] ; 13 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !138   ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.027.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.026.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %.026.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = add i64 %.027.i.i.i, %i.al
  %i.ao = sub i64 %i.an, %i.ab
  %diff.check = icmp ult i64 %i.ao, 32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check25 = icmp ult i64 %.026.i.i.i, 32
  br i1 %min.iters.check25, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i.i, 28
  %n.vec = and i64 %.026.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <16 x i8>, ptr %i.ap, align 1, !tbaa !9
  %wide.load26 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <16 x i8> %wide.load, ptr %i.ar, align 1, !tbaa !9
  store <16 x i8> %wide.load26, ptr %i.as, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !677

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !194

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %.026.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %index29
  %wide.load30 = load <4 x i8>, ptr %i.au, align 1, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %index29
  store <4 x i8> %wide.load30, ptr %i.av, align 1, !tbaa !9
  %index.next31 = add nuw i64 %index29, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next31, %n.vec28
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !678

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %.026.i.i.i, %n.vec28
  br i1 %cmp.n32, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.ba, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i.prol
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i.i.prol
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !9
  %i.ba = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !679

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.i.prol ]
  %i.bb = sub i64 %.030.i.i.i.ph, %.026.i.i.i
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.m, align 8, !tbaa !143
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.h
  %i.bd = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.027.i.i.i, %bb.h ]
  %i.be = add i64 %i.bd, %.026.i.i.i              ; 2 uses
  store i64 %i.be, ptr %i.m, align 8, !tbaa !143
  %i.bf = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.026.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.v
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit, label %bb.f, !llvm.loop !198

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %.030.i.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !9
  %i.bj = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !9
  %i.bn = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !9
  %i.br = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02532.i.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !9
  %i.bv = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.bv, %.026.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !680

11:                                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %12 = zext nneg i32 %i.k to i64
  br label %bb.i

bb.i:                                             ; preds = %.thread, %11
  %13 = phi i64 [ %12, %11 ], [ -1, %.thread ]
  store i64 %13, ptr %i.b, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.bw = icmp ne i32 %i.k, 0
  %narrow = and i1 %i.h, %i.bw
  %not. = zext i1 %narrow to i64                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 %not., ptr %i.c, align 8, !tbaa !144
  store i64 %not., ptr %i.d, align 8, !tbaa !144
  store ptr %i.a, ptr %5, align 8, !tbaa !326
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %i.bx, align 8, !tbaa !681
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.by, align 8, !tbaa !681
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.bz, align 8, !tbaa !681
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.ca, align 8, !tbaa !683
  call void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %1, i64 %2, ptr noundef nonnull byval(%class.anon.88) align 8 %5)
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !144 ; 2 uses
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.cd = load i8, ptr %i.a, align 1, !tbaa !325, !range !85, !noundef !86
  store i8 %i.cd, ptr %6, align 8, !tbaa !685
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cb, ptr %i.ce, align 8, !tbaa !687
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !688
  %i.cg = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.cb, i64 noundef %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit

_ZN3fmt3v126detail4copyIccNS0_14basic_appenderIcEEEET1_NS0_17basic_string_viewIT0_EES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.d, %bb.i
  %.sroa.019.1 = phi ptr [ %i.cg, %bb.i ], [ %i.u, %bb.d ], [ %0, %bb.e ], [ %0, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret ptr %.sroa.019.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %0, ptr %1, i64 %2) local_unnamed_addr #9 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !inline_history !191
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !143 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !138
  store i64 %.pre-phi.i.i, ptr %i.a, align 8, !tbaa !143
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 34, ptr %i.k, align 1, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = ptrtoint ptr %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.sroa.022.0 = phi ptr [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %i.bv, %bb.g ] ; 7 uses
  %.0 = phi ptr [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %i.bu, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.l, ptr %3, align 8, !tbaa !275, !alias.scope !689
  store ptr null, ptr %i.m, align 8, !tbaa !277, !alias.scope !689
  store i32 0, ptr %i.n, align 8, !tbaa !278, !alias.scope !689
  %i.p = ptrtoint ptr %.0 to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0, i64 %i.q, ptr nonnull align 8 %3)
  %i.r = load ptr, ptr %3, align 8, !tbaa !275    ; 3 uses
  %.not31.i.i = icmp eq ptr %.0, %i.r
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 16 ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %.pre.i.i13 = load i64, ptr %i.s, align 8, !tbaa !143
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph34.i.i ], [ %i.bc, %._crit_edge.i.i ] ; 3 uses
  %.02532.i.i = phi ptr [ %.0, %.lr.ph34.i.i ], [ %i.bd, %._crit_edge.i.i ] ; 9 uses
  %i.x = load i64, ptr %i.t, align 8, !tbaa !139
  %i.y = sub i64 %i.x, %i.w
  %i.z = ptrtoint ptr %.02532.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 4 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !136
  %i.ad = add i64 %i.aa, %i.w
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.ad), !inline_history !220
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !143 ; 2 uses
  %i.af = load i64, ptr %i.t, align 8, !tbaa !139
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.027.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %.026.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.aa, %bb.d ] ; 13 uses
  %i.ai = load ptr, ptr %.sroa.022.0, align 8, !tbaa !138 ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.027.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.026.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.026.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %.027.i.i, %i.aj
  %i.am = sub i64 %i.al, %i.z
  %diff.check = icmp ult i64 %i.am, 32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %.026.i.i, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i, 28
  %n.vec = and i64 %.026.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <16 x i8>, ptr %i.an, align 1, !tbaa !9
  %wide.load41 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %wide.load, ptr %i.ap, align 1, !tbaa !9
  store <16 x i8> %wide.load41, ptr %i.aq, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !692

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !194

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %.026.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index44
  %wide.load45 = load <4 x i8>, ptr %i.as, align 1, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index44
  store <4 x i8> %wide.load45, ptr %i.at, align 1, !tbaa !9
  %index.next46 = add nuw i64 %index44, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next46, %n.vec43
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !693

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %.026.i.i, %n.vec43
  br i1 %cmp.n47, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec43, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i.prol
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i.prol
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !9
  %i.ay = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !694

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.prol ]
  %i.az = sub i64 %.030.i.i.ph, %.026.i.i
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i
end_hunk_0
