inline.NumInlined: 911
inline.NumDeleted: 351
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4Luau7CodeGen9getRegTagERSt5arrayIhLm256EERNS0_16BytecodeTypeInfoEhi:bb.a

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i, i64 12 ; 2 uses
  %.not13.i = icmp eq ptr %i.t, %i.i
  br i1 %.not13.i, label %_ZN4Luau7CodeGenL11findRegTypeERNS0_16BytecodeTypeInfoEhi.exit.thread, label %.lr.ph.i, !llvm.loop !158

_ZN4Luau7CodeGenL11findRegTypeERNS0_16BytecodeTypeInfoEhi.exit: ; preds = %bb.c
  %i.u = load i8, ptr %.sroa.0.015.i, align 4, !tbaa !116 ; 3 uses
  %.not13 = icmp eq i8 %i.u, 15
  br i1 %.not13, label %_ZN4Luau7CodeGenL11findRegTypeERNS0_16BytecodeTypeInfoEhi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau7CodeGenL11findRegTypeERNS0_16BytecodeTypeInfoEhi.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  store i8 %i.u, ptr %i.v, align 1, !tbaa !108
  br label %bb.f

_ZN4Luau7CodeGenL11findRegTypeERNS0_16BytecodeTypeInfoEhi.exit.thread: ; preds = %bb.d, %bb.a, %bb.b, %_ZN4Luau7CodeGenL11findRegTypeERNS0_16BytecodeTypeInfoEhi.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.x = load i8, ptr %i.w, align 1, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau7CodeGenL11findRegTypeERNS0_16BytecodeTypeInfoEhi.exit.thread, %bb.e
  %.0 = phi i8 [ %i.u, %bb.e ], [ %i.x, %_ZN4Luau7CodeGenL11findRegTypeERNS0_16BytecodeTypeInfoEhi.exit.thread ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen20analyzeBytecodeTypesERNS0_10IrFunctionERKNS0_11HostIrHooksE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.5.i.i33.i.i.i.i = alloca [6 x i8], align 2 ; 4 uses
  %2 = alloca %"struct.Luau::CodeGen::BytecodeRegTypeInfo", align 4 ; 4 uses
  %.sroa.5.i.i12.i.i.i.i = alloca [6 x i8], align 2 ; 4 uses
  %.sroa.5.i.i.i.i.i.i = alloca [6 x i8], align 2 ; 4 uses
  %3 = alloca %"struct.Luau::CodeGen::BytecodeRegTypeInfo", align 4 ; 4 uses
  %4 = alloca %"struct.std::array", align 1       ; 118 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 36 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !156  ; 19 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEEZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EvT_SD_T0_.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = sdiv exact i64 %i.k, 12
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = xor i64 %i.n, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_SG_T0_T1_"(ptr %i.f, ptr %i.h, i64 noundef %i.o)
  %i.p = icmp sgt i64 %i.k, 192
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %.preheader.i34.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.f, i64 1
  %i.r = getelementptr i8, ptr %i.f, i64 8
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.f, i64 12
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i.i = phi i64 [ 12, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.add.i.i.i.i, %bb.h ] ; 4 uses
  %.pn18.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i.i, %bb.h ] ; 6 uses
  %.sroa.0.019.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.019.i.idx.i.i.i.i ; 5 uses
  %i.s = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 13
  %.val.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !118 ; 7 uses
  %i.t = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 20
  %.val1.i.i.i.i.i.i = load i32, ptr %i.t, align 4 ; 4 uses
  %.val2.i.i.i.i.i.i = load i8, ptr %i.q, align 1, !tbaa !118 ; 2 uses
  %.val3.i.i.i.i.i.i = load i32, ptr %i.r, align 4
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i
  %i.u = icmp ult i8 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i
  %i.v = icmp slt i32 %.val1.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.v, i1 %i.u
  br i1 %.0.i.i.i.i.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.019.i.ptr.i.i.i.i, i64 12, i1 false), !tbaa.struct !159
  %i.w = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i.i, 12
  br i1 %i.w, label %bb.e, label %bb.f, !prof !160

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %i.f, i64 %.sroa.0.019.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !159
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %.sroa.04.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.0.019.i.ptr.i.i.i.i, align 4, !tbaa !108
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !161
  %i.y = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 1
  %.val3.i15.i.i.i.i.i.i = load i8, ptr %i.y, align 1, !tbaa !118 ; 2 uses
  %i.z = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 8
  %.val4.i16.i.i.i.i.i.i = load i32, ptr %i.z, align 4
  %.not.i.i17.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i, %.val3.i15.i.i.i.i.i.i
  %i.aa = icmp ult i8 %.val.i.i.i.i.i.i, %.val3.i15.i.i.i.i.i.i
  %i.ab = icmp slt i32 %.val1.i.i.i.i.i.i, %.val4.i16.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i = select i1 %.not.i.i17.i.i.i.i.i.i, i1 %i.ab, i1 %i.aa
  br i1 %.0.i.i18.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %.sroa.012.019.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i.i, %bb.g ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.019.i.i.i.i.i.i, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.012.019.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !159
  %i.ac = getelementptr i8, ptr %.sroa.012.019.i.i.i.i.i.i, i64 -23
  %.val3.i.i.i.i.i.i.i = load i8, ptr %i.ac, align 1, !tbaa !118 ; 2 uses
  %i.ad = getelementptr i8, ptr %.sroa.012.019.i.i.i.i.i.i, i64 -16
  %.val4.i.i.i.i.i.i.i = load i32, ptr %i.ad, align 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i
  %i.ae = icmp ult i8 %.val.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i
  %i.af = icmp slt i32 %.val1.i.i.i.i.i.i, %.val4.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %i.af, i1 %i.ae
  br i1 %.0.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i.i.i.i.i", !llvm.loop !162

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g
  %.sroa.012.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i.i, %bb.g ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  store i8 %.sroa.04.0.copyload.i.i.i.i.i.i, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, align 4, !tbaa !108
  %.sroa.4.0..sroa_idx6.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, i64 1
  store i8 %.val.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx6.i.i.i.i.i.i, align 1, !tbaa !108
  %.sroa.5.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx8.i.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !161
  %.sroa.59.0..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i.i, i64 8
  store i32 %.val1.i.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i.i, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i
  %.sroa.0.019.i.add.i.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i.i, 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.019.i.add.i.i.i.i, 192
  br i1 %.not.i.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_SG_T0_.exit.i.i.i.i", label %bb.c, !llvm.loop !163

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_SG_T0_.exit.i.i.i.i": ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.ag, %i.h
  br i1 %.not6.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEEZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EvT_SD_T0_.exit.i", label %.lr.ph.i13.i.i.i.i

.lr.ph.i13.i.i.i.i:                               ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_SG_T0_.exit.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i20.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.ap, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i20.i.i.i.i" ], [ %i.ag, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_SG_T0_.exit.i.i.i.i" ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i)
  %.sroa.04.0.copyload.i.i14.i.i.i.i = load i8, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !108
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 1
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 1, !tbaa !108 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i15.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i12.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx.i.i15.i.i.i.i, i64 6, i1 false), !tbaa.struct !161
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8
  %.sroa.59.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !137 ; 3 uses
  %i.ah = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -11
  %.val3.i15.i.i16.i.i.i.i = load i8, ptr %i.ah, align 1, !tbaa !118 ; 2 uses
  %i.ai = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -4
  %.val4.i16.i.i17.i.i.i.i = load i32, ptr %i.ai, align 4
  %.not.i.i17.i.i18.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i.i.i.i, %.val3.i15.i.i16.i.i.i.i
  %i.aj = icmp ult i8 %.sroa.4.0.copyload.i.i.i.i.i.i, %.val3.i15.i.i16.i.i.i.i
  %i.ak = icmp slt i32 %.sroa.59.0.copyload.i.i.i.i.i.i, %.val4.i16.i.i17.i.i.i.i
  %.0.i.i18.i.i19.i.i.i.i = select i1 %.not.i.i17.i.i18.i.i.i.i, i1 %i.ak, i1 %i.aj
  br i1 %.0.i.i18.i.i19.i.i.i.i, label %.lr.ph.i.i26.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i20.i.i.i.i"

.lr.ph.i.i26.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i, %.lr.ph.i.i26.i.i.i.i
  %.sroa.012.019.i.i27.i.i.i.i = phi ptr [ %.sroa.0.0.i.i28.i.i.i.i, %.lr.ph.i.i26.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i28.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.019.i.i27.i.i.i.i, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.012.019.i.i27.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i28.i.i.i.i, i64 12, i1 false), !tbaa.struct !159
  %i.al = getelementptr i8, ptr %.sroa.012.019.i.i27.i.i.i.i, i64 -23
  %.val3.i.i.i29.i.i.i.i = load i8, ptr %i.al, align 1, !tbaa !118 ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.012.019.i.i27.i.i.i.i, i64 -16
  %.val4.i.i.i30.i.i.i.i = load i32, ptr %i.am, align 4
  %.not.i.i.i.i31.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i.i.i.i, %.val3.i.i.i29.i.i.i.i
  %i.an = icmp ult i8 %.sroa.4.0.copyload.i.i.i.i.i.i, %.val3.i.i.i29.i.i.i.i
  %i.ao = icmp slt i32 %.sroa.59.0.copyload.i.i.i.i.i.i, %.val4.i.i.i30.i.i.i.i
  %.0.i.i.i.i32.i.i.i.i = select i1 %.not.i.i.i.i31.i.i.i.i, i1 %i.ao, i1 %i.an
  br i1 %.0.i.i.i.i32.i.i.i.i, label %.lr.ph.i.i26.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i20.i.i.i.i", !llvm.loop !162

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i20.i.i.i.i": ; preds = %.lr.ph.i.i26.i.i.i.i, %.lr.ph.i13.i.i.i.i
  %.sroa.012.0.lcssa.i.i21.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ], [ %.sroa.0.0.i.i28.i.i.i.i, %.lr.ph.i.i26.i.i.i.i ] ; 4 uses
  store i8 %.sroa.04.0.copyload.i.i14.i.i.i.i, ptr %.sroa.012.0.lcssa.i.i21.i.i.i.i, align 4, !tbaa !108
  %.sroa.4.0..sroa_idx6.i.i22.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i21.i.i.i.i, i64 1
  store i8 %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx6.i.i22.i.i.i.i, align 1, !tbaa !108
  %.sroa.5.0..sroa_idx8.i.i23.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i21.i.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx8.i.i23.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i12.i.i.i.i, i64 6, i1 false), !tbaa.struct !161
  %.sroa.59.0..sroa_idx10.i.i24.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i21.i.i.i.i, i64 8
  store i32 %.sroa.59.0.copyload.i.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx10.i.i24.i.i.i.i, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i25.i.i.i.i = icmp eq ptr %i.ap, %i.h
  br i1 %.not.i25.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEEZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EvT_SD_T0_.exit.i", label %.lr.ph.i13.i.i.i.i, !llvm.loop !164

.preheader.i34.i.i.i.i:                           ; preds = %bb.b
  %.sroa.0.016.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %.not17.i36.i.i.i.i = icmp eq ptr %.sroa.0.016.i35.i.i.i.i, %i.h
  br i1 %.not17.i36.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEEZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EvT_SD_T0_.exit.i", label %.lr.ph.i37.i.i.i.i

.lr.ph.i37.i.i.i.i:                               ; preds = %.preheader.i34.i.i.i.i
  %i.aq = getelementptr i8, ptr %i.f, i64 1
  %i.ar = getelementptr i8, ptr %i.f, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i37.i.i.i.i
  %.sroa.0.019.i38.i.i.i.i = phi ptr [ %.sroa.0.016.i35.i.i.i.i, %.lr.ph.i37.i.i.i.i ], [ %.sroa.0.0.i57.i.i.i.i, %bb.o ] ; 7 uses
  %.pn18.i39.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i37.i.i.i.i ], [ %.sroa.0.019.i38.i.i.i.i, %bb.o ] ; 7 uses
  %i.as = getelementptr i8, ptr %.pn18.i39.i.i.i.i, i64 13
  %.val.i.i40.i.i.i.i = load i8, ptr %i.as, align 1, !tbaa !118 ; 7 uses
  %i.at = getelementptr i8, ptr %.pn18.i39.i.i.i.i, i64 20
  %.val1.i.i41.i.i.i.i = load i32, ptr %i.at, align 4 ; 4 uses
  %.val2.i.i42.i.i.i.i = load i8, ptr %i.aq, align 1, !tbaa !118 ; 2 uses
  %.val3.i.i43.i.i.i.i = load i32, ptr %i.ar, align 4
  %.not.i.i.i44.i.i.i.i = icmp eq i8 %.val.i.i40.i.i.i.i, %.val2.i.i42.i.i.i.i
  %i.au = icmp ult i8 %.val.i.i40.i.i.i.i, %.val2.i.i42.i.i.i.i
  %i.av = icmp slt i32 %.val1.i.i41.i.i.i.i, %.val3.i.i43.i.i.i.i
  %.0.i.i.i45.i.i.i.i = select i1 %.not.i.i.i44.i.i.i.i, i1 %i.av, i1 %i.au
  br i1 %.0.i.i.i45.i.i.i.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.019.i38.i.i.i.i, i64 12, i1 false), !tbaa.struct !159
  %i.aw = ptrtoint ptr %.sroa.0.019.i38.i.i.i.i to i64
  %i.ax = sub i64 %i.aw, %i.j                     ; 4 uses
  %i.ay = icmp sgt i64 %i.ax, 12
  br i1 %i.ay, label %bb.k, label %bb.l, !prof !160

bb.k:                                             ; preds = %bb.j
  %5 = getelementptr inbounds nuw i8, ptr %.pn18.i39.i.i.i.i, i64 24
  %.neg23.i67.i.i.i.i = udiv exact i64 %i.ax, 12
  %.neg23.neg.i68.i.i.i.i = sub nsw i64 0, %.neg23.i67.i.i.i.i
  %6 = getelementptr inbounds [12 x i8], ptr %5, i64 %.neg23.neg.i68.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %6, ptr noundef nonnull align 4 dereferenceable(1) %i.f, i64 %i.ax, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i66.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.az = icmp eq i64 %i.ax, 12
  br i1 %i.az, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i66.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn18.i39.i.i.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ba, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !159
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i66.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i66.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !159
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i33.i.i.i.i)
  %.sroa.04.0.copyload.i.i46.i.i.i.i = load i8, ptr %.sroa.0.019.i38.i.i.i.i, align 4, !tbaa !108
  %.sroa.5.0..sroa_idx.i.i47.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i39.i.i.i.i, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i33.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx.i.i47.i.i.i.i, i64 6, i1 false), !tbaa.struct !161
  %i.bb = getelementptr i8, ptr %.pn18.i39.i.i.i.i, i64 1
  %.val3.i15.i.i48.i.i.i.i = load i8, ptr %i.bb, align 1, !tbaa !118 ; 2 uses
  %i.bc = getelementptr i8, ptr %.pn18.i39.i.i.i.i, i64 8
  %.val4.i16.i.i49.i.i.i.i = load i32, ptr %i.bc, align 4
  %.not.i.i17.i.i50.i.i.i.i = icmp eq i8 %.val.i.i40.i.i.i.i, %.val3.i15.i.i48.i.i.i.i
  %i.bd = icmp ult i8 %.val.i.i40.i.i.i.i, %.val3.i15.i.i48.i.i.i.i
  %i.be = icmp slt i32 %.val1.i.i41.i.i.i.i, %.val4.i16.i.i49.i.i.i.i
  %.0.i.i18.i.i51.i.i.i.i = select i1 %.not.i.i17.i.i50.i.i.i.i, i1 %i.be, i1 %i.bd
  br i1 %.0.i.i18.i.i51.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i52.i.i.i.i"

.lr.ph.i.i59.i.i.i.i:                             ; preds = %bb.n, %.lr.ph.i.i59.i.i.i.i
  %.sroa.012.019.i.i60.i.i.i.i = phi ptr [ %.sroa.0.0.i.i61.i.i.i.i, %.lr.ph.i.i59.i.i.i.i ], [ %.sroa.0.019.i38.i.i.i.i, %bb.n ] ; 4 uses
  %.sroa.0.0.i.i61.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.019.i.i60.i.i.i.i, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.012.019.i.i60.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i61.i.i.i.i, i64 12, i1 false), !tbaa.struct !159
  %i.bf = getelementptr i8, ptr %.sroa.012.019.i.i60.i.i.i.i, i64 -23
  %.val3.i.i.i62.i.i.i.i = load i8, ptr %i.bf, align 1, !tbaa !118 ; 2 uses
  %i.bg = getelementptr i8, ptr %.sroa.012.019.i.i60.i.i.i.i, i64 -16
  %.val4.i.i.i63.i.i.i.i = load i32, ptr %i.bg, align 4
  %.not.i.i.i.i64.i.i.i.i = icmp eq i8 %.val.i.i40.i.i.i.i, %.val3.i.i.i62.i.i.i.i
  %i.bh = icmp ult i8 %.val.i.i40.i.i.i.i, %.val3.i.i.i62.i.i.i.i
  %i.bi = icmp slt i32 %.val1.i.i41.i.i.i.i, %.val4.i.i.i63.i.i.i.i
  %.0.i.i.i.i65.i.i.i.i = select i1 %.not.i.i.i.i64.i.i.i.i, i1 %i.bi, i1 %i.bh
  br i1 %.0.i.i.i.i65.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i52.i.i.i.i", !llvm.loop !162

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i52.i.i.i.i": ; preds = %.lr.ph.i.i59.i.i.i.i, %bb.n
  %.sroa.012.0.lcssa.i.i53.i.i.i.i = phi ptr [ %.sroa.0.019.i38.i.i.i.i, %bb.n ], [ %.sroa.0.0.i.i61.i.i.i.i, %.lr.ph.i.i59.i.i.i.i ] ; 4 uses
  store i8 %.sroa.04.0.copyload.i.i46.i.i.i.i, ptr %.sroa.012.0.lcssa.i.i53.i.i.i.i, align 4, !tbaa !108
  %.sroa.4.0..sroa_idx6.i.i54.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i53.i.i.i.i, i64 1
  store i8 %.val.i.i40.i.i.i.i, ptr %.sroa.4.0..sroa_idx6.i.i54.i.i.i.i, align 1, !tbaa !108
  %.sroa.5.0..sroa_idx8.i.i55.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i53.i.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx8.i.i55.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i33.i.i.i.i, i64 6, i1 false), !tbaa.struct !161
  %.sroa.59.0..sroa_idx10.i.i56.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i53.i.i.i.i, i64 8
  store i32 %.val1.i.i41.i.i.i.i, ptr %.sroa.59.0..sroa_idx10.i.i56.i.i.i.i, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i33.i.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i52.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i66.i.i.i.i
  %.sroa.0.0.i57.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i38.i.i.i.i, i64 12 ; 2 uses
  %.not.i58.i.i.i.i = icmp eq ptr %.sroa.0.0.i57.i.i.i.i, %i.h
  br i1 %.not.i58.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEEZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EvT_SD_T0_.exit.i", label %bb.i, !llvm.loop !163

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEEZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EvT_SD_T0_.exit.i": ; preds = %bb.o, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_T0_.exit.i20.i.i.i.i", %.preheader.i34.i.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EEEvT_SG_T0_.exit.i.i.i.i", %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 37 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !165 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !157 ; 5 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = ashr exact i64 %i.bp, 2                 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 257
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEEZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EvT_SD_T0_.exit.i"
  %i.bs = sub nuw nsw i64 257, %i.bq
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 noundef %i.bs)
  %.pre.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !157
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.q:                                             ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4Luau7CodeGen19BytecodeRegTypeInfoESt6vectorIS4_SaIS4_EEEEZNS3_L25prepareRegTypeInfoLookupsERNS3_16BytecodeTypeInfoEE3$_0EvT_SD_T0_.exit.i"
  %.not.i = icmp eq i64 %i.bp, 1028
  br i1 %.not.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 1028 ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.bl, %i.bt
  br i1 %.not.i.i21.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.r
  store ptr %i.bt, ptr %i.bk, align 8, !tbaa !165
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %bb.r, %bb.q, %bb.p
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.p ], [ %i.bm, %bb.q ], [ %i.bm, %bb.r ], [ %i.bm, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i ] ; 9 uses
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !114 ; 2 uses
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !115 ; 7 uses
  %.not26.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not26.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = sdiv exact i64 %i.by, 12                ; 3 uses
  %xtraiter = and i64 %i.bz, 3                    ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 4
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bz, -4
  br label %bb.t

.preheader.i.loopexit.unr-lcssa:                  ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i
  %.02023.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.dq, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod1769 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1769)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.02023.i.epil = phi i64 [ %.02023.i.epil.init, %.epil.preheader ], [ %i.cc, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %.02023.i.epil
  %i.cc = add nuw i64 %.02023.i.epil, 1           ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !118
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 %i.cd, ptr %i.ci, align 4, !tbaa !137
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %bb.s, !llvm.loop !166

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %bb.s, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %i.cj = load ptr, ptr %i.bk, align 8, !tbaa !165
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %.pre.i to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = ashr exact i64 %i.cm, 2                 ; 2 uses
  %i.co = icmp ugt i64 %i.cn, 1
  br i1 %i.co, label %.lr.ph25.i.preheader, label %_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit

.lr.ph25.i.preheader:                             ; preds = %.preheader.i
  %i.cp = add nsw i64 %i.cn, -1                   ; 3 uses
  %xtraiter1770 = and i64 %i.cp, 1
  %i.cq = icmp eq i64 %i.cm, 8
  br i1 %i.cq, label %.lr.ph25.i.epil.preheader, label %.lr.ph25.i.preheader.new

.lr.ph25.i.preheader.new:                         ; preds = %.lr.ph25.i.preheader
  %unroll_iter1774 = and i64 %i.cp, -2
  br label %.lr.ph25.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.new
  %.02023.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.dq, %bb.t ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.t ]
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %.02023.i
  %i.cs = or disjoint i64 %.02023.i, 1            ; 2 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !118
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.ct, ptr %i.cy, align 4, !tbaa !137
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.cs
  %i.da = or disjoint i64 %.02023.i, 2            ; 2 uses
  %i.db = trunc i64 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !118
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 %i.db, ptr %i.dg, align 4, !tbaa !137
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.da
  %i.di = or disjoint i64 %.02023.i, 3            ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !118
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 %i.dj, ptr %i.do, align 4, !tbaa !137
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.di
  %i.dq = add nuw i64 %.02023.i, 4                ; 3 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !118
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 %i.dr, ptr %i.dw, align 4, !tbaa !137
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %bb.t, !llvm.loop !168

.lr.ph25.i:                                       ; preds = %bb.w, %.lr.ph25.i.preheader.new
  %.024.i = phi i64 [ 1, %.lr.ph25.i.preheader.new ], [ %i.eh, %bb.w ] ; 3 uses
  %niter1775 = phi i64 [ 0, %.lr.ph25.i.preheader.new ], [ %niter1775.next.1, %bb.w ]
  %i.dx = getelementptr [4 x i8], ptr %.pre.i, i64 %.024.i ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !137
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.u, label %.lr.ph25.i.1

bb.u:                                             ; preds = %.lr.ph25.i
  %i.ea = getelementptr i8, ptr %i.dx, i64 -4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !137
  store i32 %i.eb, ptr %i.dx, align 4, !tbaa !137
  br label %.lr.ph25.i.1

.lr.ph25.i.1:                                     ; preds = %bb.u, %.lr.ph25.i
  %i.ec = getelementptr [4 x i8], ptr %.pre.i, i64 %.024.i ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 4      ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !137
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph25.i.1
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !137
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !137
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph25.i.1
  %i.eh = add nuw i64 %.024.i, 2                  ; 2 uses
  %niter1775.next.1 = add i64 %niter1775, 2       ; 2 uses
  %niter1775.ncmp.1 = icmp eq i64 %niter1775.next.1, %unroll_iter1774
  br i1 %niter1775.ncmp.1, label %_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit.loopexit.unr-lcssa, label %.lr.ph25.i, !llvm.loop !169

_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod1772.not = icmp eq i64 %xtraiter1770, 0
  br i1 %lcmp.mod1772.not, label %_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit, label %.lr.ph25.i.epil.preheader

.lr.ph25.i.epil.preheader:                        ; preds = %_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit.loopexit.unr-lcssa, %.lr.ph25.i.preheader
  %.024.i.epil.init = phi i64 [ 1, %.lr.ph25.i.preheader ], [ %i.eh, %_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit.loopexit.unr-lcssa ]
  %lcmp.mod1773 = trunc i64 %i.cp to i1
  call void @llvm.assume(i1 %lcmp.mod1773)
  %i.ei = getelementptr [4 x i8], ptr %.pre.i, i64 %.024.i.epil.init ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !137
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.x, label %_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit

bb.x:                                             ; preds = %.lr.ph25.i.epil.preheader
  %i.el = getelementptr i8, ptr %i.ei, i64 -4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !137
  store i32 %i.em, ptr %i.ei, align 4, !tbaa !137
  br label %_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit

_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit: ; preds = %_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit.loopexit.unr-lcssa, %bb.x, %.lr.ph25.i.epil.preheader, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %4, i8 15, i64 256, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !135
  %i.eq = sext i32 %i.ep to i64
  tail call void @_ZNSt6vectorIN4Luau7CodeGen13BytecodeTypesESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 noundef %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !138 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !138 ; 2 uses
  %.not12841343 = icmp eq ptr %i.es, %i.eu
  br i1 %.not12841343, label %._crit_edge1345, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 14 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ez = getelementptr i8, ptr %i.c, i64 8       ; 10 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge1342
  %.sroa.01269.01344 = phi ptr [ %i.es, %.preheader.lr.ph ], [ %i.hm, %._crit_edge1342 ] ; 3 uses
  %i.fg = load ptr, ptr %i.ev, align 8, !tbaa !109 ; 2 uses
  %i.fh = load ptr, ptr %i.d, align 8, !tbaa !110 ; 9 uses
  %i.fi = ptrtoint ptr %i.fg to i64               ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64               ; 4 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 8 uses
  %.not1346 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not1346, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.fk, 4
  %i.fl = sub i64 %i.fj, %i.a
  %diff.check = icmp ugt i64 %i.fl, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1664 = icmp ult i64 %i.fk, 32
  br i1 %min.iters.check1664, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fm = and i64 %i.fk, 28
  %n.vec = and i64 %i.fk, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load = load <16 x i8>, ptr %i.fn, align 1, !tbaa !108
  %wide.load1665 = load <16 x i8>, ptr %i.fo, align 1, !tbaa !108
  %i.fp = and <16 x i8> %wide.load, splat (i8 127)
  %i.fq = and <16 x i8> %wide.load1665, splat (i8 127)
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <16 x i8> %i.fp, ptr %i.fr, align 1, !tbaa !108
  store <16 x i8> %i.fq, ptr %i.fs, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fk, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !171

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1666 = and i64 %i.fk, -4                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1667 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1669, %vec.epilog.vector.body ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 %index1667
  %wide.load1668 = load <4 x i8>, ptr %i.fu, align 1, !tbaa !108
  %i.fv = and <4 x i8> %wide.load1668, splat (i8 127)
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 %index1667
  store <4 x i8> %i.fv, ptr %i.fw, align 1, !tbaa !108
  %index.next1669 = add nuw i64 %index1667, 4     ; 2 uses
  %i.fx = icmp eq i64 %index.next1669, %n.vec1666
  br i1 %i.fx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !172

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1670 = icmp eq i64 %i.fk, %n.vec1666
  br i1 %cmp.n1670, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01328.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1666, %vec.epilog.middle.block ] ; 3 uses
  %i.fy = sub i64 %i.fi, %i.fj
  %xtraiter1776 = and i64 %i.fy, 3                ; 2 uses
  %lcmp.mod1777.not = icmp eq i64 %xtraiter1776, 0
  br i1 %lcmp.mod1777.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.01328.prol = phi i64 [ %i.gd, %.lr.ph.prol ], [ %.01328.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.01328.prol
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !108
  %i.gb = and i8 %i.ga, 127
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 %.01328.prol
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !108
  %i.gd = add nuw i64 %.01328.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1776
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !173

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.01328.unr = phi i64 [ %.01328.ph, %.lr.ph.preheader ], [ %i.gd, %.lr.ph.prol ]
  %i.ge = sub i64 %.01328.ph, %i.fi
  %i.gf = add i64 %i.ge, %i.fj
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %._crit_edge, label %.lr.ph

._crit_edge1345:                                  ; preds = %._crit_edge1342, %_ZN4Luau7CodeGenL25prepareRegTypeInfoLookupsERNS0_16BytecodeTypeInfoE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.gh = load i8, ptr %i.ew, align 4, !tbaa !107 ; 2 uses
  %i.gi = load i8, ptr %i.ex, align 2, !tbaa !174
  %i.gj = icmp ult i8 %i.gh, %i.gi
  br i1 %i.gj, label %.lr.ph1331.preheader, label %._crit_edge1332

.lr.ph1331.preheader:                             ; preds = %._crit_edge
  %i.gk = zext i8 %i.gh to i64
  br label %.lr.ph1331

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01328 = phi i64 [ %i.he, %.lr.ph ], [ %.01328.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.01328
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !108
  %i.gn = and i8 %i.gm, 127
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 %.01328
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !108
  %i.gp = add nuw i64 %.01328, 1                  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !108
  %i.gs = and i8 %i.gr, 127
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 %i.gp
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !108
  %i.gu = add nuw i64 %.01328, 2                  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !108
  %i.gx = and i8 %i.gw, 127
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 %i.gu
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !108
  %i.gz = add nuw i64 %.01328, 3                  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !108
  %i.hc = and i8 %i.hb, 127
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 %i.gz
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !108
  %i.he = add nuw i64 %.01328, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.he, %i.fk
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !175

._crit_edge1332:                                  ; preds = %.lr.ph1331, %._crit_edge
  %i.hf = load i32, ptr %.sroa.01269.01344, align 4, !tbaa !176 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.01269.01344, i64 4 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !139
  %.not1333 = icmp sgt i32 %i.hf, %i.hh
  br i1 %.not1333, label %._crit_edge1342, label %.lr.ph1341

.lr.ph1331:                                       ; preds = %.lr.ph1331.preheader, %.lr.ph1331
  %indvars.iv = phi i64 [ %i.gk, %.lr.ph1331.preheader ], [ %indvars.iv.next, %.lr.ph1331 ] ; 2 uses
end_hunk_0
