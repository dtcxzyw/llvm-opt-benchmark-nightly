Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/ranges-test?download=true
inline.NumInlined: 6870
inline.NumDeleted: 2227
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 144
loop-unroll.NumUnrolled: 170
begin_hunk_0_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.413) #31
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.413) #31
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.413) #31
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.413) #31
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.413) #31
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.412) #31
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !137
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

declare noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr, ptr noundef byval(%"class.fmt::v12::loc_value") align 16, ptr noundef nonnull align 4 dereferenceable(16), ptr) local_unnamed_addr #0

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #20 comdat {
bb.a:
  %3 = alloca %class.anon.258, align 1            ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  %.sroa.039.0.extract.trunc.i = trunc i64 %1 to i32 ; 7 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %1, 32    ; 4 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = load i32, ptr %2, align 4, !tbaa !110    ; 10 uses
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
  %.022.i = phi i32 [ %i.s, %.lr.ph.i ], [ %.sroa.039.0.extract.trunc.i, %bb.b ] ; 2 uses
  %.02021.i = phi i32 [ %i.f, %.lr.ph.i ], [ 32, %bb.b ]
  %i.f = add i32 %.02021.i, -2                    ; 3 uses
  %i.g = zext i32 %.022.i to i64
  %i.h = mul i64 %i.g, 5497558139                 ; 2 uses
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  %i.k = lshr i64 %i.h, 31
  %i.l = and i64 %i.k, 254
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail9digits2_iEmE4data, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2
  store i16 %i.n, ptr %i.j, align 2
  %i.o = lshr i64 %i.h, 39
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = icmp ugt i32 %.022.i, -939524097
  %i.r = select i1 %i.q, i32 33554432, i32 0
  %i.s = or disjoint i32 %i.r, %i.p               ; 3 uses
  %i.t = icmp samesign ugt i32 %i.s, 99
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.020.lcssa.i = phi i32 [ 32, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %.sroa.039.0.extract.trunc.i, %bb.b ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %i.u = icmp samesign ugt i32 %.0.lcssa.i, 9
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.v = add i32 %.020.lcssa.i, -2
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.y = shl nuw nsw i32 %.0.lcssa.i, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2
  store i16 %i.ab, ptr %i.x, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.ac = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.ad = or disjoint i8 %i.ac, 48
  %i.ae = add i32 %.020.lcssa.i, -1
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !56
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.ah = and i32 %i.b, 4096
  %.not36 = icmp eq i32 %i.ah, 0                  ; 2 uses
  %.str.407..str.408.i = select i1 %.not36, ptr @.str.408, ptr @.str.407
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i32 [ %i.am, %.split.i ], [ %.sroa.039.0.extract.trunc.i, %bb.e ] ; 2 uses
  %.0.i5.idx = phi i64 [ %.0.i5.add, %.split.i ], [ 32, %bb.e ]
  %i.ai = and i32 %.012.i, 15
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.str.407..str.408.i, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !56
  %.0.i5.add = add nsw i64 %.0.i5.idx, -1         ; 4 uses
  %.ptr41 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i5.add
  store i8 %i.al, ptr %.ptr41, align 1, !tbaa !56
  %i.am = lshr i32 %.012.i, 4                     ; 2 uses
  %.not.i6 = icmp eq i32 %i.am, 0
  br i1 %.not.i6, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !9

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.an = and i32 %i.b, 8192
  %.not37 = icmp eq i32 %i.an, 0
  br i1 %.not37, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.ao = select i1 %.not36, i32 30768, i32 22576 ; 2 uses
  %.not.i7 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = select i1 %.not.i7, i32 %i.ao, i32 %i.ap
  %i.ar = or i32 %i.aq, %.sroa.2.0.extract.trunc.i
  %i.as = add i32 %i.ar, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i32 [ %i.aw, %.split.us.i ], [ %.sroa.039.0.extract.trunc.i, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 32, %bb.a ] ; 2 uses
  %i.at = trunc i32 %.012.us.i to i8
  %i.au = and i8 %i.at, 7
  %i.av = or disjoint i8 %i.au, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr40 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.av, ptr %.ptr40, align 1, !tbaa !56
  %i.aw = lshr i32 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i32 %i.aw, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, label %.split.us.i, !llvm.loop !9

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8: ; preds = %.split.us.i
  %i.ax = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8
  %gepdiff = sub nsw i64 33, %.0.us.i.idx
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !112
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp sge i64 %gepdiff, %i.ba
  %i.bc = icmp ne i32 %.sroa.039.0.extract.trunc.i, 0
  %or.cond.i = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i9 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.bd = select i1 %.not.i9, i32 48, i32 12288
  %i.be = or i32 %i.bd, %.sroa.2.0.extract.trunc.i
  %i.bf = add i32 %i.be, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

.split.us.i10:                                    ; preds = %bb.a, %.split.us.i10
  %.012.us.i11 = phi i32 [ %i.bj, %.split.us.i10 ], [ %.sroa.039.0.extract.trunc.i, %bb.a ] ; 2 uses
  %.0.us.i12.idx = phi i64 [ %.0.us.i12.add, %.split.us.i10 ], [ 32, %bb.a ]
  %i.bg = trunc i32 %.012.us.i11 to i8
  %i.bh = and i8 %i.bg, 1
  %i.bi = or disjoint i8 %i.bh, 48
  %.0.us.i12.add = add nsw i64 %.0.us.i12.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i12.add
  store i8 %i.bi, ptr %.ptr, align 1, !tbaa !56
  %i.bj = lshr i32 %.012.us.i11, 1                ; 2 uses
  %.not.us.i13 = icmp eq i32 %i.bj, 0
  br i1 %.not.us.i13, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, label %.split.us.i10, !llvm.loop !9

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14: ; preds = %.split.us.i10
  %i.bk = and i32 %i.b, 8192
  %.not38 = icmp eq i32 %i.bk, 0
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14
  %4 = shl i32 %i.b, 1
  %5 = and i32 %4, 8192
  %6 = xor i32 %5, 25136                          ; 2 uses
  %.not.i15 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.bl = shl nuw nsw i32 %6, 8
  %i.bm = select i1 %.not.i15, i32 %6, i32 %i.bl
  %i.bn = or i32 %i.bm, %.sroa.2.0.extract.trunc.i
  %i.bo = add i32 %i.bn, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bp = trunc i64 %1 to i8
  %i.bq = and i32 %i.b, 7
  %i.br = icmp eq i32 %i.bq, 1
  %i.bs = zext i1 %i.br to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i8 %i.bs, ptr %3, align 1, !tbaa !223
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.bp, ptr %i.bt, align 1, !tbaa !224
  %i.bu = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %i.as, %bb.f ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %i.bf, %bb.h ], [ %.sroa.2.0.extract.trunc.i, %bb.g ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %i.bo, %bb.i ], [ %.sroa.2.0.extract.trunc.i, %bb.c ], [ %.sroa.2.0.extract.trunc.i, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i12.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %.0.i5.add, %bb.f ], [ %.0.i5.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %.0.us.i12.add, %bb.i ], [ %i.w, %bb.c ], [ %i.af, %bb.d ] ; 5 uses
  %i.bv = trunc i64 %.0.i.idx to i32
  %i.bw = sub i32 32, %i.bv                       ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !225 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !112 ; 4 uses
  %i.cb = add nsw i32 %i.ca, 1
  %i.cc = or i32 %i.cb, %i.by
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = lshr i32 %.0, 24                        ; 2 uses
  %i.cf = add i32 %i.bw, %i.ce                    ; 4 uses
  br i1 %i.cd, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !122
  %i.cj = add i64 %i.ci, %i.cg                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !108
  %i.cm = icmp ugt i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.l, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !106
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cj), !inline_history !10
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.k, %bb.l
  %i.cp = and i32 %.0, 16777215                   ; 2 uses
  %.not.i48 = icmp eq i32 %i.cp, 0
  br i1 %.not.i48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.not31.i.i = icmp eq i64 %.0.i.idx, 32
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load i64, ptr %i.ch, align 8, !tbaa !122
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.cs = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.df, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.ct = load i64, ptr %i.ck, align 8, !tbaa !108
  %i.cu = sub i64 %i.ct, %i.cs
  %gepdiff52 = sub nsw i64 32, %.02732.i.i.idx    ; 4 uses
  %i.cv = icmp ult i64 %i.cu, %gepdiff52
  br i1 %i.cv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !106
  %i.cx = add i64 %gepdiff52, %i.cs
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cx), !inline_history !11
  %i.cy = load i64, ptr %i.ch, align 8, !tbaa !122 ; 2 uses
  %i.cz = load i64, ptr %i.ck, align 8, !tbaa !108
  %i.da = sub i64 %i.cz, %i.cy
  %i.db = tail call i64 @llvm.umin.i64(i64 %gepdiff52, i64 %i.da)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026.i.i = phi i64 [ %i.cy, %bb.n ], [ %i.cs, %bb.m ] ; 2 uses
  %.025.i.i = phi i64 [ %i.db, %bb.n ], [ %gepdiff52, %bb.m ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.dc = load ptr, ptr %0, align 8, !tbaa !107
  %i.dd = getelementptr i8, ptr %i.dc, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !56
  %.pre37.i.i = load i64, ptr %i.ch, align 8, !tbaa !122
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.o
  %i.de = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.o ]
  %i.df = add i64 %i.de, %.025.i.i                ; 2 uses
  store i64 %i.df, ptr %i.ch, align 8, !tbaa !122
  %.02732.i.i.add = add nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 32
  br i1 %.not.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.m, !llvm.loop !7

bb.p:                                             ; preds = %.lr.ph, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.042.i49 = phi i32 [ %i.cp, %.lr.ph ], [ %i.dp, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ] ; 2 uses
  %i.dg = trunc i32 %.042.i49 to i8
  %i.dh = load i64, ptr %i.ch, align 8, !tbaa !122 ; 2 uses
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %i.dj = load i64, ptr %i.ck, align 8, !tbaa !108
  %i.dk = icmp ugt i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.q:                                             ; preds = %bb.p
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !106
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.di), !inline_history !12
  %.pre.i.i16 = load i64, ptr %i.ch, align 8, !tbaa !122 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.p, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.di, %bb.p ], [ %.pre2.i.i, %bb.q ]
  %i.dm = phi i64 [ %i.dh, %bb.p ], [ %.pre.i.i16, %bb.q ]
  %i.dn = load ptr, ptr %0, align 8, !tbaa !107
  store i64 %.pre-phi.i.i, ptr %i.ch, align 8, !tbaa !122
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm
  store i8 %i.dg, ptr %i.do, align 1, !tbaa !56
  %i.dp = lshr i32 %.042.i49, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i, label %._crit_edge, label %bb.p, !llvm.loop !1307

bb.r:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.dq = and i32 %i.b, 56
  %i.dr = icmp eq i32 %i.dq, 32
  br i1 %i.dr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.by, i32 %i.cf)
  %spec.select35 = tail call i32 @llvm.umax.i32(i32 %i.by, i32 %i.cf)
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.t:                                             ; preds = %bb.r
  %i.ds = icmp sgt i32 %i.ca, %i.bw
  br i1 %i.ds, label %bb.u, label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

bb.u:                                             ; preds = %bb.t
  %i.dt = add i32 %i.ca, %i.ce
  %i.du = sub nsw i32 %i.ca, %i.bw
  br label %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit

_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.626.0 = phi i32 [ 0, %bb.t ], [ %spec.select, %bb.s ], [ %i.du, %bb.u ] ; 2 uses
  %.sroa.025.0 = phi i32 [ %i.cf, %bb.t ], [ %spec.select35, %bb.s ], [ %i.dt, %bb.u ]
  %i.dv = zext i32 %.sroa.025.0 to i64            ; 2 uses
  %i.dw = zext i32 %i.by to i64
  %i.dx = tail call i64 @llvm.usub.sat.i64(i64 %i.dw, i64 %i.dv) ; 4 uses
  %i.dy = lshr i32 %i.b, 3
  %i.dz = and i32 %i.dy, 7
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @.str.410, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !56
  %i.ed = sext i8 %i.ec to i64
  %i.ee = and i64 %i.ed, 4294967295
  %i.ef = lshr i64 %i.dx, %i.ee                   ; 4 uses
  %i.eg = sub nsw i64 %i.dx, %i.ef
  %i.eh = lshr i32 %i.b, 15
  %i.ei = and i32 %i.eh, 7
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = mul nuw nsw i64 %i.dx, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !122
  %i.en = add i64 %i.em, %i.dv
  %i.eo = add i64 %i.en, %i.ek                    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !108
  %i.er = icmp ugt i64 %i.eo, %i.eq
  br i1 %i.er, label %bb.v, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.v:                                             ; preds = %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !106
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eo), !inline_history !1308
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.v, %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %.not.i.i17 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i17, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.eu = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.ef, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.eu, %bb.w ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ] ; 17 uses
  %i.ev = and i32 %.0, 16777215                   ; 2 uses
  %.not8.i = icmp eq i32 %i.ev, 0
end_hunk_0
