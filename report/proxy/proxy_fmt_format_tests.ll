Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_fmt_format_tests?download=true
inline.NumInlined: 3116
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.42) #31
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.41) #31
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !71
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

declare noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr, ptr noundef byval(%"class.fmt::v12::loc_value") align 16, ptr noundef nonnull align 4 dereferenceable(16), ptr) local_unnamed_addr #0

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #13 comdat {
bb.a:
  %3 = alloca %class.anon.39, align 1             ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  %.sroa.039.0.extract.trunc.i = trunc i64 %1 to i32 ; 7 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %1, 32    ; 4 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load i32, ptr %2, align 4, !tbaa !121    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i10
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i32 %.sroa.039.0.extract.trunc.i, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.f, %.lr.ph.i ], [ 32, %bb.b ]
  %.01819.i = phi i32 [ %i.n, %.lr.ph.i ], [ %.sroa.039.0.extract.trunc.i, %bb.b ] ; 3 uses
  %i.f = add i32 %.020.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = urem i32 %.01819.i, 100
  %i.j = shl nuw nsw i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  store i16 %i.m, ptr %i.h, align 2
  %i.n = udiv i32 %.01819.i, 100                  ; 2 uses
  %i.o = icmp ugt i32 %.01819.i, 9999
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i32 [ %.sroa.039.0.extract.trunc.i, %bb.b ], [ %i.n, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 32, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.p = icmp samesign ugt i32 %.018.lcssa.i, 9
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.q = add i32 %.0.lcssa.i, -2
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.t = shl nuw nsw i32 %.018.lcssa.i, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = trunc nuw nsw i32 %.018.lcssa.i to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = add i32 %.0.lcssa.i, -1
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !76
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.ac = and i32 %i.b, 4096
  %.not36 = icmp eq i32 %i.ac, 0                  ; 2 uses
  %.str.36..str.37.i = select i1 %.not36, ptr @.str.37, ptr @.str.36
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i32 [ %i.ah, %.split.i ], [ %.sroa.039.0.extract.trunc.i, %bb.e ] ; 2 uses
  %.0.i5.idx = phi i64 [ %.0.i5.add, %.split.i ], [ 32, %bb.e ]
  %i.ad = and i32 %.012.i, 15
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.str.36..str.37.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !76
  %.0.i5.add = add nsw i64 %.0.i5.idx, -1         ; 4 uses
  %.ptr41 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i5.add
  store i8 %i.ag, ptr %.ptr41, align 1, !tbaa !76
  %i.ah = lshr i32 %.012.i, 4                     ; 2 uses
  %.not.i6 = icmp eq i32 %i.ah, 0
  br i1 %.not.i6, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !4

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.ai = and i32 %i.b, 8192
  %.not37 = icmp eq i32 %i.ai, 0
  br i1 %.not37, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.aj = select i1 %.not36, i32 30768, i32 22576 ; 2 uses
  %.not.i7 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = select i1 %.not.i7, i32 %i.aj, i32 %i.ak
  %i.am = or i32 %i.al, %.sroa.2.0.extract.trunc.i
  %i.an = add i32 %i.am, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i32 [ %i.ar, %.split.us.i ], [ %.sroa.039.0.extract.trunc.i, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 32, %bb.a ] ; 2 uses
  %i.ao = trunc i32 %.012.us.i to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = or disjoint i8 %i.ap, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr40 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.aq, ptr %.ptr40, align 1, !tbaa !76
  %i.ar = lshr i32 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i32 %i.ar, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, label %.split.us.i, !llvm.loop !4

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8: ; preds = %.split.us.i
  %i.as = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8
  %gepdiff = sub nsw i64 33, %.0.us.i.idx
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !123
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp sge i64 %gepdiff, %i.av
  %i.ax = icmp ne i32 %.sroa.039.0.extract.trunc.i, 0
  %or.cond.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i9 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.ay = select i1 %.not.i9, i32 48, i32 12288
  %i.az = or i32 %i.ay, %.sroa.2.0.extract.trunc.i
  %i.ba = add i32 %i.az, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

.split.us.i10:                                    ; preds = %bb.a, %.split.us.i10
  %.012.us.i11 = phi i32 [ %i.be, %.split.us.i10 ], [ %.sroa.039.0.extract.trunc.i, %bb.a ] ; 2 uses
  %.0.us.i12.idx = phi i64 [ %.0.us.i12.add, %.split.us.i10 ], [ 32, %bb.a ]
  %i.bb = trunc i32 %.012.us.i11 to i8
  %i.bc = and i8 %i.bb, 1
  %i.bd = or disjoint i8 %i.bc, 48
  %.0.us.i12.add = add nsw i64 %.0.us.i12.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i12.add
  store i8 %i.bd, ptr %.ptr, align 1, !tbaa !76
  %i.be = lshr i32 %.012.us.i11, 1                ; 2 uses
  %.not.us.i13 = icmp eq i32 %i.be, 0
  br i1 %.not.us.i13, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, label %.split.us.i10, !llvm.loop !4

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14: ; preds = %.split.us.i10
  %i.bf = and i32 %i.b, 8192
  %.not38 = icmp eq i32 %i.bf, 0
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14
  %4 = and i32 %i.b, 4096
  %.not39 = icmp eq i32 %4, 0
  %5 = select i1 %.not39, i32 25136, i32 16944    ; 2 uses
  %.not.i15 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.bg = shl nuw nsw i32 %5, 8
  %i.bh = select i1 %.not.i15, i32 %5, i32 %i.bg
  %i.bi = or i32 %i.bh, %.sroa.2.0.extract.trunc.i
  %i.bj = add i32 %i.bi, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bk = trunc i64 %1 to i8
  %i.bl = and i32 %i.b, 7
  %i.bm = icmp eq i32 %i.bl, 1
  %i.bn = zext i1 %i.bm to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 %i.bn, ptr %3, align 1, !tbaa !143
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.bk, ptr %i.bo, align 1, !tbaa !144
  %i.bp = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %i.an, %bb.f ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %i.ba, %bb.h ], [ %.sroa.2.0.extract.trunc.i, %bb.g ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %i.bj, %bb.i ], [ %.sroa.2.0.extract.trunc.i, %bb.c ], [ %.sroa.2.0.extract.trunc.i, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i12.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %.0.i5.add, %bb.f ], [ %.0.i5.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %.0.us.i12.add, %bb.i ], [ %i.r, %bb.c ], [ %i.aa, %bb.d ] ; 5 uses
  %i.bq = trunc i64 %.0.i.idx to i32
  %i.br = sub i32 32, %i.bq                       ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !145 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !123 ; 4 uses
  %i.bw = add nsw i32 %i.bv, 1
  %i.bx = or i32 %i.bw, %i.bt
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = lshr i32 %.0, 24                        ; 2 uses
  %i.ca = add i32 %i.br, %i.bz                    ; 4 uses
  br i1 %i.by, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !147
  %i.ce = add i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !148
  %i.ch = icmp ugt i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.l, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !149
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ce), !inline_history !5
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.k, %bb.l
  %i.ck = and i32 %.0, 16777215                   ; 2 uses
  %.not.i48 = icmp eq i32 %i.ck, 0
  br i1 %.not.i48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.not31.i.i = icmp eq i64 %.0.i.idx, 32
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load i64, ptr %i.cc, align 8, !tbaa !147
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.cn = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.da, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.co = load i64, ptr %i.cf, align 8, !tbaa !148
  %i.cp = sub i64 %i.co, %i.cn
  %gepdiff52 = sub nsw i64 32, %.02732.i.i.idx    ; 4 uses
  %i.cq = icmp ult i64 %i.cp, %gepdiff52
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !149
  %i.cs = add i64 %gepdiff52, %i.cn
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cs), !inline_history !6
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !147 ; 2 uses
  %i.cu = load i64, ptr %i.cf, align 8, !tbaa !148
  %i.cv = sub i64 %i.cu, %i.ct
  %i.cw = tail call i64 @llvm.umin.i64(i64 %gepdiff52, i64 %i.cv)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026.i.i = phi i64 [ %i.ct, %bb.n ], [ %i.cn, %bb.m ] ; 2 uses
  %.025.i.i = phi i64 [ %i.cw, %bb.n ], [ %gepdiff52, %bb.m ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.cx = load ptr, ptr %0, align 8, !tbaa !150
  %i.cy = getelementptr i8, ptr %i.cx, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !76
  %.pre37.i.i = load i64, ptr %i.cc, align 8, !tbaa !147
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.o
  %i.cz = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.o ]
  %i.da = add i64 %i.cz, %.025.i.i                ; 2 uses
  store i64 %i.da, ptr %i.cc, align 8, !tbaa !147
  %.02732.i.i.add = add nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 32
  br i1 %.not.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.m, !llvm.loop !7

bb.p:                                             ; preds = %.lr.ph, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.042.i49 = phi i32 [ %i.ck, %.lr.ph ], [ %i.dk, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ] ; 2 uses
  %i.db = trunc i32 %.042.i49 to i8
  %i.dc = load i64, ptr %i.cc, align 8, !tbaa !147 ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = load i64, ptr %i.cf, align 8, !tbaa !148
  %i.df = icmp ugt i64 %i.dd, %i.de
  br i1 %i.df, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.q:                                             ; preds = %bb.p
  %i.dg = load ptr, ptr %i.cl, align 8, !tbaa !149
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dd), !inline_history !8
  %.pre.i.i16 = load i64, ptr %i.cc, align 8, !tbaa !147 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.p, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.dd, %bb.p ], [ %.pre2.i.i, %bb.q ]
  %i.dh = phi i64 [ %i.dc, %bb.p ], [ %.pre.i.i16, %bb.q ]
  %i.di = load ptr, ptr %0, align 8, !tbaa !150
  store i64 %.pre-phi.i.i, ptr %i.cc, align 8, !tbaa !147
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 %i.db, ptr %i.dj, align 1, !tbaa !76
  %i.dk = lshr i32 %.042.i49, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i, label %._crit_edge, label %bb.p, !llvm.loop !331

bb.r:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.dl = and i32 %i.b, 56
  %i.dm = icmp eq i32 %i.dl, 32
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.bt, i32 %i.ca)
  %spec.select35 = tail call i32 @llvm.umax.i32(i32 %i.bt, i32 %i.ca)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.t:                                             ; preds = %bb.r
  %i.dn = icmp sgt i32 %i.bv, %i.br
  br i1 %i.dn, label %bb.u, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.u:                                             ; preds = %bb.t
  %i.do = add i32 %i.bv, %i.bz
  %i.dp = sub nsw i32 %i.bv, %i.br
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.626.0 = phi i32 [ 0, %bb.t ], [ %spec.select, %bb.s ], [ %i.dp, %bb.u ] ; 2 uses
  %.sroa.025.0 = phi i32 [ %i.ca, %bb.t ], [ %spec.select35, %bb.s ], [ %i.do, %bb.u ]
  %i.dq = zext i32 %.sroa.025.0 to i64            ; 2 uses
  %i.dr = zext i32 %i.bt to i64
  %i.ds = tail call i64 @llvm.usub.sat.i64(i64 %i.dr, i64 %i.dq) ; 4 uses
  %i.dt = lshr i32 %i.b, 3
  %i.du = and i32 %i.dt, 7
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @.str.39, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !76
  %i.dy = sext i8 %i.dx to i64
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = lshr i64 %i.ds, %i.dz                   ; 4 uses
  %i.eb = sub nsw i64 %i.ds, %i.ea
  %i.ec = lshr i32 %i.b, 15
  %i.ed = and i32 %i.ec, 7
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = mul nuw nsw i64 %i.ds, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !147
  %i.ei = add i64 %i.eh, %i.dq
  %i.ej = add i64 %i.ei, %i.ef                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !148
  %i.em = icmp ugt i64 %i.ej, %i.el
  br i1 %i.em, label %bb.v, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.v:                                             ; preds = %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !149
  tail call void %i.eo(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ej), !inline_history !332
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.v, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %.not.i.i17 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i17, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.ep = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.ea, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.ep, %bb.w ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ] ; 17 uses
  %i.eq = and i32 %.0, 16777215                   ; 2 uses
  %.not8.i = icmp eq i32 %i.eq, 0
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail9write_locENS0_14basic_appenderIwEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE:bb.a
bb.u:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3fmt3v126detail10loc_writerIwED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %8) #26
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit31: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i29, %bb.u, %bb.s
  %.pn10 = phi { ptr, i32 } [ %i.cr, %bb.u ], [ %i.ck, %bb.s ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i29 ], [ %i.cl, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit31, %bb.f
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit31 ], [ %i.z, %bb.f ] ; 2 uses
  %i.cs = load ptr, ptr %7, align 8, !tbaa !81    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.v
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !76
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.e
  %.pn10.pn.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %.pn10.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %.pn10.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.cx = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.g
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.cz = load i64, ptr %i.g, align 8, !tbaa !76
  %i.da = shl i64 %i.cz, 2
  %i.db = add i64 %i.da, 4
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit37, %bb.d
  %.pn10.pn.pn.pn = phi { ptr, i32 } [ %.pn10.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit37 ], [ %i.x, %bb.d ]
  resume { ptr, i32 } %.pn10.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail18write_int_noinlineIwNS0_14basic_appenderIwEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #13 comdat {
bb.a:
  %3 = alloca %class.anon.62, align 4             ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  %.sroa.039.0.extract.trunc.i = trunc i64 %1 to i32 ; 8 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %1, 32    ; 4 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load i32, ptr %2, align 4, !tbaa !121    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i10
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i32 %.sroa.039.0.extract.trunc.i, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.f, %.lr.ph.i ], [ 32, %bb.b ]
  %.01819.i = phi i32 [ %i.n, %.lr.ph.i ], [ %.sroa.039.0.extract.trunc.i, %bb.b ] ; 3 uses
  %i.f = add i32 %.020.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = urem i32 %.01819.i, 100
  %i.j = shl nuw nsw i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  store i16 %i.m, ptr %i.h, align 2
  %i.n = udiv i32 %.01819.i, 100                  ; 2 uses
  %i.o = icmp ugt i32 %.01819.i, 9999
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i32 [ %.sroa.039.0.extract.trunc.i, %bb.b ], [ %i.n, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 32, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.p = icmp samesign ugt i32 %.018.lcssa.i, 9
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.q = add i32 %.0.lcssa.i, -2
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.t = shl nuw nsw i32 %.018.lcssa.i, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = trunc nuw nsw i32 %.018.lcssa.i to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = add i32 %.0.lcssa.i, -1
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !76
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.ac = and i32 %i.b, 4096
  %.not37 = icmp eq i32 %i.ac, 0                  ; 2 uses
  %.str.36..str.37.i = select i1 %.not37, ptr @.str.37, ptr @.str.36
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i32 [ %i.ah, %.split.i ], [ %.sroa.039.0.extract.trunc.i, %bb.e ] ; 2 uses
  %.0.i5.idx = phi i64 [ %.0.i5.add, %.split.i ], [ 32, %bb.e ]
  %i.ad = and i32 %.012.i, 15
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.str.36..str.37.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !76
  %.0.i5.add = add nsw i64 %.0.i5.idx, -1         ; 4 uses
  %.ptr42 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i5.add
  store i8 %i.ag, ptr %.ptr42, align 1, !tbaa !76
  %i.ah = lshr i32 %.012.i, 4                     ; 2 uses
  %.not.i6 = icmp eq i32 %i.ah, 0
  br i1 %.not.i6, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !4

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.ai = and i32 %i.b, 8192
  %.not38 = icmp eq i32 %i.ai, 0
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.aj = select i1 %.not37, i32 30768, i32 22576 ; 2 uses
  %.not.i7 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = select i1 %.not.i7, i32 %i.aj, i32 %i.ak
  %i.am = or i32 %i.al, %.sroa.2.0.extract.trunc.i
  %i.an = add i32 %i.am, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i32 [ %i.ar, %.split.us.i ], [ %.sroa.039.0.extract.trunc.i, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 32, %bb.a ] ; 2 uses
  %i.ao = trunc i32 %.012.us.i to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = or disjoint i8 %i.ap, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr41 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.aq, ptr %.ptr41, align 1, !tbaa !76
  %i.ar = lshr i32 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i32 %i.ar, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, label %.split.us.i, !llvm.loop !4

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8: ; preds = %.split.us.i
  %i.as = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8
  %gepdiff = sub nsw i64 33, %.0.us.i.idx
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !123
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp sge i64 %gepdiff, %i.av
  %i.ax = icmp ne i32 %.sroa.039.0.extract.trunc.i, 0
  %or.cond.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i9 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.ay = select i1 %.not.i9, i32 48, i32 12288
  %i.az = or i32 %i.ay, %.sroa.2.0.extract.trunc.i
  %i.ba = add i32 %i.az, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

.split.us.i10:                                    ; preds = %bb.a, %.split.us.i10
  %.012.us.i11 = phi i32 [ %i.be, %.split.us.i10 ], [ %.sroa.039.0.extract.trunc.i, %bb.a ] ; 2 uses
  %.0.us.i12.idx = phi i64 [ %.0.us.i12.add, %.split.us.i10 ], [ 32, %bb.a ]
  %i.bb = trunc i32 %.012.us.i11 to i8
  %i.bc = and i8 %i.bb, 1
  %i.bd = or disjoint i8 %i.bc, 48
  %.0.us.i12.add = add nsw i64 %.0.us.i12.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i12.add
  store i8 %i.bd, ptr %.ptr, align 1, !tbaa !76
  %i.be = lshr i32 %.012.us.i11, 1                ; 2 uses
  %.not.us.i13 = icmp eq i32 %i.be, 0
  br i1 %.not.us.i13, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, label %.split.us.i10, !llvm.loop !4

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14: ; preds = %.split.us.i10
  %i.bf = and i32 %i.b, 8192
  %.not39 = icmp eq i32 %i.bf, 0
  br i1 %.not39, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14
  %4 = and i32 %i.b, 4096
  %.not40 = icmp eq i32 %4, 0
  %5 = select i1 %.not40, i32 25136, i32 16944    ; 2 uses
  %.not.i15 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.bg = shl nuw nsw i32 %5, 8
  %i.bh = select i1 %.not.i15, i32 %5, i32 %i.bg
  %i.bi = or i32 %i.bh, %.sroa.2.0.extract.trunc.i
  %i.bj = add i32 %i.bi, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bk = and i32 %i.b, 7
  %i.bl = icmp eq i32 %i.bk, 1
  %i.bm = zext i1 %i.bl to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 %i.bm, ptr %3, align 4, !tbaa !176
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.039.0.extract.trunc.i, ptr %i.bn, align 4, !tbaa !177
  %i.bo = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_10write_charIwS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %i.an, %bb.f ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %i.ba, %bb.h ], [ %.sroa.2.0.extract.trunc.i, %bb.g ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %i.bj, %bb.i ], [ %.sroa.2.0.extract.trunc.i, %bb.c ], [ %.sroa.2.0.extract.trunc.i, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i12.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %.0.i5.add, %bb.f ], [ %.0.i5.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %.0.us.i12.add, %bb.i ], [ %i.r, %bb.c ], [ %i.aa, %bb.d ] ; 5 uses
  %i.bp = trunc i64 %.0.i.idx to i32
  %i.bq = sub i32 32, %i.bp                       ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !145 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !123 ; 4 uses
  %i.bv = add nsw i32 %i.bu, 1
  %i.bw = or i32 %i.bv, %i.bs
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = lshr i32 %.0, 24                        ; 2 uses
  %i.bz = add i32 %i.bq, %i.by                    ; 4 uses
  br i1 %i.bx, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !119
  %i.cd = add i64 %i.cc, %i.ca                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !109
  %i.cg = icmp ugt i64 %i.cd, %i.cf
  br i1 %i.cg, label %bb.l, label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !107
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cd), !inline_history !13
  br label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.k, %bb.l
  %i.cj = and i32 %.0, 16777215                   ; 2 uses
  %.not.i49 = icmp eq i32 %i.cj, 0
  br i1 %.not.i49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %i.cb, align 8, !tbaa !119
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %.not31.i.i = icmp eq i64 %.0.i.idx, 32
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %._crit_edge
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load i64, ptr %i.cb, align 8, !tbaa !119
  %.pre37.i.i = load i64, ptr %i.ce, align 8, !tbaa !109
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.cm = phi i64 [ %.pre37.i.i, %.lr.ph34.i.i ], [ %i.cw, %._crit_edge.i.i ] ; 2 uses
  %i.cn = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.dh, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.02732.i.i.idx ; 2 uses
  %i.co = sub i64 %i.cm, %i.cn
  %gepdiff53 = sub nsw i64 32, %.02732.i.i.idx    ; 4 uses
  %i.cp = icmp ult i64 %i.co, %gepdiff53
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !107
  %i.cr = add i64 %gepdiff53, %i.cn
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cr), !inline_history !14
  %i.cs = load i64, ptr %i.cb, align 8, !tbaa !119 ; 2 uses
  %i.ct = load i64, ptr %i.ce, align 8, !tbaa !109 ; 2 uses
  %i.cu = sub i64 %i.ct, %i.cs
  %i.cv = tail call i64 @llvm.umin.i64(i64 %gepdiff53, i64 %i.cu)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cw = phi i64 [ %i.ct, %bb.n ], [ %i.cm, %bb.m ]
  %i.cx = phi i64 [ %i.cs, %bb.n ], [ %i.cn, %bb.m ] ; 2 uses
  %.025.i.i = phi i64 [ %i.cv, %bb.n ], [ %gepdiff53, %bb.m ] ; 7 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !108
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %min.iters.check74 = icmp ult i64 %.025.i.i, 8
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader85, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %.025.i.i, -8                ; 3 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next81, %vector.body77 ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index78 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %wide.load79 = load <4 x i8>, ptr %i.da, align 1, !tbaa !76
  %wide.load80 = load <4 x i8>, ptr %i.db, align 1, !tbaa !76
  %i.dc = sext <4 x i8> %wide.load79 to <4 x i32>
  %i.dd = sext <4 x i8> %wide.load80 to <4 x i32>
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index78 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <4 x i32> %i.dc, ptr %i.de, align 4, !tbaa !129
  store <4 x i32> %i.dd, ptr %i.df, align 4, !tbaa !129
  %index.next81 = add nuw i64 %index78, 8         ; 2 uses
  %i.dg = icmp eq i64 %index.next81, %n.vec76
  br i1 %i.dg, label %middle.block82, label %vector.body77, !llvm.loop !375

middle.block82:                                   ; preds = %vector.body77
  %cmp.n83 = icmp eq i64 %.025.i.i, %n.vec76
  br i1 %cmp.n83, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader85

.lr.ph.i.i.preheader85:                           ; preds = %.lr.ph.i.i.preheader, %middle.block82
  %.030.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec76, %middle.block82 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block82, %bb.o
  %i.dh = add i64 %.025.i.i, %i.cx                ; 2 uses
  store i64 %i.dh, ptr %i.cb, align 8, !tbaa !119
  %.02732.i.i.add = add nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 32
  br i1 %.not.i.i, label %_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.m, !llvm.loop !15

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader85, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader85 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !76
  %i.dk = sext i8 %i.dj to i32
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.030.i.i
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !129
  %i.dm = add nuw i64 %.030.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dm, %.025.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !376

bb.p:                                             ; preds = %.lr.ph, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit
  %i.dn = phi i64 [ %.pre, %.lr.ph ], [ %.pre-phi.i.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit ] ; 2 uses
  %.042.i50 = phi i32 [ %i.cj, %.lr.ph ], [ %i.dw, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit ] ; 2 uses
  %i.do = and i32 %.042.i50, 255
  %i.dp = add i64 %i.dn, 1                        ; 3 uses
  %i.dq = load i64, ptr %i.ce, align 8, !tbaa !109
  %i.dr = icmp ugt i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.q, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

bb.q:                                             ; preds = %bb.p
  %i.ds = load ptr, ptr %i.ck, align 8, !tbaa !107
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dp), !inline_history !16
  %.pre.i.i16 = load i64, ptr %i.cb, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

_ZN3fmt3v1214basic_appenderIwEaSEw.exit:          ; preds = %bb.p, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.dp, %bb.p ], [ %.pre2.i.i, %bb.q ] ; 2 uses
  %i.dt = phi i64 [ %i.dn, %bb.p ], [ %.pre.i.i16, %bb.q ]
  %i.du = load ptr, ptr %0, align 8, !tbaa !108
  store i64 %.pre-phi.i.i, ptr %i.cb, align 8, !tbaa !119
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dt
  store i32 %i.do, ptr %i.dv, align 4, !tbaa !129
  %i.dw = lshr i32 %.042.i50, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i, label %._crit_edge, label %bb.p, !llvm.loop !377

bb.r:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.dx = and i32 %i.b, 56
  %i.dy = icmp eq i32 %i.dx, 32
  br i1 %i.dy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.bs, i32 %i.bz)
  %spec.select36 = tail call i32 @llvm.umax.i32(i32 %i.bs, i32 %i.bz)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.t:                                             ; preds = %bb.r
  %i.dz = icmp sgt i32 %i.bu, %i.bq
  br i1 %i.dz, label %bb.u, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.u:                                             ; preds = %bb.t
  %i.ea = add i32 %i.bu, %i.by
  %i.eb = sub nsw i32 %i.bu, %i.bq
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.627.0 = phi i32 [ 0, %bb.t ], [ %spec.select, %bb.s ], [ %i.eb, %bb.u ] ; 2 uses
  %.sroa.026.0 = phi i32 [ %i.bz, %bb.t ], [ %spec.select36, %bb.s ], [ %i.ea, %bb.u ]
  %i.ec = zext i32 %.sroa.026.0 to i64            ; 2 uses
  %i.ed = zext i32 %i.bs to i64
  %i.ee = tail call i64 @llvm.usub.sat.i64(i64 %i.ed, i64 %i.ec) ; 4 uses
  %i.ef = lshr i32 %i.b, 3
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail10loc_writerIwEclIoTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEbS6_:bb.a
  store i32 0, ptr %i.al, align 4, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !174
  %i.an = load ptr, ptr %3, align 8, !tbaa !81    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.j
  br i1 %i.ao, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ap = load i64, ptr %i.u, align 8, !tbaa !80  ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  store ptr %i.an, ptr %2, align 8, !tbaa !81
  %i.as = load i64, ptr %i.j, align 8, !tbaa !76
  store i64 %i.as, ptr %i.am, align 8, !tbaa !76
  %.pre = load i64, ptr %i.u, align 8, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.at = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ap, %bb.k ]
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !80
  store ptr %i.j, ptr %3, align 8, !tbaa !81
  store i64 0, ptr %i.u, align 8, !tbaa !80
  store i8 0, ptr %i.j, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !170
  %i.ax = icmp eq ptr %i.aj, %i.x
  br i1 %i.ax, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ay = icmp samesign ult i64 %i.aa, 4
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.aa, 1
  %i.ba = call ptr @wmemcpy(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.x, i64 noundef %i.az) #26 ; 0 uses
  %.pre19 = load i64, ptr %i.ak, align 8, !tbaa !104
  br label %_ZN3fmt3v126detail14digit_groupingIwEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS5_IwS6_IwESaIwEEE.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.aj, ptr %i.av, align 8, !tbaa !105
  %i.bb = load i64, ptr %i.x, align 8, !tbaa !76
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !76
  br label %_ZN3fmt3v126detail14digit_groupingIwEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS5_IwS6_IwESaIwEEE.exit

_ZN3fmt3v126detail14digit_groupingIwEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS5_IwS6_IwESaIwEEE.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.bc = phi i64 [ %.pre19, %bb.l ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !104
  store ptr %i.x, ptr %4, align 8, !tbaa !105
  store i64 0, ptr %i.ak, align 8, !tbaa !104
  store i32 0, ptr %i.x, align 8, !tbaa !129
  %i.be = invoke ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIwEEowEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %.sroa.01.0.copyload, i128 noundef %1, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %_ZN3fmt3v126detail14digit_groupingIwEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS5_IwS6_IwESaIwEEE.exit
  %i.bf = load ptr, ptr %i.av, align 8, !tbaa !105 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.aw
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !76
  %i.bi = shl i64 %i.bh, 2
  %i.bj = add i64 %i.bi, 4
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  %i.bk = load ptr, ptr %2, align 8, !tbaa !81    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.am
  br i1 %i.bl, label %_ZN3fmt3v126detail14digit_groupingIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i
  %i.bm = load i64, ptr %i.am, align 8, !tbaa !76
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #27
  br label %_ZN3fmt3v126detail14digit_groupingIwED2Ev.exit

_ZN3fmt3v126detail14digit_groupingIwED2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bo = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.x
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN3fmt3v126detail14digit_groupingIwED2Ev.exit
  %i.bq = load i64, ptr %i.x, align 8, !tbaa !76
  %i.br = shl i64 %i.bq, 2
  %i.bs = add i64 %i.br, 4
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZN3fmt3v126detail14digit_groupingIwED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i11
  %i.bt = load ptr, ptr %3, align 8, !tbaa !81    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.j
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.bv = load i64, ptr %i.j, align 8, !tbaa !76
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 true

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i, %.noexc6.i7, %.noexc.i8
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15

bb.o:                                             ; preds = %_ZN3fmt3v126detail14digit_groupingIwEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS5_IwS6_IwESaIwEEE.exit
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3fmt3v126detail14digit_groupingIwED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #26
  %i.bz = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.x
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i13: ; preds = %bb.o
  %i.cb = load i64, ptr %i.x, align 8, !tbaa !76
  %i.cc = shl i64 %i.cb, 2
  %i.cd = add i64 %i.cc, 4
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i13, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.n ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i13 ], [ %i.by, %bb.o ]
  %i.ce = load ptr, ptr %3, align 8, !tbaa !81    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.j
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15
  %i.cg = load i64, ptr %i.j, align 8, !tbaa !76
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIwEEmwEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.62, align 4             ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 15 uses
  %7 = alloca %class.anon.55, align 8             ; 7 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !150
  store i64 500, ptr %i.b, align 8, !tbaa !148
  %i.f = load i32, ptr %3, align 4, !tbaa !121    ; 8 uses
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 7
  switch i8 %i.h, label %bb.b [
    i8 7, label %bb.o
    i8 6, label %bb.k
    i8 4, label %bb.d
    i8 5, label %.preheader
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = or i64 %1, 1
  %i.j = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = xor i64 %i.j, 63
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !76    ; 2 uses
  %i.n = zext i8 %i.m to i32
  %i.o = zext i8 %i.m to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !111
  %i.r = icmp ult i64 %1, %i.q
  %.neg.i.i = sext i1 %i.r to i32
  %i.s = add nsw i32 %.neg.i.i, %i.n              ; 2 uses
  %i.t = invoke ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %6, i64 noundef %1, i32 noundef %i.s)
          to label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.invoke, %bb.o, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.v = and i32 %i.f, 8192
  %.not96 = icmp eq i32 %i.v, 0
  br i1 %.not96, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %8 = and i32 %i.f, 4096
  %.not97 = icmp eq i32 %8, 0
  %9 = select i1 %.not97, i32 30768, i32 22576    ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  %i.w = shl nuw nsw i32 %9, 8
  %i.x = select i1 %.not.i, i32 %9, i32 %i.w
  %i.y = or i32 %i.x, %2
  %i.z = add i32 %i.y, 33554432                   ; 2 uses
  store i32 %i.z, ptr %i.a, align 4, !tbaa !71
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.e ], [ %2, %bb.d ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.03.i.i = phi i64 [ %1, %bb.f ], [ %i.ac, %bb.g ]
  %.0.i.i = phi i32 [ 0, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ab = add nuw nsw i32 %.0.i.i, 1              ; 3 uses
  %i.ac = lshr i64 %.03.i.i, 4                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit, label %bb.g, !llvm.loop !18

_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit: ; preds = %bb.g
  %i.ad = and i32 %i.f, 4096
  %.not98 = icmp eq i32 %i.ad, 0
  %i.ae = zext nneg i32 %i.ab to i64              ; 3 uses
  %i.af = icmp samesign ugt i32 %.0.i.i, 499
  br i1 %i.af, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 750) ; 2 uses
  %i.ag = call noalias ptr @malloc(i64 noundef %spec.select.i) #32 ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i128, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  store ptr %i.ag, ptr %6, align 8, !tbaa !150
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !148
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %i.ah = phi ptr [ %i.ag, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit ]
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !147
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %.str.36..str.37.i.i.i = select i1 %.not98, ptr @.str.37, ptr @.str.36
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread
  %.012.i.i.i = phi i64 [ %i.an, %.split.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.am, %.split.i.i.i ], [ %i.ai, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ]
  %i.aj = and i64 %.012.i.i.i, 15
  %i.ak = getelementptr inbounds nuw i8, ptr %.str.36..str.37.i.i.i, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !76
  %i.am = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1 ; 2 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !76
  %i.an = lshr i64 %.012.i.i.i, 4                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.i.i.i, !llvm.loop !19

.preheader:                                       ; preds = %bb.a, %.preheader
  %.03.i.i46 = phi i64 [ %i.ap, %.preheader ], [ %1, %bb.a ]
  %.0.i.i47 = phi i32 [ %i.ao, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.ao = add nuw nsw i32 %.0.i.i47, 1            ; 4 uses
  %i.ap = lshr i64 %.03.i.i46, 3                  ; 2 uses
  %.not.i.i48 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i48, label %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit, label %.preheader, !llvm.loop !391

_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit: ; preds = %.preheader
  %i.aq = and i32 %i.f, 8192
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !123
  %i.at = icmp sle i32 %i.as, %i.ao
  %i.au = icmp ne i64 %1, 0
  %or.cond = and i1 %i.au, %i.at
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i49 = icmp eq i32 %2, 0
  %i.av = select i1 %.not.i49, i32 48, i32 12288
  %i.aw = or i32 %i.av, %2
  %i.ax = add i32 %i.aw, 16777216                 ; 2 uses
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !71
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit
  %i.ay = phi i32 [ %i.ax, %bb.i ], [ %2, %bb.h ], [ %2, %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit ]
  %i.az = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.ba = icmp samesign ugt i32 %.0.i.i47, 499
  br i1 %i.ba, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56: ; preds = %bb.j
  %spec.select.i131 = call i64 @llvm.umax.i64(i64 %i.az, i64 750) ; 2 uses
  %i.bb = call noalias ptr @malloc(i64 noundef %spec.select.i131) #32 ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i132, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56
  store ptr %i.bb, ptr %6, align 8, !tbaa !150
  store i64 %spec.select.i131, ptr %i.b, align 8, !tbaa !148
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread: ; preds = %bb.j, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50
  %i.bc = phi ptr [ %i.bb, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50 ], [ %i.e, %bb.j ]
  store i64 %i.az, ptr %i.d, align 8, !tbaa !147
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread
  %.012.us.i.i.i = phi i64 [ %i.bi, %.split.us.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread ] ; 2 uses
  %.0.us.i.i.i = phi ptr [ %i.bh, %.split.us.i.i.i ], [ %i.bd, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread ]
  %i.be = trunc i64 %.012.us.i.i.i to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = getelementptr inbounds i8, ptr %.0.us.i.i.i, i64 -1 ; 2 uses
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !76
  %i.bi = lshr i64 %.012.us.i.i.i, 3              ; 2 uses
  %.not.us.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.us.i.i.i, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.us.i.i.i, !llvm.loop !19

bb.k:                                             ; preds = %bb.a
  %i.bj = and i32 %i.f, 8192
  %.not99 = icmp eq i32 %i.bj, 0
  br i1 %.not99, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %10 = and i32 %i.f, 4096
  %.not100 = icmp eq i32 %10, 0
  %11 = select i1 %.not100, i32 25136, i32 16944  ; 2 uses
  %.not.i63 = icmp eq i32 %2, 0
  %i.bk = shl nuw nsw i32 %11, 8
  %i.bl = select i1 %.not.i63, i32 %11, i32 %i.bk
  %i.bm = or i32 %i.bl, %2
  %i.bn = add i32 %i.bm, 33554432                 ; 2 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bo = phi i32 [ %i.bn, %bb.l ], [ %2, %bb.k ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.03.i.i64 = phi i64 [ %1, %bb.m ], [ %i.bq, %bb.n ]
  %.0.i.i65 = phi i32 [ 0, %bb.m ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bp = add nuw nsw i32 %.0.i.i65, 1            ; 3 uses
  %i.bq = lshr i64 %.03.i.i64, 1                  ; 2 uses
  %.not.i.i66 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i66, label %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit, label %bb.n, !llvm.loop !392

_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit: ; preds = %bb.n
  %i.br = zext nneg i32 %i.bp to i64              ; 3 uses
  %i.bs = icmp samesign ugt i32 %.0.i.i65, 499
  br i1 %i.bs, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit
  %spec.select.i137 = call i64 @llvm.umax.i64(i64 %i.br, i64 750) ; 2 uses
  %i.bt = call noalias ptr @malloc(i64 noundef %spec.select.i137) #32 ; 3 uses
  %.not.i.i138 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i138, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67

.invoke:                                          ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bu = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bu, align 8, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81
  store ptr %i.bt, ptr %6, align 8, !tbaa !150
  store i64 %spec.select.i137, ptr %i.b, align 8, !tbaa !148
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67
  %i.bv = phi ptr [ %i.bt, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67 ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit ]
  store i64 %i.br, ptr %i.d, align 8, !tbaa !147
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.br
  br label %.split.us.i.i.i70

.split.us.i.i.i70:                                ; preds = %.split.us.i.i.i70, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread
  %.012.us.i.i.i71 = phi i64 [ %i.cb, %.split.us.i.i.i70 ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread ] ; 2 uses
  %.0.us.i.i.i72 = phi ptr [ %i.ca, %.split.us.i.i.i70 ], [ %i.bw, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread ]
  %i.bx = trunc i64 %.012.us.i.i.i71 to i8
  %i.by = and i8 %i.bx, 1
  %i.bz = or disjoint i8 %i.by, 48
  %i.ca = getelementptr inbounds i8, ptr %.0.us.i.i.i72, i64 -1 ; 2 uses
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !76
  %i.cb = lshr i64 %.012.us.i.i.i71, 1            ; 2 uses
  %.not.us.i.i.i73 = icmp eq i64 %i.cb, 0
  br i1 %.not.us.i.i.i73, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.us.i.i.i70, !llvm.loop !19

bb.o:                                             ; preds = %bb.a
  %i.cc = trunc i64 %1 to i32
  %i.cd = and i32 %i.f, 7
  %i.ce = icmp eq i32 %i.cd, 1
  %i.cf = zext i1 %i.ce to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i8 %i.cf, ptr %5, align 4, !tbaa !176
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.cc, ptr %i.cg, align 4, !tbaa !177
  %i.ch = invoke ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_10write_charIwS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %_ZN3fmt3v126detail10write_charIwNS0_14basic_appenderIwEEEET0_S5_T_RKNS0_12format_specsE.exit unwind label %bb.c

_ZN3fmt3v126detail10write_charIwNS0_14basic_appenderIwEEEET0_S5_T_RKNS0_12format_specsE.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.v

_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit: ; preds = %.split.us.i.i.i, %.split.i.i.i, %.split.us.i.i.i70, %bb.b
  %i.ci = phi i32 [ %i.aa, %.split.i.i.i ], [ %2, %bb.b ], [ %i.bo, %.split.us.i.i.i70 ], [ %i.ay, %.split.us.i.i.i ]
  %.0 = phi i32 [ %i.ab, %.split.i.i.i ], [ %i.s, %bb.b ], [ %i.bp, %.split.us.i.i.i70 ], [ %i.ao, %.split.us.i.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !104
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit
  %i.cm = load ptr, ptr %4, align 8, !tbaa !81    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !80
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %.lr.ph.i
  %.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cy, %bb.s ] ; 3 uses
  %.sroa.0.07.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.s ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cw, %bb.s ]
  %i.cr = icmp eq ptr %.sroa.0.07.i, %i.cp
  br i1 %i.cr, label %._ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.q

._ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.p
  %.sink.i.pre.i = load i8, ptr %i.cq, align 1, !tbaa !76
  br label %_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cs = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !76 ; 2 uses
  %i.ct = add i8 %i.cs, -127
  %or.cond.i.i = icmp ult i8 %i.ct, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.r, %._ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.cs, %bb.r ], [ %.sink.i.pre.i, %._ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.cu, %bb.r ], [ %i.cp, %._ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.cv = sext i8 %.sink.i.i to i32
  %i.cw = add nsw i32 %.sroa.5.06.i, %i.cv        ; 2 uses
  %i.cx = icmp sgt i32 %.0, %i.cw
  br i1 %i.cx, label %bb.s, label %_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit

bb.s:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i
  %i.cy = add nuw nsw i32 %.08.i, 1
  br label %bb.p

_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit: ; preds = %_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i, %bb.q, %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit ], [ %.08.i, %bb.q ], [ %.08.i, %_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i ]
  %i.cz = lshr i32 %i.ci, 24
  %i.da = add i32 %i.cz, %.0
  %i.db = add i32 %i.da, %.0.lcssa.i
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !73
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.dd, align 8, !tbaa !182
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %i.de, align 8, !tbaa !184
  %i.df = invoke ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE2ENS0_14basic_appenderIwEEZNS1_9write_intIS5_mwEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.dc, i64 noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.v

bb.u:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.x

bb.v:                                             ; preds = %_ZN3fmt3v126detail10write_charIwNS0_14basic_appenderIwEEEET0_S5_T_RKNS0_12format_specsE.exit, %bb.t
  %.sroa.039.0 = phi ptr [ %i.df, %bb.t ], [ %i.ch, %_ZN3fmt3v126detail10write_charIwNS0_14basic_appenderIwEEEET0_S5_T_RKNS0_12format_specsE.exit ]
  %i.dh = load ptr, ptr %6, align 8, !tbaa !150   ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.dh, %i.e
  br i1 %.not.i.i89, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.dh) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret ptr %.sroa.039.0

bb.x:                                             ; preds = %bb.u, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.dg, %bb.u ]
  %i.di = load ptr, ptr %6, align 8, !tbaa !150   ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.di, %i.e
  br i1 %.not.i.i90, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.di) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail14digit_groupingIwED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !76
  %i.f = shl i64 %i.e, 2
  %i.g = add i64 %i.f, 4
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_2
begin_hunk_3_@_ZNK3fmt3v126detail14digit_groupingIwE5applyINS0_14basic_appenderIwEEcEET_S7_NS0_17basic_string_viewIT0_EE:bb.a
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !129
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cy
  store i32 %i.da, ptr %i.db, align 4, !tbaa !129
  %i.dc = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.dc, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !408

_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.l
  %i.dd = add nsw i32 %.059, -1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, %bb.k
  %.1 = phi i32 [ %i.dd, %_ZN3fmt3v126detail4copyIwPKwNS0_14basic_appenderIwEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit ], [ %.059, %bb.k ]
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !76
  %i.dh = sext i8 %i.dg to i32
  %i.di = load i64, ptr %i.ap, align 8, !tbaa !119 ; 2 uses
  %i.dj = add i64 %i.di, 1                        ; 3 uses
  %i.dk = load i64, ptr %i.aq, align 8, !tbaa !109
  %i.dl = icmp ugt i64 %i.dj, %i.dk
  br i1 %i.dl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dm = load ptr, ptr %i.ar, align 8, !tbaa !107
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dj)
          to label %.noexc36 unwind label %bb.t, !inline_history !27

.noexc36:                                         ; preds = %bb.r
  %.pre.i.i35 = load i64, ptr %i.ap, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i35, 1
  br label %bb.s

bb.s:                                             ; preds = %.noexc36, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.dj, %bb.q ], [ %.pre2.i.i, %.noexc36 ]
  %i.dn = phi i64 [ %i.di, %bb.q ], [ %.pre.i.i35, %.noexc36 ]
  %i.do = load ptr, ptr %1, align 8, !tbaa !108
  store i64 %.pre-phi.i.i, ptr %i.ap, align 8, !tbaa !119
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dn
  store i32 %i.dh, ptr %i.dp, align 4, !tbaa !129
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.as
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !409

bb.t:                                             ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.t, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.dq, %bb.t ], [ %i.de, %bb.p ]
  %i.dr = load ptr, ptr %4, align 8, !tbaa !191   ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.dr, %i.e
  br i1 %.not.i.i37, label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.dr) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38

_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEE4growERNS2_6bufferIiEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !191    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #32 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !59
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !193  ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !191
  store i64 %.0, ptr %i.a, align 8, !tbaa !192
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIwEEowEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %0, i128 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.62, align 4             ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 15 uses
  %7 = alloca %class.anon.71, align 8             ; 7 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !150
  store i64 500, ptr %i.b, align 8, !tbaa !148
  %i.f = load i32, ptr %3, align 4, !tbaa !121    ; 8 uses
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 7
  switch i8 %i.h, label %bb.b [
    i8 7, label %bb.u
    i8 6, label %bb.q
    i8 4, label %bb.j
    i8 5, label %.preheader
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i128 %1, 10
  br i1 %i.i, label %_ZN3fmt3v126detail12count_digitsEo.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.h
  %.017.i.i = phi i32 [ %i.q, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.01116.i.i = phi i128 [ %i.p, %bb.h ], [ %1, %bb.b ] ; 5 uses
  %i.j = icmp ult i128 %.01116.i.i, 100
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = add nuw nsw i32 %.017.i.i, 1
  br label %_ZN3fmt3v126detail12count_digitsEo.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.l = icmp ult i128 %.01116.i.i, 1000
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw nsw i32 %.017.i.i, 2
  br label %_ZN3fmt3v126detail12count_digitsEo.exit

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ult i128 %.01116.i.i, 10000
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw nsw i32 %.017.i.i, 3
  br label %_ZN3fmt3v126detail12count_digitsEo.exit

bb.h:                                             ; preds = %bb.f
  %i.p = udiv i128 %.01116.i.i, 10000
  %i.q = add nuw nsw i32 %.017.i.i, 4             ; 2 uses
  %i.r = icmp ult i128 %.01116.i.i, 100000
  br i1 %i.r, label %_ZN3fmt3v126detail12count_digitsEo.exit, label %.lr.ph.i.i, !llvm.loop !28

_ZN3fmt3v126detail12count_digitsEo.exit:          ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.012.i.i = phi i32 [ %i.o, %bb.g ], [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ 1, %bb.b ], [ %i.q, %bb.h ] ; 2 uses
  %i.s = invoke ptr @_ZN3fmt3v126detail14format_decimalIcoNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %6, i128 noundef %1, i32 noundef %.012.i.i)
          to label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %.invoke, %bb.u, %_ZN3fmt3v126detail12count_digitsEo.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.j:                                             ; preds = %bb.a
  %i.u = and i32 %i.f, 8192
  %.not96 = icmp eq i32 %i.u, 0
  br i1 %.not96, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %8 = and i32 %i.f, 4096
  %.not97 = icmp eq i32 %8, 0
  %9 = select i1 %.not97, i32 30768, i32 22576    ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  %i.v = shl nuw nsw i32 %9, 8
  %i.w = select i1 %.not.i, i32 %9, i32 %i.v
  %i.x = or i32 %i.w, %2
  %i.y = add i32 %i.x, 33554432                   ; 2 uses
  store i32 %i.y, ptr %i.a, align 4, !tbaa !71
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = phi i32 [ %i.y, %bb.k ], [ %2, %bb.j ]
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.03.i.i = phi i128 [ %1, %bb.l ], [ %i.ab, %bb.m ]
  %.0.i.i = phi i32 [ 0, %bb.l ], [ %i.aa, %bb.m ] ; 2 uses
  %i.aa = add nuw nsw i32 %.0.i.i, 1              ; 3 uses
  %i.ab = lshr i128 %.03.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i128 %i.ab, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit, label %bb.m, !llvm.loop !410

_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit: ; preds = %bb.m
  %i.ac = and i32 %i.f, 4096
  %.not98 = icmp eq i32 %i.ac, 0
  %i.ad = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.ae = icmp samesign ugt i32 %.0.i.i, 499
  br i1 %i.ae, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 750) ; 2 uses
  %i.af = call noalias ptr @malloc(i64 noundef %spec.select.i) #32 ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.af, null
  br i1 %.not.i.i141, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  store ptr %i.af, ptr %6, align 8, !tbaa !150
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !148
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %i.ag = phi ptr [ %i.af, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit ]
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !147
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  %.str.36..str.37.i.i.i = select i1 %.not98, ptr @.str.37, ptr @.str.36
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread
  %.012.i.i.i = phi i128 [ %i.an, %.split.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.am, %.split.i.i.i ], [ %i.ah, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ]
  %i.ai = trunc i128 %.012.i.i.i to i64
  %i.aj = and i64 %i.ai, 15
  %i.ak = getelementptr inbounds nuw i8, ptr %.str.36..str.37.i.i.i, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !76
  %i.am = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1 ; 2 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !76
  %i.an = lshr i128 %.012.i.i.i, 4                ; 2 uses
  %.not.i.i.i = icmp eq i128 %i.an, 0
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.i.i.i, !llvm.loop !29

.preheader:                                       ; preds = %bb.a, %.preheader
  %.03.i.i46 = phi i128 [ %i.ap, %.preheader ], [ %1, %bb.a ]
  %.0.i.i47 = phi i32 [ %i.ao, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.ao = add nuw nsw i32 %.0.i.i47, 1            ; 4 uses
  %i.ap = lshr i128 %.03.i.i46, 3                 ; 2 uses
  %.not.i.i48 = icmp eq i128 %i.ap, 0
  br i1 %.not.i.i48, label %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit, label %.preheader, !llvm.loop !411

_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit: ; preds = %.preheader
  %i.aq = and i32 %i.f, 8192
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !123
  %i.at = icmp sle i32 %i.as, %i.ao
  %i.au = icmp ne i128 %1, 0
  %or.cond = and i1 %i.au, %i.at
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not.i49 = icmp eq i32 %2, 0
  %i.av = select i1 %.not.i49, i32 48, i32 12288
  %i.aw = or i32 %i.av, %2
  %i.ax = add i32 %i.aw, 16777216                 ; 2 uses
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !71
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit
  %i.ay = phi i32 [ %i.ax, %bb.o ], [ %2, %bb.n ], [ %2, %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit ]
  %i.az = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.ba = icmp samesign ugt i32 %.0.i.i47, 499
  br i1 %i.ba, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56: ; preds = %bb.p
  %spec.select.i144 = call i64 @llvm.umax.i64(i64 %i.az, i64 750) ; 2 uses
  %i.bb = call noalias ptr @malloc(i64 noundef %spec.select.i144) #32 ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i145, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56
  store ptr %i.bb, ptr %6, align 8, !tbaa !150
  store i64 %spec.select.i144, ptr %i.b, align 8, !tbaa !148
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread: ; preds = %bb.p, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50
  %i.bc = phi ptr [ %i.bb, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50 ], [ %i.e, %bb.p ]
  store i64 %i.az, ptr %i.d, align 8, !tbaa !147
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread
  %.012.us.i.i.i = phi i128 [ %i.bi, %.split.us.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread ] ; 2 uses
  %.0.us.i.i.i = phi ptr [ %i.bh, %.split.us.i.i.i ], [ %i.bd, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread ]
  %i.be = trunc i128 %.012.us.i.i.i to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = getelementptr inbounds i8, ptr %.0.us.i.i.i, i64 -1 ; 2 uses
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !76
  %i.bi = lshr i128 %.012.us.i.i.i, 3             ; 2 uses
  %.not.us.i.i.i = icmp eq i128 %i.bi, 0
  br i1 %.not.us.i.i.i, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.us.i.i.i, !llvm.loop !29

bb.q:                                             ; preds = %bb.a
  %i.bj = and i32 %i.f, 8192
  %.not99 = icmp eq i32 %i.bj, 0
  br i1 %.not99, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %10 = and i32 %i.f, 4096
  %.not100 = icmp eq i32 %10, 0
  %11 = select i1 %.not100, i32 25136, i32 16944  ; 2 uses
  %.not.i63 = icmp eq i32 %2, 0
  %i.bk = shl nuw nsw i32 %11, 8
  %i.bl = select i1 %.not.i63, i32 %11, i32 %i.bk
  %i.bm = or i32 %i.bl, %2
  %i.bn = add i32 %i.bm, 33554432                 ; 2 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !71
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bo = phi i32 [ %i.bn, %bb.r ], [ %2, %bb.q ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.03.i.i64 = phi i128 [ %1, %bb.s ], [ %i.bq, %bb.t ]
  %.0.i.i65 = phi i32 [ 0, %bb.s ], [ %i.bp, %bb.t ] ; 2 uses
  %i.bp = add nuw nsw i32 %.0.i.i65, 1            ; 3 uses
  %i.bq = lshr i128 %.03.i.i64, 1                 ; 2 uses
  %.not.i.i66 = icmp eq i128 %i.bq, 0
  br i1 %.not.i.i66, label %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit, label %bb.t, !llvm.loop !412

_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit: ; preds = %bb.t
  %i.br = zext nneg i32 %i.bp to i64              ; 3 uses
  %i.bs = icmp samesign ugt i32 %.0.i.i65, 499
  br i1 %i.bs, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit
  %spec.select.i150 = call i64 @llvm.umax.i64(i64 %i.br, i64 750) ; 2 uses
  %i.bt = call noalias ptr @malloc(i64 noundef %spec.select.i150) #32 ; 3 uses
  %.not.i.i151 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i151, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67

.invoke:                                          ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bu = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bu, align 8, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81
  store ptr %i.bt, ptr %6, align 8, !tbaa !150
  store i64 %spec.select.i150, ptr %i.b, align 8, !tbaa !148
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67
  %i.bv = phi ptr [ %i.bt, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67 ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit ]
  store i64 %i.br, ptr %i.d, align 8, !tbaa !147
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.br
  br label %.split.us.i.i.i70

.split.us.i.i.i70:                                ; preds = %.split.us.i.i.i70, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread
  %.012.us.i.i.i71 = phi i128 [ %i.cb, %.split.us.i.i.i70 ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread ] ; 2 uses
  %.0.us.i.i.i72 = phi ptr [ %i.ca, %.split.us.i.i.i70 ], [ %i.bw, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread ]
  %i.bx = trunc i128 %.012.us.i.i.i71 to i8
  %i.by = and i8 %i.bx, 1
  %i.bz = or disjoint i8 %i.by, 48
  %i.ca = getelementptr inbounds i8, ptr %.0.us.i.i.i72, i64 -1 ; 2 uses
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !76
  %i.cb = lshr i128 %.012.us.i.i.i71, 1           ; 2 uses
  %.not.us.i.i.i73 = icmp eq i128 %i.cb, 0
  br i1 %.not.us.i.i.i73, label %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit, label %.split.us.i.i.i70, !llvm.loop !29

bb.u:                                             ; preds = %bb.a
  %i.cc = trunc i128 %1 to i32
  %i.cd = and i32 %i.f, 7
  %i.ce = icmp eq i32 %i.cd, 1
  %i.cf = zext i1 %i.ce to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i8 %i.cf, ptr %5, align 4, !tbaa !176
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.cc, ptr %i.cg, align 4, !tbaa !177
  %i.ch = invoke ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_10write_charIwS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %_ZN3fmt3v126detail10write_charIwNS0_14basic_appenderIwEEEET0_S5_T_RKNS0_12format_specsE.exit unwind label %bb.i

_ZN3fmt3v126detail10write_charIwNS0_14basic_appenderIwEEEET0_S5_T_RKNS0_12format_specsE.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ab

_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit: ; preds = %.split.us.i.i.i, %.split.i.i.i, %.split.us.i.i.i70, %_ZN3fmt3v126detail12count_digitsEo.exit
  %i.ci = phi i32 [ %i.z, %.split.i.i.i ], [ %2, %_ZN3fmt3v126detail12count_digitsEo.exit ], [ %i.bo, %.split.us.i.i.i70 ], [ %i.ay, %.split.us.i.i.i ]
  %.0 = phi i32 [ %i.aa, %.split.i.i.i ], [ %.012.i.i, %_ZN3fmt3v126detail12count_digitsEo.exit ], [ %i.bp, %.split.us.i.i.i70 ], [ %i.ao, %.split.us.i.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !104
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit
  %i.cm = load ptr, ptr %4, align 8, !tbaa !81    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !80
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i
  %.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cy, %bb.y ] ; 3 uses
  %.sroa.0.07.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.y ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cw, %bb.y ]
  %i.cr = icmp eq ptr %.sroa.0.07.i, %i.cp
  br i1 %i.cr, label %._ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.w

._ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.v
  %.sink.i.pre.i = load i8, ptr %i.cq, align 1, !tbaa !76
  br label %_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i

bb.w:                                             ; preds = %bb.v
  %i.cs = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !76 ; 2 uses
  %i.ct = add i8 %i.cs, -127
  %or.cond.i.i = icmp ult i8 %i.ct, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.x, %._ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.cs, %bb.x ], [ %.sink.i.pre.i, %._ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.cu, %bb.x ], [ %i.cp, %._ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.cv = sext i8 %.sink.i.i to i32
  %i.cw = add nsw i32 %.sroa.5.06.i, %i.cv        ; 2 uses
  %i.cx = icmp sgt i32 %.0, %i.cw
  br i1 %i.cx, label %bb.y, label %_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit

bb.y:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i
  %i.cy = add nuw nsw i32 %.08.i, 1
  br label %bb.v

_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit: ; preds = %_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i, %bb.w, %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN3fmt3v126detail13format_base2eIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXsr23is_back_insert_iteratorIT0_EE5valueEiE4typeELi0EEES6_iS6_T1_ib.exit ], [ %.08.i, %bb.w ], [ %.08.i, %_ZNK3fmt3v126detail14digit_groupingIwE4nextERNS3_10next_stateE.exit.i ]
  %i.cz = lshr i32 %i.ci, 24
  %i.da = add i32 %i.cz, %.0
  %i.db = add i32 %i.da, %.0.lcssa.i
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.a, ptr %7, align 8, !tbaa !73
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.dd, align 8, !tbaa !182
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %i.de, align 8, !tbaa !184
  %i.df = invoke ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE2ENS0_14basic_appenderIwEEZNS1_9write_intIS5_owEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.dc, i64 noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNK3fmt3v126detail14digit_groupingIwE16count_separatorsEi.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ad

bb.ab:                                            ; preds = %_ZN3fmt3v126detail10write_charIwNS0_14basic_appenderIwEEEET0_S5_T_RKNS0_12format_specsE.exit, %bb.z
  %.sroa.039.0 = phi ptr [ %i.df, %bb.z ], [ %i.ch, %_ZN3fmt3v126detail10write_charIwNS0_14basic_appenderIwEEEET0_S5_T_RKNS0_12format_specsE.exit ]
  %i.dh = load ptr, ptr %6, align 8, !tbaa !150   ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.dh, %i.e
  br i1 %.not.i.i89, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.dh) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret ptr %.sroa.039.0

bb.ad:                                            ; preds = %bb.aa, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.dg, %bb.aa ]
  %i.di = load ptr, ptr %6, align 8, !tbaa !150   ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.di, %i.e
  br i1 %.not.i.i90, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.di) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail14format_decimalIcoNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %0, i128 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [39 x i8], align 16               ; 7 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = add i64 %i.d, %i.b                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !148
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e), !inline_history !20
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !147 ; 2 uses
  %.pre14.i = load i64, ptr %i.f, align 8, !tbaa !148
  %.pre15.i = add i64 %.pre.i, %i.b               ; 2 uses
  %i.k = icmp ult i64 %.pre14.i, %.pre15.i
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE2ENS0_14basic_appenderIwEERZNS1_9write_ptrIwS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_:bb.a
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bj
  br label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.split.i.i.i.i, %bb.g
  %.012.i.i.i.i = phi i64 [ %i.bq, %.split.i.i.i.i ], [ %i.ax, %bb.g ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.bp, %.split.i.i.i.i ], [ %i.bk, %bb.g ]
  %i.bl = and i64 %.012.i.i.i.i, 15
  %i.bm = getelementptr inbounds nuw i8, ptr @.str.37, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !76
  %i.bo = sext i8 %i.bn to i32
  %i.bp = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -4 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !129
  %i.bq = lshr i64 %.012.i.i.i.i, 4               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i, label %_ZZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.split.i.i.i.i, !llvm.loop !704

_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i: ; preds = %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.br = sext i32 %i.az to i64
  %i.bs = getelementptr inbounds i8, ptr %i.a, i64 %i.br ; 2 uses
  br label %.split.i.i18.i.i

.split.i.i18.i.i:                                 ; preds = %.split.i.i18.i.i, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i
  %.012.i.i19.i.i = phi i64 [ %i.bx, %.split.i.i18.i.i ], [ %i.ax, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i ] ; 2 uses
  %.0.i.i20.i.i = phi ptr [ %i.bw, %.split.i.i18.i.i ], [ %i.bs, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i ]
  %i.bt = and i64 %.012.i.i19.i.i, 15
  %i.bu = getelementptr inbounds nuw i8, ptr @.str.37, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !76
  %i.bw = getelementptr inbounds i8, ptr %.0.i.i20.i.i, i64 -1 ; 2 uses
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !76
  %i.bx = lshr i64 %.012.i.i19.i.i, 4             ; 2 uses
  %.not.i.i21.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i21.i.i, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.i.i, label %.split.i.i18.i.i, !llvm.loop !19

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.i.i: ; preds = %.split.i.i18.i.i
  %i.by = call ptr @_ZN3fmt3v126detail13copy_noinlineIwPcNS0_14basic_appenderIwEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bs, ptr nonnull %.sroa.09.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit

_ZZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %.split.i.i.i.i, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.i.i
  %.sroa.014.1.i.i = phi ptr [ %i.by, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.i.i ], [ %.sroa.09.0, %.split.i.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.e, %i.n
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.bz = call ptr @_ZN3fmt3v126detail4fillIwNS0_14basic_appenderIwEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.014.1.i.i, i64 noundef %i.o, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.bz, %bb.h ], [ %.sroa.014.1.i.i, %_ZZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail18write_int_noinlineIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #13 comdat {
bb.a:
  %4 = alloca %class.anon.62, align 4             ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load i32, ptr %3, align 4, !tbaa !121    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i11
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.f, %.lr.ph.i ], [ 64, %bb.b ]
  %.01819.i = phi i64 [ %i.m, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.f = add i32 %.020.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = urem i64 %.01819.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 2
  %i.m = udiv i64 %.01819.i, 100                  ; 2 uses
  %i.n = icmp ugt i64 %.01819.i, 9999
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 64, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.p = add i32 %.0.lcssa.i, -2
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  %i.s = shl nuw nsw i64 %.018.lcssa.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !76
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = and i32 %i.b, 4096
  %.not38 = icmp eq i32 %i.aa, 0                  ; 2 uses
  %.str.36..str.37.i = select i1 %.not38, ptr @.str.37, ptr @.str.36
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i64 [ %i.ae, %.split.i ], [ %1, %bb.e ] ; 2 uses
  %.0.i6.idx = phi i64 [ %.0.i6.add, %.split.i ], [ 64, %bb.e ]
  %i.ab = and i64 %.012.i, 15
  %i.ac = getelementptr inbounds nuw i8, ptr %.str.36..str.37.i, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !76
  %.0.i6.add = add nsw i64 %.0.i6.idx, -1         ; 4 uses
  %.ptr43 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i6.add
  store i8 %i.ad, ptr %.ptr43, align 1, !tbaa !76
  %i.ae = lshr i64 %.012.i, 4                     ; 2 uses
  %.not.i7 = icmp eq i64 %i.ae, 0
  br i1 %.not.i7, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !19

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.af = and i32 %i.b, 8192
  %.not39 = icmp eq i32 %i.af, 0
  br i1 %.not39, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %i.ag = select i1 %.not38, i32 30768, i32 22576 ; 2 uses
  %.not.i8 = icmp eq i32 %2, 0
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = select i1 %.not.i8, i32 %i.ag, i32 %i.ah
  %i.aj = or i32 %i.ai, %2
  %i.ak = add i32 %i.aj, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i64 [ %i.ao, %.split.us.i ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 64, %bb.a ] ; 2 uses
  %i.al = trunc i64 %.012.us.i to i8
  %i.am = and i8 %i.al, 7
  %i.an = or disjoint i8 %i.am, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr42 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.an, ptr %.ptr42, align 1, !tbaa !76
  %i.ao = lshr i64 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i64 %i.ao, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, label %.split.us.i, !llvm.loop !19

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9: ; preds = %.split.us.i
  %i.ap = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9
  %gepdiff = sub nsw i64 65, %.0.us.i.idx
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !123
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp sge i64 %gepdiff, %i.as
  %i.au = icmp ne i64 %1, 0
  %or.cond.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i10 = icmp eq i32 %2, 0
  %i.av = select i1 %.not.i10, i32 48, i32 12288
  %i.aw = or i32 %i.av, %2
  %i.ax = add i32 %i.aw, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i11:                                    ; preds = %bb.a, %.split.us.i11
  %.012.us.i12 = phi i64 [ %i.bb, %.split.us.i11 ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i13.idx = phi i64 [ %.0.us.i13.add, %.split.us.i11 ], [ 64, %bb.a ]
  %i.ay = trunc i64 %.012.us.i12 to i8
  %i.az = and i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 48
  %.0.us.i13.add = add nsw i64 %.0.us.i13.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i13.add
  store i8 %i.ba, ptr %.ptr, align 1, !tbaa !76
  %i.bb = lshr i64 %.012.us.i12, 1                ; 2 uses
  %.not.us.i14 = icmp eq i64 %i.bb, 0
  br i1 %.not.us.i14, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, label %.split.us.i11, !llvm.loop !19

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15: ; preds = %.split.us.i11
  %i.bc = and i32 %i.b, 8192
  %.not40 = icmp eq i32 %i.bc, 0
  br i1 %.not40, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15
  %5 = and i32 %i.b, 4096
  %.not41 = icmp eq i32 %5, 0
  %6 = select i1 %.not41, i32 25136, i32 16944    ; 2 uses
  %.not.i16 = icmp eq i32 %2, 0
  %i.bd = shl nuw nsw i32 %6, 8
  %i.be = select i1 %.not.i16, i32 %6, i32 %i.bd
  %i.bf = or i32 %i.be, %2
  %i.bg = add i32 %i.bf, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bh = trunc i64 %1 to i32
  %i.bi = and i32 %i.b, 7
  %i.bj = icmp eq i32 %i.bi, 1
  %i.bk = zext i1 %i.bj to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i8 %i.bk, ptr %4, align 4, !tbaa !176
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.bh, ptr %i.bl, align 4, !tbaa !177
  %i.bm = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_10write_charIwS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %i.ak, %bb.f ], [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %i.ax, %bb.h ], [ %2, %bb.g ], [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %i.bg, %bb.i ], [ %2, %bb.c ], [ %2, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i13.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %.0.i6.add, %bb.f ], [ %.0.i6.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %.0.us.i13.add, %bb.i ], [ %i.q, %bb.c ], [ %i.y, %bb.d ] ; 5 uses
  %i.bn = trunc i64 %.0.i.idx to i32
  %i.bo = sub i32 64, %i.bn                       ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !145 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !123 ; 4 uses
  %i.bt = add nsw i32 %i.bs, 1
  %i.bu = or i32 %i.bt, %i.bq
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = lshr i32 %.0, 24                        ; 2 uses
  %i.bx = add i32 %i.bo, %i.bw                    ; 4 uses
  br i1 %i.bv, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !119
  %i.cb = add i64 %i.ca, %i.by                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !109
  %i.ce = icmp ugt i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.l, label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !107
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !inline_history !13
  br label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.k, %bb.l
  %i.ch = and i32 %.0, 16777215                   ; 2 uses
  %.not.i50 = icmp eq i32 %i.ch, 0
  br i1 %.not.i50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %i.bz, align 8, !tbaa !119
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %.not31.i.i = icmp eq i64 %.0.i.idx, 64
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load i64, ptr %i.bz, align 8, !tbaa !119
  %.pre37.i.i = load i64, ptr %i.cc, align 8, !tbaa !109
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.ck = phi i64 [ %.pre37.i.i, %.lr.ph34.i.i ], [ %i.cu, %._crit_edge.i.i ] ; 2 uses
  %i.cl = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.df, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.02732.i.i.idx ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl
  %gepdiff54 = sub nsw i64 64, %.02732.i.i.idx    ; 4 uses
  %i.cn = icmp ult i64 %i.cm, %gepdiff54
  br i1 %i.cn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !107
  %i.cp = add i64 %gepdiff54, %i.cl
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cp), !inline_history !14
  %i.cq = load i64, ptr %i.bz, align 8, !tbaa !119 ; 2 uses
  %i.cr = load i64, ptr %i.cc, align 8, !tbaa !109 ; 2 uses
  %i.cs = sub i64 %i.cr, %i.cq
  %i.ct = tail call i64 @llvm.umin.i64(i64 %gepdiff54, i64 %i.cs)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cu = phi i64 [ %i.cr, %bb.n ], [ %i.ck, %bb.m ]
  %i.cv = phi i64 [ %i.cq, %bb.n ], [ %i.cl, %bb.m ] ; 2 uses
  %.025.i.i = phi i64 [ %i.ct, %bb.n ], [ %gepdiff54, %bb.m ] ; 7 uses
  %i.cw = load ptr, ptr %0, align 8, !tbaa !108
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cv ; 2 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %min.iters.check77 = icmp ult i64 %.025.i.i, 8
  br i1 %min.iters.check77, label %.lr.ph.i.i.preheader88, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec79 = and i64 %.025.i.i, -8                ; 3 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next84, %vector.body80 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index81 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %wide.load82 = load <4 x i8>, ptr %i.cy, align 1, !tbaa !76
  %wide.load83 = load <4 x i8>, ptr %i.cz, align 1, !tbaa !76
  %i.da = sext <4 x i8> %wide.load82 to <4 x i32>
  %i.db = sext <4 x i8> %wide.load83 to <4 x i32>
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index81 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <4 x i32> %i.da, ptr %i.dc, align 4, !tbaa !129
  store <4 x i32> %i.db, ptr %i.dd, align 4, !tbaa !129
  %index.next84 = add nuw i64 %index81, 8         ; 2 uses
  %i.de = icmp eq i64 %index.next84, %n.vec79
  br i1 %i.de, label %middle.block85, label %vector.body80, !llvm.loop !705

middle.block85:                                   ; preds = %vector.body80
  %cmp.n86 = icmp eq i64 %.025.i.i, %n.vec79
  br i1 %cmp.n86, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader88

.lr.ph.i.i.preheader88:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.030.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec79, %middle.block85 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block85, %bb.o
  %i.df = add i64 %.025.i.i, %i.cv                ; 2 uses
  store i64 %i.df, ptr %i.bz, align 8, !tbaa !119
  %.02732.i.i.add = add nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 64
  br i1 %.not.i.i, label %_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.m, !llvm.loop !15

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader88, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.dk, %.lr.ph.i.i ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader88 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !76
  %i.di = sext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.030.i.i
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !129
  %i.dk = add nuw i64 %.030.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dk, %.025.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !706

bb.p:                                             ; preds = %.lr.ph, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit
  %i.dl = phi i64 [ %.pre, %.lr.ph ], [ %.pre-phi.i.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit ] ; 2 uses
  %.042.i51 = phi i32 [ %i.ch, %.lr.ph ], [ %i.du, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit ] ; 2 uses
  %i.dm = and i32 %.042.i51, 255
  %i.dn = add i64 %i.dl, 1                        ; 3 uses
  %i.do = load i64, ptr %i.cc, align 8, !tbaa !109
  %i.dp = icmp ugt i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.q, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

bb.q:                                             ; preds = %bb.p
  %i.dq = load ptr, ptr %i.ci, align 8, !tbaa !107
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dn), !inline_history !16
  %.pre.i.i17 = load i64, ptr %i.bz, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i17, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

_ZN3fmt3v1214basic_appenderIwEaSEw.exit:          ; preds = %bb.p, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.dn, %bb.p ], [ %.pre2.i.i, %bb.q ] ; 2 uses
  %i.dr = phi i64 [ %i.dl, %bb.p ], [ %.pre.i.i17, %bb.q ]
  %i.ds = load ptr, ptr %0, align 8, !tbaa !108
  store i64 %.pre-phi.i.i, ptr %i.bz, align 8, !tbaa !119
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dr
  store i32 %i.dm, ptr %i.dt, align 4, !tbaa !129
  %i.du = lshr i32 %.042.i51, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.du, 0
  br i1 %.not.i, label %._crit_edge, label %bb.p, !llvm.loop !707

bb.r:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit
  %i.dv = and i32 %i.b, 56
  %i.dw = icmp eq i32 %i.dv, 32
  br i1 %i.dw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.bq, i32 %i.bx)
  %spec.select37 = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bx)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.t:                                             ; preds = %bb.r
  %i.dx = icmp sgt i32 %i.bs, %i.bo
  br i1 %i.dx, label %bb.u, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.u:                                             ; preds = %bb.t
  %i.dy = add i32 %i.bs, %i.bw
  %i.dz = sub nsw i32 %i.bs, %i.bo
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.628.0 = phi i32 [ 0, %bb.t ], [ %spec.select, %bb.s ], [ %i.dz, %bb.u ] ; 2 uses
  %.sroa.027.0 = phi i32 [ %i.bx, %bb.t ], [ %spec.select37, %bb.s ], [ %i.dy, %bb.u ]
  %i.ea = zext i32 %.sroa.027.0 to i64            ; 2 uses
  %i.eb = zext i32 %i.bq to i64
  %i.ec = tail call i64 @llvm.usub.sat.i64(i64 %i.eb, i64 %i.ea) ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail18write_int_noinlineIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  %i.gt = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.gt, %.025.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !712

bb.ad:                                            ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i, %.lr.ph.i20
  %i.gu = phi i64 [ %.pre.i, %.lr.ph.i20 ], [ %.pre-phi.i.i.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i ] ; 2 uses
  %.09.i = phi i32 [ %i.fa, %.lr.ph.i20 ], [ %i.hd, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i ] ; 2 uses
  %i.gv = and i32 %.09.i, 255
  %i.gw = add i64 %i.gu, 1                        ; 3 uses
  %i.gx = load i64, ptr %i.fc, align 8, !tbaa !109
  %i.gy = icmp ugt i64 %i.gw, %i.gx
  br i1 %i.gy, label %bb.ae, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.gz = load ptr, ptr %i.fd, align 8, !tbaa !107
  tail call void %i.gz(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0.i.i, i64 noundef %i.gw), !inline_history !713
  %.pre.i.i6.i = load i64, ptr %i.fb, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i6.i, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i

_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i:        ; preds = %bb.ae, %bb.ad
  %.pre-phi.i.i.i = phi i64 [ %i.gw, %bb.ad ], [ %.pre2.i.i.i, %bb.ae ] ; 2 uses
  %i.ha = phi i64 [ %i.gu, %bb.ad ], [ %.pre.i.i6.i, %bb.ae ]
  %i.hb = load ptr, ptr %.sroa.09.0.i.i, align 8, !tbaa !108
  store i64 %.pre-phi.i.i.i, ptr %i.fb, align 8, !tbaa !119
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.ha
  store i32 %i.gv, ptr %i.hc, align 4, !tbaa !129
  %i.hd = lshr i32 %.09.i, 8                      ; 2 uses
  %.not.i21 = icmp eq i32 %i.hd, 0
  br i1 %.not.i21, label %._crit_edge.i22, label %bb.ad, !llvm.loop !714

_ZZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIwEEjwEET_S5_T0_RKT1_.exit.i
  %.not31.i.i19 = icmp eq i64 %i.ec, %i.ek
  br i1 %.not31.i.i19, label %_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.af

bb.af:                                            ; preds = %_ZZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.he = tail call ptr @_ZN3fmt3v126detail4fillIwNS0_14basic_appenderIwEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0.i.i, i64 noundef %i.el, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit: ; preds = %._crit_edge.i.i, %bb.af, %_ZZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, %._crit_edge, %bb.j
  %.sroa.041.1.i = phi ptr [ %i.bm, %bb.j ], [ %.sroa.09.0.i.i, %_ZZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ], [ %0, %._crit_edge ], [ %i.he, %bb.af ], [ %0, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.sroa.041.1.i
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail18write_int_noinlineIwNS0_14basic_appenderIwEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, ptr noundef byval(%"struct.fmt::v12::detail::write_int_arg.70") align 16 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #13 comdat {
bb.a:
  %3 = alloca %class.anon.62, align 4             ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 10 uses
  %.sroa.024.0.copyload = load i128, ptr %1, align 16, !tbaa !240 ; 8 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 16, !tbaa !71 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load i32, ptr %2, align 4, !tbaa !121    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i8
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i128 %.sroa.024.0.copyload, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.022.i = phi i32 [ %i.f, %.lr.ph.i ], [ 128, %bb.b ]
  %.01821.i = phi i128 [ %i.i, %.lr.ph.i ], [ %.sroa.024.0.copyload, %bb.b ] ; 2 uses
  %i.f = add i32 %.022.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.01821.i.frozen = freeze i128 %.01821.i        ; 2 uses
  %i.i = udiv i128 %.01821.i.frozen, 100          ; 3 uses
  %i.j = mul i128 %i.i, 100
  %.decomposed = sub i128 %.01821.i.frozen, %i.j
  %i.k = trunc nuw nsw i128 %.decomposed to i64
  %i.l = shl nuw nsw i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2
  store i16 %i.n, ptr %i.h, align 2
  %i.o = icmp ugt i128 %.01821.i, 9999
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i128 [ %.sroa.024.0.copyload, %bb.b ], [ %i.i, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 128, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.p = icmp samesign ugt i128 %.018.lcssa.i, 9
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.q = add i32 %.0.lcssa.i, -2
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.t = trunc nuw nsw i128 %.018.lcssa.i to i64
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  store i16 %i.w, ptr %i.s, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = trunc nuw nsw i128 %.018.lcssa.i to i8
  %i.y = or disjoint i8 %i.x, 48
  %i.z = add i32 %.0.lcssa.i, -1
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !76
  br label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.ac = and i32 %i.b, 4096
  %.not38 = icmp eq i32 %i.ac, 0                  ; 2 uses
  %.str.36..str.37.i = select i1 %.not38, ptr @.str.37, ptr @.str.36
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i128 [ %i.ah, %.split.i ], [ %.sroa.024.0.copyload, %bb.e ] ; 2 uses
  %.0.i3.idx = phi i64 [ %.0.i3.add, %.split.i ], [ 128, %bb.e ]
  %i.ad = trunc i128 %.012.i to i64
  %i.ae = and i64 %i.ad, 15
  %i.af = getelementptr inbounds nuw i8, ptr %.str.36..str.37.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !76
  %.0.i3.add = add nsw i64 %.0.i3.idx, -1         ; 4 uses
  %.ptr43 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i3.add
  store i8 %i.ag, ptr %.ptr43, align 1, !tbaa !76
  %i.ah = lshr i128 %.012.i, 4                    ; 2 uses
  %.not.i4 = icmp eq i128 %i.ah, 0
  br i1 %.not.i4, label %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !29

_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.ai = and i32 %i.b, 8192
  %.not39 = icmp eq i32 %i.ai, 0
  br i1 %.not39, label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit
  %i.aj = select i1 %.not38, i32 30768, i32 22576 ; 2 uses
  %.not.i5 = icmp eq i32 %.sroa.2.0.copyload, 0
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = select i1 %.not.i5, i32 %i.aj, i32 %i.ak
  %i.am = or i32 %i.al, %.sroa.2.0.copyload
  %i.an = add i32 %i.am, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i128 [ %i.ar, %.split.us.i ], [ %.sroa.024.0.copyload, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 128, %bb.a ] ; 2 uses
  %i.ao = trunc i128 %.012.us.i to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = or disjoint i8 %i.ap, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr42 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.aq, ptr %.ptr42, align 1, !tbaa !76
  %i.ar = lshr i128 %.012.us.i, 3                 ; 2 uses
  %.not.us.i = icmp eq i128 %i.ar, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6, label %.split.us.i, !llvm.loop !29

_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6: ; preds = %.split.us.i
  %i.as = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6
  %gepdiff = sub nsw i64 129, %.0.us.i.idx
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !123
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp sge i64 %gepdiff, %i.av
  %i.ax = icmp ne i128 %.sroa.024.0.copyload, 0
  %or.cond.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i7 = icmp eq i32 %.sroa.2.0.copyload, 0
  %i.ay = select i1 %.not.i7, i32 48, i32 12288
  %i.az = or i32 %i.ay, %.sroa.2.0.copyload
  %i.ba = add i32 %i.az, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

.split.us.i8:                                     ; preds = %bb.a, %.split.us.i8
  %.012.us.i9 = phi i128 [ %i.be, %.split.us.i8 ], [ %.sroa.024.0.copyload, %bb.a ] ; 2 uses
  %.0.us.i10.idx = phi i64 [ %.0.us.i10.add, %.split.us.i8 ], [ 128, %bb.a ]
  %i.bb = trunc i128 %.012.us.i9 to i8
  %i.bc = and i8 %i.bb, 1
  %i.bd = or disjoint i8 %i.bc, 48
  %.0.us.i10.add = add nsw i64 %.0.us.i10.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i10.add
  store i8 %i.bd, ptr %.ptr, align 1, !tbaa !76
  %i.be = lshr i128 %.012.us.i9, 1                ; 2 uses
  %.not.us.i11 = icmp eq i128 %i.be, 0
  br i1 %.not.us.i11, label %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12, label %.split.us.i8, !llvm.loop !29

_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12: ; preds = %.split.us.i8
  %i.bf = and i32 %i.b, 8192
  %.not40 = icmp eq i32 %i.bf, 0
  br i1 %.not40, label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12
  %4 = and i32 %i.b, 4096
  %.not41 = icmp eq i32 %4, 0
  %5 = select i1 %.not41, i32 25136, i32 16944    ; 2 uses
  %.not.i13 = icmp eq i32 %.sroa.2.0.copyload, 0
  %i.bg = shl nuw nsw i32 %5, 8
  %i.bh = select i1 %.not.i13, i32 %5, i32 %i.bg
  %i.bi = or i32 %i.bh, %.sroa.2.0.copyload
  %i.bj = add i32 %i.bi, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bk = trunc i128 %.sroa.024.0.copyload to i32
  %i.bl = and i32 %i.b, 7
  %i.bm = icmp eq i32 %i.bl, 1
  %i.bn = zext i1 %i.bm to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 %i.bn, ptr %3, align 4, !tbaa !176
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.bk, ptr %i.bo, align 4, !tbaa !177
  %i.bp = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_10write_charIwS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %.sroa.2.0.copyload, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12 ], [ %i.an, %bb.f ], [ %.sroa.2.0.copyload, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit ], [ %i.ba, %bb.h ], [ %.sroa.2.0.copyload, %bb.g ], [ %.sroa.2.0.copyload, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6 ], [ %i.bj, %bb.i ], [ %.sroa.2.0.copyload, %bb.c ], [ %.sroa.2.0.copyload, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i10.add, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit12 ], [ %.0.i3.add, %bb.f ], [ %.0.i3.add, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcoEEPT_iS4_T0_ib.exit6 ], [ %.0.us.i10.add, %bb.i ], [ %i.r, %bb.c ], [ %i.aa, %bb.d ] ; 5 uses
  %i.bq = trunc i64 %.0.i.idx to i32
  %i.br = sub i32 128, %i.bq                      ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !145 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !123 ; 4 uses
  %i.bw = add nsw i32 %i.bv, 1
  %i.bx = or i32 %i.bw, %i.bt
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = lshr i32 %.0, 24                        ; 2 uses
  %i.ca = add i32 %i.br, %i.bz                    ; 4 uses
  br i1 %i.by, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !119
  %i.ce = add i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !109
  %i.ch = icmp ugt i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.l, label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !107
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ce), !inline_history !13
  br label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.k, %bb.l
  %i.ck = and i32 %.0, 16777215                   ; 2 uses
  %.not.i50 = icmp eq i32 %i.ck, 0
  br i1 %.not.i50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %i.cc, align 8, !tbaa !119
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %.not31.i.i = icmp eq i64 %.0.i.idx, 128
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load i64, ptr %i.cc, align 8, !tbaa !119
  %.pre37.i.i = load i64, ptr %i.cf, align 8, !tbaa !109
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.cn = phi i64 [ %.pre37.i.i, %.lr.ph34.i.i ], [ %i.cx, %._crit_edge.i.i ] ; 2 uses
  %i.co = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.di, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.02732.i.i.idx ; 2 uses
  %i.cp = sub i64 %i.cn, %i.co
  %gepdiff54 = sub nsw i64 128, %.02732.i.i.idx   ; 4 uses
  %i.cq = icmp ult i64 %i.cp, %gepdiff54
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !107
  %i.cs = add i64 %gepdiff54, %i.co
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cs), !inline_history !14
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !119 ; 2 uses
  %i.cu = load i64, ptr %i.cf, align 8, !tbaa !109 ; 2 uses
  %i.cv = sub i64 %i.cu, %i.ct
  %i.cw = tail call i64 @llvm.umin.i64(i64 %gepdiff54, i64 %i.cv)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cx = phi i64 [ %i.cu, %bb.n ], [ %i.cn, %bb.m ]
  %i.cy = phi i64 [ %i.ct, %bb.n ], [ %i.co, %bb.m ] ; 2 uses
  %.025.i.i = phi i64 [ %i.cw, %bb.n ], [ %gepdiff54, %bb.m ] ; 7 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !108
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cy ; 2 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %min.iters.check75 = icmp ult i64 %.025.i.i, 8
  br i1 %min.iters.check75, label %.lr.ph.i.i.preheader86, label %vector.ph76

vector.ph76:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec77 = and i64 %.025.i.i, -8                ; 3 uses
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph76
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next82, %vector.body78 ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index79 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %wide.load80 = load <4 x i8>, ptr %i.db, align 1, !tbaa !76
  %wide.load81 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !76
  %i.dd = sext <4 x i8> %wide.load80 to <4 x i32>
  %i.de = sext <4 x i8> %wide.load81 to <4 x i32>
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index79 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x i32> %i.dd, ptr %i.df, align 4, !tbaa !129
  store <4 x i32> %i.de, ptr %i.dg, align 4, !tbaa !129
  %index.next82 = add nuw i64 %index79, 8         ; 2 uses
  %i.dh = icmp eq i64 %index.next82, %n.vec77
  br i1 %i.dh, label %middle.block83, label %vector.body78, !llvm.loop !715

middle.block83:                                   ; preds = %vector.body78
  %cmp.n84 = icmp eq i64 %.025.i.i, %n.vec77
  br i1 %cmp.n84, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader86

.lr.ph.i.i.preheader86:                           ; preds = %.lr.ph.i.i.preheader, %middle.block83
  %.030.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec77, %middle.block83 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block83, %bb.o
  %i.di = add i64 %.025.i.i, %i.cy                ; 2 uses
  store i64 %i.di, ptr %i.cc, align 8, !tbaa !119
  %.02732.i.i.add = add nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 128
  br i1 %.not.i.i, label %_ZN3fmt3v126detail9write_intIwNS0_14basic_appenderIwEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.m, !llvm.loop !15

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader86, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.dn, %.lr.ph.i.i ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader86 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !76
  %i.dl = sext i8 %i.dk to i32
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.030.i.i
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !129
  %i.dn = add nuw i64 %.030.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dn, %.025.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !716

bb.p:                                             ; preds = %.lr.ph, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit
  %i.do = phi i64 [ %.pre, %.lr.ph ], [ %.pre-phi.i.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit ] ; 2 uses
  %.041.i51 = phi i32 [ %i.ck, %.lr.ph ], [ %i.dx, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit ] ; 2 uses
  %i.dp = and i32 %.041.i51, 255
  %i.dq = add i64 %i.do, 1                        ; 3 uses
  %i.dr = load i64, ptr %i.cf, align 8, !tbaa !109
  %i.ds = icmp ugt i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.q, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

bb.q:                                             ; preds = %bb.p
  %i.dt = load ptr, ptr %i.cl, align 8, !tbaa !107
  tail call void %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dq), !inline_history !16
  %.pre.i.i14 = load i64, ptr %i.cc, align 8, !tbaa !119 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i14, 1
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit

_ZN3fmt3v1214basic_appenderIwEaSEw.exit:          ; preds = %bb.p, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.dq, %bb.p ], [ %.pre2.i.i, %bb.q ] ; 2 uses
  %i.du = phi i64 [ %i.do, %bb.p ], [ %.pre.i.i14, %bb.q ]
  %i.dv = load ptr, ptr %0, align 8, !tbaa !108
  store i64 %.pre-phi.i.i, ptr %i.cc, align 8, !tbaa !119
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.du
  store i32 %i.dp, ptr %i.dw, align 4, !tbaa !129
  %i.dx = lshr i32 %.041.i51, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i, label %._crit_edge, label %bb.p, !llvm.loop !717

bb.r:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i.exit
  %i.dy = and i32 %i.b, 56
  %i.dz = icmp eq i32 %i.dy, 32
  br i1 %i.dz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.bt, i32 %i.ca)
  %spec.select37 = tail call i32 @llvm.umax.i32(i32 %i.bt, i32 %i.ca)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.t:                                             ; preds = %bb.r
  %i.ea = icmp sgt i32 %i.bv, %i.br
  br i1 %i.ea, label %bb.u, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.u:                                             ; preds = %bb.t
  %i.eb = add i32 %i.bv, %i.bz
  %i.ec = sub nsw i32 %i.bv, %i.br
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.628.0 = phi i32 [ 0, %bb.t ], [ %spec.select, %bb.s ], [ %i.ec, %bb.u ] ; 2 uses
  %.sroa.027.0 = phi i32 [ %i.ca, %bb.t ], [ %spec.select37, %bb.s ], [ %i.eb, %bb.u ]
  %i.ed = zext i32 %.sroa.027.0 to i64            ; 2 uses
  %i.ee = zext i32 %i.bt to i64
  %i.ef = tail call i64 @llvm.usub.sat.i64(i64 %i.ee, i64 %i.ed) ; 4 uses
end_hunk_5
