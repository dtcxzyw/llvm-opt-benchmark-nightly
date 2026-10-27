Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41209
inline.NumDeleted: 6301
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEET_SB_:bb.a
bb.ad:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i140
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr align 1 %i.dn, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i143

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i143: ; preds = %bb.ad, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i140
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %.not.i17.i.i.i.i144 = icmp eq ptr %i.dn, null
  br i1 %.not.i17.i.i.i.i144, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i145, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i143
  tail call void @_ZdlPv(ptr noundef nonnull %i.dn) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i145

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i145: ; preds = %bb.ae, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i143
  store ptr %i.dw, ptr %1, align 8, !tbaa !833
  store ptr %i.dz, ptr %i.m, align 8, !tbaa !834
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dv
  store ptr %i.ea, ptr %i.o, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit146

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit146: ; preds = %bb.aa, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i145
  %i.eb = add nsw i32 %i.e, -1
  %i.ec = tail call ptr @_ZN10duckdb_fmt2v68internal14write_exponentIcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEET0_iS9_(i32 noundef %i.eb, ptr nonnull %1)
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit327

bb.af:                                            ; preds = %bb.a
  %.not120 = icmp slt i32 %i.d, 0
  br i1 %.not120, label %bb.cm, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = and i32 %i.h, 16711680
  %i.ee = icmp ne i32 %i.ed, 0
  %i.ef = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %or.cond3, label %bb.ah, label %bb.bg

bb.ah:                                            ; preds = %bb.ag
  %i.eg = urem i32 %i.e, 3                        ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  %spec.select = select i1 %i.eh, i32 3, i32 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit185
  %.0102473 = phi i32 [ 0, %bb.ah ], [ %i.ib, %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit185 ] ; 5 uses
  %storemerge472 = phi i32 [ %spec.select, %bb.ah ], [ 3, %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit185 ] ; 5 uses
  %i.ek = icmp sgt i32 %.0102473, 0
  br i1 %i.ek, label %bb.aj, label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit155

bb.aj:                                            ; preds = %bb.ai
  %i.el = load i32, ptr %i.g, align 4
  %i.em = lshr i32 %i.el, 16
  %i.en = trunc i32 %i.em to i8                   ; 2 uses
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !834 ; 3 uses
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !835
  %.not.i.i148 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i.i148, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !273
  %i.eq = load ptr, ptr %i.ei, align 8, !tbaa !834
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.er, ptr %i.ei, align 8, !tbaa !834
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit155

bb.al:                                            ; preds = %bb.aj
  %i.es = load ptr, ptr %1, align 8, !tbaa !833   ; 4 uses
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 7 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775807
  br i1 %i.ew, label %bb.am, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i149

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i149: ; preds = %bb.al
  %.sroa.speculated.i.i.i.i150 = tail call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ex = add i64 %.sroa.speculated.i.i.i.i150, %i.ev ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ev
  %i.ez = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 9223372036854775807)
  %i.fa = select i1 %i.ey, i64 9223372036854775807, i64 %i.ez ; 3 uses
  %.not.i.i.i.i151 = icmp ne i64 %i.fa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i151)
  %i.fb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #48 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ev ; 2 uses
  store i8 %i.en, ptr %i.fc, align 1, !tbaa !273
  %i.fd = icmp sgt i64 %i.ev, 0
  br i1 %i.fd, label %bb.an, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i152

bb.an:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i149
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fb, ptr align 1 %i.es, i64 %i.ev, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i152

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i152: ; preds = %bb.an, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i149
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %.not.i17.i.i.i153 = icmp eq ptr %i.es, null
  br i1 %.not.i17.i.i.i153, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i154, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i152
  tail call void @_ZdlPv(ptr noundef nonnull %i.es) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i154

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i154: ; preds = %bb.ao, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i152
  store ptr %i.fb, ptr %1, align 8, !tbaa !833
  store ptr %i.fe, ptr %i.ei, align 8, !tbaa !834
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fa
  store ptr %i.ff, ptr %i.ej, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit155

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit155: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i154, %bb.ak, %bb.ai
  %i.fg = load i32, ptr %i.a, align 8, !tbaa !1182 ; 2 uses
  %i.fh = icmp slt i32 %.0102473, %i.fg
  br i1 %i.fh, label %.lr.ph.i.i157, label %.lr.ph.i.i.i186

.lr.ph.i.i157:                                    ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit155
  %i.fi = sub nsw i32 %i.fg, %.0102473            ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %storemerge472, i32 %i.fi) ; 2 uses
  %i.fj = load ptr, ptr %0, align 8, !tbaa !1181
  %i.fk = sext i32 %.0102473 to i64
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 %i.fk ; 2 uses
  %i.fm = sext i32 %.sroa.speculated to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %i.fm
  %.pre.i158 = load ptr, ptr %i.ei, align 8, !tbaa !834
  %.pre5.i159 = load ptr, ptr %i.ej, align 8, !tbaa !835
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i163, %.lr.ph.i.i157
  %i.fo = phi ptr [ %.pre5.i159, %.lr.ph.i.i157 ], [ %.pre5.i.i.i174, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i163 ] ; 2 uses
  %i.fp = phi ptr [ %.pre.i158, %.lr.ph.i.i157 ], [ %.pre.i.i.i173, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i163 ] ; 2 uses
  %.07.i.i160 = phi ptr [ %i.fl, %.lr.ph.i.i157 ], [ %i.gh, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i163 ] ; 2 uses
  %i.fq = load i8, ptr %.07.i.i160, align 1, !tbaa !273 ; 2 uses
  %.not.i.i.i.i.i161 = icmp eq ptr %i.fp, %i.fo
  br i1 %.not.i.i.i.i.i161, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 %i.fq, ptr %i.fp, align 1, !tbaa !273
  %i.fr = load ptr, ptr %i.ei, align 8, !tbaa !834
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 2 uses
  store ptr %i.fs, ptr %i.ei, align 8, !tbaa !834
  %.pre4.i162 = load ptr, ptr %i.ej, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i163

bb.ar:                                            ; preds = %bb.ap
  %i.ft = load ptr, ptr %1, align 8, !tbaa !833   ; 4 uses
  %i.fu = ptrtoint ptr %i.fo to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 7 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775807
  br i1 %i.fx, label %bb.as, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i165

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i165: ; preds = %bb.ar
  %.sroa.speculated.i.i.i.i.i.i.i166 = tail call i64 @llvm.umax.i64(i64 %i.fw, i64 1)
  %i.fy = add i64 %.sroa.speculated.i.i.i.i.i.i.i166, %i.fw ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fw
  %i.ga = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 9223372036854775807)
  %i.gb = select i1 %i.fz, i64 9223372036854775807, i64 %i.ga ; 3 uses
  %.not.i.i.i.i.i.i.i167 = icmp ne i64 %i.gb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i167)
  %i.gc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #48 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fw ; 2 uses
  store i8 %i.fq, ptr %i.gd, align 1, !tbaa !273
  %i.ge = icmp sgt i64 %i.fw, 0
  br i1 %i.ge, label %bb.at, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i168

bb.at:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i165
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gc, ptr align 1 %i.ft, i64 %i.fw, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i168

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i168: ; preds = %bb.at, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i165
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i169 = icmp eq ptr %i.ft, null
  br i1 %.not.i17.i.i.i.i.i.i169, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i170, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i168
  tail call void @_ZdlPv(ptr noundef nonnull %i.ft) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i170

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i170: ; preds = %bb.au, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i168
  store ptr %i.gc, ptr %1, align 8, !tbaa !833
  store ptr %i.gf, ptr %i.ei, align 8, !tbaa !834
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gb ; 2 uses
  store ptr %i.gg, ptr %i.ej, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i163

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i163: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i170, %bb.aq
  %.pre5.i.i.i174 = phi ptr [ %i.gg, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i170 ], [ %.pre4.i162, %bb.aq ] ; 2 uses
  %.pre.i.i.i173 = phi ptr [ %i.gf, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i170 ], [ %i.fs, %bb.aq ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.07.i.i160, i64 1 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.gh, %i.fn
  br i1 %.not.i.i164, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit171, label %bb.ap, !llvm.loop !134

_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit171: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i163
  %i.gi = icmp slt i32 %i.fi, %storemerge472
  %2 = sub nsw i32 %storemerge472, %.sroa.speculated ; 2 uses
  %3 = icmp sgt i32 %2, 0
  %or.cond653 = select i1 %i.gi, i1 %3, i1 false
  br i1 %or.cond653, label %.lr.ph.i.i.i172.a, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit185

.lr.ph.i.i.i172.a:                                ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit171, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178
  %i.gj = phi ptr [ %i.hb, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178 ], [ %.pre5.i.i.i174, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit171 ] ; 2 uses
  %i.gk = phi ptr [ %i.hc, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178 ], [ %.pre.i.i.i173, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit171 ] ; 2 uses
  %.03.i.i.i175 = phi i32 [ %i.hd, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178 ], [ %2, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit171 ] ; 2 uses
  %.not.i.i.i.i.i176 = icmp eq ptr %i.gk, %i.gj
  br i1 %.not.i.i.i.i.i176, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i172.a
  store i8 48, ptr %i.gk, align 1, !tbaa !273
  %i.gl = load ptr, ptr %i.ei, align 8, !tbaa !834
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1 ; 2 uses
  store ptr %i.gm, ptr %i.ei, align 8, !tbaa !834
  %.pre4.i.i.i177 = load ptr, ptr %i.ej, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178

bb.aw:                                            ; preds = %.lr.ph.i.i.i172.a
  %i.gn = load ptr, ptr %1, align 8, !tbaa !833   ; 4 uses
  %i.go = ptrtoint ptr %i.gj to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp                    ; 7 uses
  %i.gr = icmp eq i64 %i.gq, 9223372036854775807
  br i1 %i.gr, label %bb.ax, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i179

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i179: ; preds = %bb.aw
  %.sroa.speculated.i.i.i.i.i.i.i180 = tail call i64 @llvm.umax.i64(i64 %i.gq, i64 1)
  %i.gs = add i64 %.sroa.speculated.i.i.i.i.i.i.i180, %i.gq ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.gq
  %i.gu = tail call i64 @llvm.umin.i64(i64 %i.gs, i64 9223372036854775807)
  %i.gv = select i1 %i.gt, i64 9223372036854775807, i64 %i.gu ; 3 uses
  %.not.i.i.i.i.i.i.i181 = icmp ne i64 %i.gv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i181)
  %i.gw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gv) #48 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gq ; 2 uses
  store i8 48, ptr %i.gx, align 1, !tbaa !273
  %i.gy = icmp sgt i64 %i.gq, 0
  br i1 %i.gy, label %bb.ay, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i182

bb.ay:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i179
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gw, ptr align 1 %i.gn, i64 %i.gq, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i182

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i182: ; preds = %bb.ay, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i179
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i183 = icmp eq ptr %i.gn, null
  br i1 %.not.i17.i.i.i.i.i.i183, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i184, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i182
  tail call void @_ZdlPv(ptr noundef nonnull %i.gn) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i184

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i184: ; preds = %bb.az, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i182
  store ptr %i.gw, ptr %1, align 8, !tbaa !833
  store ptr %i.gz, ptr %i.ei, align 8, !tbaa !834
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gv ; 2 uses
  store ptr %i.ha, ptr %i.ej, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i184, %bb.av
  %i.hb = phi ptr [ %.pre4.i.i.i177, %bb.av ], [ %i.ha, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i184 ]
  %i.hc = phi ptr [ %i.gm, %bb.av ], [ %i.gz, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i184 ]
  %i.hd = add nsw i32 %.03.i.i.i175, -1
  %i.he = icmp sgt i32 %.03.i.i.i175, 1
  br i1 %i.he, label %.lr.ph.i.i.i172.a, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit185, !llvm.loop !3986

.lr.ph.i.i.i186:                                  ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit155
  %.pre.i.i.i187 = load ptr, ptr %i.ei, align 8, !tbaa !834
  %.pre5.i.i.i188 = load ptr, ptr %i.ej, align 8, !tbaa !835
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i192, %.lr.ph.i.i.i186
  %i.hf = phi ptr [ %.pre5.i.i.i188, %.lr.ph.i.i.i186 ], [ %i.hx, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i192 ] ; 2 uses
  %i.hg = phi ptr [ %.pre.i.i.i187, %.lr.ph.i.i.i186 ], [ %i.hy, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i192 ] ; 2 uses
  %.03.i.i.i189 = phi i32 [ %storemerge472, %.lr.ph.i.i.i186 ], [ %i.hz, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i192 ] ; 2 uses
  %.not.i.i.i.i.i190 = icmp eq ptr %i.hg, %i.hf
  br i1 %.not.i.i.i.i.i190, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 48, ptr %i.hg, align 1, !tbaa !273
  %i.hh = load ptr, ptr %i.ei, align 8, !tbaa !834
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1 ; 2 uses
  store ptr %i.hi, ptr %i.ei, align 8, !tbaa !834
  %.pre4.i.i.i191 = load ptr, ptr %i.ej, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i192

bb.bc:                                            ; preds = %bb.ba
  %i.hj = load ptr, ptr %1, align 8, !tbaa !833   ; 4 uses
  %i.hk = ptrtoint ptr %i.hf to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl                    ; 7 uses
  %i.hn = icmp eq i64 %i.hm, 9223372036854775807
  br i1 %i.hn, label %bb.bd, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i193

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i193: ; preds = %bb.bc
  %.sroa.speculated.i.i.i.i.i.i.i194 = tail call i64 @llvm.umax.i64(i64 %i.hm, i64 1)
  %i.ho = add i64 %.sroa.speculated.i.i.i.i.i.i.i194, %i.hm ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hm
  %i.hq = tail call i64 @llvm.umin.i64(i64 %i.ho, i64 9223372036854775807)
  %i.hr = select i1 %i.hp, i64 9223372036854775807, i64 %i.hq ; 3 uses
  %.not.i.i.i.i.i.i.i195 = icmp ne i64 %i.hr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i195)
  %i.hs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #48 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hm ; 2 uses
  store i8 48, ptr %i.ht, align 1, !tbaa !273
  %i.hu = icmp sgt i64 %i.hm, 0
  br i1 %i.hu, label %bb.be, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i196

bb.be:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i193
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hs, ptr align 1 %i.hj, i64 %i.hm, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i196

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i196: ; preds = %bb.be, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i193
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i197 = icmp eq ptr %i.hj, null
  br i1 %.not.i17.i.i.i.i.i.i197, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i198, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i196
  tail call void @_ZdlPv(ptr noundef nonnull %i.hj) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i198

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i198: ; preds = %bb.bf, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i196
  store ptr %i.hs, ptr %1, align 8, !tbaa !833
  store ptr %i.hv, ptr %i.ei, align 8, !tbaa !834
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr ; 2 uses
  store ptr %i.hw, ptr %i.ej, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i192

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i192: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i198, %bb.bb
  %i.hx = phi ptr [ %.pre4.i.i.i191, %bb.bb ], [ %i.hw, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i198 ]
  %i.hy = phi ptr [ %i.hi, %bb.bb ], [ %i.hv, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i198 ]
  %i.hz = add nsw i32 %.03.i.i.i189, -1
  %i.ia = icmp sgt i32 %.03.i.i.i189, 1
  br i1 %i.ia, label %bb.ba, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit185, !llvm.loop !3986

_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit185: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i192, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i178, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit171
  %i.ib = add nsw i32 %.0102473, %storemerge472   ; 2 uses
  %i.ic = icmp slt i32 %i.ib, %i.e
  br i1 %i.ic, label %bb.ai, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEicET_S6_T0_RKT1_.exit229, !llvm.loop !3987

bb.bg:                                            ; preds = %bb.ag
  %i.id = load ptr, ptr %0, align 8, !tbaa !1181  ; 2 uses
  %i.ie = sext i32 %i.b to i64
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 %i.ie
  %.not6.i.i200 = icmp eq i32 %i.b, 0
  br i1 %.not6.i.i200, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit215, label %.lr.ph.i.i201

.lr.ph.i.i201:                                    ; preds = %bb.bg
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.pre.i202 = load ptr, ptr %i.ig, align 8, !tbaa !834
  %.pre5.i203 = load ptr, ptr %i.ih, align 8, !tbaa !835
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i207, %.lr.ph.i.i201
  %i.ii = phi ptr [ %.pre5.i203, %.lr.ph.i.i201 ], [ %i.jb, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i207 ] ; 2 uses
  %i.ij = phi ptr [ %.pre.i202, %.lr.ph.i.i201 ], [ %i.jc, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i207 ] ; 2 uses
  %.07.i.i204 = phi ptr [ %i.id, %.lr.ph.i.i201 ], [ %i.jd, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i207 ] ; 2 uses
  %i.ik = load i8, ptr %.07.i.i204, align 1, !tbaa !273 ; 2 uses
  %.not.i.i.i.i.i205 = icmp eq ptr %i.ij, %i.ii
  br i1 %.not.i.i.i.i.i205, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i8 %i.ik, ptr %i.ij, align 1, !tbaa !273
  %i.il = load ptr, ptr %i.ig, align 8, !tbaa !834
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1 ; 2 uses
  store ptr %i.im, ptr %i.ig, align 8, !tbaa !834
  %.pre4.i206 = load ptr, ptr %i.ih, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i207

bb.bj:                                            ; preds = %bb.bh
  %i.in = load ptr, ptr %1, align 8, !tbaa !833   ; 4 uses
  %i.io = ptrtoint ptr %i.ii to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip                    ; 7 uses
  %i.ir = icmp eq i64 %i.iq, 9223372036854775807
  br i1 %i.ir, label %bb.bk, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i209

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i209: ; preds = %bb.bj
  %.sroa.speculated.i.i.i.i.i.i.i210 = tail call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.is = add i64 %.sroa.speculated.i.i.i.i.i.i.i210, %i.iq ; 2 uses
  %i.it = icmp ult i64 %i.is, %i.iq
  %i.iu = tail call i64 @llvm.umin.i64(i64 %i.is, i64 9223372036854775807)
  %i.iv = select i1 %i.it, i64 9223372036854775807, i64 %i.iu ; 3 uses
  %.not.i.i.i.i.i.i.i211 = icmp ne i64 %i.iv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i211)
  %i.iw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #48 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iq ; 2 uses
  store i8 %i.ik, ptr %i.ix, align 1, !tbaa !273
  %i.iy = icmp sgt i64 %i.iq, 0
  br i1 %i.iy, label %bb.bl, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i212

bb.bl:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i209
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iw, ptr align 1 %i.in, i64 %i.iq, i1 false)
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal14write_exponentIcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEEET0_iS9_:bb.a
  %.1 = phi i32 [ %.0, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit20 ], [ %i.aq, %bb.u ], [ %i.aq, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i37 ]
  %i.cm = shl nuw nsw i32 %.1, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !273 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !835
  %.not.i.i.i40 = icmp eq ptr %i.cl, %i.cs
  br i1 %.not.i.i.i40, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit38
  store i8 %i.cp, ptr %i.cl, align 1, !tbaa !273
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !834
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 2 uses
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !834
  %.pre = load ptr, ptr %i.cr, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit47

bb.aa:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit38
  %i.cv = load ptr, ptr %1, align 8, !tbaa !833   ; 4 uses
  %i.cw = ptrtoint ptr %i.cl to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 7 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775807
  br i1 %i.cz, label %bb.ab, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i41

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i41: ; preds = %bb.aa
  %.sroa.speculated.i.i.i.i.i42 = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.da = add i64 %.sroa.speculated.i.i.i.i.i42, %i.cy ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cy
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 9223372036854775807)
  %i.dd = select i1 %i.db, i64 9223372036854775807, i64 %i.dc ; 3 uses
  %.not.i.i.i.i.i43 = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i43)
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #48 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cy ; 2 uses
  store i8 %i.cp, ptr %i.df, align 1, !tbaa !273
  %i.dg = icmp sgt i64 %i.cy, 0
  br i1 %i.dg, label %bb.ac, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i44

bb.ac:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i41
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.de, ptr align 1 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i44

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i44: ; preds = %bb.ac, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i41
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  %.not.i17.i.i.i.i45 = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i.i.i45, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i44
  tail call void @_ZdlPv(ptr noundef nonnull %i.cv) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46: ; preds = %bb.ad, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i44
  store ptr %i.de, ptr %1, align 8, !tbaa !833
  store ptr %i.dh, ptr %i.cq, align 8, !tbaa !834
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd ; 2 uses
  store ptr %i.di, ptr %i.cr, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit47

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit47: ; preds = %bb.z, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46
  %i.dj = phi ptr [ %.pre, %bb.z ], [ %i.di, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46 ] ; 2 uses
  %i.dk = phi ptr [ %i.cu, %bb.z ], [ %i.dh, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i46 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !273 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.dk, %i.dj
  br i1 %.not.i.i.i49, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit47
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !273
  %i.dn = load ptr, ptr %i.cq, align 8, !tbaa !834
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store ptr %i.do, ptr %i.cq, align 8, !tbaa !834
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit56

bb.af:                                            ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit47
  %i.dp = load ptr, ptr %1, align 8, !tbaa !833   ; 4 uses
  %i.dq = ptrtoint ptr %i.dj to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 7 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775807
  br i1 %i.dt, label %bb.ag, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i50

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i50: ; preds = %bb.af
  %.sroa.speculated.i.i.i.i.i51 = tail call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.du = add i64 %.sroa.speculated.i.i.i.i.i51, %i.ds ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.ds
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.du, i64 9223372036854775807)
  %i.dx = select i1 %i.dv, i64 9223372036854775807, i64 %i.dw ; 3 uses
  %.not.i.i.i.i.i52 = icmp ne i64 %i.dx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i52)
  %i.dy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #48 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ds ; 2 uses
  store i8 %i.dm, ptr %i.dz, align 1, !tbaa !273
  %i.ea = icmp sgt i64 %i.ds, 0
  br i1 %i.ea, label %bb.ah, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i53

bb.ah:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr align 1 %i.dp, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i53

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i53: ; preds = %bb.ah, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i50
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %.not.i17.i.i.i.i54 = icmp eq ptr %i.dp, null
  br i1 %.not.i17.i.i.i.i54, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i55, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i53
  tail call void @_ZdlPv(ptr noundef nonnull %i.dp) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i55

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i55: ; preds = %bb.ai, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i53
  store ptr %i.dy, ptr %1, align 8, !tbaa !833
  store ptr %i.eb, ptr %i.cq, align 8, !tbaa !834
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dx
  store ptr %i.ec, ptr %i.cr, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit56

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit56: ; preds = %bb.ae, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i55
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1182 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1183 ; 5 uses
  %i.e = add i32 %i.d, %i.b                       ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.f, align 8, !tbaa !1187
  %i.l = sub nsw i32 %i.k, %i.b                   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = and i32 %i.h, 536870912
  %i.o = icmp ne i32 %i.n, 0
  %i.p = and i1 %i.o, %i.m                        ; 2 uses
  %i.q = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %i.q, i1 true, i1 %i.p
  %.sroa.0186.0.v = select i1 %or.cond, i64 2, i64 1
  %.sroa.0186.0 = add i64 %.sroa.0186.0.v, %1
  %i.r = sext i32 %i.b to i64
  %gepdiff227 = add i64 %.sroa.0186.0, %i.r
  %i.s = add nsw i32 %i.l, -1
  %i.t = zext nneg i32 %i.s to i64
  %.sroa.0186.1.v = select i1 %i.p, i64 %i.t, i64 -1
  %.sroa.0186.1 = add i64 %gepdiff227, %.sroa.0186.1.v ; 2 uses
  %i.u = add nsw i32 %i.e, -1
  %.sroa.028.0.i = add i64 %.sroa.0186.1, 2       ; 2 uses
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.v = icmp samesign ugt i32 %.0.i, 99
  %i.w = icmp samesign ugt i32 %.0.i, 999
  %i.x = add i64 %.sroa.0186.1, 3
  %spec.select.i = select i1 %i.w, i64 %i.x, i64 %.sroa.028.0.i
  %i.y = add i64 %spec.select.i, 1
  %.sroa.028.2.i = select i1 %i.v, i64 %i.y, i64 %.sroa.028.0.i
  %i.z = add i64 %.sroa.028.2.i, 2
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not120 = icmp slt i32 %i.d, 0
  br i1 %.not120, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = and i32 %i.h, 16711680
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond3, label %.peel.begin, label %bb.l

.peel.begin:                                      ; preds = %bb.d
  %i.ad = urem i32 %i.e, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %spec.select = select i1 %i.ae, i32 3, i32 %i.ad ; 5 uses
  %i.af = icmp sgt i32 %i.b, 0
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %i.ag = zext nneg i32 %spec.select to i64
  %i.ah = add i64 %1, %i.ag
  br label %.peel.next.preheader

bb.f:                                             ; preds = %.peel.begin
  %i.ai = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.b) ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %.sroa.05.0.lcssa.i.i133.peel = add i64 %1, %i.aj ; 3 uses
  %i.ak = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.ak, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %2 = sub nsw i32 %spec.select, %i.ai            ; 2 uses
  %3 = icmp sgt i32 %2, 0
  %i.al = add nsw i32 %2, -1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add i64 %.sroa.05.0.lcssa.i.i133.peel, 1
  %i.ao = add i64 %i.an, %i.am
  %.sroa.02.0.lcssa.i.i.i134.peel = select i1 %3, i64 %i.ao, i64 %.sroa.05.0.lcssa.i.i133.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0186.2231.ph = phi i64 [ %.sroa.02.0.lcssa.i.i.i134.peel, %bb.g ], [ %.sroa.05.0.lcssa.i.i133.peel, %bb.f ], [ %i.ah, %bb.e ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.k
  %.0102233 = phi i32 [ %i.ay, %bb.k ], [ %spec.select, %.peel.next.preheader ] ; 3 uses
  %.sroa.0186.2231 = phi i64 [ %.sroa.0186.4, %bb.k ], [ %.sroa.0186.2231.ph, %.peel.next.preheader ] ; 2 uses
  %i.ap = icmp slt i32 %.0102233, %i.b
  br i1 %i.ap, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.peel.next
  %spec.select220 = add i64 %.sroa.0186.2231, 1
  %i.aq = sub nsw i32 %i.b, %.0102233             ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 3) ; 2 uses
  %i.ar = zext nneg i32 %.sroa.speculated to i64
  %.sroa.05.0.lcssa.i.i133 = add i64 %spec.select220, %i.ar ; 2 uses
  %i.as = icmp slt i32 %i.aq, 3
  br i1 %i.as, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.at = sub i32 2, %.sroa.speculated
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add i64 %.sroa.05.0.lcssa.i.i133, 1
  %i.aw = add i64 %i.av, %i.au
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.ax = add i64 %.sroa.0186.2231, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0186.4 = phi i64 [ %i.aw, %bb.i ], [ %.sroa.05.0.lcssa.i.i133, %bb.h ], [ %i.ax, %bb.j ] ; 2 uses
  %i.ay = add nuw nsw i32 %.0102233, 3            ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.e
  br i1 %i.az, label %.peel.next, label %.loopexit229, !llvm.loop !3990

bb.l:                                             ; preds = %bb.d
  %i.ba = sext i32 %i.b to i64
  %.sroa.05.0.lcssa.i.i137 = add i64 %1, %i.ba    ; 2 uses
  %.not224 = icmp eq i32 %i.d, 0
  %i.bb = add nsw i32 %i.d, -1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = add i64 %.sroa.05.0.lcssa.i.i137, 1
  %i.be = add i64 %i.bd, %i.bc
  %.sroa.02.0.lcssa.i.i.i138 = select i1 %.not224, i64 %.sroa.05.0.lcssa.i.i137, i64 %i.be
  br label %.loopexit229

.loopexit229:                                     ; preds = %bb.k, %bb.l
  %.sroa.0186.5 = phi i64 [ %.sroa.02.0.lcssa.i.i.i138, %bb.l ], [ %.sroa.0186.4, %bb.k ] ; 3 uses
  %i.bf = and i32 %i.h, 536870912
  %.not123 = icmp eq i32 %i.bf, 0
  br i1 %.not123, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit229
  %i.bg = load i32, ptr %i.f, align 8, !tbaa !1187
  %i.bh = sub nsw i32 %i.bg, %i.e                 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not124 = icmp eq i32 %i.i, 2
  %spec.select221.v = select i1 %.not124, i64 1, i64 2
  %spec.select221 = add i64 %.sroa.0186.5, %spec.select221.v
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bj = add nsw i32 %i.bh, -1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = add i64 %.sroa.0186.5, 2
  %i.bm = add i64 %i.bl, %i.bk
  br label %.thread

bb.p:                                             ; preds = %bb.c
  %i.bn = icmp sgt i32 %i.e, 0
  br i1 %i.bn, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bo = and i32 %i.h, 16711680
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond5, label %.peel.next243, label %bb.r

.peel.next243:                                    ; preds = %bb.q
  %i.br = urem i32 %i.e, 3                        ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  %spec.select126 = select i1 %i.bs, i32 3, i32 %i.br ; 4 uses
  %i.bt = zext nneg i32 %spec.select126 to i64
  %.sroa.05.0.lcssa.i.i144.peel = add i64 %1, %i.bt ; 2 uses
  %i.bu = add i32 %i.b, %i.d
  %i.bv = xor i32 %spec.select126, -1
  %i.bw = add i32 %i.bu, %i.bv                    ; 2 uses
  %i.bx = udiv i32 %i.bw, 3
  %i.by = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bw, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next243
  %n.vec = and i32 %i.by, 2147483644              ; 3 uses
  %i.bz = mul i32 %n.vec, 3
  %i.ca = or disjoint i32 %spec.select126, %i.bz
  %i.cb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.05.0.lcssa.i.i144.peel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.cb, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi260 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cd, %vector.body ]
  %i.cc = add <2 x i64> %vec.phi, splat (i64 4)   ; 2 uses
  %i.cd = add <2 x i64> %vec.phi260, splat (i64 4) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ce = icmp eq i32 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !3991

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next243, %middle.block
  %.0104235.ph = phi i32 [ %spec.select126, %.peel.next243 ], [ %i.ca, %middle.block ]
  %.sroa.0186.8234.ph = phi i64 [ %.sroa.05.0.lcssa.i.i144.peel, %.peel.next243 ], [ %i.cf, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0104235 = phi i32 [ %i.cg, %scalar.ph ], [ %.0104235.ph, %scalar.ph.preheader ]
  %.sroa.0186.8234 = phi i64 [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ], [ %.sroa.0186.8234.ph, %scalar.ph.preheader ]
  %.sroa.05.0.lcssa.i.i144 = add i64 %.sroa.0186.8234, 4 ; 2 uses
  %i.cg = add nuw nsw i32 %.0104235, 3            ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %i.e
  br i1 %i.ch, label %scalar.ph, label %.loopexit, !llvm.loop !3992

bb.r:                                             ; preds = %bb.q
  %i.ci = zext nneg i32 %i.e to i64
  %.sroa.05.0.lcssa.i.i146 = add i64 %1, %i.ci
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.r
  %.sroa.0186.10 = phi i64 [ %.sroa.05.0.lcssa.i.i146, %bb.r ], [ %i.cf, %middle.block ], [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ] ; 2 uses
  %i.cj = and i32 %i.h, 536870912
  %.not = icmp eq i32 %i.cj, 0
  %i.ck = sext i32 %i.b to i64                    ; 2 uses
  br i1 %.not, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %.loopexit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !1181
  %i.cm = zext nneg i32 %i.e to i64
  %i.cn = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cn)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ck, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.cl, i64 %indvars.iv
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !273
  %i.cr = icmp eq i8 %i.cq, 48
  br i1 %i.cr, label %bb.t, label %.critedge.split.loop.exit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cs = icmp sgt i64 %indvars.iv.next, %i.cm
  br i1 %i.cs, label %bb.s, label %.critedge, !llvm.loop !3993

.critedge.split.loop.exit:                        ; preds = %bb.s
  %i.ct = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.critedge.split.loop.exit
  %.0105.lcssa.ph = phi i32 [ %i.ct, %.critedge.split.loop.exit ], [ %smin, %bb.t ] ; 2 uses
  %.not122 = icmp ne i32 %.0105.lcssa.ph, %i.e    ; 2 uses
  %i.cu = zext i1 %.not122 to i64
  %spec.select223 = add i64 %.sroa.0186.10, %i.cu
  %i.cv = zext nneg i32 %i.e to i64
  %i.cw = sext i32 %.0105.lcssa.ph to i64
  %gepdiff226 = sub nsw i64 %i.cw, %i.cv
  %i.cx = select i1 %.not122, i64 %gepdiff226, i64 0
  %.sroa.05.0.lcssa.i.i149 = add i64 %spec.select223, %i.cx
  br label %.thread

bb.u:                                             ; preds = %.loopexit
  %i.cy = zext nneg i32 %i.e to i64
  %gepdiff = sub nsw i64 %i.ck, %i.cy
  %i.cz = add nsw i64 %gepdiff, 1
  %.sroa.05.0.lcssa.i.i152 = add i64 %i.cz, %.sroa.0186.10 ; 2 uses
  %i.da = load i32, ptr %i.f, align 8, !tbaa !1187 ; 2 uses
  %i.db = icmp sgt i32 %i.da, %i.b
  br i1 %i.db, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.dc = xor i32 %i.b, -1
  %i.dd = add i32 %i.da, %i.dc
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = add i64 %.sroa.05.0.lcssa.i.i152, 1
  %i.dg = add i64 %i.df, %i.de
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.dh = add i64 %1, 1
  %i.di = sub nsw i32 0, %i.e                     ; 5 uses
  %i.dj = icmp eq i32 %i.b, 0
end_hunk_1
