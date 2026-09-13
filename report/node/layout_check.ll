Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/layout_check?download=true
inline.NumInlined: 3923
inline.NumDeleted: 1315
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_:bb.a
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = lshr i32 %i.et, %i.ev                   ; 4 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.du
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = icmp ult i32 %i.ew, %i.ey
  %i.fa = select i1 %i.ez, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ew, 2147481600
  %i.fb = icmp eq i32 %.mask.i.i35, 55296
  %i.fc = select i1 %i.fb, i32 128, i32 0
  %i.fd = icmp samesign ugt i32 %i.ew, 1114111
  %i.fe = select i1 %i.fd, i32 256, i32 0
  %i.ff = lshr i8 %i.ee, 2
  %i.fg = and i8 %i.ff, 48
  %i.fh = lshr i8 %i.ek, 4
  %i.fi = and i8 %i.fh, 12
  %i.fj = lshr i8 %i.eq, 6
  %i.fk = or disjoint i8 %i.fi, %i.fg
  %i.fl = or disjoint i8 %i.fk, %i.fj
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fa, %i.fm
  %i.fo = or disjoint i32 %i.fn, %i.fe
  %i.fp = or disjoint i32 %i.fo, %i.fc
  %i.fq = xor i32 %i.fp, 42
  %i.fr = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.du
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = lshr i32 %i.fq, %i.fs
  %.not.i36 = icmp eq i32 %i.ft, 0                ; 3 uses
  %i.fu = select i1 %.not.i36, i32 %i.ew, i32 -1  ; 4 uses
  %i.fv = icmp ult i32 %i.fu, 32
  br i1 %i.fv, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread, label %switch.early.test.i.i.i37

switch.early.test.i.i.i37:                        ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  switch i32 %i.fu, label %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i41 [
    i32 127, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 92, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 34, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  ]

_ZN3fmt3v116detail12needs_escapeEj.exit.i.i41:    ; preds = %switch.early.test.i.i.i37
  %i.fw = call noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %i.fu)
  br i1 %i.fw, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i41
  %i.fx = add nsw i64 %i.dx, %i.du
  %i.fy = select i1 %.not.i36, i64 %i.fx, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.3, i64 %i.fy
  store ptr %.3, ptr %2, align 8
  store ptr %i.fz, ptr %.sroa.4.0..sroa_idx.i.i39, align 8
  store i32 %i.fu, ptr %.sroa.5.0..sroa_idx.i.i40, align 8
  br label %.loopexit75

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42: ; preds = %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i41
  %i.ga = select i1 %.not.i36, ptr %i.dy, ptr %i.ed ; 3 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %.0 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %i.gd
  %i.ge = icmp ult ptr %i.ga, %i.dn
  br i1 %i.ge, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, label %.loopexit75, !llvm.loop !716

.loopexit75:                                      ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.thread

.thread:                                          ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, %.loopexit75, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = lshr i32 %i.b, 3                         ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @.str.169, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sext i8 %i.f to i64                      ; 5 uses
  %i.h = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, %i.b
  %i.k = shl nuw nsw i32 %i.j, 18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = zext nneg i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 12
  %i.q = or disjoint i32 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = and i8 %i.s, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 6
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = and i8 %i.y, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.w, %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.g
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = lshr i32 %i.ab, %i.ad                   ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.g
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp ult i32 %i.ae, %i.ag
  %i.ai = select i1 %i.ah, i32 64, i32 0
  %.mask.i = and i32 %i.ae, 2147481600
  %i.aj = icmp eq i32 %.mask.i, 55296
  %i.ak = select i1 %i.aj, i32 128, i32 0
  %i.al = icmp samesign ugt i32 %i.ae, 1114111
  %i.am = select i1 %i.al, i32 256, i32 0
  %i.an = lshr i8 %i.m, 2
  %i.ao = and i8 %i.an, 48
  %i.ap = lshr i8 %i.s, 4
  %i.aq = and i8 %i.ap, 12
  %i.ar = lshr i8 %i.y, 6
  %i.as = or disjoint i8 %i.aq, %i.ao
  %i.at = or disjoint i8 %i.as, %i.ar
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.ai, %i.au
  %i.aw = or disjoint i32 %i.av, %i.am
  %i.ax = or disjoint i32 %i.aw, %i.ak
  %i.ay = xor i32 %i.ax, 42
  %i.az = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.g
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = lshr i32 %i.ay, %i.ba
  %.not = icmp eq i32 %i.bb, 0                    ; 2 uses
  %i.bc = select i1 %.not, i32 %i.ae, i32 -1      ; 7 uses
  %i.bd = icmp ugt i32 %i.bc, 4351
  br i1 %i.bd, label %bb.b, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.be = icmp ult i32 %i.bc, 4448
  %i.bf = add nsw i32 %i.bc, -9001
  %i.bg = icmp ult i32 %i.bf, 2
  %or.cond3.i = or i1 %i.be, %i.bg
  br i1 %or.cond3.i, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = add nsw i32 %i.bc, -11904
  %or.cond5.i = icmp ult i32 %i.bh, 30288
  %i.bi = icmp ne i32 %i.bc, 12351
  %or.cond7.i = and i1 %i.bi, %or.cond5.i
  %i.bj = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.bk = shufflevector <2 x i32> %i.bj, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bl = and <8 x i32> %i.bk, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -65538, i32 -1>
  %i.bm = add <8 x i32> %i.bl, <i32 -44032, i32 -63744, i32 -65040, i32 -65072, i32 -65280, i32 -65504, i32 -131072, i32 -127744>
  %i.bn = icmp ult <8 x i32> %i.bm, <i32 11172, i32 512, i32 10, i32 64, i32 97, i32 7, i32 65534, i32 848>
  %i.bo = bitcast <8 x i1> %i.bn to i8
  %i.bp = icmp ne i8 %i.bo, 0
  %op.rdx = or i1 %i.bp, %or.cond7.i
  br i1 %op.rdx, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = and i32 %i.bc, -256
  %i.br = icmp eq i32 %i.bq, 129280
  %i.bs = select i1 %i.br, i64 2, i64 1
  br label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit

_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.bt = phi i64 [ 1, %bb.a ], [ 2, %bb.c ], [ 2, %bb.b ], [ %i.bs, %bb.d ]
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.g
  %.not.i = lshr i32 -2130771968, %i.c
  %i.bv = and i32 %.not.i, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = load ptr, ptr %0, align 8               ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = add i64 %i.bz, %i.bt
  store i64 %i.ca, ptr %i.by, align 8
  %i.cb = select i1 %.not, ptr %i.bx, ptr %i.l
  ret ptr %i.cb
}

declare void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef) local_unnamed_addr #3

declare void @_ZN4LIEF11swap_endianImEEvPT_(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 35 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr27 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr26, i64 8 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEET_SH_SH_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph42, !llvm.loop !717

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.hc, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %.fr27, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i25.lcssa, 3               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i25.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", %._crit_edge
  %.09.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.bh, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.09.i.i.i
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %i.aa) #23, !inline_history !718
  %i.ag = load ptr, ptr %i.ab, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #23, !inline_history !718
  %i.ak = icmp ult i64 %i.af, %i.aj
  %spec.select.i.i.i.i = select i1 %i.ak, i64 %i.y, i64 %i.w ; 4 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.034.i.i.i.i
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !719

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ap = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  %or.cond.i.i.i = select i1 %i.o, i1 %i.ap, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = load ptr, ptr %i.q, align 8
  store ptr %i.aq, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ar = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %i.at) #23, !inline_history !720
  %i.ay = load ptr, ptr %i.t, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(64) %i.t) #23, !inline_history !720
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bd = load ptr, ptr %i.as, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.010.i.i.i.i.i
  store ptr %i.bd, ptr %i.be, align 8
  %i.bf = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", !llvm.loop !721

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.t, ptr %i.bg, align 8
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bh = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_RT0_.exit.i.i", label %bb.c, !llvm.loop !722

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i25.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_RT0_.exit.i19.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bi, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_RT0_.exit.i19.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_RT0_.exit.i.i" ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.bk = load ptr, ptr %.fr26, align 8
  store ptr %i.bk, ptr %i.bi, align 8
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bl, %i.a                     ; 3 uses
  %i.bn = ashr exact i64 %i.bm, 3                 ; 3 uses
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = lshr i64 %i.bo, 1
  %i.bq = icmp sgt i64 %i.bn, 2
  br i1 %i.bq, label %.lr.ph.i.i.i23.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i23.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i23.i
  %.034.i.i.i24.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i23.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.br = shl i64 %.034.i.i.i24.i, 1              ; 2 uses
  %i.bs = add i64 %i.br, 2                        ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.bs
  %i.bu = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.bu
  %i.bw = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.by = load ptr, ptr %i.bw, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(64) %i.bw) #23, !inline_history !723
  %i.cc = load ptr, ptr %i.bx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef i64 %i.ce(ptr noundef nonnull align 8 dereferenceable(64) %i.bx) #23, !inline_history !723
  %i.cg = icmp ult i64 %i.cb, %i.cf
  %spec.select.i.i.i25.i = select i1 %i.cg, i64 %i.bu, i64 %i.bs ; 4 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %spec.select.i.i.i25.i
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.034.i.i.i24.i
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = icmp slt i64 %spec.select.i.i.i25.i, %i.bp
  br i1 %i.ck, label %.lr.ph.i.i.i23.i, label %._crit_edge.i.i.i10.i, !llvm.loop !719

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i23.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i23.i ] ; 5 uses
  %i.cl = and i64 %i.bm, 8
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cn = add nsw i64 %i.bn, -2
  %i.co = ashr exact i64 %i.cn, 1
  %i.cp = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.co
  br i1 %i.cp, label %.thread.i.i22.i, label %bb.h

.thread.i.i22.i:                                  ; preds = %bb.g
  %i.cq = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cr = or disjoint i64 %i.cq, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.ct, ptr %i.cu, align 8
  br label %.lr.ph.i.i.i.i15.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_RT0_.exit.i19.i", label %.lr.ph.i.i.i.i15.i.preheader

.lr.ph.i.i.i.i15.i.preheader:                     ; preds = %bb.h, %.thread.i.i22.i
  %.010.i.i.i.i16.i.ph = phi i64 [ %.0.lcssa.i.i.i11.i, %bb.h ], [ %i.cr, %.thread.i.i22.i ]
  br label %.lr.ph.i.i.i.i15.i

.lr.ph.i.i.i.i15.i:                               ; preds = %.lr.ph.i.i.i.i15.i.preheader, %bb.i
  %.010.i.i.i.i16.i = phi i64 [ %.0911.i.i56.i.i18.i, %bb.i ], [ %.010.i.i.i.i16.i.ph, %.lr.ph.i.i.i.i15.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i17.i = add nsw i64 %.010.i.i.i.i16.i, -1
  %.0911.i.i56.i.i18.i = lshr i64 %.0911.in.i.i.i.i17.i, 1 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0911.i.i56.i.i18.i ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = tail call noundef i64 %i.cz(ptr noundef nonnull align 8 dereferenceable(64) %i.cw) #23, !inline_history !724
  %i.db = load ptr, ptr %i.bj, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef i64 %i.dd(ptr noundef nonnull align 8 dereferenceable(64) %i.bj) #23, !inline_history !724
  %i.df = icmp ult i64 %i.da, %i.de
  br i1 %i.df, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_RT0_.exit.i19.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i15.i
  %i.dg = load ptr, ptr %i.cv, align 8
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.010.i.i.i.i16.i
  store ptr %i.dg, ptr %i.dh, align 8
  %.not7.i.i21.i = icmp eq i64 %.0911.i.i56.i.i18.i, 0
  br i1 %.not7.i.i21.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_RT0_.exit.i19.i", label %.lr.ph.i.i.i.i15.i, !llvm.loop !721

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_RT0_.exit.i19.i": ; preds = %bb.i, %.lr.ph.i.i.i.i15.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i16.i, %.lr.ph.i.i.i.i15.i ], [ 0, %bb.i ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i20.i
  store ptr %i.bj, ptr %i.di, align 8
  %i.dj = icmp sgt i64 %i.bm, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !725

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2341 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr27, %.lr.ph ] ; 3 uses
  %.02440 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.hd, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02440, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.dm ; 7 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 7 uses
  %i.dp = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.dq = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dr = load ptr, ptr %i.dp, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = tail call noundef i64 %i.dt(ptr noundef nonnull align 8 dereferenceable(64) %i.dp) #23, !inline_history !726
  %i.dv = load ptr, ptr %i.dq, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = tail call noundef i64 %i.dx(ptr noundef nonnull align 8 dereferenceable(64) %i.dq) #23, !inline_history !726
  %i.dz = icmp ult i64 %i.du, %i.dy
  %i.ea = load ptr, ptr %i.do, align 8            ; 4 uses
  br i1 %i.dz, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.eb = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = tail call noundef i64 %i.ee(ptr noundef nonnull align 8 dereferenceable(64) %i.eb) #23, !inline_history !726
  %i.eg = load ptr, ptr %i.ea, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = tail call noundef i64 %i.ei(ptr noundef nonnull align 8 dereferenceable(64) %i.ea) #23, !inline_history !726
  %i.ek = icmp ult i64 %i.ef, %i.ej
  br i1 %i.ek, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.el = load ptr, ptr %.fr26, align 8
  %i.em = load ptr, ptr %i.dn, align 8
  store ptr %i.em, ptr %.fr26, align 8
  store ptr %i.el, ptr %i.dn, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.en = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.eo = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.ep = load ptr, ptr %i.en, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 80
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = tail call noundef i64 %i.er(ptr noundef nonnull align 8 dereferenceable(64) %i.en) #23, !inline_history !726
  %i.et = load ptr, ptr %i.eo, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 80
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = tail call noundef i64 %i.ev(ptr noundef nonnull align 8 dereferenceable(64) %i.eo) #23, !inline_history !726
  %i.ex = icmp ult i64 %i.es, %i.ew
  %i.ey = load ptr, ptr %.fr26, align 8           ; 2 uses
  br i1 %i.ex, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ez = load ptr, ptr %i.do, align 8
  store ptr %i.ez, ptr %.fr26, align 8
  store ptr %i.ey, ptr %i.do, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.fa = load ptr, ptr %i.f, align 8
  store ptr %i.fa, ptr %.fr26, align 8
  store ptr %i.ey, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph42
  %i.fb = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = tail call noundef i64 %i.fe(ptr noundef nonnull align 8 dereferenceable(64) %i.fb) #23, !inline_history !726
  %i.fg = load ptr, ptr %i.ea, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call noundef i64 %i.fi(ptr noundef nonnull align 8 dereferenceable(64) %i.ea) #23, !inline_history !726
  %i.fk = icmp ult i64 %i.ff, %i.fj
  br i1 %i.fk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fl = load <2 x ptr>, ptr %.fr26, align 8
  %i.fm = shufflevector <2 x ptr> %i.fl, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.fm, ptr %.fr26, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.fn = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.fo = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.fp = load ptr, ptr %i.fn, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = tail call noundef i64 %i.fr(ptr noundef nonnull align 8 dereferenceable(64) %i.fn) #23, !inline_history !726
  %i.ft = load ptr, ptr %i.fo, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 80
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = tail call noundef i64 %i.fv(ptr noundef nonnull align 8 dereferenceable(64) %i.fo) #23, !inline_history !726
  %i.fx = icmp ult i64 %i.fs, %i.fw
  %i.fy = load ptr, ptr %.fr26, align 8           ; 2 uses
  br i1 %i.fx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fz = load ptr, ptr %i.do, align 8
  store ptr %i.fz, ptr %.fr26, align 8
  store ptr %i.fy, ptr %i.do, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.ga = load ptr, ptr %i.dn, align 8
  store ptr %i.ga, ptr %.fr26, align 8
  store ptr %i.fy, ptr %i.dn, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.gm, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2341, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.gm, %bb.t ] ; 9 uses
  %i.gb = load ptr, ptr %.sroa.010.1.i.i, align 8 ; 2 uses
  %i.gc = load ptr, ptr %.fr26, align 8           ; 2 uses
  %i.gd = load ptr, ptr %i.gb, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = tail call noundef i64 %i.gf(ptr noundef nonnull align 8 dereferenceable(64) %i.gb) #23, !inline_history !727
  %i.gh = load ptr, ptr %i.gc, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 80
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = tail call noundef i64 %i.gj(ptr noundef nonnull align 8 dereferenceable(64) %i.gc) #23, !inline_history !727
  %i.gl = icmp ult i64 %i.gg, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.gl, label %bb.t, label %.preheader.i.i, !llvm.loop !728

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %i.gn = load ptr, ptr %.fr26, align 8           ; 2 uses
  %i.go = load ptr, ptr %.sroa.0.1.i.i, align 8   ; 2 uses
  %i.gp = load ptr, ptr %i.gn, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 80
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = tail call noundef i64 %i.gr(ptr noundef nonnull align 8 dereferenceable(64) %i.gn) #23, !inline_history !727
  %i.gt = load ptr, ptr %i.go, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 80
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = tail call noundef i64 %i.gv(ptr noundef nonnull align 8 dereferenceable(64) %i.go) #23, !inline_history !727
  %i.gx = icmp ult i64 %i.gs, %i.gw
  br i1 %i.gx, label %.preheader.i.i, label %bb.u, !llvm.loop !729

bb.u:                                             ; preds = %.preheader.i.i
  %i.gy = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.gy, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEET_SH_SH_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.gz = load ptr, ptr %.sroa.010.1.i.i, align 8
  %i.ha = load ptr, ptr %.sroa.0.1.i.i, align 8
  store ptr %i.ha, ptr %.sroa.010.1.i.i, align 8
  store ptr %i.gz, ptr %.sroa.0.1.i.i, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !730

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEET_SH_SH_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2341, i64 noundef %i.dl)
  %i.hb = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.hc = sub i64 %i.hb, %i.a                     ; 2 uses
  %i.hd = ashr exact i64 %i.hc, 3                 ; 2 uses
  %i.he = icmp sgt i64 %i.hd, 16
  br i1 %i.he, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !717

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_SH_RT0_.exit.i19.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_0EEEvT_SH_RT0_.exit.i.i"
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { cold nounwind }
attributes #30 = { cold }

!llvm.module.flags = !{!34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !{!0, !40}
!1 = distinct !{!1, !40}
!2 = distinct !{!2, !40}
!3 = distinct !{null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{null, null, null}
!6 = distinct !{!6, !40}
!7 = distinct !{!7, !40}
!8 = distinct !{!8, !40}
!9 = distinct !{!9, !40}
!10 = distinct !{null, null}
!11 = distinct !{null, null, null}
!12 = distinct !{!12, !40}
!13 = distinct !{!13, !40}
!14 = distinct !{!14, !40}
!15 = distinct !{null, null, null}
!16 = distinct !{!16, !40}
!17 = distinct !{null, null, null, null}
!18 = distinct !{!18, !40}
!19 = distinct !{!19, !40}
!20 = distinct !{null, null}
!21 = distinct !{null, null}
!22 = distinct !{null, null}
!23 = distinct !{!23, !40}
!24 = distinct !{null, null, null}
!25 = distinct !{null, null, null, null, null}
!26 = distinct !{!26, !40}
!27 = distinct !{null, null, null, null}
!28 = distinct !{!28, !40}
!29 = distinct !{!29, !40}
!30 = distinct !{null, null, null, null}
!31 = distinct !{null, null, null, null}
!32 = distinct !{!32, !40}
!33 = distinct !{!33, !40}
!34 = !{i32 8, !"PIC Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 2}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!38 = !{}
!39 = !{i64 8}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{i8 0, i8 2}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"branch_weights", i32 4, i32 28}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{ptr @_ZN3fmt3v1112format_facetISt6localeED2Ev}
!47 = !{i64 4}
!48 = !{!"branch_weights", i32 8, i32 24}
!49 = distinct !{!49, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE5beginEv"}
!50 = distinct !{!50, !49, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE5beginEv: argument 0"}
!51 = distinct !{!51, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE3endEv"}
!52 = distinct !{!52, !51, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE3endEv: argument 0"}
!53 = distinct !{!53, !"_ZSt19__relocate_object_aIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tS3_SaIS3_EEvPT_PT0_RT1_"}
!54 = distinct !{!54, !53, !"_ZSt19__relocate_object_aIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tS3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!55 = distinct !{!55, !53, !"_ZSt19__relocate_object_aIZN4LIEF5MachO13LayoutChecker18check_initializersEvE7range_tS3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO11LoadCommandESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE5beginEv"}
!58 = distinct !{!58, !57, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO11LoadCommandESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE5beginEv: argument 0"}
!59 = distinct !{!59, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO11LoadCommandESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE3endEv"}
!60 = distinct !{!60, !59, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO11LoadCommandESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE3endEv: argument 0"}
!61 = distinct !{!61, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE5beginEv"}
!62 = distinct !{!62, !61, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE5beginEv: argument 0"}
!63 = distinct !{!63, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE3endEv"}
!64 = distinct !{!64, !63, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE3endEv: argument 0"}
!65 = distinct !{null}
!66 = distinct !{null}
!67 = distinct !{null, null}
!68 = distinct !{!68, !40}
!69 = distinct !{null, null}
!70 = distinct !{!70, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE5beginEv"}
!71 = distinct !{!71, !70, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE5beginEv: argument 0"}
!72 = distinct !{!72, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE3endEv"}
!73 = distinct !{!73, !72, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE3endEv: argument 0"}
!74 = distinct !{!74, !40}
!75 = !{!50}
!76 = !{!52}
!77 = !{!55, !54}
!78 = !{!58}
!79 = !{!60}
!80 = !{!62}
!81 = !{!64}
!82 = !{!71}
!83 = !{!73}
!84 = distinct !{!84, !"_ZN3fmt3v116formatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!85 = distinct !{!85, !84, !"_ZN3fmt3v116formatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!86 = distinct !{!86, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!87 = distinct !{!87, !86, !"_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!88 = distinct !{!88, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!89 = distinct !{!89, !88, !"_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!90 = !{!85}
!91 = !{!87}
!92 = !{!89}
!93 = !{!89, !87}
!94 = distinct !{!94, !40}
end_hunk_0
