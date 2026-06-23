inline.NumInlined: 1716
inline.NumDeleted: 657
begin_hunk_0_@_ZN6google8protobuf4util13FieldMaskUtil9IntersectERKNS0_9FieldMaskES5_PS3_:bb.a
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !30, !noalias !104 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.058.0.copyload.i, i64 %i.bf) ; 2 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !33, !noalias !104
  %i.bi = call i32 @memcmp(ptr noundef %i.bh, ptr noundef readonly %.sroa.559.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #19, !noalias !104 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.j
  %i.bk = sub i64 %i.bf, %.sroa.058.0.copyload.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bk, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.bi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bl = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i
  %i.bm = add nuw i64 %i.bc, 1
  br label %bb.m

bb.l:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.222.i.i.i.i.i.i.i.i = phi i64 [ %.0207.i.i.i.i.i.i.i.i, %bb.k ], [ %i.bc, %bb.l ] ; 3 uses
  %.2.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %bb.k ], [ %.0198.i.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i.i, %.222.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.i.i, label %bb.j

.loopexit.i.loopexit.i.i.i.i:                     ; preds = %bb.m
  %i.bn = and i64 %.222.i.i.i.i.i.i.i.i, 255
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.i.loopexit.i.i.i.i, %bb.i
  %.sroa.018.2.i.i.i.ph.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.bn, %.loopexit.i.loopexit.i.i.i.i ]
  %i.bo = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i, i64 11
  %.val4.i.i.i.i.i = load i8, ptr %i.bo, align 1, !tbaa !15, !noalias !104
  %.not.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i, i64 256
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.018.2.i.i.i.ph.i.i.i.i.i
  br label %bb.i

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i: ; preds = %bb.l
  %i.br = trunc i64 %i.bc to i32
  %.phi.trans.insert.i = getelementptr i8, ptr %.029.val45.i, i64 10
  %.val.i.i.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !15
  %.pre.i = zext i8 %.val.i.i.pre.i to i32
  %i.bs = icmp eq i32 %i.br, %.pre.i
  br label %bb.p

bb.o:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %.029.val45.i, i64 10
  %.val.i.i.i.i.i = load i8, ptr %i.bt, align 1, !tbaa !15
  %i.bu = zext i8 %.val.i.i.i.i.i to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i
  %.pre-phi.i = phi i1 [ %i.bs, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i ], [ true, %bb.o ]
  %.pn3.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i ], [ %.029.val45.i, %bb.o ] ; 2 uses
  %.pn1.i.i.i.i = phi i64 [ %i.bc, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i ], [ %i.bu, %bb.o ]
  %i.bv = icmp eq ptr %.pn3.i.i.i.i, %.029.val45.i
  %i.bw = select i1 %i.bv, i1 %.pre-phi.i, i1 false
  br i1 %i.bw, label %thread-pre-split.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = and i64 %.pn1.i.i.i.i, 255
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %.pn3.i.i.i.i, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %.val.i = load ptr, ptr %i.bz, align 8, !tbaa !107 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.061.080.i, i64 16 ; 2 uses
  %.not75.i = icmp eq ptr %i.ca, %i.as
  br i1 %.not75.i, label %.thread72.i, label %.preheader.i

.thread72.i:                                      ; preds = %bb.q
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree20MergeLeafNodesToTreeESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPS3_(i64 %i.aq, ptr %i.ao, ptr noundef %.val.i, ptr noundef nonnull %7)
          to label %thread-pre-split.i unwind label %bb.t

thread-pre-split.i:                               ; preds = %bb.p, %.thread72.i, %bb.f, %bb.e
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split.i, %.noexc21
  %i.cb = phi ptr [ %.pr.i, %thread-pre-split.i ], [ %i.ar, %.noexc21 ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #20
  br label %bb.w

bb.t:                                             ; preds = %.thread72.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.g
  %.pn41.i = phi { ptr, i32 } [ %i.cg, %bb.t ], [ %i.aw, %bb.g ]
  %i.ch = load ptr, ptr %4, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i54.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i54.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit55.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cl) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit55.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit55.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body

bb.w:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i32, ptr %i.x, align 8, !tbaa !34
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %bb.d, label %._crit_edge, !llvm.loop !109

bb.x:                                             ; preds = %._crit_edge
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPNS0_9FieldMaskE(i64 0, ptr nonnull @.str.7, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, ptr noundef nonnull %2)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit unwind label %.loopexit.split-lp

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit: ; preds = %bb.x
  %.val20 = load i64, ptr %i.d, align 8, !tbaa !94
  %i.cp = icmp eq i64 %.val20, 0
  br i1 %i.cp, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit
  %.val19 = load ptr, ptr %7, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val19), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit: ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.val18 = load i64, ptr %i.b, align 8, !tbaa !94
  %i.cq = icmp eq i64 %.val18, 0
  br i1 %i.cq, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit23, label %bb.z

bb.z:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit
  %.val17 = load ptr, ptr %6, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val17), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit23

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit23: ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit55.i
  %.pn = phi { ptr, i32 } [ %.pn41.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit55.i ], [ %i.ae, %bb.c ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val16 = load i64, ptr %i.d, align 8, !tbaa !94
  %i.cr = icmp eq i64 %.val16, 0
  br i1 %i.cr, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24, label %bb.aa

bb.aa:                                            ; preds = %.body
  %.val15 = load ptr, ptr %7, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val15), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24: ; preds = %bb.aa, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.val14 = load i64, ptr %i.b, align 8, !tbaa !94
  %i.cs = icmp eq i64 %.val14, 0
  br i1 %i.cs, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit25, label %bb.ab

bb.ab:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24
  %.val = load ptr, ptr %6, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit25

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit25: ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 6 uses
  %5 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr.19", align 8 ; 6 uses
  %9 = alloca %"class.google::protobuf::util::(anonymous namespace)::FieldMaskTree", align 8 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf9FieldMask5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %bb.cv

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %9, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.j, align 8, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store i64 0, ptr %i.k, align 8, !tbaa !94
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit

.lr.ph.i:                                         ; preds = %bb.c, %.noexc
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc ], [ 0, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = and i64 %i.n, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = add i64 %i.n, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %.0.i.i.i.i.i.i = select i1 %i.p, ptr %i.f, ptr %i.t
  %i.u = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree7AddPathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %i.x, ptr %i.v)
          to label %.noexc unwind label %.loopexit29

.noexc:                                           ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = load i32, ptr %i.g, align 8, !tbaa !34
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next.i, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit, !llvm.loop !95

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit: ; preds = %.noexc, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !34 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.2.0..sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.k, align 8, !tbaa !94
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree10RemovePathESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorE.exit, %.lr.ph, %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit
  invoke void @_ZN6google8protobuf9FieldMask5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.ct unwind label %.loopexit.split-lp30

.loopexit29:                                      ; preds = %.lr.ph.i
  %lpad.loopexit31 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp30:                             ; preds = %._crit_edge, %bb.ct
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree10RemovePathESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorE.exit
  %.val82.i.pr = load i64, ptr %i.k, align 8, !tbaa !94
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %.val82.i = phi i64 [ %.val82.i.pr, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph ]
  %i.am = phi i32 [ %i.tc, %.lr.ph.splitthread-pre-split ], [ %i.ac, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 2 uses
  %i.an = icmp eq i64 %.val82.i, 0
  br i1 %i.an, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree10RemovePathESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !37
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = add i64 %i.ap, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %.0.i.i.i.i.i = select i1 %i.ar, ptr %i.ae, ptr %i.av
  %i.aw = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !30
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 %i.ay, ptr %7, align 8, !tbaa !7, !alias.scope !110
  store ptr %i.az, ptr %.sroa.2.0..sroa_idx.i1.i.i, align 8, !tbaa !12, !alias.scope !110
  store i8 46, ptr %i.af, align 8, !tbaa !15, !alias.scope !110
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !113
  invoke void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(18) %7)
          to label %.noexc22 unwind label %bb.d

.noexc22:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ba = load ptr, ptr %6, align 8, !tbaa !19    ; 4 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %.noexc22
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = ashr exact i64 %i.bf, 4                 ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 1152921504606846975
  br i1 %i.bh, label %bb.g, label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i: ; preds = %bb.f
  %i.bi = ashr exact i64 %i.bf, 1                 ; 3 uses
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #22
          to label %.noexc104.i unwind label %.loopexit ; 6 uses

.noexc104.i:                                      ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  store ptr null, ptr %i.bj, align 8, !tbaa !107
  %i.bk = add nsw i64 %i.bg, -1                   ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph219.i.preheader, label %_ZSt6fill_nIPPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEmS6_ET_S8_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

.lr.ph219.i.preheader:                            ; preds = %_ZSt6fill_nIPPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEmS6_ET_S8_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc104.i
  br label %.lr.ph219.i

_ZSt6fill_nIPPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEmS6_ET_S8_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc104.i
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bm, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !107
  br label %.lr.ph219.i.preheader

.loopexit:                                        ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit137.i

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit137.i

.lr.ph219.i:                                      ; preds = %.lr.ph219.i.preheader, %bb.bb
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i, %bb.bb ], [ 0, %.lr.ph219.i.preheader ] ; 5 uses
  %i.bn = phi ptr [ %i.jq, %bb.bb ], [ %i.ba, %.lr.ph219.i.preheader ]
  %.055218.i = phi ptr [ %.val85.i, %bb.bb ], [ %9, %.lr.ph219.i.preheader ] ; 10 uses
  %.059217.i = phi ptr [ %.261.ph.i, %bb.bb ], [ %0, %.lr.ph219.i.preheader ] ; 4 uses
  %.063216.i = phi ptr [ %.265.i, %bb.bb ], [ null, %.lr.ph219.i.preheader ] ; 7 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv261.i
  store ptr %.055218.i, ptr %i.bo, align 8, !tbaa !107
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv261.i ; 2 uses
  %.sroa.013.0.copyload.i = load i64, ptr %i.bp, align 8, !tbaa !7
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.214.0.copyload.i = load ptr, ptr %.sroa.214.0..sroa_idx.i, align 8, !tbaa !12
  %i.bq = invoke noundef ptr @_ZNK6google8protobuf10Descriptor15FindFieldByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %.059217.i, i64 %.sroa.013.0.copyload.i, ptr %.sroa.214.0.copyload.i)
          to label %bb.h unwind label %.thread153.i ; 3 uses

bb.h:                                             ; preds = %.lr.ph219.i
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !60
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !70
  %.not.i = icmp eq i32 %i.bw, 10
  br i1 %.not.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.ag, align 8, !tbaa !116
  %i.by = load ptr, ptr %6, align 8, !tbaa !21
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 4
  %i.cd = add nsw i64 %i.cc, -1
  %.not70.i = icmp eq i64 %i.cd, %indvars.iv261.i
  br i1 %.not70.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.not74.i = icmp eq ptr %.063216.i, null
  br i1 %.not74.i, label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %.063216.i, i64 16 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.ce, align 8, !tbaa !94
  %i.cf = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.cf, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val1.i.i.i.i = load ptr, ptr %.063216.i, align 8, !tbaa !87
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i.i.i), !inline_history !117
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv.exit.i

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv.exit.i: ; preds = %bb.m, %bb.l
  store <2 x ptr> <ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11>, ptr %.063216.i, align 8, !tbaa !103
  store i64 0, ptr %i.ce, align 8, !tbaa !94
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i

.thread153.i:                                     ; preds = %.lr.ph219.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.ch = getelementptr i8, ptr %.055218.i, i64 16 ; 4 uses
  %.055.val.i = load i64, ptr %i.ch, align 8, !tbaa !94
  %i.ci = icmp eq i64 %.055.val.i, 0
  br i1 %i.ci, label %bb.o, label %.loopexit173.i

bb.o:                                             ; preds = %bb.n
  %i.cj = icmp eq ptr %.063216.i, null
  %spec.select.i = select i1 %i.cj, ptr %.055218.i, ptr %.063216.i ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.059217.i, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !75
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i19, label %.loopexit173.i

.lr.ph.i19:                                       ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %.059217.i, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %.055218.i, i64 8 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i, %.lr.ph.i19
  %indvars.iv.i20 = phi i64 [ 0, %.lr.ph.i19 ], [ %indvars.iv.next.i21, %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.cp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.q unwind label %bb.ao      ; 4 uses

bb.q:                                             ; preds = %bb.p
  store <2 x ptr> <ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11>, ptr %i.cp, align 8, !tbaa !103, !noalias !118
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 0, ptr %i.cq, align 8, !tbaa !94, !noalias !118
  store ptr %i.cp, ptr %8, align 8, !tbaa !107, !alias.scope !118
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !84
  %i.cs = getelementptr inbounds nuw [88 x i8], ptr %i.cr, i64 %indvars.iv.i20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !85 ; 2 uses
  %.0.copyload.i.i.i.i = load i16, ptr %i.cu, align 1 ; 3 uses
  %i.cv = zext i16 %.0.copyload.i.i.i.i to i64    ; 5 uses
  %i.cw = xor i64 %i.cv, -1
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 %i.cw ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.ch, align 8, !tbaa !94, !noalias !121
  %i.cy = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.cy, label %bb.r, label %.preheader

bb.r:                                             ; preds = %bb.q
  %i.cz = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22
          to label %.noexc107.i unwind label %.loopexit.split-lp166.loopexit.split-lp.i ; 5 uses

.noexc107.i:                                      ; preds = %bb.r
  store ptr %i.cz, ptr %i.cz, align 8, !tbaa !103, !noalias !121
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.da, align 8, !tbaa !15, !noalias !121
  store ptr %i.cz, ptr %i.co, align 8, !tbaa !103, !noalias !121
  store ptr %i.cz, ptr %.055218.i, align 8, !tbaa !103, !noalias !121
  br label %.preheader

.preheader:                                       ; preds = %.noexc107.i, %bb.q
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %bb.x
  %.sroa.03.0.i.in.i.i.i.i.i = phi ptr [ %i.dt, %bb.x ], [ %.055218.i, %.preheader ]
  %.sroa.03.0.i.i.i.i.i.i = load ptr, ptr %.sroa.03.0.i.in.i.i.i.i.i, align 8, !tbaa !103, !noalias !121 ; 10 uses
  %i.db = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.db, align 1, !tbaa !15, !noalias !128 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not6.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.s
  %i.dc = zext i8 %.val.i.i.i.i.i.i.i.i to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 16
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.0198.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %.0207.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.222.i.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %i.de = add i64 %.0207.i.i.i.i.i.i.i.i.i, %.0198.i.i.i.i.i.i.i.i.i
  %i.df = lshr i64 %i.de, 1                       ; 4 uses
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.dd, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30, !noalias !128 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cv, i64 %i.di) ; 2 uses
  %i.dj = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !33, !noalias !128
  %i.dl = call i32 @memcmp(ptr noundef %i.dk, ptr noundef nonnull readonly %i.cx, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i) #19, !noalias !128 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.t
  %i.dn = sub i64 %i.di, %i.cv
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dn, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.do = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.do, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i
  %i.dp = add nuw i64 %i.df, 1
  br label %bb.w

bb.v:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.222.i.i.i.i.i.i.i.i.i = phi i64 [ %.0207.i.i.i.i.i.i.i.i.i, %bb.u ], [ %i.df, %bb.v ] ; 3 uses
  %.2.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dp, %bb.u ], [ %.0198.i.i.i.i.i.i.i.i.i, %bb.v ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i.i.i, %.222.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.t

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.w, %bb.s
  %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ %.222.i.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 11
  %.val4.i.i.i.i.i.i = load i8, ptr %i.dq, align 1, !tbaa !15, !noalias !128 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %._crit_edge.i.i.i.i.i.i

bb.x:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 256
  %i.ds = and i64 %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i, 255
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ds
  br label %bb.s

bb.y:                                             ; preds = %bb.v
  %.pre.i.i = and i64 %i.df, 255
  br label %bb.al

._crit_edge.i.i.i.i.i.i:                          ; preds = %.loopexit.i.i.i.i.i.i
  %i.du = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 10 ; 3 uses
  %i.dv = trunc i64 %.sroa.018.2.i.i.i.ph.i.i.i.i.i.i to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !121
  store ptr %.sroa.03.0.i.i.i.i.i.i, ptr %4, align 8, !noalias !121
  store i32 %i.dv, ptr %i.ah, align 8, !noalias !121
  %i.dw = icmp eq i8 %.val.i.i.i.i.i.i.i.i, %.val4.i.i.i.i.i.i
  br i1 %i.dw, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dx = icmp ult i8 %.val.i.i.i.i.i.i.i.i, 6
  br i1 %i.dx, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dy = shl nuw nsw i8 %.val.i.i.i.i.i.i.i.i, 1
  %i.dz = call i8 @llvm.umin.i8(i8 %i.dy, i8 6)   ; 2 uses
  %narrow.i.i.i.i.i.i = mul nuw i8 %i.dz, 40
  %i.ea = zext i8 %narrow.i.i.i.i.i.i to i64
  %i.eb = add nuw nsw i64 %i.ea, 16
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #22
          to label %.noexc108.i unwind label %.loopexit.split-lp166.loopexit.split-lp.i ; 10 uses

.noexc108.i:                                      ; preds = %bb.aa
  store ptr %i.ec, ptr %i.ec, align 8, !tbaa !103, !noalias !121
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i8 0, ptr %i.ed, align 8, !tbaa !15, !noalias !121
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 9
  store i8 0, ptr %i.ee, align 1, !tbaa !15, !noalias !121
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 10 ; 2 uses
  store i8 0, ptr %i.ef, align 2, !tbaa !15, !noalias !121
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 11
  store i8 %i.dz, ptr %i.eg, align 1, !tbaa !15, !noalias !121
  %.val13.i.i.i.i.i.i.i.i = load i8, ptr %i.du, align 1, !tbaa !15, !noalias !121 ; 2 uses
  %i.eh = zext i8 %.val13.i.i.i.i.i.i.i.i to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.eh, 40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx.i.i.i.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val13.i.i.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc108.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  br label %.lr.ph.i.i.i11.i.i.i.i.i.i

.lr.ph.i.i.i11.i.i.i.i.i.i:                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fg, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ek, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %.0122.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ff, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ei, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.el, ptr %.03.i.i.i.i.i.i.i.i.i, align 8, !tbaa !39, !noalias !121
  %i.em = load ptr, ptr %.0122.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !121 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i.i.i, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !30, !noalias !121 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19, !noalias !121
  store i64 %i.eo, ptr %i.e, align 8, !tbaa !7, !noalias !121
  %i.ep = icmp ugt i64 %i.eo, 15
  br i1 %i.ep, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i11.i.i.i.i.i.i
  %i.eq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc109.i unwind label %.loopexit.split-lp166.loopexit.i ; 2 uses

.noexc109.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.eq, ptr %.03.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !121
  %i.er = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !121
  store i64 %i.er, ptr %i.el, align 8, !tbaa !15, !noalias !121
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.noexc109.i, %.lr.ph.i.i.i11.i.i.i.i.i.i
  %i.es = phi ptr [ %i.eq, %.noexc109.i ], [ %i.el, %.lr.ph.i.i.i11.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.eo, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.et = load i8, ptr %i.em, align 1, !tbaa !15, !noalias !121
  store i8 %i.et, ptr %i.es, align 1, !tbaa !15, !noalias !121
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %i.em, i64 %i.eo, i1 false), !noalias !121
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eu = load i64, ptr %i.e, align 8, !tbaa !7, !noalias !121 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 8
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !30, !noalias !121
  %i.ew = load ptr, ptr %.03.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !121
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  store i8 0, ptr %i.ex, align 1, !tbaa !15, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19, !noalias !121
  %i.ey = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ez, align 8, !tbaa !107, !noalias !121
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ey, align 8, !tbaa !107, !noalias !121
  store ptr null, ptr %i.ez, align 8, !tbaa !107, !noalias !121
  %i.fa = load ptr, ptr %.0122.i.i.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !121 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !15, !noalias !121
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #20, !noalias !121, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i, i64 40
  %.not.i.i.i12.i.i.i.i.i.i = icmp eq ptr %i.ff, %i.ej
  br i1 %.not.i.i.i12.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i11.i.i.i.i.i.i, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i.i
  %.val.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.du, align 1, !tbaa !15, !noalias !121
  br label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i.i.i, %.noexc108.i
  %.val.i.i13.i.i.i.i.i.i = phi i8 [ %.val.pre.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i.i.i ], [ 0, %.noexc108.i ]
  store i8 %.val.i.i13.i.i.i.i.i.i, ptr %i.ef, align 2, !tbaa !15, !noalias !121
  store i8 0, ptr %i.du, align 1, !tbaa !15, !noalias !121
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef nonnull %.sroa.03.0.i.i.i.i.i.i), !noalias !121
  store ptr %i.ec, ptr %i.co, align 8, !tbaa !103, !noalias !121
  store ptr %i.ec, ptr %.055218.i, align 8, !tbaa !103, !noalias !121
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  invoke fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %.055218.i, ptr noundef %4)
          to label %.noexc110.i unwind label %.loopexit.split-lp166.loopexit.split-lp.i

.noexc110.i:                                      ; preds = %bb.ad
  %.pre.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !133, !noalias !121
  %.pre20.i.i.i.i.i = load i32, ptr %i.ah, align 8, !tbaa !135, !noalias !121
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc110.i, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.fh = phi i32 [ %.pre20.i.i.i.i.i, %.noexc110.i ], [ %i.dv, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i ], [ %i.dv, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.fi = phi ptr [ %.pre.i.i.i.i.i, %.noexc110.i ], [ %i.ec, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_ENKUlhE_clEh.exit.i.i.i.i.i.i ], [ %.sroa.03.0.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.fj = trunc i32 %i.fh to i8                   ; 2 uses
  %i.fk = and i32 %i.fh, 255                      ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fi, i64 10     ; 3 uses
  %.val23.i.i.i.i.i.i.i = load i8, ptr %i.fl, align 1, !tbaa !15, !noalias !121 ; 2 uses
  %i.fm = icmp ugt i8 %.val23.i.i.i.i.i.i.i, %i.fj
  %i.fn = zext nneg i32 %i.fk to i64              ; 3 uses
  br i1 %i.fm, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %.loopexit169.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.ae
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fp = getelementptr [40 x i8], ptr %i.fo, i64 %i.fn ; 3 uses
  %narrow.i.i.i.i.i.i.i = sub nuw i8 %.val23.i.i.i.i.i.i.i, %i.fj
  %i.fq = zext i8 %narrow.i.i.i.i.i.i.i to i64    ; 2 uses
  %.idx.i.i.i.i.i.i.i106.i = mul nuw nsw i64 %i.fq, 40
  %i.fr = getelementptr i8, ptr %i.fp, i64 40
  %i.fs = getelementptr [40 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = getelementptr i8, ptr %i.fp, i64 %.idx.i.i.i.i.i.i.i106.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i = phi ptr [ %i.fu, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i ], [ %i.fs, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %.0142.i.i.i.i.i.i.i.i = phi ptr [ %i.fv, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i ], [ %i.ft, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.fu = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i.i.i, i64 -40 ; 5 uses
  %i.fv = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i.i.i, i64 -40 ; 4 uses
  %i.fw = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i.i.i, i64 -24 ; 3 uses
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !39, !noalias !121
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !33, !noalias !121 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i.i.i, i64 -32
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !30, !noalias !121 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19, !noalias !121
  store i64 %i.fz, ptr %i.d, align 8, !tbaa !7, !noalias !121
  %i.ga = icmp ugt i64 %i.fz, 15
  br i1 %i.ga, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.gb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.fu, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc111.i unwind label %.loopexit165.i ; 2 uses

.noexc111.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.gb, ptr %i.fu, align 8, !tbaa !33, !noalias !121
  %i.gc = load i64, ptr %i.d, align 8, !tbaa !7, !noalias !121
  store i64 %i.gc, ptr %i.fw, align 8, !tbaa !15, !noalias !121
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.noexc111.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gd = phi ptr [ %i.gb, %.noexc111.i ], [ %i.fw, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.fz, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = load i8, ptr %i.fx, align 1, !tbaa !15, !noalias !121
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !15, !noalias !121
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gd, ptr align 1 %i.fx, i64 %i.fz, i1 false), !noalias !121
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = load i64, ptr %i.d, align 8, !tbaa !7, !noalias !121 ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i.i.i, i64 -32
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !30, !noalias !121
  %i.gh = load ptr, ptr %i.fu, align 8, !tbaa !33, !noalias !121
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gf
  store i8 0, ptr %i.gi, align 1, !tbaa !15, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19, !noalias !121
  %i.gj = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i.i.i, i64 -8
  %i.gk = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gk, align 8, !tbaa !107, !noalias !121
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gj, align 8, !tbaa !107, !noalias !121
  store ptr null, ptr %i.gk, align 8, !tbaa !107, !noalias !121
  %i.gl = load ptr, ptr %i.fv, align 8, !tbaa !33, !noalias !121 ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !15, !noalias !121
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #20, !noalias !121, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i16.i.i.i.i.i.i = icmp eq ptr %i.fv, %i.fp
  br i1 %.not.i.i16.i.i.i.i.i.i, label %.loopexit169.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !136

.loopexit169.i:                                   ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i.i, %bb.ae
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.gr = getelementptr inbounds nuw [40 x i8], ptr %i.gq, i64 %i.fn ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 3 uses
  store ptr %i.gs, ptr %i.gr, align 8, !tbaa !39, !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !121
  store i64 %i.cv, ptr %i.c, align 8, !tbaa !7, !noalias !121
  %i.gt = icmp ugt i16 %.0.copyload.i.i.i.i, 15
  br i1 %i.gt, label %.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i:           ; preds = %.loopexit169.i
  %i.gu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.gr, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc113.i unwind label %.loopexit.split-lp166.loopexit.split-lp.i ; 2 uses

.noexc113.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i
  store ptr %i.gu, ptr %i.gr, align 8, !tbaa !33, !noalias !121
  %i.gv = load i64, ptr %i.c, align 8, !tbaa !7, !noalias !121
  store i64 %i.gv, ptr %i.gs, align 8, !tbaa !15, !noalias !121
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i:    ; preds = %.noexc113.i, %.loopexit169.i
  %i.gw = phi ptr [ %i.gu, %.noexc113.i ], [ %i.gs, %.loopexit169.i ] ; 2 uses
  switch i16 %.0.copyload.i.i.i.i, label %bb.ai [
    i16 1, label %bb.ah
    i16 0, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i
  %i.gx = load i8, ptr %i.cx, align 1, !tbaa !15, !noalias !121
  store i8 %i.gx, ptr %i.gw, align 1, !tbaa !15, !noalias !121
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gw, ptr nonnull readonly align 1 %i.cx, i64 %i.cv, i1 false), !noalias !121
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i.i.i
  %i.gy = load i64, ptr %i.c, align 8, !tbaa !7, !noalias !121 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !30, !noalias !121
  %i.ha = load ptr, ptr %i.gr, align 8, !tbaa !33, !noalias !121
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gy
  store i8 0, ptr %i.hb, align 1, !tbaa !15, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !121
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  store ptr null, ptr %i.hc, align 8, !tbaa !137, !noalias !121
  %.val21.i.i.i.i.i.i.i = load i8, ptr %i.fl, align 1, !tbaa !15, !noalias !121
  %i.hd = add i8 %.val21.i.i.i.i.i.i.i, 1         ; 3 uses
  store i8 %i.hd, ptr %i.fl, align 1, !tbaa !15, !noalias !121
  %i.he = getelementptr i8, ptr %i.fi, i64 11
  %.val24.i.i.i.i.i.i.i = load i8, ptr %i.he, align 1, !tbaa !15, !noalias !121
  %.not.i26.i.i.i.i.i.i.i = icmp eq i8 %.val24.i.i.i.i.i.i.i, 0
  br i1 %.not.i26.i.i.i.i.i.i.i, label %bb.aj, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i

bb.aj:                                            ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i
  %i.hf = zext i8 %i.hd to i32
  %i.hg = add nuw nsw i32 %i.fk, 1                ; 2 uses
  %i.hh = icmp samesign ult i32 %i.hg, %i.hf
  br i1 %i.hh, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.aj
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fi, i64 256 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i.i.i.i.i.i.i
  %.01.i.i.i.i.i.i.i = phi i8 [ %i.hd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.hj, %bb.ak ] ; 3 uses
  %i.hj = add i8 %.01.i.i.i.i.i.i.i, -1           ; 3 uses
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !103, !noalias !121 ; 2 uses
  %i.hn = zext i8 %.01.i.i.i.i.i.i.i to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hn
  store ptr %i.hm, ptr %i.ho, align 8, !tbaa !103, !noalias !121
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i8 %.01.i.i.i.i.i.i.i, ptr %i.hp, align 1, !tbaa !15, !noalias !121
  %i.hq = zext i8 %i.hj to i32
  %i.hr = icmp samesign ult i32 %i.hg, %i.hq
  br i1 %i.hr, label %bb.ak, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i, !llvm.loop !139

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %bb.aj, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i.i.i
  %i.hs = load i64, ptr %i.ch, align 8, !tbaa !94, !noalias !121
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.ch, align 8, !tbaa !94, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !121
  br label %bb.al

bb.al:                                            ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i, %bb.y
  %.pre-phi14.i.i = phi i64 [ %.pre.i.i, %bb.y ], [ %i.fn, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.sink.i.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i.i.i, %bb.y ], [ %i.fi, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES17_DpOT_.exit.i.i.i.i.i ]
  %i.hu = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.sink.i.i.i.i.i, i64 %.pre-phi14.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 48 ; 2 uses
  store ptr null, ptr %8, align 8, !tbaa !107
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !107 ; 4 uses
  store ptr %i.cp, ptr %i.hv, align 8, !tbaa !107
  %.not.i.i.i.i114.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i114.i, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hx, align 8, !tbaa !94
  %i.hy = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hy, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hw, align 8, !tbaa !87
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i.i.i.i.i.i.i.i), !inline_history !140
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.an, %bb.am
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef 24) #20, !inline_history !141
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %i.hz = load i32, ptr %i.ck, align 8, !tbaa !75
  %i.ia = sext i32 %i.hz to i64
  %i.ib = icmp slt i64 %indvars.iv.next.i21, %i.ia
  br i1 %i.ib, label %bb.p, label %.loopexit173.i, !llvm.loop !142

bb.ao:                                            ; preds = %bb.p
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit165.i:                                   ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit167.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp166.i

.loopexit.split-lp166.loopexit.i:                 ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit170.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp166.i

.loopexit.split-lp166.loopexit.split-lp.i:        ; preds = %.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i.i.i, %bb.ad, %bb.aa, %bb.r
  %lpad.loopexit.split-lp171.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp166.i

.loopexit.split-lp166.i:                          ; preds = %.loopexit.split-lp166.loopexit.split-lp.i, %.loopexit.split-lp166.loopexit.i, %.loopexit165.i
  %lpad.phi168.i = phi { ptr, i32 } [ %lpad.loopexit167.i, %.loopexit165.i ], [ %lpad.loopexit170.i, %.loopexit.split-lp166.loopexit.i ], [ %lpad.loopexit.split-lp171.i, %.loopexit.split-lp166.loopexit.split-lp.i ]
  call fastcc void @_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp166.i, %bb.ao
  %.pn72.i = phi { ptr, i32 } [ %lpad.phi168.i, %.loopexit.split-lp166.i ], [ %i.ic, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.loopexit.split-lp.i

.loopexit173.i:                                   ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i, %bb.o, %bb.n
  %.265.i = phi ptr [ %.063216.i, %bb.n ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i ]
  %i.id = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv261.i ; 2 uses
  %i.if = getelementptr i8, ptr %.055218.i, i64 8
  %.055.val90.i = load ptr, ptr %i.if, align 8    ; 4 uses
  %.val91.i = load i64, ptr %i.ie, align 8        ; 2 uses
  %i.ig = getelementptr i8, ptr %i.ie, i64 8
  %.val92.i = load ptr, ptr %i.ig, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.av, %.loopexit173.i
  %.sroa.03.0.i.i.i.i.in.i = phi ptr [ %.055218.i, %.loopexit173.i ], [ %i.iz, %bb.av ]
  %.sroa.03.0.i.i.i.i.i = load ptr, ptr %.sroa.03.0.i.i.i.i.in.i, align 8, !tbaa !103 ; 5 uses
  %i.ih = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.ih, align 1, !tbaa !15, !noalias !143 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i, 0
  br i1 %.not6.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i115.i

.lr.ph.i.i.i.i.i.i.i115.i:                        ; preds = %bb.aq
  %i.ii = zext i8 %.val.i.i.i.i.i.i.i to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i, i64 16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.au, %.lr.ph.i.i.i.i.i.i.i115.i
  %.0198.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i115.i ], [ %.2.i.i.i.i.i.i.i.i, %bb.au ] ; 2 uses
  %.0207.i.i.i.i.i.i.i.i = phi i64 [ %i.ii, %.lr.ph.i.i.i.i.i.i.i115.i ], [ %.222.i.i.i.i.i.i.i.i, %bb.au ] ; 2 uses
  %i.ik = add i64 %.0207.i.i.i.i.i.i.i.i, %.0198.i.i.i.i.i.i.i.i
  %i.il = lshr i64 %i.ik, 1                       ; 5 uses
  %i.im = getelementptr inbounds nuw [40 x i8], ptr %i.ij, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !30, !noalias !143 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val91.i, i64 %i.io) ; 2 uses
  %i.ip = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ip, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ar
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !33, !noalias !143
  %i.ir = call i32 @memcmp(ptr noundef %i.iq, ptr noundef readonly %.val92.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #19, !noalias !143 ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.ar
  %i.it = sub i64 %i.io, %.val91.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.it, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.ir, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.iu = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.iu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i
  %i.iv = add nuw i64 %i.il, 1
  br label %bb.au

bb.at:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.222.i.i.i.i.i.i.i.i = phi i64 [ %.0207.i.i.i.i.i.i.i.i, %bb.as ], [ %i.il, %bb.at ] ; 3 uses
  %.2.i.i.i.i.i.i.i.i = phi i64 [ %i.iv, %bb.as ], [ %.0198.i.i.i.i.i.i.i.i, %bb.at ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i.i, %.222.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.i.i, label %bb.ar

.loopexit.i.loopexit.i.i.i.i:                     ; preds = %bb.au
  %i.iw = and i64 %.222.i.i.i.i.i.i.i.i, 255
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.i.loopexit.i.i.i.i, %bb.aq
  %.sroa.018.2.i.i.i.ph.i.i.i.i.i = phi i64 [ 0, %bb.aq ], [ %i.iw, %.loopexit.i.loopexit.i.i.i.i ]
  %i.ix = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i, i64 11
  %.val4.i.i.i.i.i = load i8, ptr %i.ix, align 1, !tbaa !15, !noalias !143
  %.not.i.i.i.i116.i = icmp eq i8 %.val4.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i116.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i, i64 256
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.sroa.018.2.i.i.i.ph.i.i.i.i.i
  br label %bb.aq

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i: ; preds = %bb.at
  %i.ja = trunc i64 %i.il to i32
  %.phi.trans.insert.i = getelementptr i8, ptr %.055.val90.i, i64 10
  %.val.i.i.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !15
  %.pre270.i = zext i8 %.val.i.i.pre.i to i32
  %i.jb = icmp eq i32 %i.ja, %.pre270.i
  br label %bb.ax

bb.aw:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.jc = getelementptr i8, ptr %.055.val90.i, i64 10
  %.val.i.i.i.i117.i = load i8, ptr %i.jc, align 1, !tbaa !15
  %i.jd = zext i8 %.val.i.i.i.i117.i to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i
  %.pre-phi271.i = phi i1 [ true, %bb.aw ], [ %i.jb, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i ]
  %.pn3.i.i.i.i = phi ptr [ %.055.val90.i, %bb.aw ], [ %.sroa.03.0.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i ] ; 2 uses
  %.pn1.i.i.i.i = phi i64 [ %i.jd, %bb.aw ], [ %i.il, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13internal_findISt17basic_string_viewIcS7_EEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EERKT_.exit.i.i.i ]
  %i.je = icmp eq ptr %.pn3.i.i.i.i, %.055.val90.i
  %i.jf = select i1 %i.je, i1 %.pre-phi271.i, i1 false
  br i1 %i.jf, label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i, label %bb.az

bb.ay:                                            ; preds = %bb.ba
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.az:                                            ; preds = %bb.ax
  %i.jh = and i64 %.pn1.i.i.i.i, 255
  %i.ji = getelementptr inbounds nuw [40 x i8], ptr %.pn3.i.i.i.i, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %.val85.i = load ptr, ptr %i.jj, align 8, !tbaa !107
  %i.jk = load i8, ptr %i.bs, align 2, !tbaa !60
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !70
  %i.jo = icmp eq i32 %i.jn, 10
  br i1 %i.jo, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jp = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bq)
          to label %._crit_edge.i unwind label %bb.ay

._crit_edge.i:                                    ; preds = %bb.ba
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !21
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i, %bb.az
  %i.jq = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.id, %bb.az ] ; 2 uses
  %.261.ph.i = phi ptr [ %i.jp, %._crit_edge.i ], [ %.059217.i, %bb.az ]
  %indvars.iv.next262.i = add nuw nsw i64 %indvars.iv261.i, 1 ; 2 uses
  %i.jr = load ptr, ptr %i.ag, align 8, !tbaa !116
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jq to i64
  %i.ju = sub i64 %i.js, %i.jt                    ; 2 uses
  %i.jv = ashr exact i64 %i.ju, 4
  %.not77.i = icmp ugt i64 %i.jv, %indvars.iv.next262.i
  br i1 %.not77.i, label %.lr.ph219.i, label %.critedge81.i, !llvm.loop !146
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !94, !noalias !164 ; 4 uses
  %i.nu = icmp eq i64 %.0.i.i.i.i, %i.nt
  br i1 %i.nu, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5clearEv.exit.i.i.i, label %bb.cb

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5clearEv.exit.i.i.i: ; preds = %bb.ca
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val.i.i), !noalias !164, !inline_history !171
  store <2 x ptr> <ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11>, ptr %i.kb, align 8, !tbaa !103, !noalias !164
  store i64 0, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  br label %.loopexit163.i

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.nq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.nv = trunc i32 %.pn1.i.i.i.i.i.i to i8
  %i.nw = sub nsw i32 %.sroa.625.0.sink.i.i11.i.i, %.pn1.i.i.i.i.i.i
  %i.nx = trunc i32 %i.nw to i8
  invoke fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_(ptr noundef nonnull align 1 dereferenceable(1) %.pn3.i.i.i.i.i.i, i8 noundef zeroext %i.nv, i8 noundef zeroext %i.nx)
          to label %.noexc127.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc127.i:                                      ; preds = %bb.cc
  %i.ny = load i64, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.nz = sub i64 %i.ny, %.0.i.i.i.i
  store i64 %i.nz, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.oa = invoke fastcc { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr nonnull %.pn3.i.i.i.i.i.i, i32 %.pn1.i.i.i.i.i.i)
          to label %.loopexit163.i unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.cd:                                            ; preds = %bb.cb
  %i.ob = sub i64 %i.nt, %.0.i.i.i.i              ; 2 uses
  %.not122.i.i.i = icmp ult i64 %i.nt, %.0.i.i.i.i
  br i1 %.not122.i.i.i, label %.loopexit163.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cd, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i
  %i.oc = phi i64 [ %i.sn, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i ], [ %i.nt, %bb.cd ]
  %.sroa.13.091.i.i.i = phi i32 [ %.sroa.13.1.i.i.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i ], [ %.pn1.i.i.i.i.i.i, %bb.cd ] ; 9 uses
  %.sroa.063.090.i.i.i = phi ptr [ %.sroa.063.1.i.i.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i ], [ %.pn3.i.i.i.i.i.i, %bb.cd ] ; 9 uses
  %i.od = getelementptr i8, ptr %.sroa.063.090.i.i.i, i64 11 ; 2 uses
  %.val34.i.i.i = load i8, ptr %i.od, align 1, !tbaa !15, !noalias !164
  %.not.i.i.i = icmp eq i8 %.val34.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i.i
  %i.oe = sub i64 %i.oc, %i.ob
  %i.of = getelementptr i8, ptr %.sroa.063.090.i.i.i, i64 10
  %.val.i.i121.i = load i8, ptr %i.of, align 1, !tbaa !15, !noalias !164
  %i.og = zext i8 %.val.i.i121.i to i32
  %i.oh = sub nsw i32 %i.og, %.sroa.13.091.i.i.i
  %i.oi = sext i32 %i.oh to i64
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.oe, i64 %i.oi) ; 2 uses
  %i.oj = trunc i64 %.sroa.speculated.i.i.i to i8
  %i.ok = trunc i32 %.sroa.13.091.i.i.i to i8
  invoke fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.063.090.i.i.i, i8 noundef zeroext %i.ok, i8 noundef zeroext %i.oj)
          to label %.noexc129.i unwind label %.loopexit.split-lp.loopexit.i

.noexc129.i:                                      ; preds = %bb.ce
  %i.ol = and i64 %.sroa.speculated.i.i.i, 255
  %i.om = load i64, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.on = sub i64 %i.om, %i.ol
  store i64 %i.on, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.oo = invoke fastcc { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr nonnull %.sroa.063.090.i.i.i, i32 %.sroa.13.091.i.i.i)
          to label %.noexc130.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc130.i:                                      ; preds = %.noexc129.i
  %.fca.0.extract4.i.i.i = extractvalue { ptr, i32 } %i.oo, 0
  %.fca.1.extract5.i.i.i = extractvalue { ptr, i32 } %i.oo, 1
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

bb.cf:                                            ; preds = %.lr.ph.i.i.i
  %i.op = trunc i32 %.sroa.13.091.i.i.i to i8
  %.mask.i.i.i.i = and i32 %.sroa.13.091.i.i.i, 255
  %i.oq = zext nneg i32 %.mask.i.i.i.i to i64     ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.063.090.i.i.i, i64 16 ; 4 uses
  %i.os = getelementptr inbounds nuw [40 x i8], ptr %i.or, i64 %i.oq ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !107, !noalias !164 ; 4 uses
  %.not.i.i.i.i.i8.i.i = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i.i.i8.i.i, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ov = getelementptr i8, ptr %i.ou, i64 16
  %.val.i.i4.i.i.i.i.i.i.i = load i64, ptr %i.ov, align 8, !tbaa !94, !noalias !164
  %i.ow = icmp eq i64 %.val.i.i4.i.i.i.i.i.i.i, 0
  br i1 %i.ow, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.val1.i.i5.i.i.i.i.i.i.i = load ptr, ptr %i.ou, align 8, !tbaa !87, !noalias !164
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i.i.i.i.i.i.i) #23, !noalias !164, !inline_history !172
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.ch, %bb.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef 24) #20, !noalias !164, !inline_history !172
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i.i.i.i, %bb.cf
  %i.ox = load ptr, ptr %i.os, align 8, !tbaa !33, !noalias !164 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 16 ; 2 uses
  %i.oz = icmp eq ptr %i.ox, %i.oy
  br i1 %i.oz, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.pa = load i64, ptr %i.oy, align 8, !tbaa !15, !noalias !164
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pb) #20, !noalias !164, !inline_history !173
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %.val9.i.i.i.i = load i8, ptr %i.od, align 1, !tbaa !15, !noalias !164
  %.not.i.i45.i.i.i = icmp eq i8 %.val9.i.i.i.i, 0 ; 2 uses
  br i1 %.not.i.i45.i.i.i, label %.thread.i.i.i.i.i.i, label %bb.ck

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.063.090.i.i.i, i64 256
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.oq
  %.11727.i.i.i.i.i.i.i = load ptr, ptr %i.pd, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %i.pe = getelementptr i8, ptr %.11727.i.i.i.i.i.i.i, i64 11
  %.117.val1928.i.i.i.i.i.i.i = load i8, ptr %i.pe, align 1, !tbaa !15, !noalias !164
  %.not.i29.i.i.i.i.i.i.i = icmp eq i8 %.117.val1928.i.i.i.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i

.lr.ph31.i.i.i.i.i.i.i:                           ; preds = %.thread.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i.i
  %.11730.i.i.i.i.i.i.i = phi ptr [ %.117.i.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i.i ], [ %.11727.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ] ; 2 uses
  %i.pf = getelementptr i8, ptr %.11730.i.i.i.i.i.i.i, i64 10
  %.117.val18.i.i.i.i.i.i.i = load i8, ptr %i.pf, align 1, !tbaa !15, !noalias !164
  %i.pg = getelementptr inbounds nuw i8, ptr %.11730.i.i.i.i.i.i.i, i64 256
  %i.ph = zext i8 %.117.val18.i.i.i.i.i.i.i to i64
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.ph
  %.117.i.i.i.i.i.i.i = load ptr, ptr %i.pi, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %i.pj = getelementptr i8, ptr %.117.i.i.i.i.i.i.i, i64 11
  %.117.val19.i.i.i.i.i.i.i = load i8, ptr %i.pj, align 1, !tbaa !15, !noalias !164
  %.not.i.i.i.i.i.i.i122.i = icmp eq i8 %.117.val19.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i122.i, label %.lr.ph31.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i, !llvm.loop !174

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i: ; preds = %.lr.ph31.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  %.117.lcssa.i.i.i.i.i.i.i = phi ptr [ %.11727.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.117.i.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i.i ] ; 4 uses
  %i.pk = getelementptr i8, ptr %.117.lcssa.i.i.i.i.i.i.i, i64 10
  %.117.val.i.i.i.i.i.i.i = load i8, ptr %i.pk, align 1, !tbaa !15, !noalias !164
  %i.pl = zext i8 %.117.val.i.i.i.i.i.i.i to i32
  %i.pm = add nsw i32 %i.pl, -1                   ; 3 uses
  %i.pn = sext i32 %.sroa.13.091.i.i.i to i64
  %i.po = sext i32 %i.pm to i64
  %i.pp = getelementptr inbounds nuw [40 x i8], ptr %i.or, i64 %i.pn ; 7 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i.i.i.i, i64 16
  %i.pr = getelementptr inbounds nuw [40 x i8], ptr %i.pq, i64 %i.po ; 5 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 16 ; 3 uses
  store ptr %i.ps, ptr %i.pp, align 8, !tbaa !39, !noalias !164
  %i.pt = load ptr, ptr %i.pr, align 8, !tbaa !33, !noalias !164 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !30, !noalias !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !164
  store i64 %i.pv, ptr %i.b, align 8, !tbaa !7, !noalias !164
  %i.pw = icmp ugt i64 %i.pv, 15
  br i1 %i.pw, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i
  %i.px = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.pp, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc131.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc131.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.px, ptr %i.pp, align 8, !tbaa !33, !noalias !164
  %i.py = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !164
  store i64 %i.py, ptr %i.ps, align 8, !tbaa !15, !noalias !164
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc131.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i
  %i.pz = phi ptr [ %i.px, %.noexc131.i ], [ %i.ps, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmmEv.exit.i.i.i.i ] ; 2 uses
  switch i64 %i.pv, label %bb.cj [
    i64 1, label %bb.ci
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  ]

bb.ci:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qa = load i8, ptr %i.pt, align 1, !tbaa !15, !noalias !164
  store i8 %i.qa, ptr %i.pz, align 1, !tbaa !15, !noalias !164
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pz, ptr align 1 %i.pt, i64 %i.pv, i1 false), !noalias !164
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cj, %bb.ci, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qb = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !164 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store i64 %i.qb, ptr %i.qc, align 8, !tbaa !30, !noalias !164
  %i.qd = load ptr, ptr %i.pp, align 8, !tbaa !33, !noalias !164
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qb
  store i8 0, ptr %i.qe, align 1, !tbaa !15, !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !164
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pr, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.qg, align 8, !tbaa !107, !noalias !164
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.qf, align 8, !tbaa !107, !noalias !164
  store ptr null, ptr %i.qg, align 8, !tbaa !107, !noalias !164
  %i.qh = load ptr, ptr %i.pr, align 8, !tbaa !33, !noalias !164 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  %i.qj = icmp eq ptr %i.qh, %i.qi
  br i1 %i.qj, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.qk = load i64, ptr %i.qi, align 8, !tbaa !15, !noalias !164
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.ql) #20, !noalias !164, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i

bb.ck:                                            ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit.i.i.i.i
  %i.qm = add i8 %i.op, 1                         ; 3 uses
  %i.qn = getelementptr i8, ptr %.sroa.063.090.i.i.i, i64 10
  %.val8.i.i.i.i = load i8, ptr %i.qn, align 1, !tbaa !15, !noalias !164 ; 2 uses
  %i.qo = sub i8 %.val8.i.i.i.i, %i.qm
  %i.qp = zext i8 %i.qo to i64
  %i.qq = zext i8 %i.qm to i64
  %i.qr = getelementptr inbounds nuw [40 x i8], ptr %i.or, i64 %i.qq ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.qp, 40
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %.idx.i.i.i.i.i
  %.not1.i.i.i.i.i = icmp eq i8 %.val8.i.i.i.i, %i.qm
  br i1 %.not1.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.ck
  %i.qt = sext i32 %.sroa.13.091.i.i.i to i64
  %i.qu = getelementptr inbounds nuw [40 x i8], ptr %i.or, i64 %i.qt
  br label %.lr.ph.i.i46.i.i.i

.lr.ph.i.i46.i.i.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.rq, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i ], [ %i.qu, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %.0122.i.i.i.i.i = phi ptr [ %i.rp, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i ], [ %i.qr, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.qv, ptr %.03.i.i.i.i.i, align 8, !tbaa !39, !noalias !164
  %i.qw = load ptr, ptr %.0122.i.i.i.i.i, align 8, !tbaa !33, !noalias !164 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i, i64 8
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !30, !noalias !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !164
  store i64 %i.qy, ptr %i.a, align 8, !tbaa !7, !noalias !164
  %i.qz = icmp ugt i64 %i.qy, 15
  br i1 %i.qz, label %.noexc.i.i.i.i.i.i.i18.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i

.noexc.i.i.i.i.i.i.i18.i.i.i.i:                   ; preds = %.lr.ph.i.i46.i.i.i
  %i.ra = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc132.i unwind label %.loopexit.i ; 2 uses

.noexc132.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i18.i.i.i.i
  store ptr %i.ra, ptr %.03.i.i.i.i.i, align 8, !tbaa !33, !noalias !164
  %i.rb = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !164
  store i64 %i.rb, ptr %i.qv, align 8, !tbaa !15, !noalias !164
  br label %._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i:            ; preds = %.noexc132.i, %.lr.ph.i.i46.i.i.i
  %i.rc = phi ptr [ %i.ra, %.noexc132.i ], [ %i.qv, %.lr.ph.i.i46.i.i.i ] ; 2 uses
  switch i64 %i.qy, label %bb.cm [
    i64 1, label %bb.cl
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i
  ]

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i
  %i.rd = load i8, ptr %i.qw, align 1, !tbaa !15, !noalias !164
  store i8 %i.rd, ptr %i.rc, align 1, !tbaa !15, !noalias !164
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i

bb.cm:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rc, ptr align 1 %i.qw, i64 %i.qy, i1 false), !noalias !164
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i: ; preds = %bb.cm, %bb.cl, %._crit_edge.i.i.i.i.i.i.i.i12.i.i.i.i
  %i.re = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !164 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8
  store i64 %i.re, ptr %i.rf, align 8, !tbaa !30, !noalias !164
  %i.rg = load ptr, ptr %.03.i.i.i.i.i, align 8, !tbaa !33, !noalias !164
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.re
  store i8 0, ptr %i.rh, align 1, !tbaa !15, !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !164
  %i.ri = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32
  %i.rj = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i14.i.i.i.i = load i64, ptr %i.rj, align 8, !tbaa !107, !noalias !164
  store i64 %.val.i.i.i.i.i.i.i.i.i14.i.i.i.i, ptr %i.ri, align 8, !tbaa !107, !noalias !164
  store ptr null, ptr %i.rj, align 8, !tbaa !107, !noalias !164
  %i.rk = load ptr, ptr %.0122.i.i.i.i.i, align 8, !tbaa !33, !noalias !164 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i, i64 16 ; 2 uses
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i15.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i15.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i
  %i.rn = load i64, ptr %i.rl, align 8, !tbaa !15, !noalias !164
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.ro) #20, !noalias !164, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i13.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i15.i.i.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i, i64 40 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 40
  %.not.i16.i.i.i.i = icmp eq ptr %i.rp, %i.qs
  br i1 %.not.i16.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i, label %.lr.ph.i.i46.i.i.i, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i, %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi i32 [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pm, %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.091.i.i.i, %bb.ck ], [ %.sroa.13.091.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %.117.lcssa.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.117.lcssa.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.063.090.i.i.i, %bb.ck ], [ %.sroa.063.090.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i ] ; 2 uses
  %i.rr = getelementptr i8, ptr %.sroa.0.0.i.i.i.i, i64 10 ; 2 uses
  %.val.i47.i.i.i = load i8, ptr %i.rr, align 1, !tbaa !15, !noalias !164
  %i.rs = add i8 %.val.i47.i.i.i, -1
  store i8 %i.rs, ptr %i.rr, align 1, !tbaa !15, !noalias !164
  %i.rt = load i64, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.ru = add i64 %i.rt, -1
  store i64 %i.ru, ptr %i.ns, align 8, !tbaa !94, !noalias !164
  %i.rv = invoke fastcc { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr nonnull %.sroa.0.0.i.i.i.i, i32 %.sroa.10.0.i.i.i.i)
          to label %.noexc133.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc133.i:                                      ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i32 } %i.rv, 0 ; 7 uses
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i32 } %i.rv, 1 ; 3 uses
  br i1 %.not.i.i45.i.i.i, label %bb.cn, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

bb.cn:                                            ; preds = %.noexc133.i
  %i.rw = getelementptr i8, ptr %.fca.0.extract.i.i.i.i, i64 11
  %.val1.i.i.i.i.i.i = load i8, ptr %i.rw, align 1, !tbaa !15, !noalias !164
  %.not.i.i19.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i.i19.i.i.i.i, label %.thread.i.i27.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rx = add nsw i32 %.fca.1.extract.i.i.i.i, 1  ; 3 uses
  %i.ry = getelementptr i8, ptr %.fca.0.extract.i.i.i.i, i64 10
  %.val.i.i20.i.i.i.i = load i8, ptr %i.ry, align 1, !tbaa !15, !noalias !164
  %i.rz = zext i8 %.val.i.i20.i.i.i.i to i32
  %i.sa = icmp eq i32 %i.rx, %i.rz
  br i1 %i.sa, label %.lr.ph.i.i.i25.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

.lr.ph.i.i.i25.i.i.i.i:                           ; preds = %bb.co, %bb.cp
  %.01527.i.i.i.i.i.i.i = phi ptr [ %.015.val19.i.i.i.i.i.i.i, %bb.cp ], [ %.fca.0.extract.i.i.i.i, %bb.co ] ; 2 uses
  %.015.val19.i.i.i.i.i.i.i = load ptr, ptr %.01527.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !164 ; 4 uses
  %i.sb = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i, i64 11
  %.015.val19.val.i.i.i.i.i.i.i = load i8, ptr %i.sb, align 1, !tbaa !15, !noalias !164
  %.not22.i.i.i26.i.i.i.i = icmp eq i8 %.015.val19.val.i.i.i.i.i.i.i, 0
  br i1 %.not22.i.i.i26.i.i.i.i, label %bb.cp, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

bb.cp:                                            ; preds = %.lr.ph.i.i.i25.i.i.i.i
  %i.sc = getelementptr i8, ptr %.01527.i.i.i.i.i.i.i, i64 8
  %.015.val20.i.i.i.i.i.i.i = load i8, ptr %i.sc, align 8, !tbaa !15, !noalias !164 ; 2 uses
  %i.sd = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i, i64 10
  %.015.val17.i.i.i.i.i.i.i = load i8, ptr %i.sd, align 1, !tbaa !15, !noalias !164
  %i.se = icmp eq i8 %.015.val20.i.i.i.i.i.i.i, %.015.val17.i.i.i.i.i.i.i
  br i1 %i.se, label %.lr.ph.i.i.i25.i.i.i.i, label %.critedge.loopexit29.i.i.i.i.i.i.i, !llvm.loop !162

.thread.i.i27.i.i.i.i:                            ; preds = %bb.cn
  %i.sf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 256
  %i.sg = add i32 %.fca.1.extract.i.i.i.i, 1
  %i.sh = and i32 %i.sg, 255
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.si
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %.thread.i.i27.i.i.i.i
  %.116.in.i.i.i.i.i.i.i = phi ptr [ %i.sj, %.thread.i.i27.i.i.i.i ], [ %i.sl, %bb.cq ]
  %.116.i.i.i.i.i.i.i = load ptr, ptr %.116.in.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !164 ; 3 uses
  %i.sk = getelementptr i8, ptr %.116.i.i.i.i.i.i.i, i64 11
  %.116.val.i.i.i.i.i.i.i = load i8, ptr %i.sk, align 1, !tbaa !15, !noalias !164
  %.not.i.i.i.i28.i.i.i.i = icmp eq i8 %.116.val.i.i.i.i.i.i.i, 0
  %i.sl = getelementptr i8, ptr %.116.i.i.i.i.i.i.i, i64 256
  br i1 %.not.i.i.i.i28.i.i.i.i, label %bb.cq, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i, !llvm.loop !163

.critedge.loopexit29.i.i.i.i.i.i.i:               ; preds = %bb.cp
  %i.sm = zext i8 %.015.val20.i.i.i.i.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i: ; preds = %.lr.ph.i.i.i25.i.i.i.i, %bb.cq, %.critedge.loopexit29.i.i.i.i.i.i.i, %bb.co, %.noexc133.i, %.noexc130.i
  %.sroa.063.1.i.i.i = phi ptr [ %.fca.0.extract4.i.i.i, %.noexc130.i ], [ %.fca.0.extract.i.i.i.i, %.noexc133.i ], [ %.116.i.i.i.i.i.i.i, %bb.cq ], [ %.fca.0.extract.i.i.i.i, %bb.co ], [ %.015.val19.i.i.i.i.i.i.i, %.critedge.loopexit29.i.i.i.i.i.i.i ], [ %.fca.0.extract.i.i.i.i, %.lr.ph.i.i.i25.i.i.i.i ]
  %.sroa.13.1.i.i.i = phi i32 [ %.fca.1.extract5.i.i.i, %.noexc130.i ], [ %.fca.1.extract.i.i.i.i, %.noexc133.i ], [ 0, %bb.cq ], [ %i.rx, %bb.co ], [ %i.sm, %.critedge.loopexit29.i.i.i.i.i.i.i ], [ %i.rx, %.lr.ph.i.i.i25.i.i.i.i ]
  %i.sn = load i64, ptr %i.ns, align 8, !tbaa !94, !noalias !164 ; 2 uses
  %i.so = icmp ugt i64 %i.sn, %i.ob
  br i1 %i.so, label %.lr.ph.i.i.i, label %.loopexit163.i, !llvm.loop !175

.loopexit163.i:                                   ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i, %bb.cd, %.noexc127.i, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5clearEv.exit.i.i.i, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i, %bb.bs
  %i.sp = load ptr, ptr %i.ka, align 8, !tbaa !107
  %i.sq = getelementptr i8, ptr %i.sp, i64 16
  %.val.i = load i64, ptr %i.sq, align 8, !tbaa !94
  %i.sr = icmp eq i64 %.val.i, 0
  br i1 %i.sr, label %bb.bc, label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i, !llvm.loop !176

.loopexit.i:                                      ; preds = %.noexc.i.i.i.i.i.i.i18.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.noexc129.i, %bb.ce
  %lpad.loopexit160.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.noexc127.i, %bb.cc
  %lpad.loopexit.split-lp161.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i: ; preds = %bb.ax, %.loopexit163.i, %bb.bc, %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv.exit.i, %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bi) #20
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !21
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i, %.noexc22
  %i.ss = phi ptr [ %.pr.i, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i ], [ %i.ba, %.noexc22 ] ; 3 uses
  %.not.i.i.i135.i = icmp eq ptr %i.ss, null
  br i1 %.not.i.i.i135.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i
  %i.st = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.su = ptrtoint ptr %i.st to i64
  %i.sv = ptrtoint ptr %i.ss to i64
  %i.sw = sub i64 %i.su, %i.sv
  call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef %i.sw) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i: ; preds = %bb.cr, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !34
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree10RemovePathESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorE.exit

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %bb.ay, %bb.ap, %.thread153.i
  %.pn78156.i = phi { ptr, i32 } [ %i.cg, %.thread153.i ], [ %.pn72.i, %bb.ap ], [ %i.jg, %bb.ay ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit160.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp161.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bi) #20
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit137.i

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit137.i: ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp.i
  %.pn78.pn.i = phi { ptr, i32 } [ %.pn78156.i, %.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.sx = load ptr, ptr %6, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i138.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i138.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit139.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit137.i
  %i.sy = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = ptrtoint ptr %i.sx to i64
  %i.tb = sub i64 %i.sz, %i.ta
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef %i.tb) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit139.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit139.i: ; preds = %bb.cs, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit137.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree10RemovePathESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorE.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i, %.lr.ph.split
  %i.tc = phi i32 [ %.pre, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i ], [ %i.am, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.td = sext i32 %i.tc to i64
  %i.te = icmp slt i64 %indvars.iv.next, %i.td
  br i1 %i.te, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !177

bb.ct:                                            ; preds = %._crit_edge
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPNS0_9FieldMaskE(i64 0, ptr nonnull @.str.7, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, ptr noundef nonnull %3)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit unwind label %.loopexit.split-lp30

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit: ; preds = %bb.ct
  %.val17 = load i64, ptr %i.k, align 8, !tbaa !94
  %i.tf = icmp eq i64 %.val17, 0
  br i1 %i.tf, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit
  %.val16 = load ptr, ptr %9, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val16), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit: ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE.exit, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, %bb.b
  ret void

.body:                                            ; preds = %.loopexit29, %.loopexit.split-lp30, %bb.d, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit139.i
  %.pn = phi { ptr, i32 } [ %.pn78.pn.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit139.i ], [ %i.al, %bb.d ], [ %lpad.loopexit31, %.loopexit29 ], [ %lpad.loopexit.split-lp32, %.loopexit.split-lp30 ]
  %.val15 = load i64, ptr %i.k, align 8, !tbaa !94
  %i.tg = icmp eq i64 %.val15, 0
  br i1 %i.tg, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24, label %bb.cw

bb.cw:                                            ; preds = %.body
  %.val = load ptr, ptr %9, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit24: ; preds = %.body, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil17IsPathInFieldMaskESt17basic_string_viewIcSt11char_traitsIcEERKNS0_9FieldMaskE(i64 %0, ptr nofree readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.fr74 = freeze i64 %0                          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf4util13FieldMaskUtil11TrimMessageERKNS0_9FieldMaskEPNS0_7MessageERKNS2_11TrimOptionsE:bb.a

_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit: ; preds = %bb.f, %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree20AddRequiredFieldPathEPKNS0_10DescriptorE.exit
  %.val.i12.pr = load i64, ptr %i.b, align 8, !tbaa !94
  %i.ad = icmp eq i64 %.val.i12.pr, 0
  br i1 %i.ad, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit
  %i.ae = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree11TrimMessageEPKNS3_4NodeEPNS0_7MessageE(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef %1)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %.val6 = load ptr, ptr %3, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val6), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit: ; preds = %_ZN4absl12lts_2025051212log_internal9DieIfNullIPKN6google8protobuf10DescriptorEEET_PKciSA_OS8_.exit, %_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit, %bb.j
  %.0.i20 = phi i1 [ %i.ae, %bb.j ], [ false, %_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit ], [ false, %_ZN4absl12lts_2025051212log_internal9DieIfNullIPKN6google8protobuf10DescriptorEEET_PKciSA_OS8_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i1 %.0.i20

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val5 = load i64, ptr %i.b, align 8, !tbaa !94
  %i.af = icmp eq i64 %.val5, 0
  br i1 %i.af, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val = load ptr, ptr %3, align 8
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val), !inline_history !96
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit14

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit14: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree7AddPathESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, i64 %1, ptr %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %1, ptr %5, align 8, !tbaa !7, !alias.scope !186
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !12, !alias.scope !186
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 46, ptr %i.a, align 8, !tbaa !15, !alias.scope !186
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !189
  call void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(18) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !189
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.b = load ptr, ptr %4, align 8, !tbaa !19     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.k
  %.02558 = phi i1 [ %.126, %bb.k ], [ false, %bb.a ] ; 2 uses
  %.02857 = phi ptr [ %.val, %bb.k ], [ %0, %bb.a ] ; 3 uses
  %.sroa.042.056 = phi ptr [ %i.q, %bb.k ], [ %i.b, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.042.056, i64 16, i1 false), !tbaa.struct !192
  %i.f = icmp eq ptr %.02857, %0
  %or.cond.not = select i1 %.02558, i1 true, i1 %i.f
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.g = getelementptr i8, ptr %.02857, i64 16
  %.028.val = load i64, ptr %i.g, align 8, !tbaa !94
  %i.h = icmp eq i64 %.028.val, 0
  br i1 %i.h, label %.thread51, label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.i = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEEixIRSt17basic_string_viewIcS8_ELi0EEERSK_OT_(ptr noundef nonnull align 8 dereferenceable(24) %.02857, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.d unwind label %bb.i       ; 4 uses

bb.d:                                             ; preds = %bb.c
  %.val36 = load ptr, ptr %i.i, align 8, !tbaa !107 ; 2 uses
  %.not.i = icmp eq ptr %.val36, null
  br i1 %.not.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.f unwind label %bb.j       ; 4 uses

bb.f:                                             ; preds = %bb.e
  store <2 x ptr> <ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11>, ptr %i.j, align 8, !tbaa !103, !noalias !193
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.k, align 8, !tbaa !94, !noalias !193
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !107  ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !107
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !94
  %i.n = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.n, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !87
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i.i.i.i.i.i.i), !inline_history !140
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 24) #20, !inline_history !141
  %.val.pre = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.thread51:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %thread-pre-split

bb.k:                                             ; preds = %bb.d, %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i, %bb.f
  %.val = phi ptr [ %.val36, %bb.d ], [ %.val.pre, %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i ], [ %i.j, %bb.f ] ; 5 uses
  %.126 = phi i1 [ %.02558, %bb.d ], [ true, %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i.i ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.042.056, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.d
  br i1 %.not, label %bb.m, label %.preheader

bb.l:                                             ; preds = %bb.i, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.p, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.r = load ptr, ptr %4, align 8, !tbaa !21     ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit39, label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %.230.val = load i64, ptr %i.s, align 8, !tbaa !94
  %i.t = icmp eq i64 %.230.val, 0
  br i1 %i.t, label %thread-pre-split, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv.exit

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv.exit: ; preds = %bb.m
  %.val1.i.i.i = load ptr, ptr %.val, align 8, !tbaa !87
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i.i), !inline_history !117
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.u, align 8, !tbaa !103
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %.val, align 8, !tbaa !103
  store i64 0, ptr %i.s, align 8, !tbaa !94
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.m, %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv.exit, %.thread51
  %.pr = load ptr, ptr %4, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %thread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %thread-pre-split ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.p:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.r to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.af) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit39

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit39: ; preds = %bb.l, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEEixIRSt17basic_string_viewIcS8_ELi0EEERSK_OT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val.i.i.i = load i64, ptr %i.d, align 8, !tbaa !94, !noalias !196
  %i.e = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22, !noalias !196 ; 5 uses
  store ptr %i.f, ptr %i.f, align 8, !tbaa !103, !noalias !196
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.g, align 8, !tbaa !15, !noalias !196
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.h, align 8, !tbaa !103, !noalias !196
  store ptr %i.f, ptr %0, align 8, !tbaa !103, !noalias !196
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val8.i.i.i = load i64, ptr %1, align 8, !noalias !196 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val9.i.i.i = load ptr, ptr %i.i, align 8, !noalias !196
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.sroa.03.0.i.in.i.i.i = phi ptr [ %0, %bb.c ], [ %i.ab, %bb.i ]
  %.sroa.03.0.i.i.i.i = load ptr, ptr %.sroa.03.0.i.in.i.i.i, align 8, !tbaa !103, !noalias !196 ; 10 uses
  %i.j = getelementptr i8, ptr %.sroa.03.0.i.i.i.i, i64 10
  %.val.i.i.i.i.i.i = load i8, ptr %i.j, align 1, !tbaa !15, !noalias !203 ; 5 uses
  %.not6.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.k = zext i8 %.val.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %.0198.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.0207.i.i.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i.i.i ], [ %.222.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.m = add i64 %.0207.i.i.i.i.i.i.i, %.0198.i.i.i.i.i.i.i
  %i.n = lshr i64 %i.m, 1                         ; 4 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30, !noalias !203 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val8.i.i.i, i64 %i.q) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !33, !noalias !203
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef readonly %.val9.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #19, !noalias !203 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.e
  %i.v = sub i64 %i.q, %.val8.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.w = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i
  %i.x = add nuw i64 %i.n, 1
  br label %bb.h

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.222.i.i.i.i.i.i.i = phi i64 [ %.0207.i.i.i.i.i.i.i, %bb.f ], [ %i.n, %bb.g ] ; 3 uses
  %.2.i.i.i.i.i.i.i = phi i64 [ %i.x, %bb.f ], [ %.0198.i.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i, %.222.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.e

.loopexit.i.i.i.i:                                ; preds = %bb.h, %bb.d
  %.sroa.018.2.i.i.i.ph.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.222.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.y = getelementptr i8, ptr %.sroa.03.0.i.i.i.i, i64 11
  %.val4.i.i.i.i = load i8, ptr %i.y, align 1, !tbaa !15, !noalias !203 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.val4.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %.loopexit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 256
  %i.aa = and i64 %.sroa.018.2.i.i.i.ph.i.i.i.i, 255
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  br label %bb.d

bb.j:                                             ; preds = %bb.g
  %.pre = and i64 %i.n, 255
  br label %_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11try_emplaceISt17basic_string_viewIcS8_ELi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_14btree_iteratorIKNS1_10btree_nodeISR_EERKSP_PS13_EEEE5valueEiE4typeELi0EEEDcRKSY_DpOT1_.exit

._crit_edge.i.i.i.i:                              ; preds = %.loopexit.i.i.i.i
  %i.ac = getelementptr i8, ptr %.sroa.03.0.i.i.i.i, i64 10 ; 3 uses
  %i.ad = trunc i64 %.sroa.018.2.i.i.i.ph.i.i.i.i to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !196
  store ptr %.sroa.03.0.i.i.i.i, ptr %2, align 8, !noalias !196
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 8, !noalias !196
  %i.af = icmp eq i8 %.val.i.i.i.i.i.i, %.val4.i.i.i.i
  br i1 %i.af, label %bb.k, label %bb.p

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = icmp ult i8 %.val.i.i.i.i.i.i, 6
  br i1 %i.ag, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ah = shl nuw nsw i8 %.val.i.i.i.i.i.i, 1
  %i.ai = tail call i8 @llvm.umin.i8(i8 %i.ah, i8 6) ; 2 uses
  %narrow.i.i.i.i = mul nuw i8 %i.ai, 40
  %i.aj = zext i8 %narrow.i.i.i.i to i64
  %i.ak = add nuw nsw i64 %i.aj, 16
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #22, !noalias !196 ; 10 uses
  store ptr %i.al, ptr %i.al, align 8, !tbaa !103, !noalias !196
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i8 0, ptr %i.am, align 8, !tbaa !15, !noalias !196
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  store i8 0, ptr %i.an, align 1, !tbaa !15, !noalias !196
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 10 ; 2 uses
  store i8 0, ptr %i.ao, align 2, !tbaa !15, !noalias !196
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 11
  store i8 %i.ai, ptr %i.ap, align 1, !tbaa !15, !noalias !196
  %.val13.i.i.i.i.i.i = load i8, ptr %i.ac, align 1, !tbaa !15, !noalias !196 ; 2 uses
  %i.aq = zext i8 %.val13.i.i.i.i.i.i to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.aq, 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq i8 %.val13.i.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  br label %.lr.ph.i.i.i11.i.i.i.i

.lr.ph.i.i.i11.i.i.i.i:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.bp, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 8 uses
  %.0122.i.i.i.i.i.i.i = phi ptr [ %i.bo, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.au, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !39, !noalias !196
  %i.av = load ptr, ptr %.0122.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !196 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !30, !noalias !196 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !196
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !7, !noalias !196
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i11.i.i.i.i
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0), !noalias !196 ; 2 uses
  store ptr %i.az, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !196
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !7, !noalias !196
  store i64 %i.ba, ptr %i.au, align 8, !tbaa !15, !noalias !196
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i11.i.i.i.i
  %i.bb = phi ptr [ %i.az, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.au, %.lr.ph.i.i.i11.i.i.i.i ] ; 2 uses
  switch i64 %i.ax, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = load i8, ptr %i.av, align 1, !tbaa !15, !noalias !196
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !15, !noalias !196
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.av, i64 %i.ax, i1 false), !noalias !196
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !7, !noalias !196 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !30, !noalias !196
  %i.bf = load ptr, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !196
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !15, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !196
  %i.bh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !tbaa !107, !noalias !196
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bh, align 8, !tbaa !107, !noalias !196
  store ptr null, ptr %i.bi, align 8, !tbaa !107, !noalias !196
  %i.bj = load ptr, ptr %.0122.i.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !196 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !15, !noalias !196
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #20, !noalias !196, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 40
  %.not.i.i.i12.i.i.i.i = icmp eq ptr %i.bo, %i.as
  br i1 %.not.i.i.i12.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i11.i.i.i.i, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i.i
  %.val.pre.i.i.i.i.i.i = load i8, ptr %i.ac, align 1, !tbaa !15, !noalias !196
  br label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i, %bb.l
  %.val.i.i13.i.i.i.i = phi i8 [ %.val.pre.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit.i.i.i.i.i.i ], [ 0, %bb.l ]
  store i8 %.val.i.i13.i.i.i.i, ptr %i.ao, align 2, !tbaa !15, !noalias !196
  store i8 0, ptr %i.ac, align 1, !tbaa !15, !noalias !196
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef nonnull %.sroa.03.0.i.i.i.i), !noalias !196
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.bq, align 8, !tbaa !103, !noalias !196
  store ptr %i.al, ptr %0, align 8, !tbaa !103, !noalias !196
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2), !noalias !196
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !133, !noalias !196
  %.pre20.i.i.i = load i32, ptr %i.ae, align 8, !tbaa !135, !noalias !196
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %i.br = phi i32 [ %.pre20.i.i.i, %bb.o ], [ %i.ad, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i ], [ %i.ad, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bs = phi ptr [ %.pre.i.i.i, %bb.o ], [ %i.al, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_ENKUlhE_clEh.exit.i.i.i.i ], [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i ] ; 6 uses
  %i.bt = trunc i32 %i.br to i8                   ; 2 uses
  %i.bu = and i32 %i.br, 255                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bs, i64 10     ; 3 uses
  %.val23.i.i.i.i.i = load i8, ptr %i.bv, align 1, !tbaa !15, !noalias !196 ; 2 uses
  %i.bw = icmp ugt i8 %.val23.i.i.i.i.i, %i.bt
  %i.bx = zext nneg i32 %i.bu to i64              ; 3 uses
  br i1 %i.bw, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bz = getelementptr [40 x i8], ptr %i.by, i64 %i.bx ; 3 uses
  %narrow.i.i.i.i.i = sub nuw i8 %.val23.i.i.i.i.i, %i.bt
  %i.ca = zext i8 %narrow.i.i.i.i.i to i64        ; 2 uses
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %i.ca, 40
  %i.cb = getelementptr i8, ptr %i.bz, i64 40
  %i.cc = getelementptr [40 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = getelementptr i8, ptr %i.bz, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.ce, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i ], [ %i.cc, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.0142.i.i.i.i.i.i = phi ptr [ %i.cf, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i ], [ %i.cd, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i, i64 -40 ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i, i64 -40 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i, i64 -24 ; 3 uses
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !39, !noalias !196
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !33, !noalias !196 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i, i64 -32
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !30, !noalias !196 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !196
  store i64 %i.cj, ptr %i.b, align 8, !tbaa !7, !noalias !196
  %i.ck = icmp ugt i64 %i.cj, 15
  br i1 %i.ck, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0), !noalias !196 ; 2 uses
  store ptr %i.cl, ptr %i.ce, align 8, !tbaa !33, !noalias !196
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !196
  store i64 %i.cm, ptr %i.cg, align 8, !tbaa !15, !noalias !196
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cn = phi ptr [ %i.cl, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.cj, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = load i8, ptr %i.ch, align 1, !tbaa !15, !noalias !196
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !15, !noalias !196
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.ch, i64 %i.cj, i1 false), !noalias !196
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !7, !noalias !196 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i, i64 -32
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !30, !noalias !196
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !33, !noalias !196
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 0, ptr %i.cs, align 1, !tbaa !15, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !196
  %i.ct = getelementptr inbounds i8, ptr %.03.i.i.i.i.i.i, i64 -8
  %i.cu = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8, !tbaa !107, !noalias !196
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ct, align 8, !tbaa !107, !noalias !196
  store ptr null, ptr %i.cu, align 8, !tbaa !107, !noalias !196
  %i.cv = load ptr, ptr %i.cf, align 8, !tbaa !33, !noalias !196 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.0142.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !15, !noalias !196
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #20, !noalias !196, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i16.i.i.i.i = icmp eq ptr %i.cf, %i.bz
  br i1 %.not.i.i16.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !136

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i.i, %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %i.da, i64 %i.bx ; 7 uses
  %.val.val.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !7, !noalias !196 ; 5 uses
  %.val.val6.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !12, !noalias !196 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !39, !noalias !196
  %i.dd = icmp eq ptr %.val.val6.i.i.i.i.i.i.i.i, null
  %i.de = icmp ne i64 %.val.val.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.de, %i.dd
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %bb.s

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i.i.i.i.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #21, !noalias !196
  unreachable

bb.s:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !196
  store i64 %.val.val.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !7, !noalias !196
  %i.df = icmp ugt i64 %.val.val.i.i.i.i.i.i.i.i, 15
  br i1 %i.df, label %.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i:               ; preds = %bb.s
  %i.dg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0), !noalias !196 ; 2 uses
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !33, !noalias !196
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !196
  store i64 %i.dh, ptr %i.dc, align 8, !tbaa !15, !noalias !196
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i:        ; preds = %.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i, %bb.s
  %i.di = phi ptr [ %i.dg, %.noexc.i.i.i.i.i.i.i.i.i15.i.i.i.i ], [ %i.dc, %bb.s ] ; 2 uses
  switch i64 %.val.val.i.i.i.i.i.i.i.i, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i
  %i.dj = load i8, ptr %.val.val6.i.i.i.i.i.i.i.i, align 1, !tbaa !15, !noalias !196
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !15, !noalias !196
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr readonly align 1 %.val.val6.i.i.i.i.i.i.i.i, i64 %.val.val.i.i.i.i.i.i.i.i, i1 false), !noalias !196
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i.i.i.i.i.i.i.i14.i.i.i.i
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !196 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !30, !noalias !196
  %i.dm = load ptr, ptr %i.db, align 8, !tbaa !33, !noalias !196
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk
  store i8 0, ptr %i.dn, align 1, !tbaa !15, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !196
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store ptr null, ptr %i.do, align 8, !tbaa !137, !noalias !196
  %.val21.i.i.i.i.i = load i8, ptr %i.bv, align 1, !tbaa !15, !noalias !196
  %i.dp = add i8 %.val21.i.i.i.i.i, 1             ; 3 uses
  store i8 %i.dp, ptr %i.bv, align 1, !tbaa !15, !noalias !196
  %i.dq = getelementptr i8, ptr %i.bs, i64 11
  %.val24.i.i.i.i.i = load i8, ptr %i.dq, align 1, !tbaa !15, !noalias !196
  %.not.i26.i.i.i.i.i = icmp eq i8 %.val24.i.i.i.i.i, 0
  br i1 %.not.i26.i.i.i.i.i, label %bb.v, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i

bb.v:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i
  %i.dr = zext i8 %i.dp to i32
  %i.ds = add nuw nsw i32 %i.bu, 1                ; 2 uses
  %i.dt = icmp samesign ult i32 %i.ds, %i.dr
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %i.bs, i64 256 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i.i
  %.01.i.i.i.i.i = phi i8 [ %i.dp, %.lr.ph.i.i.i.i.i ], [ %i.dv, %bb.w ] ; 3 uses
  %i.dv = add i8 %.01.i.i.i.i.i, -1               ; 3 uses
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !103, !noalias !196 ; 2 uses
  %i.dz = zext i8 %.01.i.i.i.i.i to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dz
  store ptr %i.dy, ptr %i.ea, align 8, !tbaa !103, !noalias !196
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i8 %.01.i.i.i.i.i, ptr %i.eb, align 1, !tbaa !15, !noalias !196
  %i.ec = zext i8 %i.dv to i32
  %i.ed = icmp samesign ult i32 %i.ds, %i.ec
  br i1 %i.ed, label %bb.w, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i, !llvm.loop !206

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i: ; preds = %bb.w, %bb.v, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEEvhPSP_DpOT_.exit.i.i.i.i.i
  %i.ee = load i64, ptr %i.d, align 8, !tbaa !94, !noalias !196
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.d, align 8, !tbaa !94, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !196
  br label %_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11try_emplaceISt17basic_string_viewIcS8_ELi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_14btree_iteratorIKNS1_10btree_nodeISR_EERKSP_PS13_EEEE5valueEiE4typeELi0EEEDcRKSY_DpOT1_.exit

_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11try_emplaceISt17basic_string_viewIcS8_ELi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_14btree_iteratorIKNS1_10btree_nodeISR_EERKSP_PS13_EEEE5valueEiE4typeELi0EEEDcRKSY_DpOT1_.exit: ; preds = %bb.j, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i
  %.pre-phi14 = phi i64 [ %.pre, %bb.j ], [ %i.bx, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i ]
  %.sroa.0.0.copyload.i.sink.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %bb.j ], [ %i.bs, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESW_IJEEEEENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES18_DpOT_.exit.i.i.i ]
  %i.eg = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.sink.i.i.i, i64 %.pre-phi14
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  ret ptr %i.eh
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val.i.i4 = load i64, ptr %i.b, align 8, !tbaa !94
  %i.c = icmp eq i64 %.val.i.i4, 0
  br i1 %i.c, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i5 = load ptr, ptr %i.a, align 8, !tbaa !87
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5)
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #20, !inline_history !207
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !103    ; 10 uses
  %.val98 = load ptr, ptr %i.b, align 8, !tbaa !103 ; 6 uses
  %.val117 = load ptr, ptr %0, align 8, !tbaa !87
  %.not = icmp eq ptr %i.b, %.val117
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val105 = load i8, ptr %i.c, align 8, !tbaa !15 ; 5 uses
  %.not84 = icmp eq i8 %.val105, 0
  br i1 %.not84, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val105, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val98, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 2 uses
  %.val115 = load i8, ptr %i.i, align 1, !tbaa !15 ; 3 uses
  %i.j = icmp ult i8 %.val115, 6
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 6, %.val115
  %i.k = load i32, ptr %i.a, align 8, !tbaa !3    ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 6
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n
  %.sroa.speculated126 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 3 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated126 to i32 ; 2 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow139 = add nuw nsw i8 %.sroa.speculated126, %.val115
  %i.r = icmp samesign ult i8 %narrow139, 6
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i8 noundef zeroext %.sroa.speculated126, ptr noundef nonnull %i.b)
  %i.s = load i32, ptr %i.a, align 8, !tbaa !3
  %i.t = and i32 %i.s, 255
  %i.u = sub nsw i32 %i.t, %i.q                   ; 3 uses
  store i32 %i.u, ptr %i.a, align 8, !tbaa !3
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %.val112 = load i8, ptr %i.i, align 1, !tbaa !15
  %i.w = zext i8 %.val112 to i32
  %i.x = add nsw i32 %i.u, 1
  %i.y = add nsw i32 %i.x, %i.w
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.z = getelementptr i8, ptr %.val98, i64 10
  %.val95 = load i8, ptr %i.z, align 1, !tbaa !15 ; 2 uses
  %i.aa = icmp ult i8 %.val105, %.val95
  br i1 %i.aa, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ab = add nuw i8 %.val105, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.val98, i64 256
  %i.ad = zext i8 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !103 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 10
  %.val111 = load i8, ptr %i.ag, align 1, !tbaa !15 ; 3 uses
  %i.ah = icmp ult i8 %.val111, 6
  br i1 %i.ah, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow140 = sub nuw nsw i8 6, %.val111
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %.inv = icmp sgt i32 %i.ai, 0
  %i.aj = zext i1 %.inv to i8
  %i.ak = lshr i8 %narrow140, %i.aj
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.ak, i8 1) ; 3 uses
  %i.al = and i32 %i.ai, 255
  %i.am = getelementptr i8, ptr %i.b, i64 10
  %.val94 = load i8, ptr %i.am, align 2, !tbaa !15
  %i.an = zext i8 %.val94 to i32
  %i.ao = zext nneg i8 %.sroa.speculated to i32
  %i.ap = sub nsw i32 %i.an, %i.ao
  %.not86 = icmp sle i32 %i.al, %i.ap
  %narrow141 = add nuw nsw i8 %.sroa.speculated, %.val111
  %i.aq = icmp samesign ult i8 %narrow141, 6
  %or.cond138 = select i1 %.not86, i1 true, i1 %i.aq
  br i1 %or.cond138, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.af)
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !103
  %i.at = getelementptr i8, ptr %i.as, i64 10
  %.val93 = load i8, ptr %i.at, align 1, !tbaa !15
  %i.au = zext i8 %.val93 to i32                  ; 2 uses
  %i.av = icmp sgt i32 %i.ar, %i.au
  br i1 %i.av, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.aw = xor i32 %i.au, -1
  %i.ax = add nsw i32 %i.ar, %i.aw
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ay = icmp eq i8 %.val95, 6
  br i1 %i.ay, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.az = zext i8 %.val105 to i32
  store ptr %.val98, ptr %2, align 8, !tbaa !133
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !135
  call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2)
  %i.bb = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %.val97 = load ptr, ptr %i.bb, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bc = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #22 ; 6 uses
  store ptr %.val98, ptr %i.bc, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 256
  store i32 0, ptr %i.bd, align 8
  store ptr %i.b, ptr %i.be, align 8, !tbaa !103
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.bf, align 8, !tbaa !15
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !103
  store ptr %i.bc, ptr %0, align 8, !tbaa !103
  %.pre = load ptr, ptr %1, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bg = phi ptr [ %i.bb, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %.val97, %bb.m ], [ %.val98, %bb.l ], [ %i.bc, %bb.n ] ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 11
  %.val96 = load i8, ptr %i.bh, align 1, !tbaa !15
  %.not142 = icmp eq i8 %.val96, 0
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  %.val99 = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bj = add i8 %.val99, 1                       ; 2 uses
  br i1 %.not142, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #22 ; 9 uses
  store ptr %.082, ptr %i.bk, align 8, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 %i.bj, ptr %i.bl, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  store i8 0, ptr %i.bm, align 1, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  store i8 0, ptr %i.bn, align 2, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 11
  store i8 6, ptr %i.bo, align 1, !tbaa !15
  %i.bp = load i32, ptr %i.a, align 8, !tbaa !3
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i32 noundef %i.bp, ptr noundef nonnull %i.bk)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val118 = load ptr, ptr %i.bq, align 8, !tbaa !103
  %i.br = load ptr, ptr %1, align 8, !tbaa !103
  %i.bs = icmp eq ptr %.val118, %i.br
  br i1 %i.bs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bk, ptr %i.bq, align 8, !tbaa !103
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bt = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #22 ; 7 uses
  store ptr %.082, ptr %i.bt, align 8, !tbaa !103
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 %i.bj, ptr %i.bu, align 8, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  store i8 0, ptr %i.bv, align 1, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 10
  store i8 0, ptr %i.bw, align 2, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  store i8 0, ptr %i.bx, align 1, !tbaa !15
  %i.by = load i32, ptr %i.a, align 8, !tbaa !3
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i32 noundef %i.by, ptr noundef nonnull %i.bt)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bk, %bb.q ], [ %i.bk, %bb.p ], [ %i.bt, %bb.r ]
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.ca = load ptr, ptr %1, align 8, !tbaa !103
  %i.cb = getelementptr i8, ptr %i.ca, i64 10
  %.val = load i8, ptr %i.cb, align 1, !tbaa !15
  %i.cc = zext i8 %.val to i32                    ; 2 uses
  %i.cd = icmp sgt i32 %i.bz, %i.cc
  br i1 %i.cd, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ce = xor i32 %i.cc, -1
  %i.cf = add nsw i32 %i.bz, %i.ce
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink149 = phi i32 [ %i.ax, %bb.k ], [ %i.y, %bb.f ], [ %i.cf, %bb.t ]
  %.sink = phi ptr [ %i.af, %bb.k ], [ %i.h, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink149, ptr %i.a, align 8, !tbaa !3
  store ptr %.sink, ptr %1, align 8, !tbaa !103
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 11         ; 2 uses
  %.val55 = load i8, ptr %i.a, align 1, !tbaa !15 ; 2 uses
  %.not1 = icmp eq i8 %.val55, 0
  %i.b = getelementptr i8, ptr %0, i64 10
  %.val66 = load i8, ptr %i.b, align 1, !tbaa !15 ; 3 uses
  br i1 %.not1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = zext i8 %.val66 to i64
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not.i5 = icmp eq i8 %.val66, 0
  br i1 %.not.i5, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i6 = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i6, i64 32
  tail call fastcc void @_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #19, !inline_history !208
  %i.g = load ptr, ptr %.0.i6, align 8, !tbaa !33 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !15
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i6, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.e
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit, label %.lr.ph, !llvm.loop !209

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.val63.pre = load i8, ptr %i.a, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit, %bb.b
  %.val63 = phi i8 [ %.val63.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit.loopexit ], [ %.val55, %bb.b ] ; 2 uses
  %i.m = icmp eq i8 %.val63, 0
  %i.n = select i1 %i.m, i8 6, i8 %.val63
  %i.o = zext i8 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, 40
  %i.q = add nuw nsw i64 %i.p, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i8 %.val66, 0
  br i1 %i.r, label %.loopexit.sink.split, label %.lr.ph10.preheader

.lr.ph10.preheader:                               ; preds = %bb.c
  %.val59 = load ptr, ptr %0, align 8, !tbaa !103
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %.lr.ph10
  %.0499 = phi ptr [ %.049.val69, %.lr.ph10 ], [ %0, %.lr.ph10.preheader ]
  %i.s = getelementptr i8, ptr %.0499, i64 256
  %.049.val69 = load ptr, ptr %i.s, align 8, !tbaa !103 ; 4 uses
  %i.t = getelementptr i8, ptr %.049.val69, i64 11
  %.049.val = load i8, ptr %i.t, align 1, !tbaa !15
  %.not.i70 = icmp eq i8 %.049.val, 0
  br i1 %.not.i70, label %.lr.ph10, label %._crit_edge, !llvm.loop !210

._crit_edge:                                      ; preds = %.lr.ph10
  %i.u = getelementptr i8, ptr %.049.val69, i64 8
  %.049.val62 = load i8, ptr %i.u, align 1, !tbaa !15
  %i.v = zext i8 %.049.val62 to i64
  %.049.val58 = load ptr, ptr %.049.val69, align 8, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.v, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %.049.val58, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.147
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !103  ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 11
  %.val56 = load i8, ptr %i.z, align 1, !tbaa !15
  %.not.i71 = icmp eq i8 %.val56, 0
  br i1 %.not.i71, label %.lr.ph14, label %bb.e

.lr.ph14:                                         ; preds = %bb.d, %.lr.ph14
  %.15013 = phi ptr [ %.150.val68, %.lr.ph14 ], [ %i.y, %bb.d ]
  %i.aa = getelementptr i8, ptr %.15013, i64 256
  %.150.val68 = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 5 uses
  %i.ab = getelementptr i8, ptr %.150.val68, i64 11
  %.150.val = load i8, ptr %i.ab, align 1, !tbaa !15
  %.not.i72 = icmp eq i8 %.150.val, 0
  br i1 %.not.i72, label %.lr.ph14, label %._crit_edge15, !llvm.loop !211

._crit_edge15:                                    ; preds = %.lr.ph14
  %i.ac = getelementptr i8, ptr %.150.val68, i64 8
  %.150.val61 = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.ad = zext i8 %.150.val61 to i64
  %.150.val57 = load ptr, ptr %.150.val68, align 8, !tbaa !103
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge15, %bb.d
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_:bb.a
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i)
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 24) #20, !inline_history !212
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit: ; preds = %.lr.ph20, %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i
  store ptr null, ptr %i.ai, align 8, !tbaa !107
  %i.am = load ptr, ptr %.0.i7318, align 8, !tbaa !33 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i7318, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !15
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i7318, i64 40 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ar, %i.ah
  br i1 %.not.i74, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, label %.lr.ph20, !llvm.loop !209

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.e
  %i.as = getelementptr i8, ptr %.251, i64 11
  %.251.val = load i8, ptr %i.as, align 1, !tbaa !15 ; 2 uses
  %i.at = icmp eq i8 %.251.val, 0
  %i.au = select i1 %i.at, i8 6, i8 %.251.val
  %i.av = zext i8 %i.au to i64
  %i.aw = mul nuw nsw i64 %i.av, 40
  %i.ax = add nuw nsw i64 %i.aw, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.ax) #20
  %i.ay = getelementptr i8, ptr %.2, i64 10
  %.2.val = load i8, ptr %i.ay, align 1, !tbaa !15 ; 2 uses
  %i.az = zext i8 %.2.val to i64
  %.not.not = icmp ult i64 %.248, %i.az
  br i1 %.not.not, label %.backedge, label %.preheader2

.backedge:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, %bb.k
  %.147.be.in = phi i64 [ %.248, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ], [ %i.bq, %bb.k ]
  %.1.be = phi ptr [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ], [ %.3.val, %bb.k ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !213

.preheader2:                                      ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75, %bb.j
  %.3.val64 = phi i8 [ %.val, %bb.j ], [ %.2.val, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ] ; 2 uses
  %.3 = phi ptr [ %.3.val, %bb.j ], [ %.2, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit75 ] ; 4 uses
  %i.ba = getelementptr i8, ptr %.3, i64 8
  %.3.val60 = load i8, ptr %i.ba, align 1, !tbaa !15 ; 2 uses
  %.3.val = load ptr, ptr %.3, align 8, !tbaa !103 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.bc = zext i8 %.3.val64 to i64
  %.idx26 = mul nuw nsw i64 %i.bc, 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx26
  %.not.i7721 = icmp eq i8 %.3.val64, 0
  br i1 %.not.i7721, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78, label %.lr.ph24

.lr.ph24:                                         ; preds = %.preheader2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.0.i7622 = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.bb, %.preheader2 ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107 ; 4 uses
  %.not.i86 = icmp eq ptr %i.bf, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96, label %bb.h

bb.h:                                             ; preds = %.lr.ph24
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %.val.i.i4.i87 = load i64, ptr %i.bg, align 8, !tbaa !94
  %i.bh = icmp eq i64 %.val.i.i4.i87, 0
  br i1 %i.bh, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i5.i88 = load ptr, ptr %i.bf, align 8, !tbaa !87
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i88)
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95: ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 24) #20, !inline_history !212
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96: ; preds = %.lr.ph24, %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i95
  store ptr null, ptr %i.be, align 8, !tbaa !107
  %i.bi = load ptr, ptr %.0.i7622, align 8, !tbaa !33 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !15
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i7622, i64 40 ; 2 uses
  %.not.i77 = icmp eq ptr %i.bn, %i.bd
  br i1 %.not.i77, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78, label %.lr.ph24, !llvm.loop !209

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %.preheader2
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 312) #20
  %i.bo = icmp eq ptr %.3.val, %.val59
  br i1 %i.bo, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78
  %i.bp = getelementptr i8, ptr %.3.val, i64 10
  %.val = load i8, ptr %i.bp, align 1, !tbaa !15  ; 2 uses
  %.not = icmp ult i8 %.3.val60, %.val
  br i1 %.not, label %bb.k, label %.preheader2, !llvm.loop !214

bb.k:                                             ; preds = %bb.j
  %i.bq = zext i8 %.3.val60 to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit
  %.sink = phi i64 [ %i.q, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit ], [ 312, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #20
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit78, %.loopexit.sink.split
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 10         ; 7 uses
  %.val48 = load i8, ptr %i.e, align 1, !tbaa !15
  %i.f = zext i8 %.val48 to i64
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val53 = load i8, ptr %i.g, align 1, !tbaa !15
  %i.h = zext i8 %.val53 to i64
  %.val51 = load ptr, ptr %0, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.f ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val51, i64 16
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.h ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !39
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 %i.p, ptr %i.d, align 8, !tbaa !7
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !33
  %i.s = load i64, ptr %i.d, align 8, !tbaa !7
  store i64 %i.s, ptr %i.m, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.a
  %i.t = phi ptr [ %i.r, %.noexc.i.i.i.i.i.i.i ], [ %i.m, %bb.a ] ; 2 uses
  switch i64 %i.p, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !15
  store i8 %i.u, ptr %i.t, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i
  %i.v = load i64, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !30
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !107
  store ptr null, ptr %i.aa, align 8, !tbaa !107
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !33  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ag = zext i8 %1 to i32                       ; 3 uses
  %i.ah = add nsw i32 %i.ag, -1                   ; 3 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = mul nuw nsw i64 %i.ai, 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i
  %.not1.i = icmp eq i32 %i.ah, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit
  %.val47 = load i8, ptr %i.e, align 2, !tbaa !15
  %i.al = zext i8 %.val47 to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.al
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i
  %.03.i.pn = phi ptr [ %.03.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.am, %.lr.ph.preheader.i ] ; 4 uses
  %.0122.i = phi ptr [ %i.bh, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.aj, %.lr.ph.preheader.i ] ; 6 uses
  %.03.i = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 40 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 56 ; 3 uses
  store ptr %i.an, ptr %.03.i, align 8, !tbaa !39
  %i.ao = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !7
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %.noexc.i.i.i.i.i.i.i60, label %._crit_edge.i.i.i.i.i.i.i.i55

.noexc.i.i.i.i.i.i.i60:                           ; preds = %.lr.ph.i
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.as, ptr %.03.i, align 8, !tbaa !33
  %i.at = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.at, ptr %i.an, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i55

._crit_edge.i.i.i.i.i.i.i.i55:                    ; preds = %.noexc.i.i.i.i.i.i.i60, %.lr.ph.i
  %i.au = phi ptr [ %i.as, %.noexc.i.i.i.i.i.i.i60 ], [ %i.an, %.lr.ph.i ] ; 2 uses
  switch i64 %i.aq, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i55
  %i.av = load i8, ptr %i.ao, align 1, !tbaa !15
  store i8 %i.av, ptr %i.au, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ao, i64 %i.aq, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i55
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !7   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 48
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !30
  %i.ay = load ptr, ptr %.03.i, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %.03.i.pn, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i57 = load i64, ptr %i.bb, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i57, ptr %i.ba, align 8, !tbaa !107
  store ptr null, ptr %i.bb, align 8, !tbaa !107
  %i.bc = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i58
  %i.bh = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, %i.ak
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.i, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit
  %.val50 = load ptr, ptr %0, align 8, !tbaa !103
  %.val52 = load i8, ptr %i.g, align 8, !tbaa !15
  %i.bi = zext i8 %.val52 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.val50, i64 16
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bi ; 7 uses
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.ai ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !39
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !7
  %i.bq = icmp ugt i64 %i.bp, 15
  br i1 %i.bq, label %.noexc.i.i.i.i.i.i.i67, label %._crit_edge.i.i.i.i.i.i.i.i61

.noexc.i.i.i.i.i.i.i67:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.br = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.br, ptr %i.bk, align 8, !tbaa !33
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !7
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i61:                    ; preds = %.noexc.i.i.i.i.i.i.i67, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.bt = phi ptr [ %i.br, %.noexc.i.i.i.i.i.i.i67 ], [ %i.bm, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit ] ; 2 uses
  switch i64 %i.bp, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i61
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !15
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bn, i64 %i.bp, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i.i.i61
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !30
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i63 = load i64, ptr %i.ca, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i63, ptr %i.bz, align 8, !tbaa !107
  store ptr null, ptr %i.ca, align 8, !tbaa !107
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i64: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i64
  %i.cg = getelementptr i8, ptr %2, i64 10        ; 5 uses
  %.val54 = load i8, ptr %i.cg, align 1, !tbaa !15 ; 2 uses
  %i.ch = zext i8 %.val54 to i32
  %i.ci = sub nsw i32 %i.ch, %i.ag
  %i.cj = zext i8 %1 to i64                       ; 3 uses
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.cj ; 2 uses
  %narrow = mul nsw i32 %i.ci, 40
  %.idx.i69 = sext i32 %narrow to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i69
  %.not1.i70 = icmp eq i8 %.val54, %1
  br i1 %.not1.i70, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79
  %.03.i73 = phi ptr [ %i.dh, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79 ], [ %i.aj, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68 ] ; 8 uses
  %.0122.i74 = phi ptr [ %i.dg, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79 ], [ %i.ck, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68 ] ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.03.i73, i64 16 ; 3 uses
  store ptr %i.cm, ptr %.03.i73, align 8, !tbaa !39
  %i.cn = load ptr, ptr %.0122.i74, align 8, !tbaa !33 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !7
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %.noexc.i.i.i.i.i.i.i82, label %._crit_edge.i.i.i.i.i.i.i.i75

.noexc.i.i.i.i.i.i.i82:                           ; preds = %.lr.ph.i72
  %i.cr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i73, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cr, ptr %.03.i73, align 8, !tbaa !33
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.cs, ptr %i.cm, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i75

._crit_edge.i.i.i.i.i.i.i.i75:                    ; preds = %.noexc.i.i.i.i.i.i.i82, %.lr.ph.i72
  %i.ct = phi ptr [ %i.cr, %.noexc.i.i.i.i.i.i.i82 ], [ %i.cm, %.lr.ph.i72 ] ; 2 uses
  switch i64 %i.cp, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i75
  %i.cu = load i8, ptr %i.cn, align 1, !tbaa !15
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cn, i64 %i.cp, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i75
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03.i73, i64 8
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !30
  %i.cx = load ptr, ptr %.03.i73, align 8, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store i8 0, ptr %i.cy, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cz = getelementptr inbounds nuw i8, ptr %.03.i73, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i77 = load i64, ptr %i.da, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i77, ptr %i.cz, align 8, !tbaa !107
  store ptr null, ptr %i.da, align 8, !tbaa !107
  %i.db = load ptr, ptr %.0122.i74, align 8, !tbaa !33 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i78: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !15
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i78
  %i.dg = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 40 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.03.i73, i64 40
  %.not.i80 = icmp eq ptr %i.dg, %i.cl
  br i1 %.not.i80, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83, label %.lr.ph.i72, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68
  %i.di = getelementptr i8, ptr %0, i64 11
  %.val49 = load i8, ptr %i.di, align 1, !tbaa !15
  %.not.i84 = icmp eq i8 %.val49, 0
  br i1 %.not.i84, label %.preheader1, label %.loopexit

.preheader1:                                      ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83
  %.not7 = icmp eq i8 %1, 0
  br i1 %.not7, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.cj, 1
  %i.dl = icmp eq i32 %i.ah, 0
  br i1 %i.dl, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cj, 254
  br label %bb.j

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i8 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %.val46.epil = load i8, ptr %i.e, align 2, !tbaa !15
  %i.dm = trunc i64 %indvars.iv.epil.init to i8
  %i.dn = add i8 %i.dm, 1
  %i.do = add i8 %.val46.epil, %i.dn              ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.epil.init
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !103 ; 3 uses
  %i.dr = zext i8 %i.do to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dr
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !103
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i8 %i.do, ptr %i.dt, align 1, !tbaa !15
  store ptr %0, ptr %i.dq, align 8, !tbaa !103
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.val453 = load i8, ptr %i.cg, align 1, !tbaa !15
  %.not4 = icmp ult i8 %.val453, %1
  br i1 %.not4, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %.val46 = load i8, ptr %i.e, align 2, !tbaa !15
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dv = trunc nuw i64 %indvars.iv.next to i8
  %i.dw = add i8 %.val46, %i.dv                   ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !103 ; 3 uses
  %i.dz = zext i8 %i.dw to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dz
  store ptr %i.dy, ptr %i.ea, align 8, !tbaa !103
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i8 %i.dw, ptr %i.eb, align 1, !tbaa !15
  store ptr %0, ptr %i.dy, align 8, !tbaa !103
  %.val46.1 = load i8, ptr %i.e, align 2, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ec = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.ed = add i8 %.val46.1, %i.ec                 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !103 ; 3 uses
  %i.eg = zext i8 %i.ed to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.eg
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !103
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 %i.ed, ptr %i.ei, align 1, !tbaa !15
  store ptr %0, ptr %i.ef, align 8, !tbaa !103
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.j, !llvm.loop !215

bb.k:                                             ; preds = %.lr.ph6, %bb.k
  %.05 = phi i8 [ 0, %.lr.ph6 ], [ %i.eq, %bb.k ] ; 4 uses
  %i.ej = add i8 %.05, %1
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !103 ; 3 uses
  %i.en = zext i8 %.05 to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.en
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !103
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i8 %.05, ptr %i.ep, align 1, !tbaa !15
  store ptr %2, ptr %i.em, align 8, !tbaa !103
  %i.eq = add i8 %.05, 1                          ; 2 uses
  %i.er = zext i8 %i.eq to i32
  %.val45 = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.es = zext i8 %.val45 to i32
  %i.et = sub nsw i32 %i.es, %i.ag
  %.not = icmp slt i32 %i.et, %i.er
  br i1 %.not, label %.loopexit, label %bb.k, !llvm.loop !216

.loopexit:                                        ; preds = %bb.k, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83
  %.val44 = load i8, ptr %i.e, align 2, !tbaa !15
  %i.eu = add i8 %.val44, %1
  store i8 %i.eu, ptr %i.e, align 2, !tbaa !15
  %.val = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.ev = sub i8 %.val, %1
  store i8 %i.ev, ptr %i.cg, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val58 = load i8, ptr %i.e, align 1, !tbaa !15 ; 2 uses
  %i.f = zext i8 %1 to i32                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not1.i = icmp eq i8 %.val58, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.h = zext i8 %.val58 to i64                   ; 2 uses
  %i.i = zext i8 %1 to i64
  %.idx.i = mul nuw nsw i64 %i.h, 40
  %i.j = getelementptr [40 x i8], ptr %i.g, i64 %i.i
  %i.k = getelementptr [40 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr i8, ptr %i.g, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i
  %.03.i = phi ptr [ %i.m, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.k, %.lr.ph.preheader.i ] ; 4 uses
  %.0142.i = phi ptr [ %i.n, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.l, %.lr.ph.preheader.i ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.03.i, i64 -40 ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %.0142.i, i64 -40 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.03.i, i64 -24 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !39
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.0142.i, i64 -32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 %i.r, ptr %i.d, align 8, !tbaa !7
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %i.m, align 8, !tbaa !33
  %i.u = load i64, ptr %i.d, align 8, !tbaa !7
  store i64 %i.u, ptr %i.o, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i ] ; 2 uses
  switch i64 %i.r, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !15
  store i8 %i.w, ptr %i.v, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i
  %i.x = load i64, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.03.i, i64 -32
  store i64 %i.x, ptr %i.y, align 8, !tbaa !30
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.ab = getelementptr inbounds i8, ptr %.03.i, i64 -8
  %i.ac = getelementptr inbounds i8, ptr %.0142.i, i64 -8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !107
  store ptr null, ptr %i.ac, align 8, !tbaa !107
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !33  ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.0142.i, i64 -24 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %.not.i = icmp eq ptr %i.n, %i.g
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit, label %.lr.ph.i, !llvm.loop !136

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %bb.a
  %i.ai = add nsw i32 %i.f, -1                    ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val57 = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.al = zext i8 %.val57 to i64
  %.val55 = load ptr, ptr %0, align 8, !tbaa !103
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.aj ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val55, i64 16
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.al ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !39
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.as, ptr %i.c, align 8, !tbaa !7
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i.i.i.i.i.i.i65, label %._crit_edge.i.i.i.i.i.i.i.i59

.noexc.i.i.i.i.i.i.i65:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit
  %i.au = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.au, ptr %i.am, align 8, !tbaa !33
  %i.av = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i59

._crit_edge.i.i.i.i.i.i.i.i59:                    ; preds = %.noexc.i.i.i.i.i.i.i65, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit
  %i.aw = phi ptr [ %i.au, %.noexc.i.i.i.i.i.i.i65 ], [ %i.ap, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit ] ; 2 uses
  switch i64 %i.as, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i59
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !15
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i59
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !7   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !30
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i61 = load i64, ptr %i.bd, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i61, ptr %i.bc, align 8, !tbaa !107
  store ptr null, ptr %i.bd, align 8, !tbaa !107
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !15
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62
  %i.bj = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %.val52 = load i8, ptr %i.bj, align 2, !tbaa !15
  %i.bk = zext i8 %.val52 to i32                  ; 2 uses
  %i.bl = sub nsw i32 %i.bk, %i.ai
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  %.idx.i66 = mul nuw nsw i64 %i.aj, 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i66
  %.not1.i67 = icmp eq i32 %i.ai, 0
  br i1 %.not1.i67, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75
  %.03.i70 = phi ptr [ %i.cl, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75 ], [ %i.g, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit ] ; 8 uses
  %.0122.i = phi ptr [ %i.ck, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75 ], [ %i.bo, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.03.i70, i64 16 ; 3 uses
  store ptr %i.bq, ptr %.03.i70, align 8, !tbaa !39
  %i.br = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.bt, ptr %i.b, align 8, !tbaa !7
  %i.bu = icmp ugt i64 %i.bt, 15
  br i1 %i.bu, label %.noexc.i.i.i.i.i.i.i78, label %._crit_edge.i.i.i.i.i.i.i.i71

.noexc.i.i.i.i.i.i.i78:                           ; preds = %.lr.ph.i69
  %i.bv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i70, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bv, ptr %.03.i70, align 8, !tbaa !33
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !7
  store i64 %i.bw, ptr %i.bq, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i71

._crit_edge.i.i.i.i.i.i.i.i71:                    ; preds = %.noexc.i.i.i.i.i.i.i78, %.lr.ph.i69
  %i.bx = phi ptr [ %i.bv, %.noexc.i.i.i.i.i.i.i78 ], [ %i.bq, %.lr.ph.i69 ] ; 2 uses
  switch i64 %i.bt, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i71
  %i.by = load i8, ptr %i.br, align 1, !tbaa !15
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i71
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.br, i64 %i.bt, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i.i.i71
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.03.i70, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !30
  %i.cb = load ptr, ptr %.03.i70, align 8, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cc, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.cd = getelementptr inbounds nuw i8, ptr %.03.i70, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i73 = load i64, ptr %i.ce, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i73, ptr %i.cd, align 8, !tbaa !107
  store ptr null, ptr %i.ce, align 8, !tbaa !107
  %i.cf = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i74: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !15
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i74
  %i.ck = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.03.i70, i64 40
  %.not.i76 = icmp eq ptr %i.ck, %i.bp
  br i1 %.not.i76, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, label %.lr.ph.i69, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75
  %.val51.pre = load i8, ptr %i.bj, align 2, !tbaa !15
  %.pre = zext i8 %.val51.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit
  %.pre-phi = phi i32 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit ], [ %i.bk, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit ]
  %.val54 = load ptr, ptr %0, align 8, !tbaa !103
  %.val56 = load i8, ptr %i.ak, align 8, !tbaa !15
  %i.cm = zext i8 %.val56 to i64
  %i.cn = sub nsw i32 %.pre-phi, %i.f
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.val54, i64 16
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.cp, i64 %i.cm ; 7 uses
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.co ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !39
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !33 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !7
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %.noexc.i.i.i.i.i.i.i85, label %._crit_edge.i.i.i.i.i.i.i.i79

.noexc.i.i.i.i.i.i.i85:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.cx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cx, ptr %i.cq, align 8, !tbaa !33
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.cy, ptr %i.cs, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i79

._crit_edge.i.i.i.i.i.i.i.i79:                    ; preds = %.noexc.i.i.i.i.i.i.i85, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.cz = phi ptr [ %i.cx, %.noexc.i.i.i.i.i.i.i85 ], [ %i.cs, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit ] ; 2 uses
  switch i64 %i.cv, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i79
  %i.da = load i8, ptr %i.ct, align 1, !tbaa !15
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i79
  %i.db = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !30
  %i.dd = load ptr, ptr %i.cq, align 8, !tbaa !33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db
  store i8 0, ptr %i.de, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i81 = load i64, ptr %i.dg, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i81, ptr %i.df, align 8, !tbaa !107
  store ptr null, ptr %i.dg, align 8, !tbaa !107
  %i.dh = load ptr, ptr %i.cr, align 8, !tbaa !33 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i82: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !15
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i82
  %i.dm = getelementptr i8, ptr %0, i64 11
  %.val53 = load i8, ptr %i.dm, align 1, !tbaa !15
  %.not.i87 = icmp eq i8 %.val53, 0
  br i1 %.not.i87, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86
  %.val50 = load i8, ptr %i.e, align 1, !tbaa !15 ; 5 uses
  %i.dn = add i8 %.val50, 1                       ; 2 uses
  %.not1 = icmp eq i8 %i.dn, 0
  br i1 %.not1, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.dp = zext i8 %i.dn to i64                    ; 2 uses
  %i.dq = and i8 %.val50, 1
  %lcmp.mod.not.not = icmp eq i8 %i.dq, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.dr = add i8 %.val50, %1                      ; 2 uses
  %i.ds = zext i8 %.val50 to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !103 ; 3 uses
  %i.dv = zext i8 %i.dr to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dv
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !103
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i8 %i.dr, ptr %i.dx, align 1, !tbaa !15
  store ptr %2, ptr %i.du, align 8, !tbaa !103
  %indvars.iv.next.prol = add nsw i64 %i.dp, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.dp, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.dy = icmp eq i8 %.val50, 0
  br i1 %i.dy, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.j
  %.not463 = icmp eq i8 %1, 0
  br i1 %.not463, label %.loopexit, label %.lr.ph5

.lr.ph5:                                          ; preds = %.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.eb = add i8 %1, 1                            ; 2 uses
  %umax = call i8 @llvm.umax.i8(i8 %i.eb, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.ec = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter23 = and i64 %i.ec, 1
  %i.ed = icmp ult i8 %i.eb, 3
  br i1 %i.ed, label %.epil.preheader, label %.lr.ph5.new

.lr.ph5.new:                                      ; preds = %.lr.ph5
  %unroll_iter = and i64 %i.ec, -2
  %invariant.op = sub i8 1, %1
  br label %bb.k

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.ee = trunc nuw i64 %indvars.iv to i8
  %i.ef = add i8 %i.ee, -1                        ; 2 uses
  %i.eg = add i8 %i.ef, %1                        ; 2 uses
  %i.eh = zext i8 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !103 ; 3 uses
  %i.ek = zext i8 %i.eg to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.ek
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !103
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i8 %i.eg, ptr %i.em, align 1, !tbaa !15
  store ptr %2, ptr %i.ej, align 8, !tbaa !103
  %i.en = trunc i64 %indvars.iv to i8
  %i.eo = add i8 %i.en, -2                        ; 2 uses
  %i.ep = add i8 %i.eo, %1                        ; 2 uses
  %i.eq = zext i8 %i.eo to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !103 ; 3 uses
  %i.et = zext i8 %i.ep to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.et
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !103
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i8 %i.ep, ptr %i.ev, align 1, !tbaa !15
  store ptr %2, ptr %i.es, align 8, !tbaa !103
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ew = and i64 %indvars.iv.next.1, 255
  %.not.1 = icmp eq i64 %i.ew, 0
  br i1 %.not.1, label %.preheader, label %.lr.ph.new, !llvm.loop !217

bb.k:                                             ; preds = %bb.k, %.lr.ph5.new
  %indvars.iv7 = phi i64 [ 1, %.lr.ph5.new ], [ %indvars.iv.next8.1, %bb.k ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph5.new ], [ %niter.next.1, %bb.k ]
  %i.ex = add nsw i64 %indvars.iv7, -1            ; 2 uses
  %.val49 = load i8, ptr %i.bj, align 2, !tbaa !15
  %i.ey = trunc nuw i64 %indvars.iv7 to i8
  %i.ez = sub i8 %i.ey, %1
  %i.fa = add i8 %i.ez, %.val49
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !103 ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ex
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !103
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = trunc nuw i64 %i.ex to i8
  store i8 %i.fg, ptr %i.ff, align 1, !tbaa !15
  store ptr %2, ptr %i.fd, align 8, !tbaa !103
  %.val49.1 = load i8, ptr %i.bj, align 2, !tbaa !15
  %i.fh = trunc i64 %indvars.iv7 to i8
  %.reass = add i8 %i.fh, %invariant.op
  %i.fi = add i8 %.reass, %.val49.1
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !103 ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv7
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !103
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = trunc nuw i64 %indvars.iv7 to i8
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !15
  store ptr %2, ptr %i.fl, align 8, !tbaa !103
  %indvars.iv.next8.1 = add nuw nsw i64 %indvars.iv7, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !218

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph5
  %indvars.iv7.epil.init = phi i64 [ 1, %.lr.ph5 ], [ %indvars.iv.next8.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ec to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.fp = add nsw i64 %indvars.iv7.epil.init, -1  ; 2 uses
  %.val49.epil = load i8, ptr %i.bj, align 2, !tbaa !15
  %i.fq = trunc nuw i64 %indvars.iv7.epil.init to i8
  %i.fr = sub i8 %i.fq, %1
  %i.fs = add i8 %i.fr, %.val49.epil
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !103 ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fp
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !103
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fy = trunc nuw i64 %i.fp to i8
  store i8 %i.fy, ptr %i.fx, align 1, !tbaa !15
  store ptr %2, ptr %i.fv, align 8, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86
  %.val47 = load i8, ptr %i.bj, align 2, !tbaa !15
  %i.fz = sub i8 %.val47, %1
  store i8 %i.fz, ptr %i.bj, align 2, !tbaa !15
  %.val = load i8, ptr %i.e, align 1, !tbaa !15
  %i.ga = add i8 %.val, %1
  store i8 %i.ga, ptr %i.e, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i32 noundef %1, ptr noundef initializes((10, 11)) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 10
  %.val31 = load i8, ptr %i.d, align 1, !tbaa !15
  %i.e = add i8 %.val31, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 10
  %.val39 = load i8, ptr %i.f, align 1, !tbaa !15
  %i.g = lshr i8 %.val39, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.h, align 1, !tbaa !15
  %i.i = getelementptr i8, ptr %0, i64 10         ; 6 uses
  %.val30 = load i8, ptr %i.i, align 1, !tbaa !15
  %i.j = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %i.k = sub i8 %.val30, %.sink                   ; 3 uses
  store i8 %i.k, ptr %i.i, align 1, !tbaa !15
  %.val37 = load i8, ptr %i.j, align 1, !tbaa !15 ; 2 uses
  %i.l = zext i8 %.val37 to i64
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.l, 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not1.i = icmp eq i8 %.val37, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i
  %.03.i = phi ptr [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.q, %.lr.ph.preheader.i ] ; 8 uses
  %.0122.i = phi ptr [ %i.al, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.o, %.lr.ph.preheader.i ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.03.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.03.i, align 8, !tbaa !39
  %i.s = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.u, ptr %i.c, align 8, !tbaa !7
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %.03.i, align 8, !tbaa !33
  %i.x = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.x, ptr %i.r, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i
  %i.y = phi ptr [ %i.w, %.noexc.i.i.i.i.i.i.i ], [ %i.r, %.lr.ph.i ] ; 2 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !15
  store i8 %i.z, ptr %i.y, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !7   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !30
  %i.ac = load ptr, ptr %.03.i, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %.03.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !107
  store ptr null, ptr %i.af, align 8, !tbaa !107
  %i.ag = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i, i64 40
  %.not.i = icmp eq ptr %i.al, %i.p
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, label %.lr.ph.i, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i
  %.pre = load i8, ptr %i.i, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, %bb.d
  %i.an = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ao = add i8 %i.an, -1                        ; 2 uses
  store i8 %i.ao, ptr %i.i, align 1, !tbaa !15
  %.val34 = load ptr, ptr %0, align 8, !tbaa !103 ; 5 uses
  %i.ap = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val36 = load i8, ptr %i.ap, align 8, !tbaa !15 ; 4 uses
  %i.aq = zext i8 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.aq ; 3 uses
  %i.as = zext i8 %.val36 to i32
  %i.at = getelementptr i8, ptr %.val34, i64 10   ; 3 uses
  %.val21.i = load i8, ptr %i.at, align 1, !tbaa !15 ; 2 uses
  %i.au = icmp ult i8 %.val36, %.val21.i
  %i.av = zext i8 %.val36 to i64                  ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.ax = getelementptr [40 x i8], ptr %i.aw, i64 %i.av ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %.val36
  %i.ay = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ay, 40
  %i.az = getelementptr i8, ptr %i.ax, i64 40
  %i.ba = getelementptr [40 x i8], ptr %i.az, i64 %i.ay
  %i.bb = getelementptr i8, ptr %i.ax, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, %.lr.ph.preheader.i.i
  %.03.i.i = phi ptr [ %i.bc, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 4 uses
  %.0142.i.i = phi ptr [ %i.bd, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i ], [ %i.bb, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %.03.i.i, i64 -40 ; 5 uses
  %i.bd = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %.03.i.i, i64 -24 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !39
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !7
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i
  %i.bj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !33
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !7
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.bl = phi ptr [ %i.bj, %.noexc.i.i.i.i.i.i.i.i ], [ %i.be, %.lr.ph.i.i ] ; 2 uses
  switch i64 %i.bh, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bm = load i8, ptr %i.bf, align 1, !tbaa !15
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bf, i64 %i.bh, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !30
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.br = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bs = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bs, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.br, align 8, !tbaa !107
  store ptr null, ptr %i.bs, align 8, !tbaa !107
  %i.bt = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !15
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %.not.i.i = icmp eq ptr %i.bd, %i.ax
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i, label %.lr.ph.i.i, !llvm.loop !136

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.by, i64 %i.av ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !39
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !33 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !7
  %i.ce = icmp ugt i64 %i.cd, 15
  br i1 %i.ce, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i
  %i.cf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cf, ptr %i.bz, align 8, !tbaa !33
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.cg, ptr %i.ca, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i
  %i.ch = phi ptr [ %i.cf, %.noexc.i.i.i.i.i.i ], [ %i.ca, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i ] ; 2 uses
  switch i64 %i.cd, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ci = load i8, ptr %i.cb, align 1, !tbaa !15
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cb, i64 %i.cd, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i.i
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !30
  %i.cl = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 0, ptr %i.cm, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.co, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i, ptr %i.cn, align 8, !tbaa !107
  store ptr null, ptr %i.co, align 8, !tbaa !107
  %.val19.i = load i8, ptr %i.at, align 1, !tbaa !15
  %i.cp = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cp, ptr %i.at, align 1, !tbaa !15
  %i.cq = getelementptr i8, ptr %.val34, i64 11
  %.val22.i = load i8, ptr %i.cq, align 1, !tbaa !15
  %.not.i24.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i24.i, label %bb.k, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i
  %i.cr = zext i8 %i.cp to i32
  %i.cs = add nuw nsw i32 %i.as, 1                ; 2 uses
  %i.ct = icmp samesign ult i32 %i.cs, %i.cr
  br i1 %i.ct, label %.lr.ph.i41, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit

.lr.ph.i41:                                       ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.val34, i64 256 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i41
  %.01.i = phi i8 [ %i.cp, %.lr.ph.i41 ], [ %i.cv, %bb.l ] ; 3 uses
  %i.cv = add i8 %.01.i, -1                       ; 3 uses
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !103 ; 2 uses
  %i.cz = zext i8 %.01.i to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !103
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.01.i, ptr %i.db, align 1, !tbaa !15
  %i.dc = zext i8 %i.cv to i32
  %i.dd = icmp samesign ult i32 %i.cs, %i.dc
  br i1 %i.dd, label %bb.l, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit, !llvm.loop !219

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit: ; preds = %bb.l, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i, %bb.k
  %.val28 = load i8, ptr %i.i, align 2, !tbaa !15
  %i.de = zext i8 %.val28 to i64
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.de ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !107 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %.val.i.i4.i.i.i = load i64, ptr %i.di, align 8, !tbaa !94
  %i.dj = icmp eq i64 %.val.i.i4.i.i.i, 0
  br i1 %i.dj, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1.i.i5.i.i.i = load ptr, ptr %i.dh, align 8, !tbaa !87
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i.i.i) #23, !inline_history !172
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i: ; preds = %bb.n, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 24) #20, !inline_history !172
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !33 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !15
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #20, !inline_history !173
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.val33 = load ptr, ptr %0, align 8, !tbaa !103
  %.val35 = load i8, ptr %i.ap, align 8, !tbaa !15
  %i.dp = add i8 %.val35, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.val33, i64 256
  %i.dr = zext i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr
  store ptr %2, ptr %i.ds, align 8, !tbaa !103
  %i.dt = getelementptr i8, ptr %0, i64 11
  %.val32 = load i8, ptr %i.dt, align 1, !tbaa !15
  %.not.i42 = icmp eq i8 %.val32, 0
  br i1 %.not.i42, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit
  %.val27 = load i8, ptr %i.i, align 2, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.p
  %.0.in3 = phi i8 [ %.val27, %bb.o ], [ %.0, %bb.p ]
  %.0252 = phi i8 [ 0, %bb.o ], [ %i.ec, %bb.p ]  ; 3 uses
  %.0 = add i8 %.0.in3, 1                         ; 2 uses
  %i.dw = zext i8 %.0 to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !103 ; 3 uses
  %i.dz = zext i8 %.0252 to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dz
  store ptr %i.dy, ptr %i.ea, align 8, !tbaa !103
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i8 %.0252, ptr %i.eb, align 1, !tbaa !15
  store ptr %2, ptr %i.dy, align 8, !tbaa !103
  %i.ec = add i8 %.0252, 1                        ; 2 uses
  %.val = load i8, ptr %i.j, align 1, !tbaa !15
  %.not = icmp ugt i8 %i.ec, %.val
  br i1 %.not, label %.loopexit, label %bb.p, !llvm.loop !220

.loopexit:                                        ; preds = %bb.p, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13value_destroyEhPSP_.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPNS0_9FieldMaskE(i64 %0, ptr %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.b = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !94
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 0
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  br label %_ZN6google8protobuf9FieldMask9add_pathsIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = inttoptr i64 %i.f to ptr
  br label %_ZN6google8protobuf9FieldMask9add_pathsIRSt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree20MergeLeafNodesToTreeESt17basic_string_viewIcSt11char_traitsIcEEPKNS3_4NodeEPS3_:bb.a
  %.01527.i.i.i = phi ptr [ %.015.val19.i.i.i, %bb.l ], [ %.sroa.01.010, %bb.k ] ; 2 uses
  %.015.val19.i.i.i = load ptr, ptr %.01527.i.i.i, align 8, !tbaa !103 ; 4 uses
  %i.ar = getelementptr i8, ptr %.015.val19.i.i.i, i64 11
  %.015.val19.val.i.i.i = load i8, ptr %i.ar, align 1, !tbaa !15
  %.not22.i.i.i = icmp eq i8 %.015.val19.val.i.i.i, 0
  br i1 %.not22.i.i.i, label %bb.l, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr i8, ptr %.01527.i.i.i, i64 8
  %.015.val20.i.i.i = load i8, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.at = getelementptr i8, ptr %.015.val19.i.i.i, i64 10
  %.015.val17.i.i.i = load i8, ptr %i.at, align 1, !tbaa !15
  %i.au = icmp eq i8 %.015.val20.i.i.i, %.015.val17.i.i.i
  br i1 %i.au, label %.lr.ph.i.i.i, label %.critedge.loopexit29.i.i.i, !llvm.loop !221

.thread.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.010, i64 256
  %i.aw = add i32 %.sroa.8.011, 1
  %i.ax = and i32 %i.aw, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ay
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.az, %.thread.i.i ], [ %i.bb, %bb.m ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !103 ; 3 uses
  %i.ba = getelementptr i8, ptr %.116.i.i.i, i64 11
  %.116.val.i.i.i = load i8, ptr %i.ba, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %.116.val.i.i.i, 0
  %i.bb = getelementptr i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit, !llvm.loop !222

.critedge.loopexit29.i.i.i:                       ; preds = %bb.l
  %i.bc = zext i8 %.015.val20.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.m, %.critedge.loopexit29.i.i.i, %bb.k
  %.sroa.01.1 = phi ptr [ %.116.i.i.i, %bb.m ], [ %.sroa.01.010, %bb.k ], [ %.015.val19.i.i.i, %.critedge.loopexit29.i.i.i ], [ %.sroa.01.010, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi i32 [ 0, %bb.m ], [ %i.an, %bb.k ], [ %i.bc, %.critedge.loopexit29.i.i.i ], [ %i.an, %.lr.ph.i.i.i ] ; 2 uses
  %i.bd = icmp ne ptr %.sroa.01.1, %.val23
  %i.be = icmp ne i32 %.sroa.8.1, %i.f
  %.not6.i = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %.not6.i, label %bb.d, label %._crit_edge

bb.n:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.l
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.n
  %i.bi = load i64, ptr %i.l, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.bf
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = zext i8 %1 to i64                        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = zext i8 %2 to i64                        ; 2 uses
  %.idx35.i = add nuw nsw i64 %i.d, %i.b
  %i.e = mul nuw nsw i64 %.idx35.i, 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not1.i = icmp eq i8 %2, 0                     ; 2 uses
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.idx.i = mul nuw nsw i64 %i.b, 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i, %.lr.ph.preheader.i
  %.02.i = phi ptr [ %i.q, %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i ], [ %i.g, %.lr.ph.preheader.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val.i.i4.i.i.i = load i64, ptr %i.j, align 8, !tbaa !94
  %i.k = icmp eq i64 %.val.i.i4.i.i.i, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i5.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !87
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i5.i.i.i) #23, !inline_history !223
  br label %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 24) #20, !inline_history !223
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEEclEPS5_.exit.i.i.i, %.lr.ph.i
  %i.l = load ptr, ptr %.02.i, align 8, !tbaa !33 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20, !inline_history !224
  br label %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i

_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.02.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit, label %.lr.ph.i, !llvm.loop !209

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal20common_policy_traitsINS1_15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EEEEvE7destroyISaISt4pairIKS9_SJ_EEEEDaPT_PNS1_13map_slot_typeIS9_SJ_EE.exit.i, %bb.a
  %i.r = getelementptr i8, ptr %0, i64 10         ; 2 uses
  %.val = load i8, ptr %i.r, align 1, !tbaa !15   ; 4 uses
  %i.s = zext i8 %1 to i32
  %i.t = zext i8 %2 to i32
  %i.u = add nuw nsw i32 %i.t, %i.s               ; 2 uses
  %i.v = zext i8 %.val to i32                     ; 2 uses
  %i.w = and i32 %i.u, 255                        ; 3 uses
  %i.x = sub nsw i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.y ; 2 uses
  %narrow = mul nsw i32 %i.x, 40
  %.idx.i32 = sext i32 %narrow to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i32
  %.not1.i33 = icmp eq i32 %i.w, %i.v
  br i1 %.not1.i33, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i34

.lr.ph.preheader.i34:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.b
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i34
  %.03.i = phi ptr [ %i.ax, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.ab, %.lr.ph.preheader.i34 ] ; 8 uses
  %.0122.i = phi ptr [ %i.aw, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.z, %.lr.ph.preheader.i34 ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.03.i, align 8, !tbaa !39
  %i.ad = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.af, ptr %i.a, align 8, !tbaa !7
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i35
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ah, ptr %.03.i, align 8, !tbaa !33
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i35
  %i.aj = phi ptr [ %i.ah, %.noexc.i.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i35 ] ; 2 uses
  switch i64 %i.af, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !15
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !30
  %i.an = load ptr, ptr %.03.i, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %.03.i, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !107
  store ptr null, ptr %i.aq, align 8, !tbaa !107
  %i.ar = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !15
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03.i, i64 40
  %.not.i36 = icmp eq ptr %i.aw, %i.aa
  br i1 %.not.i36, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.i35, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15value_destroy_nEhhPSP_.exit
  %i.ay = getelementptr i8, ptr %0, i64 11
  %.val31 = load i8, ptr %i.ay, align 1, !tbaa !15
  %.not.i37 = icmp eq i8 %.val31, 0
  br i1 %.not.i37, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  br i1 %.not1.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.az = add i8 %1, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.bb = trunc i32 %i.u to i8
  %.02 = add i8 %i.bb, 1                          ; 2 uses
  %.not3 = icmp ugt i8 %.02, %.val
  br i1 %.not3, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.bd = trunc nuw i64 %indvars.iv to i8
  %i.be = add i8 %i.az, %i.bd
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !103
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %i.bh)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !225

bb.g:                                             ; preds = %.lr.ph6, %bb.g
  %.04 = phi i8 [ %.02, %.lr.ph6 ], [ %.0, %bb.g ] ; 3 uses
  %i.bi = sub i8 %.04, %2                         ; 2 uses
  %i.bj = zext i8 %.04 to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !103 ; 2 uses
  %i.bm = zext i8 %i.bi to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bm
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !103
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i8 %i.bi, ptr %i.bo, align 1, !tbaa !15
  %.0 = add i8 %.04, 1                            ; 2 uses
  %.not = icmp ugt i8 %.0, %.val
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !226

.loopexit:                                        ; preds = %bb.g, %._crit_edge, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.bp = sub i8 %.val, %2
  store i8 %i.bp, ptr %i.r, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val1047 = load ptr, ptr %0, align 8, !tbaa !87 ; 2 uses
  %i.a = icmp eq ptr %1, %.val1047
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 10
  %.val9.peel = load i8, ptr %i.b, align 1, !tbaa !15 ; 8 uses
  %i.c = icmp ugt i8 %.val9.peel, 2
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %.val55.i.peel = load ptr, ptr %1, align 8, !tbaa !103 ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val61.i.peel = load i8, ptr %i.d, align 8, !tbaa !15 ; 5 uses
  %.not.i14.peel = icmp eq i8 %.val61.i.peel, 0   ; 2 uses
  br i1 %.not.i14.peel, label %.critedge.i.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %.val61.i.peel, -1
  %i.f = getelementptr inbounds nuw i8, ptr %.val55.i.peel, i64 256
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 10
  %.val76.i.peel = load i8, ptr %i.j, align 1, !tbaa !15
  %i.k = zext i8 %.val76.i.peel to i32
  %i.l = add nuw nsw i32 %i.k, 1                  ; 2 uses
  %i.m = zext nneg i8 %.val9.peel to i32
  %i.n = add nuw nsw i32 %i.l, %i.m
  %i.o = icmp samesign ugt i32 %i.n, 6
  br i1 %i.o, label %.critedge.i.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i32 %i.l, %2
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISQ_EESU_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel

.critedge.i.peel:                                 ; preds = %bb.c, %bb.b
  %i.q = getelementptr i8, ptr %.val55.i.peel, i64 10
  %.val54.i.peel = load i8, ptr %i.q, align 1, !tbaa !15
  %i.r = icmp ult i8 %.val61.i.peel, %.val54.i.peel
  br i1 %i.r, label %bb.e, label %.thread.i.peel

bb.e:                                             ; preds = %.critedge.i.peel
  %i.s = add nuw i8 %.val61.i.peel, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.val55.i.peel, i64 256
  %i.u = zext i8 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103  ; 3 uses
  %narrow.peel = add nuw nsw i8 %.val9.peel, 1
  %i.x = zext nneg i8 %narrow.peel to i32
  %i.y = getelementptr i8, ptr %i.w, i64 10
  %.val72.i.peel = load i8, ptr %i.y, align 1, !tbaa !15 ; 3 uses
  %i.z = zext i8 %.val72.i.peel to i32
  %i.aa = add nuw nsw i32 %i.z, %i.x
  %i.ab = icmp samesign ult i32 %i.aa, 7
  br i1 %i.ab, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp eq i8 %.val9.peel, 0
  %i.ad = icmp sgt i32 %2, 0
  %or.cond.peel = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond.peel, label %bb.j, label %.thread.i.peel

.thread.i.peel:                                   ; preds = %bb.f, %.critedge.i.peel
  br i1 %.not.i14.peel, label %.thread, label %bb.g

bb.g:                                             ; preds = %.thread.i.peel
  %i.ae = add i8 %.val61.i.peel, -1
  %i.af = getelementptr inbounds nuw i8, ptr %.val55.i.peel, i64 256
  %i.ag = zext i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !103 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 10
  %.val66.i.peel = load i8, ptr %i.aj, align 1, !tbaa !15 ; 3 uses
  %i.ak = icmp ugt i8 %.val66.i.peel, 3
  br i1 %i.ak, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.al = icmp eq i8 %.val9.peel, 0
  %i.am = zext nneg i8 %.val9.peel to i32
  %i.an = icmp slt i32 %2, %i.am
  %or.cond39.peel = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond39.peel, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.lhs.trunc93.i.peel = sub nuw i8 %.val66.i.peel, %.val9.peel
  %i.ao = lshr i8 %.lhs.trunc93.i.peel, 1
  %i.ap = add i8 %.val66.i.peel, -1
  %.sroa.speculated.i.peel = tail call i8 @llvm.umin.i8(i8 %i.ap, i8 %i.ao) ; 2 uses
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i8 noundef zeroext %.sroa.speculated.i.peel, ptr noundef nonnull %1)
  %i.aq = zext nneg i8 %.sroa.speculated.i.peel to i32
  %i.ar = add nsw i32 %2, %i.aq
  br label %.thread

bb.j:                                             ; preds = %bb.f
  %.lhs.trunc.peel = sub i8 %.val72.i.peel, %.val9.peel
  %i.as = lshr i8 %.lhs.trunc.peel, 1
  %i.at = add i8 %.val72.i.peel, -1
  %.sroa.speculated82.i.peel = tail call i8 @llvm.umin.i8(i8 %i.at, i8 %i.as)
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 noundef zeroext %.sroa.speculated82.i.peel, ptr noundef nonnull %i.w)
  br label %.thread

bb.k:                                             ; preds = %bb.e
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISQ_EESU_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.w)
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel: ; preds = %bb.d, %bb.k
  %.sroa.023.2.peel = phi ptr [ %1, %bb.k ], [ %i.i, %bb.d ] ; 9 uses
  %.sroa.10.2.peel = phi i32 [ %2, %bb.k ], [ %i.p, %bb.d ] ; 7 uses
  %.val7.peel = load ptr, ptr %.sroa.023.2.peel, align 8, !tbaa !103 ; 2 uses
  %.val10.peel = load ptr, ptr %0, align 8, !tbaa !87 ; 2 uses
  %i.au = icmp eq ptr %.val7.peel, %.val10.peel
  br i1 %i.au, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel, %bb.a
  %.sroa.9.0.lcssa = phi i32 [ %2, %bb.a ], [ %.sroa.10.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ], [ %.sroa.10.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.023.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ], [ %.sroa.023.2.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ]
  %.val10.lcssa = phi ptr [ %.val1047, %bb.a ], [ %.val10.peel, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.peel ], [ %.val10, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit ] ; 4 uses
  %i.av = getelementptr i8, ptr %.val10.lcssa, i64 10
  %.val7.i = load i8, ptr %i.av, align 1, !tbaa !15
  %.not.i = icmp eq i8 %.val7.i, 0
  br i1 %.not.i, label %bb.l, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit

bb.l:                                             ; preds = %._crit_edge
  %i.aw = getelementptr i8, ptr %.val10.lcssa, i64 11
  %.val.i = load i8, ptr %i.aw, align 1, !tbaa !15
  %.not10.i = icmp eq i8 %.val.i, 0
  br i1 %.not10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.ax, align 8, !tbaa !103
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %.val10.lcssa, i64 256
  %.val9.i = load ptr, ptr %i.ay, align 8, !tbaa !103 ; 3 uses
  %.val1.i.i = load ptr, ptr %.val9.i, align 8, !tbaa !103
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22try_merge_or_rebalanceEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit: ; preds = %bb.u, %bb.s
  %.sroa.023.2 = phi ptr [ %.sroa.023.048, %bb.u ], [ %i.bl, %bb.s ] ; 2 uses
  %.val7 = load ptr, ptr %.sroa.023.2, align 8, !tbaa !103 ; 2 uses
  %.val10 = load ptr, ptr %0, align 8, !tbaa !87  ; 2 uses
  %i.cv = icmp eq ptr %.val7, %.val10
  br i1 %i.cv, label %._crit_edge, label %.lr.ph, !llvm.loop !227

.thread:                                          ; preds = %.lr.ph, %bb.x, %bb.y, %.thread.i, %bb.w, %bb.g, %bb.h, %bb.i, %.thread.i.peel, %bb.j, %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit
  %.sroa.9.2 = phi i32 [ %.sroa.9.0.lcssa, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit ], [ %2, %.lr.ph.preheader ], [ %.sroa.10.2.peel, %bb.x ], [ %2, %bb.j ], [ %2, %bb.g ], [ %2, %bb.h ], [ %i.ar, %bb.i ], [ %2, %.thread.i.peel ], [ %.sroa.10.2.peel, %bb.w ], [ %.sroa.10.2.peel, %.thread.i ], [ %.sroa.10.2.peel, %bb.y ], [ %.sroa.10.2.peel, %.lr.ph ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.lcssa, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10try_shrinkEv.exit ], [ %1, %.lr.ph.preheader ], [ %.sroa.023.2.peel, %bb.x ], [ %1, %bb.j ], [ %1, %bb.g ], [ %1, %bb.h ], [ %1, %bb.i ], [ %1, %.thread.i.peel ], [ %.sroa.023.2.peel, %bb.w ], [ %.sroa.023.2.peel, %.thread.i ], [ %.sroa.023.2.peel, %bb.y ], [ %.sroa.023.2.peel, %.lr.ph ] ; 6 uses
  %i.cw = getelementptr i8, ptr %.sroa.0.2, i64 10
  %.val6 = load i8, ptr %i.cw, align 1, !tbaa !15 ; 2 uses
  %i.cx = zext i8 %.val6 to i32
  %i.cy = icmp eq i32 %.sroa.9.2, %i.cx
  br i1 %i.cy, label %bb.z, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit

bb.z:                                             ; preds = %.thread
  %i.cz = getelementptr i8, ptr %.sroa.0.2, i64 11
  %.val1.i.i15 = load i8, ptr %i.cz, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %.val1.i.i15, 0
  br i1 %.not.i.i, label %.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z, %bb.aa
  %.01527.i.i.i = phi ptr [ %.015.val19.i.i.i, %bb.aa ], [ %.sroa.0.2, %bb.z ] ; 2 uses
  %.015.val19.i.i.i = load ptr, ptr %.01527.i.i.i, align 8, !tbaa !103 ; 4 uses
  %i.da = getelementptr i8, ptr %.015.val19.i.i.i, i64 11
  %.015.val19.val.i.i.i = load i8, ptr %i.da, align 1, !tbaa !15
  %.not22.i.i.i = icmp eq i8 %.015.val19.val.i.i.i, 0
  br i1 %.not22.i.i.i, label %bb.aa, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.db = getelementptr i8, ptr %.01527.i.i.i, i64 8
  %.015.val20.i.i.i = load i8, ptr %i.db, align 8, !tbaa !15 ; 2 uses
  %i.dc = getelementptr i8, ptr %.015.val19.i.i.i, i64 10
  %.015.val17.i.i.i = load i8, ptr %i.dc, align 1, !tbaa !15
  %i.dd = icmp eq i8 %.015.val20.i.i.i, %.015.val17.i.i.i
  br i1 %i.dd, label %.lr.ph.i.i.i, label %.critedge.loopexit29.i.i.i, !llvm.loop !162

.thread.i.i:                                      ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 256
  %i.df = zext i8 %.val6 to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.dg, %.thread.i.i ], [ %i.di, %bb.ab ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !103 ; 3 uses
  %i.dh = getelementptr i8, ptr %.116.i.i.i, i64 11
  %.116.val.i.i.i = load i8, ptr %i.dh, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %.116.val.i.i.i, 0
  %i.di = getelementptr i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i, label %bb.ab, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit, !llvm.loop !163

.critedge.loopexit29.i.i.i:                       ; preds = %bb.aa
  %i.dj = zext i8 %.015.val20.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.ab, %.thread, %.critedge.loopexit29.i.i.i, %bb.p
  %.val12.pn = phi ptr [ %.val12, %bb.p ], [ %.sroa.0.2, %.thread ], [ %.116.i.i.i, %bb.ab ], [ %.015.val19.i.i.i, %.critedge.loopexit29.i.i.i ], [ %.sroa.0.2, %.lr.ph.i.i.i ]
  %.pn = phi i32 [ %i.bd, %bb.p ], [ %.sroa.9.2, %.thread ], [ 0, %bb.ab ], [ %i.dj, %.critedge.loopexit29.i.i.i ], [ %.sroa.9.2, %.lr.ph.i.i.i ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i32 } poison, ptr %.val12.pn, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.fca.0.insert.i.pn, i32 %.pn, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11merge_nodesEPNS1_10btree_nodeISQ_EESU_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr i8, ptr %1, i64 10         ; 5 uses
  %.val22.i = load i8, ptr %i.c, align 1, !tbaa !15
  %.val25.i = load ptr, ptr %1, align 8, !tbaa !103
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val27.i = load i8, ptr %i.d, align 8, !tbaa !15
  %i.e = zext i8 %.val27.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.val25.i, i64 16
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %i.h = zext i8 %.val22.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !39
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.n, ptr %i.b, align 8, !tbaa !7
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.a
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !33
  %i.q = load i64, ptr %i.b, align 8, !tbaa !7
  store i64 %i.q, ptr %i.k, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i.i.i.i.i, %bb.a
  %i.r = phi ptr [ %i.p, %.noexc.i.i.i.i.i.i ], [ %i.k, %bb.a ] ; 2 uses
  switch i64 %i.n, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !15
  store i8 %i.s, ptr %i.r, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i
  %i.t = load i64, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !30
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !tbaa !107
  store ptr null, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val30.i = load i8, ptr %i.z, align 1, !tbaa !15 ; 2 uses
  %i.aa = zext i8 %.val30.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.aa, 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  %.not1.i.i = icmp eq i8 %.val30.i, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i
  %.val21.i = load i8, ptr %i.c, align 2, !tbaa !15
  %i.ad = zext i8 %.val21.i to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.ad
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, %.lr.ph.preheader.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i ], [ %i.ae, %.lr.ph.preheader.i.i ] ; 4 uses
  %.0122.i.i = phi ptr [ %i.az, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i ], [ %i.ab, %.lr.ph.preheader.i.i ] ; 6 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 40 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 56 ; 3 uses
  store ptr %i.af, ptr %.03.i.i, align 8, !tbaa !39
  %i.ag = load ptr, ptr %.0122.i.i, align 8, !tbaa !33 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !7
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i
  %i.ak = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ak, ptr %.03.i.i, align 8, !tbaa !33
  %i.al = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.al, ptr %i.af, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.am = phi ptr [ %i.ak, %.noexc.i.i.i.i.i.i.i.i ], [ %i.af, %.lr.ph.i.i ] ; 2 uses
  switch i64 %i.ai, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !15
  store i8 %i.an, ptr %i.am, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 48
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !30
  %i.aq = load ptr, ptr %.03.i.i, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.as = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !107
  store ptr null, ptr %i.at, align 8, !tbaa !107
  %i.au = load ptr, ptr %.0122.i.i, align 8, !tbaa !33 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !15
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %i.ac
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.i, label %.lr.ph.i.i, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10value_initIJPNS1_13map_slot_typeIS9_SJ_EEEEEvhPSP_DpOT_.exit.i
  %i.ba = getelementptr i8, ptr %1, i64 11
  %.val23.i = load i8, ptr %i.ba, align 1, !tbaa !15
  %.not.i32.i = icmp eq i8 %.val23.i, 0
  br i1 %.not.i32.i, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit..loopexit_crit_edge.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit..loopexit_crit_edge.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.i
  %.val28.pre.i = load i8, ptr %i.z, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5mergeEPSR_PSP_.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.i
  %.val20.i = load i8, ptr %i.c, align 2, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 256
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.in3.i = phi i8 [ %.val20.i, %bb.f ], [ %.0.i, %bb.g ]
  %.0192.i = phi i8 [ 0, %bb.f ], [ %i.bj, %bb.g ] ; 2 uses
  %.0.i = add i8 %.0.in3.i, 1                     ; 3 uses
  %i.bd = zext i8 %.0192.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !103 ; 3 uses
  %i.bg = zext i8 %.0.i to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bg
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !103
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i8 %.0.i, ptr %i.bi, align 1, !tbaa !15
  store ptr %1, ptr %i.bf, align 8, !tbaa !103
  %i.bj = add i8 %.0192.i, 1                      ; 2 uses
  %.val.i = load i8, ptr %i.z, align 1, !tbaa !15 ; 2 uses
  %.not.i = icmp ugt i8 %i.bj, %.val.i
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5mergeEPSR_PSP_.exit, label %bb.g, !llvm.loop !228

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5mergeEPSR_PSP_.exit: ; preds = %bb.g, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit..loopexit_crit_edge.i
  %.val28.i = phi i8 [ %.val28.pre.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit..loopexit_crit_edge.i ], [ %.val.i, %bb.g ]
  %.val29.i = load i8, ptr %i.c, align 2, !tbaa !15
  %i.bk = add i8 %.val28.i, 1
  %i.bl = add i8 %i.bk, %.val29.i
  store i8 %i.bl, ptr %i.c, align 2, !tbaa !15
  store i8 0, ptr %i.z, align 1, !tbaa !15
  %.val24.i = load ptr, ptr %1, align 8, !tbaa !103
  %.val26.i = load i8, ptr %i.d, align 8, !tbaa !15
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13remove_valuesEhhPSP_(ptr noundef nonnull align 1 dereferenceable(1) %.val24.i, i8 noundef zeroext %.val26.i, i8 noundef zeroext 1)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !103
  %i.bn = icmp eq ptr %.val, %2
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5mergeEPSR_PSP_.exit
  store ptr %1, ptr %i.bm, align 8, !tbaa !103
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5mergeEPSR_PSP_.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

declare { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageEPKNS3_4NodeERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS7_(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 41 uses
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.d = extractvalue { ptr, ptr } %i.c, 1        ; 32 uses
  %i.e = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %.val316 = load ptr, ptr %0, align 8, !tbaa !87
  %.val316.val = load ptr, ptr %.val316, align 8, !tbaa !103 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val317 = load ptr, ptr %i.g, align 8, !tbaa !103 ; 3 uses
  %i.h = getelementptr i8, ptr %.val317, i64 10
  %.val.i.i = load i8, ptr %i.h, align 1, !tbaa !15 ; 2 uses
  %i.i = zext i8 %.val.i.i to i32
  %i.j = icmp ne ptr %.val316.val, %.val317
  %i.k = icmp ne i8 %.val.i.i, 0
  %.not6.i38 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.not6.i38, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph41, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit
  %.sroa.8.040 = phi i32 [ 0, %.lr.ph41 ], [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit ] ; 3 uses
  %.sroa.03.039 = phi ptr [ %.val316.val, %.lr.ph41 ], [ %.sroa.03.1, %_ZN4absl12lts_2025051218container_internal14btree_iteratorIKNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERKSP_PSU_EppEv.exit ] ; 7 uses
  %i.p = and i32 %.sroa.8.040, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.039, i64 16
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.q ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.val315 = load ptr, ptr %i.w, align 8, !tbaa !107 ; 2 uses
  %i.x = call noundef ptr @_ZNK6google8protobuf10Descriptor15FindFieldByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 %i.v, ptr %i.t) ; 78 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.2, i32 noundef 441) #24
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 19, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit: ; preds = %bb.c
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.v, ptr %i.t)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 13, ptr nonnull @.str.12)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !85  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.ab, align 1
  %i.ac = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 %i.ac, ptr nonnull %i.ae)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

bb.h:                                             ; preds = %bb.b
  %i.ah = getelementptr i8, ptr %.val315, i64 16
  %.val = load i64, ptr %i.ah, align 8, !tbaa !94
  %i.ai = icmp eq i64 %.val, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = and i8 %i.ak, 32
  %.not7 = icmp eq i8 %i.al, 0                    ; 2 uses
  br i1 %i.ai, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.an = load i8, ptr %i.am, align 2, !tbaa !60
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !70
  %.not = icmp eq i32 %i.aq, 10
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.2, i32 noundef 449) #24
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 7, ptr nonnull @.str.13)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit unwind label %bb.o

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit: ; preds = %bb.k
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.v, ptr %i.t)
          to label %bb.l unwind label %bb.o       ; 2 uses

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 13, ptr nonnull @.str.12)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !85  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %.0.copyload.i.i.i327 = load i16, ptr %i.at, align 1
  %i.au = zext i16 %.0.copyload.i.i.i327 to i64   ; 2 uses
  %i.av = xor i64 %i.au, -1
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 %i.av
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 %i.au, ptr nonnull %i.aw)
          to label %bb.n unwind label %bb.o       ; 3 uses

end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #14

declare noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena23AllocateFromStringBlockEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2025051212log_internal14DieBecauseNullEPKciS3_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { "function-inline-cost-multiplier"="2" }
attributes #24 = { cold }
attributes #25 = { noreturn nounwind }
attributes #26 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_: argument 0"}
!11 = distinct !{!11, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_"}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv: argument 0"}
!18 = distinct !{!18, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv"}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !14, i64 0}
!21 = !{!22, !20, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!23 = !{!22, !20, i64 16}
!24 = !{!25, !8, i64 0}
!25 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !8, i64 0}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !29, i64 0}
!29 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !14, i64 0}
!30 = !{!31, !8, i64 8}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !8, i64 8, !5, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!33 = !{!31, !13, i64 0}
!34 = !{!35, !4, i64 8}
!35 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !14, i64 0, !4, i64 8, !36, i64 12}
!36 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj0EEE", !4, i64 0}
!37 = !{!35, !14, i64 0}
!38 = !{!14, !14, i64 0}
!39 = !{!32, !13, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.peeled.count", i32 1}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_: argument 0"}
!45 = distinct !{!45, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv: argument 0"}
!48 = distinct !{!48, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv"}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p2 _ZTSN6google8protobuf15FieldDescriptorE", !52, i64 0}
!52 = !{!"any p2 pointer", !14, i64 0}
!53 = !{!50, !51, i64 8}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_: argument 0"}
!56 = distinct !{!56, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv: argument 0"}
!59 = distinct !{!59, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv"}
!60 = !{!61, !5, i64 2}
!61 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !62, i64 0, !63, i64 1, !63, i64 1, !63, i64 1, !63, i64 1, !63, i64 1, !63, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !63, i64 3, !63, i64 3, !5, i64 3, !4, i64 4, !64, i64 8, !65, i64 16, !66, i64 24, !67, i64 32, !5, i64 40, !5, i64 48, !68, i64 56, !69, i64 64, !69, i64 72, !5, i64 80}
!62 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!63 = !{!"bool", !5, i64 0}
!64 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !13, i64 0}
!65 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !14, i64 0}
!66 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !14, i64 0}
!67 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !14, i64 0}
!68 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !14, i64 0}
!69 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !14, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"_ZTSN6google8protobuf8internal19FieldDescriptorLite7CppTypeE", !5, i64 0}
!72 = !{!50, !51, i64 16}
!73 = !{!74, !74, i64 0}
!74 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !14, i64 0}
!75 = !{!76, !4, i64 8}
!76 = !{!"_ZTSN6google8protobuf10DescriptorE", !62, i64 0, !63, i64 1, !63, i64 1, !5, i64 1, !5, i64 2, !77, i64 4, !4, i64 8, !64, i64 16, !65, i64 24, !67, i64 32, !78, i64 40, !69, i64 48, !69, i64 56, !74, i64 64, !79, i64 72, !67, i64 80, !80, i64 88, !81, i64 96, !74, i64 104, !82, i64 112, !83, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!77 = !{!"short", !5, i64 0}
!78 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !14, i64 0}
!79 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !14, i64 0}
!80 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !14, i64 0}
!81 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !14, i64 0}
!82 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !14, i64 0}
!83 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !52, i64 0}
!84 = !{!76, !74, i64 64}
!85 = !{!64, !13, i64 0}
!86 = distinct !{!86, !41}
!87 = !{!88, !89, i64 0}
!88 = !{!"_ZTSN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEEE", !89, i64 0, !90, i64 8, !8, i64 16}
!89 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEEE", !14, i64 0}
!90 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_22StringBtreeDefaultLessESaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISI_EEEEPNS1_10btree_nodeINS1_10map_paramsISA_SL_St4lessISA_ESN_Li256ELb0EEEEEEEE", !91, i64 0}
!91 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_22StringBtreeDefaultLessESaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISK_EEEEPNS1_10btree_nodeINS1_10map_paramsISC_SN_St4lessISC_ESP_Li256ELb0EEEEEEEESt16integer_sequenceImJLm0ELm1ELm2EEELb1EEE", !92, i64 0}
!92 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageIPNS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISI_EESt4lessISB_ESaISt4pairIKSB_SL_EELi256ELb0EEEEELm2ELb0EEE", !89, i64 0}
!93 = !{!92, !89, i64 0}
!94 = !{!88, !8, i64 16}
!95 = distinct !{!95, !41}
!96 = distinct !{null, null, null}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_: argument 0"}
!99 = distinct !{!99, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv: argument 0"}
!102 = distinct !{!102, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv"}
!103 = !{!89, !89, i64 0}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_: argument 0"}
!106 = distinct !{!106, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_"}
!107 = !{!108, !108, i64 0}
!108 = !{!"p1 _ZTSN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeE", !14, i64 0}
!109 = distinct !{!109, !41}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_: argument 0"}
!112 = distinct !{!112, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv: argument 0"}
!115 = distinct !{!115, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv"}
!116 = !{!22, !20, i64 8}
!117 = distinct !{null, null}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZSt11make_uniqueIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!120 = distinct !{!120, !"_ZSt11make_uniqueIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!121 = !{!122, !124, !126}
!122 = distinct !{!122, !123, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13insert_uniqueISt17basic_string_viewIcS7_EJRKSt21piecewise_construct_tSt5tupleIJOSU_EESY_IJEEEEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_DpOT0_: argument 0"}
!123 = distinct !{!123, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13insert_uniqueISt17basic_string_viewIcS7_EJRKSt21piecewise_construct_tSt5tupleIJOSU_EESY_IJEEEEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_DpOT0_"}
!124 = distinct !{!124, !125, !"_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE16try_emplace_implISt17basic_string_viewIcS8_EJEEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EEbEOT_DpOT0_: argument 0"}
!125 = distinct !{!125, !"_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE16try_emplace_implISt17basic_string_viewIcS8_EJEEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EEbEOT_DpOT0_"}
!126 = distinct !{!126, !127, !"_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11try_emplaceISt17basic_string_viewIcS8_ELi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_14btree_iteratorIKNS1_10btree_nodeISR_EERKSP_PS13_EEEE5valueEiE4typeELi0EEEDcOSY_DpOT1_: argument 0"}
!127 = distinct !{!127, !"_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11try_emplaceISt17basic_string_viewIcS8_ELi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_14btree_iteratorIKNS1_10btree_nodeISR_EERKSP_PS13_EEEE5valueEiE4typeELi0EEEDcOSY_DpOT1_"}
!128 = !{!129, !122, !124, !126}
!129 = distinct !{!129, !130, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_: argument 0"}
!130 = distinct !{!130, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_"}
!131 = distinct !{null}
!132 = distinct !{!132, !41}
!133 = !{!134, !89, i64 0}
!134 = !{!"_ZTSN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EE", !89, i64 0, !4, i64 8}
!135 = !{!134, !4, i64 8}
!136 = distinct !{!136, !41}
!137 = !{!138, !108, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeELb0EE", !108, i64 0}
!139 = distinct !{!139, !41}
!140 = distinct !{null, null, null, null}
!141 = distinct !{null}
!142 = distinct !{!142, !41}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_: argument 0"}
!145 = distinct !{!145, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_"}
!146 = distinct !{!146, !41}
!147 = !{!148, !150, !152, !154, !156}
!148 = distinct !{!148, !149, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_: argument 0"}
!149 = distinct !{!149, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_"}
!150 = distinct !{!150, !151, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE20internal_lower_boundISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_: argument 0"}
!151 = distinct !{!151, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE20internal_lower_boundISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_"}
!152 = distinct !{!152, !153, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_: argument 0"}
!153 = distinct !{!153, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE17lower_bound_equalISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_"}
!154 = distinct !{!154, !155, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11equal_rangeISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES10_ERKT_: argument 0"}
!155 = distinct !{!155, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11equal_rangeISt17basic_string_viewIcS7_EEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EES10_ERKT_"}
!156 = distinct !{!156, !157, !"_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_: argument 0"}
!157 = distinct !{!157, !"_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11equal_rangeISt17basic_string_viewIcS8_EEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EES12_ERKT_"}
!158 = !{!150, !152, !154, !156}
!159 = distinct !{!159, !41}
!160 = !{!152, !154, !156}
!161 = !{!154, !156}
!162 = distinct !{!162, !41}
!163 = distinct !{!163, !41}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EESX_: argument 0"}
!166 = distinct !{!166, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EESX_"}
!167 = distinct !{!167, !41}
!168 = distinct !{!168, !41}
!169 = distinct !{!169, !41}
!170 = distinct !{!170, !41}
!171 = distinct !{null}
!172 = distinct !{null, ptr @_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev, null}
!173 = distinct !{null}
!174 = distinct !{!174, !41}
!175 = distinct !{!175, !41}
!176 = distinct !{!176, !41}
!177 = distinct !{!177, !41, !178}
!178 = !{!"llvm.loop.unswitch.partial.disable"}
!179 = distinct !{!179, !41}
!180 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!181 = !{!182, !63, i64 0}
!182 = !{!"_ZTSN6google8protobuf4util13FieldMaskUtil11TrimOptionsE", !63, i64 0}
!183 = !{i8 0, i8 2}
!184 = !{}
!185 = !{!"branch_weights", !"expected", i32 2145872, i32 2145337776}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_: argument 0"}
!188 = distinct !{!188, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv: argument 0"}
!191 = distinct !{!191, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv"}
!192 = !{i64 0, i64 8, !7, i64 8, i64 8, !12}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZSt11make_uniqueIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!195 = distinct !{!195, !"_ZSt11make_uniqueIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!196 = !{!197, !199, !201}
!197 = distinct !{!197, !198, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13insert_uniqueISt17basic_string_viewIcS7_EJRKSt21piecewise_construct_tSt5tupleIJRKSU_EESY_IJEEEEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_DpOT0_: argument 0"}
!198 = distinct !{!198, !"_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE13insert_uniqueISt17basic_string_viewIcS7_EJRKSt21piecewise_construct_tSt5tupleIJRKSU_EESY_IJEEEEESM_INS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EEbERKT_DpOT0_"}
!199 = distinct !{!199, !200, !"_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE16try_emplace_implIRKSt17basic_string_viewIcS8_EJEEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EEbEOT_DpOT0_: argument 0"}
!200 = distinct !{!200, !"_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE16try_emplace_implIRKSt17basic_string_viewIcS8_EJEEESN_INS1_14btree_iteratorINS1_10btree_nodeISR_EERSP_PSP_EEbEOT_DpOT0_"}
!201 = distinct !{!201, !202, !"_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11try_emplaceISt17basic_string_viewIcS8_ELi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_14btree_iteratorIKNS1_10btree_nodeISR_EERKSP_PS13_EEEE5valueEiE4typeELi0EEEDcRKSY_DpOT1_: argument 0"}
!202 = distinct !{!202, !"_ZN4absl12lts_2025051218container_internal19btree_map_containerINS1_5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEEE11try_emplaceISt17basic_string_viewIcS8_ELi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_14btree_iteratorIKNS1_10btree_nodeISR_EERKSP_PS13_EEEE5valueEiE4typeELi0EEEDcRKSY_DpOT1_"}
!203 = !{!204, !197, !199, !201}
!204 = distinct !{!204, !205, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_: argument 0"}
!205 = distinct !{!205, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_"}
!206 = distinct !{!206, !41}
!207 = distinct !{null}
!208 = distinct !{null, null, null, null}
!209 = distinct !{!209, !41}
!210 = distinct !{!210, !41}
!211 = distinct !{!211, !41}
!212 = distinct !{ptr @_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev, null, null, null, null, null}
!213 = distinct !{!213, !41}
!214 = distinct !{!214, !41}
!215 = distinct !{!215, !41}
!216 = distinct !{!216, !41}
!217 = distinct !{!217, !41}
!218 = distinct !{!218, !41}
!219 = distinct !{!219, !41}
!220 = distinct !{!220, !41}
!221 = distinct !{!221, !41}
!222 = distinct !{!222, !41}
!223 = distinct !{null, null, ptr @_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev, null}
!224 = distinct !{null, null}
!225 = distinct !{!225, !41}
!226 = distinct !{!226, !41}
!227 = distinct !{!227, !42}
!228 = distinct !{!228, !41}
!229 = !{!230, !63, i64 0}
!230 = !{!"_ZTSN6google8protobuf4util13FieldMaskUtil12MergeOptionsE", !63, i64 0, !63, i64 1}
!231 = !{!230, !63, i64 1}
!232 = distinct !{!232, !41}
!233 = distinct !{!233, !41}
!234 = distinct !{!234, !41}
!235 = distinct !{!235, !41}
!236 = distinct !{!236, !41}
!237 = distinct !{!237, !41}
!238 = distinct !{!238, !41}
!239 = distinct !{!239, !41}
!240 = distinct !{!240, !41}
!241 = distinct !{!241, !41}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_: argument 0"}
!244 = distinct !{!244, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_"}
!245 = distinct !{!245, !41}
!246 = distinct !{!246, !41}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZSt11make_uniqueIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!249 = distinct !{!249, !"_ZSt11make_uniqueIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_: argument 0"}
!252 = distinct !{!252, !"_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE15internal_locateISt17basic_string_viewIcS7_EEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EELb1EEERKT_"}
!253 = distinct !{!253, !41}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN4absl12lts_2025051216strings_internal9JoinRangeIN6google8protobuf8internal19RepeatedPtrIteratorIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_T_SF_St17basic_string_viewIcSA_E: argument 0"}
!256 = distinct !{!256, !"_ZN4absl12lts_2025051216strings_internal9JoinRangeIN6google8protobuf8internal19RepeatedPtrIteratorIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_T_SF_St17basic_string_viewIcSA_E"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZN4absl12lts_2025051216strings_internal13JoinAlgorithmIN6google8protobuf8internal19RepeatedPtrIteratorIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvEESC_T_SF_St17basic_string_viewIcSA_ENS1_11NoFormatterE: argument 0"}
!259 = distinct !{!259, !"_ZN4absl12lts_2025051216strings_internal13JoinAlgorithmIN6google8protobuf8internal19RepeatedPtrIteratorIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvEESC_T_SF_St17basic_string_viewIcSA_ENS1_11NoFormatterE"}
!260 = !{!258, !255}
!261 = distinct !{!261, !262}
!262 = !{!"llvm.loop.unroll.disable"}
!263 = distinct !{!263, !41}
!264 = distinct !{!264, !41}
!265 = !{!266}
!266 = distinct !{!266, !267, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv: argument 0"}
!267 = distinct !{!267, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv"}
!268 = !{!269, !8, i64 0}
!269 = !{!"_ZTSN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEE", !8, i64 0, !270, i64 8, !271, i64 16, !272, i64 32, !273, i64 40, !274, i64 41}
!270 = !{!"_ZTSN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEE5StateE", !5, i64 0}
!271 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !8, i64 0, !13, i64 8}
!272 = !{!"p1 _ZTSN4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEE", !14, i64 0}
!273 = !{!"_ZTSN4absl12lts_202505126ByCharE", !5, i64 0}
!274 = !{!"_ZTSN4absl12lts_2025051210AllowEmptyE"}
!275 = !{!269, !270, i64 8}
!276 = !{!269, !272, i64 32}
!277 = distinct !{!277, !41}
!278 = !{!271, !13, i64 8}
!279 = !{!271, !8, i64 0}
!280 = !{!281, !13, i64 0}
!281 = !{!"_ZTSZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_E8raw_view", !13, i64 0, !8, i64 8}
!282 = !{!281, !8, i64 8}
!283 = distinct !{!283, !41}
!284 = distinct !{!284, !41}
!285 = distinct !{!285, !41}
!286 = distinct !{!286, !262}
!287 = distinct !{!287, !41}
!288 = distinct !{!288, !41}
!289 = distinct !{!289, !262}
!290 = !{!291, !4, i64 4}
!291 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBase3RepE", !4, i64 0, !4, i64 4, !5, i64 8}
!292 = !{!291, !4, i64 0}
end_hunk_6
