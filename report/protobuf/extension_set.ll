inline.NumInlined: 3767
inline.NumDeleted: 1290
begin_hunk_0_@_ZNK6google8protobuf8internal12ExtensionSet22_InternalSerializeImplEPKNS0_11MessageLiteEiiPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = zext nneg i16 %i.b to i64
  %.idx = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr i8, ptr %i.f, i64 %.idx    ; 3 uses
  %.not28 = icmp eq i16 %i.b, 0
  br i1 %.not28, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.029 = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %i.i = load i32, ptr %.029, align 8, !tbaa !109
  %i.j = icmp slt i32 %i.i, %2
  br i1 %i.j, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.029, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.h
  br i1 %.not, label %.critedge2, label %.lr.ph, !llvm.loop !352

.critedge:                                        ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi ptr [ %i.f, %bb.c ], [ %.029, %.lr.ph ] ; 2 uses
  %.not2732 = icmp eq ptr %.0.lcssa, %i.h
  br i1 %.not2732, label %.critedge2, label %.lr.ph35

.lr.ph35:                                         ; preds = %.critedge, %bb.e
  %.134 = phi ptr [ %i.p, %bb.e ], [ %.0.lcssa, %.critedge ] ; 3 uses
  %.02533 = phi ptr [ %i.o, %bb.e ], [ %4, %.critedge ] ; 2 uses
  %i.l = load i32, ptr %.134, align 8, !tbaa !109 ; 2 uses
  %i.m = icmp slt i32 %i.l, %3
  br i1 %i.m, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %.lr.ph35
  %i.n = getelementptr inbounds nuw i8, ptr %.134, i64 8
  %i.o = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef %1, ptr nonnull poison, i32 noundef %i.l, ptr noundef %.02533, ptr noundef %5) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.134, i64 32 ; 2 uses
  %.not27 = icmp eq ptr %i.p, %i.h
  br i1 %.not27, label %.critedge2, label %.lr.ph35, !llvm.loop !353

.critedge2:                                       ; preds = %bb.d, %bb.e, %.lr.ph35, %.critedge, %bb.b
  %.024 = phi ptr [ %i.d, %bb.b ], [ %4, %.critedge ], [ %i.o, %bb.e ], [ %.02533, %.lr.ph35 ], [ %4, %bb.d ]
  ret ptr %.024
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet27_InternalSerializeImplLargeEPKNS0_11MessageLiteEiiPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.0.in.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.s, %bb.d ]
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i, align 8, !tbaa !95 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 10
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13    ; 2 uses
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %bb.c
  %.07.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.07.i.i.i.i.i.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = icmp slt i32 %i.l, %2
  br i1 %i.m, label %bb.c, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.n = add nuw nsw i64 %.07.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.n, %i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !354

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ], [ %.07.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i

bb.d:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 240
  %i.r = and i64 %.0.lcssa.i.i.i.i.i.i.i, 255
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  br label %bb.b

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISA_iE15checked_compareE.exit.i.i.i.i
  %i.t = zext i8 %i.f to i32                      ; 3 uses
  %i.u = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i
  %.sroa.7.0.i.i.i.i = phi i32 [ %i.u, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i ], [ %i.ab, %bb.f ] ; 2 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i ], [ %i.ac, %bb.f ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i, i64 10
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %i.x = zext i8 %i.w to i32
  %i.y = icmp eq i32 %.sroa.7.0.i.i.i.i, %i.x
  br i1 %i.y, label %bb.f, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE11lower_boundIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i, i64 8
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = zext i8 %i.aa to i32
  %i.ac = load ptr, ptr %.sroa.0.0.i8.i.i.i, align 8, !tbaa !95 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 11
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %.not.i11.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i11.i.i.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE11lower_boundIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit, !llvm.loop !355

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE11lower_boundIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit: ; preds = %bb.f, %bb.e
  %.pn6.i.i.i = phi ptr [ %.sroa.0.0.i8.i.i.i, %bb.e ], [ %i.d, %bb.f ] ; 2 uses
  %.pn4.i.i.i = phi i32 [ %.sroa.7.0.i.i.i.i, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %i.af = icmp ne ptr %.pn6.i.i.i, %i.d
  %i.ag = icmp ne i32 %.pn4.i.i.i, %i.t
  %.not3.i23 = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %.not3.i23, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE11lower_boundIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.026 = phi ptr [ %i.ao, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %4, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE11lower_boundIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit ] ; 2 uses
  %.sroa.0.025 = phi ptr [ %.sroa.0.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %.pn6.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE11lower_boundIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit ] ; 7 uses
  %.sroa.9.024 = phi i32 [ %.sroa.9.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %.pn4.i.i.i, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE11lower_boundIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit ] ; 3 uses
  %i.ah = and i32 %.sroa.9.024, 255
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 16
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !172 ; 2 uses
  %i.am = icmp slt i32 %i.al, %3
  br i1 %i.am, label %bb.g, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE11lower_boundIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit
  %.0.lcssa = phi ptr [ %4, %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE11lower_boundIiEENS1_14btree_iteratorINS1_10btree_nodeISG_EERSE_PSE_EERSD_.exit ], [ %i.ao, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %.026, %.lr.ph ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef %1, ptr nonnull poison, i32 noundef %i.al, ptr noundef %.026, ptr noundef %5) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 11
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = add nsw i32 %.sroa.9.024, 1             ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 10
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13
  %i.au = zext i8 %i.at to i32
  %i.av = icmp eq i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.01521.i.i.i = phi ptr [ %i.aw, %bb.i ], [ %.sroa.0.025, %bb.h ] ; 2 uses
  %i.aw = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 11
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not17.i.i.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !13  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = icmp eq i8 %i.ba, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 240
  %i.bf = add i32 %.sroa.9.024, 1
  %i.bg = and i32 %i.bf, 255
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bh
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.bi, %.thread.i.i ], [ %i.bl, %bb.j ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %.not.i.i.i.i10 = icmp eq i8 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i10, label %bb.j, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.i
  %i.bm = zext i8 %i.ba to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.j, %.critedge.loopexit23.i.i.i, %bb.h
  %.sroa.9.1 = phi i32 [ 0, %bb.j ], [ %i.ar, %bb.h ], [ %i.bm, %.critedge.loopexit23.i.i.i ], [ %i.ar, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.116.i.i.i, %bb.j ], [ %.sroa.0.025, %bb.h ], [ %i.aw, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.025, %.lr.ph.i.i.i ] ; 2 uses
  %i.bn = icmp ne ptr %.sroa.0.1, %i.d
  %i.bo = icmp ne i32 %.sroa.9.1, %i.t
  %.not3.i = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %.not3.i, label %.lr.ph, label %.critedge, !llvm.loop !356
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr readnone captures(none) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !101, !range !104, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.bf

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.e = load i8, ptr %i.d, align 1, !tbaa !128, !range !104, !noundef !30
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %5, align 8, !tbaa !357
  %.not.i = icmp ult ptr %4, %i.j
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.e, !prof !34

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %4)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.d, %bb.e
  %.0.i357 = phi ptr [ %i.k, %bb.e ], [ %4, %bb.d ] ; 2 uses
  %i.l = shl i32 %3, 3                            ; 2 uses
  %i.m = or disjoint i32 %i.l, 2                  ; 2 uses
  %i.n = icmp ugt i32 %i.l, 127
  br i1 %i.n, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !360

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.0.i357, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.m, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.o = trunc i32 %.07.i1.i to i8
  %i.p = or i8 %i.o, -128
  store i8 %i.p, ptr %.0.i2.i, align 1, !tbaa !13
  %i.q = lshr i32 %.07.i1.i, 7                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.s = icmp ugt i32 %.07.i1.i, 16383
  br i1 %i.s, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !361, !llvm.loop !362

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i32 [ %i.m, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.q, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %.0.i357, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.t = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1 ; 2 uses
  store i8 %i.t, ptr %.0.i.lcssa.i, align 1, !tbaa !13
  %i.v = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = icmp ugt i32 %i.v, 127
  br i1 %i.x, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !360

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.u, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %i.w, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 3 uses
  %i.y = trunc i64 %.07.i1.i.i to i8
  %i.z = or i8 %i.y, -128
  store i8 %i.z, ptr %.0.i2.i.i, align 1, !tbaa !13
  %i.aa = lshr i64 %.07.i1.i.i, 7                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.ac = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !361, !llvm.loop !363

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.w, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %i.aa, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.u, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %i.ab, %.lr.ph.i.i ] ; 2 uses
  %i.ad = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1 ; 29 uses
  store i8 %i.ad, ptr %.0.i.lcssa.i.i, align 1, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !105
  switch i8 %i.ag, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340 [
    i8 5, label %.preheader
    i8 3, label %.preheader895
    i8 13, label %.preheader897
    i8 4, label %.preheader899
    i8 17, label %.preheader901
    i8 18, label %.preheader903
    i8 7, label %.preheader905
    i8 6, label %.preheader907
    i8 15, label %.preheader909
    i8 16, label %.preheader911
    i8 2, label %.preheader913
    i8 1, label %.preheader915
    i8 8, label %.preheader917
    i8 14, label %.preheader919
    i8 9, label %bb.t
    i8 12, label %bb.t
    i8 10, label %bb.t
    i8 11, label %bb.t
  ]

.preheader919:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !116
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph1150, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader917:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !116
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph1154, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader915:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !116
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph1158, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader913:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.at = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !116
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph1162, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader911:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !116
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph1166, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader909:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.bb = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !116
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph1170, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader907:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !116
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph1174, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader905:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.bj = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !116
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph1178, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader903:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.bn = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !116
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph1182, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader901:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.br = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !116
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph1186, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader899:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.bv = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !116
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph1190, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader897:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.bz = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !116
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph1194, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader895:                                    ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.cd = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !116
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph1198, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.preheader:                                       ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.ch = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !116
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph1202, label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

.lr.ph1202:                                       ; preds = %.preheader, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit366
  %i.cl = phi ptr [ %i.df, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit366 ], [ %i.ch, %.preheader ]
  %indvars.iv1480 = phi i64 [ %indvars.iv.next1481, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit366 ], [ 0, %.preheader ] ; 2 uses
  %.03021201 = phi ptr [ %i.de, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit366 ], [ %i.ae, %.preheader ] ; 3 uses
  %i.cm = load ptr, ptr %5, align 8, !tbaa !357
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.awx = getelementptr inbounds nuw i8, ptr %.0.i352.lcssa, i64 2 ; 2 uses
  store i8 %i.aww, ptr %i.awv, align 1, !tbaa !13
  %i.awy = load ptr, ptr %i.avw, align 8, !tbaa !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.awx, ptr align 1 %i.awy, i64 %i.avy, i1 false)
  %i.awz = getelementptr inbounds i8, ptr %i.awx, i64 %i.avy
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

bb.cp:                                            ; preds = %bb.bg
  %i.axa = load ptr, ptr %5, align 8, !tbaa !357
  %.not.i867 = icmp ult ptr %4, %i.axa
  br i1 %.not.i867, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit869, label %bb.cq, !prof !34

bb.cq:                                            ; preds = %bb.cp
  %i.axb = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %4)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit869

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit869: ; preds = %bb.cp, %bb.cq
  %.0.i868 = phi ptr [ %i.axb, %bb.cq ], [ %4, %bb.cp ] ; 4 uses
  %i.axc = load ptr, ptr %0, align 8, !tbaa !13   ; 3 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 8
  %i.axe = load i64, ptr %i.axd, align 8, !tbaa !122 ; 6 uses
  %i.axf = icmp sgt i64 %i.axe, 127
  br i1 %i.axf, label %.critedge.i, label %bb.cr, !prof !35

bb.cr:                                            ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit869
  %i.axg = load ptr, ptr %5, align 8, !tbaa !357
  %i.axh = ptrtoint ptr %i.axg to i64
  %i.axi = ptrtoint ptr %.0.i868 to i64
  %i.axj = shl i32 %3, 3                          ; 6 uses
  %i.axk = icmp ult i32 %i.axj, 128
  br i1 %i.axk, label %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit870, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.axl = icmp ult i32 %i.axj, 16384
  br i1 %i.axl, label %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit870, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.axm = icmp ult i32 %i.axj, 2097152
  %i.axn = icmp ult i32 %i.axj, 268435456
  %.neg1205 = select i1 %i.axn, i64 -4, i64 -5
  %.neg1206 = select i1 %i.axm, i64 -3, i64 %.neg1205
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit870

_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit870: ; preds = %bb.cr, %bb.cs, %bb.ct
  %.neg1207 = phi i64 [ -1, %bb.cr ], [ %.neg1206, %bb.ct ], [ -2, %bb.cs ]
  %reass.sub = sub i64 %i.axh, %i.axi
  %i.axo = add i64 %reass.sub, 15
  %i.axp = add i64 %i.axo, %.neg1207
  %i.axq = icmp slt i64 %i.axp, %i.axe
  br i1 %i.axq, label %.critedge.i, label %bb.cu, !prof !35

.critedge.i:                                      ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit870, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit869
  %i.axr = load ptr, ptr %i.axc, align 8, !tbaa !126
  %i.axs = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream18WriteStringOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %5, i32 noundef %3, i64 %i.axe, ptr %i.axr, ptr noundef %.0.i868)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

bb.cu:                                            ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit870
  %i.axt = or disjoint i32 %i.axj, 2              ; 2 uses
  %i.axu = icmp ugt i32 %i.axj, 127
  br i1 %i.axu, label %.lr.ph, label %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit356, !prof !360

.lr.ph:                                           ; preds = %bb.cu, %.lr.ph
  %.0.i3551059 = phi ptr [ %i.axy, %.lr.ph ], [ %.0.i868, %bb.cu ] ; 2 uses
  %.07.i3541058 = phi i32 [ %i.axx, %.lr.ph ], [ %i.axt, %bb.cu ] ; 3 uses
  %i.axv = trunc i32 %.07.i3541058 to i8
  %i.axw = or i8 %i.axv, -128
  store i8 %i.axw, ptr %.0.i3551059, align 1, !tbaa !13
  %i.axx = lshr i32 %.07.i3541058, 7              ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %.0.i3551059, i64 1 ; 2 uses
  %i.axz = icmp ugt i32 %.07.i3541058, 16383
  br i1 %i.axz, label %.lr.ph, label %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit356, !prof !361, !llvm.loop !362

_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit356: ; preds = %.lr.ph, %bb.cu
  %.07.i354.lcssa = phi i32 [ %i.axt, %bb.cu ], [ %i.axx, %.lr.ph ]
  %.0.i355.lcssa = phi ptr [ %.0.i868, %bb.cu ], [ %i.axy, %.lr.ph ] ; 3 uses
  %i.aya = trunc nuw nsw i32 %.07.i354.lcssa to i8
  %i.ayb = getelementptr inbounds nuw i8, ptr %.0.i355.lcssa, i64 1
  store i8 %i.aya, ptr %.0.i355.lcssa, align 1, !tbaa !13
  %i.ayc = trunc i64 %i.axe to i8
  %i.ayd = getelementptr inbounds nuw i8, ptr %.0.i355.lcssa, i64 2 ; 2 uses
  store i8 %i.ayc, ptr %i.ayb, align 1, !tbaa !13
  %i.aye = load ptr, ptr %i.axc, align 8, !tbaa !126
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ayd, ptr align 1 %i.aye, i64 %i.axe, i1 false)
  %i.ayf = getelementptr inbounds i8, ptr %i.ayd, i64 %i.axe
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

bb.cv:                                            ; preds = %bb.bg
  %i.ayg = load ptr, ptr %5, align 8, !tbaa !357
  %.not.i873 = icmp ult ptr %4, %i.ayg
  br i1 %.not.i873, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit875, label %bb.cw, !prof !34

bb.cw:                                            ; preds = %bb.cv
  %i.ayh = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %4)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit875

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit875: ; preds = %bb.cv, %bb.cw
  %.0.i874 = phi ptr [ %i.ayh, %bb.cw ], [ %4, %bb.cv ]
  %i.ayi = load ptr, ptr %0, align 8, !tbaa !13
  %i.ayj = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite18InternalWriteGroupEiRKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ayi, ptr noundef %.0.i874, ptr noundef nonnull %5)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

bb.cx:                                            ; preds = %bb.bg
  %i.ayk = and i8 %i.amf, 4
  %.not335 = icmp eq i8 %i.ayk, 0
  br i1 %.not335, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ayl = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi(ptr noundef %1, i32 noundef %3)
  %i.aym = load ptr, ptr %0, align 8, !tbaa !13   ; 2 uses
  %i.ayn = load ptr, ptr %i.aym, align 8, !tbaa !69
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 160
  %i.ayp = load ptr, ptr %i.ayo, align 8
  %i.ayq = tail call noundef ptr %i.ayp(ptr noundef nonnull align 8 dereferenceable(8) %i.aym, ptr noundef %i.ayl, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

bb.cz:                                            ; preds = %bb.cx
  %i.ayr = load ptr, ptr %0, align 8, !tbaa !13   ; 2 uses
  %i.ays = tail call noundef i32 @_ZNK6google8protobuf11MessageLite13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ayr)
  %i.ayt = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ayr, i32 noundef %i.ays, ptr noundef %4, ptr noundef %5)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340

_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit340: ; preds = %.lr.ph1068, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit685, %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit343, %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit346, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit672, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit650, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit639, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit628, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit617, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit606, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit595, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit584, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit573, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit556, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit539, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit522, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit505, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit488, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit471, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit453, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit448, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit443, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit438, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit433, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit428, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit423, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit420, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit409, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit398, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit387, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit366, %.preheader955, %.preheader953, %.preheader951, %.preheader949, %.preheader947, %.preheader945, %.preheader943, %.preheader941, %.preheader939, %.preheader937, %.preheader935, %.preheader933, %.preheader931, %.preheader929, %.preheader927, %.preheader925, %.preheader923, %.preheader921, %.preheader919, %.preheader917, %.preheader915, %.preheader913, %.preheader911, %.preheader909, %.preheader907, %.preheader905, %.preheader903, %.preheader901, %.preheader899, %.preheader897, %.preheader895, %.preheader, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit356, %.critedge.i, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit353, %.critedge.i339, %bb.v, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, %bb.bg, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit702, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit717, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit732, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit747, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit762, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit777, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit786, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit795, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit804, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit813, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit822, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit831, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit840, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit860, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit875, %bb.cz, %bb.cy, %bb.bf, %bb.c
  %.0 = phi ptr [ %4, %bb.c ], [ %i.ae, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit ], [ %i.ayt, %bb.cz ], [ %i.ayf, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit356 ], [ %i.acs, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit606 ], [ %i.adq, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit617 ], [ %i.aeo, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit628 ], [ %i.afm, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit639 ], [ %i.agk, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit650 ], [ %i.ahq, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit672 ], [ %.0.i344, %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit346 ], [ %.0.i341, %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPhjRKT_SA_.exit343 ], [ %i.alh, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit685 ], [ %i.de, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit366 ], [ %i.ec, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit ], [ %i.fa, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit387 ], [ %4, %bb.v ], [ %i.fy, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit398 ], [ %i.gz, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit409 ], [ %i.ia, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit420 ], [ %i.ir, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit423 ], [ %i.ji, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit428 ], [ %i.jz, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit433 ], [ %i.kq, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit438 ], [ %i.lh, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit443 ], [ %i.ly, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit448 ], [ %i.mp, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit453 ], [ %i.no, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit471 ], [ %i.tt, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit488 ], [ %i.uy, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit505 ], [ %i.wd, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit522 ], [ %i.xi, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit539 ], [ %i.yq, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit556 ], [ %i.zy, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit573 ], [ %i.aaw, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit584 ], [ %4, %bb.bf ], [ %4, %bb.bg ], [ %i.and, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit702 ], [ %i.anx, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit717 ], [ %i.aor, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit732 ], [ %i.apl, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit747 ], [ %i.aqi, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit762 ], [ %i.arf, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit777 ], [ %i.art, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit786 ], [ %i.ash, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit795 ], [ %i.asv, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit804 ], [ %i.atj, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit813 ], [ %i.atx, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit822 ], [ %i.aul, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit831 ], [ %i.auy, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit840 ], [ %i.avt, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit860 ], [ %i.abu, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit595 ], [ %i.awz, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit353 ], [ %i.ayj, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit875 ], [ %i.ayq, %bb.cy ], [ %i.awm, %.critedge.i339 ], [ %i.axs, %.critedge.i ], [ %i.ae, %.preheader ], [ %i.ae, %.preheader895 ], [ %i.ae, %.preheader897 ], [ %i.ae, %.preheader899 ], [ %i.ae, %.preheader901 ], [ %i.ae, %.preheader903 ], [ %i.ae, %.preheader905 ], [ %i.ae, %.preheader907 ], [ %i.ae, %.preheader909 ], [ %i.ae, %.preheader911 ], [ %i.ae, %.preheader913 ], [ %i.ae, %.preheader915 ], [ %i.ae, %.preheader917 ], [ %i.ae, %.preheader919 ], [ %4, %.preheader921 ], [ %4, %.preheader923 ], [ %4, %.preheader925 ], [ %4, %.preheader927 ], [ %4, %.preheader929 ], [ %4, %.preheader931 ], [ %4, %.preheader933 ], [ %4, %.preheader935 ], [ %4, %.preheader937 ], [ %4, %.preheader939 ], [ %4, %.preheader941 ], [ %4, %.preheader943 ], [ %4, %.preheader945 ], [ %4, %.preheader947 ], [ %4, %.preheader949 ], [ %4, %.preheader951 ], [ %4, %.preheader953 ], [ %4, %.preheader955 ], [ %i.aly, %.lr.ph1068 ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.anon.43, align 8             ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !396
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val = load i16, ptr %i.b, align 2, !tbaa !86  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.a, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = icmp slt i16 %.val, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val3, align 8, !tbaa !89
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_SV_T0_T1_"(ptr %i.f, i32 0, ptr %i.h, i32 %i.k, ptr noundef nonnull byval(%class.anon.43) align 8 %4)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !396
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.l, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.val3, i64 %.idx.i ; 5 uses
  %.not34.i.i = icmp eq i16 %.val, 0
  br i1 %.not34.i.i, label %.preheader23.i.i, label %.lr.ph.i.i

.preheader23.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.018.lcssa.i.i = phi ptr [ %.val3, %bb.c ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.not26.i.i = icmp eq ptr %.018.lcssa.i.i, %i.m
  br i1 %.not26.i.i, label %.preheader.i.i, label %.lr.ph29.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.025.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %.01824.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.val3, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 18
  %i.p = load i8, ptr %i.o, align 2
  %i.q = trunc i8 %i.p to i1
  %i.r = load ptr, ptr %i.n, align 8
  %spec.select.i.i.i = select i1 %i.q, ptr %i.r, ptr %i.n
  call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.s = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 32 ; 3 uses
  %i.t = add nuw nsw i32 %.025.i.i, 1
  %i.u = icmp ne ptr %i.s, %i.m
  %i.v = icmp samesign ult i32 %.025.i.i, 15
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i, label %.preheader23.i.i, !llvm.loop !397

.preheader.i.i:                                   ; preds = %.lr.ph29.i.i, %.preheader23.i.i
  %.pre36.i.i = phi ptr [ %2, %.preheader23.i.i ], [ %i.aa, %.lr.ph29.i.i ] ; 2 uses
  %.019.lcssa.i.i = phi ptr [ %.val3, %.preheader23.i.i ], [ %i.ag, %.lr.ph29.i.i ] ; 2 uses
  %.not2131.i.i = icmp eq ptr %.019.lcssa.i.i, %i.m
  br i1 %.not2131.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i

.lr.ph29.i.i:                                     ; preds = %.preheader23.i.i, %.lr.ph29.i.i
  %i.x = phi ptr [ %i.aa, %.lr.ph29.i.i ], [ %2, %.preheader23.i.i ]
  %.128.i.i = phi ptr [ %i.ah, %.lr.ph29.i.i ], [ %.018.lcssa.i.i, %.preheader23.i.i ] ; 3 uses
  %.01927.i.i = phi ptr [ %i.ag, %.lr.ph29.i.i ], [ %.val3, %.preheader23.i.i ] ; 3 uses
  %i.y = load i32, ptr %.01927.i.i, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 8
  %i.aa = call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, ptr noundef %1, ptr nonnull poison, i32 noundef %i.y, ptr noundef %i.x, ptr noundef %3) ; 3 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !396
  %i.ab = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 18
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = trunc i8 %i.ad to i1
  %i.af = load ptr, ptr %i.ab, align 8
  %spec.select.i22.i.i = select i1 %i.ae, ptr %i.af, ptr %i.ab
  call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.m
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph29.i.i, !llvm.loop !398

.lr.ph33.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %i.ai = phi ptr [ %i.al, %.lr.ph33.i.i ], [ %.pre36.i.i, %.preheader.i.i ]
  %.12032.i.i = phi ptr [ %i.am, %.lr.ph33.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.aj = load i32, ptr %.12032.i.i, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 8
  %i.al = call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ak, ptr noundef %1, ptr nonnull poison, i32 noundef %i.aj, ptr noundef %i.ai, ptr noundef %3) ; 3 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !396
  %i.am = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.am, %i.m
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i, !llvm.loop !399

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %.lr.ph33.i.i, %bb.b, %.preheader.i.i
  %i.an = phi ptr [ %.pre36.i.i, %.preheader.i.i ], [ %.pre, %bb.b ], [ %i.al, %.lr.ph33.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret ptr %i.an
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.anon.44, align 8             ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !396
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val = load i16, ptr %i.b, align 2, !tbaa !86  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.c, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.a, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = icmp slt i16 %.val, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val4, align 8, !tbaa !89
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_SV_T0_T1_"(ptr %i.f, i32 0, ptr %i.h, i32 %i.k, ptr noundef nonnull byval(%class.anon.44) align 8 %4)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !396
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.l, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.val4, i64 %.idx.i ; 5 uses
  %.not34.i.i = icmp eq i16 %.val, 0
  br i1 %.not34.i.i, label %.preheader23.i.i, label %.lr.ph.i.i

.preheader23.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.018.lcssa.i.i = phi ptr [ %.val4, %bb.c ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.not26.i.i = icmp eq ptr %.018.lcssa.i.i, %i.m
  br i1 %.not26.i.i, label %.preheader.i.i, label %.lr.ph29.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.025.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %.01824.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.val4, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 18
  %i.p = load i8, ptr %i.o, align 2
  %i.q = trunc i8 %i.p to i1
  %i.r = load ptr, ptr %i.n, align 8
  %spec.select.i.i.i = select i1 %i.q, ptr %i.r, ptr %i.n
  call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.s = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 32 ; 3 uses
  %i.t = add nuw nsw i32 %.025.i.i, 1
  %i.u = icmp ne ptr %i.s, %i.m
  %i.v = icmp samesign ult i32 %.025.i.i, 15
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i, label %.preheader23.i.i, !llvm.loop !400

.preheader.i.i:                                   ; preds = %.lr.ph29.i.i, %.preheader23.i.i
  %.pre36.i.i = phi ptr [ %2, %.preheader23.i.i ], [ %i.aa, %.lr.ph29.i.i ] ; 2 uses
  %.019.lcssa.i.i = phi ptr [ %.val4, %.preheader23.i.i ], [ %i.ag, %.lr.ph29.i.i ] ; 2 uses
  %.not2131.i.i = icmp eq ptr %.019.lcssa.i.i, %i.m
  br i1 %.not2131.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i

.lr.ph29.i.i:                                     ; preds = %.preheader23.i.i, %.lr.ph29.i.i
  %i.x = phi ptr [ %i.aa, %.lr.ph29.i.i ], [ %2, %.preheader23.i.i ]
  %.128.i.i = phi ptr [ %i.ah, %.lr.ph29.i.i ], [ %.018.lcssa.i.i, %.preheader23.i.i ] ; 3 uses
  %.01927.i.i = phi ptr [ %i.ag, %.lr.ph29.i.i ], [ %.val4, %.preheader23.i.i ] ; 3 uses
  %i.y = load i32, ptr %.01927.i.i, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 8
  %i.aa = call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension53InternalSerializeMessageSetItemWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, ptr noundef %1, ptr nonnull poison, i32 noundef %i.y, ptr noundef %i.x, ptr noundef %3) ; 3 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !396
  %i.ab = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 18
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = trunc i8 %i.ad to i1
  %i.af = load ptr, ptr %i.ab, align 8
  %spec.select.i22.i.i = select i1 %i.ae, ptr %i.af, ptr %i.ab
  call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.m
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph29.i.i, !llvm.loop !401

.lr.ph33.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %i.ai = phi ptr [ %i.al, %.lr.ph33.i.i ], [ %.pre36.i.i, %.preheader.i.i ]
  %.12032.i.i = phi ptr [ %i.am, %.lr.ph33.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.aj = load i32, ptr %.12032.i.i, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 8
  %i.al = call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension53InternalSerializeMessageSetItemWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ak, ptr noundef %1, ptr nonnull poison, i32 noundef %i.aj, ptr noundef %i.ai, ptr noundef %3) ; 3 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !396
  %i.am = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.am, %i.m
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i, !llvm.loop !402

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %.lr.ph33.i.i, %bb.b, %.preheader.i.i
  %i.an = phi ptr [ %.pre36.i.i, %.preheader.i.i ], [ %.pre, %bb.b ], [ %i.al, %.lr.ph33.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret ptr %i.an
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet8ByteSizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 0, ptr %i.a, align 8, !tbaa !148
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val = load i16, ptr %i.b, align 2, !tbaa !86  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 7 uses
  %i.d = icmp slt i16 %.val, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %.val1, align 8, !tbaa !89
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i32
  call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_8ByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_"(ptr %i.f, i32 0, ptr %i.h, i32 %i.k, ptr nonnull %i.a)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !148
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_8ByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.c:                                             ; preds = %bb.a
  %i.l = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.l, 5
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 %.idx.i ; 5 uses
  %.not35.i.i = icmp eq i16 %.val, 0
  br i1 %.not35.i.i, label %.preheader24.i.i, label %.lr.ph.i.i

.preheader24.i.i:                                 ; preds = %.lr.ph.i.i, %bb.c
  %.018.lcssa.i.i = phi ptr [ %.val1, %bb.c ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.not27.i.i = icmp eq ptr %.018.lcssa.i.i, %i.m
  br i1 %.not27.i.i, label %.preheader.i.i, label %.lr.ph30.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.026.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.c ] ; 2 uses
  %.01825.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.val1, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 18
  %i.p = load i8, ptr %i.o, align 2
  %i.q = trunc i8 %i.p to i1
  %i.r = load ptr, ptr %i.n, align 8
  %spec.select.i.i.i = select i1 %i.q, ptr %i.r, ptr %i.n
  tail call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.s = getelementptr inbounds nuw i8, ptr %.01825.i.i, i64 32 ; 3 uses
  %i.t = add nuw nsw i32 %.026.i.i, 1
  %i.u = icmp ne ptr %i.s, %i.m
  %i.v = icmp samesign ult i32 %.026.i.i, 15
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i, label %.preheader24.i.i, !llvm.loop !403

.preheader.i.i.loopexit:                          ; preds = %.lr.ph30.i.i
  store i64 %i.ab, ptr %i.a, align 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.loopexit, %.preheader24.i.i
  %.promoted4 = phi i64 [ 0, %.preheader24.i.i ], [ %i.ab, %.preheader.i.i.loopexit ] ; 2 uses
  %.019.lcssa.i.i = phi ptr [ %.val1, %.preheader24.i.i ], [ %i.ah, %.preheader.i.i.loopexit ] ; 2 uses
  %.not2132.i.i = icmp eq ptr %.019.lcssa.i.i, %i.m
  br i1 %.not2132.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_8ByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph34.i.i

.lr.ph30.i.i:                                     ; preds = %.preheader24.i.i, %.lr.ph30.i.i
  %i.x = phi i64 [ %i.ab, %.lr.ph30.i.i ], [ 0, %.preheader24.i.i ]
  %.129.i.i = phi ptr [ %i.ai, %.lr.ph30.i.i ], [ %.018.lcssa.i.i, %.preheader24.i.i ] ; 3 uses
  %.01928.i.i = phi ptr [ %i.ah, %.lr.ph30.i.i ], [ %.val1, %.preheader24.i.i ] ; 3 uses
  %i.y = load i32, ptr %.01928.i.i, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %.01928.i.i, i64 8
  %i.aa = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i32 noundef %i.y)
  %i.ab = add i64 %i.x, %i.aa                     ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 18
  %i.ae = load i8, ptr %i.ad, align 2
  %i.af = trunc i8 %i.ae to i1
  %i.ag = load ptr, ptr %i.ac, align 8
  %spec.select.i22.i.i = select i1 %i.af, ptr %i.ag, ptr %i.ac
  tail call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.ah = getelementptr inbounds nuw i8, ptr %.01928.i.i, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.m
  br i1 %.not.i.i, label %.preheader.i.i.loopexit, label %.lr.ph30.i.i, !llvm.loop !404

.lr.ph34.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph34.i.i
  %i.aj = phi i64 [ %i.an, %.lr.ph34.i.i ], [ %.promoted4, %.preheader.i.i ]
  %.12033.i.i = phi ptr [ %i.ao, %.lr.ph34.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.ak = load i32, ptr %.12033.i.i, align 8, !tbaa !109
  %i.al = getelementptr inbounds nuw i8, ptr %.12033.i.i, i64 8
  %i.am = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i32 noundef %i.ak)
  %i.an = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.12033.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.ao, %i.m
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_8ByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph34.i.i, !llvm.loop !405

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNKS2_8ByteSizeEvE3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %.lr.ph34.i.i, %bb.b, %.preheader.i.i
  %i.ap = phi i64 [ %.promoted4, %.preheader.i.i ], [ %.pre, %bb.b ], [ %i.an, %.lr.ph34.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret i64 %i.ap
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6google8protobuf8internal12ExtensionSet12FindOrCreateEPNS0_5ArenaEihbbPKNS0_15FieldDescriptorEPFRNS2_9ExtensionES9_S4_E(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef readonly captures(address_is_null) %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, i8 } @_ZN6google8protobuf8internal12ExtensionSet6InsertEPNS0_5ArenaEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.a, 0 ; 9 uses
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.a, 1
  %i.b = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store ptr %6, ptr %i.b, align 8, !tbaa !127
  %i.c = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = zext i1 %5 to i8
  %i.e = zext i1 %4 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i8 %3, ptr %i.f, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 9
  store i8 %i.e, ptr %i.g, align 1, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 11
  store i8 %i.d, ptr %i.h, align 1, !tbaa !128
  %i.i = icmp ne ptr %7, null                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 10 ; 2 uses
  %i.k = zext i1 %i.i to i8
  %i.l = load i8, ptr %i.j, align 2
  %i.m = and i8 %i.l, -2
  %i.n = or disjoint i8 %i.m, %i.k
  store i8 %i.n, ptr %i.j, align 2
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %.fca.0.extract.i, ptr noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 10 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2
  %i.r = and i8 %i.q, -3
  store i8 %i.r, ptr %i.p, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.0 = phi ptr [ %i.o, %bb.c ], [ %.fca.0.extract.i, %bb.b ], [ %.fca.0.extract.i, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !101, !range !104, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.e = load i8, ptr %i.d, align 1, !tbaa !128, !range !104, !noundef !30
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !105   ; 3 uses
  br i1 %i.f, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  switch i8 %i.h, label %.thread [
    i8 5, label %.preheader
    i8 3, label %.preheader197
    i8 13, label %.preheader199
    i8 4, label %.preheader201
    i8 17, label %.preheader203
    i8 18, label %.preheader205
    i8 14, label %.preheader207
    i8 7, label %bb.k
    i8 6, label %bb.l
    i8 15, label %bb.m
    i8 16, label %bb.n
    i8 2, label %bb.o
    i8 1, label %bb.p
    i8 8, label %bb.q
    i8 9, label %bb.r
    i8 12, label %bb.r
    i8 10, label %bb.r
    i8 11, label %bb.r
  ]

.preheader207:                                    ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116  ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE5eraseIiEEmRSD_:bb.a

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i.loopexit: ; preds = %bb.e
  %i.ae = zext i8 %i.u to i32
  %i.af = zext i8 %i.s to i32
  br label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i.loopexit, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i
  %.sroa.7.0.i.i.i.i.lcssa = phi i32 [ %i.o, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i ], [ %i.af, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i.loopexit ] ; 12 uses
  %.sroa.0.0.i8.i.i.i.lcssa = phi ptr [ %.sroa.0.0.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i ], [ %i.w, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i.loopexit ] ; 14 uses
  %.lcssa = phi i32 [ %i.p, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EELb0EEERKT_.exit.i.i.i ], [ %i.ae, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i.loopexit ] ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !95, !noalias !431 ; 2 uses
  %.phi.trans.insert26.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 10
  %.pre27.i.i = load i8, ptr %.phi.trans.insert26.i.i, align 1, !tbaa !13, !noalias !431
  %.pre28.i.i = zext i8 %.pre27.i.i to i32
  %i.ag = icmp ne ptr %.sroa.0.0.i8.i.i.i.lcssa, %.pre.i.i
  %i.ah = icmp ne i32 %.sroa.7.0.i.i.i.i.lcssa, %.pre28.i.i
  %i.ai = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_.exit.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11equal_rangeIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_ERKT_.exit

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_.exit.i: ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i
  %i.aj = sext i32 %.sroa.7.0.i.i.i.i.lcssa to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i.lcssa, i64 16
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3, !noalias !431
  %.not.i = icmp slt i32 %i.a, %i.am
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11equal_rangeIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_ERKT_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_.exit.i
  br i1 %i.q, label %.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.preheader.i
  %i.an = add nsw i32 %.sroa.7.0.i.i.i.i.lcssa, 1 ; 2 uses
  %i.ao = icmp eq i32 %i.an, %.lcssa
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11equal_rangeIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_ERKT_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.01521.i.i.i.i.i = phi ptr [ %i.ap, %bb.g ], [ %.sroa.0.0.i8.i.i.i.lcssa, %bb.f ] ; 2 uses
  %i.ap = load ptr, ptr %.01521.i.i.i.i.i, align 8, !tbaa !95, !noalias !436 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 11
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13, !noalias !436
  %.not17.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not17.i.i.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11equal_rangeIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_ERKT_.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.i, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !13, !noalias !436 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13, !noalias !436
  %i.aw = icmp eq i8 %i.at, %i.av
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit23.i.i.i.i.i, !llvm.loop !214

.thread.i.i.i.i:                                  ; preds = %.preheader.preheader.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i.lcssa, i64 240
  %i.ay = add i32 %.sroa.7.0.i.i.i.i.lcssa, 1
  %i.az = and i32 %i.ay, 255
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ba
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.thread.i.i.i.i
  %.116.in.i.i.i.i.i = phi ptr [ %i.bb, %.thread.i.i.i.i ], [ %i.be, %bb.h ]
  %.116.i.i.i.i.i = load ptr, ptr %.116.in.i.i.i.i.i, align 8, !tbaa !95, !noalias !436 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i.i, i64 11
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13, !noalias !436
  %.not.i.i.i.i.i5.i = icmp eq i8 %i.bd, 0
  %i.be = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i.i, i64 240
  br i1 %.not.i.i.i.i.i5.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11equal_rangeIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_ERKT_.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i.i.i:                   ; preds = %bb.g
  %i.bf = zext i8 %i.at to i32
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11equal_rangeIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_ERKT_.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11equal_rangeIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_ERKT_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.h, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.thread.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_.exit.i, %bb.f, %.critedge.loopexit23.i.i.i.i.i
  %.sroa.0.0.i8.i.i.lcssa.sink.i = phi ptr [ %.sroa.0.0.i8.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i ], [ %.sroa.0.0.i8.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_.exit.i ], [ %i.aa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.thread.i.i ], [ %.sroa.0.0.i8.i.i.i.lcssa, %bb.h ], [ %.sroa.0.0.i8.i.i.i.lcssa, %bb.f ], [ %.sroa.0.0.i8.i.i.i.lcssa, %.critedge.loopexit23.i.i.i.i.i ], [ %.sroa.0.0.i8.i.i.i.lcssa, %.lr.ph.i.i.i.i.i ]
  %.sroa.7.0.i.i.i.lcssa.sink.i = phi i32 [ %.sroa.7.0.i.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i ], [ %.sroa.7.0.i.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_.exit.i ], [ %i.ad, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.thread.i.i ], [ %.sroa.7.0.i.i.i.i.lcssa, %bb.h ], [ %.sroa.7.0.i.i.i.i.lcssa, %bb.f ], [ %.sroa.7.0.i.i.i.i.lcssa, %.critedge.loopexit23.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.lcssa, %.lr.ph.i.i.i.i.i ]
  %.sroa.025.1.sink.i = phi ptr [ %.sroa.0.0.i8.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i ], [ %.sroa.0.0.i8.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_.exit.i ], [ %i.aa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.thread.i.i ], [ %.116.i.i.i.i.i, %bb.h ], [ %.sroa.0.0.i8.i.i.i.lcssa, %bb.f ], [ %i.ap, %.critedge.loopexit23.i.i.i.i.i ], [ %.sroa.0.0.i8.i.i.i.lcssa, %.lr.ph.i.i.i.i.i ]
  %.sroa.626.0.sink.i = phi i32 [ %.sroa.7.0.i.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.i.i ], [ %.sroa.7.0.i.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_.exit.i ], [ %i.ad, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISF_EERKSD_PSL_EE.exit.thread.i.i ], [ 0, %bb.h ], [ %i.an, %bb.f ], [ %i.bf, %.critedge.loopexit23.i.i.i.i.i ], [ %.lcssa, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESM_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.150") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.sroa.0.0.i8.i.i.lcssa.sink.i, i32 %.sroa.7.0.i.i.i.lcssa.sink.i, ptr %.sroa.025.1.sink.i, i32 %.sroa.626.0.sink.i)
  %i.bg = load i64, ptr %2, align 8, !tbaa !437
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret i64 %i.bg
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal25RepeatedPrimitiveDefaults16default_instanceEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6google8protobuf8internal25RepeatedPrimitiveDefaults16default_instanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf8internal25RepeatedPrimitiveDefaults16default_instanceEvE8instance) #35
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #38
          to label %bb.d unwind label %bb.f       ; 16 uses

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 4, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 0, ptr %i.f, align 4, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %i.h, align 4, !tbaa !129
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 0, ptr %i.i, align 4, !tbaa !116
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 0, ptr %i.j, align 4, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 0, ptr %i.k, align 4, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 0, ptr %i.l, align 4, !tbaa !129
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 0, ptr %i.m, align 4, !tbaa !116
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 0, ptr %i.n, align 4, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i32 0, ptr %i.o, align 4, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i32 0, ptr %i.p, align 4, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  store i32 0, ptr %i.q, align 4, !tbaa !116
  invoke void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZZN6google8protobuf8internal16OnShutdownDeleteINS1_25RepeatedPrimitiveDefaultsEEEPT_S5_ENUlPKvE_8__invokeES7_, ptr noundef nonnull %i.d)
          to label %_ZN6google8protobuf8internal16OnShutdownDeleteINS1_25RepeatedPrimitiveDefaultsEEEPT_S5_.exit unwind label %bb.f

_ZN6google8protobuf8internal16OnShutdownDeleteINS1_25RepeatedPrimitiveDefaultsEEEPT_S5_.exit: ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN6google8protobuf8internal25RepeatedPrimitiveDefaults16default_instanceEvE8instance, align 8, !tbaa !439
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf8internal25RepeatedPrimitiveDefaults16default_instanceEvE8instance) #35
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal16OnShutdownDeleteINS1_25RepeatedPrimitiveDefaultsEEEPT_S5_.exit, %bb.b, %bb.a
  %i.r = load ptr, ptr @_ZZN6google8protobuf8internal25RepeatedPrimitiveDefaults16default_instanceEvE8instance, align 8, !tbaa !439
  ret ptr %i.r

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6google8protobuf8internal25RepeatedPrimitiveDefaults16default_instanceEvE8instance) #35
  resume { ptr, i32 } %i.s
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #21

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11Ev() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11) #35
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  invoke void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_ENUlPKvE_8__invokeESE_, ptr noundef nonnull %i.d)
          to label %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_.exit unwind label %bb.f

_ZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_.exit: ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11, align 8, !tbaa !441
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11) #35
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_SC_.exit, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11, align 8, !tbaa !441
  ret ptr %i.e

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6google8protobuf8internal24RepeatedStringTypeTraits23GetDefaultRepeatedFieldB5cxx11EvE8instanceB5cxx11) #35
  resume { ptr, i32 } %i.f
}

declare noundef ptr @_ZN6google8protobuf8internal14WireFormatLite18InternalWriteGroupEiRKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension53InternalSerializeMessageSetItemWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr readnone captures(none) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105
  %.not = icmp ne i8 %i.b, 11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = load i8, ptr %i.c, align 1, !range !104
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 1894) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 30, ptr nonnull @.str.14)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.f = call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.l

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2
  %i.j = and i8 %i.i, 2
  %.not26 = icmp eq i8 %i.j, 0
  br i1 %.not26, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %5, align 8, !tbaa !357
  %.not.i = icmp ult ptr %4, %i.k
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.f, !prof !34

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %4)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.l, %bb.f ], [ %4, %bb.e ]  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 11, ptr %.0.i, align 1, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  store i8 16, ptr %i.m, align 1, !tbaa !13
  %i.o = icmp ugt i32 %3, 127
  br i1 %i.o, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !360

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.n, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i32 [ %i.r, %.lr.ph.i ], [ %3, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.p = trunc i32 %.07.i1.i to i8
  %i.q = or i8 %i.p, -128
  store i8 %i.q, ptr %.0.i2.i, align 1, !tbaa !13
  %i.r = lshr i32 %.07.i1.i, 7                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.t = icmp ugt i32 %.07.i1.i, 16383
  br i1 %i.t, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !361, !llvm.loop !362

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i32 [ %3, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.r, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %i.n, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.u = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1 ; 2 uses
  store i8 %i.u, ptr %.0.i.lcssa.i, align 1, !tbaa !13
  %i.w = load i8, ptr %i.h, align 2
  %i.x = and i8 %i.w, 4
  %.not27 = icmp eq i8 %i.x, 0
  br i1 %.not27, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %i.y = tail call fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_123FindRegisteredExtensionEPKNS0_11MessageLiteEi(ptr noundef %1, i32 noundef %3) ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !13
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 2 uses
  %i.z = zext i8 %.sroa.4.0.copyload.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !313
  %.fr.i = freeze i32 %i.ab                       ; 2 uses
  %i.ac = trunc nuw i8 %.sroa.5.0.copyload.i to i1
  %i.ad = add i32 %.fr.i, -5
  %switch.i.i.i = icmp ult i32 %i.ad, -3
  %or.cond13.i.i = and i1 %switch.i.i.i, %i.ac
  br i1 %or.cond13.i.i, label %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit, label %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i

_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i: ; preds = %bb.h
  %i.ae = icmp eq i32 %.fr.i, 2
  %spec.select.i = select i1 %i.ae, ptr %.sroa.9.0.copyload.i, ptr null
  br label %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit

_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit: ; preds = %bb.g, %bb.h, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i
  %i.af = phi ptr [ %.sroa.9.0.copyload.i, %bb.h ], [ %spec.select.i, %_ZN6google8protobuf8internal12ExtensionSet32FindExtensionInfoFromFieldNumberINS1_24GeneratedExtensionFinderEEEbiiPT_PNS1_13ExtensionInfoEPb.exit.i ], [ null, %bb.g ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.af, i32 noundef 3, ptr noundef nonnull %i.v, ptr noundef nonnull %5)
  br label %bb.j

bb.i:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.am = tail call noundef i32 @_ZNK6google8protobuf11MessageLite13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al)
  %i.an = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i32 noundef %i.am, ptr noundef nonnull %i.v, ptr noundef nonnull %5)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit
  %.025 = phi ptr [ %i.ak, %_ZN6google8protobuf8internal12ExtensionSet26GetPrototypeForLazyMessageEPKNS0_11MessageLiteEi.exit ], [ %i.an, %bb.i ] ; 3 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !357
  %.not.i30 = icmp ult ptr %.025, %i.ao
  br i1 %.not.i30, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %.025)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32: ; preds = %bb.j, %bb.k
  %.0.i31 = phi ptr [ %i.ap, %bb.k ], [ %.025, %bb.j ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i31, i64 1
  store i8 12, ptr %.0.i31, align 1, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.0 = phi ptr [ %i.f, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %i.aq, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit32 ], [ %4, %bb.d ]
  ret ptr %.0
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #23

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension22MessageSetItemByteSizeEi(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105
  %.not = icmp ne i8 %i.b, 11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = load i8, ptr %i.c, align 1, !range !104
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i8, ptr %i.g, align 2               ; 2 uses
  %i.i = and i8 %i.h, 2
  %.not6 = icmp eq i8 %i.i, 0
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8, !tbaa !148
  %i.k = or i32 %1, 1
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.k, i1 true)
  %i.m = xor i32 %i.l, 31
  %i.n = mul nuw nsw i32 %i.m, 9
  %i.o = add nuw nsw i32 %i.n, 73
  %i.p = lshr i32 %i.o, 6
  %i.q = zext nneg i32 %i.p to i64
  %i.r = and i8 %i.h, 4
  %.not7 = icmp eq i8 %i.r, 0
  %i.s = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69
  %. = select i1 %.not7, i64 24, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = or i32 %i.x, 1
  %i.z = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.y, i1 true)
  %i.aa = xor i32 %i.z, 31
  %i.ab = mul nuw nsw i32 %i.aa, 9
  %i.ac = add nuw nsw i32 %i.ab, 73
  %i.ad = lshr i32 %i.ac, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add i64 %i.j, %i.q
  %i.ag = add i64 %i.af, %i.w
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_ZNS2_16ReadPackedVarintISL_EESE_SE_T_EUliE_EESE_SE_SN_SI_:bb.a
  %i.eg = ashr exact i64 %sext, 32
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 %i.eg ; 3 uses
  %i.ei = load ptr, ptr %i.g, align 8, !tbaa !342 ; 2 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  %.030 = trunc i64 %i.el to i32                  ; 2 uses
  %i.em = icmp sgt i32 %i.eb, %.030
  br i1 %i.em, label %bb.c, label %._crit_edge, !llvm.loop !499

._crit_edge:                                      ; preds = %bb.ae, %bb.b
  %.0124.lcssa = phi ptr [ %storemerge.i129, %bb.b ], [ %i.eh, %bb.ae ] ; 3 uses
  %.026.lcssa = phi i32 [ %.0.i130, %bb.b ], [ %i.eb, %bb.ae ] ; 2 uses
  %i.en = sext i32 %.026.lcssa to i64
  %i.eo = getelementptr inbounds i8, ptr %.0124.lcssa, i64 %i.en ; 2 uses
  %.sroa.0118.0.copyload = load ptr, ptr %2, align 8, !tbaa !20 ; 7 uses
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2119.0.copyload = load ptr, ptr %.sroa.2119.0..sroa_idx, align 8, !tbaa !20 ; 2 uses
  %.sroa.3120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3120.0.copyload = load ptr, ptr %.sroa.3120.0..sroa_idx, align 8, !tbaa !20 ; 2 uses
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4121.0.copyload = load ptr, ptr %.sroa.4121.0..sroa_idx, align 8, !tbaa !496 ; 2 uses
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.5122.0.copyload = load i32, ptr %.sroa.5122.0..sroa_idx, align 8, !tbaa !3
  %i.ep = icmp sgt i32 %.026.lcssa, 0
  br i1 %i.ep, label %.lr.ph.i50.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56

.lr.ph.i50.preheader:                             ; preds = %._crit_edge
  %.not.i.i74 = icmp eq ptr %.sroa.2119.0.copyload, null
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.copyload, i64 4 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.copyload, i64 8 ; 3 uses
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit90
  %.0714.i51 = phi ptr [ %.0.i11.i53, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit90 ], [ %.0124.lcssa, %.lr.ph.i50.preheader ] ; 3 uses
  %i.es = load i8, ptr %.0714.i51, align 1, !tbaa !13 ; 3 uses
  %i.et = icmp sgt i8 %i.es, -1
  br i1 %i.et, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i55, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i55: ; preds = %.lr.ph.i50
  %i.eu = zext nneg i8 %i.es to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0714.i51, i64 1
  br label %bb.af

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52: ; preds = %.lr.ph.i50
  %i.ew = zext i8 %i.es to i32
  %i.ex = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i51, i32 noundef %i.ew) ; 2 uses
  %i.ey = extractvalue { ptr, i64 } %i.ex, 0      ; 2 uses
  %i.ez = extractvalue { ptr, i64 } %i.ex, 1
  %i.fa = icmp eq ptr %i.ey, null
  br i1 %i.fa, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56, label %bb.af

bb.af:                                            ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i55
  %.0.i11.i53 = phi ptr [ %i.ev, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i55 ], [ %i.ey, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52 ] ; 3 uses
  %.sink.i10.i54 = phi i64 [ %i.eu, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i55 ], [ %i.ez, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52 ] ; 2 uses
  %i.fb = trunc i64 %.sink.i10.i54 to i32         ; 3 uses
  br i1 %.not.i.i74, label %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i89, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fc = tail call noundef zeroext i1 %.sroa.2119.0.copyload(ptr noundef %.sroa.3120.0.copyload, i32 noundef %i.fb), !inline_history !498
  br i1 %i.fc, label %bb.ah, label %bb.ao

_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i89: ; preds = %bb.af
  %i.fd = tail call noundef zeroext i1 @_ZN6google8protobuf8internal12ValidateEnumEiPKj(i32 noundef %i.fb, ptr noundef %.sroa.3120.0.copyload)
  br i1 %i.fd, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i89, %bb.ag
  %i.fe = load i32, ptr %.sroa.0118.0.copyload, align 4, !tbaa !129 ; 2 uses
  %i.ff = and i32 %i.fe, -2                       ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i77, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fh = sext i32 %i.ff to i64
  %i.fi = getelementptr inbounds i8, ptr %.sroa.0118.0.copyload, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !130 ; 3 uses
  %i.fk = trunc i64 %i.fj to i1
  br i1 %i.fk, label %bb.aj, label %bb.ak, !prof !35

bb.aj:                                            ; preds = %bb.ai
  %i.fl = add nsw i64 %i.fj, -1
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !138
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i77

bb.ak:                                            ; preds = %bb.ai
  %i.fo = inttoptr i64 %i.fj to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i77

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i77: ; preds = %bb.ak, %bb.aj, %bb.ah
  %.0.i.i.i.i.i.i78 = phi ptr [ null, %bb.ah ], [ %i.fn, %bb.aj ], [ %i.fo, %bb.ak ]
  %i.fp = and i32 %i.fe, 1
  %i.fq = icmp eq i32 %i.fp, 0                    ; 3 uses
  %i.fr = load i32, ptr %i.eq, align 4, !tbaa !116 ; 4 uses
  br i1 %i.fq, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i79, label %bb.al

bb.al:                                            ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i77
  %i.fs = load ptr, ptr %i.er, align 8, !tbaa !13 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !13
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i79

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i79: ; preds = %bb.al, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i77
  %.0.v.i.i.i.i.i80 = phi ptr [ %i.fs, %bb.al ], [ %.sroa.0118.0.copyload, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i77 ]
  %i.fu = phi i32 [ %i.ft, %bb.al ], [ 2, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i77 ]
  %i.fv = icmp eq i32 %i.fr, %i.fu
  %i.fw = add nsw i32 %i.fr, 1                    ; 3 uses
  br i1 %i.fv, label %bb.am, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i81, !prof !35

bb.am:                                            ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i79
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0118.0.copyload, ptr noundef %.0.i.i.i.i.i.i78, i1 noundef zeroext %i.fq, i32 noundef %i.fr, i32 noundef %i.fw)
  %i.fx = load ptr, ptr %i.er, align 8, !tbaa !13
  %.pre38.i.i.i88 = load i32, ptr %i.eq, align 4, !tbaa !116
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i81

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i81: ; preds = %bb.am, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i79
  %i.fy = phi i32 [ %.pre38.i.i.i88, %bb.am ], [ %i.fr, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i79 ]
  %.pn.i.i.i82 = phi ptr [ %i.fx, %bb.am ], [ %.0.v.i.i.i.i.i80, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i79 ] ; 2 uses
  %.0.i.i.i84 = phi i1 [ false, %bb.am ], [ %i.fq, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i79 ]
  %.029.i.i.i85 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i82, i64 8
  store i32 %i.fw, ptr %i.eq, align 4, !tbaa !116
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %.029.i.i.i85, i64 %i.fz
  store i32 %i.fb, ptr %i.ga, align 4, !tbaa !3
  %i.gb = load i32, ptr %i.eq, align 4, !tbaa !116
  %i.gc = icmp eq i32 %i.fw, %i.gb
  tail call void @llvm.assume(i1 %i.gc)
  br i1 %.0.i.i.i84, label %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i86, label %bb.an

bb.an:                                            ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i81
  %i.gd = load ptr, ptr %i.er, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i86

_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i86: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i81, %bb.an
  %.sink234 = phi ptr [ %i.gd, %bb.an ], [ %.sroa.0118.0.copyload, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i81 ]
  %i.ge = icmp eq ptr %.pn.i.i.i82, %.sink234
  tail call void @llvm.assume(i1 %i.ge)
  br label %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit90

bb.ao:                                            ; preds = %_ZNK6google8protobuf8internal13ExtensionInfo17EnumValidityCheck7IsValidEi.exit.i89, %bb.ag
  %sext140 = shl i64 %.sink.i10.i54, 32
  %i.gf = ashr exact i64 %sext140, 32
  %i.gg = load i64, ptr %.sroa.4121.0.copyload, align 8, !tbaa !130 ; 2 uses
  %i.gh = trunc i64 %i.gg to i1
  br i1 %i.gh, label %bb.ap, label %bb.aq, !prof !34

bb.ap:                                            ; preds = %bb.ao
  %i.gi = add nsw i64 %i.gg, -1
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i75

bb.aq:                                            ; preds = %bb.ao
  %i.gl = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.4121.0.copyload)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i75

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i75: ; preds = %bb.aq, %bb.ap
  %.0.i.i76 = phi ptr [ %i.gk, %bb.ap ], [ %i.gl, %bb.aq ]
  tail call void @_ZN6google8protobuf8internal11WriteVarintEjmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %.sroa.5122.0.copyload, i64 noundef %i.gf, ptr noundef %.0.i.i76)
  br label %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit90

_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit90: ; preds = %_ZN6google8protobuf13RepeatedFieldIiE3AddEi.exit.i86, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i75
  %i.gm = icmp ult ptr %.0.i11.i53, %i.eo
  br i1 %i.gm, label %.lr.ph.i50, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit90, %._crit_edge
  %.2.i49 = phi ptr [ %.0124.lcssa, %._crit_edge ], [ %.0.i11.i53, %_ZZN6google8protobuf8internal19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSC_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiENKUliE_clEi.exit90 ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i52 ] ; 2 uses
  %i.gn = icmp eq ptr %i.eo, %.2.i49
  %i.go = select i1 %i.gn, ptr %.2.i49, ptr null
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit.thread: ; preds = %bb.ad, %bb.ac, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.go, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit56 ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_19PackedEnumParserArgINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13ExtensionInfo17EnumValidityCheckEEEPKcPvSE_PNS1_12ParseContextET0_PNS1_16InternalMetadataEiEUliE_EESE_SE_SE_T_.exit48 ], [ null, %bb.ac ], [ null, %bb.ad ]
  ret ptr %.4
}

declare noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #15

declare { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef, i32 noundef) local_unnamed_addr #15

declare noundef zeroext i1 @_ZN6google8protobuf8internal12ValidateEnumEiPKj(i32 noundef, ptr noundef) local_unnamed_addr #15

declare { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #15

declare noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #15

declare i32 @utf8_range_IsValid(ptr noundef, i64 noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf11MessageLite14_InternalParseEPKcPNS0_8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #15

declare void @_ZN6google8protobuf8internal20WriteLengthDelimitedEjSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i32 noundef, i64, ptr, ptr noundef) local_unnamed_addr #15

declare { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) local_unnamed_addr #15

declare { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_SV_T0_T1_"(ptr readonly captures(address) %0, i32 %1, ptr readnone captures(address) %2, i32 %3, ptr noundef readonly byval(%class.anon.43) align 8 captures(none) %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i103 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i103, label %.lr.ph, label %.preheader93

.preheader93:                                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  %.sroa.11.0.lcssa = phi i32 [ %1, %bb.a ], [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %i.c = icmp ne ptr %.sroa.0.0.lcssa, %2
  %i.d = icmp ne i32 %.sroa.11.0.lcssa, %3
  %.not3.i5108 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.not3.i5108, label %.lr.ph113, label %.preheader

.lr.ph113:                                        ; preds = %.preheader93
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = load ptr, ptr %i.e, align 8, !tbaa !500
  %6 = load ptr, ptr %4, align 8, !tbaa !504, !nonnull !30, !align !468 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !505
  %.pre = load ptr, ptr %6, align 8, !tbaa !396
  br label %bb.e

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.0106 = phi i32 [ %i.an, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0105 = phi ptr [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.11.0104 = phi i32 [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.h = and i32 %.sroa.11.0104, 255
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0105, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 34
  %i.m = load i8, ptr %i.l, align 2
  %i.n = trunc i8 %i.m to i1
  %i.o = load ptr, ptr %i.k, align 8
  %spec.select.i = select i1 %i.n, ptr %i.o, ptr %i.k
  tail call void @llvm.prefetch.p0(ptr %spec.select.i, i32 0, i32 3, i32 1)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 11
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nsw i32 %.sroa.11.0104, 1            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 10
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.01521.i.i.i = phi ptr [ %i.w, %bb.c ], [ %.sroa.0.0105, %bb.b ] ; 2 uses
  %i.w = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not17.i.i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !13   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 240
  %i.af = add i32 %.sroa.11.0104, 1
  %i.ag = and i32 %i.af, 255
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.ai, %.thread.i.i ], [ %i.al, %bb.d ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.c
  %i.am = zext i8 %i.aa to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.critedge.loopexit23.i.i.i, %bb.b
  %.sroa.11.2 = phi i32 [ 0, %bb.d ], [ %i.r, %bb.b ], [ %i.am, %.critedge.loopexit23.i.i.i ], [ %i.r, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.116.i.i.i, %bb.d ], [ %.sroa.0.0105, %bb.b ], [ %i.w, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.0105, %.lr.ph.i.i.i ] ; 3 uses
  %i.an = add nuw nsw i32 %.0106, 1
  %i.ao = icmp ne ptr %.sroa.0.2, %2
  %i.ap = icmp ne i32 %.sroa.11.2, %3
  %.not3.i = select i1 %i.ao, i1 true, i1 %i.ap
  %i.aq = icmp samesign ult i32 %.0106, 15
  %i.ar = select i1 %.not3.i, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph, label %.preheader93, !llvm.loop !506

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, %.preheader93
  %.sroa.072.0.lcssa = phi ptr [ %0, %.preheader93 ], [ %.sroa.072.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %.sroa.1179.0.lcssa = phi i32 [ %1, %.preheader93 ], [ %.sroa.1179.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %i.as = icmp ne ptr %.sroa.072.0.lcssa, %2
  %i.at = icmp ne i32 %.sroa.1179.0.lcssa, %3
  %.not3.i42116 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %.not3.i42116, label %.lr.ph119, label %._crit_edge

.lr.ph119:                                        ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %7 = load ptr, ptr %i.au, align 8, !tbaa !500
  %8 = load ptr, ptr %4, align 8, !tbaa !504, !nonnull !30, !align !468 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !505
  %.pre132 = load ptr, ptr %8, align 8, !tbaa !396
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph113, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38
  %i.ax = phi ptr [ %.pre, %.lr.ph113 ], [ %i.be, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ]
  %.sroa.0.1112 = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph113 ], [ %.sroa.0.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 7 uses
  %.sroa.11.1111 = phi i32 [ %.sroa.11.0.lcssa, %.lr.ph113 ], [ %.sroa.11.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 3 uses
  %.sroa.1179.0110 = phi i32 [ %1, %.lr.ph113 ], [ %.sroa.1179.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 3 uses
  %.sroa.072.0109 = phi ptr [ %0, %.lr.ph113 ], [ %.sroa.072.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 7 uses
  %i.ay = and i32 %.sroa.1179.0110, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 16
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !172
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bd, ptr noundef %5, ptr poison, i32 noundef %i.bc, ptr noundef %i.ax, ptr noundef %i.g) ; 2 uses
  store ptr %i.be, ptr %6, align 8, !tbaa !396
  %i.bf = and i32 %.sroa.11.1111, 255
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.1112, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 34
  %i.bk = load i8, ptr %i.bj, align 2
  %i.bl = trunc i8 %i.bk to i1
  %i.bm = load ptr, ptr %i.bi, align 8
  %spec.select.i6 = select i1 %i.bl, ptr %i.bm, ptr %i.bi
  tail call void @llvm.prefetch.p0(ptr %spec.select.i6, i32 0, i32 3, i32 1)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 11
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %.not.i.i7 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i7, label %.thread.i.i18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = add nsw i32 %.sroa.1179.0110, 1         ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 10
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %i.bs = zext i8 %i.br to i32
  %i.bt = icmp eq i32 %i.bp, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i.i14, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

.lr.ph.i.i.i14:                                   ; preds = %bb.f, %bb.g
  %.01521.i.i.i15 = phi ptr [ %i.bu, %bb.g ], [ %.sroa.072.0109, %bb.f ] ; 2 uses
  %i.bu = load ptr, ptr %.01521.i.i.i15, align 8, !tbaa !95 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %.not17.i.i.i16 = icmp eq i8 %i.bw, 0
  br i1 %.not17.i.i.i16, label %bb.g, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

bb.g:                                             ; preds = %.lr.ph.i.i.i14
  %i.bx = getelementptr inbounds nuw i8, ptr %.01521.i.i.i15, i64 8
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !13  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 10
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = icmp eq i8 %i.by, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i.i14, label %.critedge.loopexit23.i.i.i17, !llvm.loop !214

.thread.i.i18:                                    ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 240
  %i.cd = add i32 %.sroa.1179.0110, 1
  %i.ce = and i32 %i.cd, 255
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cf
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.thread.i.i18
  %.116.in.i.i.i19 = phi ptr [ %i.cg, %.thread.i.i18 ], [ %i.cj, %bb.h ]
  %.116.i.i.i20 = load ptr, ptr %.116.in.i.i.i19, align 8, !tbaa !95 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  %.not.i.i.i.i21 = icmp eq i8 %i.ci, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 240
  br i1 %.not.i.i.i.i21, label %bb.h, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22, !llvm.loop !215

.critedge.loopexit23.i.i.i17:                     ; preds = %bb.g
  %i.ck = zext i8 %i.by to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22: ; preds = %.lr.ph.i.i.i14, %bb.h, %.critedge.loopexit23.i.i.i17, %bb.f
  %.sroa.072.2 = phi ptr [ %.116.i.i.i20, %bb.h ], [ %.sroa.072.0109, %bb.f ], [ %i.bu, %.critedge.loopexit23.i.i.i17 ], [ %.sroa.072.0109, %.lr.ph.i.i.i14 ] ; 2 uses
  %.sroa.1179.2 = phi i32 [ 0, %bb.h ], [ %i.bp, %bb.f ], [ %i.ck, %.critedge.loopexit23.i.i.i17 ], [ %i.bp, %.lr.ph.i.i.i14 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 11
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %.not.i.i23 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i23, label %.thread.i.i34, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.cn = add nsw i32 %.sroa.11.1111, 1           ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 10
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !13
  %i.cq = zext i8 %i.cp to i32
  %i.cr = icmp eq i32 %i.cn, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i30, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

.lr.ph.i.i.i30:                                   ; preds = %bb.i, %bb.j
  %.01521.i.i.i31 = phi ptr [ %i.cs, %bb.j ], [ %.sroa.0.1112, %bb.i ] ; 2 uses
  %i.cs = load ptr, ptr %.01521.i.i.i31, align 8, !tbaa !95 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 11
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %.not17.i.i.i32 = icmp eq i8 %i.cu, 0
  br i1 %.not17.i.i.i32, label %bb.j, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

bb.j:                                             ; preds = %.lr.ph.i.i.i30
  %i.cv = getelementptr inbounds nuw i8, ptr %.01521.i.i.i31, i64 8
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !13  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.cz = icmp eq i8 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i.i30, label %.critedge.loopexit23.i.i.i33, !llvm.loop !214

.thread.i.i34:                                    ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 240
  %i.db = add i32 %.sroa.11.1111, 1
  %i.dc = and i32 %i.db, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dd
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.thread.i.i34
  %.116.in.i.i.i35 = phi ptr [ %i.de, %.thread.i.i34 ], [ %i.dh, %bb.k ]
  %.116.i.i.i36 = load ptr, ptr %.116.in.i.i.i35, align 8, !tbaa !95 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 11
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %.not.i.i.i.i37 = icmp eq i8 %i.dg, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 240
  br i1 %.not.i.i.i.i37, label %bb.k, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, !llvm.loop !215

.critedge.loopexit23.i.i.i33:                     ; preds = %bb.j
  %i.di = zext i8 %i.cw to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38: ; preds = %.lr.ph.i.i.i30, %bb.k, %.critedge.loopexit23.i.i.i33, %bb.i
  %.sroa.11.3 = phi i32 [ 0, %bb.k ], [ %i.cn, %bb.i ], [ %i.di, %.critedge.loopexit23.i.i.i33 ], [ %i.cn, %.lr.ph.i.i.i30 ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.116.i.i.i36, %bb.k ], [ %.sroa.0.1112, %bb.i ], [ %i.cs, %.critedge.loopexit23.i.i.i33 ], [ %.sroa.0.1112, %.lr.ph.i.i.i30 ] ; 2 uses
  %i.dj = icmp ne ptr %.sroa.0.3, %2
  %i.dk = icmp ne i32 %.sroa.11.3, %3
  %.not3.i5 = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %.not3.i5, label %bb.e, label %.preheader, !llvm.loop !507

bb.l:                                             ; preds = %.lr.ph119, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58
  %i.dl = phi ptr [ %.pre132, %.lr.ph119 ], [ %i.ds, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ]
  %.sroa.1179.1118 = phi i32 [ %.sroa.1179.0.lcssa, %.lr.ph119 ], [ %.sroa.1179.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ] ; 3 uses
  %.sroa.072.1117 = phi ptr [ %.sroa.072.0.lcssa, %.lr.ph119 ], [ %.sroa.072.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ] ; 7 uses
  %i.dm = and i32 %.sroa.1179.1118, 255
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 16
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %i.dn ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !172
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension44InternalSerializeFieldWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dr, ptr noundef %7, ptr poison, i32 noundef %i.dq, ptr noundef %i.dl, ptr noundef %i.aw) ; 2 uses
  store ptr %i.ds, ptr %8, align 8, !tbaa !396
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 11
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !13
  %.not.i.i43 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i43, label %.thread.i.i54, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = add nsw i32 %.sroa.1179.1118, 1         ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 10
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13
  %i.dy = zext i8 %i.dx to i32
  %i.dz = icmp eq i32 %i.dv, %i.dy
  br i1 %i.dz, label %.lr.ph.i.i.i50, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

.lr.ph.i.i.i50:                                   ; preds = %bb.m, %bb.n
  %.01521.i.i.i51 = phi ptr [ %i.ea, %bb.n ], [ %.sroa.072.1117, %bb.m ] ; 2 uses
  %i.ea = load ptr, ptr %.01521.i.i.i51, align 8, !tbaa !95 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 11
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !13
  %.not17.i.i.i52 = icmp eq i8 %i.ec, 0
  br i1 %.not17.i.i.i52, label %bb.n, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

bb.n:                                             ; preds = %.lr.ph.i.i.i50
  %i.ed = getelementptr inbounds nuw i8, ptr %.01521.i.i.i51, i64 8
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !13  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 10
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !13
  %i.eh = icmp eq i8 %i.ee, %i.eg
  br i1 %i.eh, label %.lr.ph.i.i.i50, label %.critedge.loopexit23.i.i.i53, !llvm.loop !214

.thread.i.i54:                                    ; preds = %bb.l
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 240
  %i.ej = add i32 %.sroa.1179.1118, 1
  %i.ek = and i32 %i.ej, 255
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.el
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.thread.i.i54
  %.116.in.i.i.i55 = phi ptr [ %i.em, %.thread.i.i54 ], [ %i.ep, %bb.o ]
  %.116.i.i.i56 = load ptr, ptr %.116.in.i.i.i55, align 8, !tbaa !95 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 11
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !13
  %.not.i.i.i.i57 = icmp eq i8 %i.eo, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 240
  br i1 %.not.i.i.i.i57, label %bb.o, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, !llvm.loop !215

.critedge.loopexit23.i.i.i53:                     ; preds = %bb.n
  %i.eq = zext i8 %i.ee to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58: ; preds = %.lr.ph.i.i.i50, %bb.o, %.critedge.loopexit23.i.i.i53, %bb.m
  %.sroa.072.3 = phi ptr [ %.116.i.i.i56, %bb.o ], [ %.sroa.072.1117, %bb.m ], [ %i.ea, %.critedge.loopexit23.i.i.i53 ], [ %.sroa.072.1117, %.lr.ph.i.i.i50 ] ; 2 uses
  %.sroa.1179.3 = phi i32 [ 0, %bb.o ], [ %i.dv, %bb.m ], [ %i.eq, %.critedge.loopexit23.i.i.i53 ], [ %i.dv, %.lr.ph.i.i.i50 ] ; 2 uses
  %i.er = icmp ne ptr %.sroa.072.3, %2
  %i.es = icmp ne i32 %.sroa.1179.3, %3
  %.not3.i42 = select i1 %i.er, i1 true, i1 %i.es
  br i1 %.not3.i42, label %bb.l, label %._crit_edge, !llvm.loop !508

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0NS2_8PrefetchEEEvT_SV_T0_T1_"(ptr readonly captures(address) %0, i32 %1, ptr readnone captures(address) %2, i32 %3, ptr noundef readonly byval(%class.anon.44) align 8 captures(none) %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i103 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i103, label %.lr.ph, label %.preheader93

.preheader93:                                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  %.sroa.11.0.lcssa = phi i32 [ %1, %bb.a ], [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %i.c = icmp ne ptr %.sroa.0.0.lcssa, %2
  %i.d = icmp ne i32 %.sroa.11.0.lcssa, %3
  %.not3.i5108 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.not3.i5108, label %.lr.ph113, label %.preheader

.lr.ph113:                                        ; preds = %.preheader93
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = load ptr, ptr %i.e, align 8, !tbaa !509
  %6 = load ptr, ptr %4, align 8, !tbaa !511, !nonnull !30, !align !468 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !512
  %.pre = load ptr, ptr %6, align 8, !tbaa !396
  br label %bb.e

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.0106 = phi i32 [ %i.an, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0105 = phi ptr [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.11.0104 = phi i32 [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.h = and i32 %.sroa.11.0104, 255
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0105, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 34
  %i.m = load i8, ptr %i.l, align 2
  %i.n = trunc i8 %i.m to i1
  %i.o = load ptr, ptr %i.k, align 8
  %spec.select.i = select i1 %i.n, ptr %i.o, ptr %i.k
  tail call void @llvm.prefetch.p0(ptr %spec.select.i, i32 0, i32 3, i32 1)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 11
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nsw i32 %.sroa.11.0104, 1            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 10
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i32 %i.r, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.01521.i.i.i = phi ptr [ %i.w, %bb.c ], [ %.sroa.0.0105, %bb.b ] ; 2 uses
  %i.w = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not17.i.i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !13   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 240
  %i.af = add i32 %.sroa.11.0104, 1
  %i.ag = and i32 %i.af, 255
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.ai, %.thread.i.i ], [ %i.al, %bb.d ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.c
  %i.am = zext i8 %i.aa to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.critedge.loopexit23.i.i.i, %bb.b
  %.sroa.11.2 = phi i32 [ 0, %bb.d ], [ %i.r, %bb.b ], [ %i.am, %.critedge.loopexit23.i.i.i ], [ %i.r, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.116.i.i.i, %bb.d ], [ %.sroa.0.0105, %bb.b ], [ %i.w, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.0105, %.lr.ph.i.i.i ] ; 3 uses
  %i.an = add nuw nsw i32 %.0106, 1
  %i.ao = icmp ne ptr %.sroa.0.2, %2
  %i.ap = icmp ne i32 %.sroa.11.2, %3
  %.not3.i = select i1 %i.ao, i1 true, i1 %i.ap
  %i.aq = icmp samesign ult i32 %.0106, 15
  %i.ar = select i1 %.not3.i, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph, label %.preheader93, !llvm.loop !513

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, %.preheader93
  %.sroa.072.0.lcssa = phi ptr [ %0, %.preheader93 ], [ %.sroa.072.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %.sroa.1179.0.lcssa = phi i32 [ %1, %.preheader93 ], [ %.sroa.1179.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %i.as = icmp ne ptr %.sroa.072.0.lcssa, %2
  %i.at = icmp ne i32 %.sroa.1179.0.lcssa, %3
  %.not3.i42116 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %.not3.i42116, label %.lr.ph119, label %._crit_edge

.lr.ph119:                                        ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %7 = load ptr, ptr %i.au, align 8, !tbaa !509
  %8 = load ptr, ptr %4, align 8, !tbaa !511, !nonnull !30, !align !468 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !512
  %.pre132 = load ptr, ptr %8, align 8, !tbaa !396
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph113, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38
  %i.ax = phi ptr [ %.pre, %.lr.ph113 ], [ %i.be, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ]
  %.sroa.0.1112 = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph113 ], [ %.sroa.0.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 7 uses
  %.sroa.11.1111 = phi i32 [ %.sroa.11.0.lcssa, %.lr.ph113 ], [ %.sroa.11.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 3 uses
  %.sroa.1179.0110 = phi i32 [ %1, %.lr.ph113 ], [ %.sroa.1179.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 3 uses
  %.sroa.072.0109 = phi ptr [ %0, %.lr.ph113 ], [ %.sroa.072.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 7 uses
  %i.ay = and i32 %.sroa.1179.0110, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 16
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !172
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension53InternalSerializeMessageSetItemWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bd, ptr noundef %5, ptr poison, i32 noundef %i.bc, ptr noundef %i.ax, ptr noundef %i.g) ; 2 uses
  store ptr %i.be, ptr %6, align 8, !tbaa !396
  %i.bf = and i32 %.sroa.11.1111, 255
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.1112, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 34
  %i.bk = load i8, ptr %i.bj, align 2
  %i.bl = trunc i8 %i.bk to i1
  %i.bm = load ptr, ptr %i.bi, align 8
  %spec.select.i6 = select i1 %i.bl, ptr %i.bm, ptr %i.bi
  tail call void @llvm.prefetch.p0(ptr %spec.select.i6, i32 0, i32 3, i32 1)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 11
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %.not.i.i7 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i7, label %.thread.i.i18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = add nsw i32 %.sroa.1179.0110, 1         ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 10
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %i.bs = zext i8 %i.br to i32
  %i.bt = icmp eq i32 %i.bp, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i.i14, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

.lr.ph.i.i.i14:                                   ; preds = %bb.f, %bb.g
  %.01521.i.i.i15 = phi ptr [ %i.bu, %bb.g ], [ %.sroa.072.0109, %bb.f ] ; 2 uses
  %i.bu = load ptr, ptr %.01521.i.i.i15, align 8, !tbaa !95 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %.not17.i.i.i16 = icmp eq i8 %i.bw, 0
  br i1 %.not17.i.i.i16, label %bb.g, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

bb.g:                                             ; preds = %.lr.ph.i.i.i14
  %i.bx = getelementptr inbounds nuw i8, ptr %.01521.i.i.i15, i64 8
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !13  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 10
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = icmp eq i8 %i.by, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i.i14, label %.critedge.loopexit23.i.i.i17, !llvm.loop !214

.thread.i.i18:                                    ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 240
  %i.cd = add i32 %.sroa.1179.0110, 1
  %i.ce = and i32 %i.cd, 255
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cf
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.thread.i.i18
  %.116.in.i.i.i19 = phi ptr [ %i.cg, %.thread.i.i18 ], [ %i.cj, %bb.h ]
  %.116.i.i.i20 = load ptr, ptr %.116.in.i.i.i19, align 8, !tbaa !95 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  %.not.i.i.i.i21 = icmp eq i8 %i.ci, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 240
  br i1 %.not.i.i.i.i21, label %bb.h, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22, !llvm.loop !215

.critedge.loopexit23.i.i.i17:                     ; preds = %bb.g
  %i.ck = zext i8 %i.by to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22: ; preds = %.lr.ph.i.i.i14, %bb.h, %.critedge.loopexit23.i.i.i17, %bb.f
  %.sroa.072.2 = phi ptr [ %.116.i.i.i20, %bb.h ], [ %.sroa.072.0109, %bb.f ], [ %i.bu, %.critedge.loopexit23.i.i.i17 ], [ %.sroa.072.0109, %.lr.ph.i.i.i14 ] ; 2 uses
  %.sroa.1179.2 = phi i32 [ 0, %bb.h ], [ %i.bp, %bb.f ], [ %i.ck, %.critedge.loopexit23.i.i.i17 ], [ %i.bp, %.lr.ph.i.i.i14 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 11
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %.not.i.i23 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i23, label %.thread.i.i34, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.cn = add nsw i32 %.sroa.11.1111, 1           ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 10
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !13
  %i.cq = zext i8 %i.cp to i32
  %i.cr = icmp eq i32 %i.cn, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i30, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

.lr.ph.i.i.i30:                                   ; preds = %bb.i, %bb.j
  %.01521.i.i.i31 = phi ptr [ %i.cs, %bb.j ], [ %.sroa.0.1112, %bb.i ] ; 2 uses
  %i.cs = load ptr, ptr %.01521.i.i.i31, align 8, !tbaa !95 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 11
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %.not17.i.i.i32 = icmp eq i8 %i.cu, 0
  br i1 %.not17.i.i.i32, label %bb.j, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

bb.j:                                             ; preds = %.lr.ph.i.i.i30
  %i.cv = getelementptr inbounds nuw i8, ptr %.01521.i.i.i31, i64 8
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !13  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.cz = icmp eq i8 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i.i30, label %.critedge.loopexit23.i.i.i33, !llvm.loop !214

.thread.i.i34:                                    ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 240
  %i.db = add i32 %.sroa.11.1111, 1
  %i.dc = and i32 %i.db, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dd
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.thread.i.i34
  %.116.in.i.i.i35 = phi ptr [ %i.de, %.thread.i.i34 ], [ %i.dh, %bb.k ]
  %.116.i.i.i36 = load ptr, ptr %.116.in.i.i.i35, align 8, !tbaa !95 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 11
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %.not.i.i.i.i37 = icmp eq i8 %i.dg, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 240
  br i1 %.not.i.i.i.i37, label %bb.k, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, !llvm.loop !215

.critedge.loopexit23.i.i.i33:                     ; preds = %bb.j
  %i.di = zext i8 %i.cw to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38: ; preds = %.lr.ph.i.i.i30, %bb.k, %.critedge.loopexit23.i.i.i33, %bb.i
  %.sroa.11.3 = phi i32 [ 0, %bb.k ], [ %i.cn, %bb.i ], [ %i.di, %.critedge.loopexit23.i.i.i33 ], [ %i.cn, %.lr.ph.i.i.i30 ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.116.i.i.i36, %bb.k ], [ %.sroa.0.1112, %bb.i ], [ %i.cs, %.critedge.loopexit23.i.i.i33 ], [ %.sroa.0.1112, %.lr.ph.i.i.i30 ] ; 2 uses
  %i.dj = icmp ne ptr %.sroa.0.3, %2
  %i.dk = icmp ne i32 %.sroa.11.3, %3
  %.not3.i5 = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %.not3.i5, label %bb.e, label %.preheader, !llvm.loop !514

bb.l:                                             ; preds = %.lr.ph119, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58
  %i.dl = phi ptr [ %.pre132, %.lr.ph119 ], [ %i.ds, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ]
  %.sroa.1179.1118 = phi i32 [ %.sroa.1179.0.lcssa, %.lr.ph119 ], [ %.sroa.1179.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ] ; 3 uses
  %.sroa.072.1117 = phi ptr [ %.sroa.072.0.lcssa, %.lr.ph119 ], [ %.sroa.072.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ] ; 7 uses
  %i.dm = and i32 %.sroa.1179.1118, 255
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 16
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %i.dn ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !172
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension53InternalSerializeMessageSetItemWithCachedSizesToArrayEPKNS0_11MessageLiteEPKS2_iPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dr, ptr noundef %7, ptr poison, i32 noundef %i.dq, ptr noundef %i.dl, ptr noundef %i.aw) ; 2 uses
  store ptr %i.ds, ptr %8, align 8, !tbaa !396
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 11
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !13
  %.not.i.i43 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i43, label %.thread.i.i54, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = add nsw i32 %.sroa.1179.1118, 1         ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 10
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13
  %i.dy = zext i8 %i.dx to i32
  %i.dz = icmp eq i32 %i.dv, %i.dy
  br i1 %i.dz, label %.lr.ph.i.i.i50, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

.lr.ph.i.i.i50:                                   ; preds = %bb.m, %bb.n
  %.01521.i.i.i51 = phi ptr [ %i.ea, %bb.n ], [ %.sroa.072.1117, %bb.m ] ; 2 uses
  %i.ea = load ptr, ptr %.01521.i.i.i51, align 8, !tbaa !95 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 11
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !13
  %.not17.i.i.i52 = icmp eq i8 %i.ec, 0
  br i1 %.not17.i.i.i52, label %bb.n, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

bb.n:                                             ; preds = %.lr.ph.i.i.i50
  %i.ed = getelementptr inbounds nuw i8, ptr %.01521.i.i.i51, i64 8
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !13  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 10
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !13
  %i.eh = icmp eq i8 %i.ee, %i.eg
  br i1 %i.eh, label %.lr.ph.i.i.i50, label %.critedge.loopexit23.i.i.i53, !llvm.loop !214

.thread.i.i54:                                    ; preds = %bb.l
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 240
  %i.ej = add i32 %.sroa.1179.1118, 1
  %i.ek = and i32 %i.ej, 255
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.el
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.thread.i.i54
  %.116.in.i.i.i55 = phi ptr [ %i.em, %.thread.i.i54 ], [ %i.ep, %bb.o ]
  %.116.i.i.i56 = load ptr, ptr %.116.in.i.i.i55, align 8, !tbaa !95 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 11
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !13
  %.not.i.i.i.i57 = icmp eq i8 %i.eo, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 240
  br i1 %.not.i.i.i.i57, label %bb.o, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, !llvm.loop !215

.critedge.loopexit23.i.i.i53:                     ; preds = %bb.n
  %i.eq = zext i8 %i.ee to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58: ; preds = %.lr.ph.i.i.i50, %bb.o, %.critedge.loopexit23.i.i.i53, %bb.m
  %.sroa.072.3 = phi ptr [ %.116.i.i.i56, %bb.o ], [ %.sroa.072.1117, %bb.m ], [ %i.ea, %.critedge.loopexit23.i.i.i53 ], [ %.sroa.072.1117, %.lr.ph.i.i.i50 ] ; 2 uses
  %.sroa.1179.3 = phi i32 [ 0, %bb.o ], [ %i.dv, %bb.m ], [ %i.eq, %.critedge.loopexit23.i.i.i53 ], [ %i.dv, %.lr.ph.i.i.i50 ] ; 2 uses
  %i.er = icmp ne ptr %.sroa.072.3, %2
  %i.es = icmp ne i32 %.sroa.1179.3, %3
  %.not3.i42 = select i1 %i.er, i1 true, i1 %i.es
  br i1 %.not3.i42, label %bb.l, label %._crit_edge, !llvm.loop !515

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_8ByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_"(ptr captures(address) %0, i32 %1, ptr readnone captures(address) %2, i32 %3, ptr nonnull captures(none) %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i105 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i105, label %.lr.ph, label %.preheader95

.preheader95:                                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  %.sroa.11.0.lcssa = phi i32 [ %1, %bb.a ], [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %i.c = icmp ne ptr %.sroa.0.0.lcssa, %2
  %i.d = icmp ne i32 %.sroa.11.0.lcssa, %3
  %.not3.i5110 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.not3.i5110, label %.lr.ph115, label %.preheader

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.0108 = phi i32 [ %i.ak, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0107 = phi ptr [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.11.0106 = phi i32 [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = and i32 %.sroa.11.0106, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0107, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %i.j = load i8, ptr %i.i, align 2
  %i.k = trunc i8 %i.j to i1
  %i.l = load ptr, ptr %i.h, align 8
  %spec.select.i = select i1 %i.k, ptr %i.l, ptr %i.h
  tail call void @llvm.prefetch.p0(ptr %spec.select.i, i32 0, i32 3, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nsw i32 %.sroa.11.0106, 1            ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 10
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i32
  %i.s = icmp eq i32 %i.o, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.01521.i.i.i = phi ptr [ %i.t, %bb.c ], [ %.sroa.0.0107, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !95 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %.not17.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not17.i.i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !13    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !214

.thread.i.i:                                      ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 240
  %i.ac = add i32 %.sroa.11.0106, 1
  %i.ad = and i32 %i.ac, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.af, %.thread.i.i ], [ %i.ai, %bb.d ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !95 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !215

.critedge.loopexit23.i.i.i:                       ; preds = %bb.c
  %i.aj = zext i8 %i.x to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.critedge.loopexit23.i.i.i, %bb.b
  %.sroa.11.2 = phi i32 [ 0, %bb.d ], [ %i.o, %bb.b ], [ %i.aj, %.critedge.loopexit23.i.i.i ], [ %i.o, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.116.i.i.i, %bb.d ], [ %.sroa.0.0107, %bb.b ], [ %i.t, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.0107, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add nuw nsw i32 %.0108, 1
  %i.al = icmp ne ptr %.sroa.0.2, %2
  %i.am = icmp ne i32 %.sroa.11.2, %3
  %.not3.i = select i1 %i.al, i1 true, i1 %i.am
  %i.an = icmp samesign ult i32 %.0108, 15
  %i.ao = select i1 %.not3.i, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %.preheader95, !llvm.loop !516

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, %.preheader95
  %.sroa.074.0.lcssa = phi ptr [ %0, %.preheader95 ], [ %.sroa.074.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %.sroa.1181.0.lcssa = phi i32 [ %1, %.preheader95 ], [ %.sroa.1181.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %i.ap = icmp ne ptr %.sroa.074.0.lcssa, %2
  %i.aq = icmp ne i32 %.sroa.1181.0.lcssa, %3
  %.not3.i42118 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i42118, label %.lr.ph121, label %._crit_edge

.lr.ph115:                                        ; preds = %.preheader95, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38
  %.sroa.0.1114 = phi ptr [ %.sroa.0.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %.sroa.0.0.lcssa, %.preheader95 ] ; 7 uses
  %.sroa.11.1113 = phi i32 [ %.sroa.11.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %.sroa.11.0.lcssa, %.preheader95 ] ; 3 uses
  %.sroa.1181.0112 = phi i32 [ %.sroa.1181.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %1, %.preheader95 ] ; 3 uses
  %.sroa.074.0111 = phi ptr [ %.sroa.074.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %0, %.preheader95 ] ; 7 uses
  %i.ar = and i32 %.sroa.1181.0112, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.074.0111, i64 16
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !172
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef %i.av)
  %i.ay = load i64, ptr %4, align 8, !tbaa !148
  %i.az = add i64 %i.ay, %i.ax
  store i64 %i.az, ptr %4, align 8, !tbaa !148
  %i.ba = and i32 %.sroa.11.1113, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.1114, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 34
  %i.bf = load i8, ptr %i.be, align 2
  %i.bg = trunc i8 %i.bf to i1
  %i.bh = load ptr, ptr %i.bd, align 8
  %spec.select.i6 = select i1 %i.bg, ptr %i.bh, ptr %i.bd
  tail call void @llvm.prefetch.p0(ptr %spec.select.i6, i32 0, i32 3, i32 1)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.074.0111, i64 11
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %.not.i.i7 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i7, label %.thread.i.i18, label %bb.e

bb.e:                                             ; preds = %.lr.ph115
  %i.bk = add nsw i32 %.sroa.1181.0112, 1         ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.074.0111, i64 10
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13
  %i.bn = zext i8 %i.bm to i32
  %i.bo = icmp eq i32 %i.bk, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.i14, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

.lr.ph.i.i.i14:                                   ; preds = %bb.e, %bb.f
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.add.v4i32
!300 = !{!296, !299}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_ZN6google8protobuf13RepeatedFieldIbE18UninitializedCopyNEPKbiPb: argument 0"}
!303 = distinct !{!303, !"_ZN6google8protobuf13RepeatedFieldIbE18UninitializedCopyNEPKbiPb"}
!304 = !{!305}
!305 = distinct !{!305, !303, !"_ZN6google8protobuf13RepeatedFieldIbE18UninitializedCopyNEPKbiPb: argument 1"}
!306 = !{!302, !305}
!307 = !{!308}
!308 = distinct !{!308, !309, !"_ZN6google8protobuf13RepeatedFieldIiE18UninitializedCopyNEPKiiPi: argument 0"}
!309 = distinct !{!309, !"_ZN6google8protobuf13RepeatedFieldIiE18UninitializedCopyNEPKiiPi"}
!310 = !{!311}
!311 = distinct !{!311, !309, !"_ZN6google8protobuf13RepeatedFieldIiE18UninitializedCopyNEPKiiPi: argument 1"}
!312 = !{!308, !311}
!313 = !{!314, !314, i64 0}
!314 = !{!"_ZTSN6google8protobuf8internal14WireFormatLite8WireTypeE", !5, i64 0}
!315 = !{!88, !88, i64 0}
!316 = distinct !{!316, !37}
!317 = !{!318, !91, i64 0}
!318 = !{!"_ZTSN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EE", !91, i64 0, !4, i64 8}
!319 = distinct !{!319, !37}
!320 = distinct !{!320, !37}
!321 = !{!318, !4, i64 8}
!322 = !{!29, !19, i64 32}
!323 = !{!324, !10, i64 0}
!324 = !{!"_ZTSN6google8protobuf8internal13ExtensionInfo17EnumValidityCheckE", !10, i64 0, !10, i64 8}
!325 = !{!324, !10, i64 8}
!326 = distinct !{null}
!327 = !{!328, !74, i64 8}
!328 = !{!"_ZTSN6google8protobuf8internal13ExtensionInfo11MessageInfoE", !9, i64 0, !74, i64 8}
!329 = !{!330, !331, i64 32}
!330 = !{!"_ZTSN6google8protobuf8internal16TcParseTableBaseE", !88, i64 0, !88, i64 2, !4, i64 4, !5, i64 8, !5, i64 9, !88, i64 10, !4, i64 12, !4, i64 16, !88, i64 20, !88, i64 22, !4, i64 24, !331, i64 32, !10, i64 40, !10, i64 48}
!331 = !{!"p1 _ZTSN6google8protobuf8internal9ClassDataE", !10, i64 0}
!332 = !{!333, !4, i64 88}
!333 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !334, i64 0, !4, i64 88, !4, i64 92, !336, i64 96}
!334 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !125, i64 0, !125, i64 8, !125, i64 16, !4, i64 24, !4, i64 28, !335, i64 32, !5, i64 40, !25, i64 72, !4, i64 80, !4, i64 84}
!335 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !10, i64 0}
!336 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !337, i64 0, !338, i64 8}
!337 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !10, i64 0}
!338 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !10, i64 0}
!339 = !{!333, !4, i64 92}
!340 = !{!334, !4, i64 80}
!341 = !{!334, !125, i64 0}
!342 = !{!334, !125, i64 8}
!343 = !{!334, !4, i64 28}
!344 = distinct !{!344, !37}
!345 = !{ptr @_ZN6google8protobuf8internal12ExtensionSet14MutableMessageEPNS0_5ArenaEihRKNS0_11MessageLiteEPKNS0_15FieldDescriptorE}
!346 = !{i64 0, i64 8, !347, i64 8, i64 8, !348}
!347 = !{!337, !337, i64 0}
!348 = !{!338, !338, i64 0}
!349 = !{!334, !4, i64 84}
!350 = !{!334, !125, i64 16}
!351 = !{!334, !25, i64 72}
!352 = distinct !{!352, !37}
!353 = distinct !{!353, !37}
!354 = distinct !{!354, !37}
!355 = distinct !{!355, !37}
!356 = distinct !{!356, !37}
!357 = !{!358, !125, i64 0}
!358 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !125, i64 0, !125, i64 8, !5, i64 16, !359, i64 48, !15, i64 56, !15, i64 57, !15, i64 58, !15, i64 59}
!359 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !10, i64 0}
!360 = !{!"branch_weights", i32 1, i32 1999}
!361 = !{!"branch_weights", i32 0, i32 1}
!362 = distinct !{!362, !37}
!363 = distinct !{!363, !37}
!364 = distinct !{!364, !37}
!365 = distinct !{!365, !37}
!366 = distinct !{!366, !37}
!367 = distinct !{!367, !37}
!368 = distinct !{!368, !37}
!369 = distinct !{!369, !37}
!370 = distinct !{!370, !37}
!371 = distinct !{!371, !37}
!372 = distinct !{!372, !37}
!373 = distinct !{!373, !37}
!374 = distinct !{!374, !37}
!375 = distinct !{!375, !37}
!376 = distinct !{!376, !37}
!377 = distinct !{!377, !37}
!378 = distinct !{!378, !37}
!379 = distinct !{!379, !37}
!380 = distinct !{!380, !37}
!381 = distinct !{!381, !37}
!382 = distinct !{!382, !37}
!383 = distinct !{!383, !37}
!384 = distinct !{!384, !37}
!385 = distinct !{!385, !37}
!386 = distinct !{!386, !37}
!387 = distinct !{!387, !37}
!388 = distinct !{!388, !37}
!389 = distinct !{!389, !37}
!390 = distinct !{!390, !37}
!391 = distinct !{!391, !37}
!392 = distinct !{!392, !37}
!393 = distinct !{!393, !37}
!394 = distinct !{!394, !37}
!395 = distinct !{!395, !37}
!396 = !{!125, !125, i64 0}
!397 = distinct !{!397, !37}
!398 = distinct !{!398, !37}
!399 = distinct !{!399, !37}
!400 = distinct !{!400, !37}
!401 = distinct !{!401, !37}
!402 = distinct !{!402, !37}
!403 = distinct !{!403, !37}
!404 = distinct !{!404, !37}
!405 = distinct !{!405, !37}
!406 = distinct !{!406, !37}
!407 = distinct !{!407, !37}
!408 = distinct !{!408, !37}
!409 = distinct !{!409, !37}
!410 = distinct !{!410, !37}
!411 = distinct !{!411, !37}
!412 = distinct !{!412, !37}
!413 = distinct !{!413, !37}
!414 = distinct !{!414, !37}
!415 = distinct !{!415, !37}
!416 = distinct !{!416, !37}
!417 = distinct !{!417, !37}
!418 = distinct !{!418, !37}
!419 = distinct !{!419, !37}
!420 = distinct !{!420, !37}
!421 = distinct !{!421, !37}
!422 = distinct !{null}
!423 = distinct !{!423, !37}
!424 = distinct !{null}
!425 = distinct !{!425, !37}
!426 = !{!427, !429}
!427 = distinct !{!427, !428, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_: argument 0"}
!428 = distinct !{!428, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_"}
!429 = distinct !{!429, !430, !"_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE6insertEOSE_: argument 0"}
!430 = distinct !{!430, !"_ZN4absl12lts_2025051218container_internal19btree_set_containerINS1_5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEEE6insertEOSE_"}
!431 = !{!432, !434}
!432 = distinct !{!432, !433, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_: argument 0"}
!433 = distinct !{!433, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE17lower_bound_equalIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_"}
!434 = distinct !{!434, !435, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11equal_rangeIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_ERKT_: argument 0"}
!435 = distinct !{!435, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE11equal_rangeIiEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESN_ERKT_"}
!436 = !{!434}
!437 = !{!438, !25, i64 0}
!438 = !{!"_ZTSSt4pairImN4absl12lts_2025051218container_internal14btree_iteratorINS2_10btree_nodeINS2_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaIS_IKiSA_EELi256ELb0EEEEERSE_PSE_EEE", !25, i64 0, !318, i64 8}
!439 = !{!440, !440, i64 0}
!440 = !{!"p1 _ZTSN6google8protobuf8internal25RepeatedPrimitiveDefaultsE", !10, i64 0}
!441 = !{!442, !442, i64 0}
!442 = !{!"p1 _ZTSN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !10, i64 0}
!443 = distinct !{!443, !37}
!444 = distinct !{null, null, null, ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension22MessageSetItemByteSizeEi}
!445 = distinct !{!445, !37}
!446 = distinct !{!446, !37}
!447 = distinct !{!447, !37}
!448 = !{!449, !449, i64 0}
!449 = !{!"_ZTSN4absl12lts_2025051218container_internal6ctrl_tE", !5, i64 0}
!450 = distinct !{!450, !37}
!451 = distinct !{!451, !37}
!452 = distinct !{!452, !37}
!453 = distinct !{!453, !37}
!454 = distinct !{!454, !37}
!455 = distinct !{!455, !37}
!456 = distinct !{!456, !37}
!457 = distinct !{!457, !37}
!458 = distinct !{!458, !37}
!459 = !{!75, !4, i64 0}
!460 = !{!75, !76, i64 4}
!461 = distinct !{null}
!462 = !{i64 6102534}
!463 = distinct !{!463, !37}
!464 = distinct !{!464, !37}
!465 = distinct !{!465, !37}
!466 = distinct !{!466, !37}
!467 = distinct !{!467, !37}
!468 = !{i64 8}
!469 = distinct !{!469, !37}
!470 = distinct !{!470, !37}
!471 = distinct !{!471, !37}
!472 = !{!473, !474, i64 8}
!473 = !{!"_ZTSZN6google8protobuf8internal12ExtensionSet21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_E3$_0", !9, i64 0, !474, i64 8, !140, i64 16, !474, i64 24, !140, i64 32}
!474 = !{!"p1 _ZTSN6google8protobuf8internal12ExtensionSetE", !10, i64 0}
!475 = !{!473, !140, i64 16}
!476 = !{!473, !9, i64 0}
!477 = !{!473, !140, i64 32}
!478 = distinct !{!478, !37}
!479 = distinct !{!479, !37}
!480 = distinct !{!480, !37}
!481 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!482 = !{!483, !483, i64 0}
!483 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIiEE", !10, i64 0}
!484 = !{!485, !485, i64 0}
!485 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIlEE", !10, i64 0}
!486 = !{!487, !487, i64 0}
!487 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIjEE", !10, i64 0}
!488 = !{!489, !489, i64 0}
!489 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldImEE", !10, i64 0}
!490 = !{!491, !491, i64 0}
!491 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIbEE", !10, i64 0}
!492 = !{!493, !493, i64 0}
!493 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIfEE", !10, i64 0}
!494 = !{!495, !495, i64 0}
!495 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIdEE", !10, i64 0}
!496 = !{!497, !497, i64 0}
!497 = !{!"p1 _ZTSN6google8protobuf8internal16InternalMetadataE", !10, i64 0}
!498 = distinct !{null, null}
!499 = distinct !{!499, !37}
!500 = !{!501, !9, i64 8}
!501 = !{!"_ZTSZNK6google8protobuf8internal12ExtensionSet25_InternalSerializeAllImplEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0", !502, i64 0, !9, i64 8, !503, i64 16, !474, i64 24}
!502 = !{!"p2 omnipotent char", !198, i64 0}
!503 = !{!"p1 _ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !10, i64 0}
!504 = !{!501, !502, i64 0}
!505 = !{!501, !503, i64 16}
!506 = distinct !{!506, !37}
!507 = distinct !{!507, !37}
!508 = distinct !{!508, !37}
!509 = !{!510, !9, i64 8}
!510 = !{!"_ZTSZNK6google8protobuf8internal12ExtensionSet49InternalSerializeMessageSetWithCachedSizesToArrayEPKNS0_11MessageLiteEPhPNS0_2io19EpsCopyOutputStreamEE3$_0", !502, i64 0, !9, i64 8, !503, i64 16, !474, i64 24}
!511 = !{!510, !502, i64 0}
!512 = !{!510, !503, i64 16}
!513 = distinct !{!513, !37}
!514 = distinct !{!514, !37}
!515 = distinct !{!515, !37}
!516 = distinct !{!516, !37}
!517 = distinct !{!517, !37}
!518 = distinct !{!518, !37}
!519 = distinct !{!519, !37}
!520 = distinct !{!520, !521}
!521 = !{!"llvm.loop.unroll.disable"}
!522 = distinct !{null}
!523 = distinct !{!523, !37}
!524 = distinct !{!524, !37}
!525 = distinct !{!525, !37}
!526 = distinct !{!526, !521}
!527 = distinct !{!527, !37}
!528 = !{!529, !4, i64 0}
!529 = !{!"_ZTSSt4pairIiN6google8protobuf8internal12ExtensionSet9ExtensionEE", !4, i64 0, !102, i64 8}
!530 = distinct !{!530, !37}
!531 = distinct !{!531, !37}
!532 = distinct !{!532, !37}
!533 = distinct !{!533, !521}
!534 = distinct !{!534, !37}
!535 = distinct !{!535, !37}
!536 = distinct !{!536, !37}
!537 = distinct !{!537, !521}
!538 = distinct !{!538, !37}
!539 = distinct !{!539, !37}
!540 = distinct !{!540, !37}
!541 = !{!542}
!542 = distinct !{!542, !543, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_: argument 0"}
!543 = distinct !{!543, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13insert_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbERKT_DpOT0_"}
!544 = !{!545, !15, i64 16}
!545 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal14btree_iteratorINS2_10btree_nodeINS2_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaIS_IKiSA_EELi256ELb0EEEEERSE_PSE_EEbE", !318, i64 0, !15, i64 16}
!546 = distinct !{!546, !37}
!547 = distinct !{!547, !37}
!548 = distinct !{!548, !37}
!549 = distinct !{!549, !37}
!550 = distinct !{!550, !37}
!551 = distinct !{!551, !37}
!552 = distinct !{!552, !37}
!553 = distinct !{!553, !554}
!554 = !{!"llvm.loop.peeled.count", i32 1}
!555 = distinct !{!555, !521}
!556 = distinct !{!556, !521}
!557 = distinct !{!557, !37}
!558 = distinct !{!558, !37}
!559 = distinct !{null, ptr @_ZNK6google8protobuf8internal12ExtensionSet9Extension22MessageSetItemByteSizeEi}
!560 = distinct !{!560, !37}
!561 = distinct !{!561, !37}
end_hunk_4
