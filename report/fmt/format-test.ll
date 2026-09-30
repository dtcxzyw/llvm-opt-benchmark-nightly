Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/format-test?download=true
inline.NumInlined: 17970
inline.NumDeleted: 3487
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.992) #39
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.992) #39
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.992) #39
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.992) #39
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.992) #39
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.945) #39
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !141
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

declare noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr, ptr noundef byval(%"class.fmt::v12::loc_value") align 16, ptr noundef nonnull align 4 dereferenceable(16), ptr) local_unnamed_addr #0

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #28 comdat {
bb.a:
  %3 = alloca %class.anon.459, align 1            ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  %.sroa.039.0.extract.trunc.i = trunc i64 %1 to i32 ; 7 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %1, 32    ; 4 uses
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = load i32, ptr %2, align 4, !tbaa !346    ; 10 uses
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
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !43

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
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !136
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.ah = and i32 %i.b, 4096
  %.not36 = icmp eq i32 %i.ah, 0                  ; 2 uses
  %.str.2325..str.2326.i = select i1 %.not36, ptr @.str.2326, ptr @.str.2325
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i32 [ %i.am, %.split.i ], [ %.sroa.039.0.extract.trunc.i, %bb.e ] ; 2 uses
  %.0.i5.idx = phi i64 [ %.0.i5.add, %.split.i ], [ 32, %bb.e ]
  %i.ai = and i32 %.012.i, 15
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.str.2325..str.2326.i, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !136
  %.0.i5.add = add nsw i64 %.0.i5.idx, -1         ; 4 uses
  %.ptr41 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i5.add
  store i8 %i.al, ptr %.ptr41, align 1, !tbaa !136
  %i.am = lshr i32 %.012.i, 4                     ; 2 uses
  %.not.i6 = icmp eq i32 %i.am, 0
  br i1 %.not.i6, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !54

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
  store i8 %i.av, ptr %.ptr40, align 1, !tbaa !136
  %i.aw = lshr i32 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i32 %i.aw, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, label %.split.us.i, !llvm.loop !54

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8: ; preds = %.split.us.i
  %i.ax = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8
  %gepdiff = sub nsw i64 33, %.0.us.i.idx
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !348
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
  store i8 %i.bi, ptr %.ptr, align 1, !tbaa !136
  %i.bj = lshr i32 %.012.us.i11, 1                ; 2 uses
  %.not.us.i13 = icmp eq i32 %i.bj, 0
  br i1 %.not.us.i13, label %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, label %.split.us.i10, !llvm.loop !54

_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14: ; preds = %.split.us.i10
  %i.bk = and i32 %i.b, 8192
  %.not38 = icmp eq i32 %i.bk, 0
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14
  %4 = and i32 %i.b, 4096
  %.not39 = icmp eq i32 %4, 0
  %5 = select i1 %.not39, i32 25136, i32 16944    ; 2 uses
  %.not.i15 = icmp eq i64 %.sroa.2.0.extract.shift.i, 0
  %i.bl = shl nuw nsw i32 %5, 8
  %i.bm = select i1 %.not.i15, i32 %5, i32 %i.bl
  %i.bn = or i32 %i.bm, %.sroa.2.0.extract.trunc.i
  %i.bo = add i32 %i.bn, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bp = trunc i64 %1 to i8
  %i.bq = and i32 %i.b, 7
  %i.br = icmp eq i32 %i.bq, 1
  %i.bs = zext i1 %i.br to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i8 %i.bs, ptr %3, align 1, !tbaa !416
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.bp, ptr %i.bt, align 1, !tbaa !417
  %i.bu = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %i.as, %bb.f ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %i.bf, %bb.h ], [ %.sroa.2.0.extract.trunc.i, %bb.g ], [ %.sroa.2.0.extract.trunc.i, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %i.bo, %bb.i ], [ %.sroa.2.0.extract.trunc.i, %bb.c ], [ %.sroa.2.0.extract.trunc.i, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i12.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit14 ], [ %.0.i5.add, %bb.f ], [ %.0.i5.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcjEEPT_iS4_T0_ib.exit8 ], [ %.0.us.i12.add, %bb.i ], [ %i.w, %bb.c ], [ %i.af, %bb.d ] ; 5 uses
  %i.bv = trunc i64 %.0.i.idx to i32
  %i.bw = sub i32 32, %i.bv                       ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !418 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !348 ; 4 uses
  %i.cb = add nsw i32 %i.ca, 1
  %i.cc = or i32 %i.cb, %i.by
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = lshr i32 %.0, 24                        ; 2 uses
  %i.cf = add i32 %i.bw, %i.ce                    ; 4 uses
  br i1 %i.cd, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !205
  %i.cj = add i64 %i.ci, %i.cg                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !204
  %i.cm = icmp ugt i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.l, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !202
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cj), !inline_history !55
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
  %.pre.i.i = load i64, ptr %i.ch, align 8, !tbaa !205
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.cs = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.df, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ %.0.i.idx, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.ct = load i64, ptr %i.ck, align 8, !tbaa !204
  %i.cu = sub i64 %i.ct, %i.cs
  %gepdiff52 = sub nsw i64 32, %.02732.i.i.idx    ; 4 uses
  %i.cv = icmp ult i64 %i.cu, %gepdiff52
  br i1 %i.cv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !202
  %i.cx = add i64 %gepdiff52, %i.cs
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cx), !inline_history !56
  %i.cy = load i64, ptr %i.ch, align 8, !tbaa !205 ; 2 uses
  %i.cz = load i64, ptr %i.ck, align 8, !tbaa !204
  %i.da = sub i64 %i.cz, %i.cy
  %i.db = tail call i64 @llvm.umin.i64(i64 %gepdiff52, i64 %i.da)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026.i.i = phi i64 [ %i.cy, %bb.n ], [ %i.cs, %bb.m ] ; 2 uses
  %.025.i.i = phi i64 [ %i.db, %bb.n ], [ %gepdiff52, %bb.m ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.dc = load ptr, ptr %0, align 8, !tbaa !203
  %i.dd = getelementptr i8, ptr %i.dc, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !136
  %.pre37.i.i = load i64, ptr %i.ch, align 8, !tbaa !205
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.o
  %i.de = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.o ]
  %i.df = add i64 %i.de, %.025.i.i                ; 2 uses
  store i64 %i.df, ptr %i.ch, align 8, !tbaa !205
  %.02732.i.i.add = add nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 32
  br i1 %.not.i.i, label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit, label %bb.m, !llvm.loop !12

bb.p:                                             ; preds = %.lr.ph, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.042.i49 = phi i32 [ %i.cp, %.lr.ph ], [ %i.dp, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ] ; 2 uses
  %i.dg = trunc i32 %.042.i49 to i8
  %i.dh = load i64, ptr %i.ch, align 8, !tbaa !205 ; 2 uses
  %i.di = add i64 %i.dh, 1                        ; 3 uses
  %i.dj = load i64, ptr %i.ck, align 8, !tbaa !204
  %i.dk = icmp ugt i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.q, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.q:                                             ; preds = %bb.p
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !202
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.di), !inline_history !57
  %.pre.i.i16 = load i64, ptr %i.ch, align 8, !tbaa !205 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.p, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.di, %bb.p ], [ %.pre2.i.i, %bb.q ]
  %i.dm = phi i64 [ %i.dh, %bb.p ], [ %.pre.i.i16, %bb.q ]
  %i.dn = load ptr, ptr %0, align 8, !tbaa !203
  store i64 %.pre-phi.i.i, ptr %i.ch, align 8, !tbaa !205
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm
  store i8 %i.dg, ptr %i.do, align 1, !tbaa !136
  %i.dp = lshr i32 %.042.i49, 8                   ; 2 uses
  %.not.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i, label %._crit_edge, label %bb.p, !llvm.loop !6103

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
  %i.eb = getelementptr inbounds nuw i8, ptr @.str.2328, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !136
  %i.ed = sext i8 %i.ec to i64
  %i.ee = and i64 %i.ed, 4294967295
  %i.ef = lshr i64 %i.dx, %i.ee                   ; 4 uses
  %i.eg = sub nsw i64 %i.dx, %i.ef
  %i.eh = lshr i32 %i.b, 15
  %i.ei = and i32 %i.eh, 7
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = mul nuw nsw i64 %i.dx, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !205
  %i.en = add i64 %i.em, %i.dv
  %i.eo = add i64 %i.en, %i.ek                    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !204
  %i.er = icmp ugt i64 %i.eo, %i.eq
  br i1 %i.er, label %bb.v, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.v:                                             ; preds = %_ZN3fmt3v126detail12size_paddingC2EijRKNS0_12format_specsE.exit
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !202
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eo), !inline_history !6104
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
begin_hunk_1_@_ZNK3fmt3v129formatterINS0_17group_digits_viewIiEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES3_RT_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load i32, ptr %3, align 8, !tbaa !346
  %i.h = lshr i32 %i.g, 8
  %i.i = and i32 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.l = icmp slt i32 %1, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub i32 0, %1
  br label %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load i32, ptr %3, align 8, !tbaa !346
  %i.o = lshr i32 %i.n, 10
  %i.p = and i32 %i.o, 3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3fmt3v126detail18make_write_int_argIiEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE.prefixes, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !141
  br label %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit: ; preds = %bb.b, %bb.c
  %.06.i = phi i32 [ 16777261, %bb.b ], [ %i.s, %bb.c ]
  %.0.i = phi i32 [ %i.m, %bb.b ], [ %1, %bb.c ]
  %.sroa.0.0.insert.ext.i = zext i32 %.0.i to i64
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !376
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store i8 3, ptr %i.t, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.v, align 1, !tbaa !136
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store i8 44, ptr %i.w, align 8, !tbaa !136
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.y, align 1, !tbaa !136
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !154
  %i.aa = load i16, ptr %i.t, align 8
  store i16 %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.ab, align 8, !tbaa !155
  store ptr %i.t, ptr %5, align 8, !tbaa !133
  store i64 0, ptr %i.u, align 8, !tbaa !155
  store i8 0, ptr %i.t, align 8, !tbaa !136
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !154
  %i.ae = load i16, ptr %i.w, align 8
  store i16 %i.ae, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 1, ptr %i.af, align 8, !tbaa !155
  store ptr %i.w, ptr %6, align 8, !tbaa !133
  store i64 0, ptr %i.x, align 8, !tbaa !155
  store i8 0, ptr %i.w, align 8, !tbaa !136
  %i.ag = invoke ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %.sroa.0.0.copyload.i, i64 noundef %.sroa.0.0.insert.ext.i, i32 noundef %.06.i, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !133 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ad
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !136
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.al = load ptr, ptr %4, align 8, !tbaa !133   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.z
  br i1 %i.am, label %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.an = load i64, ptr %i.z, align 8, !tbaa !136
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #37
  br label %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit

_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ap = load ptr, ptr %6, align 8, !tbaa !133   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.w
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit
  %i.ar = load i64, ptr %i.w, align 8, !tbaa !136
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.at = load ptr, ptr %5, align 8, !tbaa !133   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.t
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.t, align 8, !tbaa !136
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret ptr %i.ag

bb.e:                                             ; preds = %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3fmt3v126detail14digit_groupingIcED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #36
  %i.ay = load ptr, ptr %6, align 8, !tbaa !133   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.w
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.e
  %i.ba = load i64, ptr %i.w, align 8, !tbaa !136
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.bc = load ptr, ptr %5, align 8, !tbaa !133   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.t
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.be = load i64, ptr %i.t, align 8, !tbaa !136
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.459, align 1            ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer.39", align 8 ; 18 uses
  %7 = alloca %class.anon.654, align 8            ; 7 uses
  store i32 %2, ptr %i.d, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 13 uses
  store i64 0, ptr %i.g, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.f, align 8, !tbaa !202
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !203
  store i64 500, ptr %i.e, align 8, !tbaa !204
  %i.i = load i32, ptr %3, align 4, !tbaa !346    ; 8 uses
  %i.j = trunc i32 %i.i to i8
  %i.k = and i8 %i.j, 7
  switch i8 %i.k, label %bb.b [
    i8 7, label %bb.r
    i8 6, label %bb.m
    i8 4, label %bb.d
    i8 5, label %.preheader
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = or i64 %1, 1
  %i.m = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = xor i64 %i.m, 63
  %i.o = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !136   ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !148
  %i.u = icmp ult i64 %1, %i.t
  %.neg.i.i = sext i1 %i.u to i32
  %i.v = add nsw i32 %.neg.i.i, %i.q              ; 2 uses
  %i.w = invoke ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %6, i64 noundef %1, i32 noundef %i.v)
          to label %.loopexit unwind label %bb.c  ; 0 uses

bb.c:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, %bb.r, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i80, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i55, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.y = and i32 %i.i, 8192
  %.not96 = icmp eq i32 %i.y, 0
  br i1 %.not96, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %8 = and i32 %i.i, 4096
  %.not97 = icmp eq i32 %8, 0
  %9 = select i1 %.not97, i32 30768, i32 22576    ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  %i.z = shl nuw nsw i32 %9, 8
  %i.aa = select i1 %.not.i, i32 %9, i32 %i.z
  %i.ab = or i32 %i.aa, %2
  %i.ac = add i32 %i.ab, 33554432                 ; 2 uses
  store i32 %i.ac, ptr %i.d, align 4, !tbaa !141
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi i32 [ %i.ac, %bb.e ], [ %2, %bb.d ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.03.i.i = phi i64 [ %1, %bb.f ], [ %i.af, %bb.g ]
  %.0.i.i = phi i32 [ 0, %bb.f ], [ %i.ae, %bb.g ] ; 2 uses
  %i.ae = add nuw nsw i32 %.0.i.i, 1              ; 4 uses
  %i.af = lshr i64 %.03.i.i, 4                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit, label %bb.g, !llvm.loop !44

_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit: ; preds = %bb.g
  %i.ag = and i32 %i.i, 4096
  %.not98 = icmp eq i32 %i.ag, 0                  ; 2 uses
  %i.ah = zext nneg i32 %i.ae to i64              ; 5 uses
  %i.ai = icmp samesign ugt i32 %.0.i.i, 499
  br i1 %i.ai, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit
  store i64 %i.ah, ptr %i.g, align 8, !tbaa !205
  br label %bb.h

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 750) ; 4 uses
  %i.aj = invoke noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef %spec.select.i)
          to label %.noexc unwind label %bb.c     ; 4 uses

.noexc:                                           ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !205 ; 2 uses
  %i.al = icmp ule i64 %i.ak, %spec.select.i
  call void @llvm.assume(i1 %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 8 %i.h, i64 %i.ak, i1 false)
  store ptr %i.aj, ptr %6, align 8, !tbaa !203
  store i64 %spec.select.i, ptr %i.e, align 8, !tbaa !204
  %.pre.i.i = load i64, ptr %i.g, align 8, !tbaa !205 ; 2 uses
  %.pre15.i.i = add i64 %.pre.i.i, %i.ah          ; 2 uses
  %i.am = icmp ult i64 %spec.select.i, %.pre15.i.i
  br i1 %i.am, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %.noexc
  store i64 %.pre15.i.i, ptr %i.g, align 8, !tbaa !205
  %.not.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.not.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %i.an = phi i64 [ 0, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ], [ %.pre.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i ]
  %i.ao = phi ptr [ %i.h, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ], [ %i.aj, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  %.str.2325..str.2326.i.i.i = select i1 %.not98, ptr @.str.2326, ptr @.str.2325
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i, %bb.h
  %.012.i.i.i = phi i64 [ %i.av, %.split.i.i.i ], [ %1, %bb.h ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.au, %.split.i.i.i ], [ %i.aq, %bb.h ]
  %i.ar = and i64 %.012.i.i.i, 15
  %i.as = getelementptr inbounds nuw i8, ptr %.str.2325..str.2326.i.i.i, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !136
  %i.au = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1 ; 2 uses
  store i8 %i.at, ptr %i.au, align 1, !tbaa !136
  %i.av = lshr i64 %.012.i.i.i, 4                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.split.i.i.i, !llvm.loop !79

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ah ; 2 uses
  %.str.2325..str.2326.i.i17.i = select i1 %.not98, ptr @.str.2326, ptr @.str.2325
  br label %.split.i.i18.i

.split.i.i18.i:                                   ; preds = %.split.i.i18.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i
  %.012.i.i19.i = phi i64 [ %i.bb, %.split.i.i18.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i ] ; 2 uses
  %.0.i.i20.i = phi ptr [ %i.ba, %.split.i.i18.i ], [ %i.aw, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i ]
  %i.ax = and i64 %.012.i.i19.i, 15
  %i.ay = getelementptr inbounds nuw i8, ptr %.str.2325..str.2326.i.i17.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !136
  %i.ba = getelementptr inbounds i8, ptr %.0.i.i20.i, i64 -1 ; 2 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !136
  %i.bb = lshr i64 %.012.i.i19.i, 4               ; 2 uses
  %.not.i.i21.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i21.i, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i, label %.split.i.i18.i, !llvm.loop !79

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i: ; preds = %.split.i.i18.i
  %i.bc = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.aw, ptr nonnull %6)
          to label %.noexc45 unwind label %bb.c   ; 0 uses

.noexc45:                                         ; preds = %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.03.i.i46 = phi i64 [ %i.be, %.preheader ], [ %1, %bb.a ]
  %.0.i.i47 = phi i32 [ %i.bd, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.bd = add nuw nsw i32 %.0.i.i47, 1            ; 5 uses
  %i.be = lshr i64 %.03.i.i46, 3                  ; 2 uses
  %.not.i.i48 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i48, label %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit, label %.preheader, !llvm.loop !7103

_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit: ; preds = %.preheader
  %i.bf = and i32 %i.i, 8192
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !348
  %i.bi = icmp sle i32 %i.bh, %i.bd
  %i.bj = icmp ne i64 %1, 0
  %or.cond = and i1 %i.bj, %i.bi
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not.i49 = icmp eq i32 %2, 0
  %i.bk = select i1 %.not.i49, i32 48, i32 12288
  %i.bl = or i32 %i.bk, %2
  %i.bm = add i32 %i.bl, 16777216                 ; 2 uses
  store i32 %i.bm, ptr %i.d, align 4, !tbaa !141
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit
  %i.bn = phi i32 [ %i.bm, %bb.j ], [ %2, %bb.i ], [ %2, %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit ] ; 2 uses
  %i.bo = zext nneg i32 %i.bd to i64              ; 5 uses
  %i.bp = icmp samesign ugt i32 %.0.i.i47, 499
  br i1 %i.bp, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread: ; preds = %bb.k
  store i64 %i.bo, ptr %i.g, align 8, !tbaa !205
  br label %bb.l

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56: ; preds = %bb.k
  %spec.select.i130 = call i64 @llvm.umax.i64(i64 %i.bo, i64 750) ; 4 uses
  %i.bq = invoke noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef %spec.select.i130)
          to label %.noexc60 unwind label %bb.c   ; 4 uses

.noexc60:                                         ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56
  %i.br = load i64, ptr %i.g, align 8, !tbaa !205 ; 2 uses
  %i.bs = icmp ule i64 %i.br, %spec.select.i130
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr nonnull align 8 %i.h, i64 %i.br, i1 false)
  store ptr %i.bq, ptr %6, align 8, !tbaa !203
  store i64 %spec.select.i130, ptr %i.e, align 8, !tbaa !204
  %.pre.i.i57 = load i64, ptr %i.g, align 8, !tbaa !205 ; 2 uses
  %.pre15.i.i59 = add i64 %.pre.i.i57, %i.bo      ; 2 uses
  %i.bt = icmp ult i64 %spec.select.i130, %.pre15.i.i59
  br i1 %i.bt, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i54, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50: ; preds = %.noexc60
  store i64 %.pre15.i.i59, ptr %i.g, align 8, !tbaa !205
  %.not.not.i52 = icmp eq ptr %i.bq, null
  br i1 %.not.not.i52, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i54, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50
  %i.bu = phi i64 [ 0, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread ], [ %.pre.i.i57, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50 ]
  %i.bv = phi ptr [ %i.h, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread ], [ %i.bq, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i, %bb.l
  %.012.us.i.i.i = phi i64 [ %i.cc, %.split.us.i.i.i ], [ %1, %bb.l ] ; 2 uses
  %.0.us.i.i.i = phi ptr [ %i.cb, %.split.us.i.i.i ], [ %i.bx, %bb.l ]
  %i.by = trunc i64 %.012.us.i.i.i to i8
  %i.bz = and i8 %i.by, 7
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = getelementptr inbounds i8, ptr %.0.us.i.i.i, i64 -1 ; 2 uses
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !136
  %i.cc = lshr i64 %.012.us.i.i.i, 3              ; 2 uses
  %.not.us.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.us.i.i.i, label %.loopexit, label %.split.us.i.i.i, !llvm.loop !79

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i54: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50, %.noexc60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bo ; 2 uses
  br label %.split.us.i.i22.i

.split.us.i.i22.i:                                ; preds = %.split.us.i.i22.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i54
  %.012.us.i.i23.i = phi i64 [ %i.ci, %.split.us.i.i22.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i54 ] ; 2 uses
  %.0.us.i.i24.i = phi ptr [ %i.ch, %.split.us.i.i22.i ], [ %i.cd, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i54 ]
  %i.ce = trunc i64 %.012.us.i.i23.i to i8
  %i.cf = and i8 %i.ce, 7
  %i.cg = or disjoint i8 %i.cf, 48
  %i.ch = getelementptr inbounds i8, ptr %.0.us.i.i24.i, i64 -1 ; 2 uses
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !136
  %i.ci = lshr i64 %.012.us.i.i23.i, 3            ; 2 uses
  %.not.us.i.i25.i = icmp eq i64 %i.ci, 0
  br i1 %.not.us.i.i25.i, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i55, label %.split.us.i.i22.i, !llvm.loop !79

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i55: ; preds = %.split.us.i.i22.i
  %i.cj = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cd, ptr nonnull %6)
          to label %.noexc61 unwind label %bb.c   ; 0 uses

.noexc61:                                         ; preds = %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.ck = and i32 %i.i, 8192
  %.not99 = icmp eq i32 %i.ck, 0
  br i1 %.not99, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %10 = and i32 %i.i, 4096
  %.not100 = icmp eq i32 %10, 0
  %11 = select i1 %.not100, i32 25136, i32 16944  ; 2 uses
  %.not.i63 = icmp eq i32 %2, 0
  %i.cl = shl nuw nsw i32 %11, 8
  %i.cm = select i1 %.not.i63, i32 %11, i32 %i.cl
  %i.cn = or i32 %i.cm, %2
  %i.co = add i32 %i.cn, 33554432                 ; 2 uses
  store i32 %i.co, ptr %i.d, align 4, !tbaa !141
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cp = phi i32 [ %i.co, %bb.n ], [ %2, %bb.m ] ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.03.i.i64 = phi i64 [ %1, %bb.o ], [ %i.cr, %bb.p ]
  %.0.i.i65 = phi i32 [ 0, %bb.o ], [ %i.cq, %bb.p ] ; 2 uses
  %i.cq = add nuw nsw i32 %.0.i.i65, 1            ; 4 uses
  %i.cr = lshr i64 %.03.i.i64, 1                  ; 2 uses
  %.not.i.i66 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i66, label %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit, label %bb.p, !llvm.loop !7104

_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit: ; preds = %bb.p
  %i.cs = zext nneg i32 %i.cq to i64              ; 5 uses
  %i.ct = icmp samesign ugt i32 %.0.i.i65, 499
  br i1 %i.ct, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit
  store i64 %i.cs, ptr %i.g, align 8, !tbaa !205
  br label %bb.q

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit
  %spec.select.i134 = call i64 @llvm.umax.i64(i64 %i.cs, i64 750) ; 4 uses
  %i.cu = invoke noundef ptr @_ZN3fmt3v126detail8allocateEm(i64 noundef %spec.select.i134)
          to label %.noexc85 unwind label %bb.c   ; 4 uses

.noexc85:                                         ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81
  %i.cv = load i64, ptr %i.g, align 8, !tbaa !205 ; 2 uses
  %i.cw = icmp ule i64 %i.cv, %spec.select.i134
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr nonnull align 8 %i.h, i64 %i.cv, i1 false)
  store ptr %i.cu, ptr %6, align 8, !tbaa !203
  store i64 %spec.select.i134, ptr %i.e, align 8, !tbaa !204
  %.pre.i.i82 = load i64, ptr %i.g, align 8, !tbaa !205 ; 2 uses
  %.pre15.i.i84 = add i64 %.pre.i.i82, %i.cs      ; 2 uses
  %i.cx = icmp ult i64 %spec.select.i134, %.pre15.i.i84
  br i1 %i.cx, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i75, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67: ; preds = %.noexc85
  store i64 %.pre15.i.i84, ptr %i.g, align 8, !tbaa !205
  %.not.not.i69 = icmp eq ptr %i.cu, null
  br i1 %.not.not.i69, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i75, label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67
  %i.cy = phi i64 [ 0, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread ], [ %.pre.i.i82, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67 ]
  %i.cz = phi ptr [ %i.h, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread ], [ %i.cu, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67 ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  br label %.split.us.i.i.i70

.split.us.i.i.i70:                                ; preds = %.split.us.i.i.i70, %bb.q
  %.012.us.i.i.i71 = phi i64 [ %i.dg, %.split.us.i.i.i70 ], [ %1, %bb.q ] ; 2 uses
  %.0.us.i.i.i72 = phi ptr [ %i.df, %.split.us.i.i.i70 ], [ %i.db, %bb.q ]
  %i.dc = trunc i64 %.012.us.i.i.i71 to i8
  %i.dd = and i8 %i.dc, 1
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = getelementptr inbounds i8, ptr %.0.us.i.i.i72, i64 -1 ; 2 uses
  store i8 %i.de, ptr %i.df, align 1, !tbaa !136
  %i.dg = lshr i64 %.012.us.i.i.i71, 1            ; 2 uses
  %.not.us.i.i.i73 = icmp eq i64 %i.dg, 0
  br i1 %.not.us.i.i.i73, label %.loopexit, label %.split.us.i.i.i70, !llvm.loop !79

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i75: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67, %.noexc85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs ; 2 uses
  br label %.split.us.i.i22.i76

.split.us.i.i22.i76:                              ; preds = %.split.us.i.i22.i76, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i75
  %.012.us.i.i23.i77 = phi i64 [ %i.dm, %.split.us.i.i22.i76 ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i75 ] ; 2 uses
  %.0.us.i.i24.i78 = phi ptr [ %i.dl, %.split.us.i.i22.i76 ], [ %i.dh, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i75 ]
  %i.di = trunc i64 %.012.us.i.i23.i77 to i8
  %i.dj = and i8 %i.di, 1
  %i.dk = or disjoint i8 %i.dj, 48
  %i.dl = getelementptr inbounds i8, ptr %.0.us.i.i24.i78, i64 -1 ; 2 uses
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !136
  %i.dm = lshr i64 %.012.us.i.i23.i77, 1          ; 2 uses
  %.not.us.i.i25.i79 = icmp eq i64 %i.dm, 0
  br i1 %.not.us.i.i25.i79, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i80, label %.split.us.i.i22.i76, !llvm.loop !79

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i80: ; preds = %.split.us.i.i22.i76
  %i.dn = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dh, ptr nonnull %6)
          to label %.noexc86 unwind label %bb.c   ; 0 uses

.noexc86:                                         ; preds = %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit26.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.loopexit

bb.r:                                             ; preds = %bb.a
  %i.do = trunc i64 %1 to i8
  %i.dp = and i32 %i.i, 7
  %i.dq = icmp eq i32 %i.dp, 1
  %i.dr = zext i1 %i.dq to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i8 %i.dr, ptr %5, align 1, !tbaa !416
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.do, ptr %i.ds, align 1, !tbaa !417
  %i.dt = invoke ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %5)
          to label %_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit unwind label %bb.c

_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.y

.loopexit:                                        ; preds = %.split.us.i.i.i, %.split.i.i.i, %.split.us.i.i.i70, %bb.b, %.noexc45, %.noexc61, %.noexc86
  %i.du = phi i32 [ %i.ad, %.noexc45 ], [ %2, %bb.b ], [ %i.bn, %.noexc61 ], [ %i.ad, %.split.i.i.i ], [ %i.cp, %.split.us.i.i.i70 ], [ %i.cp, %.noexc86 ], [ %i.bn, %.split.us.i.i.i ]
  %.0 = phi i32 [ %i.ae, %.noexc45 ], [ %i.v, %bb.b ], [ %i.bd, %.noexc61 ], [ %i.ae, %.split.i.i.i ], [ %i.cq, %.split.us.i.i.i70 ], [ %i.cq, %.noexc86 ], [ %i.bd, %.split.us.i.i.i ] ; 2 uses
  %i.dv = lshr i32 %i.du, 24
  %i.dw = add i32 %i.dv, %.0
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !155
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit
  %i.ea = load ptr, ptr %4, align 8, !tbaa !133   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !155
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i
  %.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.em, %bb.v ] ; 3 uses
  %.sroa.0.07.i = phi ptr [ %i.ea, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.v ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ek, %bb.v ]
  %i.ef = icmp eq ptr %.sroa.0.07.i, %i.ed
  br i1 %i.ef, label %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.t

._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.s
  %.sink.i.pre.i = load i8, ptr %i.ee, align 1, !tbaa !136
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

bb.t:                                             ; preds = %bb.s
  %i.eg = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !136 ; 2 uses
  %i.eh = add i8 %i.eg, -127
  %or.cond.i.i = icmp ult i8 %i.eh, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.u, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.eg, %bb.u ], [ %.sink.i.pre.i, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.ei, %bb.u ], [ %i.ed, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.ej = sext i8 %.sink.i.i to i32
  %i.ek = add nsw i32 %.sroa.5.06.i, %i.ej        ; 2 uses
  %i.el = icmp sgt i32 %.0, %i.ek
  br i1 %i.el, label %bb.v, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit

bb.v:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i
  %i.em = add nuw nsw i32 %.08.i, 1
  br label %bb.s

_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit: ; preds = %bb.t, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i, %.loopexit
  %.0.lcssa.i = phi i32 [ 0, %.loopexit ], [ %.08.i, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i ], [ %.08.i, %bb.t ]
  %i.en = add i32 %i.dw, %.0.lcssa.i
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store ptr %i.d, ptr %7, align 8, !tbaa !172
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.ep, align 8, !tbaa !545
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %i.eq, align 8, !tbaa !7105
  %i.er = invoke ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_mcEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.eo, i64 noundef %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.y

bb.x:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.aa

bb.y:                                             ; preds = %_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit, %bb.w
  %.sroa.039.0 = phi ptr [ %i.er, %bb.w ], [ %i.dt, %_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit ]
  %i.et = load ptr, ptr %6, align 8, !tbaa !203   ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.et, %i.h
  br i1 %.not.i.i89, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef %i.et) #36
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret ptr %.sroa.039.0

bb.aa:                                            ; preds = %bb.x, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.c ], [ %i.es, %bb.x ]
  %i.eu = load ptr, ptr %6, align 8, !tbaa !203   ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.eu, %i.h
end_hunk_1
