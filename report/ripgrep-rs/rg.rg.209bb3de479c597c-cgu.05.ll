Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.05?download=true
inline.NumInlined: 358
inline.NumDeleted: 121
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2V_15HyperlinkFormatNtB2X_4Flag11doc_choices7CHOICES00E0EB2Z_:bb.a

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.z, %.preheader ], [ %i.h, %.critedge ], !dbg !847 ; 3 uses
  %i.j = phi ptr [ %i.x, %.preheader ], [ %i.e, %.critedge ], !dbg !848 ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -56, !dbg !847 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -56, !dbg !849 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -56, !dbg !850 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -8, !dbg !851
  %.val.i = load i16, ptr %i.n, align 8, !dbg !851, !range !153, !noalias !830, !noundef !118
  %i.o = getelementptr i8, ptr %i.i, i64 -6, !dbg !851
  %.val12.i = load i16, ptr %i.o, align 2, !dbg !851, !noalias !830
  %i.p = getelementptr i8, ptr %i.j, i64 -8, !dbg !851
  %.val13.i = load i16, ptr %i.p, align 8, !dbg !851, !range !153, !noalias !830, !noundef !118
  %i.q = getelementptr i8, ptr %i.j, i64 -6, !dbg !851
  %.val14.i = load i16, ptr %i.q, align 2, !dbg !851, !noalias !830
  %i.r = trunc nuw i16 %.val.i to i1, !dbg !852
  %i.s = trunc nuw i16 %.val13.i to i1, !dbg !853
  %.sroa.0.0.i4.i.i = select i1 %i.s, i16 %.val14.i, i16 32767, !dbg !853
  %i.t = icmp slt i16 %.val12.i, %.sroa.0.0.i4.i.i, !dbg !854
  %i.u = select i1 %i.r, i1 %i.t, i1 false, !dbg !852 ; 3 uses
  %..i17 = select i1 %i.u, ptr %i.k, ptr %i.l, !dbg !855
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %..i17, i64 56, i1 false), !dbg !856, !noalias !830
  %i.v = xor i1 %i.u, true, !dbg !857
  %i.w = zext i1 %i.v to i64, !dbg !857
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.w, !dbg !858 ; 3 uses
  %i.y = zext i1 %i.u to i64, !dbg !859
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %i.y, !dbg !860 ; 3 uses
  %i.aa = icmp eq ptr %i.x, %0, !dbg !861
  %i.ab = icmp eq ptr %i.z, %2
  %or.cond.i = select i1 %i.aa, i1 true, i1 %i.ab, !dbg !861
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB3m_15HyperlinkFormatNtB3o_4Flag11doc_choices7CHOICES00E0EB3q_.exit, label %.preheader, !dbg !861

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.ac = phi ptr [ %i.ar, %.lr.ph.i ], [ %0, %.critedge ], !dbg !862 ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ad = phi ptr [ %i.ao, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %i.ae = getelementptr i8, ptr %.sroa.0.02.i, i64 48, !dbg !862
  %.sroa.0.0.val.i = load i16, ptr %i.ae, align 8, !dbg !862, !range !153, !noalias !834, !noundef !118
  %i.af = getelementptr i8, ptr %.sroa.0.02.i, i64 50, !dbg !862
  %.sroa.0.0.val6.i = load i16, ptr %i.af, align 2, !dbg !862, !noalias !834
  %i.ag = getelementptr i8, ptr %i.ad, i64 48, !dbg !862
  %.val.i19 = load i16, ptr %i.ag, align 8, !dbg !862, !range !153, !noalias !834, !noundef !118
  %i.ah = getelementptr i8, ptr %i.ad, i64 50, !dbg !862
  %.val7.i = load i16, ptr %i.ah, align 2, !dbg !862, !noalias !834
  %i.ai = trunc nuw i16 %.sroa.0.0.val.i to i1, !dbg !863
  %i.aj = trunc nuw i16 %.val.i19 to i1, !dbg !864
  %.sroa.0.0.i4.i.i20 = select i1 %i.aj, i16 %.val7.i, i16 32767, !dbg !864
  %i.ak = icmp slt i16 %.sroa.0.0.val6.i, %.sroa.0.0.i4.i.i20, !dbg !865
  %i.al = select i1 %i.ai, i1 %i.ak, i1 false, !dbg !863 ; 3 uses
  %i.am = xor i1 %i.al, true, !dbg !866
  %.sroa.05.0.i = select i1 %i.al, ptr %.sroa.0.02.i, ptr %i.ad, !dbg !867
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05.0.i, i64 56, i1 false), !dbg !868, !noalias !834
  %i.an = zext i1 %i.am to i64, !dbg !869
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.ad, i64 %i.an, !dbg !870 ; 3 uses
  %i.ap = zext i1 %i.al to i64, !dbg !871
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i, i64 %i.ap, !dbg !872 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 56, !dbg !873 ; 2 uses
  %i.as = icmp ne ptr %i.ao, %i.h, !dbg !874
  %i.at = icmp ne ptr %i.aq, %i.f
  %or.cond.i21 = select i1 %i.as, i1 %i.at, i1 false, !dbg !874
  br i1 %or.cond.i21, label %.lr.ph.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB3m_15HyperlinkFormatNtB3o_4Flag11doc_choices7CHOICES00E0EB3q_.exit, !dbg !874

_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB3m_15HyperlinkFormatNtB3o_4Flag11doc_choices7CHOICES00E0EB3q_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.x, %.preheader ], [ %i.ar, %.lr.ph.i ], !dbg !875
  %.sroa.7.0 = phi ptr [ %i.z, %.preheader ], [ %i.h, %.lr.ph.i ], !dbg !876
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ao, %.lr.ph.i ], !dbg !876 ; 2 uses
  %i.au = ptrtoint ptr %.sroa.7.0 to i64, !dbg !877
  %i.av = ptrtoint ptr %.sroa.0.0 to i64, !dbg !877
  %i.aw = sub nuw i64 %i.au, %i.av, !dbg !877
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.aw, i1 false), !dbg !878, !noalias !835
  br label %bb.c, !dbg !879

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB3m_15HyperlinkFormatNtB3o_4Flag11doc_choices7CHOICES00E0EB3q_.exit
  ret void, !dbg !879
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2V_15HyperlinkFormatNtB2X_4Flag8doc_long3DOC00E0EB2Z_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !880 {
bb.a:
  %i.a = icmp eq i64 %4, 0, !dbg !963
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b, !dbg !963
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !963

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4, !dbg !964        ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4), !dbg !965 ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i, !dbg !966
  br i1 %i.d, label %bb.c, label %.critedge, !dbg !966

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %4, !dbg !967 ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1, !dbg !968 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c, !dbg !969 ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0, !dbg !970
  %i.g = mul nuw nsw i64 %..i, 56, !dbg !971      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false), !dbg !971
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g, !dbg !972 ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i, !dbg !973

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.z, %.preheader ], [ %i.h, %.critedge ], !dbg !974 ; 3 uses
  %i.j = phi ptr [ %i.x, %.preheader ], [ %i.e, %.critedge ], !dbg !975 ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -56, !dbg !974 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -56, !dbg !976 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -56, !dbg !977 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -8, !dbg !978
  %.val.i = load i16, ptr %i.n, align 8, !dbg !978, !range !153, !noalias !957, !noundef !118
  %i.o = getelementptr i8, ptr %i.i, i64 -6, !dbg !978
  %.val12.i = load i16, ptr %i.o, align 2, !dbg !978, !noalias !957
  %i.p = getelementptr i8, ptr %i.j, i64 -8, !dbg !978
  %.val13.i = load i16, ptr %i.p, align 8, !dbg !978, !range !153, !noalias !957, !noundef !118
  %i.q = getelementptr i8, ptr %i.j, i64 -6, !dbg !978
  %.val14.i = load i16, ptr %i.q, align 2, !dbg !978, !noalias !957
  %i.r = trunc nuw i16 %.val.i to i1, !dbg !979
  %i.s = trunc nuw i16 %.val13.i to i1, !dbg !980
  %.sroa.0.0.i4.i.i = select i1 %i.s, i16 %.val14.i, i16 32767, !dbg !980
  %i.t = icmp slt i16 %.val12.i, %.sroa.0.0.i4.i.i, !dbg !981
  %i.u = select i1 %i.r, i1 %i.t, i1 false, !dbg !979 ; 3 uses
  %..i17 = select i1 %i.u, ptr %i.k, ptr %i.l, !dbg !982
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %..i17, i64 56, i1 false), !dbg !983, !noalias !957
  %i.v = xor i1 %i.u, true, !dbg !984
  %i.w = zext i1 %i.v to i64, !dbg !984
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.w, !dbg !985 ; 3 uses
  %i.y = zext i1 %i.u to i64, !dbg !986
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %i.y, !dbg !987 ; 3 uses
  %i.aa = icmp eq ptr %i.x, %0, !dbg !988
  %i.ab = icmp eq ptr %i.z, %2
  %or.cond.i = select i1 %i.aa, i1 true, i1 %i.ab, !dbg !988
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB3m_15HyperlinkFormatNtB3o_4Flag8doc_long3DOC00E0EB3q_.exit, label %.preheader, !dbg !988

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.ac = phi ptr [ %i.ar, %.lr.ph.i ], [ %0, %.critedge ], !dbg !989 ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ad = phi ptr [ %i.ao, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %i.ae = getelementptr i8, ptr %.sroa.0.02.i, i64 48, !dbg !989
  %.sroa.0.0.val.i = load i16, ptr %i.ae, align 8, !dbg !989, !range !153, !noalias !961, !noundef !118
  %i.af = getelementptr i8, ptr %.sroa.0.02.i, i64 50, !dbg !989
  %.sroa.0.0.val6.i = load i16, ptr %i.af, align 2, !dbg !989, !noalias !961
  %i.ag = getelementptr i8, ptr %i.ad, i64 48, !dbg !989
  %.val.i19 = load i16, ptr %i.ag, align 8, !dbg !989, !range !153, !noalias !961, !noundef !118
  %i.ah = getelementptr i8, ptr %i.ad, i64 50, !dbg !989
  %.val7.i = load i16, ptr %i.ah, align 2, !dbg !989, !noalias !961
  %i.ai = trunc nuw i16 %.sroa.0.0.val.i to i1, !dbg !990
  %i.aj = trunc nuw i16 %.val.i19 to i1, !dbg !991
  %.sroa.0.0.i4.i.i20 = select i1 %i.aj, i16 %.val7.i, i16 32767, !dbg !991
  %i.ak = icmp slt i16 %.sroa.0.0.val6.i, %.sroa.0.0.i4.i.i20, !dbg !992
  %i.al = select i1 %i.ai, i1 %i.ak, i1 false, !dbg !990 ; 3 uses
  %i.am = xor i1 %i.al, true, !dbg !993
  %.sroa.05.0.i = select i1 %i.al, ptr %.sroa.0.02.i, ptr %i.ad, !dbg !994
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05.0.i, i64 56, i1 false), !dbg !995, !noalias !961
  %i.an = zext i1 %i.am to i64, !dbg !996
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.ad, i64 %i.an, !dbg !997 ; 3 uses
  %i.ap = zext i1 %i.al to i64, !dbg !998
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i, i64 %i.ap, !dbg !999 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 56, !dbg !1000 ; 2 uses
  %i.as = icmp ne ptr %i.ao, %i.h, !dbg !1001
  %i.at = icmp ne ptr %i.aq, %i.f
  %or.cond.i21 = select i1 %i.as, i1 %i.at, i1 false, !dbg !1001
  br i1 %or.cond.i21, label %.lr.ph.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB3m_15HyperlinkFormatNtB3o_4Flag8doc_long3DOC00E0EB3q_.exit, !dbg !1001

_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB3m_15HyperlinkFormatNtB3o_4Flag8doc_long3DOC00E0EB3q_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.x, %.preheader ], [ %i.ar, %.lr.ph.i ], !dbg !1002
  %.sroa.7.0 = phi ptr [ %i.z, %.preheader ], [ %i.h, %.lr.ph.i ], !dbg !1003
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ao, %.lr.ph.i ], !dbg !1003 ; 2 uses
  %i.au = ptrtoint ptr %.sroa.7.0 to i64, !dbg !1004
  %i.av = ptrtoint ptr %.sroa.0.0 to i64, !dbg !1004
  %i.aw = sub nuw i64 %i.au, %i.av, !dbg !1004
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.aw, i1 false), !dbg !1005, !noalias !962
  br label %bb.c, !dbg !1006

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_11sort_by_keysNCNCNvNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB3m_15HyperlinkFormatNtB3o_4Flag8doc_long3DOC00E0EB3q_.exit
  ret void, !dbg !1006
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMNtNtB12_5flags6hiargsNtB3r_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB12_5files0EEs2_0E0EB12_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1007 {
bb.a:
  %i.a = icmp eq i64 %4, 0, !dbg !1098
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b, !dbg !1098
  br i1 %or.cond, label %bb.m, label %bb.b, !dbg !1098

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4, !dbg !1099       ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4), !dbg !1100 ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i, !dbg !1101
  br i1 %i.d, label %bb.m, label %.critedge, !dbg !1101

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %4, !dbg !1102 ; 3 uses
  %i.f = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %1, !dbg !1103 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c, !dbg !1104 ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0, !dbg !1105
  %i.g = mul nuw nsw i64 %..i, 136, !dbg !1106    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false), !dbg !1106
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g, !dbg !1107 ; 3 uses
  %.val = load ptr, ptr %5, align 8, !dbg !1108, !nonnull !118, !noundef !118
  %.val.i.i = load ptr, ptr %.val, align 8, !noalias !118 ; 12 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i, !dbg !1109

.preheader:                                       ; preds = %.critedge, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i
  %i.i = phi ptr [ %i.af, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i ], [ %i.h, %.critedge ] ; 3 uses
  %i.j = phi ptr [ %i.ad, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -136, !dbg !1110 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -136, !dbg !1111 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -136, !dbg !1112 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -16, !dbg !1113
  %.val12.i = load i64, ptr %i.n, align 8, !dbg !1113, !noalias !1095 ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 -8, !dbg !1113
  %.val13.i = load i32, ptr %i.o, align 8, !dbg !1113, !range !160, !noalias !1095, !noundef !118 ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 -16, !dbg !1113
  %.val14.i = load i64, ptr %i.p, align 8, !dbg !1113, !noalias !1095 ; 2 uses
  %i.q = getelementptr i8, ptr %i.j, i64 -8, !dbg !1113
  %.val15.i = load i32, ptr %i.q, align 8, !dbg !1113, !range !160, !noalias !1095, !noundef !118 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.val13.i, -1, !dbg !1114
  %.not19.i.i.i = icmp eq i32 %.val15.i, -1, !dbg !1114 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !dbg !1115

bb.c:                                             ; preds = %.preheader
  br i1 %.not19.i.i.i, label %bb.g, label %bb.f, !dbg !1115

bb.d:                                             ; preds = %.preheader
  br i1 %.not19.i.i.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i, label %bb.e, !dbg !1115

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.r = load i8, ptr %.val.i.i, align 1, !dbg !1116, !range !161, !noalias !1095, !noundef !118
  %i.s = trunc nuw i8 %i.r to i1, !dbg !1116
  %spec.select.i.i.i = select i1 %i.s, i8 -1, i8 1, !dbg !1116
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i, !dbg !1116

bb.f:                                             ; preds = %bb.c
  %i.t = tail call i8 @llvm.scmp.i8.i64(i64 %.val12.i, i64 %.val14.i), !dbg !1117
  %i.u = icmp eq i64 %.val12.i, %.val14.i, !dbg !1118
  %i.v = tail call i8 @llvm.ucmp.i8.i32(i32 %.val13.i, i32 %.val15.i), !dbg !1118
  %.sroa.0.0.i.i.i = select i1 %i.u, i8 %i.v, i8 %i.t, !dbg !1118 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.w = load i8, ptr %.val.i.i, align 1, !dbg !1116, !range !161, !noalias !1095, !noundef !118
  %i.x = trunc nuw i8 %i.w to i1, !dbg !1116
  %switch.offset.i.i.i = sub nsw i8 0, %.sroa.0.0.i.i.i
  %spec.select.i.i = select i1 %i.x, i8 %switch.offset.i.i.i, i8 %.sroa.0.0.i.i.i, !dbg !1116
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i, !dbg !1116

bb.g:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.y = load i8, ptr %.val.i.i, align 1, !dbg !1116, !range !161, !noalias !1095, !noundef !118
  %i.z = trunc nuw i8 %i.y to i1, !dbg !1116
  %spec.select5.i.i.i = select i1 %i.z, i8 1, i8 -1, !dbg !1116
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i, !dbg !1116

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.1.i.i.i = phi i8 [ %spec.select.i.i.i, %bb.e ], [ %spec.select5.i.i.i, %bb.g ], [ 0, %bb.d ], [ %spec.select.i.i, %bb.f ], !dbg !1119
  %i.aa = icmp eq i8 %.sroa.0.1.i.i.i, -1, !dbg !1120 ; 3 uses
  %..i18 = select i1 %i.aa, ptr %i.k, ptr %i.l, !dbg !1121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef nonnull align 8 dereferenceable(136) %..i18, i64 136, i1 false), !dbg !1122, !noalias !1095
  %i.ab = xor i1 %i.aa, true, !dbg !1123
  %i.ac = zext i1 %i.ab to i64, !dbg !1123
  %i.ad = getelementptr inbounds nuw [136 x i8], ptr %i.k, i64 %i.ac, !dbg !1124 ; 3 uses
  %i.ae = zext i1 %i.aa to i64, !dbg !1125
  %i.af = getelementptr inbounds nuw [136 x i8], ptr %i.l, i64 %i.ae, !dbg !1126 ; 3 uses
  %i.ag = icmp eq ptr %i.ad, %0, !dbg !1127
  %i.ah = icmp eq ptr %i.af, %2
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.ah, !dbg !1127
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMNtNtB1f_5flags6hiargsNtB3S_6HiArgs4sortINtNtNtNtBb_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1f_5files0EEs2_0E0EB1f_.exit, label %.preheader, !dbg !1127

.lr.ph.i:                                         ; preds = %.critedge, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26
  %i.ai = phi ptr [ %i.bd, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26 ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.bc, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26 ], [ %i.e, %.critedge ] ; 4 uses
  %i.aj = phi ptr [ %i.ba, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26 ], [ %2, %.critedge ] ; 4 uses
  %i.ak = getelementptr i8, ptr %.sroa.0.02.i, i64 120, !dbg !1128
  %.sroa.0.0.val.i = load i64, ptr %i.ak, align 8, !dbg !1128, !noalias !1096 ; 2 uses
  %i.al = getelementptr i8, ptr %.sroa.0.02.i, i64 128, !dbg !1128
  %.sroa.0.0.val6.i = load i32, ptr %i.al, align 8, !dbg !1128, !range !160, !noalias !1096, !noundef !118 ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 120, !dbg !1128
  %.val7.i = load i64, ptr %i.am, align 8, !dbg !1128, !noalias !1096 ; 2 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 128, !dbg !1128
  %.val8.i = load i32, ptr %i.an, align 8, !dbg !1128, !range !160, !noalias !1096, !noundef !118 ; 2 uses
  %.not.i.i.i21 = icmp eq i32 %.sroa.0.0.val6.i, -1, !dbg !1129
  %.not19.i.i.i22 = icmp eq i32 %.val8.i, -1, !dbg !1129 ; 2 uses
  br i1 %.not.i.i.i21, label %bb.i, label %bb.h, !dbg !1130

bb.h:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i.i22, label %bb.l, label %bb.k, !dbg !1130

bb.i:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i.i22, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26, label %bb.j, !dbg !1130

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ao = load i8, ptr %.val.i.i, align 1, !dbg !1131, !range !161, !noalias !1096, !noundef !118
  %i.ap = trunc nuw i8 %i.ao to i1, !dbg !1131
  %spec.select.i.i.i30 = select i1 %i.ap, i8 -1, i8 1, !dbg !1131
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26, !dbg !1131

bb.k:                                             ; preds = %bb.h
  %i.aq = tail call i8 @llvm.scmp.i8.i64(i64 %.sroa.0.0.val.i, i64 %.val7.i), !dbg !1132
  %i.ar = icmp eq i64 %.sroa.0.0.val.i, %.val7.i, !dbg !1133
  %i.as = tail call i8 @llvm.ucmp.i8.i32(i32 %.sroa.0.0.val6.i, i32 %.val8.i), !dbg !1133
  %.sroa.0.0.i.i.i23 = select i1 %i.ar, i8 %i.as, i8 %i.aq, !dbg !1133 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.at = load i8, ptr %.val.i.i, align 1, !dbg !1131, !range !161, !noalias !1096, !noundef !118
  %i.au = trunc nuw i8 %i.at to i1, !dbg !1131
  %switch.offset.i.i.i24 = sub nsw i8 0, %.sroa.0.0.i.i.i23
  %spec.select.i.i25 = select i1 %i.au, i8 %switch.offset.i.i.i24, i8 %.sroa.0.0.i.i.i23, !dbg !1131
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26, !dbg !1131

bb.l:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.av = load i8, ptr %.val.i.i, align 1, !dbg !1131, !range !161, !noalias !1096, !noundef !118
  %i.aw = trunc nuw i8 %i.av to i1, !dbg !1131
  %spec.select5.i.i.i29 = select i1 %i.aw, i8 1, i8 -1, !dbg !1131
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26, !dbg !1131

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.sroa.0.1.i.i.i27 = phi i8 [ %spec.select.i.i.i30, %bb.j ], [ %spec.select5.i.i.i29, %bb.l ], [ 0, %bb.i ], [ %spec.select.i.i25, %bb.k ], !dbg !1134
  %i.ax = icmp eq i8 %.sroa.0.1.i.i.i27, -1, !dbg !1135 ; 3 uses
  %i.ay = xor i1 %i.ax, true, !dbg !1136
  %.sroa.05.0.i = select i1 %i.ax, ptr %.sroa.0.02.i, ptr %i.aj, !dbg !1137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ai, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.05.0.i, i64 136, i1 false), !dbg !1138, !noalias !1096
  %i.az = zext i1 %i.ay to i64, !dbg !1139
  %i.ba = getelementptr inbounds nuw [136 x i8], ptr %i.aj, i64 %i.az, !dbg !1140 ; 3 uses
  %i.bb = zext i1 %i.ax to i64, !dbg !1141
  %i.bc = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.02.i, i64 %i.bb, !dbg !1142 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 136, !dbg !1143 ; 2 uses
  %i.be = icmp ne ptr %i.ba, %i.h, !dbg !1144
  %i.bf = icmp ne ptr %i.bc, %i.f
  %or.cond.i28 = select i1 %i.be, i1 %i.bf, i1 false, !dbg !1144
  br i1 %or.cond.i28, label %.lr.ph.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMNtNtB1f_5flags6hiargsNtB3S_6HiArgs4sortINtNtNtNtBb_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1f_5files0EEs2_0E0EB1f_.exit, !dbg !1144

_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMNtNtB1f_5flags6hiargsNtB3S_6HiArgs4sortINtNtNtNtBb_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1f_5files0EEs2_0E0EB1f_.exit: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i
  %.sroa.13.0 = phi ptr [ %i.ad, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i ], [ %i.bd, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26 ], !dbg !1108
  %.sroa.7.0 = phi ptr [ %i.af, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i ], [ %i.h, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26 ], !dbg !1145
  %.sroa.0.0 = phi ptr [ %2, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i ], [ %i.ba, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_5files0EEs2_0E0BD_.exit.i26 ], !dbg !1145 ; 2 uses
  %i.bg = ptrtoint ptr %.sroa.7.0 to i64, !dbg !1146
  %i.bh = ptrtoint ptr %.sroa.0.0 to i64, !dbg !1146
  %i.bi = sub nuw i64 %i.bg, %i.bh, !dbg !1146
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.bi, i1 false), !dbg !1147, !noalias !1097
  br label %bb.m, !dbg !1148

bb.m:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMNtNtB1f_5flags6hiargsNtB3S_6HiArgs4sortINtNtNtNtBb_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1f_5files0EEs2_0E0EB1f_.exit
  ret void, !dbg !1148
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMNtNtB12_5flags6hiargsNtB3r_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB12_6search0EEs2_0E0EB12_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 67818912035696881) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 67818912035696881) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1149 {
bb.a:
  %i.a = icmp eq i64 %4, 0, !dbg !1240
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b, !dbg !1240
  br i1 %or.cond, label %bb.m, label %bb.b, !dbg !1240

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4, !dbg !1241       ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4), !dbg !1242 ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i, !dbg !1243
  br i1 %i.d, label %bb.m, label %.critedge, !dbg !1243

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %4, !dbg !1244 ; 3 uses
  %i.f = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %1, !dbg !1245 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c, !dbg !1246 ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0, !dbg !1247
  %i.g = mul nuw nsw i64 %..i, 136, !dbg !1248    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false), !dbg !1248
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g, !dbg !1249 ; 3 uses
  %.val = load ptr, ptr %5, align 8, !dbg !1250, !nonnull !118, !noundef !118
  %.val.i.i = load ptr, ptr %.val, align 8, !noalias !118 ; 12 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i, !dbg !1251

.preheader:                                       ; preds = %.critedge, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i
  %i.i = phi ptr [ %i.af, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i ], [ %i.h, %.critedge ] ; 3 uses
  %i.j = phi ptr [ %i.ad, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -136, !dbg !1252 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -136, !dbg !1253 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -136, !dbg !1254 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -16, !dbg !1255
  %.val12.i = load i64, ptr %i.n, align 8, !dbg !1255, !noalias !1237 ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 -8, !dbg !1255
  %.val13.i = load i32, ptr %i.o, align 8, !dbg !1255, !range !160, !noalias !1237, !noundef !118 ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 -16, !dbg !1255
  %.val14.i = load i64, ptr %i.p, align 8, !dbg !1255, !noalias !1237 ; 2 uses
  %i.q = getelementptr i8, ptr %i.j, i64 -8, !dbg !1255
  %.val15.i = load i32, ptr %i.q, align 8, !dbg !1255, !range !160, !noalias !1237, !noundef !118 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.val13.i, -1, !dbg !1256
  %.not19.i.i.i = icmp eq i32 %.val15.i, -1, !dbg !1256 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !dbg !1257

bb.c:                                             ; preds = %.preheader
  br i1 %.not19.i.i.i, label %bb.g, label %bb.f, !dbg !1257

bb.d:                                             ; preds = %.preheader
  br i1 %.not19.i.i.i, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i, label %bb.e, !dbg !1257

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.r = load i8, ptr %.val.i.i, align 1, !dbg !1258, !range !161, !noalias !1237, !noundef !118
  %i.s = trunc nuw i8 %i.r to i1, !dbg !1258
  %spec.select.i.i.i = select i1 %i.s, i8 -1, i8 1, !dbg !1258
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i, !dbg !1258

bb.f:                                             ; preds = %bb.c
  %i.t = tail call i8 @llvm.scmp.i8.i64(i64 %.val12.i, i64 %.val14.i), !dbg !1259
  %i.u = icmp eq i64 %.val12.i, %.val14.i, !dbg !1260
  %i.v = tail call i8 @llvm.ucmp.i8.i32(i32 %.val13.i, i32 %.val15.i), !dbg !1260
  %.sroa.0.0.i.i.i = select i1 %i.u, i8 %i.v, i8 %i.t, !dbg !1260 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.w = load i8, ptr %.val.i.i, align 1, !dbg !1258, !range !161, !noalias !1237, !noundef !118
  %i.x = trunc nuw i8 %i.w to i1, !dbg !1258
  %switch.offset.i.i.i = sub nsw i8 0, %.sroa.0.0.i.i.i
  %spec.select.i.i = select i1 %i.x, i8 %switch.offset.i.i.i, i8 %.sroa.0.0.i.i.i, !dbg !1258
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i, !dbg !1258

bb.g:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.y = load i8, ptr %.val.i.i, align 1, !dbg !1258, !range !161, !noalias !1237, !noundef !118
  %i.z = trunc nuw i8 %i.y to i1, !dbg !1258
  %spec.select5.i.i.i = select i1 %i.z, i8 1, i8 -1, !dbg !1258
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i, !dbg !1258

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.1.i.i.i = phi i8 [ %spec.select.i.i.i, %bb.e ], [ %spec.select5.i.i.i, %bb.g ], [ 0, %bb.d ], [ %spec.select.i.i, %bb.f ], !dbg !1261
  %i.aa = icmp eq i8 %.sroa.0.1.i.i.i, -1, !dbg !1262 ; 3 uses
  %..i18 = select i1 %i.aa, ptr %i.k, ptr %i.l, !dbg !1263
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef nonnull align 8 dereferenceable(136) %..i18, i64 136, i1 false), !dbg !1264, !noalias !1237
  %i.ab = xor i1 %i.aa, true, !dbg !1265
  %i.ac = zext i1 %i.ab to i64, !dbg !1265
  %i.ad = getelementptr inbounds nuw [136 x i8], ptr %i.k, i64 %i.ac, !dbg !1266 ; 3 uses
  %i.ae = zext i1 %i.aa to i64, !dbg !1267
  %i.af = getelementptr inbounds nuw [136 x i8], ptr %i.l, i64 %i.ae, !dbg !1268 ; 3 uses
  %i.ag = icmp eq ptr %i.ad, %0, !dbg !1269
  %i.ah = icmp eq ptr %i.af, %2
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.ah, !dbg !1269
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMNtNtB1f_5flags6hiargsNtB3S_6HiArgs4sortINtNtNtNtBb_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1f_6search0EEs2_0E0EB1f_.exit, label %.preheader, !dbg !1269

.lr.ph.i:                                         ; preds = %.critedge, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26
  %i.ai = phi ptr [ %i.bd, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26 ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.bc, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26 ], [ %i.e, %.critedge ] ; 4 uses
  %i.aj = phi ptr [ %i.ba, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26 ], [ %2, %.critedge ] ; 4 uses
  %i.ak = getelementptr i8, ptr %.sroa.0.02.i, i64 120, !dbg !1270
  %.sroa.0.0.val.i = load i64, ptr %i.ak, align 8, !dbg !1270, !noalias !1238 ; 2 uses
  %i.al = getelementptr i8, ptr %.sroa.0.02.i, i64 128, !dbg !1270
  %.sroa.0.0.val6.i = load i32, ptr %i.al, align 8, !dbg !1270, !range !160, !noalias !1238, !noundef !118 ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 120, !dbg !1270
  %.val7.i = load i64, ptr %i.am, align 8, !dbg !1270, !noalias !1238 ; 2 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 128, !dbg !1270
  %.val8.i = load i32, ptr %i.an, align 8, !dbg !1270, !range !160, !noalias !1238, !noundef !118 ; 2 uses
  %.not.i.i.i21 = icmp eq i32 %.sroa.0.0.val6.i, -1, !dbg !1271
  %.not19.i.i.i22 = icmp eq i32 %.val8.i, -1, !dbg !1271 ; 2 uses
  br i1 %.not.i.i.i21, label %bb.i, label %bb.h, !dbg !1272

bb.h:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i.i22, label %bb.l, label %bb.k, !dbg !1272

bb.i:                                             ; preds = %.lr.ph.i
  br i1 %.not19.i.i.i22, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26, label %bb.j, !dbg !1272

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ao = load i8, ptr %.val.i.i, align 1, !dbg !1273, !range !161, !noalias !1238, !noundef !118
  %i.ap = trunc nuw i8 %i.ao to i1, !dbg !1273
  %spec.select.i.i.i30 = select i1 %i.ap, i8 -1, i8 1, !dbg !1273
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26, !dbg !1273

bb.k:                                             ; preds = %bb.h
  %i.aq = tail call i8 @llvm.scmp.i8.i64(i64 %.sroa.0.0.val.i, i64 %.val7.i), !dbg !1274
  %i.ar = icmp eq i64 %.sroa.0.0.val.i, %.val7.i, !dbg !1275
  %i.as = tail call i8 @llvm.ucmp.i8.i32(i32 %.sroa.0.0.val6.i, i32 %.val8.i), !dbg !1275
  %.sroa.0.0.i.i.i23 = select i1 %i.ar, i8 %i.as, i8 %i.aq, !dbg !1275 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.at = load i8, ptr %.val.i.i, align 1, !dbg !1273, !range !161, !noalias !1238, !noundef !118
  %i.au = trunc nuw i8 %i.at to i1, !dbg !1273
  %switch.offset.i.i.i24 = sub nsw i8 0, %.sroa.0.0.i.i.i23
  %spec.select.i.i25 = select i1 %i.au, i8 %switch.offset.i.i.i24, i8 %.sroa.0.0.i.i.i23, !dbg !1273
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26, !dbg !1273

bb.l:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.av = load i8, ptr %.val.i.i, align 1, !dbg !1273, !range !161, !noalias !1238, !noundef !118
  %i.aw = trunc nuw i8 %i.av to i1, !dbg !1273
  %spec.select5.i.i.i29 = select i1 %i.aw, i8 1, i8 -1, !dbg !1273
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26, !dbg !1273

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.sroa.0.1.i.i.i27 = phi i8 [ %spec.select.i.i.i30, %bb.j ], [ %spec.select5.i.i.i29, %bb.l ], [ 0, %bb.i ], [ %spec.select.i.i25, %bb.k ], !dbg !1276
  %i.ax = icmp eq i8 %.sroa.0.1.i.i.i27, -1, !dbg !1277 ; 3 uses
  %i.ay = xor i1 %i.ax, true, !dbg !1278
  %.sroa.05.0.i = select i1 %i.ax, ptr %.sroa.0.02.i, ptr %i.aj, !dbg !1279
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ai, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.05.0.i, i64 136, i1 false), !dbg !1280, !noalias !1238
  %i.az = zext i1 %i.ay to i64, !dbg !1281
  %i.ba = getelementptr inbounds nuw [136 x i8], ptr %i.aj, i64 %i.az, !dbg !1282 ; 3 uses
  %i.bb = zext i1 %i.ax to i64, !dbg !1283
  %i.bc = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.02.i, i64 %i.bb, !dbg !1284 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 136, !dbg !1285 ; 2 uses
  %i.be = icmp ne ptr %i.ba, %i.h, !dbg !1286
  %i.bf = icmp ne ptr %i.bc, %i.f
  %or.cond.i28 = select i1 %i.be, i1 %i.bf, i1 false, !dbg !1286
  br i1 %or.cond.i28, label %.lr.ph.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMNtNtB1f_5flags6hiargsNtB3S_6HiArgs4sortINtNtNtNtBb_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1f_6search0EEs2_0E0EB1f_.exit, !dbg !1286

_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMNtNtB1f_5flags6hiargsNtB3S_6HiArgs4sortINtNtNtNtBb_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1f_6search0EEs2_0E0EB1f_.exit: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i
  %.sroa.13.0 = phi ptr [ %i.ad, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i ], [ %i.bd, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26 ], !dbg !1250
  %.sroa.7.0 = phi ptr [ %i.af, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i ], [ %i.h, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26 ], !dbg !1287
  %.sroa.0.0 = phi ptr [ %2, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i ], [ %i.ba, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEE7sort_byNCINvMNtNtBD_5flags6hiargsNtB2G_6HiArgs4sortINtNtNtNtB1h_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBD_6search0EEs2_0E0BD_.exit.i26 ], !dbg !1287 ; 2 uses
  %i.bg = ptrtoint ptr %.sroa.7.0 to i64, !dbg !1288
  %i.bh = ptrtoint ptr %.sroa.0.0 to i64, !dbg !1288
  %i.bi = sub nuw i64 %i.bg, %i.bh, !dbg !1288
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.bi, i1 false), !dbg !1289, !noalias !1239
  br label %bb.m, !dbg !1290

bb.m:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBb_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEEE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMNtNtB1f_5flags6hiargsNtB3S_6HiArgs4sortINtNtNtNtBb_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1f_6search0EEs2_0E0EB1f_.exit
  ret void, !dbg !1290
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %3, ptr noalias nofree noundef align 8 dereferenceable(232) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1291 {
bb.a:
  tail call void @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE3newCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %4, i1 noundef zeroext false), !dbg !1292
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280, !dbg !1293
  store ptr %1, ptr %i.a, align 8, !dbg !1293
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !1293
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %3, i64 160, i1 false), !dbg !1293
  ret void, !dbg !1294
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE3runCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1295 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 16               ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1359
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !1379 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !1380 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !1380, !nonnull !118, !align !184, !noundef !118
  %.val = load ptr, ptr %i.f, align 8, !dbg !1381, !nonnull !118, !align !184, !noundef !118
  call void @_RNvXs3_NtCshhHc5tDBDRu_12grep_printer4jsonINtB5_8JSONSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink5beginCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val, ptr noundef nonnull align 8 %i.h), !dbg !1382
  %i.i = load i8, ptr %i.e, align 8, !dbg !1383, !range !161, !noundef !118
  %i.j = trunc nuw i8 %i.i to i1, !dbg !1383
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !1384

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !1385
  %i.l = load ptr, ptr %i.k, align 8, !dbg !1385, !nonnull !118, !noundef !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1386
  br label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE4fillCs2NzvFoTxuAy_2rg.exit, !dbg !1387

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !1388
  %i.n = load i8, ptr %i.m, align 1, !dbg !1388, !range !161, !noundef !118
  %i.o = trunc nuw i8 %i.n to i1, !dbg !1388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1386
  br i1 %i.o, label %.preheader, label %.thread, !dbg !1359

.preheader:                                       ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.d, !dbg !1389

.thread:                                          ; preds = %bb.o, %bb.l, %bb.q, %bb.t, %bb.c, %bb.x
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272, !dbg !1390
  %i.x = load ptr, ptr %i.w, align 8, !dbg !1390, !nonnull !118, !align !184, !noundef !118 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96, !dbg !1391
  %i.z = load i64, ptr %i.y, align 8, !dbg !1391, !noundef !118
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32, !dbg !1392
  %i.ab = load ptr, ptr %i.g, align 8, !dbg !1393, !nonnull !118, !align !184, !noundef !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1394
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1394
  store i64 %i.z, ptr %i.ac, align 16, !dbg !1394
  %i.ad = load <2 x i64>, ptr %i.aa, align 8, !dbg !1392
  store <2 x i64> %i.ad, ptr %i.c, align 16, !dbg !1394
  %.val11 = load ptr, ptr %i.f, align 8, !dbg !1395, !nonnull !118, !align !184, !noundef !118
  %i.ae = call noundef ptr @_RNvXs3_NtCshhHc5tDBDRu_12grep_printer4jsonINtB5_8JSONSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink6finishCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val11, ptr noundef nonnull align 8 %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c), !dbg !1396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1397
  br label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE4fillCs2NzvFoTxuAy_2rg.exit, !dbg !1398

bb.d:                                             ; preds = %.preheader, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !1366), !dbg !1399
  %i.af = load ptr, ptr %i.q, align 8, !dbg !1400, !alias.scope !1366, !noalias !1367, !nonnull !118, !align !184, !noundef !118 ; 4 uses
  %i.ag = call { ptr, i64 } @_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer6buffer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.af), !dbg !1401, !noalias !1368
  %i.ah = extractvalue { ptr, i64 } %i.ag, 1, !dbg !1401 ; 4 uses
  %i.ai = load i64, ptr %i.r, align 8, !dbg !1402, !alias.scope !1366, !noalias !1367, !noundef !118 ; 3 uses
  %i.aj = icmp ugt i64 %i.ai, %i.ah, !dbg !1389
  br i1 %i.aj, label %bb.f, label %bb.e, !dbg !1389, !prof !200

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq i64 %i.ah, %i.ai, !dbg !1403
  br i1 %i.ak, label %bb.g, label %bb.h, !dbg !1403, !prof !201

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.ah, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #10, !dbg !1404, !noalias !1368
  unreachable, !dbg !1404

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !1405
  %i.am = load i64, ptr %i.al, align 8, !dbg !1405, !range !202, !noalias !1368, !noundef !118
  %i.an = call { ptr, i64 } @_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer6buffer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.af), !dbg !1406, !noalias !1368
  %i.ao = extractvalue { ptr, i64 } %i.an, 1, !dbg !1406 ; 2 uses
  %i.ap = call { ptr, i64 } @_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer6buffer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.af), !dbg !1407, !noalias !1368 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0, !dbg !1407
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1, !dbg !1407
  %i.as = call noundef i64 @_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4coreINtB2_4CoreRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkBY_NtCs6Ur84ob3I15_9termcolor6BufferEE4rollCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.ar), !dbg !1408, !noalias !1367 ; 2 uses
  %i.at = load ptr, ptr %i.q, align 8, !dbg !1409, !alias.scope !1366, !noalias !1367, !nonnull !118, !align !184, !noundef !118
  call void @_RNvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB5_10LineBuffer7consume(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.at, i64 noundef %i.as), !dbg !1410, !noalias !1367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1411, !noalias !1368
  %i.au = load ptr, ptr %i.q, align 8, !dbg !1412, !alias.scope !1366, !noalias !1367, !nonnull !118, !align !184, !noundef !118
  call void @_RINvMs4_NtCshqpdr3wwzuw_13grep_searcher11line_bufferNtB6_10LineBuffer4fillQINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.p), !dbg !1413, !noalias !1367
  %i.av = load i8, ptr %i.b, align 8, !dbg !1411, !range !161, !noalias !1368, !noundef !118
  %i.aw = trunc nuw i8 %i.av to i1, !dbg !1411
  br i1 %i.aw, label %bb.i, label %bb.j, !dbg !1414

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #10, !dbg !1415, !noalias !1368
  unreachable, !dbg !1415

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1416
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !1416, !noalias !1368, !nonnull !118, !noundef !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1417, !noalias !1368
  br label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE4fillCs2NzvFoTxuAy_2rg.exit, !dbg !1418

bb.j:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %i.am, 0, !dbg !1419
  %i.az = load i8, ptr %i.s, align 1, !dbg !1420, !range !161, !noalias !1368, !noundef !118 ; 2 uses
  %i.ba = trunc nuw i8 %i.az to i1, !dbg !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1417, !noalias !1368
  br i1 %.not.i, label %bb.k, label %bb.l, !dbg !1421

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.q, align 8, !dbg !1422, !alias.scope !1366, !noalias !1367, !nonnull !118, !align !184, !noundef !118 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32, !dbg !1423
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !1423, !range !202, !noalias !1367, !noundef !118
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !1424
  br i1 %i.be, label %bb.m, label %bb.l, !dbg !1424

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.ba, label %bb.p, label %.thread, !dbg !1425

bb.m:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 40, !dbg !1423
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !1423, !noalias !1367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1426, !noalias !1368
  %i.bh = load ptr, ptr %i.g, align 8, !dbg !1427, !alias.scope !1366, !noalias !1367, !nonnull !118, !align !184, !noundef !118
  %.val.i = load ptr, ptr %i.f, align 8, !dbg !1428, !alias.scope !1366, !noalias !1367, !nonnull !118, !align !184, !noundef !118
  call void @_RNvXs3_NtCshhHc5tDBDRu_12grep_printer4jsonINtB5_8JSONSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferENtNtCshqpdr3wwzuw_13grep_searcher4sink4Sink11binary_dataCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val.i, ptr noundef nonnull align 8 %i.bh, i64 noundef %i.bg), !dbg !1429, !noalias !1367
  %i.bi = load i8, ptr %i.a, align 8, !dbg !1430, !range !161, !noalias !1368, !noundef !118
  %i.bj = trunc nuw i8 %i.bi to i1, !dbg !1430
  br i1 %i.bj, label %bb.n, label %bb.o, !dbg !1431

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1432
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !1432, !noalias !1368, !nonnull !118, !noundef !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1433, !noalias !1368
  br label %_RNvMNtNtCshqpdr3wwzuw_13grep_searcher8searcher4glueINtB2_10ReadByLineRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesQQNtNtCsgwyS1EwTFAS_8grep_cli10decompress19DecompressionReaderQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkB15_NtCs6Ur84ob3I15_9termcolor6BufferEE4fillCs2NzvFoTxuAy_2rg.exit, !dbg !1434

bb.o:                                             ; preds = %bb.m
  %i.bm = load i8, ptr %i.t, align 1, !dbg !1435, !range !161, !noalias !1368, !noundef !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1433, !noalias !1368
  %i.bn = and i8 %i.bm, %i.az, !dbg !1426
  %.not = icmp eq i8 %i.bn, 0, !dbg !1426
  br i1 %.not, label %.thread, label %bb.p, !dbg !1426

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.bo = load ptr, ptr %i.q, align 8, !dbg !1436, !alias.scope !1366, !noalias !1367, !nonnull !118, !align !184, !noundef !118 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32, !dbg !1437
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !1437, !range !202, !noalias !1367, !noundef !118
  %.not8.i = icmp eq i64 %i.bq, 0, !dbg !1438
  br i1 %.not8.i, label %bb.r, label %bb.q, !dbg !1439

bb.q:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.u, align 8, !dbg !1440, !alias.scope !1366, !noalias !1367, !nonnull !118, !align !184, !noundef !118
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 58, !dbg !1441
end_hunk_0
