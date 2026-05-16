inline.NumInlined: 4932
inline.NumDeleted: 2065
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooISt17basic_string_viewIcS7_EEESt4pairINSE_8iteratorEbERKT_:bb.a
.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not53 = icmp eq i16 %i.ak, 0
  br i1 %.not53, label %bb.d, label %.thread, !prof !96

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.i
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i24 = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i24, i64 %i.ap
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink79 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ] ; 2 uses
  %.sink77 = phi ptr [ %i.as, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink79) ]
  store ptr %.sink79, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink77, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !502
  ret void
}

declare noundef zeroext i1 @_ZNK6google8protobuf15MapIteratorBaseILb0EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN6google8protobuf21DynamicMessageFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %common.ret33, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.sroa.09.021.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not22.i = icmp eq ptr %.sroa.09.021.i, %1
  br i1 %.not22.i, label %common.ret33, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.09.024.i = phi ptr [ %.sroa.09.021.i, %.lr.ph.i ], [ %.sroa.09.0.i, %bb.g ] ; 8 uses
  %.pn23.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.09.024.i, %bb.g ] ; 2 uses
  %i.h = getelementptr i8, ptr %.pn23.i, i64 24
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !419 ; 5 uses
  %.val1.i.i = load ptr, ptr %i.g, align 8, !tbaa !419 ; 2 uses
  %i.i = load i32, ptr %.val.i.i, align 8, !tbaa !422 ; 4 uses
  %i.j = load i32, ptr %.val1.i.i, align 8, !tbaa !422 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp sgt i32 %i.i, %i.j
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !424
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !424
  %i.q = icmp slt i32 %i.n, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i, %bb.c
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.09.024.i, align 8
  %i.r = ptrtoint ptr %.sroa.09.024.i to i64
  %i.s = sub i64 %i.r, %i.b
  %i.t = ashr exact i64 %i.s, 4                   ; 5 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.t, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.09.024.i, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  store i32 %i.y, ptr %i.x, align 8, !tbaa !431
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !660
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !419
  %i.ac = add nsw i64 %.010.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !907

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.09.024.i, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.t, 4
  br i1 %i.ad, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !431
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !660
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !419
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !3
  store i32 %i.am, ptr %i.al, align 8, !tbaa !431
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !660
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !419
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.as = load i32, ptr %i.aq, align 8, !tbaa !3
  store i32 %i.as, ptr %i.ar, align 8, !tbaa !431
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !660
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.au, ptr %i.av, align 8, !tbaa !419
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 8, !tbaa !3
  store i32 %i.ay, ptr %i.ax, align 8, !tbaa !431
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !660
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !419
  %i.bc = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.bd = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i, !llvm.loop !908

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i
  store i32 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !431
  store ptr %.val.i.i, ptr %i.g, align 8, !tbaa !419
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i, %bb.d
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.09.024.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i
  %.sroa.05.0.i.i = phi ptr [ %.sroa.09.024.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -16 ; 2 uses
  %i.bf = getelementptr i8, ptr %.sroa.05.0.i.i, i64 -8
  %.val2.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !419 ; 3 uses
  %i.bg = load i32, ptr %.val2.i.i.i, align 8, !tbaa !422 ; 2 uses
  %i.bh = icmp slt i32 %i.i, %i.bg
  br i1 %i.bh, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = icmp sgt i32 %i.i, %i.bg
  br i1 %i.bi, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.f
  %i.bj = load i32, ptr %i.be, align 4, !tbaa !424
  %i.bk = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !424
  %i.bm = icmp slt i32 %i.bj, %i.bl
  br i1 %i.bm, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i, %bb.e
  %i.bn = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !3
  store i32 %i.bn, ptr %.sroa.05.0.i.i, align 8, !tbaa !431
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i, i64 8
  store ptr %.val2.i.i.i, ptr %i.bo, align 8, !tbaa !419
  br label %bb.e, !llvm.loop !909

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i, %bb.f
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.05.0.i.i, align 8, !tbaa !431
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i, i64 8
  store ptr %.val.i.i, ptr %i.bp, align 8, !tbaa !419
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i
  %.sroa.09.0.i = getelementptr inbounds nuw i8, ptr %.sroa.09.024.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.09.0.i, %1
  br i1 %.not.i, label %common.ret33, label %bb.c, !llvm.loop !910

common.ret33:                                     ; preds = %.preheader.i, %bb.b, %bb.g, %bb.h
  ret void

bb.h:                                             ; preds = %bb.a
  %i.bq = lshr i64 %i.d, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bq ; 4 uses
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_(ptr %0, ptr %i.br)
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_(ptr %i.br, ptr %1)
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.a, %i.bs
  %i.bu = ashr exact i64 %i.bt, 4
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_SK_T0_SL_T1_(ptr %0, ptr %i.br, ptr %1, i64 noundef %i.bq, i64 noundef %i.bu)
  br label %common.ret33
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_SK_T0_SL_T1_SL_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2)
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2)
  tail call fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_SK_T0_SL_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret33
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #34

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_(ptr %0, ptr %1, ptr noundef %2) unnamed_addr #35 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 96
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_.exit.i
  %.sroa.038.041.i = phi ptr [ %i.iq, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_.exit.i ], [ %0, %bb.a ] ; 96 uses
  %i.g = getelementptr i8, ptr %.sroa.038.041.i, i64 8 ; 12 uses
  %.sroa.09.024.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 16 ; 4 uses
  %i.h = getelementptr i8, ptr %.sroa.038.041.i, i64 24 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !419 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !419 ; 3 uses
  %i.i = load i32, ptr %.val.i.i.i, align 8, !tbaa !422 ; 5 uses
  %i.j = load i32, ptr %.val1.i.i.i, align 8, !tbaa !422 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = icmp sgt i32 %i.i, %i.j
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !424
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !424
  %i.q = icmp slt i32 %i.n, %i.p
  br i1 %i.q, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.09.024.i.ptr.i, align 8
  %i.r = load i32, ptr %.sroa.038.041.i, align 8, !tbaa !3
  store i32 %i.r, ptr %.sroa.09.024.i.ptr.i, align 8, !tbaa !431
  store ptr %.val1.i.i.i, ptr %i.h, align 8, !tbaa !419
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.038.041.i, align 8, !tbaa !431
  store ptr %.val.i.i.i, ptr %i.g, align 8, !tbaa !419
  br label %bb.e

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i, %bb.b
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %.sroa.09.024.i.ptr.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.i
  %.sroa.05.0.i.i.i = phi ptr [ %.sroa.09.024.i.ptr.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.i ], [ %.sroa.0.0.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.i ] ; 6 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.i, i64 -16 ; 2 uses
  %i.t = getelementptr i8, ptr %.sroa.05.0.i.i.i, i64 -8
  %.val2.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !419 ; 3 uses
  %i.u = load i32, ptr %.val2.i.i.i.i, align 8, !tbaa !422 ; 2 uses
  %i.v = icmp slt i32 %i.i, %i.u
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp sgt i32 %i.i, %i.u
  br i1 %i.w, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.i: ; preds = %bb.d
  %i.x = load i32, ptr %i.s, align 4, !tbaa !424
  %i.y = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !424
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.i, %bb.c
  %i.ab = load i32, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !3
  store i32 %i.ab, ptr %.sroa.05.0.i.i.i, align 8, !tbaa !431
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 8
  store ptr %.val2.i.i.i.i, ptr %i.ac, align 8, !tbaa !419
  br label %bb.c, !llvm.loop !909

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.i, %bb.d
  store i32 %.sroa.03.0.copyload.i.i.i, ptr %.sroa.05.0.i.i.i, align 8, !tbaa !431
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 8
  store ptr %.val.i.i.i, ptr %i.ad, align 8, !tbaa !419
  %.val1.i.i.1.pre.i = load ptr, ptr %i.g, align 8, !tbaa !419 ; 2 uses
  %.pre.i = load i32, ptr %.val1.i.i.1.pre.i, align 8, !tbaa !422
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  %i.ae = phi i32 [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.i ], [ %i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i ] ; 2 uses
  %i.af = phi ptr [ %.val1.i.i.1.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.i ], [ %.val.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i ] ; 2 uses
  %.sroa.09.024.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 32 ; 3 uses
  %i.ag = getelementptr i8, ptr %.sroa.038.041.i, i64 40
  %.val.i.i.1.i = load ptr, ptr %i.ag, align 8, !tbaa !419 ; 6 uses
  %i.ah = load i32, ptr %.val.i.i.1.i, align 8, !tbaa !422 ; 5 uses
  %i.ai = icmp slt i32 %i.ah, %i.ae
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.preheader.i.1.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp sgt i32 %i.ah, %i.ae
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.1.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.1.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.1.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.1.i, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !424
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !424
  %i.ao = icmp slt i32 %i.al, %i.an
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.preheader.i.1.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.1.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.1.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.1.i, %bb.f
  %.sroa.03.0.copyload.i.i.1.i = load i32, ptr %.sroa.09.024.i.ptr.1.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.1.i, i64 4
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.1.i
  %.sroa.05.0.i.i.1.i = phi ptr [ %.sroa.09.024.i.ptr.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.1.i ], [ %.sroa.0.0.i.i.1.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.1.i ] ; 6 uses
  %.sroa.0.0.i.i.1.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.1.i, i64 -16 ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.05.0.i.i.1.i, i64 -8
  %.val2.i.i.i.1.i = load ptr, ptr %i.aq, align 8, !tbaa !419 ; 3 uses
  %i.ar = load i32, ptr %.val2.i.i.i.1.i, align 8, !tbaa !422 ; 2 uses
  %i.as = icmp slt i32 %i.ah, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.1.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = icmp sgt i32 %i.ah, %i.ar
  br i1 %i.at, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.1.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.1.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.1.i: ; preds = %bb.h
  %i.au = load i32, ptr %i.ap, align 4, !tbaa !424
  %i.av = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.1.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !424
  %i.ax = icmp slt i32 %i.au, %i.aw
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.1.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.1.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.1.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.1.i, %bb.h
  store i32 %.sroa.03.0.copyload.i.i.1.i, ptr %.sroa.05.0.i.i.1.i, align 8, !tbaa !431
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.1.i, i64 8
  store ptr %.val.i.i.1.i, ptr %i.ay, align 8, !tbaa !419
  %.val1.i.i.2.pre.i = load ptr, ptr %i.g, align 8, !tbaa !419 ; 2 uses
  %.pre47.i = load i32, ptr %.val1.i.i.2.pre.i, align 8, !tbaa !422
  br label %bb.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.1.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.1.i, %bb.g
  %i.az = load i32, ptr %.sroa.0.0.i.i.1.i, align 4, !tbaa !3
  store i32 %i.az, ptr %.sroa.05.0.i.i.1.i, align 8, !tbaa !431
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.1.i, i64 8
  store ptr %.val2.i.i.i.1.i, ptr %i.ba, align 8, !tbaa !419
  br label %bb.g, !llvm.loop !909

.lr.ph.i.i.i.i.i.preheader.i.1.i:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.1.i, %bb.e
  %.sroa.0.0.copyload.i.1.i = load i32, ptr %.sroa.09.024.i.ptr.1.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 32
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !3
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !431
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !660
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 40
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !419
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 16
  %i.bi = load i32, ptr %.sroa.038.041.i, align 8, !tbaa !3
  store i32 %i.bi, ptr %i.bh, align 8, !tbaa !431
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 24
  store ptr %i.af, ptr %i.bj, align 8, !tbaa !419
  store i32 %.sroa.0.0.copyload.i.1.i, ptr %.sroa.038.041.i, align 8, !tbaa !431
  store ptr %.val.i.i.1.i, ptr %i.g, align 8, !tbaa !419
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.preheader.i.1.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.1.i
  %i.bk = phi i32 [ %i.ah, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %.pre47.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.1.i ] ; 2 uses
  %i.bl = phi ptr [ %.val.i.i.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %.val1.i.i.2.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.1.i ] ; 2 uses
  %.sroa.09.024.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48 ; 3 uses
  %i.bm = getelementptr i8, ptr %.sroa.038.041.i, i64 56
  %.val.i.i.2.i = load ptr, ptr %i.bm, align 8, !tbaa !419 ; 6 uses
  %i.bn = load i32, ptr %.val.i.i.2.i, align 8, !tbaa !422 ; 5 uses
  %i.bo = icmp slt i32 %i.bn, %i.bk
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.preheader.i.2.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp sgt i32 %i.bn, %i.bk
  br i1 %i.bp, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.2.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.2.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.2.i: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i.2.i, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !424
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !424
  %i.bu = icmp slt i32 %i.br, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.preheader.i.2.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.2.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.2.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.2.i, %bb.j
  %.sroa.03.0.copyload.i.i.2.i = load i32, ptr %.sroa.09.024.i.ptr.2.i, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.2.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.2.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.2.i
  %.sroa.05.0.i.i.2.i = phi ptr [ %.sroa.09.024.i.ptr.2.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.2.i ], [ %.sroa.0.0.i.i.2.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.2.i ] ; 6 uses
  %.sroa.0.0.i.i.2.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.2.i, i64 -16 ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.05.0.i.i.2.i, i64 -8
  %.val2.i.i.i.2.i = load ptr, ptr %i.bw, align 8, !tbaa !419 ; 3 uses
  %i.bx = load i32, ptr %.val2.i.i.i.2.i, align 8, !tbaa !422 ; 2 uses
  %i.by = icmp slt i32 %i.bn, %i.bx
  br i1 %i.by, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.2.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp sgt i32 %i.bn, %i.bx
  br i1 %i.bz, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.2.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.2.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.2.i: ; preds = %bb.l
  %i.ca = load i32, ptr %i.bv, align 4, !tbaa !424
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.2.i, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !424
  %i.cd = icmp slt i32 %i.ca, %i.cc
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.2.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.2.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.2.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.2.i, %bb.l
  store i32 %.sroa.03.0.copyload.i.i.2.i, ptr %.sroa.05.0.i.i.2.i, align 8, !tbaa !431
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.2.i, i64 8
  store ptr %.val.i.i.2.i, ptr %i.ce, align 8, !tbaa !419
  %.val1.i.i.3.pre.i = load ptr, ptr %i.g, align 8, !tbaa !419 ; 2 uses
  %.pre49.i = load i32, ptr %.val1.i.i.3.pre.i, align 8, !tbaa !422
  br label %bb.m

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.2.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.2.i, %bb.k
  %i.cf = load i32, ptr %.sroa.0.0.i.i.2.i, align 4, !tbaa !3
  store i32 %i.cf, ptr %.sroa.05.0.i.i.2.i, align 8, !tbaa !431
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.2.i, i64 8
  store ptr %.val2.i.i.i.2.i, ptr %i.cg, align 8, !tbaa !419
  br label %bb.k, !llvm.loop !909

.lr.ph.i.i.i.i.i.preheader.i.2.i:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.2.i, %bb.i
  %.sroa.0.0.copyload.i.2.i = load i32, ptr %.sroa.09.024.i.ptr.2.i, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48
  %i.cj = load i32, ptr %i.ch, align 8, !tbaa !3
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !431
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !660
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !419
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 32
  %i.cp = load i32, ptr %i.cn, align 8, !tbaa !3
  store i32 %i.cp, ptr %i.co, align 8, !tbaa !431
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !660
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 40
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !419
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 16
  %i.cu = load i32, ptr %.sroa.038.041.i, align 8, !tbaa !3
  store i32 %i.cu, ptr %i.ct, align 8, !tbaa !431
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 24
  store ptr %i.bl, ptr %i.cv, align 8, !tbaa !419
  store i32 %.sroa.0.0.copyload.i.2.i, ptr %.sroa.038.041.i, align 8, !tbaa !431
  store ptr %.val.i.i.2.i, ptr %i.g, align 8, !tbaa !419
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.preheader.i.2.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.2.i
  %i.cw = phi i32 [ %i.bn, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %.pre49.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.2.i ] ; 2 uses
  %i.cx = phi ptr [ %.val.i.i.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %.val1.i.i.3.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.2.i ] ; 2 uses
  %.sroa.09.024.i.ptr.3.i = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 64 ; 3 uses
  %i.cy = getelementptr i8, ptr %.sroa.038.041.i, i64 72
  %.val.i.i.3.i = load ptr, ptr %i.cy, align 8, !tbaa !419 ; 6 uses
  %i.cz = load i32, ptr %.val.i.i.3.i, align 8, !tbaa !422 ; 5 uses
  %i.da = icmp slt i32 %i.cz, %i.cw
  br i1 %i.da, label %.lr.ph.i.i.i.i.i.preheader.i.3.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = icmp sgt i32 %i.cz, %i.cw
  br i1 %i.db, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.3.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.3.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.3.i: ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i.i.3.i, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !424
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !424
  %i.dg = icmp slt i32 %i.dd, %i.df
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.preheader.i.3.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.3.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.3.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.3.i, %bb.n
  %.sroa.03.0.copyload.i.i.3.i = load i32, ptr %.sroa.09.024.i.ptr.3.i, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.val.i.i.3.i, i64 4
  br label %bb.o

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.3.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.3.i
  %.sroa.05.0.i.i.3.i = phi ptr [ %.sroa.09.024.i.ptr.3.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.3.i ], [ %.sroa.0.0.i.i.3.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.3.i ] ; 6 uses
  %.sroa.0.0.i.i.3.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.3.i, i64 -16 ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.05.0.i.i.3.i, i64 -8
  %.val2.i.i.i.3.i = load ptr, ptr %i.di, align 8, !tbaa !419 ; 3 uses
  %i.dj = load i32, ptr %.val2.i.i.i.3.i, align 8, !tbaa !422 ; 2 uses
  %i.dk = icmp slt i32 %i.cz, %i.dj
  br i1 %i.dk, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.3.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = icmp sgt i32 %i.cz, %i.dj
  br i1 %i.dl, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.3.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.3.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.3.i: ; preds = %bb.p
  %i.dm = load i32, ptr %i.dh, align 4, !tbaa !424
  %i.dn = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.3.i, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !424
  %i.dp = icmp slt i32 %i.dm, %i.do
  br i1 %i.dp, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.3.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.3.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.3.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.3.i, %bb.p
  store i32 %.sroa.03.0.copyload.i.i.3.i, ptr %.sroa.05.0.i.i.3.i, align 8, !tbaa !431
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.3.i, i64 8
  store ptr %.val.i.i.3.i, ptr %i.dq, align 8, !tbaa !419
  %.val1.i.i.4.pre.i = load ptr, ptr %i.g, align 8, !tbaa !419 ; 2 uses
  %.pre51.i = load i32, ptr %.val1.i.i.4.pre.i, align 8, !tbaa !422
  br label %bb.q

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.3.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.3.i, %bb.o
  %i.dr = load i32, ptr %.sroa.0.0.i.i.3.i, align 4, !tbaa !3
  store i32 %i.dr, ptr %.sroa.05.0.i.i.3.i, align 8, !tbaa !431
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.3.i, i64 8
  store ptr %.val2.i.i.i.3.i, ptr %i.ds, align 8, !tbaa !419
  br label %bb.o, !llvm.loop !909

.lr.ph.i.i.i.i.i.preheader.i.3.i:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.3.i, %bb.m
  %.sroa.0.0.copyload.i.3.i = load i32, ptr %.sroa.09.024.i.ptr.3.i, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 64
  %i.dv = load i32, ptr %i.dt, align 8, !tbaa !3
  store i32 %i.dv, ptr %i.du, align 8, !tbaa !431
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !660
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 72
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !419
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48
  %i.eb = load i32, ptr %i.dz, align 8, !tbaa !3
  store i32 %i.eb, ptr %i.ea, align 8, !tbaa !431
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !660
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !419
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 32
  %i.eh = load i32, ptr %i.ef, align 8, !tbaa !3
  store i32 %i.eh, ptr %i.eg, align 8, !tbaa !431
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !660
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 40
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !419
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 16
  %i.em = load i32, ptr %.sroa.038.041.i, align 8, !tbaa !3
  store i32 %i.em, ptr %i.el, align 8, !tbaa !431
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 24
  store ptr %i.cx, ptr %i.en, align 8, !tbaa !419
  store i32 %.sroa.0.0.copyload.i.3.i, ptr %.sroa.038.041.i, align 8, !tbaa !431
  store ptr %.val.i.i.3.i, ptr %i.g, align 8, !tbaa !419
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.preheader.i.3.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.3.i
  %i.eo = phi i32 [ %i.cz, %.lr.ph.i.i.i.i.i.preheader.i.3.i ], [ %.pre51.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.3.i ] ; 2 uses
  %i.ep = phi ptr [ %.val.i.i.3.i, %.lr.ph.i.i.i.i.i.preheader.i.3.i ], [ %.val1.i.i.4.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.3.i ] ; 2 uses
  %.sroa.09.024.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 80 ; 3 uses
  %i.eq = getelementptr i8, ptr %.sroa.038.041.i, i64 88
  %.val.i.i.4.i = load ptr, ptr %i.eq, align 8, !tbaa !419 ; 6 uses
  %i.er = load i32, ptr %.val.i.i.4.i, align 8, !tbaa !422 ; 5 uses
  %i.es = icmp slt i32 %i.er, %i.eo
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.preheader.i.4.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.et = icmp sgt i32 %i.er, %i.eo
  br i1 %i.et, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.4.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.4.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.4.i: ; preds = %bb.r
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i.i.4.i, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !424
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !424
  %i.ey = icmp slt i32 %i.ev, %i.ex
  br i1 %i.ey, label %.lr.ph.i.i.i.i.i.preheader.i.4.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.4.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.4.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.4.i, %bb.r
  %.sroa.03.0.copyload.i.i.4.i = load i32, ptr %.sroa.09.024.i.ptr.4.i, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i.i.4.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.4.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.4.i
  %.sroa.05.0.i.i.4.i = phi ptr [ %.sroa.09.024.i.ptr.4.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.4.i ], [ %.sroa.0.0.i.i.4.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.4.i ] ; 6 uses
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.4.i, i64 -16 ; 2 uses
  %i.fa = getelementptr i8, ptr %.sroa.05.0.i.i.4.i, i64 -8
  %.val2.i.i.i.4.i = load ptr, ptr %i.fa, align 8, !tbaa !419 ; 3 uses
  %i.fb = load i32, ptr %.val2.i.i.i.4.i, align 8, !tbaa !422 ; 2 uses
  %i.fc = icmp slt i32 %i.er, %i.fb
  br i1 %i.fc, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.4.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fd = icmp sgt i32 %i.er, %i.fb
  br i1 %i.fd, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.4.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.4.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.4.i: ; preds = %bb.t
  %i.fe = load i32, ptr %i.ez, align 4, !tbaa !424
  %i.ff = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.4.i, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !424
  %i.fh = icmp slt i32 %i.fe, %i.fg
  br i1 %i.fh, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.4.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.4.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.4.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.4.i, %bb.t
  store i32 %.sroa.03.0.copyload.i.i.4.i, ptr %.sroa.05.0.i.i.4.i, align 8, !tbaa !431
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.4.i, i64 8
  store ptr %.val.i.i.4.i, ptr %i.fi, align 8, !tbaa !419
  %.val1.i.i.5.pre.i = load ptr, ptr %i.g, align 8, !tbaa !419 ; 2 uses
  %.pre53.i = load i32, ptr %.val1.i.i.5.pre.i, align 8, !tbaa !422
  br label %bb.u

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.4.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.4.i, %bb.s
  %i.fj = load i32, ptr %.sroa.0.0.i.i.4.i, align 4, !tbaa !3
  store i32 %i.fj, ptr %.sroa.05.0.i.i.4.i, align 8, !tbaa !431
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.4.i, i64 8
  store ptr %.val2.i.i.i.4.i, ptr %i.fk, align 8, !tbaa !419
  br label %bb.s, !llvm.loop !909

.lr.ph.i.i.i.i.i.preheader.i.4.i:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.4.i, %bb.q
  %.sroa.0.0.copyload.i.4.i = load i32, ptr %.sroa.09.024.i.ptr.4.i, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 80
  %i.fn = load i32, ptr %i.fl, align 8, !tbaa !3
  store i32 %i.fn, ptr %i.fm, align 8, !tbaa !431
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !660
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 88
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !419
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 64
  %i.ft = load i32, ptr %i.fr, align 8, !tbaa !3
  store i32 %i.ft, ptr %i.fs, align 8, !tbaa !431
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !660
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 72
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !419
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48
  %i.fz = load i32, ptr %i.fx, align 8, !tbaa !3
  store i32 %i.fz, ptr %i.fy, align 8, !tbaa !431
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !660
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !419
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 32
  %i.gf = load i32, ptr %i.gd, align 8, !tbaa !3
  store i32 %i.gf, ptr %i.ge, align 8, !tbaa !431
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !660
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 40
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !419
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 16
  %i.gk = load i32, ptr %.sroa.038.041.i, align 8, !tbaa !3
  store i32 %i.gk, ptr %i.gj, align 8, !tbaa !431
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 24
  store ptr %i.ep, ptr %i.gl, align 8, !tbaa !419
  store i32 %.sroa.0.0.copyload.i.4.i, ptr %.sroa.038.041.i, align 8, !tbaa !431
  store ptr %.val.i.i.4.i, ptr %i.g, align 8, !tbaa !419
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.preheader.i.4.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.4.i
  %i.gm = phi i32 [ %i.er, %.lr.ph.i.i.i.i.i.preheader.i.4.i ], [ %.pre53.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.4.i ] ; 2 uses
  %i.gn = phi ptr [ %.val.i.i.4.i, %.lr.ph.i.i.i.i.i.preheader.i.4.i ], [ %.val1.i.i.5.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.4.i ] ; 2 uses
  %.sroa.09.024.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 96 ; 3 uses
  %i.go = getelementptr i8, ptr %.sroa.038.041.i, i64 104
  %.val.i.i.5.i = load ptr, ptr %i.go, align 8, !tbaa !419 ; 5 uses
  %i.gp = load i32, ptr %.val.i.i.5.i, align 8, !tbaa !422 ; 4 uses
  %i.gq = icmp slt i32 %i.gp, %i.gm
  br i1 %i.gq, label %.lr.ph.i.i.i.i.i.preheader.i.5.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gr = icmp sgt i32 %i.gp, %i.gm
  br i1 %i.gr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.5.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.5.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.5.i: ; preds = %bb.v
  %i.gs = getelementptr inbounds nuw i8, ptr %.val.i.i.5.i, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !424
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !424
  %i.gw = icmp slt i32 %i.gt, %i.gv
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.preheader.i.5.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.5.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.5.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.5.i, %bb.v
  %.sroa.03.0.copyload.i.i.5.i = load i32, ptr %.sroa.09.024.i.ptr.5.i, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.val.i.i.5.i, i64 4
  br label %bb.w

bb.w:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.5.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.5.i
  %.sroa.05.0.i.i.5.i = phi ptr [ %.sroa.09.024.i.ptr.5.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i.5.i ], [ %.sroa.0.0.i.i.5.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.5.i ] ; 6 uses
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i.5.i, i64 -16 ; 2 uses
  %i.gy = getelementptr i8, ptr %.sroa.05.0.i.i.5.i, i64 -8
  %.val2.i.i.i.5.i = load ptr, ptr %i.gy, align 8, !tbaa !419 ; 3 uses
  %i.gz = load i32, ptr %.val2.i.i.i.5.i, align 8, !tbaa !422 ; 2 uses
  %i.ha = icmp slt i32 %i.gp, %i.gz
  br i1 %i.ha, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.5.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hb = icmp sgt i32 %i.gp, %i.gz
  br i1 %i.hb, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.5.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.5.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.5.i: ; preds = %bb.x
  %i.hc = load i32, ptr %i.gx, align 4, !tbaa !424
  %i.hd = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.5.i, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !424
  %i.hf = icmp slt i32 %i.hc, %i.he
  br i1 %i.hf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.5.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.5.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.5.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.5.i, %bb.x
  store i32 %.sroa.03.0.copyload.i.i.5.i, ptr %.sroa.05.0.i.i.5.i, align 8, !tbaa !431
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.5.i, i64 8
  store ptr %.val.i.i.5.i, ptr %i.hg, align 8, !tbaa !419
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i.5.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i.5.i, %bb.w
  %i.hh = load i32, ptr %.sroa.0.0.i.i.5.i, align 4, !tbaa !3
  store i32 %i.hh, ptr %.sroa.05.0.i.i.5.i, align 8, !tbaa !431
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.5.i, i64 8
  store ptr %.val2.i.i.i.5.i, ptr %i.hi, align 8, !tbaa !419
  br label %bb.w, !llvm.loop !909

.lr.ph.i.i.i.i.i.preheader.i.5.i:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.5.i, %bb.u
  %.sroa.0.0.copyload.i.5.i = load i32, ptr %.sroa.09.024.i.ptr.5.i, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 80
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 96
  %i.hl = load i32, ptr %i.hj, align 8, !tbaa !3
  store i32 %i.hl, ptr %i.hk, align 8, !tbaa !431
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 88
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !660
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 104
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !419
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 64
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 80
  %i.hr = load i32, ptr %i.hp, align 8, !tbaa !3
  store i32 %i.hr, ptr %i.hq, align 8, !tbaa !431
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 72
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !660
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 88
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !419
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 64
  %i.hx = load i32, ptr %i.hv, align 8, !tbaa !3
  store i32 %i.hx, ptr %i.hw, align 8, !tbaa !431
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !660
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 72
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !419
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48
  %i.id = load i32, ptr %i.ib, align 8, !tbaa !3
  store i32 %i.id, ptr %i.ic, align 8, !tbaa !431
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 40
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !660
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !419
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 32
  %i.ij = load i32, ptr %i.ih, align 8, !tbaa !3
  store i32 %i.ij, ptr %i.ii, align 8, !tbaa !431
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !660
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 40
  store ptr %i.il, ptr %i.im, align 8, !tbaa !419
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 16
  %i.io = load i32, ptr %.sroa.038.041.i, align 8, !tbaa !3
  store i32 %i.io, ptr %i.in, align 8, !tbaa !431
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 24
  store ptr %i.gn, ptr %i.ip, align 8, !tbaa !419
  store i32 %.sroa.0.0.copyload.i.5.i, ptr %.sroa.038.041.i, align 8, !tbaa !431
  store ptr %.val.i.i.5.i, ptr %i.g, align 8, !tbaa !419
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_.exit.i

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.5.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i.5.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 112 ; 3 uses
  %i.ir = ptrtoint ptr %i.iq to i64               ; 2 uses
  %i.is = sub i64 %i.a, %i.ir
  %i.it = icmp sgt i64 %i.is, 96
  br i1 %i.it, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !911

._crit_edge.i:                                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_.exit.i, %bb.a
  %.sroa.038.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.iq, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_.exit.i ] ; 5 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.ir, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_.exit.i ]
  %i.iu = icmp eq ptr %.sroa.038.0.lcssa.i, %1
  br i1 %i.iu, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_.exit, label %.preheader.i10.i

.preheader.i10.i:                                 ; preds = %._crit_edge.i
  %.sroa.09.021.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i, i64 16 ; 2 uses
  %.not22.i12.i = icmp eq ptr %.sroa.09.021.i11.i, %1
  br i1 %.not22.i12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_.exit, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.preheader.i10.i
  %i.iv = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 8 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.lr.ph.i13.i
  %.sroa.09.024.i14.i = phi ptr [ %.sroa.09.021.i11.i, %.lr.ph.i13.i ], [ %.sroa.09.0.i26.i, %bb.ac ] ; 8 uses
  %.pn23.i15.i = phi ptr [ %.sroa.038.0.lcssa.i, %.lr.ph.i13.i ], [ %.sroa.09.024.i14.i, %bb.ac ] ; 2 uses
  %i.iw = getelementptr i8, ptr %.pn23.i15.i, i64 24
  %.val.i.i16.i = load ptr, ptr %i.iw, align 8, !tbaa !419 ; 5 uses
  %.val1.i.i17.i = load ptr, ptr %i.iv, align 8, !tbaa !419 ; 2 uses
  %i.ix = load i32, ptr %.val.i.i16.i, align 8, !tbaa !422 ; 4 uses
  %i.iy = load i32, ptr %.val1.i.i17.i, align 8, !tbaa !422 ; 2 uses
  %i.iz = icmp slt i32 %i.ix, %i.iy
  br i1 %i.iz, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i29.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ja = icmp sgt i32 %i.ix, %i.iy
  br i1 %i.ja, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i19.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i18.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i18.i: ; preds = %bb.z
  %i.jb = getelementptr inbounds nuw i8, ptr %.val.i.i16.i, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !424
  %i.jd = getelementptr inbounds nuw i8, ptr %.val1.i.i17.i, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !424
  %i.jf = icmp slt i32 %i.jc, %i.je
  br i1 %i.jf, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i29.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i29.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i18.i, %bb.y
  %.sroa.0.0.copyload.i30.i = load i32, ptr %.sroa.09.024.i14.i, align 8
  %i.jg = ptrtoint ptr %.sroa.09.024.i14.i to i64
  %i.jh = sub i64 %i.jg, %.lcssa.i
  %i.ji = ashr exact i64 %i.jh, 4                 ; 5 uses
  %i.jj = icmp sgt i64 %i.ji, 0
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i.preheader.i32.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i31.i

.lr.ph.i.i.i.i.i.preheader.i32.i:                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i29.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.pn23.i15.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.ji, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i33.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i33.i.prol

.lr.ph.i.i.i.i.i.i33.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i32.i, %.lr.ph.i.i.i.i.i.i33.i.prol
  %.010.i.i.i.i.i.i34.i.prol = phi i64 [ %i.jr, %.lr.ph.i.i.i.i.i.i33.i.prol ], [ %i.ji, %.lr.ph.i.i.i.i.i.preheader.i32.i ]
  %.069.i.i.i.i.i.i35.i.prol = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.i33.i.prol ], [ %i.jk, %.lr.ph.i.i.i.i.i.preheader.i32.i ] ; 2 uses
  %.078.i.i.i.i.i.i36.i.prol = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i33.i.prol ], [ %.sroa.09.024.i14.i, %.lr.ph.i.i.i.i.i.preheader.i32.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i33.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i32.i ]
  %i.jl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i36.i.prol, i64 -16 ; 3 uses
  %i.jm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i35.i.prol, i64 -16 ; 3 uses
  %i.jn = load i32, ptr %i.jl, align 4, !tbaa !3
  store i32 %i.jn, ptr %i.jm, align 8, !tbaa !431
  %i.jo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i36.i.prol, i64 -8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !660
  %i.jq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i35.i.prol, i64 -8
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !419
  %i.jr = add nsw i64 %.010.i.i.i.i.i.i34.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i33.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i33.i.prol, !llvm.loop !912

.lr.ph.i.i.i.i.i.i33.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i33.i.prol, %.lr.ph.i.i.i.i.i.preheader.i32.i
  %.010.i.i.i.i.i.i34.i.unr = phi i64 [ %i.ji, %.lr.ph.i.i.i.i.i.preheader.i32.i ], [ %i.jr, %.lr.ph.i.i.i.i.i.i33.i.prol ]
  %.069.i.i.i.i.i.i35.i.unr = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.preheader.i32.i ], [ %i.jm, %.lr.ph.i.i.i.i.i.i33.i.prol ]
  %.078.i.i.i.i.i.i36.i.unr = phi ptr [ %.sroa.09.024.i14.i, %.lr.ph.i.i.i.i.i.preheader.i32.i ], [ %i.jl, %.lr.ph.i.i.i.i.i.i33.i.prol ]
  %i.js = icmp ult i64 %i.ji, 4
  br i1 %i.js, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i31.i, label %.lr.ph.i.i.i.i.i.i33.i

.lr.ph.i.i.i.i.i.i33.i:                           ; preds = %.lr.ph.i.i.i.i.i.i33.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i33.i
  %.010.i.i.i.i.i.i34.i = phi i64 [ %i.kr, %.lr.ph.i.i.i.i.i.i33.i ], [ %.010.i.i.i.i.i.i34.i.unr, %.lr.ph.i.i.i.i.i.i33.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i35.i = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i.i33.i ], [ %.069.i.i.i.i.i.i35.i.unr, %.lr.ph.i.i.i.i.i.i33.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i36.i = phi ptr [ %i.kl, %.lr.ph.i.i.i.i.i.i33.i ], [ %.078.i.i.i.i.i.i36.i.unr, %.lr.ph.i.i.i.i.i.i33.i.prol.loopexit ] ; 8 uses
  %i.jt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i36.i, i64 -16
  %i.ju = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i35.i, i64 -16
  %i.jv = load i32, ptr %i.jt, align 4, !tbaa !3
  store i32 %i.jv, ptr %i.ju, align 8, !tbaa !431
  %i.jw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i36.i, i64 -8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !660
  %i.jy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i35.i, i64 -8
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !419
  %i.jz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i36.i, i64 -32
  %i.ka = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i35.i, i64 -32
  %i.kb = load i32, ptr %i.jz, align 8, !tbaa !3
  store i32 %i.kb, ptr %i.ka, align 8, !tbaa !431
  %i.kc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i36.i, i64 -24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !660
  %i.ke = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i35.i, i64 -24
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !419
  %i.kf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i36.i, i64 -48
  %i.kg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i35.i, i64 -48
  %i.kh = load i32, ptr %i.kf, align 8, !tbaa !3
  store i32 %i.kh, ptr %i.kg, align 8, !tbaa !431
  %i.ki = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i36.i, i64 -40
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !660
  %i.kk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i35.i, i64 -40
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !419
  %i.kl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i36.i, i64 -64 ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i35.i, i64 -64 ; 2 uses
  %i.kn = load i32, ptr %i.kl, align 8, !tbaa !3
  store i32 %i.kn, ptr %i.km, align 8, !tbaa !431
  %i.ko = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i36.i, i64 -56
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !660
  %i.kq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i35.i, i64 -56
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !419
  %i.kr = add nsw i64 %.010.i.i.i.i.i.i34.i, -4
  %i.ks = icmp sgt i64 %.010.i.i.i.i.i.i34.i, 4
  br i1 %i.ks, label %.lr.ph.i.i.i.i.i.i33.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i31.i, !llvm.loop !908

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i31.i: ; preds = %.lr.ph.i.i.i.i.i.i33.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i33.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i29.i
  store i32 %.sroa.0.0.copyload.i30.i, ptr %.sroa.038.0.lcssa.i, align 8, !tbaa !431
  store ptr %.val.i.i16.i, ptr %i.iv, align 8, !tbaa !419
  br label %bb.ac

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i18.i, %bb.z
  %.sroa.03.0.copyload.i.i20.i = load i32, ptr %.sroa.09.024.i14.i, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %.val.i.i16.i, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i28.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i19.i
  %.sroa.05.0.i.i21.i = phi ptr [ %.sroa.09.024.i14.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread19.i19.i ], [ %.sroa.0.0.i.i22.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i28.i ] ; 6 uses
  %.sroa.0.0.i.i22.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i21.i, i64 -16 ; 2 uses
  %i.ku = getelementptr i8, ptr %.sroa.05.0.i.i21.i, i64 -8
  %.val2.i.i.i23.i = load ptr, ptr %i.ku, align 8, !tbaa !419 ; 3 uses
  %i.kv = load i32, ptr %.val2.i.i.i23.i, align 8, !tbaa !422 ; 2 uses
  %i.kw = icmp slt i32 %i.ix, %i.kv
  br i1 %i.kw, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i28.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kx = icmp sgt i32 %i.ix, %i.kv
  br i1 %i.kx, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i25.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i24.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i24.i: ; preds = %bb.ab
  %i.ky = load i32, ptr %i.kt, align 4, !tbaa !424
  %i.kz = getelementptr inbounds nuw i8, ptr %.val2.i.i.i23.i, i64 4
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !424
  %i.lb = icmp slt i32 %i.ky, %i.la
  br i1 %i.lb, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i25.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i.i28.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i24.i, %bb.aa
  %i.lc = load i32, ptr %.sroa.0.0.i.i22.i, align 4, !tbaa !3
  store i32 %i.lc, ptr %.sroa.05.0.i.i21.i, align 8, !tbaa !431
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i21.i, i64 8
  store ptr %.val2.i.i.i23.i, ptr %i.ld, align 8, !tbaa !419
  br label %bb.aa, !llvm.loop !909

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i25.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclISt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i.i24.i, %bb.ab
  store i32 %.sroa.03.0.copyload.i.i20.i, ptr %.sroa.05.0.i.i21.i, align 8, !tbaa !431
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i21.i, i64 8
  store ptr %.val.i.i16.i, ptr %i.le, align 8, !tbaa !419
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_T0_.exit.i25.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i31.i
  %.sroa.09.0.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.09.024.i14.i, i64 16 ; 2 uses
  %.not.i27.i = icmp eq ptr %.sroa.09.0.i26.i, %1
  br i1 %.not.i27.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_.exit, label %bb.y, !llvm.loop !910

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_.exit: ; preds = %bb.ac, %._crit_edge.i, %.preheader.i10.i
  %i.lf = icmp sgt i64 %i.d, 7
  br i1 %i.lf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_.exit
  %i.lg = ptrtoint ptr %i.e to i64                ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit
  %.056 = phi i64 [ 7, %.lr.ph ], [ %i.tc, %_ZSt17__merge_sort_loopIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit ] ; 7 uses
  %i.lh = shl nsw i64 %.056, 1                    ; 3 uses
  %.not69.i = icmp slt i64 %i.d, %i.lh
  br i1 %.not69.i, label %._crit_edge.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad
  %.idx.i = shl i64 %.056, 4                      ; 2 uses
  %.idx60.i = shl i64 %.056, 5                    ; 2 uses
  %.not61.i = icmp eq i64 %.idx.i, %.idx60.i
  br label %bb.ae

bb.ae:                                            ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i, %.lr.ph.i
  %.071.i = phi ptr [ %2, %.lr.ph.i ], [ %.08.lcssa.i.i.i.i.i9.i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 2 uses
  %.sroa.052.070.i = phi ptr [ %0, %.lr.ph.i ], [ %i.lj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 4 uses
  %i.li = getelementptr inbounds i8, ptr %.sroa.052.070.i, i64 %.idx.i ; 4 uses
  %i.lj = getelementptr inbounds i8, ptr %.sroa.052.070.i, i64 %.idx60.i ; 4 uses
  br i1 %.not61.i, label %.critedge.i.i, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %bb.ae, %bb.ag
  %.029.i.i = phi ptr [ %i.mb, %bb.ag ], [ %.071.i, %bb.ae ] ; 5 uses
  %.sroa.019.028.i.i = phi ptr [ %.sroa.019.1.i.i, %bb.ag ], [ %.sroa.052.070.i, %bb.ae ] ; 4 uses
  %.sroa.015.027.i.i = phi ptr [ %.sroa.015.1.i.i, %bb.ag ], [ %i.li, %bb.ae ] ; 4 uses
  %i.lk = getelementptr i8, ptr %.sroa.015.027.i.i, i64 8
  %.val.i.i.i22 = load ptr, ptr %i.lk, align 8, !tbaa !419 ; 3 uses
  %i.ll = getelementptr i8, ptr %.sroa.019.028.i.i, i64 8
  %.val1.i.i.i23 = load ptr, ptr %i.ll, align 8, !tbaa !419 ; 3 uses
  %i.lm = load i32, ptr %.val.i.i.i22, align 8, !tbaa !422 ; 2 uses
  %i.ln = load i32, ptr %.val1.i.i.i23, align 8, !tbaa !422 ; 2 uses
  %i.lo = icmp slt i32 %i.lm, %i.ln
  br i1 %i.lo, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i21
  %i.lp = icmp sgt i32 %i.lm, %i.ln
  br i1 %i.lp, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i24

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i24: ; preds = %bb.af
  %i.lq = getelementptr inbounds nuw i8, ptr %.val.i.i.i22, i64 4
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !424
  %i.ls = getelementptr inbounds nuw i8, ptr %.val1.i.i.i23, i64 4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !424
  %i.lu = icmp slt i32 %i.lr, %i.lt
  br i1 %i.lu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i24, %.lr.ph.i.i21
  %i.lv = load i32, ptr %.sroa.015.027.i.i, align 4, !tbaa !3
  store i32 %i.lv, ptr %.029.i.i, align 8, !tbaa !431
  %i.lw = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8
  store ptr %.val.i.i.i22, ptr %i.lw, align 8, !tbaa !419
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.015.027.i.i, i64 16
  br label %bb.ag

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i.i24, %bb.af
  %i.ly = load i32, ptr %.sroa.019.028.i.i, align 4, !tbaa !3
  store i32 %i.ly, ptr %.029.i.i, align 8, !tbaa !431
  %i.lz = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8
  store ptr %.val1.i.i.i23, ptr %i.lz, align 8, !tbaa !419
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.019.028.i.i, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i.i
  %.sroa.015.1.i.i = phi ptr [ %i.lx, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i.i ], [ %.sroa.015.027.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i.i ] ; 3 uses
  %.sroa.019.1.i.i = phi ptr [ %.sroa.019.028.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i.i ], [ %i.ma, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i.i ] ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 16 ; 2 uses
  %i.mc = icmp ne ptr %.sroa.019.1.i.i, %i.li
  %i.md = icmp ne ptr %.sroa.015.1.i.i, %i.lj
  %or.cond.i.i = select i1 %i.mc, i1 %i.md, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.i, !llvm.loop !913

.critedge.i.i:                                    ; preds = %bb.ag, %bb.ae
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.li, %bb.ae ], [ %.sroa.015.1.i.i, %bb.ag ] ; 3 uses
  %.sroa.019.0.lcssa.i.i = phi ptr [ %.sroa.052.070.i, %bb.ae ], [ %.sroa.019.1.i.i, %bb.ag ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.071.i, %bb.ae ], [ %i.mb, %bb.ag ] ; 3 uses
  %i.me = ptrtoint ptr %i.li to i64
  %i.mf = ptrtoint ptr %.sroa.019.0.lcssa.i.i to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = ashr exact i64 %i.mg, 4                 ; 5 uses
  %i.mi = icmp sgt i64 %i.mh, 0
  br i1 %i.mi, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.critedge.i.i
  %xtraiter168 = and i64 %i.mh, 3                 ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.i.prol = phi i64 [ %i.mp, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.mh, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.i.prol = phi ptr [ %i.mo, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.prol = phi ptr [ %i.mn, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.019.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.mj = load i32, ptr %.0910.i.i.i.i.i.i.i.prol, align 4, !tbaa !3
  store i32 %i.mj, ptr %.0811.i.i.i.i.i.i.i.prol, align 8, !tbaa !431
  %i.mk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.prol, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !660
  %i.mm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.prol, i64 8
  store ptr %i.ml, ptr %i.mm, align 8, !tbaa !419
  %i.mn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.mp = add nsw i64 %.012.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !914

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.i.unr = phi i64 [ %i.mh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.mp, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.mo, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.019.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.mn, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.lcssa152.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.mo, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.mq = icmp ult i64 %i.mh, 4
  br i1 %i.mq, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.np, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.no, %.lr.ph.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.nn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.mr = load i32, ptr %.0910.i.i.i.i.i.i.i, align 4, !tbaa !3
  store i32 %i.mr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !431
  %i.ms = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !660
  %i.mu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  store ptr %i.mt, ptr %i.mu, align 8, !tbaa !419
  %i.mv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 16
  %i.mx = load i32, ptr %i.mv, align 8, !tbaa !3
  store i32 %i.mx, ptr %i.mw, align 8, !tbaa !431
  %i.my = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !660
  %i.na = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 24
  store ptr %i.mz, ptr %i.na, align 8, !tbaa !419
  %i.nb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32
  %i.nc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 32
  %i.nd = load i32, ptr %i.nb, align 8, !tbaa !3
  store i32 %i.nd, ptr %i.nc, align 8, !tbaa !431
  %i.ne = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !660
  %i.ng = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 40
  store ptr %i.nf, ptr %i.ng, align 8, !tbaa !419
  %i.nh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 48
  %i.nj = load i32, ptr %i.nh, align 8, !tbaa !3
  store i32 %i.nj, ptr %i.ni, align 8, !tbaa !431
  %i.nk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !660
  %i.nm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 56
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !419
  %i.nn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 64
  %i.no = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.np = add nsw i64 %.012.i.i.i.i.i.i.i, -4
  %i.nq = icmp sgt i64 %.012.i.i.i.i.i.i.i, 4
  br i1 %i.nq, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i.i, !llvm.loop !915

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.critedge.i.i
  %.08.lcssa.i.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i.i, %.critedge.i.i ], [ %.lcssa152.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.no, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.nr = ptrtoint ptr %i.lj to i64               ; 2 uses
  %i.ns = ptrtoint ptr %.sroa.015.0.lcssa.i.i to i64
  %i.nt = sub i64 %i.nr, %i.ns
  %i.nu = ashr exact i64 %i.nt, 4                 ; 5 uses
  %i.nv = icmp sgt i64 %i.nu, 0
  br i1 %i.nv, label %.lr.ph.i.i.i.i.i10.i.i.preheader, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i

.lr.ph.i.i.i.i.i10.i.i.preheader:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i.i
  %xtraiter171 = and i64 %i.nu, 3                 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i.i.i.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i.i.prol

.lr.ph.i.i.i.i.i10.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i10.i.i.preheader, %.lr.ph.i.i.i.i.i10.i.i.prol
  %.012.i.i.i.i.i11.i.i.prol = phi i64 [ %i.oc, %.lr.ph.i.i.i.i.i10.i.i.prol ], [ %i.nu, %.lr.ph.i.i.i.i.i10.i.i.preheader ]
  %.0811.i.i.i.i.i12.i.i.prol = phi ptr [ %i.ob, %.lr.ph.i.i.i.i.i10.i.i.prol ], [ %.08.lcssa.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i10.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i.i.prol = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i10.i.i.prol ], [ %.sroa.015.0.lcssa.i.i, %.lr.ph.i.i.i.i.i10.i.i.preheader ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph.i.i.i.i.i10.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i.i.preheader ]
  %i.nw = load i32, ptr %.0910.i.i.i.i.i13.i.i.prol, align 4, !tbaa !3
  store i32 %i.nw, ptr %.0811.i.i.i.i.i12.i.i.prol, align 8, !tbaa !431
  %i.nx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.i.prol, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !660
  %i.nz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.i.prol, i64 8
  store ptr %i.ny, ptr %i.nz, align 8, !tbaa !419
  %i.oa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.i.prol, i64 16 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.i.prol, i64 16 ; 3 uses
  %i.oc = add nsw i64 %.012.i.i.i.i.i11.i.i.prol, -1 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph.i.i.i.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i.i.prol, !llvm.loop !916

.lr.ph.i.i.i.i.i10.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i10.i.i.prol, %.lr.ph.i.i.i.i.i10.i.i.preheader
  %.012.i.i.i.i.i11.i.i.unr = phi i64 [ %i.nu, %.lr.ph.i.i.i.i.i10.i.i.preheader ], [ %i.oc, %.lr.ph.i.i.i.i.i10.i.i.prol ]
  %.0811.i.i.i.i.i12.i.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i10.i.i.preheader ], [ %i.ob, %.lr.ph.i.i.i.i.i10.i.i.prol ]
  %.0910.i.i.i.i.i13.i.i.unr = phi ptr [ %.sroa.015.0.lcssa.i.i, %.lr.ph.i.i.i.i.i10.i.i.preheader ], [ %i.oa, %.lr.ph.i.i.i.i.i10.i.i.prol ]
  %.lcssa153.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i10.i.i.preheader ], [ %i.ob, %.lr.ph.i.i.i.i.i10.i.i.prol ]
  %i.od = icmp ult i64 %i.nu, 4
  br i1 %i.od, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i, label %.lr.ph.i.i.i.i.i10.i.i

.lr.ph.i.i.i.i.i10.i.i:                           ; preds = %.lr.ph.i.i.i.i.i10.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i.i
  %.012.i.i.i.i.i11.i.i = phi i64 [ %i.pc, %.lr.ph.i.i.i.i.i10.i.i ], [ %.012.i.i.i.i.i11.i.i.unr, %.lr.ph.i.i.i.i.i10.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i.i = phi ptr [ %i.pb, %.lr.ph.i.i.i.i.i10.i.i ], [ %.0811.i.i.i.i.i12.i.i.unr, %.lr.ph.i.i.i.i.i10.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i.i = phi ptr [ %i.pa, %.lr.ph.i.i.i.i.i10.i.i ], [ %.0910.i.i.i.i.i13.i.i.unr, %.lr.ph.i.i.i.i.i10.i.i.prol.loopexit ] ; 9 uses
  %i.oe = load i32, ptr %.0910.i.i.i.i.i13.i.i, align 4, !tbaa !3
  store i32 %i.oe, ptr %.0811.i.i.i.i.i12.i.i, align 8, !tbaa !431
  %i.of = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.i, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !660
  %i.oh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.i, i64 8
  store ptr %i.og, ptr %i.oh, align 8, !tbaa !419
  %i.oi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.i, i64 16
  %i.oj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.i, i64 16
  %i.ok = load i32, ptr %i.oi, align 8, !tbaa !3
  store i32 %i.ok, ptr %i.oj, align 8, !tbaa !431
  %i.ol = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.i, i64 24
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !660
  %i.on = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.i, i64 24
  store ptr %i.om, ptr %i.on, align 8, !tbaa !419
  %i.oo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.i, i64 32
  %i.op = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.i, i64 32
  %i.oq = load i32, ptr %i.oo, align 8, !tbaa !3
  store i32 %i.oq, ptr %i.op, align 8, !tbaa !431
  %i.or = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.i, i64 40
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !660
  %i.ot = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.i, i64 40
  store ptr %i.os, ptr %i.ot, align 8, !tbaa !419
  %i.ou = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.i, i64 48
  %i.ov = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.i, i64 48
  %i.ow = load i32, ptr %i.ou, align 8, !tbaa !3
  store i32 %i.ow, ptr %i.ov, align 8, !tbaa !431
  %i.ox = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.i, i64 56
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !660
  %i.oz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.i, i64 56
  store ptr %i.oy, ptr %i.oz, align 8, !tbaa !419
  %i.pa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.i, i64 64
  %i.pb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.i, i64 64 ; 2 uses
  %i.pc = add nsw i64 %.012.i.i.i.i.i11.i.i, -4
  %i.pd = icmp sgt i64 %.012.i.i.i.i.i11.i.i, 4
  br i1 %i.pd, label %.lr.ph.i.i.i.i.i10.i.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i, !llvm.loop !915

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i10.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i.i
  %.08.lcssa.i.i.i.i.i9.i.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i.i ], [ %.lcssa153.unr, %.lr.ph.i.i.i.i.i10.i.i.prol.loopexit ], [ %i.pb, %.lr.ph.i.i.i.i.i10.i.i ] ; 2 uses
  %i.pe = sub i64 %i.a, %i.nr
  %i.pf = ashr exact i64 %i.pe, 4                 ; 2 uses
  %.not.i = icmp slt i64 %i.pf, %i.lh
  br i1 %.not.i, label %._crit_edge.i25, label %bb.ae, !llvm.loop !917

._crit_edge.i25:                                  ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i, %bb.ad
  %.sroa.052.0.lcssa.i = phi ptr [ %0, %bb.ad ], [ %i.lj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.ad ], [ %.08.lcssa.i.i.i.i.i9.i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 2 uses
  %.lcssa67.i = phi i64 [ %i.d, %bb.ad ], [ %i.pf, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.056, i64 %.lcssa67.i) ; 2 uses
  %.idx62.i = shl nsw i64 %.sroa.speculated.i, 4
  %i.pg = getelementptr inbounds i8, ptr %.sroa.052.0.lcssa.i, i64 %.idx62.i ; 5 uses
  %i.ph = icmp ne i64 %.sroa.speculated.i, 0
  %i.pi = icmp ne ptr %i.pg, %1
  %or.cond26.i16.i = select i1 %i.ph, i1 %i.pi, i1 false
  br i1 %or.cond26.i16.i, label %.lr.ph.i32.i, label %.critedge.i17.i

.lr.ph.i32.i:                                     ; preds = %._crit_edge.i25, %bb.ai
  %.029.i33.i = phi ptr [ %i.qa, %bb.ai ], [ %.0.lcssa.i, %._crit_edge.i25 ] ; 5 uses
  %.sroa.019.028.i34.i = phi ptr [ %.sroa.019.1.i41.i, %bb.ai ], [ %.sroa.052.0.lcssa.i, %._crit_edge.i25 ] ; 4 uses
  %.sroa.015.027.i35.i = phi ptr [ %.sroa.015.1.i40.i, %bb.ai ], [ %i.pg, %._crit_edge.i25 ] ; 4 uses
  %i.pj = getelementptr i8, ptr %.sroa.015.027.i35.i, i64 8
  %.val.i.i36.i = load ptr, ptr %i.pj, align 8, !tbaa !419 ; 3 uses
  %i.pk = getelementptr i8, ptr %.sroa.019.028.i34.i, i64 8
  %.val1.i.i37.i = load ptr, ptr %i.pk, align 8, !tbaa !419 ; 3 uses
  %i.pl = load i32, ptr %.val.i.i36.i, align 8, !tbaa !422 ; 2 uses
  %i.pm = load i32, ptr %.val1.i.i37.i, align 8, !tbaa !422 ; 2 uses
  %i.pn = icmp slt i32 %i.pl, %i.pm
  br i1 %i.pn, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i43.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i32.i
  %i.po = icmp sgt i32 %i.pl, %i.pm
  br i1 %i.po, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i39.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i38.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i38.i: ; preds = %bb.ah
  %i.pp = getelementptr inbounds nuw i8, ptr %.val.i.i36.i, i64 4
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !424
  %i.pr = getelementptr inbounds nuw i8, ptr %.val1.i.i37.i, i64 4
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !424
  %i.pt = icmp slt i32 %i.pq, %i.ps
  br i1 %i.pt, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i43.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i39.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i43.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i38.i, %.lr.ph.i32.i
  %i.pu = load i32, ptr %.sroa.015.027.i35.i, align 4, !tbaa !3
  store i32 %i.pu, ptr %.029.i33.i, align 8, !tbaa !431
  %i.pv = getelementptr inbounds nuw i8, ptr %.029.i33.i, i64 8
  store ptr %.val.i.i36.i, ptr %i.pv, align 8, !tbaa !419
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.015.027.i35.i, i64 16
  br label %bb.ai

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i39.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.i38.i, %bb.ah
  %i.px = load i32, ptr %.sroa.019.028.i34.i, align 4, !tbaa !3
  store i32 %i.px, ptr %.029.i33.i, align 8, !tbaa !431
  %i.py = getelementptr inbounds nuw i8, ptr %.029.i33.i, i64 8
  store ptr %.val1.i.i37.i, ptr %i.py, align 8, !tbaa !419
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.019.028.i34.i, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i39.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i43.i
  %.sroa.015.1.i40.i = phi ptr [ %i.pw, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i43.i ], [ %.sroa.015.027.i35.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i39.i ] ; 3 uses
  %.sroa.019.1.i41.i = phi ptr [ %.sroa.019.028.i34.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread.i43.i ], [ %i.pz, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread23.i39.i ] ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.029.i33.i, i64 16 ; 2 uses
  %i.qb = icmp ne ptr %.sroa.019.1.i41.i, %i.pg
  %i.qc = icmp ne ptr %.sroa.015.1.i40.i, %1
  %or.cond.i42.i = select i1 %i.qb, i1 %i.qc, i1 false
  br i1 %or.cond.i42.i, label %.lr.ph.i32.i, label %.critedge.i17.i, !llvm.loop !913

.critedge.i17.i:                                  ; preds = %bb.ai, %._crit_edge.i25
  %.sroa.015.0.lcssa.i18.i = phi ptr [ %i.pg, %._crit_edge.i25 ], [ %.sroa.015.1.i40.i, %bb.ai ] ; 3 uses
  %.sroa.019.0.lcssa.i19.i = phi ptr [ %.sroa.052.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.019.1.i41.i, %bb.ai ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.qa, %bb.ai ] ; 3 uses
  %i.qd = ptrtoint ptr %i.pg to i64
  %i.qe = ptrtoint ptr %.sroa.019.0.lcssa.i19.i to i64
  %i.qf = sub i64 %i.qd, %i.qe
  %i.qg = ashr exact i64 %i.qf, 4                 ; 5 uses
  %i.qh = icmp sgt i64 %i.qg, 0
  br i1 %i.qh, label %.lr.ph.i.i.i.i.i.i28.i.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21.i

.lr.ph.i.i.i.i.i.i28.i.preheader:                 ; preds = %.critedge.i17.i
  %xtraiter174 = and i64 %i.qg, 3                 ; 2 uses
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.lr.ph.i.i.i.i.i.i28.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i28.i.prol

.lr.ph.i.i.i.i.i.i28.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i28.i.preheader, %.lr.ph.i.i.i.i.i.i28.i.prol
  %.012.i.i.i.i.i.i29.i.prol = phi i64 [ %i.qo, %.lr.ph.i.i.i.i.i.i28.i.prol ], [ %i.qg, %.lr.ph.i.i.i.i.i.i28.i.preheader ]
  %.0811.i.i.i.i.i.i30.i.prol = phi ptr [ %i.qn, %.lr.ph.i.i.i.i.i.i28.i.prol ], [ %.0.lcssa.i20.i, %.lr.ph.i.i.i.i.i.i28.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i31.i.prol = phi ptr [ %i.qm, %.lr.ph.i.i.i.i.i.i28.i.prol ], [ %.sroa.019.0.lcssa.i19.i, %.lr.ph.i.i.i.i.i.i28.i.preheader ] ; 3 uses
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph.i.i.i.i.i.i28.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i28.i.preheader ]
  %i.qi = load i32, ptr %.0910.i.i.i.i.i.i31.i.prol, align 4, !tbaa !3
  store i32 %i.qi, ptr %.0811.i.i.i.i.i.i30.i.prol, align 8, !tbaa !431
  %i.qj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31.i.prol, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !660
  %i.ql = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30.i.prol, i64 8
  store ptr %i.qk, ptr %i.ql, align 8, !tbaa !419
  %i.qm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31.i.prol, i64 16 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30.i.prol, i64 16 ; 3 uses
  %i.qo = add nsw i64 %.012.i.i.i.i.i.i29.i.prol, -1 ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph.i.i.i.i.i.i28.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i28.i.prol, !llvm.loop !918

.lr.ph.i.i.i.i.i.i28.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i28.i.prol, %.lr.ph.i.i.i.i.i.i28.i.preheader
  %.012.i.i.i.i.i.i29.i.unr = phi i64 [ %i.qg, %.lr.ph.i.i.i.i.i.i28.i.preheader ], [ %i.qo, %.lr.ph.i.i.i.i.i.i28.i.prol ]
  %.0811.i.i.i.i.i.i30.i.unr = phi ptr [ %.0.lcssa.i20.i, %.lr.ph.i.i.i.i.i.i28.i.preheader ], [ %i.qn, %.lr.ph.i.i.i.i.i.i28.i.prol ]
  %.0910.i.i.i.i.i.i31.i.unr = phi ptr [ %.sroa.019.0.lcssa.i19.i, %.lr.ph.i.i.i.i.i.i28.i.preheader ], [ %i.qm, %.lr.ph.i.i.i.i.i.i28.i.prol ]
  %.lcssa157.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i28.i.preheader ], [ %i.qn, %.lr.ph.i.i.i.i.i.i28.i.prol ]
  %i.qp = icmp ult i64 %i.qg, 4
  br i1 %i.qp, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21.i, label %.lr.ph.i.i.i.i.i.i28.i

.lr.ph.i.i.i.i.i.i28.i:                           ; preds = %.lr.ph.i.i.i.i.i.i28.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i28.i
  %.012.i.i.i.i.i.i29.i = phi i64 [ %i.ro, %.lr.ph.i.i.i.i.i.i28.i ], [ %.012.i.i.i.i.i.i29.i.unr, %.lr.ph.i.i.i.i.i.i28.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i30.i = phi ptr [ %i.rn, %.lr.ph.i.i.i.i.i.i28.i ], [ %.0811.i.i.i.i.i.i30.i.unr, %.lr.ph.i.i.i.i.i.i28.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i31.i = phi ptr [ %i.rm, %.lr.ph.i.i.i.i.i.i28.i ], [ %.0910.i.i.i.i.i.i31.i.unr, %.lr.ph.i.i.i.i.i.i28.i.prol.loopexit ] ; 9 uses
  %i.qq = load i32, ptr %.0910.i.i.i.i.i.i31.i, align 4, !tbaa !3
  store i32 %i.qq, ptr %.0811.i.i.i.i.i.i30.i, align 8, !tbaa !431
  %i.qr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31.i, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !660
  %i.qt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30.i, i64 8
  store ptr %i.qs, ptr %i.qt, align 8, !tbaa !419
  %i.qu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31.i, i64 16
  %i.qv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30.i, i64 16
  %i.qw = load i32, ptr %i.qu, align 8, !tbaa !3
  store i32 %i.qw, ptr %i.qv, align 8, !tbaa !431
  %i.qx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31.i, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !660
  %i.qz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30.i, i64 24
  store ptr %i.qy, ptr %i.qz, align 8, !tbaa !419
  %i.ra = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31.i, i64 32
  %i.rb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30.i, i64 32
  %i.rc = load i32, ptr %i.ra, align 8, !tbaa !3
  store i32 %i.rc, ptr %i.rb, align 8, !tbaa !431
  %i.rd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31.i, i64 40
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !660
  %i.rf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30.i, i64 40
  store ptr %i.re, ptr %i.rf, align 8, !tbaa !419
  %i.rg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31.i, i64 48
  %i.rh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30.i, i64 48
  %i.ri = load i32, ptr %i.rg, align 8, !tbaa !3
  store i32 %i.ri, ptr %i.rh, align 8, !tbaa !431
  %i.rj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31.i, i64 56
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !660
  %i.rl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30.i, i64 56
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !419
  %i.rm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31.i, i64 64
  %i.rn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30.i, i64 64 ; 2 uses
  %i.ro = add nsw i64 %.012.i.i.i.i.i.i29.i, -4
  %i.rp = icmp sgt i64 %.012.i.i.i.i.i.i29.i, 4
  br i1 %i.rp, label %.lr.ph.i.i.i.i.i.i28.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21.i, !llvm.loop !915

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21.i: ; preds = %.lr.ph.i.i.i.i.i.i28.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i28.i, %.critedge.i17.i
  %.08.lcssa.i.i.i.i.i.i22.i = phi ptr [ %.0.lcssa.i20.i, %.critedge.i17.i ], [ %.lcssa157.unr, %.lr.ph.i.i.i.i.i.i28.i.prol.loopexit ], [ %i.rn, %.lr.ph.i.i.i.i.i.i28.i ] ; 2 uses
  %i.rq = ptrtoint ptr %.sroa.015.0.lcssa.i18.i to i64
  %i.rr = sub i64 %i.a, %i.rq
  %i.rs = ashr exact i64 %i.rr, 4                 ; 5 uses
  %i.rt = icmp sgt i64 %i.rs, 0
  br i1 %i.rt, label %.lr.ph.i.i.i.i.i10.i24.i.preheader, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit

.lr.ph.i.i.i.i.i10.i24.i.preheader:               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21.i
  %xtraiter177 = and i64 %i.rs, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol

.lr.ph.i.i.i.i.i10.i24.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i10.i24.i.preheader, %.lr.ph.i.i.i.i.i10.i24.i.prol
  %.012.i.i.i.i.i11.i25.i.prol = phi i64 [ %i.sa, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %i.rs, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i.prol = phi ptr [ %i.rz, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i.prol = phi ptr [ %i.ry, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %i.ru = load i32, ptr %.0910.i.i.i.i.i13.i27.i.prol, align 4, !tbaa !3
  store i32 %i.ru, ptr %.0811.i.i.i.i.i12.i26.i.prol, align 8, !tbaa !431
  %i.rv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !660
  %i.rx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 8
  store ptr %i.rw, ptr %i.rx, align 8, !tbaa !419
  %i.ry = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 16 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 16 ; 2 uses
  %i.sa = add nsw i64 %.012.i.i.i.i.i11.i25.i.prol, -1 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol, !llvm.loop !919

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.rs, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.sa, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.rz, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.ry, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.sb = icmp ult i64 %i.rs, 4
  br i1 %i.sb, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.ta, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.sz, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.sy, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.sc = load i32, ptr %.0910.i.i.i.i.i13.i27.i, align 4, !tbaa !3
  store i32 %i.sc, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !431
  %i.sd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !660
  %i.sf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store ptr %i.se, ptr %i.sf, align 8, !tbaa !419
  %i.sg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.sh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.si = load i32, ptr %i.sg, align 8, !tbaa !3
  store i32 %i.si, ptr %i.sh, align 8, !tbaa !431
  %i.sj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !660
  %i.sl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store ptr %i.sk, ptr %i.sl, align 8, !tbaa !419
  %i.sm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.sn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.so = load i32, ptr %i.sm, align 8, !tbaa !3
  store i32 %i.so, ptr %i.sn, align 8, !tbaa !431
  %i.sp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !660
  %i.sr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store ptr %i.sq, ptr %i.sr, align 8, !tbaa !419
  %i.ss = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.st = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.su = load i32, ptr %i.ss, align 8, !tbaa !3
  store i32 %i.su, ptr %i.st, align 8, !tbaa !431
  %i.sv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !660
  %i.sx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store ptr %i.sw, ptr %i.sx, align 8, !tbaa !419
  %i.sy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.sz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.ta = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.tb = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.tb, label %.lr.ph.i.i.i.i.i10.i24.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit, !llvm.loop !915

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21.i
  %i.tc = shl nsw i64 %.056, 2                    ; 4 uses
  %.not66.i = icmp slt i64 %i.d, %i.tc
  br i1 %.not66.i, label %._crit_edge.i32, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit
  %.idx.i27 = shl nsw i64 %.056, 5                ; 2 uses
  %.idx57.i = shl nsw i64 %.056, 6                ; 2 uses
  %.not58.i = icmp eq i64 %.idx.i27, %.idx57.i
  br label %bb.aj

bb.aj:                                            ; preds = %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i, %.lr.ph.i26
  %.sroa.022.068.i = phi ptr [ %0, %.lr.ph.i26 ], [ %i.xg, %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 2 uses
  %.067.i = phi ptr [ %2, %.lr.ph.i26 ], [ %i.te, %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 4 uses
  %i.td = getelementptr inbounds i8, ptr %.067.i, i64 %.idx.i27 ; 4 uses
  %i.te = getelementptr inbounds i8, ptr %.067.i, i64 %.idx57.i ; 4 uses
  br i1 %.not58.i, label %._crit_edge.i.i, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %bb.aj, %bb.al
  %.033.i.i = phi ptr [ %.1.i.i, %bb.al ], [ %.067.i, %bb.aj ] ; 4 uses
  %.01632.i.i = phi ptr [ %.117.i.i, %bb.al ], [ %i.td, %bb.aj ] ; 4 uses
  %.sroa.0.030.i.i = phi ptr [ %i.tw, %bb.al ], [ %.sroa.022.068.i, %bb.aj ] ; 5 uses
  %i.tf = getelementptr i8, ptr %.01632.i.i, i64 8
  %.016.val.i.i = load ptr, ptr %i.tf, align 8, !tbaa !419 ; 3 uses
  %i.tg = getelementptr i8, ptr %.033.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.tg, align 8, !tbaa !419 ; 3 uses
  %i.th = load i32, ptr %.016.val.i.i, align 8, !tbaa !422 ; 2 uses
  %i.ti = load i32, ptr %.0.val.i.i, align 8, !tbaa !422 ; 2 uses
  %i.tj = icmp slt i32 %i.th, %i.ti
  br i1 %i.tj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i28
  %i.tk = icmp sgt i32 %i.th, %i.ti
  br i1 %i.tk, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i.i: ; preds = %bb.ak
  %i.tl = getelementptr inbounds nuw i8, ptr %.016.val.i.i, i64 4
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !424
  %i.tn = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 4
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !424
  %i.tp = icmp slt i32 %i.tm, %i.to
  br i1 %i.tp, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i.i, %.lr.ph.i.i28
  %i.tq = load i32, ptr %.01632.i.i, align 4, !tbaa !3
  store i32 %i.tq, ptr %.sroa.0.030.i.i, align 8, !tbaa !431
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 8
  store ptr %.016.val.i.i, ptr %i.tr, align 8, !tbaa !419
  %i.ts = getelementptr inbounds nuw i8, ptr %.01632.i.i, i64 16
  br label %bb.al

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i.i, %bb.ak
  %i.tt = load i32, ptr %.033.i.i, align 4, !tbaa !3
  store i32 %i.tt, ptr %.sroa.0.030.i.i, align 8, !tbaa !431
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 8
  store ptr %.0.val.i.i, ptr %i.tu, align 8, !tbaa !419
  %i.tv = getelementptr inbounds nuw i8, ptr %.033.i.i, i64 16
  br label %bb.al

bb.al:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i
  %.117.i.i = phi ptr [ %i.ts, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i ], [ %.01632.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %.033.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i.i ], [ %i.tv, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i.i ] ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i, i64 16 ; 2 uses
  %i.tx = icmp ne ptr %.1.i.i, %i.td
  %i.ty = icmp ne ptr %.117.i.i, %i.te
  %i.tz = select i1 %i.tx, i1 %i.ty, i1 false
  br i1 %i.tz, label %.lr.ph.i.i28, label %._crit_edge.i.i, !llvm.loop !920

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.aj
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.068.i, %bb.aj ], [ %i.tw, %bb.al ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.td, %bb.aj ], [ %.117.i.i, %bb.al ] ; 3 uses
  %.0.lcssa.i.i29 = phi ptr [ %.067.i, %bb.aj ], [ %.1.i.i, %bb.al ] ; 3 uses
  %i.ua = ptrtoint ptr %i.td to i64
  %i.ub = ptrtoint ptr %.0.lcssa.i.i29 to i64
  %i.uc = sub i64 %i.ua, %i.ub
  %i.ud = ashr exact i64 %i.uc, 4                 ; 5 uses
  %i.ue = icmp sgt i64 %i.ud, 0
  br i1 %i.ue, label %.lr.ph.i.i.i.i.i.i.i35.preheader, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i35.preheader:                 ; preds = %._crit_edge.i.i
  %xtraiter180 = and i64 %i.ud, 3                 ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i.i.i.i.i.i35.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i35.prol

.lr.ph.i.i.i.i.i.i.i35.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i35.preheader, %.lr.ph.i.i.i.i.i.i.i35.prol
  %.012.i.i.i.i.i.i.i36.prol = phi i64 [ %i.ul, %.lr.ph.i.i.i.i.i.i.i35.prol ], [ %i.ud, %.lr.ph.i.i.i.i.i.i.i35.preheader ]
  %.0811.i.i.i.i.i.i.i37.prol = phi ptr [ %i.uk, %.lr.ph.i.i.i.i.i.i.i35.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i35.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i38.prol = phi ptr [ %i.uj, %.lr.ph.i.i.i.i.i.i.i35.prol ], [ %.0.lcssa.i.i29, %.lr.ph.i.i.i.i.i.i.i35.preheader ] ; 3 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i.i.i.i.i.i35.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i35.preheader ]
  %i.uf = load i32, ptr %.0910.i.i.i.i.i.i.i38.prol, align 4, !tbaa !3
  store i32 %i.uf, ptr %.0811.i.i.i.i.i.i.i37.prol, align 8, !tbaa !431
  %i.ug = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i38.prol, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !660
  %i.ui = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i37.prol, i64 8
  store ptr %i.uh, ptr %i.ui, align 8, !tbaa !419
  %i.uj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i38.prol, i64 16 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i37.prol, i64 16 ; 3 uses
  %i.ul = add nsw i64 %.012.i.i.i.i.i.i.i36.prol, -1 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i.i.i.i.i.i35.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i35.prol, !llvm.loop !921

.lr.ph.i.i.i.i.i.i.i35.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i35.prol, %.lr.ph.i.i.i.i.i.i.i35.preheader
  %.012.i.i.i.i.i.i.i36.unr = phi i64 [ %i.ud, %.lr.ph.i.i.i.i.i.i.i35.preheader ], [ %i.ul, %.lr.ph.i.i.i.i.i.i.i35.prol ]
  %.0811.i.i.i.i.i.i.i37.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i35.preheader ], [ %i.uk, %.lr.ph.i.i.i.i.i.i.i35.prol ]
  %.0910.i.i.i.i.i.i.i38.unr = phi ptr [ %.0.lcssa.i.i29, %.lr.ph.i.i.i.i.i.i.i35.preheader ], [ %i.uj, %.lr.ph.i.i.i.i.i.i.i35.prol ]
  %.lcssa159.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i35.preheader ], [ %i.uk, %.lr.ph.i.i.i.i.i.i.i35.prol ]
  %i.um = icmp ult i64 %i.ud, 4
  br i1 %i.um, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i.i35:                           ; preds = %.lr.ph.i.i.i.i.i.i.i35.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i35
  %.012.i.i.i.i.i.i.i36 = phi i64 [ %i.vl, %.lr.ph.i.i.i.i.i.i.i35 ], [ %.012.i.i.i.i.i.i.i36.unr, %.lr.ph.i.i.i.i.i.i.i35.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i37 = phi ptr [ %i.vk, %.lr.ph.i.i.i.i.i.i.i35 ], [ %.0811.i.i.i.i.i.i.i37.unr, %.lr.ph.i.i.i.i.i.i.i35.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i38 = phi ptr [ %i.vj, %.lr.ph.i.i.i.i.i.i.i35 ], [ %.0910.i.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i.i35.prol.loopexit ] ; 9 uses
  %i.un = load i32, ptr %.0910.i.i.i.i.i.i.i38, align 4, !tbaa !3
  store i32 %i.un, ptr %.0811.i.i.i.i.i.i.i37, align 8, !tbaa !431
  %i.uo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i38, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !660
  %i.uq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i37, i64 8
  store ptr %i.up, ptr %i.uq, align 8, !tbaa !419
  %i.ur = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i38, i64 16
  %i.us = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i37, i64 16
  %i.ut = load i32, ptr %i.ur, align 8, !tbaa !3
  store i32 %i.ut, ptr %i.us, align 8, !tbaa !431
  %i.uu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i38, i64 24
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !660
  %i.uw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i37, i64 24
  store ptr %i.uv, ptr %i.uw, align 8, !tbaa !419
  %i.ux = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i38, i64 32
  %i.uy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i37, i64 32
  %i.uz = load i32, ptr %i.ux, align 8, !tbaa !3
  store i32 %i.uz, ptr %i.uy, align 8, !tbaa !431
  %i.va = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i38, i64 40
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !660
  %i.vc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i37, i64 40
  store ptr %i.vb, ptr %i.vc, align 8, !tbaa !419
  %i.vd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i38, i64 48
  %i.ve = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i37, i64 48
  %i.vf = load i32, ptr %i.vd, align 8, !tbaa !3
  store i32 %i.vf, ptr %i.ve, align 8, !tbaa !431
  %i.vg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i38, i64 56
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !660
  %i.vi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i37, i64 56
  store ptr %i.vh, ptr %i.vi, align 8, !tbaa !419
  %i.vj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i38, i64 64
  %i.vk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i37, i64 64 ; 2 uses
  %i.vl = add nsw i64 %.012.i.i.i.i.i.i.i36, -4
  %i.vm = icmp sgt i64 %.012.i.i.i.i.i.i.i36, 4
  br i1 %i.vm, label %.lr.ph.i.i.i.i.i.i.i35, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i, !llvm.loop !915

_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i35.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i35, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa159.unr, %.lr.ph.i.i.i.i.i.i.i35.prol.loopexit ], [ %i.vk, %.lr.ph.i.i.i.i.i.i.i35 ]
  %i.vn = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i30 to i64 ; 3 uses
  %i.vo = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.vp = sub i64 %i.vn, %i.vo
  %i.vq = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.vp ; 3 uses
  %i.vr = ptrtoint ptr %i.te to i64               ; 2 uses
  %i.vs = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.vt = sub i64 %i.vr, %i.vs
  %i.vu = ashr exact i64 %i.vt, 4                 ; 5 uses
  %i.vv = icmp sgt i64 %i.vu, 0
  br i1 %i.vv, label %.lr.ph.i.i.i.i.i19.i.i.preheader, label %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i

.lr.ph.i.i.i.i.i19.i.i.preheader:                 ; preds = %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i
  %xtraiter183 = and i64 %i.vu, 3                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol

.lr.ph.i.i.i.i.i19.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i.i.preheader, %.lr.ph.i.i.i.i.i19.i.i.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.wc, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.vu, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.wb, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.vq, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.wa, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %i.vw = load i32, ptr %.0910.i.i.i.i.i22.i.i.prol, align 4, !tbaa !3
  store i32 %i.vw, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !431
  %i.vx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !660
  %i.vz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store ptr %i.vy, ptr %i.vz, align 8, !tbaa !419
  %i.wa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.wc = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol, !llvm.loop !922

.lr.ph.i.i.i.i.i19.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol, %.lr.ph.i.i.i.i.i19.i.i.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.vu, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.wc, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.vq, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.wb, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.wa, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.lcssa160.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.wb, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %i.wd = icmp ult i64 %i.vu, 4
  br i1 %i.wd, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit23.loopexit.i.i, label %.lr.ph.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i19.i.i:                           ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.xc, %.lr.ph.i.i.i.i.i19.i.i ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.xb, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.xa, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %i.we = load i32, ptr %.0910.i.i.i.i.i22.i.i, align 4, !tbaa !3
  store i32 %i.we, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !431
  %i.wf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !660
  %i.wh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store ptr %i.wg, ptr %i.wh, align 8, !tbaa !419
  %i.wi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.wj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.wk = load i32, ptr %i.wi, align 8, !tbaa !3
  store i32 %i.wk, ptr %i.wj, align 8, !tbaa !431
  %i.wl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !660
  %i.wn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store ptr %i.wm, ptr %i.wn, align 8, !tbaa !419
  %i.wo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.wp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.wq = load i32, ptr %i.wo, align 8, !tbaa !3
  store i32 %i.wq, ptr %i.wp, align 8, !tbaa !431
  %i.wr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !660
  %i.wt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store ptr %i.ws, ptr %i.wt, align 8, !tbaa !419
  %i.wu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.wv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.ww = load i32, ptr %i.wu, align 8, !tbaa !3
  store i32 %i.ww, ptr %i.wv, align 8, !tbaa !431
  %i.wx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !660
  %i.wz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store ptr %i.wy, ptr %i.wz, align 8, !tbaa !419
  %i.xa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.xb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.xc = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.xd = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.xd, label %.lr.ph.i.i.i.i.i19.i.i, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit23.loopexit.i.i, !llvm.loop !915

_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit23.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit
  %.lcssa160 = phi ptr [ %.lcssa160.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ], [ %i.xb, %.lr.ph.i.i.i.i.i19.i.i ]
  %i.xe = ptrtoint ptr %.lcssa160 to i64
  br label %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i

_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i: ; preds = %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit23.loopexit.i.i, %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi i64 [ %i.vn, %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i.i ], [ %i.xe, %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit23.loopexit.i.i ]
  %i.xf = sub i64 %.08.lcssa.i.i.i.i.i18.i.i, %i.vn
  %i.xg = getelementptr inbounds i8, ptr %i.vq, i64 %i.xf ; 2 uses
  %i.xh = sub i64 %i.lg, %i.vr
  %i.xi = ashr exact i64 %i.xh, 4                 ; 2 uses
  %.not.i31 = icmp slt i64 %i.xi, %i.tc
  br i1 %.not.i31, label %._crit_edge.i32, label %bb.aj, !llvm.loop !923

._crit_edge.i32:                                  ; preds = %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit
  %.0.lcssa.i33 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit ], [ %i.te, %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit ], [ %i.xg, %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ] ; 2 uses
  %.lcssa64.i = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit ], [ %i.xi, %_ZSt12__move_mergeIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET0_T_SL_SL_SL_SK_T1_.exit.i ]
  %.sroa.speculated.i34 = tail call i64 @llvm.smin.i64(i64 %i.lh, i64 %.lcssa64.i) ; 2 uses
  %.idx59.i = shl nsw i64 %.sroa.speculated.i34, 4
  %i.xj = getelementptr inbounds i8, ptr %.0.lcssa.i33, i64 %.idx59.i ; 5 uses
  %i.xk = icmp ne i64 %.sroa.speculated.i34, 0
  %i.xl = icmp ne ptr %i.xj, %i.e
  %i.xm = and i1 %i.xk, %i.xl
  br i1 %i.xm, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i32, %bb.an
  %.033.i42.i = phi ptr [ %.1.i50.i, %bb.an ], [ %.0.lcssa.i33, %._crit_edge.i32 ] ; 4 uses
  %.01632.i43.i = phi ptr [ %.117.i49.i, %bb.an ], [ %i.xj, %._crit_edge.i32 ] ; 4 uses
  %.sroa.0.030.i44.i = phi ptr [ %i.ye, %bb.an ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i32 ] ; 5 uses
  %i.xn = getelementptr i8, ptr %.01632.i43.i, i64 8
  %.016.val.i45.i = load ptr, ptr %i.xn, align 8, !tbaa !419 ; 3 uses
  %i.xo = getelementptr i8, ptr %.033.i42.i, i64 8
  %.0.val.i46.i = load ptr, ptr %i.xo, align 8, !tbaa !419 ; 3 uses
  %i.xp = load i32, ptr %.016.val.i45.i, align 8, !tbaa !422 ; 2 uses
  %i.xq = load i32, ptr %.0.val.i46.i, align 8, !tbaa !422 ; 2 uses
  %i.xr = icmp slt i32 %i.xp, %i.xq
  br i1 %i.xr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i41.i
  %i.xs = icmp sgt i32 %i.xp, %i.xq
  br i1 %i.xs, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i47.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i47.i: ; preds = %bb.am
  %i.xt = getelementptr inbounds nuw i8, ptr %.016.val.i45.i, i64 4
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !424
  %i.xv = getelementptr inbounds nuw i8, ptr %.0.val.i46.i, i64 4
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !424
  %i.xx = icmp slt i32 %i.xu, %i.xw
  br i1 %i.xx, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i47.i, %.lr.ph.i41.i
  %i.xy = load i32, ptr %.01632.i43.i, align 4, !tbaa !3
  store i32 %i.xy, ptr %.sroa.0.030.i44.i, align 8, !tbaa !431
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i44.i, i64 8
  store ptr %.016.val.i45.i, ptr %i.xz, align 8, !tbaa !419
  %i.ya = getelementptr inbounds nuw i8, ptr %.01632.i43.i, i64 16
  br label %bb.an

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.i47.i, %bb.am
  %i.yb = load i32, ptr %.033.i42.i, align 4, !tbaa !3
  store i32 %i.yb, ptr %.sroa.0.030.i44.i, align 8, !tbaa !431
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i44.i, i64 8
  store ptr %.0.val.i46.i, ptr %i.yc, align 8, !tbaa !419
  %i.yd = getelementptr inbounds nuw i8, ptr %.033.i42.i, i64 16
  br label %bb.an

bb.an:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i
  %.117.i49.i = phi ptr [ %i.ya, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i ], [ %.01632.i43.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i ] ; 3 uses
  %.1.i50.i = phi ptr [ %.033.i42.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread.i51.i ], [ %i.yd, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEESE_EEbT_T0_.exit.thread27.i48.i ] ; 3 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i44.i, i64 16 ; 2 uses
  %i.yf = icmp ne ptr %.1.i50.i, %i.xj
  %i.yg = icmp ne ptr %.117.i49.i, %i.e
  %i.yh = select i1 %i.yf, i1 %i.yg, i1 false
  br i1 %i.yh, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !920

._crit_edge.i25.i:                                ; preds = %bb.an, %._crit_edge.i32
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i32 ], [ %i.ye, %bb.an ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.xj, %._crit_edge.i32 ], [ %.117.i49.i, %bb.an ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i33, %._crit_edge.i32 ], [ %.1.i50.i, %bb.an ] ; 3 uses
  %i.yi = ptrtoint ptr %i.xj to i64
  %i.yj = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.yk = sub i64 %i.yi, %i.yj
  %i.yl = ashr exact i64 %i.yk, 4                 ; 5 uses
  %i.ym = icmp sgt i64 %i.yl, 0
  br i1 %i.ym, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter186 = and i64 %i.yl, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.yt, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.yl, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.ys, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.yr, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.yn = load i32, ptr %.0910.i.i.i.i.i.i40.i.prol, align 4, !tbaa !3
  store i32 %i.yn, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !431
  %i.yo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !660
  %i.yq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store ptr %i.yp, ptr %i.yq, align 8, !tbaa !419
  %i.yr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.yt = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !924

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.yl, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.yt, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.ys, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.yr, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa165.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.ys, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.yu = icmp ult i64 %i.yl, 4
  br i1 %i.yu, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.zt, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.zs, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.zr, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.yv = load i32, ptr %.0910.i.i.i.i.i.i40.i, align 4, !tbaa !3
  store i32 %i.yv, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !431
  %i.yw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !660
  %i.yy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store ptr %i.yx, ptr %i.yy, align 8, !tbaa !419
  %i.yz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.za = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.zb = load i32, ptr %i.yz, align 8, !tbaa !3
  store i32 %i.zb, ptr %i.za, align 8, !tbaa !431
  %i.zc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !660
  %i.ze = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store ptr %i.zd, ptr %i.ze, align 8, !tbaa !419
  %i.zf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.zg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.zh = load i32, ptr %i.zf, align 8, !tbaa !3
  store i32 %i.zh, ptr %i.zg, align 8, !tbaa !431
  %i.zi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !660
  %i.zk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store ptr %i.zj, ptr %i.zk, align 8, !tbaa !419
  %i.zl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.zm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.zn = load i32, ptr %i.zl, align 8, !tbaa !3
  store i32 %i.zn, ptr %i.zm, align 8, !tbaa !431
  %i.zo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !660
  %i.zq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store ptr %i.zp, ptr %i.zq, align 8, !tbaa !419
  %i.zr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.zs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.zt = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.zu = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.zu, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29.i, !llvm.loop !915

_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa165.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.zs, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.zv = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.zw = sub i64 %i.lg, %i.zv
  %i.zx = ashr exact i64 %i.zw, 4                 ; 5 uses
  %i.zy = icmp sgt i64 %i.zx, 0
  br i1 %i.zy, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %_ZSt17__merge_sort_loopIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29.i
  %i.zz = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.aaa = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  %i.aac = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.aab ; 2 uses
  %xtraiter189 = and i64 %i.zx, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol

.lr.ph.i.i.i.i.i19.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i, %.lr.ph.i.i.i.i.i19.i32.i.prol
  %.012.i.i.i.i.i20.i33.i.prol = phi i64 [ %i.aaj, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.zx, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %.0811.i.i.i.i.i21.i34.i.prol = phi ptr [ %i.aai, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.aac, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.prol = phi ptr [ %i.aah, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %i.aad = load i32, ptr %.0910.i.i.i.i.i22.i35.i.prol, align 4, !tbaa !3
  store i32 %i.aad, ptr %.0811.i.i.i.i.i21.i34.i.prol, align 8, !tbaa !431
  %i.aae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 8
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !660
  %i.aag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 8
  store ptr %i.aaf, ptr %i.aag, align 8, !tbaa !419
  %i.aah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 16 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 16 ; 2 uses
  %i.aaj = add nsw i64 %.012.i.i.i.i.i20.i33.i.prol, -1 ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol, !llvm.loop !925

.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %.012.i.i.i.i.i20.i33.i.unr = phi i64 [ %i.zx, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.aaj, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.unr = phi ptr [ %i.aac, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.aai, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.aah, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %i.aak = icmp ult i64 %i.zx, 4
  br i1 %i.aak, label %_ZSt17__merge_sort_loopIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.abj, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.abi, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.abh, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %i.aal = load i32, ptr %.0910.i.i.i.i.i22.i35.i, align 4, !tbaa !3
  store i32 %i.aal, ptr %.0811.i.i.i.i.i21.i34.i, align 8, !tbaa !431
  %i.aam = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !660
  %i.aao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  store ptr %i.aan, ptr %i.aao, align 8, !tbaa !419
  %i.aap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 16
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 16
  %i.aar = load i32, ptr %i.aap, align 8, !tbaa !3
  store i32 %i.aar, ptr %i.aaq, align 8, !tbaa !431
  %i.aas = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 24
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !660
  %i.aau = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 24
  store ptr %i.aat, ptr %i.aau, align 8, !tbaa !419
  %i.aav = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 32
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 32
  %i.aax = load i32, ptr %i.aav, align 8, !tbaa !3
  store i32 %i.aax, ptr %i.aaw, align 8, !tbaa !431
  %i.aay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 40
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !660
  %i.aba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 40
  store ptr %i.aaz, ptr %i.aba, align 8, !tbaa !419
  %i.abb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 48
  %i.abc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 48
  %i.abd = load i32, ptr %i.abb, align 8, !tbaa !3
  store i32 %i.abd, ptr %i.abc, align 8, !tbaa !431
  %i.abe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 56
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !660
  %i.abg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 56
  store ptr %i.abf, ptr %i.abg, align 8, !tbaa !419
  %i.abh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 64
  %i.abi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 64
  %i.abj = add nsw i64 %.012.i.i.i.i.i20.i33.i, -4
  %i.abk = icmp sgt i64 %.012.i.i.i.i.i20.i33.i, 4
  br i1 %i.abk, label %.lr.ph.i.i.i.i.i19.i32.i, label %_ZSt17__merge_sort_loopIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit, !llvm.loop !915

_ZSt17__merge_sort_loopIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i, %_ZSt4moveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i29.i
  %i.abl = icmp slt i64 %i.tc, %i.d
  br i1 %i.abl, label %bb.ad, label %._crit_edge, !llvm.loop !926

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_SK_T0_SL_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #36 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 5 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.prol ], [ %5, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.prol ], [ %0, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.f = load i32, ptr %.0910.i.i.i.i.i.prol, align 4, !tbaa !3
  store i32 %i.f, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !431
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !660
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !419
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.l = add nsw i64 %.012.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !927

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %i.m = icmp ult i64 %i.d, 4
  br i1 %i.m, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.n = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !3
  store i32 %i.n, ptr %.0811.i.i.i.i.i, align 8, !tbaa !431
  %i.o = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !660
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !419
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.t = load i32, ptr %i.r, align 8, !tbaa !3
  store i32 %i.t, ptr %i.s, align 8, !tbaa !431
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !660
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !419
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.z = load i32, ptr %i.x, align 8, !tbaa !3
  store i32 %i.z, ptr %i.y, align 8, !tbaa !431
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !660
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !419
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.af = load i32, ptr %i.ad, align 8, !tbaa !3
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !431
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !660
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !419
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i, -4
  %i.am = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.preheader, !llvm.loop !915

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa91 = phi ptr [ %.lcssa91.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ak, %.lr.ph.i.i.i.i.i ] ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %.030.i = phi ptr [ %.1.i, %bb.e ], [ %5, %.lr.ph.i.preheader ] ; 7 uses
  %.sroa.0.028.i = phi ptr [ %i.be, %bb.e ], [ %0, %.lr.ph.i.preheader ] ; 7 uses
  %.sroa.016.027.i = phi ptr [ %.sroa.016.1.i, %bb.e ], [ %1, %.lr.ph.i.preheader ] ; 5 uses
  %.not22.i = icmp eq ptr %.sroa.016.027.i, %2
  br i1 %.not22.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = getelementptr i8, ptr %.030.i, i64 8
  %.0.val.i = load ptr, ptr %i.an, align 8, !tbaa !419 ; 3 uses
  %i.ao = getelementptr i8, ptr %.sroa.016.027.i, i64 8
  %.val.i.i = load ptr, ptr %i.ao, align 8, !tbaa !419 ; 3 uses
  %i.ap = load i32, ptr %.val.i.i, align 8, !tbaa !422 ; 2 uses
  %i.aq = load i32, ptr %.0.val.i, align 8, !tbaa !422 ; 2 uses
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = icmp sgt i32 %i.ap, %i.aq
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread20.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !424
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !424
  %i.ax = icmp slt i32 %i.au, %i.aw
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread20.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.i, %bb.c
  %i.ay = load i32, ptr %.sroa.016.027.i, align 4, !tbaa !3
  store i32 %i.ay, ptr %.sroa.0.028.i, align 8, !tbaa !431
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  store ptr %.val.i.i, ptr %i.az, align 8, !tbaa !419
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.016.027.i, i64 16
  br label %bb.e

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread20.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.i, %bb.d
  %i.bb = load i32, ptr %.030.i, align 4, !tbaa !3
  store i32 %i.bb, ptr %.sroa.0.028.i, align 8, !tbaa !431
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  store ptr %.0.val.i, ptr %i.bc, align 8, !tbaa !419
  %i.bd = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread20.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread.i
  %.sroa.016.1.i = phi ptr [ %i.ba, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread.i ], [ %.sroa.016.027.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread20.i ]
  %.1.i = phi ptr [ %.030.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread.i ], [ %i.bd, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESF_EEbT_T0_.exit.thread20.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 16
  %.not.i = icmp eq ptr %.1.i, %.lcssa91
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !928

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bf = ptrtoint ptr %.lcssa91 to i64
  %i.bg = ptrtoint ptr %.030.i to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 4                 ; 5 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.critedge.i
  %xtraiter92 = and i64 %i.bi, 3                  ; 2 uses
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.028.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.prol ], [ %.030.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter94 = phi i64 [ %prol.iter94.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.bk = load i32, ptr %.0910.i.i.i.i.i.i.prol, align 4, !tbaa !3
  store i32 %i.bk, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !431
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !660
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !419
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.bq = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter94.next = add i64 %prol.iter94, 1     ; 2 uses
  %prol.iter94.cmp.not = icmp eq i64 %prol.iter94.next, %xtraiter92
  br i1 %prol.iter94.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !929

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.028.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.030.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.br = icmp ult i64 %i.bi, 4
  br i1 %i.br, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.bs = load i32, ptr %.0910.i.i.i.i.i.i, align 4, !tbaa !3
  store i32 %i.bs, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !431
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !660
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !419
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.by = load i32, ptr %i.bw, align 8, !tbaa !3
  store i32 %i.by, ptr %i.bx, align 8, !tbaa !431
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !660
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !419
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.ce = load i32, ptr %i.cc, align 8, !tbaa !3
  store i32 %i.ce, ptr %i.cd, align 8, !tbaa !431
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !660
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !419
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.ck = load i32, ptr %i.ci, align 8, !tbaa !3
  store i32 %i.ck, ptr %i.cj, align 8, !tbaa !431
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !660
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !419
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64
  %i.cq = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.cr = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit, !llvm.loop !915

bb.f:                                             ; preds = %bb.a
  %i.cs = ptrtoint ptr %2 to i64
  %i.ct = ptrtoint ptr %1 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 4                 ; 5 uses
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i24.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit28

.lr.ph.i.i.i.i.i24.preheader:                     ; preds = %bb.f
  %xtraiter95 = and i64 %i.cv, 3                  ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.lr.ph.i.i.i.i.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i24.prol

.lr.ph.i.i.i.i.i24.prol:                          ; preds = %.lr.ph.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i24.prol
  %.012.i.i.i.i.i25.prol = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i24.prol ], [ %i.cv, %.lr.ph.i.i.i.i.i24.preheader ]
  %.0811.i.i.i.i.i26.prol = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i24.prol ], [ %5, %.lr.ph.i.i.i.i.i24.preheader ] ; 3 uses
  %.0910.i.i.i.i.i27.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i24.prol ], [ %1, %.lr.ph.i.i.i.i.i24.preheader ] ; 3 uses
  %prol.iter97 = phi i64 [ %prol.iter97.next, %.lr.ph.i.i.i.i.i24.prol ], [ 0, %.lr.ph.i.i.i.i.i24.preheader ]
  %i.cx = load i32, ptr %.0910.i.i.i.i.i27.prol, align 4, !tbaa !3
  store i32 %i.cx, ptr %.0811.i.i.i.i.i26.prol, align 8, !tbaa !431
  %i.cy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27.prol, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !660
  %i.da = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26.prol, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !419
  %i.db = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27.prol, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26.prol, i64 16 ; 3 uses
  %i.dd = add nsw i64 %.012.i.i.i.i.i25.prol, -1  ; 2 uses
  %prol.iter97.next = add i64 %prol.iter97, 1     ; 2 uses
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95
  br i1 %prol.iter97.cmp.not, label %.lr.ph.i.i.i.i.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i24.prol, !llvm.loop !930

.lr.ph.i.i.i.i.i24.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i24.prol, %.lr.ph.i.i.i.i.i24.preheader
  %.012.i.i.i.i.i25.unr = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i24.preheader ], [ %i.dd, %.lr.ph.i.i.i.i.i24.prol ]
  %.0811.i.i.i.i.i26.unr = phi ptr [ %5, %.lr.ph.i.i.i.i.i24.preheader ], [ %i.dc, %.lr.ph.i.i.i.i.i24.prol ]
  %.0910.i.i.i.i.i27.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i24.preheader ], [ %i.db, %.lr.ph.i.i.i.i.i24.prol ]
  %.lcssa86.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i24.preheader ], [ %i.dc, %.lr.ph.i.i.i.i.i24.prol ]
  %i.de = icmp ult i64 %i.cv, 4
  br i1 %i.de, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit28, label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %.lr.ph.i.i.i.i.i24.prol.loopexit, %.lr.ph.i.i.i.i.i24
  %.012.i.i.i.i.i25 = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i24 ], [ %.012.i.i.i.i.i25.unr, %.lr.ph.i.i.i.i.i24.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i24 ], [ %.0811.i.i.i.i.i26.unr, %.lr.ph.i.i.i.i.i24.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i24 ], [ %.0910.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i24.prol.loopexit ] ; 9 uses
  %i.df = load i32, ptr %.0910.i.i.i.i.i27, align 4, !tbaa !3
  store i32 %i.df, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !431
  %i.dg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !660
  %i.di = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !419
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 16
  %i.dl = load i32, ptr %i.dj, align 8, !tbaa !3
  store i32 %i.dl, ptr %i.dk, align 8, !tbaa !431
  %i.dm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !660
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 24
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !419
  %i.dp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 32
  %i.dr = load i32, ptr %i.dp, align 8, !tbaa !3
  store i32 %i.dr, ptr %i.dq, align 8, !tbaa !431
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !660
  %i.du = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 40
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !419
  %i.dv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 48
  %i.dx = load i32, ptr %i.dv, align 8, !tbaa !3
  store i32 %i.dx, ptr %i.dw, align 8, !tbaa !431
  %i.dy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !660
  %i.ea = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 56
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !419
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 64
  %i.ec = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 64 ; 2 uses
  %i.ed = add nsw i64 %.012.i.i.i.i.i25, -4
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i25, 4
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit28, !llvm.loop !915

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit28: ; preds = %.lr.ph.i.i.i.i.i24.prol.loopexit, %.lr.ph.i.i.i.i.i24, %bb.f
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.f ], [ %.lcssa86.unr, %.lr.ph.i.i.i.i.i24.prol.loopexit ], [ %i.ec, %.lr.ph.i.i.i.i.i24 ] ; 5 uses
  %i.ef = icmp eq ptr %0, %1
  br i1 %i.ef, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit28
  %i.eg = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.eh = ptrtoint ptr %5 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 4                 ; 5 uses
  %i.ek = icmp sgt i64 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i.i31.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit

.lr.ph.i.i.i.i.i.i31.preheader:                   ; preds = %bb.g
  %xtraiter101 = and i64 %i.ej, 3                 ; 2 uses
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.lr.ph.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i31.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i31.preheader, %.lr.ph.i.i.i.i.i.i31.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i31.prol ], [ %i.ej, %.lr.ph.i.i.i.i.i.i31.preheader ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i31.prol ], [ %2, %.lr.ph.i.i.i.i.i.i31.preheader ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i31.prol ], [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.i.i.i.i.i.i31.preheader ] ; 2 uses
  %prol.iter103 = phi i64 [ %prol.iter103.next, %.lr.ph.i.i.i.i.i.i31.prol ], [ 0, %.lr.ph.i.i.i.i.i.i31.preheader ]
  %i.el = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.en = load i32, ptr %i.el, align 4, !tbaa !3
  store i32 %i.en, ptr %i.em, align 8, !tbaa !431
  %i.eo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !660
  %i.eq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !419
  %i.er = add nsw i64 %.010.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter103.next = add i64 %prol.iter103, 1   ; 2 uses
  %prol.iter103.cmp.not = icmp eq i64 %prol.iter103.next, %xtraiter101
  br i1 %prol.iter103.cmp.not, label %.lr.ph.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i31.prol, !llvm.loop !931

.lr.ph.i.i.i.i.i.i31.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i31.prol, %.lr.ph.i.i.i.i.i.i31.preheader
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i31.preheader ], [ %i.er, %.lr.ph.i.i.i.i.i.i31.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i31.preheader ], [ %i.em, %.lr.ph.i.i.i.i.i.i31.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.i.i.i.i.i.i31.preheader ], [ %i.el, %.lr.ph.i.i.i.i.i.i31.prol ]
  %i.es = icmp ult i64 %i.ej, 4
  br i1 %i.es, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i31:                             ; preds = %.lr.ph.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i31
  %.010.i.i.i.i.i.i = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i.i31 ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i31.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i31 ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i31.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i31 ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i31.prol.loopexit ] ; 8 uses
  %i.et = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.eu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !3
  store i32 %i.ev, ptr %i.eu, align 8, !tbaa !431
  %i.ew = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !660
  %i.ey = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !419
  %i.ez = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.fa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.fb = load i32, ptr %i.ez, align 8, !tbaa !3
  store i32 %i.fb, ptr %i.fa, align 8, !tbaa !431
  %i.fc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !660
  %i.fe = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !419
  %i.ff = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.fg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.fh = load i32, ptr %i.ff, align 8, !tbaa !3
  store i32 %i.fh, ptr %i.fg, align 8, !tbaa !431
  %i.fi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !660
  %i.fk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !419
  %i.fl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.fn = load i32, ptr %i.fl, align 8, !tbaa !3
  store i32 %i.fn, ptr %i.fm, align 8, !tbaa !431
  %i.fo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !660
  %i.fq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !419
  %i.fr = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.fs = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit, !llvm.loop !908

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit28
  %i.ft = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i23
  br i1 %i.ft, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fu = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i23, i64 -16
  br label %.outer

.outer:                                           ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread.i, %bb.i
  %.sroa.027.0.i.ph.pn = phi ptr [ %1, %bb.i ], [ %.sroa.027.0.i.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread.i ] ; 2 uses
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.i ], [ %i.gg, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread.i ]
  %.0.i.ph = phi ptr [ %i.fu, %bb.i ], [ %.0.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread.i ]
  %.sroa.027.0.i.ph = getelementptr inbounds i8, ptr %.sroa.027.0.i.ph.pn, i64 -16 ; 3 uses
  %i.fv = getelementptr i8, ptr %.sroa.027.0.i.ph.pn, i64 -8
  br label %bb.j

bb.j:                                             ; preds = %.outer, %bb.m
  %.sroa.0.0.i = phi ptr [ %i.hy, %bb.m ], [ %.sroa.0.0.i.ph, %.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.ic, %bb.m ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.fw = getelementptr i8, ptr %.0.i, i64 8
  %.0.val.i29 = load ptr, ptr %i.fw, align 8, !tbaa !419 ; 3 uses
  %.val2.i.i = load ptr, ptr %i.fv, align 8, !tbaa !419 ; 3 uses
  %i.fx = load i32, ptr %.0.val.i29, align 8, !tbaa !422 ; 2 uses
  %i.fy = load i32, ptr %.val2.i.i, align 8, !tbaa !422 ; 2 uses
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ga = icmp sgt i32 %i.fx, %i.fy
  br i1 %i.ga, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread35.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.i: ; preds = %bb.k
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.val.i29, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !424
  %i.gd = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !424
  %i.gf = icmp slt i32 %i.gc, %i.ge
  br i1 %i.gf, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread35.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.i, %bb.j
  %i.gg = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16 ; 4 uses
  %i.gh = load i32, ptr %.sroa.027.0.i.ph, align 4, !tbaa !3
  store i32 %i.gh, ptr %i.gg, align 8, !tbaa !431
  %i.gi = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8
  store ptr %.val2.i.i, ptr %i.gi, align 8, !tbaa !419
  %i.gj = icmp eq ptr %0, %.sroa.027.0.i.ph
  br i1 %i.gj, label %bb.l, label %.outer, !llvm.loop !932

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %5 to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 4                 ; 5 uses
  %i.gp = icmp sgt i64 %i.go, 0
  br i1 %i.gp, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %bb.l
  %xtraiter98 = and i64 %i.go, 3                  ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader, %.lr.ph.i.i.i.i.i19.i.prol
  %.010.i.i.i.i.i20.i.prol = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.go, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %.069.i.i.i.i.i21.i.prol = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.gg, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 2 uses
  %.078.i.i.i.i.i22.i.prol = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.gk, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 2 uses
  %prol.iter100 = phi i64 [ %prol.iter100.next, %.lr.ph.i.i.i.i.i19.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %i.gq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i.prol, i64 -16 ; 3 uses
  %i.gr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i.prol, i64 -16 ; 3 uses
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !3
  store i32 %i.gs, ptr %i.gr, align 8, !tbaa !431
  %i.gt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i.prol, i64 -8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !660
  %i.gv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i.prol, i64 -8
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !419
  %i.gw = add nsw i64 %.010.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter100.next = add i64 %prol.iter100, 1   ; 2 uses
  %prol.iter100.cmp.not = icmp eq i64 %prol.iter100.next, %xtraiter98
  br i1 %prol.iter100.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !933

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.010.i.i.i.i.i20.i.unr = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.gw, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.069.i.i.i.i.i21.i.unr = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.gr, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.078.i.i.i.i.i22.i.unr = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.gq, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.gx = icmp ult i64 %i.go, 4
  br i1 %i.gx, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.010.i.i.i.i.i20.i = phi i64 [ %i.hw, %.lr.ph.i.i.i.i.i19.i ], [ %.010.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i21.i = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i19.i ], [ %.069.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i22.i = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i19.i ], [ %.078.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 8 uses
  %i.gy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -16
  %i.gz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -16
  %i.ha = load i32, ptr %i.gy, align 4, !tbaa !3
  store i32 %i.ha, ptr %i.gz, align 8, !tbaa !431
  %i.hb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !660
  %i.hd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -8
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !419
  %i.he = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -32
  %i.hf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -32
  %i.hg = load i32, ptr %i.he, align 8, !tbaa !3
  store i32 %i.hg, ptr %i.hf, align 8, !tbaa !431
  %i.hh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !660
  %i.hj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -24
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !419
  %i.hk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -48
  %i.hl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -48
  %i.hm = load i32, ptr %i.hk, align 8, !tbaa !3
  store i32 %i.hm, ptr %i.hl, align 8, !tbaa !431
  %i.hn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -40
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !660
  %i.hp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -40
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !419
  %i.hq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -64 ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -64 ; 2 uses
  %i.hs = load i32, ptr %i.hq, align 8, !tbaa !3
  store i32 %i.hs, ptr %i.hr, align 8, !tbaa !431
  %i.ht = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -56
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !660
  %i.hv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -56
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !419
  %i.hw = add nsw i64 %.010.i.i.i.i.i20.i, -4
  %i.hx = icmp sgt i64 %.010.i.i.i.i.i20.i, 4
  br i1 %i.hx, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit, !llvm.loop !908

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread35.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.i, %bb.k
  %i.hy = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16 ; 2 uses
  %i.hz = load i32, ptr %.0.i, align 4, !tbaa !3
  store i32 %i.hz, ptr %i.hy, align 8, !tbaa !431
  %i.ia = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8
  store ptr %.0.val.i29, ptr %i.ia, align 8, !tbaa !419
  %i.ib = icmp eq ptr %5, %.0.i
  br i1 %i.ib, label %_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread35.i
  %i.ic = getelementptr inbounds i8, ptr %.0.i, i64 -16
  br label %bb.j, !llvm.loop !932

_ZSt21__move_merge_adaptiveIPSt4pairIiPKN6google8protobuf12UnknownFieldEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterINS2_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_SL_T1_T2_.exit: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIPSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorISE_St6vectorISD_SaISD_EEEEEEbT_T0_.exit.thread35.i, %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %.lr.ph.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i31, %bb.b, %bb.l, %bb.h, %bb.g, %.critedge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_SK_T0_SL_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond86 = or i1 %i.a, %i.b
  br i1 %or.cond86, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread76, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8391 = phi i64 [ %4, %.lr.ph ], [ %i.bt, %tailrecurse ] ; 4 uses
  %.tr8290 = phi i64 [ %3, %.lr.ph ], [ %i.bs, %tailrecurse ] ; 4 uses
  %.tr8088 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr87 = phi ptr [ %0, %.lr.ph ], [ %i.br, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr8391, %.tr8290
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.tr8088, i64 8    ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !419 ; 3 uses
  %i.g = getelementptr i8, ptr %.tr87, i64 8      ; 2 uses
  %.val1.i = load ptr, ptr %i.g, align 8, !tbaa !419 ; 3 uses
  %i.h = load i32, ptr %.val.i, align 8, !tbaa !422 ; 2 uses
  %i.i = load i32, ptr %.val1.i, align 8, !tbaa !422 ; 2 uses
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp sgt i32 %i.h, %i.i
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread76, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !424
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !424
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread76

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit
  %i.q = load i32, ptr %.tr87, align 4, !tbaa !3
  %i.r = load i32, ptr %.tr8088, align 4, !tbaa !3
  store i32 %i.r, ptr %.tr87, align 4, !tbaa !3
  store i32 %i.q, ptr %.tr8088, align 4, !tbaa !3
  store ptr %.val.i, ptr %i.g, align 8, !tbaa !660
  store ptr %.val1.i, ptr %i.f, align 8, !tbaa !660
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread76

bb.e:                                             ; preds = %bb.b
  %i.s = icmp sgt i64 %.tr8290, %.tr8391
  %i.t = ptrtoint ptr %.tr8088 to i64             ; 4 uses
  br i1 %i.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.u = sdiv i64 %.tr8290, 2                     ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %.tr87, i64 %i.u ; 2 uses
  %i.w = sub i64 %i.c, %i.t
  %i.x = ashr exact i64 %i.w, 4                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.z = getelementptr i8, ptr %i.v, i64 8
  %.val = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.aa = load i32, ptr %.val, align 8, !tbaa !422 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 4
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread7.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.010.i = phi i64 [ %i.x, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread7.i ] ; 2 uses
  %.sroa.02.09.i = phi ptr [ %.tr8088, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.02.1.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread7.i ] ; 3 uses
  %i.ac = lshr i64 %.010.i, 1                     ; 4 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.09.i, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !419 ; 2 uses
  %i.af = load i32, ptr %.val.i.i, align 8, !tbaa !422 ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.aa
  br i1 %i.ag, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ah = icmp sgt i32 %i.af, %i.aa
  br i1 %i.ah, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread7.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !424
  %i.ak = load i32, ptr %i.ab, align 4, !tbaa !424
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread7.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.an = xor i64 %i.ac, -1
  %i.ao = add nsw i64 %.010.i, %i.an
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread7.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread7.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i, %bb.f
  %.sroa.02.1.i = phi ptr [ %i.am, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread.i ], [ %.sroa.02.09.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i ], [ %.sroa.02.09.i, %bb.f ] ; 3 uses
  %.1.i = phi i64 [ %i.ao, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread.i ], [ %i.ac, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ap = icmp sgt i64 %.1.i, 0
  br i1 %i.ap, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit.loopexit, !llvm.loop !934

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.thread7.i
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %.tr8088, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aq = sub i64 %.pre-phi, %i.t
  %i.ar = ashr exact i64 %i.aq, 4
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54: ; preds = %bb.e
  %i.as = sdiv i64 %.tr8391, 2                    ; 2 uses
  %i.at = getelementptr inbounds [16 x i8], ptr %.tr8088, i64 %i.as ; 2 uses
  %i.au = ptrtoint ptr %.tr87 to i64              ; 3 uses
  %i.av = sub i64 %i.t, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %i.ay = getelementptr i8, ptr %i.at, i64 8
  %.val50 = load ptr, ptr %i.ay, align 8          ; 2 uses
  %i.az = load i32, ptr %.val50, align 8, !tbaa !422 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val50, i64 4
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56
  %.010.i58 = phi i64 [ %i.aw, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56 ], [ %.1.i63, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i ] ; 2 uses
  %.sroa.02.09.i59 = phi ptr [ %.tr87, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56 ], [ %.sroa.02.1.i62, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i ] ; 3 uses
  %i.bb = lshr i64 %.010.i58, 1                   ; 4 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.09.i59, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %.val2.i.i = load ptr, ptr %i.bd, align 8, !tbaa !419 ; 2 uses
  %i.be = load i32, ptr %.val2.i.i, align 8, !tbaa !422 ; 2 uses
  %i.bf = icmp slt i32 %i.az, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %i.bg = icmp sgt i32 %i.az, %i.be
  br i1 %i.bg, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread7.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i: ; preds = %bb.g
  %i.bh = load i32, ptr %i.ba, align 4, !tbaa !424
  %i.bi = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !424
  %i.bk = icmp slt i32 %i.bh, %i.bj
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread7.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread7.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bm = xor i64 %i.bb, -1
  %i.bn = add nsw i64 %.010.i58, %i.bm
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread7.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.sroa.02.1.i62 = phi ptr [ %.sroa.02.09.i59, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i ], [ %i.bl, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread7.i ], [ %.sroa.02.09.i59, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ] ; 3 uses
  %.1.i63 = phi i64 [ %i.bb, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.i ], [ %i.bn, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread7.i ], [ %i.bb, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ] ; 2 uses
  %i.bo = icmp sgt i64 %.1.i63, 0
  br i1 %i.bo, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit.loopexit, !llvm.loop !935

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit.loopexit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclIKSt4pairIiPKNS3_12UnknownFieldEENS_17__normal_iteratorIPSD_St6vectorISD_SaISD_EEEEEEbRT_T0_.exit.thread.i
  %.pre94 = ptrtoint ptr %.sroa.02.1.i62 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %.pre-phi95 = phi i64 [ %.pre94, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %i.au, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %.sroa.02.0.lcssa.i55 = phi ptr [ %.sroa.02.1.i62, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit.loopexit ], [ %.tr87, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %i.bp = sub i64 %.pre-phi95, %i.au
  %i.bq = ashr exact i64 %i.bp, 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit
  %.sroa.066.0 = phi ptr [ %i.v, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit ], [ %.sroa.02.0.lcssa.i55, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit ], [ %i.at, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.047 = phi i64 [ %i.ar, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit ], [ %i.as, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.u, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit ], [ %i.bq, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEET_SK_SK_RKT0_T1_.exit ] ; 2 uses
  %i.br = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_St26random_access_iterator_tag(ptr %.sroa.066.0, ptr %.tr8088, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_SK_T0_SL_T1_(ptr %.tr87, ptr %.sroa.066.0, ptr %i.br, i64 noundef %.0, i64 noundef %.047)
  %i.bs = sub nsw i64 %.tr8290, %.0               ; 2 uses
  %i.bt = sub nsw i64 %.tr8391, %.047             ; 2 uses
  %i.bu = icmp eq i64 %i.bs, 0
  %i.bv = icmp eq i64 %i.bt, 0
  %or.cond = or i1 %i.bu, %i.bv
  br i1 %or.cond, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread76, label %bb.b

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread76: ; preds = %tailrecurse, %bb.a, %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN6google8protobuf4util12_GLOBAL__N_120UnknownFieldOrderingEEclINS_17__normal_iteratorIPSt4pairIiPKNS3_12UnknownFieldEESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.s, %.lr.ph.i ], [ %1, %bb.c ] ; 4 uses
  %.sroa.04.07.i = phi ptr [ %i.r, %.lr.ph.i ], [ %0, %bb.c ] ; 4 uses
  %i.l = load i32, ptr %.sroa.04.07.i, align 4, !tbaa !3
  %i.m = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !3
  store i32 %i.m, ptr %.sroa.04.07.i, align 4, !tbaa !3
  store i32 %i.l, ptr %.sroa.0.08.i, align 4, !tbaa !3
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !660
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !660
  store ptr %i.q, ptr %i.n, align 8, !tbaa !660
  store ptr %i.p, ptr %i.o, align 8, !tbaa !660
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 16
  %.not.i = icmp eq ptr %i.r, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, label %.lr.ph.i, !llvm.loop !936

bb.d:                                             ; preds = %bb.c
  %i.t = sub i64 %i.c, %i.g
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.056 = phi i64 [ %i.f, %bb.d ], [ %.056.be, %.backedge ] ; 5 uses
  %.0 = phi i64 [ %i.i, %bb.d ], [ %.0.be, %.backedge ] ; 12 uses
  %.sroa.026.0 = phi ptr [ %0, %bb.d ], [ %.sroa.026.0.be, %.backedge ] ; 7 uses
  %i.v = sub nsw i64 %.056, %.0                   ; 8 uses
  %i.w = icmp slt i64 %.0, %i.v
  br i1 %i.w, label %bb.f, label %bb.h
end_hunk_0
