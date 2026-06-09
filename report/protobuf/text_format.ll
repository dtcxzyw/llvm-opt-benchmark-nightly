inline.NumInlined: 5150
inline.NumDeleted: 1899
begin_hunk_0_@_ZN6google8protobuf10TextFormat13ParseInfoTree12CreateNestedEPKNS0_15FieldDescriptorE:bb.a

_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #38 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store ptr %i.i, ptr %i.ab, align 8, !tbaa !115
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = add i64 %i.q, -8
  %i.ad = sub i64 %i.ac, %i.r                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ag = add i64 %i.q, -8
  %i.ah = sub i64 %i.ag, %i.r
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.aj
  %scevgep7 = getelementptr i8, ptr %i.p, i64 %i.aj
  %bound0 = icmp ult ptr %i.aa, %scevgep7
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.aa, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.p, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.an ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.p, i64 %i.an ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.ao = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  %wide.load9 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !115, !alias.scope !126, !noalias !123
  store <2 x i64> %wide.load9, ptr %i.ap, align 8, !tbaa !115, !alias.scope !126, !noalias !123
  %i.aq = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.as = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !115, !alias.scope !121, !noalias !118
  store i64 %i.as, ptr %.012.i.i.i.i.i, align 8, !tbaa !115, !alias.scope !118, !noalias !121
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !115, !alias.scope !121, !noalias !118
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !131

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #40
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !117
  store ptr %i.av, ptr %i.k, align 8, !tbaa !113
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.aw, ptr %i.m, align 8, !tbaa !114
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  %i.ax = phi ptr [ %i.l, %bb.d ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ]
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !115
  ret ptr %i.ay
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf15CheckFieldIndexEPKNS0_15FieldDescriptorEi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define { i64, i64 } @_ZNK6google8protobuf10TextFormat13ParseInfoTree16GetLocationRangeEPKNS0_15FieldDescriptorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53
  %.not.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !50 ; 2 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !65
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = xor i64 %i.l, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.n = mul i64 %i.m, -2543921745674291987
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  %i.p = xor i64 %i.o, %i.l
  %i.q = mul i64 %i.p, -2543921745674291987
  %i.r = tail call noundef i64 @llvm.bswap.i64(i64 %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !53, !noalias !132
  %i.u = and i64 %i.t, 65535
  %i.v = lshr i64 %i.r, 7
  %i.w = xor i64 %i.u, %i.v
  %i.x = trunc i64 %i.r to i8
  %i.y = and i8 %i.x, 127
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !50 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i6.i.i = phi i64 [ %i.w, %bb.e ], [ %i.au, %bb.h ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.e ], [ %i.at, %bb.h ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.a    ; 4 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.6.0.i.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !50 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.sroa.017.046.i.i.i = phi i16 [ %i.aq, %bb.g ], [ %i.ag, %bb.f ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.a                     ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %.thread32.i.i.i, label %bb.g, !prof !135

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ak
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = add i16 %.sroa.017.046.i.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.ar = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not43.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not43.i.i.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i, !prof !136

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.at = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i.i
  br label %bb.f, !llvm.loop !137

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ao, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.al, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i ], [ %.fca.1.insert.i.i.i.i, %bb.d ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %bb.b ] ; 2 uses
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit
  %i.ax = extractvalue { ptr, ptr } %.pn.i.i, 1   ; 2 uses
  %i.ay = icmp eq i32 %2, -1
  %spec.store.select = select i1 %i.ay, i32 0, i32 %2
  %i.az = sext i32 %spec.store.select to i64      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !86
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !88 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 4
  %.not = icmp sgt i64 %i.bh, %i.az
  br i1 %.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.az ; 2 uses
  %.sroa.07.0.copyload = load i64, ptr %i.bi, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit, %bb.j
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.copyload, %bb.j ], [ -1, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit ], [ -1, %bb.i ]
  %.sroa.07.0 = phi i64 [ %.sroa.07.0.copyload, %bb.j ], [ -1, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit ], [ -1, %bb.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZNK6google8protobuf10TextFormat13ParseInfoTree16GetTreeForNestedEPKNS0_15FieldDescriptorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !50 ; 2 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !65
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53, !noalias !138
  %i.v = and i64 %i.u, 65535
  %i.w = lshr i64 %i.s, 7
  %i.x = xor i64 %i.v, %i.w
  %i.y = trunc i64 %i.s to i8
  %i.z = and i8 %i.y, 127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i6.i.i = phi i64 [ %i.x, %bb.e ], [ %i.av, %bb.h ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.e ], [ %i.au, %bb.h ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.b    ; 4 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !50 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.sroa.017.046.i.i.i = phi i16 [ %i.ar, %bb.g ], [ %i.ah, %bb.f ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.b                     ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %.thread32.i.i.i, label %bb.g, !prof !135

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.al
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = add i16 %.sroa.017.046.i.i.i, -1
  %i.ar = and i16 %i.aq, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.as = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not43.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not43.i.i.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i, !prof !136

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.au = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.av = add i64 %i.au, %.sroa.6.0.i.i.i
  br label %bb.f, !llvm.loop !141

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ap, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i ], [ %.fca.1.insert.i.i.i.i, %bb.d ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %bb.b ] ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit
  %i.ay = extractvalue { ptr, ptr } %.pn.i.i, 1   ; 2 uses
  %i.az = icmp eq i32 %2, -1
  %spec.store.select = select i1 %i.az, i32 0, i32 %2
  %i.ba = sext i32 %spec.store.select to i64      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !113
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !117 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %.not = icmp sgt i64 %i.bi, %i.ba
  br i1 %.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ba
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !115
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit, %bb.i, %bb.j
  %.0 = phi ptr [ %i.bk, %bb.j ], [ null, %bb.i ], [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { ptr, ptr } @_ZN6google8protobuf10TextFormat6Parser19UnsetFieldsMetadata15GetUnsetFieldIdERKNS0_7MessageERKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %1, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10TextFormat7Printer19HardenedPrintStringESt17basic_string_viewIcSt11char_traitsIcEEPNS1_17BaseTextGeneratorE(i64 %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 1), !inline_history !142
  %i.d = icmp eq i64 %0, 0
  br i1 %i.d, label %.thread, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.sroa.0.039 = phi i64 [ %0, %.lr.ph.i.preheader.lr.ph ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 9 uses
  %.sroa.10.038 = phi ptr [ %1, %.lr.ph.i.preheader.lr.ph ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.thread.i
  %.02561.i = phi i64 [ %i.w, %.thread.i ], [ 0, %.lr.ph.i.preheader ] ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.10.038, i64 %.02561.i ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !50    ; 3 uses
  %i.i = icmp slt i8 %i.h, 0
  br i1 %i.i, label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i, label %bb.b

_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i: ; preds = %.lr.ph.i
  %i.j = add nuw i64 %.02561.i, 1
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.0.039, i64 %i.j) ; 2 uses
  %.032.i53 = add nuw i64 %.02561.i, 1            ; 2 uses
  %i.k = icmp ult i64 %.032.i53, %.sroa.0.039
  br i1 %i.k, label %.lr.ph, label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = add nsw i8 %i.h, -32
  %i.m = icmp ult i8 %i.l, 95
  br i1 %i.m, label %bb.c, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %bb.b
  switch i8 %i.h, label %.thread.i [
    i8 34, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 39, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 92, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ]

_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i: ; preds = %.lr.ph
  %.032.i = add nuw i64 %.032.i54, 1              ; 2 uses
  %i.n = icmp ult i64 %.032.i, %.sroa.0.039
  br i1 %i.n, label %.lr.ph, label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge, !llvm.loop !143

.lr.ph:                                           ; preds = %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i
  %.032.i54 = phi i64 [ %.032.i, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i ], [ %.032.i53, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.10.038, i64 %.032.i54
  %i.p = load i8, ptr %i.o, align 1, !tbaa !50
  %i.q = icmp slt i8 %i.p, 0
  br i1 %i.q, label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i, label %._crit_edge, !llvm.loop !143

._crit_edge:                                      ; preds = %.lr.ph
  br label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge, !llvm.loop !143

_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge: ; preds = %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i, %._crit_edge, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i
  %.032.lcssa.i = phi i64 [ %.032.i54, %._crit_edge ], [ %umax.i, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i ], [ %umax.i, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i ]
  %i.r = sub i64 %.032.lcssa.i, %.02561.i         ; 2 uses
  %i.s = sub nuw i64 %.sroa.0.039, %.02561.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r)
  %i.t = call noundef i64 @utf8_range_ValidPrefix(ptr noundef nonnull %i.g, i64 noundef %.sroa.speculated.i.i) ; 3 uses
  %.not.i = icmp eq i64 %i.t, %i.r
  %i.u = add i64 %.02561.i, -1
  %i.v = add i64 %i.u, %i.t
  br i1 %.not.i, label %.thread.i, label %.thread51.split.loop.exit57.i

.thread.i:                                        ; preds = %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge, %bb.c
  %.32845.i = phi i64 [ %i.v, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge ], [ %.02561.i, %bb.c ]
  %i.w = add i64 %.32845.i, 1                     ; 2 uses
  %i.x = icmp ult i64 %i.w, %.sroa.0.039
  br i1 %i.x, label %.lr.ph.i, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit, !llvm.loop !144

.thread51.split.loop.exit57.i:                    ; preds = %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge
  %i.y = add i64 %i.t, %.02561.i
  br label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.b, %bb.c, %bb.c, %bb.c, %.thread.i, %.thread51.split.loop.exit57.i
  %.5.i = phi i64 [ %i.y, %.thread51.split.loop.exit57.i ], [ %.02561.i, %bb.c ], [ %.02561.i, %bb.c ], [ %.02561.i, %bb.c ], [ %.02561.i, %bb.b ], [ %.sroa.0.039, %.thread.i ] ; 4 uses
  %.not = icmp eq i64 %.5.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.0.039, i64 %.5.i)
  %i.z = load ptr, ptr %2, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.sroa.10.038, i64 noundef %.sroa.speculated.i), !inline_history !145
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.10.038, i64 %.5.i
  %i.ad = sub i64 %.sroa.0.039, %.5.i             ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.10.1 = phi ptr [ %.sroa.10.038, %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.ac, %bb.d ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.039, %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.ad, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 1, ptr nonnull %.sroa.10.1)
  %i.af = load ptr, ptr %3, align 8, !tbaa !49
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !47
  %i.ah = load ptr, ptr %2, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.af, i64 noundef %i.ag)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.f, !inline_history !145

_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.e
  %i.ak = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.f
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.am = load i64, ptr %i.f, align 8, !tbaa !50
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.10.1, i64 1
  %i.ap = add i64 %.sroa.0.1, -1                  ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.thread, label %.lr.ph.i.preheader

bb.f:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev:bb.a

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.k = load i64, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53
  %i.q = and i64 %i.p, 65536
  %i.r = icmp ne i64 %i.q, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, ptr noundef %i.n, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.r)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE15destructor_implEv.exit unwind label %bb.e

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE15destructor_implEv.exit: ; preds = %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat14MessagePrinterEEclEPS4_.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %.noexc
  ret void

bb.e:                                             ; preds = %.noexc, %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.232, align 8            ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53
  %.not.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE15destructor_implEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE15destructor_implEv.exit, label %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #37, !inline_history !313
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE15destructor_implEv.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %0, ptr %1, align 8, !tbaa !61
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 16, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS7_10TextFormat21FastFieldValuePrinterESt14default_deleteISE_EEEENS3_6HashEqISA_vE4HashENSK_2EqESaISt4pairIKSA_SH_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSU_SV_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.k = load i64, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53
  %i.q = and i64 %i.p, 65536
  %i.r = icmp ne i64 %i.q, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, ptr noundef %i.n, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %i.r)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE15destructor_implEv.exit unwind label %bb.e

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE15destructor_implEv.exit: ; preds = %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %.noexc
  ret void

bb.e:                                             ; preds = %.noexc, %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #39
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf10TextFormat7Printer27SetDefaultFieldValuePrinterEPKNS1_21FastFieldValuePrinterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE5resetEPS4_.exit, label %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #37, !inline_history !314
  br label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE5resetEPS4_.exit

_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10TextFormat7Printer27SetDefaultFieldValuePrinterEPKNS1_17FieldValuePrinterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38, !noalias !315 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperE, i64 16), ptr %i.a, align 8, !tbaa !36, !noalias !315
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !318, !noalias !315
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 3 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #37, !inline_history !320
  br label %_ZNSt10unique_ptrIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf10TextFormat7Printer25RegisterFieldValuePrinterEPKNS0_15FieldDescriptorEPKNS1_17FieldValuePrinterE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"struct.std::pair.59", align 8     ; 11 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !65
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %_ZNSt10unique_ptrIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperESt14default_deleteIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38, !noalias !321 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperE, i64 16), ptr %i.d, align 8, !tbaa !36, !noalias !321
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !318, !noalias !321
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52, !noalias !345 ; 2 uses
  %i.h = icmp ne i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp ult i64 %i.g, 2
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53, !noalias !349
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.k, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 131072, ptr %i.j, align 8, !tbaa !243, !noalias !349
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65, !noalias !349 ; 2 uses
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = xor i64 %i.p, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = xor i64 %i.s, %i.p
  %i.u = mul i64 %i.t, 6679450291180483821
  %i.v = lshr i64 %i.u, 56
  %i.w = trunc nuw i64 %i.v to i8
  %i.x = and i8 %i.w, 127
  %i.y = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.z = xor i64 %i.y, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.aa = mul i64 %i.z, -2543921745674291987
  %i.ab = tail call noundef i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = xor i64 %i.ab, %i.y
  %i.ad = mul i64 %i.ac, -2543921745674291987
  %i.ae = tail call noundef i64 @llvm.bswap.i64(i64 %i.ad)
  %i.af = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ae, i8 noundef signext %i.x)
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperESt14default_deleteIS3_EED2Ev.exit14 ; 2 uses

.noexc:                                           ; preds = %bb.f
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !50, !noalias !349, !nonnull !78, !noundef !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !50, !noalias !349
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.af
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %.noexc, %bb.e, %bb.d
  %.sink17.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.e ]
  %.sink16.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.noexc ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %.sink.i.i.i.i.i.i.i.i = phi i8 [ 1, %.noexc ], [ 1, %bb.d ], [ 0, %bb.e ] ; 2 uses
  store ptr %.sink17.i.i.i.i.i.i.i.i, ptr %3, align 8, !alias.scope !349
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !349
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sink.i.i.i.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !350, !alias.scope !349
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESL_INSP_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.59") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperESt14default_deleteIS3_EED2Ev.exit14

.noexc10:                                         ; preds = %bb.g
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !350, !range !76, !alias.scope !353
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %.noexc10, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %i.al = phi i8 [ %.sink.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %.noexc10 ]
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %_ZNKSt14default_deleteIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperEEclEPS3_.exit.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !353 ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !65, !noalias !354
  store ptr %i.an, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !355
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !357
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !318 ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !318
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat17FieldValuePrinterEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIKN6google8protobuf10TextFormat17FieldValuePrinterEEclEPS4_.exit.i.i.i: ; preds = %bb.h
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ap) #37, !inline_history !358
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat17FieldValuePrinterEEclEPS4_.exit.i.i.i, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 3 uses
  store ptr %i.d, ptr %i.av, align 8, !tbaa !38
  %.not.i.i.i11 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i11, label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EEaSINS1_12_GLOBAL__N_124FieldValuePrinterWrapperES5_ISA_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS4_ESt6__not_ISt8is_arrayISF_EEEESt13is_assignableIRS6_OSG_EEE5valueERS7_E4typeEOSH_.exit.thread, label %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i: ; preds = %bb.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #37, !inline_history !320
  br label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EEaSINS1_12_GLOBAL__N_124FieldValuePrinterWrapperES5_ISA_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS4_ESt6__not_ISt8is_arrayISF_EEEESt13is_assignableIRS6_OSG_EEE5valueERS7_E4typeEOSH_.exit.thread

_ZNSt10unique_ptrIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperESt14default_deleteIS3_EED2Ev.exit14: ; preds = %bb.g, %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #37, !inline_history !359
  resume { ptr, i32 } %i.ba

_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EEaSINS1_12_GLOBAL__N_124FieldValuePrinterWrapperES5_ISA_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS4_ESt6__not_ISt8is_arrayISF_EEEESt13is_assignableIRS6_OSG_EEE5valueERS7_E4typeEOSH_.exit.thread: ; preds = %bb.i, %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %_ZNSt10unique_ptrIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperESt14default_deleteIS3_EED2Ev.exit

_ZNKSt14default_deleteIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperEEclEPS3_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #37, !inline_history !359
  br label %_ZNSt10unique_ptrIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperEEclEPS3_.exit.i, %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EEaSINS1_12_GLOBAL__N_124FieldValuePrinterWrapperES5_ISA_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS4_ESt6__not_ISt8is_arrayISF_EEEESt13is_assignableIRS6_OSG_EEE5valueERS7_E4typeEOSH_.exit.thread, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EEaSINS1_12_GLOBAL__N_124FieldValuePrinterWrapperES5_ISA_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS4_ESt6__not_ISt8is_arrayISF_EEEESt13is_assignableIRS6_OSG_EEE5valueERS7_E4typeEOSH_.exit.thread ], [ false, %_ZNKSt14default_deleteIN6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapperEEclEPS3_.exit.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf10TextFormat7Printer25RegisterFieldValuePrinterEPKNS0_15FieldDescriptorEPKNS1_21FastFieldValuePrinterE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"struct.std::pair.59", align 8     ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !65
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52, !noalias !381 ; 2 uses
  %i.f = icmp ne i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ult i64 %i.e, 2
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53, !noalias !385
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.i, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 131072, ptr %i.h, align 8, !tbaa !243, !noalias !385
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65, !noalias !385 ; 2 uses
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = xor i64 %i.n, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.p = mul i64 %i.o, -2543921745674291987
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  %i.r = xor i64 %i.q, %i.n
  %i.s = mul i64 %i.r, 6679450291180483821
  %i.t = lshr i64 %i.s, 56
  %i.u = trunc nuw i64 %i.t to i8
  %i.v = and i8 %i.u, 127
  %i.w = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.x = xor i64 %i.w, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.y = mul i64 %i.x, -2543921745674291987
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = xor i64 %i.z, %i.w
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ac, i8 noundef signext %i.v), !noalias !385 ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !50, !noalias !385, !nonnull !78, !noundef !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !50, !noalias !385
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ad
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sink17.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.f ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.e ]
  %.sink16.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  %.sink.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.f ], [ 1, %bb.d ], [ 0, %bb.e ] ; 2 uses
  store ptr %.sink17.i.i.i.i.i.i.i.i, ptr %3, align 8, !alias.scope !385
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !385
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sink.i.i.i.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !350, !alias.scope !385
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.b
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESL_INSP_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.59") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !350, !range !76, !alias.scope !386
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %i.aj = phi i8 [ %.sink.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %bb.g ]
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  br i1 %i.ak, label %bb.h, label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE5resetEPS4_.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !386 ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !65, !noalias !387
  store ptr %i.al, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !355
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !357
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38 ; 3 uses
  store ptr %2, ptr %i.ap, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE5resetEPS4_.exit, label %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i: ; preds = %bb.h
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #37, !inline_history !314
  br label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE5resetEPS4_.exit

_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i, %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat21FastFieldValuePrinterEEclEPS4_.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE5resetEPS4_.exit
  %.1 = phi i1 [ %i.ak, %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat21FastFieldValuePrinterESt14default_deleteIS4_EE5resetEPS4_.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf10TextFormat7Printer22RegisterMessagePrinterEPKNS0_10DescriptorEPKNS1_14MessagePrinterE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"struct.std::pair.72", align 8     ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !388
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52, !noalias !410 ; 2 uses
  %i.f = icmp ne i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ult i64 %i.e, 2
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53, !noalias !414
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.i, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 131072, ptr %i.h, align 8, !tbaa !243, !noalias !414
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !388, !noalias !414 ; 2 uses
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = xor i64 %i.n, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.p = mul i64 %i.o, -2543921745674291987
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  %i.r = xor i64 %i.q, %i.n
  %i.s = mul i64 %i.r, 6679450291180483821
  %i.t = lshr i64 %i.s, 56
  %i.u = trunc nuw i64 %i.t to i8
  %i.v = and i8 %i.u, 127
  %i.w = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.x = xor i64 %i.w, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.y = mul i64 %i.x, -2543921745674291987
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = xor i64 %i.z, %i.w
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ac, i8 noundef signext %i.v), !noalias !414 ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !50, !noalias !414, !nonnull !78, !noundef !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !50, !noalias !414
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ad
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sink17.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.f ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.e ]
  %.sink16.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  %.sink.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.f ], [ 1, %bb.d ], [ 0, %bb.e ] ; 2 uses
  store ptr %.sink17.i.i.i.i.i.i.i.i, ptr %3, align 8, !alias.scope !414
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !414
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sink.i.i.i.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !415, !alias.scope !414
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.b
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESL_INSP_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.72") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !415, !range !76, !alias.scope !418
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %i.aj = phi i8 [ %.sink.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE26find_or_prepare_insert_sooIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %bb.g ]
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  br i1 %i.ak, label %bb.h, label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat14MessagePrinterESt14default_deleteIS4_EE5resetEPS4_.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !418 ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !388, !noalias !419
  store ptr %i.al, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !420
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !428
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54 ; 3 uses
  store ptr %2, ptr %i.ap, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat14MessagePrinterESt14default_deleteIS4_EE5resetEPS4_.exit, label %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat14MessagePrinterEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIKN6google8protobuf10TextFormat14MessagePrinterEEclEPS4_.exit.i.i: ; preds = %bb.h
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #37, !inline_history !429
  br label %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat14MessagePrinterESt14default_deleteIS4_EE5resetEPS4_.exit

_ZNSt10unique_ptrIKN6google8protobuf10TextFormat14MessagePrinterESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE22find_or_prepare_insertIS8_EESL_INSP_8iteratorEbERKT_.exit.i.i.i.i.i.i, %_ZNKSt14default_deleteIKN6google8protobuf10TextFormat14MessagePrinterEEclEPS4_.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat14MessagePrinterESt14default_deleteIS4_EE5resetEPS4_.exit
  %.1 = phi i1 [ %i.ak, %_ZNSt10unique_ptrIKN6google8protobuf10TextFormat14MessagePrinterESt14default_deleteIS4_EE5resetEPS4_.exit ], [ false, %bb.a ]
  ret i1 %.1
}

declare void @_ZN6google8protobuf2io18StringOutputStreamC1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10TextFormat7Printer5PrintERKNS0_7MessageEPNS0_2io20ZeroCopyOutputStreamENS0_8internal18FieldReporterLevelE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i32 %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.google::protobuf::TextFormat::Printer::TextGenerator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.b = load i8, ptr %i.a, align 1, !tbaa !430, !range !76, !noundef !78
  %i.c = load i32, ptr %0, align 8, !tbaa !431    ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %4, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %2, ptr %i.d, align 8, !tbaa !432
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !436
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !437
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 1, ptr %i.g, align 4, !tbaa !438
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 29 ; 3 uses
  store i8 0, ptr %i.h, align 1, !tbaa !439
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 30
  store i8 %i.b, ptr %i.i, align 2, !tbaa !440
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.c, ptr %i.j, align 8, !tbaa !441
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.c, ptr %i.k, align 4, !tbaa !442
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !41, !range !76, !noundef !78
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !42, !range !76, !noundef !78
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i8, ptr %i.r, align 4, !tbaa !9, !range !76, !noundef !78
  %i.t = trunc nuw i8 %i.s to i1
  invoke void @_ZN6google8protobuf8internal15PrintTextMarkerEPNS0_10TextFormat17BaseTextGeneratorEbbb(ptr noundef nonnull %4, i1 noundef zeroext %i.n, i1 noundef zeroext %i.q, i1 noundef zeroext %i.t)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6google8protobuf10TextFormat7Printer5PrintERKNS0_7MessageEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.u = load i8, ptr %i.h, align 1, !tbaa !439, !range !76, !noundef !78
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %4, align 8, !tbaa !36
  br i1 %i.v, label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !432  ; 2 uses
  %i.x = load i32, ptr %i.f, align 8, !tbaa !437
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef %i.x)
          to label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit unwind label %bb.e, !inline_history !443

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #39, !inline_history !443
  unreachable

_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit: ; preds = %bb.c, %bb.d
  %i.ad = xor i1 %i.v, true
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret i1 %i.ad

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %4, align 8, !tbaa !36
  %i.af = load i8, ptr %i.h, align 1, !tbaa !439, !range !76, !noundef !78
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !432 ; 2 uses
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !437
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %i.ai)
          to label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit4 unwind label %bb.h, !inline_history !443

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #39, !inline_history !443
  unreachable

_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10TextFormat7Printer26PrintUnknownFieldsToStringERKNS0_15UnknownFieldSetEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef initializes((8, 16)) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::protobuf::io::StringOutputStream", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !47
  %i.b = load ptr, ptr %2, align 8, !tbaa !49
  store i8 0, ptr %i.b, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZN6google8protobuf2io18StringOutputStreamC1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2)
  %i.c = call noundef zeroext i1 @_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS0_2io20ZeroCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS0_2io20ZeroCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::protobuf::TextFormat::Printer::TextGenerator", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = load i32, ptr %0, align 8, !tbaa !431    ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %3, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !432
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !436
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !437
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 1, ptr %i.e, align 4, !tbaa !438
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 29 ; 3 uses
  store i8 0, ptr %i.f, align 1, !tbaa !439
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 0, ptr %i.g, align 2, !tbaa !440
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.a, ptr %i.h, align 8, !tbaa !441
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.a, ptr %i.i, align 4, !tbaa !442
  invoke void @_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS1_17BaseTextGeneratorEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %3, i32 noundef 10)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.f, align 1, !tbaa !439, !range !76, !noundef !78
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %3, align 8, !tbaa !36
  br i1 %i.k, label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit, label %bb.c
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf10TextFormat7Printer5PrintERKNS0_7MessageEPNS1_17BaseTextGeneratorE:bb.a
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !50
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  invoke void @_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS1_17BaseTextGeneratorEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %2, i32 noundef 10)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !449
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.noexc.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6google8protobuf15UnknownFieldSet13ClearFallbackEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.g, %bb.f
  %i.q = load ptr, ptr %3, align 8, !tbaa !452    ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i, label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i

_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i: ; preds = %.noexc.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !47
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !49
  store i8 0, ptr %i.s, align 1, !tbaa !50
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !452  ; 4 uses
  %i.t = icmp eq ptr %.pr.i, null
  br i1 %i.t, label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i
  %i.u = load ptr, ptr %.pr.i, align 8, !tbaa !49 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pr.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !50
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef 32) #40
  br label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i

_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i, %.noexc.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !455
  %i.ab = and i32 %i.aa, 1
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN6google8protobuf15UnknownFieldSetD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !50
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 4
  %i.ai = add nsw i64 %i.ah, 16
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #37
  br label %_ZN6google8protobuf15UnknownFieldSetD2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #39
  unreachable

_ZN6google8protobuf15UnknownFieldSetD2Ev.exit:    ; preds = %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.thread.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.z

bb.k:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.l:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.an, %bb.m ], [ %i.am, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ao = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.n
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !50
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn16 = phi { ptr, i32 } [ %i.at, %bb.o ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  call void @_ZN6google8protobuf15UnknownFieldSetD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn16

bb.q:                                             ; preds = %bb.a
  %i.au = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.av = extractvalue { ptr, ptr } %i.au, 0      ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !52 ; 4 uses
  %i.ay = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp ult i64 %i.ax, 2
  br i1 %i.az, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !53
  %.not.i.i.i.i = icmp ult i64 %i.bb, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE4findIS8_EENSP_14const_iteratorERKT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !388
  %i.be = icmp eq ptr %i.bd, %i.av
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.bc, 1
  %spec.select.i.i.i = select i1 %i.be, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE4findIS8_EENSP_14const_iteratorERKT_.exit

bb.t:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.bg, i32 0, i32 1, i32 1)
  %i.bh = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bi = xor i64 %i.bh, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bj = mul i64 %i.bi, -2543921745674291987
  %i.bk = tail call noundef i64 @llvm.bswap.i64(i64 %i.bj)
  %i.bl = xor i64 %i.bk, %i.bh
  %i.bm = mul i64 %i.bl, -2543921745674291987
  %i.bn = tail call noundef i64 @llvm.bswap.i64(i64 %i.bm) ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !53, !noalias !456
  %i.bq = and i64 %i.bp, 65535
  %i.br = lshr i64 %i.bn, 7
  %i.bs = xor i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bn to i8
  %i.bu = and i8 %i.bt, 127
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !50 ; 2 uses
  %i.bw = insertelement <16 x i8> poison, i8 %i.bu, i64 0
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.pn.i6.i.i = phi i64 [ %i.bs, %bb.t ], [ %i.cq, %bb.w ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.t ], [ %i.cp, %bb.w ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.ax   ; 4 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.by, i32 0, i32 3, i32 1)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.6.0.i.i.i
  %i.ca = load <16 x i8>, ptr %i.bz, align 1, !tbaa !50 ; 2 uses
  %i.cb = icmp eq <16 x i8> %i.bx, %i.ca
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %bb.v
  %.sroa.017.046.i.i.i = phi i16 [ %i.cm, %bb.v ], [ %i.cc, %bb.u ] ; 3 uses
  %i.cd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = add i64 %.sroa.6.0.i.i.i, %i.ce
  %i.cg = and i64 %i.cf, %i.ax                    ; 2 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.cg ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !388
  %i.cj = icmp eq ptr %i.ci, %i.av
  br i1 %i.cj, label %.thread32.i.i.i, label %bb.v, !prof !135

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cg
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.cl = add i16 %.sroa.017.046.i.i.i, -1
  %i.cm = and i16 %i.cl, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.v, %bb.u
  %i.cn = icmp eq <16 x i8> %i.ca, splat (i8 -128)
  %i.co = bitcast <16 x i1> %i.cn to i16
  %.not43.i.i.i = icmp eq i16 %i.co, 0
  br i1 %.not43.i.i.i, label %bb.w, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i, !prof !136

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.cp = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.cq = add i64 %i.cp, %.sroa.6.0.i.i.i
  br label %bb.u, !llvm.loop !459

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ck, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ch, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE4findIS8_EENSP_14const_iteratorERKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE4findIS8_EENSP_14const_iteratorERKT_.exit: ; preds = %bb.r, %bb.s, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.r ], [ %spec.select.i.i.i, %bb.s ] ; 2 uses
  %i.cr = extractvalue { ptr, ptr } %.pn.i.i, 0
  %.not24 = icmp eq ptr %i.cr, null
  br i1 %.not24, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE4findIS8_EENSP_14const_iteratorERKT_.exit
  %i.cs = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !54 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !9, !range !76, !noundef !78
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %i.cx, ptr noundef %2)
  br label %bb.z

bb.y:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE4findIS8_EENSP_14const_iteratorERKT_.exit
  tail call void @_ZNK6google8protobuf10TextFormat7Printer12PrintMessageERKNS0_7MessageEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %_ZN6google8protobuf15UnknownFieldSetD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.b = load i8, ptr %i.a, align 1, !tbaa !439, !range !76, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !432  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !437
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS1_17BaseTextGeneratorEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.absl::lts_20250512::Hex", align 8 ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"struct.absl::lts_20250512::Hex", align 8 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.google::protobuf::io::CodedInputStream", align 8 ; 17 uses
  %7 = alloca %"class.google::protobuf::UnknownFieldSet", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !449
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 11 uses
  %i.n = add nsw i32 %3, -1                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.z = icmp slt i32 %3, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 9
  br label %bb.b

._crit_edge:                                      ; preds = %bb.bj, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.bj
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bj ] ; 2 uses
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !455
  %i.ak = and i32 %i.aj, 1
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = load ptr, ptr %i.k, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.0.i.i.i.i.i.i.i = select i1 %i.al, ptr %i.k, ptr %i.an
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i, i64 %indvars.iv ; 11 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !460
  switch i32 %i.aq, label %bb.bj [
    i32 0, label %bb.c
    i32 1, label %bb.i
    i32 2, label %bb.o
    i32 3, label %bb.u
    i32 4, label %bb.az
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ar = load i32, ptr %i.ao, align 8, !tbaa !462
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !3
  call void @_ZN6google8protobuf10TextFormat20OutOfLinePrintStringIJiEEEvPNS1_17BaseTextGeneratorEDpRKT_(ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.as = load ptr, ptr %2, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 2, ptr nonnull @.str.18)
  %i.av = load i8, ptr %i.l, align 8, !tbaa !41, !range !76, !noundef !78
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN6google8protobuf10TextFormat20OutOfLinePrintStringIJA16_cEEEvPNS1_17BaseTextGeneratorEDpRKT_(ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(16) @.str.24)
  call void @_ZN6google8protobuf10TextFormat20OutOfLinePrintStringIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvPNS1_17BaseTextGeneratorEDpRKT_(ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) @_ZN6google8protobuf12_GLOBAL__N_122kFieldValueReplacementE)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !50
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !243
  call void @_ZN6google8protobuf10TextFormat20OutOfLinePrintStringIJmEEEvPNS1_17BaseTextGeneratorEDpRKT_(ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.az = load i8, ptr %i.m, align 4, !tbaa !9, !range !76, !noundef !78
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = load ptr, ptr %2, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.19, i64 noundef 1), !inline_history !142
  br label %bb.bj

bb.h:                                             ; preds = %bb.f
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.20, i64 noundef 1), !inline_history !142
  br label %bb.bj

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf10TextFormat7Printer8PrintAnyERKNS0_7MessageEPNS1_17BaseTextGeneratorE:bb.a
  br label %bb.av

bb.m:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit, %bb.k, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #43
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn53 = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.aa, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.av

bb.p:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN6google8protobuf21DynamicMessageFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ac = invoke noundef ptr @_ZN6google8protobuf21DynamicMessageFactory12GetPrototypeEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.w)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.ad = invoke noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef null)
          to label %_ZNK6google8protobuf7Message3NewEv.exit unwind label %bb.y ; 7 uses

_ZNK6google8protobuf7Message3NewEv.exit:          ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !65
  invoke void @_ZNK6google8protobuf10Reflection9GetStringB5cxx11ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ae)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %_ZNK6google8protobuf7Message3NewEv.exit
  %i.af = load ptr, ptr %8, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !47
  %i.ai = invoke noundef zeroext i1 @_ZN6google8protobuf11MessageLite15ParseFromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 %i.ah, ptr %i.af)
          to label %bb.t unwind label %bb.aa      ; 2 uses

bb.t:                                             ; preds = %bb.s
  br i1 %i.ai, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.13, i32 noundef 2336) #42
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.aj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.w unwind label %bb.ac      ; 2 uses

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 26, ptr nonnull @.str.16)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit unwind label %bb.ac

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit: ; preds = %bb.w
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit60 unwind label %bb.ac

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit60: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.ar

bb.x:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.y:                                             ; preds = %bb.r, %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit69

bb.z:                                             ; preds = %_ZNK6google8protobuf7Message3NewEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.aa:                                            ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit, %bb.ae, %bb.s
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ab:                                            ; preds = %bb.u
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit, %bb.w, %bb.v
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #43
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.ac ], [ %i.ao, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.as

bb.ae:                                            ; preds = %bb.t
  %i.aq = load ptr, ptr %2, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit unwind label %bb.aa, !inline_history !142

_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit: ; preds = %bb.ae
  %i.at = load ptr, ptr %3, align 8, !tbaa !49
  %i.au = load i64, ptr %i.l, align 8, !tbaa !47
  %i.av = load ptr, ptr %2, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.at, i64 noundef %i.au)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.aa, !inline_history !145

_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit
  %i.ay = load ptr, ptr %2, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit63 unwind label %bb.aa, !inline_history !142

_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit63: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !65  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !52 ; 4 uses
  %i.be = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp ult i64 %i.bd, 2
  br i1 %i.bf, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit63
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !53
  %.not.i.i.i.i.i = icmp ult i64 %i.bh, 131072
  br i1 %.not.i.i.i.i.i, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65
  %i.bk = icmp eq ptr %i.bj, %i.bb
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.bi, 1
  %spec.select.i.i.i.i = select i1 %i.bk, { ptr, ptr } %.fca.1.insert.i.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %bb.al

bb.ah:                                            ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit63
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.bm, i32 0, i32 1, i32 1)
  %i.bn = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bo = xor i64 %i.bn, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bp = mul i64 %i.bo, -2543921745674291987
  %i.bq = call noundef i64 @llvm.bswap.i64(i64 %i.bp)
  %i.br = xor i64 %i.bq, %i.bn
  %i.bs = mul i64 %i.br, -2543921745674291987
  %i.bt = call noundef i64 @llvm.bswap.i64(i64 %i.bs) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !53, !noalias !480
  %i.bw = and i64 %i.bv, 65535
  %i.bx = lshr i64 %i.bt, 7
  %i.by = xor i64 %i.bw, %i.bx
  %i.bz = trunc i64 %i.bt to i8
  %i.ca = and i8 %i.bz, 127
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !50 ; 2 uses
  %i.cc = insertelement <16 x i8> poison, i8 %i.ca, i64 0
  %i.cd = shufflevector <16 x i8> %i.cc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.ah
  %.pn.i6.i.i.i = phi i64 [ %i.by, %bb.ah ], [ %i.cw, %bb.ak ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.ah ], [ %i.cv, %bb.ak ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.bd ; 4 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.ce, i32 0, i32 3, i32 1)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.6.0.i.i.i.i
  %i.cg = load <16 x i8>, ptr %i.cf, align 1, !tbaa !50 ; 2 uses
  %i.ch = icmp eq <16 x i8> %i.cd, %i.cg
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not45.i.i.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not45.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai, %bb.aj
  %.sroa.017.046.i.i.i.i = phi i16 [ %i.cs, %bb.aj ], [ %i.ci, %bb.ai ] ; 3 uses
  %i.cj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i, i1 true)
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = add i64 %.sroa.6.0.i.i.i.i, %i.ck
  %i.cm = and i64 %i.cl, %i.bd                    ; 2 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.cm ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !65
  %i.cp = icmp eq ptr %i.co, %i.bb
  br i1 %i.cp, label %.thread32.i.i.i.i, label %bb.aj, !prof !135

.thread32.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cm
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cr = add i16 %.sroa.017.046.i.i.i.i, -1
  %i.cs = and i16 %i.cr, %.sroa.017.046.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.cs, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.aj, %bb.ai
  %i.ct = icmp eq <16 x i8> %i.cg, splat (i8 -128)
  %i.cu = bitcast <16 x i1> %i.ct to i16
  %.not43.i.i.i.i = icmp eq i16 %i.cu, 0
  br i1 %.not43.i.i.i.i, label %bb.ak, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i, !prof !136

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  %i.cv = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.6.0.i.i.i.i
  br label %bb.ai, !llvm.loop !483

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.thread32.i.i.i.i
  %.sroa.0.4.ph.i.i.i.i = phi ptr [ %i.cq, %.thread32.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ]
  %.sroa.3.4.ph.i.i.i.i = phi ptr [ %i.cn, %.thread32.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.3.4.ph.i.i.i.i, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i, %bb.ag, %bb.af
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.af ], [ %spec.select.i.i.i.i, %bb.ag ] ; 2 uses
  %i.cx = extractvalue { ptr, ptr } %.pn.i.i.i, 0
  %i.cy = icmp eq ptr %i.cx, null
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.in.i = select i1 %i.cy, ptr %i.cz, ptr %i.db
  %i.dc = load ptr, ptr %.in.i, align 8, !tbaa !38 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 4, !tbaa !9, !range !76, !noundef !78
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !36
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 112
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef -1, i32 noundef 0, i1 noundef zeroext %i.df, ptr noundef nonnull %2)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.dj = load ptr, ptr %2, align 8, !tbaa !36
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNK6google8protobuf10TextFormat7Printer5PrintERKNS0_7MessageEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull %2)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dm = load ptr, ptr %2, align 8, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dp = load i8, ptr %i.dd, align 4, !tbaa !9, !range !76, !noundef !78
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = load ptr, ptr %i.dc, align 8, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 128
  %i.dt = load ptr, ptr %i.ds, align 8
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef -1, i32 noundef 0, i1 noundef zeroext %i.dq, ptr noundef nonnull %2)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit60
  %i.dv = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ar
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !50
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #40
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.ea = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #37, !inline_history !484
  call void @_ZN6google8protobuf21DynamicMessageFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.au

bb.as:                                            ; preds = %bb.aq, %bb.ad, %bb.aa
  %.pn48 = phi { ptr, i32 } [ %i.du, %bb.aq ], [ %i.an, %bb.aa ], [ %.pn, %bb.ad ] ; 2 uses
  %i.ed = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.as
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !50
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.z
  %.pn48.pn = phi { ptr, i32 } [ %i.am, %bb.z ], [ %.pn48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.pn48, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %.not.i67 = icmp eq ptr %i.ad, null
  br i1 %.not.i67, label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit69, label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i68

_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.ei = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #37, !inline_history !484
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit69

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit69: ; preds = %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.y
  %.pn48.pn.pn = phi { ptr, i32 } [ %i.al, %bb.y ], [ %.pn48.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %.pn48.pn, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i68 ]
  call void @_ZN6google8protobuf21DynamicMessageFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #37
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit69, %bb.x
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit69 ], [ %i.ak, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.av

bb.au:                                            ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit, %bb.c
  %.2 = phi i1 [ false, %bb.c ], [ false, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %i.ai, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit ]
  %i.el = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.i
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.au
  %i.en = load i64, ptr %i.i, align 8, !tbaa !50
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ep = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.g
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.er = load i64, ptr %i.g, align 8, !tbaa !50
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.et = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !50
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.aw

bb.av:                                            ; preds = %bb.l, %bb.o, %bb.at, %bb.d
  %.pn53.pn.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %.pn53, %bb.o ], [ %.pn48.pn.pn.pn, %bb.at ], [ %i.z, %bb.l ]
  %i.ey = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.i
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.av
  %i.fa = load i64, ptr %i.i, align 8, !tbaa !50
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.fc = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.g
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.fe = load i64, ptr %i.g, align 8, !tbaa !50
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf10TextFormat7Printer12PrintMessageERKNS0_7MessageEPNS1_17BaseTextGeneratorE:bb.a

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !491
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #40
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit43

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit43: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn
}

declare void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10TextFormat7Printer10PrintFieldERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.google::protobuf::internal::MapEntries", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 2, !tbaa !499, !range !76, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 32
  %.not = icmp ne i8 %i.f, 0
  %or.cond.not = select i1 %i.c, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.h = load i8, ptr %i.g, align 2, !tbaa !255
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !258
  %.off = add i32 %i.k, -9
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10TextFormat7Printer23PrintShortRepeatedFieldERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4)
  br label %bb.ap

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.m = and i8 %i.e, 32
  %.not87 = icmp eq i8 %i.m, 0
  br i1 %.not87, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = tail call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
  br label %bb.h

bb.e:                                             ; preds = %._crit_edge
  %i.o = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !495
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !485
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 51
  %i.u = load i8, ptr %i.t, align 1, !tbaa !50, !range !76, !noundef !78
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.0 = phi i32 [ %i.n, %bb.d ], [ 1, %bb.g ], [ 0, %bb.f ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 16
  %.not88 = icmp eq i8 %i.y, 0                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  br i1 %.not88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN6google8protobuf8internal21MapFieldPrinterHelper7SortMapERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"struct.google::protobuf::internal::MapEntries") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = icmp sgt i32 %.0, 0
  br i1 %i.z, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ae = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.af = xor i64 %i.ae, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ag = mul i64 %i.af, -2543921745674291987
  %i.ah = tail call i64 @llvm.bswap.i64(i64 %i.ag)
  %i.ai = xor i64 %i.ah, %i.ae
  %i.aj = mul i64 %i.ai, -2543921745674291987
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %i.aj) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = lshr i64 %i.ak, 7
  %i.an = trunc i64 %i.ak to i8
  %i.ao = and i8 %i.an, 127
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = insertelement <16 x i8> poison, i8 %i.ao, i64 0
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <16 x i32> zeroinitializer
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.ad, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  %wide.trip.count = zext nneg i32 %.0 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit ] ; 3 uses
  %i.au = load i8, ptr %i.l, align 1
  %i.av = and i8 %i.au, 32
  %.not89 = icmp eq i8 %i.av, 0
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ax = select i1 %.not89, i32 -1, i32 %i.aw    ; 5 uses
  invoke void @_ZNK6google8protobuf10TextFormat7Printer14PrintFieldNameERKNS0_7MessageEiiPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ax, i32 noundef %.0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ay = load i8, ptr %i.aa, align 2, !tbaa !255
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !258
  %i.bc = icmp eq i32 %i.bb, 10
  br i1 %i.bc, label %bb.n, label %bb.ak

bb.n:                                             ; preds = %bb.m
  %i.bd = invoke noundef zeroext i1 @_ZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nonnull align 8 poison, ptr noundef nonnull %3, ptr noundef %4, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.bd, label %.critedge, label %bb.q

bb.p:                                             ; preds = %.invoke, %bb.al, %bb.ak, %bb.n, %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.q:                                             ; preds = %bb.o
  %i.bf = load i64, ptr %i.ac, align 8, !tbaa !52 ; 4 uses
  %i.bg = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp ult i64 %i.bf, 2
  br i1 %i.bh, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bi = load i64, ptr %i.al, align 8, !tbaa !53
  %.not.i.i.i.i.i = icmp ult i64 %i.bi, 131072
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !65
  %i.bk = icmp eq ptr %i.bj, %3
  %spec.select.i.i.i.i = select i1 %i.bk, { ptr, ptr } %.fca.1.insert.i.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %bb.x

bb.t:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.bl, i32 0, i32 1, i32 1)
  %i.bm = load i64, ptr %i.al, align 8, !tbaa !53, !noalias !500
  %i.bn = and i64 %i.bm, 65535
  %i.bo = xor i64 %i.bn, %i.am
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !50 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.pn.i6.i.i.i = phi i64 [ %i.bo, %bb.t ], [ %i.ch, %bb.w ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.t ], [ %i.cg, %bb.w ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.bf ; 4 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.bp, i32 0, i32 3, i32 1)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sroa.6.0.i.i.i.i
  %i.br = load <16 x i8>, ptr %i.bq, align 1, !tbaa !50 ; 2 uses
  %i.bs = icmp eq <16 x i8> %i.ar, %i.br
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not45.i.i.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not45.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %bb.v
  %.sroa.017.046.i.i.i.i = phi i16 [ %i.cd, %bb.v ], [ %i.bt, %bb.u ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = add i64 %.sroa.6.0.i.i.i.i, %i.bv
  %i.bx = and i64 %i.bw, %i.bf                    ; 2 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.bx ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !65
  %i.ca = icmp eq ptr %i.bz, %3
  br i1 %i.ca, label %.thread32.i.i.i.i, label %bb.v, !prof !135

.thread32.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bx
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cc = add i16 %.sroa.017.046.i.i.i.i, -1
  %i.cd = and i16 %i.cc, %.sroa.017.046.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.v, %bb.u
  %i.ce = icmp eq <16 x i8> %i.br, splat (i8 -128)
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %.not43.i.i.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not43.i.i.i.i, label %bb.w, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i, !prof !136

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cg = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ch = add i64 %i.cg, %.sroa.6.0.i.i.i.i
  br label %bb.u, !llvm.loop !483

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.thread32.i.i.i.i
  %.sroa.0.4.ph.i.i.i.i = phi ptr [ %i.cb, %.thread32.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ]
  %.sroa.3.4.ph.i.i.i.i = phi ptr [ %i.by, %.thread32.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.3.4.ph.i.i.i.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.r, %bb.s, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.r ], [ %spec.select.i.i.i.i, %bb.s ] ; 2 uses
  %i.ci = extractvalue { ptr, ptr } %.pn.i.i.i, 0
  %i.cj = icmp eq ptr %i.ci, null
  %i.ck = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.in.i = select i1 %i.cj, ptr %i.as, ptr %i.cl
  %i.cm = load ptr, ptr %.in.i, align 8, !tbaa !38 ; 6 uses
  %i.cn = load i8, ptr %i.l, align 1
  %i.co = and i8 %i.cn, 32
  %.not90 = icmp eq i8 %i.co, 0
  br i1 %.not90, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not88, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = load ptr, ptr %i.at, align 8, !tbaa !503
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !506
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.cs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i32 noundef %i.aw)
          to label %bb.ac unwind label %bb.ah

bb.ab:                                            ; preds = %bb.x
  %i.ct = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, ptr noundef null)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.aa
  %i.cu = phi ptr [ %i.cs, %bb.aa ], [ %i.cr, %bb.z ], [ %i.ct, %bb.ab ] ; 4 uses
  %i.cv = load i8, ptr %i.ab, align 4, !tbaa !9, !range !76, !noundef !78
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 112
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i32 noundef %i.ax, i32 noundef %.0, i1 noundef zeroext %i.cw, ptr noundef %4)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.da = load ptr, ptr %4, align 8, !tbaa !36
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load i8, ptr %i.ab, align 4, !tbaa !9, !range !76, !noundef !78
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = load ptr, ptr %i.cm, align 8, !tbaa !36
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 120
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i32 noundef %i.ax, i32 noundef %.0, i1 noundef zeroext %i.de, ptr noundef nonnull %4)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  br i1 %i.di, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNK6google8protobuf10TextFormat7Printer5PrintERKNS0_7MessageEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull %4)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.dk = load ptr, ptr %4, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.aj unwind label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  %i.dn = load i8, ptr %i.ab, align 4, !tbaa !9, !range !76, !noundef !78
  %i.do = trunc nuw i8 %i.dn to i1
  %i.dp = load ptr, ptr %i.cm, align 8, !tbaa !36
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i32 noundef %i.ax, i32 noundef %.0, i1 noundef zeroext %i.do, ptr noundef nonnull %4)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit unwind label %bb.ah

bb.ak:                                            ; preds = %bb.m
  %i.ds = load ptr, ptr %4, align 8, !tbaa !36
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 2, ptr nonnull @.str.18)
          to label %bb.al unwind label %bb.p

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZNK6google8protobuf10TextFormat7Printer15PrintFieldValueERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEiPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %i.ax, ptr noundef nonnull %4)
          to label %.invoke unwind label %bb.p

.invoke:                                          ; preds = %bb.al
  %i.dv = load i8, ptr %i.ab, align 4, !tbaa !9, !range !76, !noundef !78
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = load ptr, ptr %4, align 8, !tbaa !36
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8
  %.str.19..str.20 = select i1 %i.dw, ptr @.str.19, ptr @.str.20
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.str.19..str.20, i64 noundef 1)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit unwind label %bb.p, !inline_history !142

_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit: ; preds = %.invoke, %bb.aj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.l, !llvm.loop !508

bb.am:                                            ; preds = %bb.ah, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.p ], [ %i.dj, %bb.ah ]
  call void @_ZN6google8protobuf8internal10MapEntriesD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %.pn.pn

.critedge:                                        ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit, %bb.o, %bb.k
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !503 ; 3 uses
  %.not.i.i.i.i85 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i85, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %.critedge
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !509
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #40
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i: ; preds = %bb.an, %.critedge
  %i.eh = load ptr, ptr %5, align 8, !tbaa !510   ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !513 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.eh, %i.ej
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i86

.lr.ph.i.i.i.i86:                                 ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.eo, %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.eh, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i ] ; 2 uses
  %i.ek = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !506 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIKN6google8protobuf7MessageEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIKN6google8protobuf7MessageEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i86
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !36
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  tail call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #37, !inline_history !514
  br label %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIKN6google8protobuf7MessageEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i86
  %i.eo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.eo, %i.ej
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i86, !llvm.loop !515

_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i
  %.not.i.i1.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i1.i.i, label %_ZN6google8protobuf8internal10MapEntriesD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !516
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eh to i64
  %i.et = sub i64 %i.er, %i.es
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.et) #40
  br label %_ZN6google8protobuf8internal10MapEntriesD2Ev.exit

_ZN6google8protobuf8internal10MapEntriesD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN6google8protobuf8internal10MapEntriesD2Ev.exit, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10TextFormat7Printer23PrintFieldValueToStringERKNS0_7MessageEPKNS0_15FieldDescriptorEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i32 noundef %3, ptr noundef initializes((8, 16)) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.google::protobuf::io::StringOutputStream", align 8 ; 5 uses
  %6 = alloca %"class.google::protobuf::TextFormat::Printer::TextGenerator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !47
  %i.b = load ptr, ptr %4, align 8, !tbaa !49
  store i8 0, ptr %i.b, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @_ZN6google8protobuf2io18StringOutputStreamC1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.c = load i32, ptr %0, align 8, !tbaa !431    ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %6, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %5, ptr %i.d, align 8, !tbaa !432
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !436
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !437
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 1, ptr %i.g, align 4, !tbaa !438
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 29 ; 3 uses
  store i8 0, ptr %i.h, align 1, !tbaa !439
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i8 0, ptr %i.i, align 2, !tbaa !440
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.c, ptr %i.j, align 8, !tbaa !441
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 %i.c, ptr %i.k, align 4, !tbaa !442
  %i.l = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, ptr } %i.l, 1
  invoke void @_ZNK6google8protobuf10TextFormat7Printer15PrintFieldValueERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEiPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.m, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %6, align 8, !tbaa !36
  %i.n = load i8, ptr %i.h, align 1, !tbaa !439, !range !76, !noundef !78
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !432  ; 2 uses
  %i.q = load i32, ptr %i.f, align 8, !tbaa !437
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %i.q)
          to label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit unwind label %bb.e, !inline_history !443

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #39, !inline_history !443
  unreachable

_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %6, align 8, !tbaa !36
  %i.x = load i8, ptr %i.h, align 1, !tbaa !439, !range !76, !noundef !78
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !432  ; 2 uses
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !437
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.aa)
          to label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit8 unwind label %bb.h, !inline_history !443

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #39, !inline_history !443
  unreachable

_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit8: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10TextFormat7Printer15PrintFieldValueERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEiPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 4 uses
  %i.c = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ult i64 %i.b, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53
  %.not.i.i.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = icmp eq ptr %i.h, %3
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.g, 1
  %spec.select.i.i.i.i = select i1 %i.i, { ptr, ptr } %.fca.1.insert.i.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.m = xor i64 %i.l, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.n = mul i64 %i.m, -2543921745674291987
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  %i.p = xor i64 %i.o, %i.l
  %i.q = mul i64 %i.p, -2543921745674291987
  %i.r = tail call noundef i64 @llvm.bswap.i64(i64 %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !53, !noalias !517
  %i.u = and i64 %i.t, 65535
  %i.v = lshr i64 %i.r, 7
  %i.w = xor i64 %i.u, %i.v
  %i.x = trunc i64 %i.r to i8
  %i.y = and i8 %i.x, 127
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !50 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i.i = phi i64 [ %i.w, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.b ; 4 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.6.0.i.i.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !50 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i.i = phi i16 [ %i.aq, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.b                     ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65
  %i.an = icmp eq ptr %i.am, %3
  br i1 %i.an, label %.thread32.i.i.i.i, label %bb.f, !prof !135

.thread32.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ak
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ap = add i16 %.sroa.017.046.i.i.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.046.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.ar = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not43.i.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not43.i.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i, !prof !136

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.at = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !483

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.thread32.i.i.i.i
  %.sroa.0.4.ph.i.i.i.i = phi ptr [ %i.ao, %.thread32.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ]
  %.sroa.3.4.ph.i.i.i.i = phi ptr [ %i.al, %.thread32.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.3.4.ph.i.i.i.i, 1
  br label %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i.i, %bb.c ] ; 2 uses
  %i.av = extractvalue { ptr, ptr } %.pn.i.i.i, 0
  %i.aw = icmp eq ptr %i.av, null
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.in.i = select i1 %i.aw, ptr %i.ax, ptr %i.az
  %i.ba = load ptr, ptr %.in.i, align 8, !tbaa !38 ; 20 uses
  %i.bb = tail call noundef zeroext i1 @_ZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nonnull align 8 poison, ptr noundef %3, ptr noundef %5, i1 noundef zeroext false)
  br i1 %i.bb, label %bb.bl, label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !255
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !258
  switch i32 %i.bg, label %bb.bl [
    i32 1, label %bb.i
    i32 2, label %bb.m
    i32 3, label %bb.q
    i32 4, label %bb.u
    i32 6, label %bb.y
    i32 5, label %bb.ac
    i32 7, label %bb.ag
    i32 9, label %bb.ak
    i32 8, label %bb.az
    i32 10, label %bb.bh
  ]

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = and i8 %i.bi, 32
  %.not168 = icmp eq i8 %i.bj, 0
  br i1 %.not168, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call noundef i32 @_ZNK6google8protobuf10Reflection16GetRepeatedInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i32 noundef %4)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bl = tail call noundef i32 @_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = phi i32 [ %i.bk, %bb.j ], [ %i.bl, %bb.k ]
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 noundef %i.bm, ptr noundef %5)
  br label %bb.bl

bb.m:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = and i8 %i.br, 32
  %.not167 = icmp eq i8 %i.bs, 0
  br i1 %.not167, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = tail call noundef i64 @_ZNK6google8protobuf10Reflection16GetRepeatedInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i32 noundef %4)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bu = tail call noundef i64 @_ZNK6google8protobuf10Reflection8GetInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bv = phi i64 [ %i.bt, %bb.n ], [ %i.bu, %bb.o ]
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i64 noundef %i.bv, ptr noundef %5)
  br label %bb.bl

bb.q:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = and i8 %i.ca, 32
  %.not166 = icmp eq i8 %i.cb, 0
  br i1 %.not166, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = tail call noundef i32 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i32 noundef %4)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cd = tail call noundef i32 @_ZNK6google8protobuf10Reflection9GetUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = phi i32 [ %i.cc, %bb.r ], [ %i.cd, %bb.s ]
  %i.cf = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 noundef %i.ce, ptr noundef %5)
  br label %bb.bl

bb.u:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = and i8 %i.cj, 32
  %.not165 = icmp eq i8 %i.ck, 0
  br i1 %.not165, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = tail call noundef i64 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i32 noundef %4)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cm = tail call noundef i64 @_ZNK6google8protobuf10Reflection9GetUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cn = phi i64 [ %i.cl, %bb.v ], [ %i.cm, %bb.w ]
  %i.co = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i64 noundef %i.cn, ptr noundef %5)
  br label %bb.bl

bb.y:                                             ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = and i8 %i.cs, 32
  %.not164 = icmp eq i8 %i.ct, 0
  br i1 %.not164, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = tail call noundef float @_ZNK6google8protobuf10Reflection16GetRepeatedFloatERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i32 noundef %4)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cv = tail call noundef float @_ZNK6google8protobuf10Reflection8GetFloatERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cw = phi float [ %i.cu, %bb.z ], [ %i.cv, %bb.aa ]
  %i.cx = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, float noundef %i.cw, ptr noundef %5)
  br label %bb.bl

bb.ac:                                            ; preds = %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = and i8 %i.db, 32
  %.not163 = icmp eq i8 %i.dc, 0
  br i1 %.not163, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = tail call noundef double @_ZNK6google8protobuf10Reflection17GetRepeatedDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i32 noundef %4)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.de = tail call noundef double @_ZNK6google8protobuf10Reflection9GetDoubleERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.df = phi double [ %i.dd, %bb.ad ], [ %i.de, %bb.ae ]
  %i.dg = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, double noundef %i.df, ptr noundef %5)
  br label %bb.bl

bb.ag:                                            ; preds = %bb.h
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = and i8 %i.dk, 32
  %.not162 = icmp eq i8 %i.dl, 0
end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf10TextFormat7Printer23PrintShortRepeatedFieldERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE:bb.a
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load ptr, ptr %4, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %.str.21..str.22 = select i1 %i.h, ptr @.str.21, ptr @.str.22
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.str.21..str.22, i64 noundef 2)
  ret void

.lr.ph.peel.next:                                 ; preds = %.lr.ph.preheader, %.lr.ph.peel.next
  %.023 = phi i32 [ %i.o, %.lr.ph.peel.next ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.3, i64 noundef 2), !inline_history !478
  tail call void @_ZNK6google8protobuf10TextFormat7Printer15PrintFieldValueERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEiPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.023, ptr noundef nonnull %4)
  %i.o = add nuw nsw i32 %.023, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !566
}

declare noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10TextFormat7Printer14PrintFieldNameERKNS0_7MessageEiiPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.c = load i8, ptr %i.b, align 1, !tbaa !568, !range !76, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !494
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.h = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.f, ptr noundef nonnull %i.g)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  store i64 %i.k, ptr %8, align 8, !tbaa !237
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.g, ptr %i.l, align 8, !tbaa !239
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !44, !alias.scope !569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !569
  store i64 %i.k, ptr %i.a, align 8, !tbaa !243, !noalias !569
  %i.n = icmp ugt i64 %i.k, 15
  br i1 %i.n, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !49, !alias.scope !569
  %i.p = load i64, ptr %i.a, align 8, !tbaa !243, !noalias !569
  store i64 %i.p, ptr %i.m, align 8, !tbaa !50, !alias.scope !569
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.q = phi ptr [ %i.o, %.noexc.i.i ], [ %i.m, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.g, align 8, !tbaa !50
  store i8 %i.r, ptr %i.q, align 1, !tbaa !50
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 8 %i.g, i64 %i.k, i1 false)
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit

_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !243, !noalias !569 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !47, !alias.scope !569
  %i.u = load ptr, ptr %7, align 8, !tbaa !49, !alias.scope !569
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !569
  %i.w = load ptr, ptr %7, align 8, !tbaa !49
  %i.x = load i64, ptr %i.t, align 8, !tbaa !47
  %i.y = load ptr, ptr %6, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.w, i64 noundef %i.x)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.e, !inline_history !145

_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  %i.ab = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.m
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !50
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.m

bb.e:                                             ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.m
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !50
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  resume { ptr, i32 } %i.af

bb.f:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !52 ; 4 uses
  %i.am = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp ult i64 %i.al, 2
  br i1 %i.an, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !53
  %.not.i.i.i.i.i = icmp ult i64 %i.ap, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !65
  %i.as = icmp eq ptr %i.ar, %5
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.aq, 1
  %spec.select.i.i.i.i = select i1 %i.as, { ptr, ptr } %.fca.1.insert.i.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit

bb.i:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 1, i32 1)
  %i.av = ptrtoint ptr %5 to i64                  ; 2 uses
  %i.aw = xor i64 %i.av, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ax = mul i64 %i.aw, -2543921745674291987
  %i.ay = tail call noundef i64 @llvm.bswap.i64(i64 %i.ax)
  %i.az = xor i64 %i.ay, %i.av
  %i.ba = mul i64 %i.az, -2543921745674291987
  %i.bb = tail call noundef i64 @llvm.bswap.i64(i64 %i.ba) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !53, !noalias !572
  %i.be = and i64 %i.bd, 65535
  %i.bf = lshr i64 %i.bb, 7
  %i.bg = xor i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bb to i8
  %i.bi = and i8 %i.bh, 127
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !50 ; 2 uses
  %i.bk = insertelement <16 x i8> poison, i8 %i.bi, i64 0
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.pn.i6.i.i.i = phi i64 [ %i.bg, %bb.i ], [ %i.ce, %bb.l ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.cd, %bb.l ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.al ; 4 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.bm, i32 0, i32 3, i32 1)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.6.0.i.i.i.i
  %i.bo = load <16 x i8>, ptr %i.bn, align 1, !tbaa !50 ; 2 uses
  %i.bp = icmp eq <16 x i8> %i.bl, %i.bo
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not45.i.i.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not45.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.sroa.017.046.i.i.i.i = phi i16 [ %i.ca, %bb.k ], [ %i.bq, %bb.j ] ; 3 uses
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = add i64 %.sroa.6.0.i.i.i.i, %i.bs
  %i.bu = and i64 %i.bt, %i.al                    ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.bu ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !65
  %i.bx = icmp eq ptr %i.bw, %5
  br i1 %i.bx, label %.thread32.i.i.i.i, label %bb.k, !prof !135

.thread32.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bu
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = add i16 %.sroa.017.046.i.i.i.i, -1
  %i.ca = and i16 %i.bz, %.sroa.017.046.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.k, %bb.j
  %i.cb = icmp eq <16 x i8> %i.bo, splat (i8 -128)
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %.not43.i.i.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not43.i.i.i.i, label %bb.l, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i, !prof !136

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cd = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.6.0.i.i.i.i
  br label %bb.j, !llvm.loop !483

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.thread32.i.i.i.i
  %.sroa.0.4.ph.i.i.i.i = phi ptr [ %i.by, %.thread32.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ]
  %.sroa.3.4.ph.i.i.i.i = phi ptr [ %i.bv, %.thread32.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.3.4.ph.i.i.i.i, 1
  br label %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.g, %bb.h, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.g ], [ %spec.select.i.i.i.i, %bb.h ] ; 2 uses
  %i.cf = extractvalue { ptr, ptr } %.pn.i.i.i, 0
  %i.cg = icmp eq ptr %i.cf, null
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.in.i = select i1 %i.cg, ptr %i.ch, ptr %i.cj
  %i.ck = load ptr, ptr %.in.i, align 8, !tbaa !38 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.m

bb.m:                                             ; preds = %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::pair.249", align 8    ; 7 uses
  %6 = alloca %"struct.std::pair.281", align 8    ; 7 uses
  %7 = alloca %"struct.std::pair.284", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !575
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store ptr %2, ptr %5, align 8, !tbaa !576
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @"_ZZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_15FieldDescriptorEZNKS0_10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKS3_PNS4_17BaseTextGeneratorEbE3$_0EERKDaPKT_T0_E8type_key", ptr %i.e, align 8, !tbaa !578
  tail call void @_ZN4absl12lts_202505125Mutex10ReaderLockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !579
  %i.h = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE4findIS7_EENSP_8iteratorERSM_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %.not.i = icmp eq ptr %i.i, null                ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !581
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit22.i unwind label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.c ], [ undef, %bb.b ]
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #39
  unreachable

_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i: ; preds = %bb.e
  br i1 %.not.i, label %bb.g, label %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_15FieldDescriptorEZNKS0_10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKS3_PNS4_17BaseTextGeneratorEbE3$_0EERKDaPKT_T0_.exit"

bb.g:                                             ; preds = %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i
  %i.q = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38, !noalias !583 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !noalias !583
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6google8protobuf14DescriptorPool8MemoDataINS0_10TextFormat14RedactionStateEEE, i64 16), ptr %i.q, align 8, !tbaa !36, !noalias !583
  %i.r = invoke range(i16 0, 2) i16 @_ZN6google8protobuf10TextFormat17GetRedactionStateEPKNS0_15FieldDescriptorE(ptr noundef nonnull readonly %2)
          to label %"_ZZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEbENK3$_0clES8_.exit.i" unwind label %bb.k

"_ZZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEbENK3$_0clES8_.exit.i": ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %i.r, ptr %i.s, align 8
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i unwind label %bb.l

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i: ; preds = %"_ZZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEbENK3$_0clES8_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !579
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.q, ptr %i.u, align 8, !tbaa !586
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.281") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !603, !range !76, !alias.scope !606, !noundef !78
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i: ; preds = %.noexc.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !606 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.z = load i64, ptr %i.u, align 8, !tbaa !581, !noalias !611
  store i64 %i.z, ptr %i.y, align 8, !tbaa !581
  br label %bb.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i: ; preds = %.noexc.i
  %.pr.i = load ptr, ptr %i.u, align 8, !tbaa !581 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i
  %i.aa = load ptr, ptr %.pr.i, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr.i) #37, !inline_history !612
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !581
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_15FieldDescriptorEZNKS0_10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKS3_PNS4_17BaseTextGeneratorEbE3$_0EERKDaPKT_T0_.exit" unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #39
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #39
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataINS1_10TextFormat14RedactionStateEEEEclEPS6_.exit.i28.i

bb.l:                                             ; preds = %"_ZZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEbENK3$_0clES8_.exit.i"
  %i.al = landingpad { ptr, i32 }
          cleanup
  %.pre.i = load ptr, ptr %i.q, align 8, !tbaa !36
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataINS1_10TextFormat14RedactionStateEEEEclEPS6_.exit.i28.i

bb.m:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !581 ; 3 uses
  %.not.i.i23.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i23.i, label %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit25.i, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i24.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i24.i: ; preds = %bb.m
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf10TextFormat6Parser10ParserImpl13ConsumeDoubleEPd:._crit_edge.i.i
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.l
  %i.cb = load i64, ptr %i.z, align 8, !tbaa !50
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.p

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.h
  %.pn26 = phi { ptr, i32 } [ %i.ax, %bb.h ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ]
  %i.cd = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.z
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.m
  %i.cf = load i64, ptr %i.z, align 8, !tbaa !50
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.s

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store i64 22, ptr %8, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.91, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.ci = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.cj = load i64, ptr %i.g, align 8, !tbaa !47
  store i64 %i.cj, ptr %9, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ci, ptr %i.ck, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.cl = load ptr, ptr %7, align 8, !tbaa !49
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !47
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !639
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !640
  invoke void @_ZN6google8protobuf10TextFormat6Parser10ParserImpl11ReportErrorEiiSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.cp, i32 noundef %i.cr, i64 %i.cn, ptr %i.cl)
          to label %_ZN6google8protobuf10TextFormat6Parser10ParserImpl11ReportErrorESt17basic_string_viewIcSt11char_traitsIcEE.exit59 unwind label %bb.o

_ZN6google8protobuf10TextFormat6Parser10ParserImpl11ReportErrorESt17basic_string_viewIcSt11char_traitsIcEE.exit59: ; preds = %bb.n
  %i.cs = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZN6google8protobuf10TextFormat6Parser10ParserImpl11ReportErrorESt17basic_string_viewIcSt11char_traitsIcEE.exit59
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !50
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZN6google8protobuf10TextFormat6Parser10ParserImpl11ReportErrorESt17basic_string_viewIcSt11char_traitsIcEE.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.o
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !50
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.s

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.c
  br i1 %i.p, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.b, %bb.p
  %i.dd = load double, ptr %1, align 8, !tbaa !562
  %i.de = fneg double %i.dd
  store double %i.de, ptr %1, align 8, !tbaa !562
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.p, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %.1 = phi i1 [ %i.w, %bb.b ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ true, %bb.q ], [ true, %bb.p ]
  ret i1 %.1

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  resume { ptr, i32 } %.pn26.pn
}

declare void @_ZNK6google8protobuf10Reflection8AddFloatEPNS0_7MessageEPKNS0_15FieldDescriptorEf(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, float noundef) local_unnamed_addr #10

declare noundef float @_ZN6google8protobuf2io17SafeDoubleToFloatEd(double noundef) local_unnamed_addr #10

declare void @_ZNK6google8protobuf10Reflection9AddDoubleEPNS0_7MessageEPKNS0_15FieldDescriptorEd(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, double noundef) local_unnamed_addr #10

declare void @_ZNK6google8protobuf10Reflection9AddStringEPNS0_7MessageEPKNS0_15FieldDescriptorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_ZNK6google8protobuf10Reflection7AddBoolEPNS0_7MessageEPKNS0_15FieldDescriptorEb(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #10

declare noundef ptr @_ZNK6google8protobuf14EnumDescriptor15FindValueByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88), i64, ptr) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor35legacy_enum_field_treated_as_closedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #10

declare void @_ZNK6google8protobuf10Reflection12AddEnumValueEPNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_ZNK6google8protobuf10Reflection7AddEnumEPNS0_7MessageEPKNS0_15FieldDescriptorEPKNS0_19EnumValueDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor18default_value_enumEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #10

declare noundef ptr @_ZNK6google8protobuf10Reflection7GetEnumERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

declare void @_ZNK6google8protobuf10Reflection7SetEnumEPNS0_7MessageEPKNS0_15FieldDescriptorEPKNS0_19EnumValueDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE22find_or_prepare_insertISD_EES4_INSL_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53, !noalias !862
  %.not.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.d, align 8, !tbaa !243, !noalias !862
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE26find_or_prepare_insert_sooISD_EES4_INSL_8iteratorEbERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !865, !noalias !862 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !865, !noalias !862 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !862 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !862 ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  %i.p = select i1 %i.j, i1 %i.o, i1 false
  br i1 %i.p, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE26find_or_prepare_insert_sooISD_EES4_INSL_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.r = xor i64 %i.q, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.s = mul i64 %i.r, -2543921745674291987
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %i.s)
  %i.u = xor i64 %i.t, %i.q
  %i.v = mul i64 %i.u, -2543921745674291987
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %i.v)
  %i.x = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.y = xor i64 %i.w, %i.x
  %i.z = mul i64 %i.y, -2543921745674291987
  %i.aa = tail call noundef i64 @llvm.bswap.i64(i64 %i.z)
  %i.ab = xor i64 %i.aa, %i.x
  %i.ac = mul i64 %i.ab, 6679450291180483821
  %i.ad = lshr i64 %i.ac, 56
  %i.ae = trunc nuw i64 %i.ad to i8
  %i.af = and i8 %i.ae, 127
  %i.ag = ptrtoint ptr %i.i to i64                ; 2 uses
  %i.ah = xor i64 %i.ag, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ai = mul i64 %i.ah, -2543921745674291987
  %i.aj = tail call noundef i64 @llvm.bswap.i64(i64 %i.ai)
  %i.ak = xor i64 %i.aj, %i.ag
  %i.al = mul i64 %i.ak, -2543921745674291987
  %i.am = tail call noundef i64 @llvm.bswap.i64(i64 %i.al)
  %i.an = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.ao = xor i64 %i.am, %i.an
  %i.ap = mul i64 %i.ao, -2543921745674291987
  %i.aq = tail call noundef i64 @llvm.bswap.i64(i64 %i.ap)
  %i.ar = xor i64 %i.aq, %i.an
  %i.as = mul i64 %i.ar, -2543921745674291987
  %i.at = tail call noundef i64 @llvm.bswap.i64(i64 %i.as)
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.at, i8 noundef signext %i.af), !noalias !862 ; 2 uses
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !50, !noalias !862, !nonnull !78, !noundef !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !50, !noalias !862
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.au
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE26find_or_prepare_insert_sooISD_EES4_INSL_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE26find_or_prepare_insert_sooISD_EES4_INSL_8iteratorEbERKT_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sink16.i = phi ptr [ %i.aw, %bb.e ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.c ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ]
  %.sink15.i = phi ptr [ %i.ax, %bb.e ], [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %.sink.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  store ptr %.sink16.i, ptr %0, align 8, !alias.scope !862
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink15.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !862
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i, ptr %i.ay, align 8, !tbaa !688, !alias.scope !862
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE30find_or_prepare_insert_non_sooISD_EES4_INSL_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE26find_or_prepare_insert_sooISD_EES4_INSL_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE30find_or_prepare_insert_non_sooISD_EES4_INSL_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.204") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %2, align 8, !tbaa !506    ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = xor i64 %i.e, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = xor i64 %i.h, %i.e
  %i.j = mul i64 %i.i, -2543921745674291987
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = xor i64 %i.k, %i.m
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53, !noalias !867
  %i.v = and i64 %i.u, 65535
  %i.w = load i64, ptr %1, align 8, !tbaa !52, !noalias !867 ; 3 uses
  %i.x = lshr i64 %i.s, 7
  %i.y = xor i64 %i.x, %i.v
  %i.z = trunc i64 %i.s to i8
  %i.aa = and i8 %i.z, 127
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 2 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.y, %bb.a ], [ %i.bh, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.bg, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.w                 ; 5 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.ae, i32 0, i32 3, i32 1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.ag = load <16 x i8>, ptr %i.af, align 1, !tbaa !50 ; 2 uses
  %i.ah = icmp eq <16 x i8> %i.ad, %i.ag
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ai, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.av, %.critedge ], [ %i.ai, %bb.b ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.7.0, %i.ak
  %i.am = and i64 %i.al, %i.w                     ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !865
  %i.ap = icmp eq ptr %i.ao, %i.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, %i.l
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %.critedge20, label %.critedge, !prof !135

.critedge:                                        ; preds = %.lr.ph
  %i.au = add i16 %.sroa.033.059, -1
  %i.av = and i16 %i.au, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.av, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aw = icmp eq <16 x i8> %i.ag, splat (i8 -128)
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ax, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !136

.thread:                                          ; preds = %.critedge18
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.7.0, %i.az
  %i.bb = and i64 %i.ba, %i.w
  %i.bc = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.s, i64 %i.bb, i64 %.sroa.15.0) ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.bc
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.bg = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.bh = add i64 %i.bg, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.am
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.be, %.thread ], [ %i.bi, %.critedge20 ]
  %.sink75 = phi ptr [ %i.bf, %.thread ], [ %i.an, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bj, align 8, !tbaa !688
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #30

declare noundef ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashISt4pairIPKN6google8protobuf7MessageEPKNS7_15FieldDescriptorEEEESE_EEmPKvPv(ptr noundef %0, ptr noundef %1) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !506
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = xor i64 %i.c, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.e = mul i64 %i.d, -2543921745674291987
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %i.e)
  %i.g = xor i64 %i.f, %i.c
  %i.h = mul i64 %i.g, -2543921745674291987
  %i.i = tail call noundef i64 @llvm.bswap.i64(i64 %i.h)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = xor i64 %i.i, %i.k
  %i.m = mul i64 %i.l, -2543921745674291987
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = xor i64 %i.n, %i.k
  %i.p = mul i64 %i.o, -2543921745674291987
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  ret i64 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE19transfer_n_slots_fnEPvSM_SM_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi i64 [ %i.a, %.lr.ph.prol ], [ %3, %.lr.ph.preheader ]
  %.0913.prol = phi ptr [ %i.c, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01012.prol = phi ptr [ %i.b, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0913.prol, ptr noundef nonnull align 8 dereferenceable(16) %.01012.prol, i64 16, i1 false)
  %i.a = add i64 %.014.prol, -1                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !870

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.a, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.c, %.lr.ph.prol ]
  %.01012.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.b, %.lr.ph.prol ]
  %i.d = icmp ult i64 %3, 4
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi i64 [ %i.k, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %.0913 = phi ptr [ %i.m, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01012 = phi ptr [ %i.l, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0913, ptr noundef nonnull align 8 dereferenceable(16) %.01012, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %.01012, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.01012, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.k = add i64 %.014, -4                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01012, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %.0913, i64 64
  %.not.3 = icmp eq i64 %i.k, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !872

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !136

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #38
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt4pairIPKN6google8protobuf7MessageEPKNS6_15FieldDescriptorEEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaISD_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSR_PFvSR_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !52     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !873

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bl, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !506
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = xor i64 %i.aa, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ac = mul i64 %i.ab, -2543921745674291987
  %i.ad = tail call noundef i64 @llvm.bswap.i64(i64 %i.ac)
  %i.ae = xor i64 %i.ad, %i.aa
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af)
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !65
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = xor i64 %i.ag, %i.ai
  %i.ak = mul i64 %i.aj, -2543921745674291987
  %i.al = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  %i.am = xor i64 %i.al, %i.ai
  %i.an = mul i64 %i.am, -2543921745674291987
  %i.ao = tail call noundef i64 @llvm.bswap.i64(i64 %i.an) ; 2 uses
  %i.ap = lshr i64 %i.ao, 7
  %i.aq = xor i64 %i.ap, %i.j                     ; 5 uses
  %i.ar = trunc i64 %i.ao to i8
  %i.as = and i8 %i.ar, 127                       ; 2 uses
  %i.at = sub i64 %i.w, %i.aq                     ; 2 uses
  %i.au = and i64 %i.k, %i.at
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.d, label %bb.e, !prof !135

bb.d:                                             ; preds = %.lr.ph
  %i.aw = and i64 %i.at, 15
  %i.ax = add nuw nsw i64 %i.aw, %i.aq
  %i.ay = and i64 %i.ax, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.az = and i64 %i.aq, %i.b
  %.not.i = icmp ult i64 %i.az, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !135

bb.f:                                             ; preds = %bb.e
  %i.ba = and i64 %i.aq, %i.a                     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ba
  %i.bc = load <16 x i8>, ptr %i.bb, align 1, !tbaa !50
  %i.bd = icmp slt <16 x i8> %i.bc, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.be, 0
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf10TextFormat7Printer13TextGenerator5WriteEPKcm:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %.012.lcssa, i64 %.011.lcssa, i1 false)
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !436
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.011.lcssa
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !436
  %i.bw = load i32, ptr %i.at, align 8, !tbaa !437
  %i.bx = trunc i64 %.011.lcssa to i32
  %i.by = sub i32 %i.bw, %i.bx
  store i32 %i.by, ptr %i.at, align 8, !tbaa !437
  br label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf10TextFormat7Printer13TextGenerator11WriteIndentEv.exit.thread, %.thread, %_ZN6google8protobuf10TextFormat7Printer13TextGenerator11WriteIndentEv.exit, %bb.a, %._crit_edge
  ret void
}

declare noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

declare void @_ZN6google8protobuf15UnknownFieldSet13ClearFallbackEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

declare noundef ptr @_ZNK6google8protobuf10Reflection19GetRawRepeatedFieldERKNS0_7MessageEPKNS0_15FieldDescriptorENS0_8internal19FieldDescriptorLite7CppTypeEiPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf6MapKey4typeEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !882  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.97, i32 noundef 85) #42
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 33, ptr nonnull @.str.98)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 40, ptr nonnull @.str.103)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 38, ptr nonnull @.str.104)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #39
  unreachable

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #39
  unreachable

bb.d:                                             ; preds = %bb.a
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf16MapValueConstRef4typeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !560  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load ptr, ptr %0, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.97, i32 noundef 780) #42
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 33, ptr nonnull @.str.98)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 59, ptr nonnull @.str.111)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #39
  unreachable

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #39
  unreachable

bb.d:                                             ; preds = %bb.a
  ret i32 %i.b
}

declare void @_ZN6google8protobuf12FieldOptionsC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #10

declare { ptr, ptr } @_ZNK6google8protobuf12FieldOptions11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE4findIS7_EENSP_8iteratorERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_smallIS7_EENSP_8iteratorERSM_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !50 ; 2 uses
  %i.f = load <2 x ptr>, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8
  %i.g = load <2 x ptr>, ptr %1, align 8
  %i.h = icmp eq <2 x ptr> %i.f, %i.g             ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 0
  %i.j = extractelement <2 x i1> %i.h, i64 1
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_smallIS7_EENSP_8iteratorERSM_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_smallIS7_EENSP_8iteratorERSM_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %1, align 8, !tbaa !185    ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = xor i64 %i.r, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.t = mul i64 %i.s, -2543921745674291987
  %i.u = tail call noundef i64 @llvm.bswap.i64(i64 %i.t)
  %i.v = xor i64 %i.u, %i.r
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !185  ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.x, %i.z
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !53, !noalias !884
  %i.ai = and i64 %i.ah, 65535
  %i.aj = lshr i64 %i.af, 7
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = trunc i64 %i.af to i8
  %i.am = and i8 %i.al, 127
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i6 = phi i64 [ %i.ak, %bb.e ], [ %i.bm, %bb.h ]
  %.sroa.13.0.i = phi i64 [ 0, %bb.e ], [ %i.bl, %bb.h ]
  %.sroa.6.0.i = and i64 %.pn.i6, %i.a            ; 4 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.6.0.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !50 ; 2 uses
  %i.at = icmp eq <16 x i8> %i.ap, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.au, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.sroa.017.046.i = phi i16 [ %i.bi, %bb.g ], [ %i.au, %bb.f ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.6.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.a                     ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ay ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !576
  %i.bb = icmp eq ptr %i.ba, %i.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp eq ptr %i.bd, %i.y
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %.thread32.i, label %bb.g, !prof !135

.thread32.i:                                      ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ay
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_largeIS7_EENSP_8iteratorERSM_m.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.bh = add i16 %.sroa.017.046.i, -1
  %i.bi = and i16 %i.bh, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.bj = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %.not43.i = icmp eq i16 %i.bk, 0
  br i1 %.not43.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_largeIS7_EENSP_8iteratorERSM_m.exit, !prof !136

bb.h:                                             ; preds = %._crit_edge.i
  %i.bl = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bm = add i64 %i.bl, %.sroa.6.0.i
  br label %bb.f, !llvm.loop !887

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_largeIS7_EENSP_8iteratorERSM_m.exit: ; preds = %._crit_edge.i, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bg, %.thread32.i ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.az, %.thread32.i ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_smallIS7_EENSP_8iteratorERSM_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_smallIS7_EENSP_8iteratorERSM_.exit: ; preds = %bb.d, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_largeIS7_EENSP_8iteratorERSM_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE10find_largeIS7_EENSP_8iteratorERSM_m.exit ], [ %.fca.1.insert.i.i, %bb.d ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %bb.b ]
  ret { ptr, ptr } %.pn
}

declare void @_ZN4absl12lts_202505125Mutex10ReaderLockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf14DescriptorPool8MemoBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf14DescriptorPool8MemoDataINS0_10TextFormat14RedactionStateEED0Ev(ptr noundef nonnull align 8 dereferenceable(10) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %2, align 8, !tbaa !185    ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = xor i64 %i.e, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = xor i64 %i.h, %i.e
  %i.j = mul i64 %i.i, -2543921745674291987
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !185  ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = xor i64 %i.k, %i.m
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53, !noalias !888
  %i.v = and i64 %i.u, 65535
  %i.w = load i64, ptr %1, align 8, !tbaa !52, !noalias !888 ; 3 uses
  %i.x = lshr i64 %i.s, 7
  %i.y = xor i64 %i.x, %i.v
  %i.z = trunc i64 %i.s to i8
  %i.aa = and i8 %i.z, 127
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 2 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.y, %bb.a ], [ %i.bh, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.bg, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.w                 ; 5 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.ae, i32 0, i32 3, i32 1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.ag = load <16 x i8>, ptr %i.af, align 1, !tbaa !50 ; 2 uses
  %i.ah = icmp eq <16 x i8> %i.ad, %i.ag
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ai, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.av, %.critedge ], [ %i.ai, %bb.b ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.7.0, %i.ak
  %i.am = and i64 %i.al, %i.w                     ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !576
  %i.ap = icmp eq ptr %i.ao, %i.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, %i.l
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %.critedge20, label %.critedge, !prof !135

.critedge:                                        ; preds = %.lr.ph
  %i.au = add i16 %.sroa.033.059, -1
  %i.av = and i16 %i.au, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.av, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aw = icmp eq <16 x i8> %i.ag, splat (i8 -128)
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ax, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !136

.thread:                                          ; preds = %.critedge18
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.7.0, %i.az
  %i.bb = and i64 %i.ba, %i.w
  %i.bc = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.s, i64 %i.bb, i64 %.sroa.15.0) ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.bc
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.bg = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.bh = add i64 %i.bg, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.am
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.be, %.thread ], [ %i.bi, %.critedge20 ]
  %.sink75 = phi ptr [ %i.bf, %.thread ], [ %i.an, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bj, align 8, !tbaa !603
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEEvE28hash_slot_fn_non_type_erasedINS0_13hash_internal4HashIS7_EEEEmS6_Pv(ptr noundef %0, ptr noundef %1) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !185
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = xor i64 %i.c, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.e = mul i64 %i.d, -2543921745674291987
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %i.e)
  %i.g = xor i64 %i.f, %i.c
  %i.h = mul i64 %i.g, -2543921745674291987
  %i.i = tail call noundef i64 @llvm.bswap.i64(i64 %i.h)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !185
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = xor i64 %i.i, %i.k
  %i.m = mul i64 %i.l, -2543921745674291987
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = xor i64 %i.n, %i.k
  %i.p = mul i64 %i.o, -2543921745674291987
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  ret i64 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE19transfer_n_slots_fnEPvSQ_SQ_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !581
  store i64 %i.c, ptr %i.a, align 8, !tbaa !581
  store ptr null, ptr %i.b, align 8, !tbaa !581
  %i.d = add nsw i64 %3, -1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.01012.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.g = icmp eq i64 %3, 1
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi i64 [ %i.p, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %.0913 = phi ptr [ %i.r, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01012 = phi ptr [ %i.q, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0913, ptr noundef nonnull align 8 dereferenceable(24) %.01012, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !581
  store i64 %i.j, ptr %i.h, align 8, !tbaa !581
  store ptr null, ptr %i.i, align 8, !tbaa !581
  %i.k = getelementptr inbounds nuw i8, ptr %.01012, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %.01012, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !581
  store i64 %i.o, ptr %i.m, align 8, !tbaa !581
  store ptr null, ptr %i.n, align 8, !tbaa !581
  %i.p = add i64 %.014, -2                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  %.not.1 = icmp eq i64 %i.p, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !891

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSV_PFvSV_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !52     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !892

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bo, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !185
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = xor i64 %i.aa, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ac = mul i64 %i.ab, -2543921745674291987
  %i.ad = tail call noundef i64 @llvm.bswap.i64(i64 %i.ac)
  %i.ae = xor i64 %i.ad, %i.aa
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af)
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !185
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = xor i64 %i.ag, %i.ai
  %i.ak = mul i64 %i.aj, -2543921745674291987
  %i.al = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  %i.am = xor i64 %i.al, %i.ai
  %i.an = mul i64 %i.am, -2543921745674291987
  %i.ao = tail call noundef i64 @llvm.bswap.i64(i64 %i.an) ; 2 uses
  %i.ap = lshr i64 %i.ao, 7
  %i.aq = xor i64 %i.ap, %i.j                     ; 5 uses
  %i.ar = trunc i64 %i.ao to i8
  %i.as = and i8 %i.ar, 127                       ; 2 uses
  %i.at = sub i64 %i.w, %i.aq                     ; 2 uses
  %i.au = and i64 %i.k, %i.at
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.d, label %bb.e, !prof !135

bb.d:                                             ; preds = %.lr.ph
  %i.aw = and i64 %i.at, 15
  %i.ax = add nuw nsw i64 %i.aw, %i.aq
  %i.ay = and i64 %i.ax, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.az = and i64 %i.aq, %i.b
  %.not.i = icmp ult i64 %i.az, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !135

bb.f:                                             ; preds = %bb.e
  %i.ba = and i64 %i.aq, %i.a                     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ba
  %i.bc = load <16 x i8>, ptr %i.bb, align 1, !tbaa !50
  %i.bd = icmp slt <16 x i8> %i.bc, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.be, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !136

bb.g:                                             ; preds = %bb.f
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.be, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.ba, %i.bg
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.as, i64 noundef %i.w, i64 noundef %i.aq)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.bh, %bb.g ], [ %i.ay, %bb.d ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.as, ptr %i.bi, align 1, !tbaa !874
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !581
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !581
  store ptr null, ptr %i.bl, align 8, !tbaa !581
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bn = add i16 %.sroa.054.061, -1
  %i.bo = and i16 %i.bn, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bo, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE30find_or_prepare_insert_non_sooIS8_EESJ_INSN_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.313") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !65     ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %i.d
  %i.i = mul i64 %i.h, -2543921745674291987
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53, !noalias !893
  %i.m = and i64 %i.l, 65535
  %i.n = load i64, ptr %1, align 8, !tbaa !52, !noalias !893 ; 3 uses
  %i.o = lshr i64 %i.j, 7
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i64 %i.j to i8
  %i.r = and i8 %i.q, 127
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !50 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.n                 ; 5 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !50 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.z, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ai, %.critedge ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.7.0, %i.ab
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.critedge20, label %.critedge, !prof !135

.critedge:                                        ; preds = %.lr.ph
  %i.ah = add i16 %.sroa.033.059, -1
  %i.ai = and i16 %i.ah, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ak, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !136

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_6HashEqIPKN6google8protobuf15FieldDescriptorEvE4HashES8_EEmPKvPv(ptr noundef %0, ptr noundef %1) #1 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !65
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE19transfer_n_slots_fnEPvSO_SO_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi i64 [ %i.f, %.lr.ph.prol ], [ %3, %.lr.ph.preheader ]
  %.0913.prol = phi ptr [ %i.h, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.01012.prol = phi ptr [ %i.g, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.a = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 8
  %i.b = load <2 x ptr>, ptr %.01012.prol, align 8, !tbaa !185
  store <2 x ptr> %i.b, ptr %.0913.prol, align 8, !tbaa !185
  %i.c = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 16
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !896
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.f = add i64 %.014.prol, -1                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !897

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.01012.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %i.i = icmp ult i64 %3, 4
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi i64 [ %i.aj, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %.0913 = phi ptr [ %i.al, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi ptr [ %i.ak, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ] ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  %i.k = load <2 x ptr>, ptr %.01012, align 8, !tbaa !185
  store <2 x ptr> %i.k, ptr %.0913, align 8, !tbaa !185
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.01012, i64 16
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !896
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.01012, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 40
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !185
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !185
  %i.s = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !896
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.01012, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %.0913, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.01012, i64 72
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !185
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !185
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %.01012, i64 80
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !896
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.01012, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.01012, i64 104
  %i.af = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !185
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !185
  %i.ag = getelementptr inbounds nuw i8, ptr %.0913, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %.01012, i64 112
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !896
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.aj = add i64 %.014, -4                       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01012, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %.0913, i64 128
  %.not.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !898

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvST_PFvST_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !52     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !899

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bi, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65   ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !135

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ak, 15
  %i.ao = add nuw nsw i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.ah, %i.b
  %.not.i = icmp ult i64 %i.aq, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !135

bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !50
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !136

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.ay, %bb.g ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.aj, ptr %i.az, align 1, !tbaa !874
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 3 uses
  store ptr %i.y, ptr %i.ba, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !896
  store <2 x ptr> %i.bd, ptr %i.bb, align 8, !tbaa !896
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !87
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bh = add i16 %.sroa.054.061, -1
  %i.bi = and i16 %i.bh, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bi, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE30find_or_prepare_insert_non_sooIS8_EESN_INSR_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.327") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !65     ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %i.d
  %i.i = mul i64 %i.h, -2543921745674291987
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53, !noalias !900
  %i.m = and i64 %i.l, 65535
  %i.n = load i64, ptr %1, align 8, !tbaa !52, !noalias !900 ; 3 uses
  %i.o = lshr i64 %i.j, 7
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i64 %i.j to i8
  %i.r = and i8 %i.q, 127
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !50 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.n                 ; 5 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !50 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.z, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ai, %.critedge ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.7.0, %i.ab
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.critedge20, label %.critedge, !prof !135

.critedge:                                        ; preds = %.lr.ph
  %i.ah = add i16 %.sroa.033.059, -1
  %i.ai = and i16 %i.ah, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ak, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !136

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE19transfer_n_slots_fnEPvSS_SS_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi i64 [ %i.f, %.lr.ph.prol ], [ %3, %.lr.ph.preheader ]
  %.0913.prol = phi ptr [ %i.h, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.01012.prol = phi ptr [ %i.g, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.a = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 8
  %i.b = load <2 x ptr>, ptr %.01012.prol, align 8, !tbaa !185
  store <2 x ptr> %i.b, ptr %.0913.prol, align 8, !tbaa !185
  %i.c = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 16
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !903
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !903
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.f = add i64 %.014.prol, -1                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !904

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.01012.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %i.i = icmp ult i64 %3, 4
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi i64 [ %i.aj, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %.0913 = phi ptr [ %i.al, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi ptr [ %i.ak, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ] ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01012, i64 8
  %i.k = load <2 x ptr>, ptr %.01012, align 8, !tbaa !185
  store <2 x ptr> %i.k, ptr %.0913, align 8, !tbaa !185
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.01012, i64 16
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !903
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !903
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.01012, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 40
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !185
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !185
  %i.s = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !903
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !903
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.01012, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %.0913, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.01012, i64 72
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !185
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !185
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %.01012, i64 80
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !903
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !903
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.01012, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.01012, i64 104
  %i.af = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !185
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !185
  %i.ag = getelementptr inbounds nuw i8, ptr %.0913, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %.01012, i64 112
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !903
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !903
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.aj = add i64 %.014, -4                       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01012, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %.0913, i64 128
  %.not.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !905

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSX_PFvSX_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !52     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !906

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bi, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65   ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !135

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ak, 15
  %i.ao = add nuw nsw i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.ah, %i.b
  %.not.i = icmp ult i64 %i.aq, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !135

bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !50
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !136

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.ay, %bb.g ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.aj, ptr %i.az, align 1, !tbaa !874
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 3 uses
  store ptr %i.y, ptr %i.ba, align 8, !tbaa !106
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !903
end_hunk_7
begin_hunk_8_@_ZNK6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapper14PrintFieldNameERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS0_10TextFormat17BaseTextGeneratorE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %5, align 8, !tbaa !49     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.b
  %i.u = load i64, ptr %i.s, align 8, !tbaa !50
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapper17PrintMessageStartERKNS0_7MessageEiibPNS0_10TextFormat17BaseTextGeneratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !318  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4)
  %i.f = load ptr, ptr %6, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47
  %i.i = load ptr, ptr %5, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.b, !inline_history !145

_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %6, align 8, !tbaa !49     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !50
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !49     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.u = load i64, ptr %i.s, align 8, !tbaa !50
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK6google8protobuf12_GLOBAL__N_124FieldValuePrinterWrapper15PrintMessageEndERKNS0_7MessageEiibPNS0_10TextFormat17BaseTextGeneratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !318  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4)
  %i.f = load ptr, ptr %6, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47
  %i.i = load ptr, ptr %5, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.b, !inline_history !145

_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %6, align 8, !tbaa !49     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !50
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !49     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.u = load i64, ptr %i.s, align 8, !tbaa !50
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESL_INSP_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.59") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !65     ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %i.d
  %i.i = mul i64 %i.h, -2543921745674291987
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53, !noalias !909
  %i.m = and i64 %i.l, 65535
  %i.n = load i64, ptr %1, align 8, !tbaa !52, !noalias !909 ; 3 uses
  %i.o = lshr i64 %i.j, 7
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i64 %i.j to i8
  %i.r = and i8 %i.q, 127
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !50 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.n                 ; 5 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !50 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.z, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ai, %.critedge ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.7.0, %i.ab
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.critedge20, label %.critedge, !prof !135

.critedge:                                        ; preds = %.lr.ph
  %i.ah = add i16 %.sroa.033.059, -1
  %i.ai = and i16 %i.ah, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ak, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !136

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !350
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEEvE28hash_slot_fn_non_type_erasedINS1_6HashEqIS8_vE4HashEEEmPKvPv(ptr noundef %0, ptr noundef %1) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !65
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE19transfer_n_slots_fnEPvSQ_SQ_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %3, %.lr.ph.preheader ]
  %.0913.prol = phi ptr [ %i.g, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.01012.prol = phi ptr [ %i.f, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.a = load ptr, ptr %.01012.prol, align 8, !tbaa !355
  store ptr %i.a, ptr %.0913.prol, align 8, !tbaa !355
  %i.b = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38
  store i64 %i.d, ptr %i.b, align 8, !tbaa !38
  store ptr null, ptr %i.c, align 8, !tbaa !38
  %i.e = add i64 %.014.prol, -1                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !912

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.01012.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %i.h = icmp ult i64 %3, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi i64 [ %i.ae, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %.0913 = phi ptr [ %i.ag, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi ptr [ %i.af, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.i = load ptr, ptr %.01012, align 8, !tbaa !355
  store ptr %i.i, ptr %.0913, align 8, !tbaa !355
  %i.j = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.01012, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38
  store i64 %i.l, ptr %i.j, align 8, !tbaa !38
  store ptr null, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %.01012, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !355
  store ptr %i.o, ptr %i.n, align 8, !tbaa !355
  %i.p = getelementptr inbounds nuw i8, ptr %.0913, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !38
  store i64 %i.r, ptr %i.p, align 8, !tbaa !38
  store ptr null, ptr %i.q, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %.01012, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !355
  store ptr %i.u, ptr %i.t, align 8, !tbaa !355
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %.01012, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !38
  store i64 %i.x, ptr %i.v, align 8, !tbaa !38
  store ptr null, ptr %i.w, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !355
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !355
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %.01012, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !38
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !38
  store ptr null, ptr %i.ac, align 8, !tbaa !38
  %i.ae = add i64 %.014, -4                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01012, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0913, i64 64
  %.not.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !913

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSV_PFvSV_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !52     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !914

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bf, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65   ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !135

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ak, 15
  %i.ao = add nuw nsw i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.ah, %i.b
  %.not.i = icmp ult i64 %i.aq, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !135

bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !50
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !136

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.ay, %bb.g ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.aj, ptr %i.az, align 1, !tbaa !874
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 2 uses
  store ptr %i.y, ptr %i.ba, align 8, !tbaa !355
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !38
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !38
  store ptr null, ptr %i.bc, align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.be = add i16 %.sroa.054.061, -1
  %i.bf = and i16 %i.be, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE30find_or_prepare_insert_non_sooIS8_EESL_INSP_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.72") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !388    ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %i.d
  %i.i = mul i64 %i.h, -2543921745674291987
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53, !noalias !915
  %i.m = and i64 %i.l, 65535
  %i.n = load i64, ptr %1, align 8, !tbaa !52, !noalias !915 ; 3 uses
  %i.o = lshr i64 %i.j, 7
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i64 %i.j to i8
  %i.r = and i8 %i.q, 127
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !50 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.n                 ; 5 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !50 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.z, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ai, %.critedge ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.7.0, %i.ab
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !388
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.critedge20, label %.critedge, !prof !135

.critedge:                                        ; preds = %.lr.ph
  %i.ah = add i16 %.sroa.033.059, -1
  %i.ai = and i16 %i.ah, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ak, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !136

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !415
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEEvE28hash_slot_fn_non_type_erasedINS1_6HashEqIS8_vE4HashEEEmPKvPv(ptr noundef %0, ptr noundef %1) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !388
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE19transfer_n_slots_fnEPvSQ_SQ_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %3, %.lr.ph.preheader ]
  %.0913.prol = phi ptr [ %i.g, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.01012.prol = phi ptr [ %i.f, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.a = load ptr, ptr %.01012.prol, align 8, !tbaa !420
  store ptr %i.a, ptr %.0913.prol, align 8, !tbaa !420
  %i.b = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54
  store i64 %i.d, ptr %i.b, align 8, !tbaa !54
  store ptr null, ptr %i.c, align 8, !tbaa !54
  %i.e = add i64 %.014.prol, -1                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !918

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.01012.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %i.h = icmp ult i64 %3, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi i64 [ %i.ae, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %.0913 = phi ptr [ %i.ag, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi ptr [ %i.af, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.i = load ptr, ptr %.01012, align 8, !tbaa !420
  store ptr %i.i, ptr %.0913, align 8, !tbaa !420
  %i.j = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.01012, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54
  store i64 %i.l, ptr %i.j, align 8, !tbaa !54
  store ptr null, ptr %i.k, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %.01012, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !420
  store ptr %i.o, ptr %i.n, align 8, !tbaa !420
  %i.p = getelementptr inbounds nuw i8, ptr %.0913, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54
  store i64 %i.r, ptr %i.p, align 8, !tbaa !54
  store ptr null, ptr %i.q, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %.01012, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !420
  store ptr %i.u, ptr %i.t, align 8, !tbaa !420
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %.01012, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !54
  store i64 %i.x, ptr %i.v, align 8, !tbaa !54
  store ptr null, ptr %i.w, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !420
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !420
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %.01012, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !54
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !54
  store ptr null, ptr %i.ac, align 8, !tbaa !54
  %i.ae = add i64 %.014, -4                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01012, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0913, i64 64
  %.not.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !919

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrIKNS5_10TextFormat14MessagePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSV_PFvSV_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !52     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !920

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bf, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !388  ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = xor i64 %i.ag, %i.j                     ; 5 uses
  %i.ai = trunc i64 %i.af to i8
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %i.ak = sub i64 %i.w, %i.ah                     ; 2 uses
  %i.al = and i64 %i.k, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e, !prof !135

bb.d:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ak, 15
  %i.ao = add nuw nsw i64 %i.an, %i.ah
  %i.ap = and i64 %i.ao, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = and i64 %i.ah, %i.b
  %.not.i = icmp ult i64 %i.aq, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !135

bb.f:                                             ; preds = %bb.e
  %i.ar = and i64 %i.ah, %i.a                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !50
  %i.au = icmp slt <16 x i8> %i.at, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.av, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !136

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ar, %i.ax
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.aj, i64 noundef %i.w, i64 noundef %i.ah)
  br label %bb.i

end_hunk_8
