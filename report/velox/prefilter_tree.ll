inline.NumInlined: 1854
inline.NumDeleted: 788
begin_hunk_0_@_ZN3re213PrefilterTree15AssignUniqueIdsEPN4absl12lts_2024011613flat_hash_setIPNS_9PrefilterENS0_13PrefilterHashENS0_14PrefilterEqualESaIS5_EEEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EE:bb.a
  br i1 %i.fn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc165
  %4 = load ptr, ptr %i.bt, align 8, !tbaa !73, !noalias !74
  %.fca.0.extract.i.i.i.i.i = extractvalue { i64, i8 } %i.fm, 0
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.fca.0.extract.i.i.i.i.i
  store ptr %.pre535, ptr %i.fo, align 8, !tbaa !37, !noalias !74
  br label %bb.ae
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE
; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59, !noalias !189 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57, !noalias !189 ; 2 uses
  %i.d = lshr i64 %2, 7
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_m:bb.a
  %i.f = lshr i64 %i.e, 12
  %i.g = xor i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 4 uses
  %i.j = trunc i64 %2 to i8
  %i.k = and i8 %i.j, 127
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_m:bb.a
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.064, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.6.0, %i.w
  %i.y = and i64 %i.x, %i.c                       ; 7 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37  ; 5 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %.thread38, label %bb.c

.thread38:                                        ; preds = %.lr.ph
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.y
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  br label %.loopexit54

bb.c:                                             ; preds = %.lr.ph
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !43 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_m:bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %.loopexit, !prof !192

bb.d:                                             ; preds = %bb.c
  switch i32 %i.ac, label %.thread41 [
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.g
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_m:bb.a

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %.thread41, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !65
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.ag)
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %.thread41, label %.loopexit

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_m:bb.a

.preheader.i.i.i.i.i.i:                           ; preds = %bb.g
  %.not29.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not29.i.i.i.i.i.i, label %.thread41, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bd = add nuw i64 %.01928.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bd, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i, label %7, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !193

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %.01928.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.h ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_m:bb.a
  %.not = icmp eq i16 %i.bn, 0
  br i1 %.not, label %.thread33, label %.lr.ph

.thread41:                                        ; preds = %bb.d, %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.y
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  br label %.loopexit54

7:                                                ; preds = %bb.h
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.y
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  br label %.loopexit54

.thread33:                                        ; preds = %.loopexit, %bb.b
  %i.bo = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.s, <16 x i8> %i.s)
  %i.bp = icmp slt <16 x i8> %i.bo, zeroinitializer
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_m:bb.a
  %i.bs = add i64 %i.br, %.sroa.6.0
  br label %bb.b, !llvm.loop !194

.loopexit54:                                      ; preds = %.thread33, %7, %.thread41, %.thread38
  %.sroa.0.4.ph = phi ptr [ %6, %.thread41 ], [ %4, %.thread38 ], [ %9, %7 ], [ null, %.thread33 ]
  %.sroa.3.4.ph = phi ptr [ %5, %.thread41 ], [ %3, %.thread38 ], [ %8, %7 ], [ undef, %.thread33 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.4.ph, 1
  ret { ptr, ptr } %.fca.1.insert
end_hunk_8
