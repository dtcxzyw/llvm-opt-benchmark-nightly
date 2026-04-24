inline.NumInlined: 1028
inline.NumDeleted: 519
begin_hunk_0_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.n:                                             ; preds = %.lr.ph406, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175
  %.0107405 = phi i64 [ %i.q, %.lr.ph406 ], [ %.2109, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175 ] ; 23 uses
  %.0110401 = phi ptr [ %3, %.lr.ph406 ], [ %i.pn, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175 ] ; 14 uses
  %i.bi = load ptr, ptr %.0110401, align 8, !tbaa !50 ; 47 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0110401, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !56 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.o
  %i.ce = phi ptr [ %i.cc, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.bn, %bb.o ] ; 9 uses
  %i.cf = load i8, ptr %2, align 1, !tbaa !61, !range !39, !noundef !40
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = invoke noundef zeroext i8 @_ZN6google8protobuf8internal3cpp16GetUtf8CheckModeEPKNS0_15FieldDescriptorEb(ptr noundef %i.bi, i1 noundef zeroext %i.cg)
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a
bb.t:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EE9push_backEOS4_.exit
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 -8
  store i8 %i.ch, ptr %i.ci, align 8, !tbaa !63
  %8 = getelementptr inbounds i8, ptr %i.ce, i64 -16
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = icmp sgt i32 %9, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 5 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = and i8 %i.ck, 32                        ; 2 uses
  %11 = icmp ne i8 %i.cl, 0                       ; 15 uses
  %brmerge.i = or i1 %10, %11
  %.mux.i = select i1 %11, i16 32, i16 16
  br i1 %brmerge.i, label %bb.u, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i.a

_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i.a: ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = and i8 %i.cn, 8
  %.not.i.i133 = icmp eq i8 %i.co, 0
  %spec.select103.i = select i1 %.not.i.i133, i16 0, i16 48
  br label %bb.u

bb.u:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i.a, %bb.t
  %.0.i = phi i16 [ %spec.select103.i, %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i.a ], [ %.mux.i, %bb.t ] ; 28 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !19  ; 2 uses
  switch i8 %i.cq, label %bb.cd [
    i8 1, label %bb.v
    i8 2, label %bb.y
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a
    i8 4, label %bb.bj
    i8 18, label %bb.bm
    i8 3, label %bb.bp
    i8 12, label %12
    i8 9, label %bb.bs
    i8 10, label %bb.bv
    i8 11, label %bb.by
  ]

bb.v:                                             ; preds = %bb.u
  br i1 %11, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cr = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.x:                                             ; preds = %.noexc138, %bb.v
  %i.ct = phi i16 [ 6339, %bb.v ], [ %i.cs, %.noexc138 ]
  %i.cu = or disjoint i16 %i.ct, %.0.i
  br label %thread-pre-split.i

bb.y:                                             ; preds = %bb.u
  br i1 %11, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cv = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.aa:                                            ; preds = %.noexc139, %bb.y
  %i.cx = phi i16 [ 6275, %bb.y ], [ %i.cw, %.noexc139 ]
  %i.cy = or disjoint i16 %i.cx, %.0.i
  br label %thread-pre-split.i

bb.ab:                                            ; preds = %bb.u
  br i1 %11, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cz = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.ad:                                            ; preds = %.noexc140, %bb.ab
  %i.db = phi i16 [ 2179, %bb.ab ], [ %i.da, %.noexc140 ]
  %i.dc = or disjoint i16 %i.db, %.0.i
  br label %thread-pre-split.i

bb.ae:                                            ; preds = %bb.u
  br i1 %11, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dd = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.ag:                                            ; preds = %.noexc141, %bb.ae
  %i.df = phi i16 [ 4227, %bb.ae ], [ %i.de, %.noexc141 ]
  %i.dg = or disjoint i16 %i.df, %.0.i
  br label %thread-pre-split.i

bb.ah:                                            ; preds = %bb.u
  br i1 %11, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dh = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.aj:                                            ; preds = %.noexc142, %bb.ah
  %i.dj = phi i16 [ 2243, %bb.ah ], [ %i.di, %.noexc142 ]
  %i.dk = or disjoint i16 %i.dj, %.0.i
  br label %thread-pre-split.i

bb.ak:                                            ; preds = %bb.u
  br i1 %11, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dl = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.am:                                            ; preds = %.noexc143, %bb.ak
  %i.dn = phi i16 [ 4291, %bb.ak ], [ %i.dm, %.noexc143 ]
  %i.do = or disjoint i16 %i.dn, %.0.i
  br label %thread-pre-split.i

bb.an:                                            ; preds = %bb.u
  br i1 %11, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dp = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_9
begin_hunk_10_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.ap:                                            ; preds = %.noexc144, %bb.an
  %i.dr = phi i16 [ 1, %bb.an ], [ %i.dq, %.noexc144 ]
  %i.ds = or disjoint i16 %i.dr, %.0.i
  br label %thread-pre-split.i

bb.aq:                                            ; preds = %bb.u
end_hunk_10
begin_hunk_11_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.au:                                            ; preds = %.noexc148, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread98.i
  %i.ed = phi i16 [ 6273, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread98.i ], [ %i.ec, %.noexc148 ]
  %i.ee = or disjoint i16 %i.ed, %.0.i
  br label %thread-pre-split.i

_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %.noexc147, %bb.as, %.noexc146
end_hunk_11
begin_hunk_12_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.az:                                            ; preds = %.noexc152, %bb.ax, %.noexc151, %bb.av
  %.pn.i = phi i16 [ %i.ek, %.noexc151 ], [ 7809, %bb.av ], [ 7297, %bb.ax ], [ %i.em, %.noexc152 ]
  %.1.i = or disjoint i16 %.pn.i, %.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %thread-pre-split.i

bb.ba:                                            ; preds = %bb.u
  br i1 %11, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.en = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_12
begin_hunk_13_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.bc:                                            ; preds = %.noexc153, %bb.ba
  %i.ep = phi i16 [ 2177, %bb.ba ], [ %i.eo, %.noexc153 ]
  %i.eq = or disjoint i16 %i.ep, %.0.i
  br label %thread-pre-split.i

bb.bd:                                            ; preds = %bb.u
  br i1 %11, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.er = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_13
begin_hunk_14_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.bf:                                            ; preds = %.noexc154, %bb.bd
  %i.et = phi i16 [ 4737, %bb.bd ], [ %i.es, %.noexc154 ]
  %i.eu = or disjoint i16 %i.et, %.0.i
  br label %thread-pre-split.i

bb.bg:                                            ; preds = %bb.u
  br i1 %11, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ev = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_14
begin_hunk_15_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.bi:                                            ; preds = %.noexc155, %bb.bg
  %i.ex = phi i16 [ 4225, %bb.bg ], [ %i.ew, %.noexc155 ]
  %i.ey = or disjoint i16 %i.ex, %.0.i
  br label %thread-pre-split.i

bb.bj:                                            ; preds = %bb.u
  br i1 %11, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ez = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_15
begin_hunk_16_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.bl:                                            ; preds = %.noexc156, %bb.bj
  %i.fb = phi i16 [ 2241, %bb.bj ], [ %i.fa, %.noexc156 ]
  %i.fc = or disjoint i16 %i.fb, %.0.i
  br label %thread-pre-split.i

bb.bm:                                            ; preds = %bb.u
  br i1 %11, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fd = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_16
begin_hunk_17_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.bo:                                            ; preds = %.noexc157, %bb.bm
  %i.ff = phi i16 [ 4801, %bb.bm ], [ %i.fe, %.noexc157 ]
  %i.fg = or disjoint i16 %i.ff, %.0.i
  br label %thread-pre-split.i

bb.bp:                                            ; preds = %bb.u
  br i1 %11, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.fh = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bi)
end_hunk_17
begin_hunk_18_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.br:                                            ; preds = %.noexc158, %bb.bp
  %i.fj = phi i16 [ 4289, %bb.bp ], [ %i.fi, %.noexc158 ]
  %i.fk = or disjoint i16 %i.fj, %.0.i
  br label %thread-pre-split.i

12:                                               ; preds = %bb.u
  %13 = or disjoint i16 %.0.i, 2053
  br label %.thread.i

bb.bs:                                            ; preds = %bb.u
  switch i8 %i.ch, label %.thread.i [
    i8 0, label %bb.bt
end_hunk_18
begin_hunk_19_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a
  ]

bb.bt:                                            ; preds = %bb.bs
  %14 = or disjoint i16 %.0.i, 3077
  br label %.thread.i

bb.bu:                                            ; preds = %bb.bs
  %15 = or disjoint i16 %.0.i, 2053
  br label %.thread.i

bb.bv:                                            ; preds = %bb.u
end_hunk_19
begin_hunk_20_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a
  br i1 %i.fn, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.fo = or disjoint i16 %.0.i, 1606
  br label %thread-pre-split.i

bb.bx:                                            ; preds = %bb.bv
  %i.fp = getelementptr inbounds nuw i8, ptr %.0110401, i64 20
  %i.fq = load i8, ptr %i.fp, align 4, !tbaa !68, !range !39, !noundef !40
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %16, label %18

16:                                               ; preds = %bb.bx
  %17 = or disjoint i16 %.0.i, 1094
  br label %thread-pre-split.i

18:                                               ; preds = %bb.bx
  %19 = or disjoint i16 %.0.i, 582
  br label %thread-pre-split.i

bb.by:                                            ; preds = %bb.u
end_hunk_20
begin_hunk_21_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = and i8 %i.ft, 16
  %.not.i134 = icmp eq i8 %i.fu, 0
  br i1 %.not.i134, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i135, label %20

20:                                               ; preds = %bb.by
  %21 = or disjoint i16 %.0.i, 7
  br label %thread-pre-split.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i135: ; preds = %bb.by
  %i.fv = getelementptr inbounds nuw i8, ptr %.0110401, i64 16
  %.val.i136 = load i16, ptr %i.fv, align 8       ; 3 uses
  %.not.i97.i = icmp eq i8 %i.cl, 0
  %i.fw = icmp ne i16 %.val.i136, 0
  %spec.select.i.i137 = select i1 %.not.i97.i, i1 %i.fw, i1 false
  br i1 %spec.select.i.i137, label %bb.bz, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i

bb.bz:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i135
  switch i16 %.val.i136, label %bb.ca [
    i16 1024, label %.critedge.i
    i16 512, label %.critedge.i
  ], !prof !69

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
end_hunk_21
begin_hunk_22_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a
  unreachable

.critedge.i:                                      ; preds = %bb.bz, %bb.bz
  %22 = or i16 %.0.i, %.val.i136
  %i.fy = or i16 %22, 134
  br label %thread-pre-split.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i135
  %i.fz = getelementptr inbounds nuw i8, ptr %.0110401, i64 19
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !67, !range !39, !noundef !40
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %23, label %bb.cc

23:                                               ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i
  %24 = or disjoint i16 %.0.i, 1542
  br label %thread-pre-split.i

bb.cc:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.0110401, i64 20
  %i.gd = load i8, ptr %i.gc, align 4, !tbaa !68, !range !39, !noundef !40
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %25, label %27

25:                                               ; preds = %bb.cc
  %26 = or disjoint i16 %.0.i, 1030
  br label %thread-pre-split.i

27:                                               ; preds = %bb.cc
  %28 = or disjoint i16 %.0.i, 518
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %27, %25, %23, %.critedge.i, %20, %18, %16, %bb.bw, %bb.br, %bb.bo, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.az, %bb.au, %bb.ap, %bb.am, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x
  %.2.ph.i = phi i16 [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %i.fy, %.critedge.i ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %i.fo, %bb.bw ], [ %i.fk, %bb.br ], [ %i.fg, %bb.bo ], [ %i.fc, %bb.bl ], [ %i.ey, %bb.bi ], [ %i.eu, %bb.bf ], [ %i.eq, %bb.bc ], [ %.1.i, %bb.az ], [ %i.ee, %bb.au ], [ %i.ds, %bb.ap ], [ %i.do, %bb.am ], [ %i.dk, %bb.aj ], [ %i.dg, %bb.ag ], [ %i.dc, %bb.ad ], [ %i.cy, %bb.aa ], [ %i.cu, %bb.x ]
  %.pr.i = load i8, ptr %i.cp, align 2, !tbaa !19
  br label %bb.cd

bb.cd:                                            ; preds = %thread-pre-split.i, %bb.u
  %i.gf = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.cq, %bb.u ] ; 4 uses
  %.2.i = phi i16 [ %.2.ph.i, %thread-pre-split.i ], [ %.0.i, %bb.u ] ; 3 uses
  switch i8 %i.gf, label %bb.ci [
    i8 12, label %.thread.i
    i8 9, label %.thread.i
  ]

.thread.i:                                        ; preds = %bb.cd, %bb.cd, %bb.bu, %bb.bt, %bb.bs, %12
  %i.gg = phi i8 [ %i.gf, %bb.cd ], [ %i.gf, %bb.cd ], [ 12, %12 ], [ 9, %bb.bu ], [ 9, %bb.bt ], [ 9, %bb.bs ] ; 4 uses
  %.2107.i = phi i16 [ %.2.i, %bb.cd ], [ %.2.i, %bb.cd ], [ %13, %12 ], [ %15, %bb.bu ], [ %14, %bb.bt ], [ %.0.i, %bb.bs ] ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = and i8 %i.gi, 7
end_hunk_22
begin_hunk_23_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.ch:                                            ; preds = %bb.cf
  %i.go = getelementptr inbounds nuw i8, ptr %.0110401, i64 22
  %i.gp = load i8, ptr %i.go, align 2, !tbaa !70, !range !39, !noundef !40
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = select i1 %i.gq, i16 320, i16 0
  %i.gs = or i16 %i.gr, %.2107.i
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.ce, %.thread.i, %bb.cd
  %i.gt = phi i8 [ %i.gg, %.thread.i ], [ %i.gg, %bb.ce ], [ %i.gg, %bb.cg ], [ %i.gg, %bb.ch ], [ %i.gf, %bb.cd ] ; 2 uses
  %.3.i = phi i16 [ %.2107.i, %.thread.i ], [ %i.gk, %bb.ce ], [ %i.gn, %bb.cg ], [ %i.gs, %bb.ch ], [ %.2.i, %bb.cd ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.0110401, i64 21
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !71, !range !39, !noundef !40
  %i.gw = shl nuw nsw i8 %i.gv, 3
  %i.gx = zext nneg i8 %i.gw to i16
  %spec.select.i = or i16 %.3.i, %i.gx
  %i.gy = getelementptr inbounds i8, ptr %i.ce, i64 -10 ; 2 uses
  store i16 %spec.select.i, ptr %i.gy, align 2, !tbaa !72
  switch i8 %i.gt, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175 [
    i8 11, label %bb.cj
    i8 10, label %bb.cj
    i8 14, label %bb.ep
  ]

bb.cj:                                            ; preds = %bb.ci, %bb.ci
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = and i8 %i.ha, 16
end_hunk_23
begin_hunk_24_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a
  br i1 %i.ka, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i16 0, ptr %i.gy, align 2, !tbaa !72
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE9push_backEOS4_.exit175

bb.dm:                                            ; preds = %bb.dk
  %i.kb = getelementptr i8, ptr %.0110401, i64 16 ; 2 uses
  %i.kc = icmp eq i8 %i.gt, 11
  br i1 %i.kc, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit: ; preds = %bb.dm
end_hunk_24
begin_hunk_25_@_ZN6google8protobuf8internal17TailCallTableInfo17BuildFieldEntriesEPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEERSt6vectorINS2_8AuxEntryESaISG_EE:bb.a

bb.eh:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread
  %i.mw = getelementptr inbounds nuw i8, ptr %.0110401, i64 20
  %i.mx = load i8, ptr %i.mw, align 4, !tbaa !68, !range !39, !noundef !40
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %bb.ei, label %.thread

end_hunk_25
begin_hunk_26_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a
  %.044.i.i.i.i.i = phi i64 [ %i.dt, %bb.ab ], [ %i.dh, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i = phi ptr [ %i.ds, %bb.ab ], [ %3, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.dk = getelementptr i8, ptr %.02943.i.i.i.i.i, i64 21
  %.029.val32.i.i.i.i.i = load i8, ptr %i.dk, align 1, !tbaa !71, !range !39, !noundef !40
  %i.dl = trunc nuw i8 %.029.val32.i.i.i.i.i to i1
  br i1 %i.dl, label %.loopexit205, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dm = getelementptr i8, ptr %.02943.i.i.i.i.i, i64 45
  %.val31.i.i.i.i.i = load i8, ptr %i.dm, align 1, !tbaa !71, !range !39, !noundef !40
  %i.dn = trunc nuw i8 %.val31.i.i.i.i.i to i1
  br i1 %i.dn, label %.loopexit.split.loop.exit34.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr i8, ptr %.02943.i.i.i.i.i, i64 69
  %.val30.i.i.i.i.i = load i8, ptr %i.do, align 1, !tbaa !71, !range !39, !noundef !40
  %i.dp = trunc nuw i8 %.val30.i.i.i.i.i to i1
  br i1 %i.dp, label %.loopexit.split.loop.exit36.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dq = getelementptr i8, ptr %.02943.i.i.i.i.i, i64 93
  %.val.i.i.i.i.i = load i8, ptr %i.dq, align 1, !tbaa !71, !range !39, !noundef !40
  %i.dr = trunc nuw i8 %.val.i.i.i.i.i to i1
  br i1 %i.dr, label %.loopexit.split.loop.exit38.i.i.i.i.i, label %bb.ab

end_hunk_26
begin_hunk_27_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.dw = getelementptr i8, ptr %.029.lcssa.i.i.i.i.i, i64 21
  %.029.val.i.i.i.i.i = load i8, ptr %i.dw, align 1, !tbaa !71, !range !39, !noundef !40
  %i.dx = trunc nuw i8 %.029.val.i.i.i.i.i to i1
  br i1 %i.dx, label %.loopexit205, label %bb.ad

end_hunk_27
begin_hunk_28_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a
bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.dy, %bb.ad ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.dz = getelementptr i8, ptr %.1.i.i.i.i.i, i64 21
  %.1.val.i.i.i.i.i = load i8, ptr %i.dz, align 1, !tbaa !71, !range !39, !noundef !40
  %i.ea = trunc nuw i8 %.1.val.i.i.i.i.i to i1
  br i1 %i.ea, label %.loopexit205, label %bb.af

end_hunk_28
begin_hunk_29_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a
bb.ag:                                            ; preds = %bb.af, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.eb, %bb.af ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ec = getelementptr i8, ptr %.2.i.i.i.i.i, i64 21
  %.2.val.i.i.i.i.i = load i8, ptr %i.ec, align 1, !tbaa !71, !range !39, !noundef !40
  %i.ed = trunc nuw i8 %.2.val.i.i.i.i.i to i1
  br i1 %i.ed, label %.loopexit205, label %.thread

end_hunk_29
begin_hunk_30_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i45.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ic, i64 20
  %i.vl = load i8, ptr %i.vk, align 4, !tbaa !68, !range !39, !noalias !161, !noundef !40
  %i.vm = trunc nuw i8 %i.vl to i1
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !7, !noalias !161
end_hunk_30
begin_hunk_31_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a

bb.ez:                                            ; preds = %.critedge.i88
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ic, i64 20
  %i.vv = load i8, ptr %i.vu, align 4, !tbaa !68, !range !39, !noalias !161, !noundef !40
  %i.vw = trunc nuw i8 %i.vv to i1
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  %i.vy = load i8, ptr %i.vx, align 1, !noalias !161
end_hunk_31
begin_hunk_32_@llvm.vector.reduce.smax.v4i32
!65 = !{!64, !4, i64 8}
!66 = !{!8, !16, i64 32}
!67 = !{!51, !10, i64 19}
!68 = !{!51, !10, i64 20}
!69 = !{!"branch_weights", i32 1, i32 1000, i32 1000}
!70 = !{!51, !10, i64 22}
!71 = !{!51, !10, i64 21}
!72 = !{!64, !24, i64 14}
!73 = !{!64, !24, i64 12}
!74 = !{!47, !48, i64 16}
!75 = !{!76, !76, i64 0}
end_hunk_32
