Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_metadata?download=true
inline.NumInlined: 1196
inline.NumDeleted: 622
begin_hunk_0_@_ZNK9grpc_core14XdsMetadataMap4FindESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.b, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK9grpc_core14XdsMetadataMapeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %.not.unshifted = xor i64 %i.d, %i.b
  %.not = icmp ult i64 %.not.unshifted, 131072
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ult i64 %i.b, 131072
  br i1 %.not.i.i.i, label %.critedge, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !tbaa !35
  %i.f = icmp eq i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30, !nonnull !20, !noundef !20 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !30 ; 3 uses
  br i1 %i.f, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.h, align 1, !tbaa !37
  %i.k = icmp slt i8 %i.j, -1
  br i1 %i.k, label %.lr.ph.i.i.i, label %.lr.ph.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.l = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.d ]
  %i.m = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.n = load <16 x i8>, ptr %i.m, align 1, !tbaa !30
  %i.o = icmp slt <16 x i8> %i.n, splat (i8 -1)
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.r, i1 true)
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.t ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !37
  %i.x = icmp slt i8 %i.w, -1
  br i1 %i.x, label %.lr.ph.i.i.i, label %.lr.ph.preheader, !llvm.loop !0

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i, %bb.c, %bb.d
  %.sroa.8.030.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.d ], [ %i.v, %.lr.ph.i.i.i ]
  %.sroa.020.029.ph = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.u, %.lr.ph.i.i.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.8.030 = phi ptr [ %.sroa.8.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ %.sroa.8.030.ph, %.lr.ph.preheader ] ; 3 uses
  %.sroa.020.029 = phi ptr [ %.sroa.020.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ %.sroa.020.029.ph, %.lr.ph.preheader ]
  %i.y = tail call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findIS9_EENSN_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.030) ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ab = extractvalue { ptr, ptr } %i.y, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.8.030, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13 ; 3 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call { i64, ptr } %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ad), !inline_history !82 ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0      ; 3 uses
  %i.al = extractvalue { i64, ptr } %i.aj, 1
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call { i64, ptr } %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.af), !inline_history !82 ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0
  %i.ar = extractvalue { i64, ptr } %i.ap, 1
  %i.as = icmp eq i64 %i.ak, %i.aq
  br i1 %i.as, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %i.ak, 0
  br i1 %i.at, label %_ZNK9grpc_core16XdsMetadataValueneERKS0_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.f
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ar, i64 %i.ak)
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.au, label %_ZNK9grpc_core16XdsMetadataValueneERKS0_.exit, label %.critedge

_ZNK9grpc_core16XdsMetadataValueneERKS0_.exit:    ; preds = %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.af), !inline_history !82
  br i1 %i.ay, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK9grpc_core16XdsMetadataValueneERKS0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.020.029, i64 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.8.030, i64 40 ; 2 uses
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !37  ; 2 uses
  %i.bc = icmp slt i8 %i.bb, -1
  br i1 %i.bc, label %.lr.ph.i.i.i16, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i16:                                   ; preds = %bb.g, %.lr.ph.i.i.i16
  %i.bd = phi ptr [ %i.bn, %.lr.ph.i.i.i16 ], [ %i.ba, %bb.g ]
  %i.be = phi ptr [ %i.bm, %.lr.ph.i.i.i16 ], [ %i.az, %bb.g ] ; 2 uses
  %i.bf = load <16 x i8>, ptr %i.be, align 1, !tbaa !30
  %i.bg = icmp slt <16 x i8> %i.bf, splat (i8 -1)
  %i.bh = bitcast <16 x i1> %i.bg to i16
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.bi, 1
  %i.bk = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bj, i1 true)
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.bl ; 2 uses
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !37  ; 2 uses
  %i.bp = icmp slt i8 %i.bo, -1
  br i1 %i.bp, label %.lr.ph.i.i.i16, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !0

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i16, %bb.g
  %.sroa.020.1 = phi ptr [ %i.az, %bb.g ], [ %i.bm, %.lr.ph.i.i.i16 ]
  %.sroa.8.1 = phi ptr [ %i.ba, %bb.g ], [ %i.bn, %.lr.ph.i.i.i16 ]
  %i.bq = phi i8 [ %i.bb, %bb.g ], [ %i.bo, %.lr.ph.i.i.i16 ]
  %i.br = icmp eq i8 %i.bq, -1
  br i1 %i.br, label %.critedge, label %.lr.ph, !prof !14

.critedge:                                        ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.e, %.lr.ph, %_ZNK9grpc_core16XdsMetadataValueneERKS0_.exit, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ false, %.lr.ph ], [ false, %bb.e ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ false, %_ZNK9grpc_core16XdsMetadataValueneERKS0_.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core14XdsMetadataMap8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33
  %.not.i.i.i = icmp ult i64 %i.b, 131072
  br i1 %.not.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.thread214, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !35
  %i.d = icmp eq i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30, !nonnull !20, !noundef !20 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !30 ; 3 uses
  br i1 %i.d, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.f, align 1, !tbaa !37
  %i.i = icmp slt i8 %i.h, -1
  br i1 %i.i, label %.lr.ph.i.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c
  %.sroa.9.0119.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.b ], [ %i.t, %.lr.ph.i.i.i ]
  %.sroa.068.0118.ph = phi ptr [ %i.f, %bb.c ], [ %i.f, %bb.b ], [ %i.s, %.lr.ph.i.i.i ]
  br label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.c ]
  %i.k = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.l = load <16 x i8>, ptr %i.k, align 1, !tbaa !30
  %i.m = icmp slt <16 x i8> %i.l, splat (i8 -1)
  %i.n = bitcast <16 x i1> %i.m to i16
  %i.o = zext i16 %i.n to i32
  %i.p = add nuw nsw i32 %i.o, 1
  %i.q = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.p, i1 true)
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.r ; 2 uses
  %i.u = load i8, ptr %i.s, align 1, !tbaa !37
  %i.v = icmp slt i8 %i.u, -1
  br i1 %i.v, label %.lr.ph.i.i.i, label %.lr.ph.preheader, !llvm.loop !0

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.not.i.i = icmp eq ptr %.sroa.071.1, %.sroa.12.1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.thread214, label %bb.d

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.thread214: ; preds = %._crit_edge, %bb.a
  %.sroa.071.0.lcssa193 = phi ptr [ %.sroa.071.1, %._crit_edge ], [ null, %bb.a ]
  %.sroa.18.0.lcssa186 = phi ptr [ %.sroa.18.1, %._crit_edge ], [ null, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !27
  store i8 123, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.x, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.y, align 1, !tbaa !30
  br label %._crit_edge127

bb.d:                                             ; preds = %._crit_edge
  %i.z = ptrtoint ptr %.sroa.12.1 to i64
  %i.aa = ptrtoint ptr %.sroa.071.1 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 4                 ; 2 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = xor i64 %i.ae, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %.sroa.071.1, ptr nonnull %.sroa.12.1, i64 noundef %i.af)
          to label %.noexc unwind label %.loopexit.split-lp86

.noexc:                                           ; preds = %bb.d
  %i.ag = icmp sgt i64 %i.ab, 256
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.071.1, i64 256 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %.sroa.071.1, ptr nonnull %i.ah)
          to label %.noexc34 unwind label %.loopexit.split-lp86

.noexc34:                                         ; preds = %bb.e
  %.not4.i.i.i.i = icmp eq ptr %i.ah, %.sroa.12.1
  br i1 %.not4.i.i.i.i, label %.lr.ph126, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc34, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i ], [ %i.ah, %.noexc34 ] ; 5 uses
  %.sroa.03.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i, align 8, !tbaa !23 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.sroa.07.0.i.i.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.g ] ; 5 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i, i64 -16 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !23 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.03.0.copyload.i.i.i.i.i) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !25
  %i.aj = tail call i32 @memcmp(ptr noundef %.sroa.5.0.copyload.i.i.i.i.i, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #23 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.f
  %i.al = sub i64 %.sroa.03.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ], [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.am = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %bb.g, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !41
  br label %bb.f, !llvm.loop !1

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i.i.i, ptr %.sroa.07.0.i.i.i.i.i, align 8, !tbaa !23
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.05.i.i.i.i, %.0.lcssa.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i, label %.lr.ph126, label %.lr.ph.i.i.i.i, !llvm.loop !83

bb.h:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %.sroa.071.1, ptr nonnull %.sroa.12.1)
          to label %.lr.ph126 unwind label %.loopexit.split-lp86

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.071.0122 = phi ptr [ %.sroa.071.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ null, %.lr.ph.preheader ] ; 8 uses
  %.sroa.12.0121 = phi ptr [ %.sroa.12.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ null, %.lr.ph.preheader ] ; 9 uses
  %.sroa.18.0120 = phi ptr [ %.sroa.18.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.9.0119 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ %.sroa.9.0119.ph, %.lr.ph.preheader ] ; 3 uses
  %.sroa.068.0118 = phi ptr [ %.sroa.068.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i ], [ %.sroa.068.0118.ph, %.lr.ph.preheader ]
  %i.ao = load ptr, ptr %.sroa.9.0119, align 8, !tbaa !29 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.9.0119, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %.not.i.i36 = icmp eq ptr %.sroa.12.0121, %.sroa.18.0120
  br i1 %.not.i.i36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store i64 %i.aq, ptr %.sroa.12.0121, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0121, i64 8
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !25
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ar = ptrtoint ptr %.sroa.12.0121 to i64
  %i.as = ptrtoint ptr %.sroa.071.0122 to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775792
  br i1 %i.au, label %bb.k, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26
          to label %.noexc38 unwind label %.loopexit.split-lp86

.noexc38:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.av = ashr exact i64 %i.at, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i.i37 = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i37)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #27
          to label %.noexc39 unwind label %.loopexit85 ; 5 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at ; 2 uses
  store i64 %i.aq, ptr %i.bc, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ao, ptr %.sroa.6.0..sroa_idx64, align 8, !tbaa !25
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.071.0122, %.sroa.12.0121
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc39, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %.noexc39 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.071.0122, %.noexc39 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !41, !alias.scope !89
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, %.sroa.12.0121
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !87

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc39
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bb, %.noexc39 ], [ %i.be, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.071.0122, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0122, i64 noundef %i.at) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.i
  %.sroa.18.1 = phi ptr [ %i.bf, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.18.0120, %bb.i ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.12.0121, %bb.i ] ; 2 uses
  %.sroa.071.1 = phi ptr [ %i.bb, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.071.0122, %bb.i ] ; 19 uses
  %.sroa.12.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.068.0118, i64 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.9.0119, i64 40 ; 2 uses
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !37  ; 2 uses
  %i.bj = icmp slt i8 %i.bi, -1
  br i1 %i.bj, label %.lr.ph.i.i.i40, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i40:                                   ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit, %.lr.ph.i.i.i40
  %i.bk = phi ptr [ %i.bu, %.lr.ph.i.i.i40 ], [ %i.bh, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ]
  %i.bl = phi ptr [ %i.bt, %.lr.ph.i.i.i40 ], [ %i.bg, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 1, !tbaa !30
  %i.bn = icmp slt <16 x i8> %i.bm, splat (i8 -1)
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = zext i16 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bp, 1
  %i.br = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bq, i1 true)
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bk, i64 %i.bs ; 2 uses
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !37  ; 2 uses
  %i.bw = icmp slt i8 %i.bv, -1
  br i1 %i.bw, label %.lr.ph.i.i.i40, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !0

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i40, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  %.sroa.068.1 = phi ptr [ %i.bg, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %i.bt, %.lr.ph.i.i.i40 ]
  %.sroa.9.1 = phi ptr [ %i.bh, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %i.bu, %.lr.ph.i.i.i40 ]
  %i.bx = phi i8 [ %i.bi, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %i.bv, %.lr.ph.i.i.i40 ]
  %i.by = icmp eq i8 %i.bx, -1
  br i1 %i.by, label %._crit_edge, label %.lr.ph, !prof !14

.lr.ph126:                                        ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, %.noexc34, %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.bz, ptr %0, align 8, !tbaa !27
  store i8 123, ptr %i.bz, align 8, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ca, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.cb, align 1, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.ce = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.071.1)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.m:                                             ; preds = %.lr.ph126
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0
  %i.cg = extractvalue { ptr, ptr } %i.ce, 1
  %i.ch = icmp eq ptr %i.cf, null
  br i1 %i.ch, label %bb.r, label %._crit_edge152

._crit_edge152:                                   ; preds = %bb.m
  %.sroa.22.0..sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.071.1, i64 8
  %.sroa.22.0.copyload.peel.pre = load ptr, ptr %.sroa.22.0..sroa_idx.peel.phi.trans.insert, align 8, !tbaa !25
  %.sroa.01.0.copyload.peel.pre = load i64, ptr %.sroa.071.1, align 8, !tbaa !23
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.01.0.copyload.peel.pre, ptr %.sroa.22.0.copyload.peel.pre)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %._crit_edge152
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.6)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !13 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %bb.p unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr %2, align 8, !tbaa !29
  %i.co = load i64, ptr %i.cc, align 8, !tbaa !31
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.co, ptr %i.cn)
          to label %bb.q unwind label %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cd
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.q
  %i.cr = load i64, ptr %i.cd, align 8, !tbaa !30
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %bb.q
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !31
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.m
  %exitcond.peel.not = icmp eq i64 %i.ab, 16
  br i1 %exitcond.peel.not, label %._crit_edge127, label %.peel.next

._crit_edge127:                                   ; preds = %bb.z, %bb.r, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.thread214
  %i.cv = phi ptr [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.thread214 ], [ %i.bz, %bb.r ], [ %i.bz, %bb.z ]
  %.sroa.18.0.lcssa185210 = phi ptr [ %.sroa.18.0.lcssa186, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.thread214 ], [ %.sroa.18.1, %bb.r ], [ %.sroa.18.1, %bb.z ] ; 2 uses
  %.sroa.071.0.lcssa192208 = phi ptr [ %.sroa.071.0.lcssa193, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.thread214 ], [ %.sroa.071.1, %bb.r ], [ %.sroa.071.1, %bb.z ] ; 4 uses
  %.pre-phi157213 = ptrtoint ptr %.sroa.071.0.lcssa192208 to i64
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.7)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit85:                                      ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit87 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

.loopexit.split-lp86:                             ; preds = %bb.k, %bb.h, %bb.e, %bb.d
  %.sroa.18.0112 = phi ptr [ %.sroa.12.0121, %bb.k ], [ %.sroa.18.1, %bb.h ], [ %.sroa.18.1, %bb.e ], [ %.sroa.18.1, %bb.d ]
  %.sroa.071.0103 = phi ptr [ %.sroa.071.0122, %bb.k ], [ %.sroa.071.1, %bb.h ], [ %.sroa.071.1, %bb.e ], [ %.sroa.071.1, %bb.d ]
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

.peel.next:                                       ; preds = %bb.r, %bb.z
  %.024125 = phi i64 [ %i.dm, %bb.z ], [ 1, %bb.r ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.071.1, i64 %.024125 ; 3 uses
  %i.cx = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN9grpc_core16XdsMetadataValueESt14default_deleteISC_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.cw)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %.peel.next
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0
  %i.cz = extractvalue { ptr, ptr } %i.cx, 1
  %i.da = icmp eq ptr %i.cy, null
  br i1 %i.da, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr nonnull @.str.5)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %.sroa.01.0.copyload = load i64, ptr %i.cw, align 8, !tbaa !23
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !25
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.01.0.copyload, ptr %.sroa.22.0.copyload)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 1, ptr nonnull @.str.6)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !13 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  invoke void %i.df(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %bb.x unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.dg = load ptr, ptr %2, align 8, !tbaa !29
  %i.dh = load i64, ptr %i.cc, align 8, !tbaa !31
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %i.dh, ptr %i.dg)
          to label %bb.y unwind label %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.di = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cd
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.dk = load i64, ptr %i.cd, align 8, !tbaa !30
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.z

bb.z:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dm = add nuw i64 %.024125, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dm, %i.ac
  br i1 %exitcond.not, label %._crit_edge127, label %.peel.next, !llvm.loop !88

.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.o
  %lpad.loopexit.split-lp247 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cd
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp
  %i.dp = load i64, ptr %i.cd, align 8, !tbaa !30
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %lpad.loopexit.split-lp247, %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp147.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.v, %bb.u, %bb.t, %.lr.ph126, %._crit_edge152, %bb.n
  %lpad.loopexit.split-lp245 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge127
  %lpad.loopexit.split-lp130 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aa:                                            ; preds = %._crit_edge127
  %.not.i.i.i48 = icmp eq ptr %.sroa.071.0.lcssa192208, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = ptrtoint ptr %.sroa.18.0.lcssa185210 to i64
  %i.ds = sub i64 %i.dr, %.pre-phi157213
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0.lcssa192208, i64 noundef %i.ds) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.dt = phi ptr [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.cv, %.loopexit.split-lp.loopexit.split-lp ], [ %i.bz, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.071.0.lcssa194 = phi ptr [ %.sroa.071.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.sroa.071.0.lcssa192208, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.071.1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.18.0.lcssa187 = phi ptr [ %.sroa.18.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.sroa.18.0.lcssa185210, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.18.1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %lpad.loopexit.split-lp130, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp245, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dt
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %.loopexit.split-lp
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !30
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %.loopexit.split-lp, %.loopexit85, %.loopexit.split-lp86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  %.sroa.18.0110 = phi ptr [ %.sroa.18.0.lcssa187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.sroa.18.0112, %.loopexit.split-lp86 ], [ %.sroa.12.0121, %.loopexit85 ], [ %.sroa.18.0.lcssa187, %.loopexit.split-lp ]
  %.sroa.071.0101 = phi ptr [ %.sroa.071.0.lcssa194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.sroa.071.0103, %.loopexit.split-lp86 ], [ %.sroa.071.0122, %.loopexit85 ], [ %.sroa.071.0.lcssa194, %.loopexit.split-lp ] ; 3 uses
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp86 ], [ %lpad.loopexit87, %.loopexit85 ], [ %.pn.pn.pn, %.loopexit.split-lp ]
  %.not.i.i.i52 = icmp eq ptr %.sroa.071.0101, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit53, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.dy = ptrtoint ptr %.sroa.18.0110 to i64
  %i.dz = ptrtoint ptr %.sroa.071.0101 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0101, i64 noundef %i.ea) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit53

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.ac
  resume { ptr, i32 } %.pn30.pn.pn
}

declare void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core22XdsStructMetadataValue8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call { i64, ptr } %i.d(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 5 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !27
  %i.i = icmp eq ptr %i.g, null
  %i.j = icmp ne i64 %i.f, 0
  %or.cond.i.i.i = and i1 %i.j, %i.i
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #26
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !23
  %i.k = icmp ugt i64 %i.f, 15
  br i1 %i.k, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !29
  %i.m = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.m, ptr %i.h, align 8, !tbaa !30
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]
end_hunk_0
