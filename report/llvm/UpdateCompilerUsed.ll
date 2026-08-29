Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UpdateCompilerUsed?download=true
inline.NumInlined: 470
inline.NumDeleted: 361
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::StringTable" = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::StringTable::Offset" = type { i32 }
%"class.llvm::TargetLibraryInfoImpl" = type { [133 x i8], %"class.llvm::DenseMap.156", i8, i8, i8, i8, i32, %"class.std::vector.158", %"class.std::vector.158" }
%"class.llvm::DenseMap.156" = type { ptr, ptr, i32, i32 }
%"class.std::vector.158" = type { %"struct.std::_Vector_base.159" }
%"struct.std::_Vector_base.159" = type { %"struct.std::_Vector_base<llvm::VecDesc, std::allocator<llvm::VecDesc>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::VecDesc, std::allocator<llvm::VecDesc>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::VecDesc, std::allocator<llvm::VecDesc>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::VecDesc, std::allocator<llvm::VecDesc>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::TargetLibraryInfo" = type { ptr, %"class.std::bitset" }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [9 x i64] }
%"class.llvm::SmallPtrSet" = type { %"class.llvm::SmallPtrSetImpl.base", [1 x ptr] }
%"class.llvm::SmallPtrSetImpl.base" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<llvm::GlobalValue *, std::allocator<llvm::GlobalValue *>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::GlobalValue *, std::allocator<llvm::GlobalValue *>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::GlobalValue *, std::allocator<llvm::GlobalValue *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::GlobalValue *, std::allocator<llvm::GlobalValue *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.(anonymous namespace)::PreserveLibCallsAndAsmUsed" = type { ptr, ptr, %"class.llvm::Mangler", %"class.llvm::StringSet", ptr }
%"class.llvm::Mangler" = type { %"class.llvm::DenseMap" }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.llvm::StringSet" = type { %"class.llvm::StringMap.base", [4 x i8] }
%"class.llvm::StringMap.base" = type { %"class.llvm::StringMapImpl.base" }
%"class.llvm::StringMapImpl.base" = type <{ ptr, i32, i32, i32 }>
%"class.llvm::SmallString" = type { %"class.llvm::SmallVector.197" }
%"class.llvm::SmallVector.197" = type { %"class.llvm::SmallVectorImpl.198", %"struct.llvm::SmallVectorStorage.201" }
%"class.llvm::SmallVectorImpl.198" = type { %"class.llvm::SmallVectorTemplateBase.199" }
%"class.llvm::SmallVectorTemplateBase.199" = type { %"class.llvm::SmallVectorTemplateCommon.200" }
%"class.llvm::SmallVectorTemplateCommon.200" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.201" = type { [64 x i8] }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4llvm21TargetLibraryInfoImpl21StandardNamesStrTableE = external local_unnamed_addr global %"class.llvm::StringTable", align 8
@_ZN4llvm21TargetLibraryInfoImpl20StandardNamesOffsetsE = external local_unnamed_addr global [529 x %"class.llvm::StringTable::Offset"], align 16
@_ZN4llvm21TargetLibraryInfoImpl22StandardNamesSizeTableE = external local_unnamed_addr constant [529 x i8], align 16
@_ZN4llvm5RTLIB19RuntimeLibcallsInfo27RuntimeLibcallImplNameTableE = external local_unnamed_addr global %"class.llvm::StringTable", align 8
@_ZN4llvm5RTLIB19RuntimeLibcallsInfo29RuntimeLibcallNameOffsetTableE = external local_unnamed_addr constant [0 x i16], align 2
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18updateCompilerUsedERNS_6ModuleERKNS_13TargetMachineERKNS_9StringSetINS_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(1288) %0, ptr noundef nonnull align 8 dereferenceable(1728) %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::TargetLibraryInfoImpl", align 8 ; 11 uses
  %4 = alloca %"class.llvm::TargetLibraryInfo", align 8 ; 3 uses
  %5 = alloca %"class.llvm::SmallPtrSet", align 8 ; 10 uses
  %6 = alloca %"class.std::vector", align 8       ; 8 uses
  %7 = alloca %"class.(anonymous namespace)::PreserveLibCallsAndAsmUsed", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store ptr %2, ptr %7, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  store i32 8, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %6, ptr %i.d, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1400
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  call void @_ZN4llvm21TargetLibraryInfoImplC1ERKNS_6TripleENS_13VectorLibraryE(ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i32 noundef %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i8 0, i64 72, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 156 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 5 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.n, ptr %5, align 8, !tbaa !132
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 1, ptr %i.o, align 8, !tbaa !134
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 0, ptr %i.p, align 4, !tbaa !135
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i8 1, ptr %i.q, align 8, !tbaa !136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.sroa.041.057.i.i = load ptr, ptr %i.r, align 8, !tbaa !137 ; 2 uses
  %.not4958.i.i = icmp eq ptr %.sroa.041.057.i.i, %i.s
  br i1 %.not4958.i.i, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i.i, %bb.a
  %indvars.iv.i.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.i, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i.i ] ; 8 uses
  %i.t = lshr i64 %indvars.iv.i.i, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !140
  %i.w = and i64 %indvars.iv.i.i, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = and i64 %i.x, %i.v
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i.i, label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i.i

_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i.i: ; preds = %bb.c
  %i.z = lshr i64 %indvars.iv.i.i, 2
  %i.aa = and i64 %i.z, 1073741823
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !141
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %indvars.iv.tr.i.i = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.ae = shl nuw nsw i32 %indvars.iv.tr.i.i, 1
  %i.af = and i32 %i.ae, 6                        ; 2 uses
  %i.ag = shl nuw nsw i32 3, %i.af
  %i.ah = and i32 %i.ag, %i.ad
  %.not48.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not48.i.i, label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i.i, label %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i.i

_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i.i: ; preds = %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i.i
  %i.ai = lshr i32 %i.ad, %i.af
  %i.aj = and i32 %i.ai, 3
  switch i32 %i.aj, label %bb.e [
    i32 0, label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i.i
    i32 3, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @_ZN4llvm21TargetLibraryInfoImpl20StandardNamesOffsetsE, i64 %indvars.iv.i.i
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ak, align 4, !tbaa !142
  %i.al = load ptr, ptr @_ZN4llvm21TargetLibraryInfoImpl21StandardNamesStrTableE, align 8, !tbaa !143
  %i.am = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN4llvm21TargetLibraryInfoImpl22StandardNamesSizeTableE, i64 %indvars.iv.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !141
  %i.aq = zext i8 %i.ap to i64
  br label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i.i

bb.e:                                             ; preds = %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i.i
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !145, !noalias !149 ; 2 uses
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !158, !noalias !149 ; 2 uses
  %i.at = load i32, ptr %i.l, align 4, !tbaa !159, !noalias !149 ; 3 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = add i32 %i.at, -1                       ; 2 uses
  %i.aw = mul nuw nsw i32 %indvars.iv.tr.i.i, 37
  %.017.i.i.i.i.i.i = and i32 %i.av, %i.aw        ; 3 uses
  %i.ax = zext nneg i32 %.017.i.i.i.i.i.i to i64  ; 2 uses
  %i.ay = lshr i64 %i.ax, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !142, !noalias !160
  %i.bb = and i32 %.017.i.i.i.i.i.i, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !161

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.be = add nuw i32 %.018.i.i.i.i.i.i, 1
  %.0.i.i.i.i.i.i = and i32 %i.be, %i.av          ; 3 uses
  %i.bf = zext i32 %.0.i.i.i.i.i.i to i64         ; 2 uses
  %i.bg = lshr i64 %i.bf, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !142, !noalias !160
  %i.bj = and i32 %.0.i.i.i.i.i.i, 31
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = trunc i32 %i.bk to i1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !162

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %bb.g
  %i.bm = phi i64 [ %i.bf, %bb.g ], [ %i.ax, %bb.f ] ; 2 uses
  %.018.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i, %bb.g ], [ %.017.i.i.i.i.i.i, %bb.f ]
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !142, !noalias !160
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp eq i64 %indvars.iv.i.i, %i.bp
  br i1 %i.bq, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i.i, label %bb.g, !prof !163

.loopexit.i.i.i.i.i:                              ; preds = %bb.g, %bb.f, %bb.e
  %i.br = zext i32 %i.at to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %i.bs = phi i64 [ %i.br, %.loopexit.i.i.i.i.i ], [ %i.bm, %.lr.ph.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !164
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !165
  br label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i.i

_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i.i, %bb.d, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i.i
  %.sroa.06.0.i.i.i = phi ptr [ %i.bv, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i.i ], [ %i.an, %bb.d ], [ null, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i.i ] ; 3 uses
  %.sroa.57.0.i.i.i = phi i64 [ %i.bx, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i.i ], [ %i.aq, %bb.d ], [ 0, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i.i ] ; 7 uses
  %i.by = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.06.0.i.i.i, i64 %.sroa.57.0.i.i.i) #12
  %i.bz = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr %.sroa.06.0.i.i.i, i64 %.sroa.57.0.i.i.i, i32 noundef %i.by) #12 ; 2 uses
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.cb = zext i32 %i.bz to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cb ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !167
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i.i

bb.h:                                             ; preds = %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i.i
  %i.ce = add i64 %.sroa.57.0.i.i.i, 9
  %i.cf = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ce, i64 noundef 8) #12 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.57.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr align 1 %.sroa.06.0.i.i.i, i64 %.sroa.57.0.i.i.i, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.57.0.i.i.i
  store i8 0, ptr %i.ch, align 1, !tbaa !141
  store i64 %.sroa.57.0.i.i.i, ptr %i.cf, align 8, !tbaa !169
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !167
  %i.ci = load i32, ptr %i.m, align 4, !tbaa !171
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.m, align 4, !tbaa !171
  %i.ck = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i32 noundef %i.bz) #12 ; 0 uses
  br label %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i.i

_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.thread.i.i: ; preds = %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i, %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i.i, %_ZNK4llvm17TargetLibraryInfo3hasENS_7LibFuncE.exit.i.i, %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 529
  br i1 %.not.i.i, label %bb.b, label %bb.c, !llvm.loop !172

._crit_edge.i.i:                                  ; preds = %.critedge.i.i
  %.pre66.i.i = load i8, ptr %i.q, align 8, !tbaa !136, !range !174
  %i.cl = trunc nuw i8 %.pre66.i.i to i1
  br i1 %i.cl, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.cm = load ptr, ptr %5, align 8, !tbaa !132
  call void @free(ptr noundef %i.cm) #12
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i:       ; preds = %bb.j, %._crit_edge.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !175 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !178
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #13
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.k, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !175 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !178
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #13
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i
  %i.db = load i32, ptr %i.l, align 4, !tbaa !159 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZN12_GLOBAL__N_126PreserveLibCallsAndAsmUsed18initializeLibCallsERKN4llvm6ModuleE.exit.i, label %.lr.ph7.preheader.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i:                      ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i
  %i.dd = load ptr, ptr %i.j, align 8, !tbaa !145
  %i.de = load ptr, ptr %i.k, align 8, !tbaa !158
  %i.df = zext i32 %i.db to i64
  %i.dg = add nuw nsw i64 %i.df, 31
  %i.dh = lshr i64 %i.dg, 5
  br label %.lr.ph7.i.i.i.i.i

.lr.ph7.i.i.i.i.i:                                ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i.i.i.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !142 ; 2 uses
  %.not11.i2.i.i.i.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not11.i2.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph7.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i.i to i32
  %i.dk = shl nuw i32 %indvars.iv.tr.i.i.i.i.i, 5
  br label %bb.m

bb.m:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.0.i3.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %i.dw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i ] ; 3 uses
  %i.dl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i, i1 true)
  %i.dm = or disjoint i32 %i.dl, %i.dk
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.dd, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !164 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !141
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #13
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dv = add i32 %.0.i3.i.i.i.i.i, -1
  %i.dw = and i32 %i.dv, %.0.i3.i.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not11.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.m, !llvm.loop !179

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, %.lr.ph7.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.dh
  br i1 %.not.i.i.i3.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i, label %.lr.ph7.i.i.i.i.i, !llvm.loop !180

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %.pr.i.i.i.i = load i32, ptr %i.l, align 4, !tbaa !159 ; 2 uses
  %i.dx = icmp eq i32 %.pr.i.i.i.i, 0
  br i1 %i.dx, label %_ZN12_GLOBAL__N_126PreserveLibCallsAndAsmUsed18initializeLibCallsERKN4llvm6ModuleE.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i
  %i.dy = load ptr, ptr %i.j, align 8, !tbaa !145
  %i.dz = zext i32 %.pr.i.i.i.i to i64            ; 2 uses
  %i.ea = mul nuw nsw i64 %i.dz, 40
  %i.eb = add nuw nsw i64 %i.dz, 31
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = and i64 %i.ec, 1073741820
  %i.ee = add nuw nsw i64 %i.ed, %i.ea
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dy, i64 noundef %i.ee, i64 noundef 8) #12
  br label %_ZN12_GLOBAL__N_126PreserveLibCallsAndAsmUsed18initializeLibCallsERKN4llvm6ModuleE.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.critedge.i.i
  %.sroa.041.059.i.i = phi ptr [ %.sroa.041.0.i.i, %.critedge.i.i ], [ %.sroa.041.057.i.i, %bb.b ] ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.041.059.i.i, i64 -64
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !181, !nonnull !188, !align !189 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !190
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(1728) %i.eg, ptr noundef nonnull align 8 dereferenceable(140) %i.ef) #12, !inline_history !192 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !190
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 144
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = call noundef ptr %i.en(ptr noundef nonnull align 8 dereferenceable(344) %i.ek) #12, !inline_history !192 ; 5 uses
  %.not25.i.i = icmp eq ptr %i.eo, null
  br i1 %.not25.i.i, label %.critedge.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.ep = load i8, ptr %i.q, align 8, !tbaa !136, !range !174, !noalias !193, !noundef !188
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.p, label %_ZN4llvm15SmallPtrSetImplIPKNS_14TargetLoweringEE6insertES3_.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.er = load ptr, ptr %5, align 8, !tbaa !132, !noalias !193 ; 2 uses
  %i.es = load i32, ptr %i.p, align 4, !tbaa !135, !noalias !193 ; 4 uses
  %i.et = zext i32 %i.es to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.et, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.es, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.ew, %.critedge.i.i.i.i ], [ %i.er, %bb.p ] ; 2 uses
  %i.ev = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !196, !noalias !193
  %.not15.i.i.i.i = icmp eq ptr %i.ev, %i.eo
  br i1 %.not15.i.i.i.i, label %.critedge.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i30.i.i = icmp eq ptr %i.ew, %i.eu
  br i1 %.not.i.i30.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.p
  %i.ex = load i32, ptr %i.o, align 8, !tbaa !134, !noalias !193
  %i.ey = icmp ult i32 %i.es, %i.ex
  br i1 %i.ey, label %_ZN4llvm15SmallPtrSetImplIPKNS_14TargetLoweringEE6insertES3_.exit.i.thread.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_14TargetLoweringEE6insertES3_.exit.i.i

_ZN4llvm15SmallPtrSetImplIPKNS_14TargetLoweringEE6insertES3_.exit.i.thread.i: ; preds = %._crit_edge.i.i.i.i
  %i.ez = add nuw i32 %i.es, 1
  store i32 %i.ez, ptr %i.p, align 4, !tbaa !135, !noalias !193
  store ptr %i.eo, ptr %i.eu, align 8, !tbaa !196, !noalias !193
  br label %.preheader.i.i

_ZN4llvm15SmallPtrSetImplIPKNS_14TargetLoweringEE6insertES3_.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.o
  %i.fa = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull %i.eo) #12, !noalias !193
  %i.fb = extractvalue { ptr, i8 } %i.fa, 1
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %.preheader.i.i, label %.critedge.i.i

.preheader.i.i:                                   ; preds = %_ZN4llvm15SmallPtrSetImplIPKNS_14TargetLoweringEE6insertES3_.exit.i.i, %_ZN4llvm15SmallPtrSetImplIPKNS_14TargetLoweringEE6insertES3_.exit.i.thread.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 515064
  br label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.thread.i.i, %.preheader.i.i
  %indvars.iv63.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next64.i.i, %_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.thread.i.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv63.i.i
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !197 ; 2 uses
  %i.fg = icmp eq i16 %i.ff, 0
  br i1 %i.fg, label %_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.thread.i.i, label %_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.i.i

_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.i.i: ; preds = %bb.q
  %i.fh = zext i16 %i.ff to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo29RuntimeLibcallNameOffsetTableE, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !199
  %i.fk = load ptr, ptr @_ZN4llvm5RTLIB19RuntimeLibcallsInfo27RuntimeLibcallImplNameTableE, align 8, !tbaa !143 ; 2 uses
  %i.fl = zext i16 %i.fj to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fl ; 4 uses
  %.not27.i.i = icmp eq ptr %i.fk, null
  br i1 %.not27.i.i, label %_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.thread.i.i, label %_ZN4llvm9StringRefC2EPKc.exit.i.i

_ZN4llvm9StringRefC2EPKc.exit.i.i:                ; preds = %_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.i.i
  %i.fn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fm) #12 ; 7 uses
  %i.fo = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull %i.fm, i64 %i.fn) #12
  %i.fp = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr nonnull %i.fm, i64 %i.fn, i32 noundef %i.fo) #12 ; 2 uses
  %i.fq = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.fr = zext i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fr ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !167
  %.not.i.i.i31.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i31.i.i, label %bb.r, label %_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.thread.i.i

bb.r:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i
  %i.fu = add i64 %i.fn, 9
  %i.fv = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.fu, i64 noundef 8) #12 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %.not.i.i.i.i.i36.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i.i.i.i36.i.i, label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i37.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fw, ptr nonnull align 1 %i.fm, i64 %i.fn, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i37.i.i

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i37.i.i: ; preds = %bb.s, %bb.r
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fn
  store i8 0, ptr %i.fx, align 1, !tbaa !141
  store i64 %i.fn, ptr %i.fv, align 8, !tbaa !169
  store ptr %i.fv, ptr %i.fs, align 8, !tbaa !167
  %i.fy = load i32, ptr %i.m, align 4, !tbaa !171
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.m, align 4, !tbaa !171
  %i.ga = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i32 noundef %i.fp) #12 ; 0 uses
  br label %_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.thread.i.i

_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.thread.i.i: ; preds = %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i37.i.i, %_ZN4llvm9StringRefC2EPKc.exit.i.i, %_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.i.i, %bb.q
  %indvars.iv.next64.i.i = add nuw nsw i64 %indvars.iv63.i.i, 1 ; 2 uses
  %.not26.i.i = icmp eq i64 %indvars.iv.next64.i.i, 1663
  br i1 %.not26.i.i, label %.critedge.i.i, label %bb.q, !llvm.loop !201

.critedge.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %_ZNK4llvm18TargetLoweringBase14getLibcallNameENS_5RTLIB7LibcallE.exit.thread.i.i, %_ZN4llvm15SmallPtrSetImplIPKNS_14TargetLoweringEE6insertES3_.exit.i.i, %.lr.ph.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.041.059.i.i, i64 8
  %.sroa.041.0.i.i = load ptr, ptr %i.gb, align 8, !tbaa !137 ; 2 uses
  %.not49.i.i = icmp eq ptr %.sroa.041.0.i.i, %i.s
  br i1 %.not49.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZN12_GLOBAL__N_126PreserveLibCallsAndAsmUsed18initializeLibCallsERKN4llvm6ModuleE.exit.i: ; preds = %bb.n, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i, %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.sroa.030.040.i = load ptr, ptr %i.r, align 8, !tbaa !137 ; 2 uses
  %.not41.i = icmp eq ptr %.sroa.030.040.i, %i.s
  br i1 %.not41.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN12_GLOBAL__N_126PreserveLibCallsAndAsmUsed18initializeLibCallsERKN4llvm6ModuleE.exit.i
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.024.043.i = load ptr, ptr %i.gc, align 8, !tbaa !137 ; 2 uses
  %.not3644.i = icmp eq ptr %.sroa.024.043.i, %i.gd
  br i1 %.not3644.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_126PreserveLibCallsAndAsmUsed18initializeLibCallsERKN4llvm6ModuleE.exit.i, %.lr.ph.i
  %.sroa.030.042.i = phi ptr [ %.sroa.030.0.i, %.lr.ph.i ], [ %.sroa.030.040.i, %_ZN12_GLOBAL__N_126PreserveLibCallsAndAsmUsed18initializeLibCallsERKN4llvm6ModuleE.exit.i ] ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.030.042.i, i64 -64
  call fastcc void @_ZN12_GLOBAL__N_126PreserveLibCallsAndAsmUsed18findLibCallsAndAsmERN4llvm11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.030.042.i, i64 8
  %.sroa.030.0.i = load ptr, ptr %i.gf, align 8, !tbaa !137 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.030.0.i, %i.s
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge48.i:                                  ; preds = %.lr.ph47.i, %._crit_edge.i
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.019.049.i = load ptr, ptr %i.gg, align 8, !tbaa !137 ; 2 uses
  %.not3750.i = icmp eq ptr %.sroa.019.049.i, %i.gh
  br i1 %.not3750.i, label %_ZN12_GLOBAL__N_126PreserveLibCallsAndAsmUsed12findInModuleERN4llvm6ModuleE.exit, label %.lr.ph53.i

.lr.ph47.i:                                       ; preds = %._crit_edge.i, %.lr.ph47.i
  %.sroa.024.045.i = phi ptr [ %.sroa.024.0.i, %.lr.ph47.i ], [ %.sroa.024.043.i, %._crit_edge.i ] ; 2 uses
end_hunk_0
