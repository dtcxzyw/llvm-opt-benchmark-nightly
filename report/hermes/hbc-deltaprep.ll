Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hbc-deltaprep?download=true
inline.NumInlined: 371
inline.NumDeleted: 257
begin_hunk_0_@_ZNK4llvh2cl15OptionValueCopyIN6hermes3hbc12BytecodeFormEE7compareERKNS0_18GenericOptionValueE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !50, !range !51, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !50, !range !51, !noundef !47
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp ne i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvh2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNK4llvh2cl19generic_parser_base22printGenericOptionDiffERKNS0_6OptionERKNS0_18GenericOptionValueES7_m(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(145), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !60, !range !51, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !60, !range !51, !noundef !47
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !22
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp ne i32 %bcmp.i.i.i, 0
  br label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.q, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

declare void @_ZN4llvh8InitLLVMC2ERiRPPKc(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36), i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl5applyINS0_3optIN6hermes3hbc12BytecodeFormELb0ENS0_6parserIS5_EEEEA5_cJNS0_11ValuesClassENS0_18NumOccurrencesFlagENS0_4descEEEEvPT_RKT0_DpRKT1_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  tail call void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr nonnull %1, i64 %i.a) #18
  %i.b = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.e, 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i.i
  %.not12.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not12.i.i.i, label %_ZN4llvh2cl5applyINS0_3optIN6hermes3hbc12BytecodeFormELb0ENS0_6parserIS5_EEEENS0_11ValuesClassEJNS0_18NumOccurrencesFlagENS0_4descEEEEvPT_RKT0_DpRKT1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvh2cl6parserIN6hermes3hbc12BytecodeFormEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.v, %_ZN4llvh2cl6parserIN6hermes3hbc12BytecodeFormEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i ] ; 6 uses
  %.sroa.0.0.copyload10.i.i.i = load ptr, ptr %.013.i.i.i, align 8, !tbaa !57 ; 2 uses
  %.sroa.4.0..0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i, align 8, !tbaa !58 ; 2 uses
  %.sroa.5.0..0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..0.sroa_idx.i.i.i, align 8, !tbaa !7
  %.sroa.611.0..0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %.sroa.611.0.copyload.i.i.i = load ptr, ptr %.sroa.611.0..0.sroa_idx.i.i.i, align 8, !tbaa !57
  %.sroa.7.0..0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..0.sroa_idx.i.i.i, align 8, !tbaa !58
  %i.k = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !54
  %.not.i.i.i.i.i = icmp ult i32 %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh2cl6parserIN6hermes3hbc12BytecodeFormEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i, label %bb.c, !prof !55

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes3hbc12BytecodeFormEE10OptionInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef 0)
  %.pre.i.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !53
  br label %_ZN4llvh2cl6parserIN6hermes3hbc12BytecodeFormEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i

_ZN4llvh2cl6parserIN6hermes3hbc12BytecodeFormEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %.pre.i.i.i.i.i, %bb.c ], [ %i.k, %bb.b ]
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %i.o ; 7 uses
  store ptr %.sroa.0.0.copyload10.i.i.i, ptr %i.p, align 8, !tbaa !57
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !58
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.611.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !tbaa !57
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %.sroa.7.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 %.sroa.5.0.copyload.i.i.i, ptr %i.r, align 8
  %.sroa.10.40..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  store i8 1, ptr %.sroa.10.40..sroa_idx.i.i.i.i, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN6hermes3hbc12BytecodeFormEEE, i64 16), ptr %i.q, align 8, !tbaa !9
  %i.s = load i32, ptr %i.h, align 8, !tbaa !53
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !53
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !46, !nonnull !47, !align !48
  tail call void @_ZN4llvh2cl16AddLiteralOptionERNS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145) %i.u, ptr %.sroa.0.0.copyload10.i.i.i, i64 %.sroa.4.0.copyload.i.i.i) #18
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.f
  br i1 %.not.i.i.i, label %_ZN4llvh2cl5applyINS0_3optIN6hermes3hbc12BytecodeFormELb0ENS0_6parserIS5_EEEENS0_11ValuesClassEJNS0_18NumOccurrencesFlagENS0_4descEEEEvPT_RKT0_DpRKT1_.exit, label %bb.b

_ZN4llvh2cl5applyINS0_3optIN6hermes3hbc12BytecodeFormELb0ENS0_6parserIS5_EEEENS0_11ValuesClassEJNS0_18NumOccurrencesFlagENS0_4descEEEEvPT_RKT0_DpRKT1_.exit: ; preds = %_ZN4llvh2cl6parserIN6hermes3hbc12BytecodeFormEE16addLiteralOptionIiEEvNS_9StringRefERKT_S7_.exit.i.i.i, %bb.a
  %i.w = load i32, ptr %3, align 4, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = trunc i32 %i.w to i16
  %i.z = load i16, ptr %i.x, align 4
  %i.aa = and i16 %i.y, 7
  %i.ab = and i16 %i.z, -8
  %i.ac = or disjoint i16 %i.ab, %i.aa
  store i16 %i.ac, ptr %i.x, align 4
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !57
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !57
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.2.0.copyload.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !58
  ret void
}

declare void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvh2cl16AddLiteralOptionERNS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes3hbc12BytecodeFormEE10OptionInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !54
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = add nuw nsw i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %1) ; 2 uses
  %i.r = and i64 %.sroa.speculated, 4294967295    ; 3 uses
  %.not = icmp samesign ule i64 %i.r, %i.c
  %i.s = icmp ult i64 %i.r, %1
  %or.cond = or i1 %.not, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.19, i1 noundef zeroext true) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = mul nuw nsw i64 %i.r, 48
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #24 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.20, i1 noundef zeroext true) #18
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !53   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = mul nuw nsw i64 %i.z, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not7.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes3hbc12BytecodeFormEE10OptionInfoELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11safe_mallocEm.exit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.u, %_ZN4llvh11safe_mallocEm.exit ] ; 4 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.08.i.i.i.i, i64 32, i1 false), !tbaa.struct !102
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ac, ptr noundef nonnull align 8 dereferenceable(5) %i.ad, i64 5, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN6hermes3hbc12BytecodeFormEEE, i64 16), ptr %i.ab, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  %.not.i.i.i.i.1 = icmp eq ptr %i.ae, %i.aa
  br i1 %.not.i.i.i.i.1, label %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes3hbc12BytecodeFormEE10OptionInfoELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !101

_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes3hbc12BytecodeFormEE10OptionInfoELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvh11safe_mallocEm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = icmp eq ptr %i.w, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes3hbc12BytecodeFormEE10OptionInfoELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit
  tail call void @free(ptr noundef %i.w) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh23SmallVectorTemplateBaseINS_2cl6parserIN6hermes3hbc12BytecodeFormEE10OptionInfoELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !12
  %i.ai = trunc i64 %.sroa.speculated to i32
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !54
  ret void
}

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

declare void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_hbc_deltaprep.cpp() #15 section ".text.startup" {
bb.a:
  %0 = alloca %"class.llvh::cl::ValuesClass", align 8 ; 17 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"struct.llvh::cl::desc", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12, !alias.scope !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !54, !alias.scope !105
  store ptr @.str.1, ptr %i.b, align 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 5, ptr %.sroa.419.0..sroa_idx.i, align 8
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %.sroa.520.0..sroa_idx.i, align 8
  %.sroa.722.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @.str.2, ptr %.sroa.722.0..sroa_idx.i, align 8
  %.sroa.823.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 25, ptr %.sroa.823.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @.str.3, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 9, ptr %.sroa.10.0..sroa_idx.i, align 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %.sroa.11.0..sroa_idx.i, align 8
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @.str.4, ptr %.sroa.13.0..sroa_idx.i, align 8
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 27, ptr %.sroa.14.0..sroa_idx.i, align 8
  store i32 2, ptr %i.c, align 8, !tbaa !53, !alias.scope !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 2, ptr %i.a, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr @.str.5, ptr %1, align 8, !tbaa !57
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 39, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !58
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 8), align 8, !tbaa !106
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 12), align 4
  %i.f = and i16 %i.e, -4096
  store i16 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 12), align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 16), i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 72), align 8, !tbaa !107
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 80), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 88), align 8, !tbaa !16
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 96), align 8, !tbaa !108
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 100), align 4, !tbaa !109
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 104), align 8, !tbaa !110
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 144), align 8, !tbaa !111
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 152), align 8, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIN6hermes3hbc12BytecodeFormEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 160), align 8, !tbaa !9
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 172), align 4, !tbaa !50
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 168), align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optIN6hermes3hbc12BytecodeFormELb0ENS0_6parserIS4_EEEE, i64 16), ptr @_ZL4Form, align 8, !tbaa !9
  store ptr @_ZL4Form, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 184), align 8, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh2cl6parserIN6hermes3hbc12BytecodeFormEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 176), align 8, !tbaa !9
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 192), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 200), align 8, !tbaa !53
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 204), align 4, !tbaa !54
  call void @_ZN4llvh2cl5applyINS0_3optIN6hermes3hbc12BytecodeFormELb0ENS0_6parserIS5_EEEEA5_cJNS0_11ValuesClassENS0_18NumOccurrencesFlagENS0_4descEEEEvPT_RKT0_DpRKT1_(ptr noundef nonnull @_ZL4Form, ptr noundef nonnull align 1 dereferenceable(5) @.str, ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(592) @_ZL4Form) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.g = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.b
  br i1 %i.h, label %__cxx_global_var_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.g) #18
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.i = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh2cl3optIN6hermes3hbc12BytecodeFormELb0ENS0_6parserIS4_EEED2Ev, ptr nonnull @_ZL4Form, ptr nonnull @__dso_handle) #18 ; 0 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 8), align 8, !tbaa !106
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 12), align 4
  %i.k = and i16 %i.j, -4096
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 16), i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 72), align 8, !tbaa !107
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 80), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 88), align 8, !tbaa !16
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 96), align 8, !tbaa !108
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 100), align 4, !tbaa !109
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 104), align 8, !tbaa !110
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 144), align 8, !tbaa !111
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 168), ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 152), align 8, !tbaa !29
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 160), align 8, !tbaa !28
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 168), align 8, !tbaa !23
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 192), align 8, !tbaa !29
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 200), align 8, !tbaa !28
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 208), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 224), align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 184), align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEEE, i64 16), ptr @_ZL13InputFilenameB5cxx11, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 232), align 8, !tbaa !9
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 40), align 8, !tbaa !57
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 48), align 8, !tbaa !58
  %i.l = or disjoint i16 %i.k, 130
  store i16 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 12), align 4
  call void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(240) @_ZL13InputFilenameB5cxx11) #18
  %i.m = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev, ptr nonnull @_ZL13InputFilenameB5cxx11, ptr nonnull @__dso_handle) #18 ; 0 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 8), align 8, !tbaa !106
  %i.n = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 12), align 4
  %i.o = and i16 %i.n, -4096
  store i16 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 12), align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 16), i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 72), align 8, !tbaa !107
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 80), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 88), align 8, !tbaa !16
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 96), align 8, !tbaa !108
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 100), align 4, !tbaa !109
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 104), align 8, !tbaa !110
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 144), align 8, !tbaa !111
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 168), ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 152), align 8, !tbaa !29
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 160), align 8, !tbaa !28
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 168), align 8, !tbaa !23
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 192), align 8, !tbaa !29
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 200), align 8, !tbaa !28
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 208), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 224), align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 184), align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEEE, i64 16), ptr @_ZL14OutputFilenameB5cxx11, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 232), align 8, !tbaa !9
  call void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) @_ZL14OutputFilenameB5cxx11, ptr nonnull align 1 dereferenceable(4) @.str.9, i64 3) #18
  %i.p = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 12), align 4
  %i.q = and i16 %i.p, -8
  %i.r = or disjoint i16 %i.q, 2
  store i16 %i.r, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 12), align 4
  store ptr @.str.10, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 40), align 8, !tbaa !57
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 48), align 8, !tbaa !58
  call void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(240) @_ZL14OutputFilenameB5cxx11) #18
  %i.s = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev, ptr nonnull @_ZL14OutputFilenameB5cxx11, ptr nonnull @__dso_handle) #18 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

end_hunk_0
