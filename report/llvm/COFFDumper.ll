Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFDumper?download=true
inline.NumInlined: 6522
inline.NumDeleted: 2471
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4llvm8codeview29DebugStringTableSubsectionRefD0Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @gmtime(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsItNS_4COFF15CharacteristicsELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEES7_S7_S7_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i16 noundef zeroext %3, ptr %4, i64 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%"class.llvm::ArrayRef.49") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.55", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %.sroa.020.0.copyload = load ptr, ptr %9, align 8, !tbaa !305
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.221.0.copyload = load i64, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !216 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !171
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !244
  %.idx.i = mul nuw nsw i64 %.sroa.221.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.221.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.221.0.copyload, i64 noundef 24) #24
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !172
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !171
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.221.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.020.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !172
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.221.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !172
  %.idx = shl nuw nsw i64 %5, 3
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not193 = icmp eq i64 %5, 0
  br i1 %.not193, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = zext i16 %3 to i32                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre196 = load i32, ptr %i.c, align 8, !tbaa !172
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.o = phi i32 [ %.pre196, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.idx.i39 = mul nuw nsw i64 %i.p, 24
  %i.q = load ptr, ptr %12, align 8, !tbaa !171   ; 19 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i39 ; 3 uses
  %i.s = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.q, ptr noundef nonnull %i.r, i64 noundef %i.u, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = icmp ugt i32 %i.o, 16
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.q, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i134 = load i64, ptr %.sroa.22.0..sroa_idx.i133, align 8, !tbaa !216 ; 7 uses
  %.sroa.2.0.copyload.i136 = load i64, ptr %.sroa.2.0..sroa_idx.i135, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i137 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i136, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.x = icmp eq i64 %.sroa.speculated.i.i.i137, 0
  br i1 %i.x, label %.thread.i.i.i146, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138: ; preds = %bb.e
  %.sroa.0.0.copyload.i139 = load ptr, ptr %i.q, align 8, !tbaa !228
  %.sroa.01.0.copyload.i140 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !228 ; 2 uses
  %i.y = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i140, ptr noundef %.sroa.0.0.copyload.i139, i64 noundef %.sroa.speculated.i.i.i137) #27
  %.fr.i.i.i141 = freeze i32 %i.y                 ; 2 uses
  %.not.not.i.i.i142 = icmp eq i32 %.fr.i.i.i141, 0
  br i1 %.not.not.i.i.i142, label %.thread.i.i.i146, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147

.thread.i.i.i146:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138, %bb.e
  %i.z = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i136
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167, label %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge

.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge: ; preds = %.thread.i.i.i146
  %.sroa.0150.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !228
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138
  %i.aa = icmp slt i32 %.fr.i.i.i141, 0
  br i1 %i.aa, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167: ; preds = %.thread.i.i.i146, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !306
  %i.ab = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.ab, label %bb.f, label %bb.g, !prof !259

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !306
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !306
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread: ; preds = %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147
  %.sroa.0150.0.copyload = phi ptr [ %.sroa.0150.0.copyload.pre, %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge ], [ %.sroa.01.0.copyload.i140, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !216
  %.sroa.2.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i121 = load i64, ptr %.sroa.2.0..sroa_idx.i120, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i122 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i121, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i122, 0
  br i1 %i.ad, label %.thread.i.i.i131, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread
  %.sroa.0.0.copyload.i124 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !228
  %i.ae = call i32 @memcmp(ptr noundef %.sroa.0150.0.copyload, ptr noundef %.sroa.0.0.copyload.i124, i64 noundef %.sroa.speculated.i.i.i122) #27
  %.fr.i.i.i126 = freeze i32 %i.ae                ; 2 uses
  %.not.not.i.i.i127 = icmp eq i32 %.fr.i.i.i126, 0
  br i1 %.not.not.i.i.i127, label %.thread.i.i.i131, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132

.thread.i.i.i131:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread
  %i.af = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i121
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123
  %i.ag = icmp slt i32 %.fr.i.i.i126, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i131, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i105 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i106 = load i64, ptr %.sroa.2.0..sroa_idx.i105, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i107 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i106, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i107, 0
  br i1 %i.ah, label %.thread.i.i.i116, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i109 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !228
  %i.ai = call i32 @memcmp(ptr noundef %.sroa.0150.0.copyload, ptr noundef %.sroa.0.0.copyload.i109, i64 noundef %.sroa.speculated.i.i.i107) #27
  %.fr.i.i.i111 = freeze i32 %i.ai                ; 2 uses
  %.not.not.i.i.i112 = icmp eq i32 %.fr.i.i.i111, 0
  %.inv.i.i.i113 = icmp sgt i32 %.fr.i.i.i111, -1
  %spec.select.i.i.i114 = select i1 %.inv.i.i.i113, i32 1, i32 -1
  br i1 %.not.not.i.i.i112, label %.thread.i.i.i116, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117

.thread.i.i.i116:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108, %.lr.ph.i.i.i
  %i.aj = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i106
  br i1 %i.aj, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117: ; preds = %.thread.i.i.i116, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108
  %.1.i.i.i115 = phi i32 [ %spec.select.i.i.i114, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108 ], [ -1, %.thread.i.i.i116 ]
  %i.ak = icmp slt i32 %.1.i.i.i115, 0
  br i1 %i.ak, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i116, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117, %.thread.i.i.i131, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132 ], [ %.020.i.ptr.i, %.thread.i.i.i131 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.012.i.i.i, %.thread.i.i.i116 ] ; 3 uses
  store ptr %.sroa.0150.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !228
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i134, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !216
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !216
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !35

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.av, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.al, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0154.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !228 ; 3 uses
  %.sroa.6156.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.am = load <2 x i64>, ptr %.sroa.6156.0..08.i.i.sroa_idx, align 8, !tbaa !216
  %.sroa.6156.0.copyload = load i64, ptr %.sroa.6156.0..08.i.i.sroa_idx, align 8, !tbaa !216 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i90 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i91 = load i64, ptr %.sroa.2.0..sroa_idx.i90, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i92 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i91, i64 %.sroa.6156.0.copyload) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i92, 0
  br i1 %i.an, label %.thread.i.i.i101, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i94 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !228
  %i.ao = call i32 @memcmp(ptr noundef %.sroa.0154.0.copyload, ptr noundef %.sroa.0.0.copyload.i94, i64 noundef %.sroa.speculated.i.i.i92) #27
  %.fr.i.i.i96 = freeze i32 %i.ao                 ; 2 uses
  %.not.not.i.i.i97 = icmp eq i32 %.fr.i.i.i96, 0
  br i1 %.not.not.i.i.i97, label %.thread.i.i.i101, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102

.thread.i.i.i101:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93, %.lr.ph.i.i
  %i.ap = icmp ult i64 %.sroa.6156.0.copyload, %.sroa.2.0.copyload.i91
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93
  %i.aq = icmp slt i32 %.fr.i.i.i96, 0
  br i1 %i.aq, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i101, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i75 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i76 = load i64, ptr %.sroa.2.0..sroa_idx.i75, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i77 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i76, i64 %.sroa.6156.0.copyload) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.speculated.i.i.i77, 0
  br i1 %i.ar, label %.thread.i.i.i86, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i79 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !228
  %i.as = call i32 @memcmp(ptr noundef %.sroa.0154.0.copyload, ptr noundef %.sroa.0.0.copyload.i79, i64 noundef %.sroa.speculated.i.i.i77) #27
  %.fr.i.i.i81 = freeze i32 %i.as                 ; 2 uses
  %.not.not.i.i.i82 = icmp eq i32 %.fr.i.i.i81, 0
  %.inv.i.i.i83 = icmp sgt i32 %.fr.i.i.i81, -1
  %spec.select.i.i.i84 = select i1 %.inv.i.i.i83, i32 1, i32 -1
  br i1 %.not.not.i.i.i82, label %.thread.i.i.i86, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87

.thread.i.i.i86:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78, %.lr.ph.i.i14.i
  %i.at = icmp ult i64 %.sroa.6156.0.copyload, %.sroa.2.0.copyload.i76
  br i1 %i.at, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87: ; preds = %.thread.i.i.i86, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78
  %.1.i.i.i85 = phi i32 [ %spec.select.i.i.i84, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78 ], [ -1, %.thread.i.i.i86 ]
  %i.au = icmp slt i32 %.1.i.i.i85, 0
  br i1 %i.au, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i86, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87, %.thread.i.i.i101, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102 ], [ %.08.i.i, %.thread.i.i.i101 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.012.i.i15.i, %.thread.i.i.i86 ] ; 2 uses
  store ptr %.sroa.0154.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !228
  %.sroa.6156.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.am, ptr %.sroa.6156.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !216
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.av, %i.r
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !36

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.o, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.q, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i59 = load i64, ptr %.sroa.22.0..sroa_idx.i58, align 8, !tbaa !216 ; 7 uses
  %.sroa.2.0.copyload.i61 = load i64, ptr %.sroa.2.0..sroa_idx.i60, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i62 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i61, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.aw = icmp eq i64 %.sroa.speculated.i.i.i62, 0
  br i1 %i.aw, label %.thread.i.i.i71, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i64 = load ptr, ptr %i.q, align 8, !tbaa !228
  %.sroa.01.0.copyload.i65 = load ptr, ptr %.020.i20.i, align 8, !tbaa !228 ; 2 uses
  %i.ax = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i65, ptr noundef %.sroa.0.0.copyload.i64, i64 noundef %.sroa.speculated.i.i.i62) #27
  %.fr.i.i.i66 = freeze i32 %i.ax                 ; 2 uses
  %.not.not.i.i.i67 = icmp eq i32 %.fr.i.i.i66, 0
  br i1 %.not.not.i.i.i67, label %.thread.i.i.i71, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72

.thread.i.i.i71:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63, %.lr.ph.i19.i
  %i.ay = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i61
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179, label %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge

.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge: ; preds = %.thread.i.i.i71
  %.sroa.0160.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !228
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63
  %i.az = icmp slt i32 %.fr.i.i.i66, 0
  br i1 %i.az, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179: ; preds = %.thread.i.i.i71, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !306
  %i.ba = ptrtoint ptr %.020.i20.i to i64
  %i.bb = sub i64 %i.ba, %i.v                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 24
  br i1 %i.bc, label %bb.j, label %bb.k, !prof !259

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.bb, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.be = getelementptr inbounds [24 x i8], ptr %i.bd, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.bb, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179
  %i.bf = icmp eq i64 %i.bb, 24
  br i1 %i.bf, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !306
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !306
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread: ; preds = %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72
  %.sroa.0160.0.copyload = phi ptr [ %.sroa.0160.0.copyload.pre, %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge ], [ %.sroa.01.0.copyload.i65, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72 ] ; 3 uses
  %.sroa.8164.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8164.0.copyload = load i64, ptr %.sroa.8164.0..020.i20.i.sroa_idx, align 8, !tbaa !216
  %.sroa.2.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i46 = load i64, ptr %.sroa.2.0..sroa_idx.i45, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i47 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i46, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.bh = icmp eq i64 %.sroa.speculated.i.i.i47, 0
  br i1 %i.bh, label %.thread.i.i.i56, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread
  %.sroa.0.0.copyload.i49 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !228
  %i.bi = call i32 @memcmp(ptr noundef %.sroa.0160.0.copyload, ptr noundef %.sroa.0.0.copyload.i49, i64 noundef %.sroa.speculated.i.i.i47) #27
  %.fr.i.i.i51 = freeze i32 %i.bi                 ; 2 uses
  %.not.not.i.i.i52 = icmp eq i32 %.fr.i.i.i51, 0
  br i1 %.not.not.i.i.i52, label %.thread.i.i.i56, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57

.thread.i.i.i56:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread
  %i.bj = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i46
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48
  %i.bk = icmp slt i32 %.fr.i.i.i51, 0
  br i1 %i.bk, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i56, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i41 = load i64, ptr %.sroa.2.0..sroa_idx.i40, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i41, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.bl = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bl, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i42 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !228
  %i.bm = call i32 @memcmp(ptr noundef %.sroa.0160.0.copyload, ptr noundef %.sroa.0.0.copyload.i42, i64 noundef %.sroa.speculated.i.i.i) #27
  %.fr.i.i.i = freeze i32 %i.bm                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bn = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i41
  br i1 %i.bn, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bo = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bo, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i56, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57 ], [ %.020.i20.i, %.thread.i.i.i56 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0160.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !228
  %.sroa.6162.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i59, ptr %.sroa.6162.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !216
  %.sroa.8164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8164.0.copyload, ptr %.sroa.8164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !216
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.r
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !35

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bp = zext i16 %3 to i64
  %i.bq = load ptr, ptr %12, align 8, !tbaa !171
  %i.br = load i32, ptr %i.c, align 8, !tbaa !172
  %i.bs = zext i32 %i.br to i64
  %i.bt = load ptr, ptr %0, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 312
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bp, ptr %i.bq, i64 %i.bs) #24
  %i.bw = load ptr, ptr %12, align 8, !tbaa !171  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.b
  br i1 %i.bx, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bw) #24
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0194 = phi ptr [ %4, %.lr.ph ], [ %i.cy, %bb.x ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0194, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !828 ; 10 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = and i32 %i.bz, %6
  %.not35 = icmp eq i32 %i.cb, 0
  br i1 %.not35, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cc = and i32 %i.bz, %7
  %.not36 = icmp eq i32 %i.cc, 0
  br i1 %.not36, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cd = and i32 %i.bz, %8
  %.not37 = icmp eq i32 %i.cd, 0
  %spec.select = select i1 %.not37, i32 0, i32 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.034 = phi i32 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.ce = and i32 %.034, %i.bz
  %.not38 = icmp eq i32 %i.ce, 0
  br i1 %.not38, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cf = and i32 %i.bz, %i.m
  %i.cg = icmp eq i32 %i.cf, %i.bz
  br i1 %i.cg, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.ch = and i32 %.034, %i.m
  %i.ci = icmp eq i32 %i.ch, %i.bz
  br i1 %i.ci, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.cj = load i16, ptr %.0194, align 4, !tbaa !221
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.0194, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0194, i64 2
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !182
  %i.co = zext i8 %i.cn to i64                    ; 2 uses
  store ptr %i.cl, ptr %13, align 8
  store i64 %i.co, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !308
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !172 ; 3 uses
  %i.cq = load i32, ptr %i.d, align 4, !tbaa !244
  %.not.i = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !259

bb.v:                                             ; preds = %bb.u
  %i.cr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefENS_4COFF15CharacteristicsEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF15CharacteristicsEEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.cs = zext i32 %i.cp to i64
  %i.ct = load ptr, ptr %12, align 8, !tbaa !171
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cs ; 3 uses
  store ptr %i.cl, ptr %i.cu, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.co, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !216
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = zext nneg i32 %i.bz to i64
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !310
  %i.cx = add nuw i32 %i.cp, 1
  store i32 %i.cx, ptr %i.c, align 8, !tbaa !172
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF15CharacteristicsEEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF15CharacteristicsEEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF15CharacteristicsEEEERS1_DpOT_.exit, %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %.0194, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cy, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 {
bb.a:
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !216 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !216 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload, i64 %.sroa.22.0.copyload) ; 2 uses
  %i.a = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.a, label %.thread.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i: ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !228
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !228
  %i.b = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.speculated.i.i) #27
  %.fr.i.i = freeze i32 %i.b                      ; 2 uses
  %.not.not.i.i = icmp eq i32 %.fr.i.i, 0
  %.inv.i.i = icmp sgt i32 %.fr.i.i, -1
  %spec.select.i.i = select i1 %.inv.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i, label %.thread.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit

.thread.i.i:                                      ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i, %bb.a
  %i.c = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  br i1 %i.c, label %_ZN4llvmltENS_9StringRefES0_.exit, label %bb.b

bb.b:                                             ; preds = %.thread.i.i
  %i.d = icmp ult i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  %i.e = select i1 %i.d, i32 -1, i32 1
  br label %_ZN4llvmltENS_9StringRefES0_.exit

_ZN4llvmltENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i, %.thread.i.i, %bb.b
  %.1.i.i = phi i32 [ %spec.select.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i ], [ %i.e, %bb.b ], [ 0, %.thread.i.i ]
  %i.f = icmp slt i32 %.1.i.i, 0
  ret i1 %i.f
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefENS_4COFF15CharacteristicsEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvm::FlagEntry", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !216
  %i.a = load i32, ptr %2, align 4, !tbaa !308
  store ptr %.sroa.0.0.copyload, ptr %3, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !216
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = zext i32 %i.a to i64
  store i64 %i.c, ptr %i.b, align 8, !tbaa !310
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !172  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !244
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !259

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !172
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !171
end_hunk_0
begin_hunk_1_@_ZN4llvm13ScopedPrinter9printEnumINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEENS_4COFF16WindowsSubsystemELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE:bb.a
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !165
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %i.au, align 8, !tbaa !165
  br label %_ZN4llvm13ScopedPrinter8printHexINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEvNS_9StringRefET_.exit

_ZN4llvm13ScopedPrinter8printHexINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEvNS_9StringRefET_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8printHexINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEEvNS_9StringRefET_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEENS_4COFF18DLLCharacteristicsELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEESC_SC_SC_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i16 %3, ptr %4, i64 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%"class.llvm::ArrayRef.49") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.55", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %.sroa.021.0.copyload = load ptr, ptr %9, align 8, !tbaa !305
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !216 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !171
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !244
  %.idx.i = mul nuw nsw i64 %.sroa.222.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.222.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.222.0.copyload, i64 noundef 24) #24
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !172
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !171
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.222.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.021.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !172
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.222.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !172
  %.idx = shl nuw nsw i64 %5, 3
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not195 = icmp eq i64 %5, 0
  br i1 %.not195, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = zext i16 %3 to i32                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre198 = load i32, ptr %i.c, align 8, !tbaa !172
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.o = phi i32 [ %.pre198, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.idx.i37 = mul nuw nsw i64 %i.p, 24
  %i.q = load ptr, ptr %12, align 8, !tbaa !171   ; 19 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i37 ; 3 uses
  %i.s = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.q, ptr noundef nonnull %i.r, i64 noundef %i.u, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = icmp ugt i32 %i.o, 16
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.q, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i133 = load i64, ptr %.sroa.22.0..sroa_idx.i132, align 8, !tbaa !216 ; 7 uses
  %.sroa.2.0.copyload.i135 = load i64, ptr %.sroa.2.0..sroa_idx.i134, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i136 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i135, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.x = icmp eq i64 %.sroa.speculated.i.i.i136, 0
  br i1 %i.x, label %.thread.i.i.i145, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137: ; preds = %bb.e
  %.sroa.0.0.copyload.i138 = load ptr, ptr %i.q, align 8, !tbaa !228
  %.sroa.01.0.copyload.i139 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !228 ; 2 uses
  %i.y = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i139, ptr noundef %.sroa.0.0.copyload.i138, i64 noundef %.sroa.speculated.i.i.i136) #27
  %.fr.i.i.i140 = freeze i32 %i.y                 ; 2 uses
  %.not.not.i.i.i141 = icmp eq i32 %.fr.i.i.i140, 0
  br i1 %.not.not.i.i.i141, label %.thread.i.i.i145, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146

.thread.i.i.i145:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137, %bb.e
  %i.z = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i135
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge

.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge: ; preds = %.thread.i.i.i145
  %.sroa.0152.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !228
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137
  %i.aa = icmp slt i32 %.fr.i.i.i140, 0
  br i1 %i.aa, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169: ; preds = %.thread.i.i.i145, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !306
  %i.ab = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.ab, label %bb.f, label %bb.g, !prof !259

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !306
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !306
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread: ; preds = %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  %.sroa.0152.0.copyload = phi ptr [ %.sroa.0152.0.copyload.pre, %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge ], [ %.sroa.01.0.copyload.i139, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !216
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i120 = load i64, ptr %.sroa.2.0..sroa_idx.i119, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i121 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i120, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i121, 0
  br i1 %i.ad, label %.thread.i.i.i130, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %.sroa.0.0.copyload.i123 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !228
  %i.ae = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i123, i64 noundef %.sroa.speculated.i.i.i121) #27
  %.fr.i.i.i125 = freeze i32 %i.ae                ; 2 uses
  %.not.not.i.i.i126 = icmp eq i32 %.fr.i.i.i125, 0
  br i1 %.not.not.i.i.i126, label %.thread.i.i.i130, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131

.thread.i.i.i130:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %i.af = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i120
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122
  %i.ag = icmp slt i32 %.fr.i.i.i125, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i104 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i105 = load i64, ptr %.sroa.2.0..sroa_idx.i104, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i105, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i106, 0
  br i1 %i.ah, label %.thread.i.i.i115, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i108 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !228
  %i.ai = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i108, i64 noundef %.sroa.speculated.i.i.i106) #27
  %.fr.i.i.i110 = freeze i32 %i.ai                ; 2 uses
  %.not.not.i.i.i111 = icmp eq i32 %.fr.i.i.i110, 0
  %.inv.i.i.i112 = icmp sgt i32 %.fr.i.i.i110, -1
  %spec.select.i.i.i113 = select i1 %.inv.i.i.i112, i32 1, i32 -1
  br i1 %.not.not.i.i.i111, label %.thread.i.i.i115, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116

.thread.i.i.i115:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107, %.lr.ph.i.i.i
  %i.aj = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i105
  br i1 %i.aj, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116: ; preds = %.thread.i.i.i115, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107
  %.1.i.i.i114 = phi i32 [ %spec.select.i.i.i113, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107 ], [ -1, %.thread.i.i.i115 ]
  %i.ak = icmp slt i32 %.1.i.i.i114, 0
  br i1 %i.ak, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i115, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131 ], [ %.020.i.ptr.i, %.thread.i.i.i130 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.012.i.i.i, %.thread.i.i.i115 ] ; 3 uses
  store ptr %.sroa.0152.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !228
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i133, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !216
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !216
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !35

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.av, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.al, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0156.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !228 ; 3 uses
  %.sroa.6158.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.am = load <2 x i64>, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !216
  %.sroa.6158.0.copyload = load i64, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !216 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i89 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i90 = load i64, ptr %.sroa.2.0..sroa_idx.i89, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i91 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i90, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i91, 0
  br i1 %i.an, label %.thread.i.i.i100, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i93 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !228
  %i.ao = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i93, i64 noundef %.sroa.speculated.i.i.i91) #27
  %.fr.i.i.i95 = freeze i32 %i.ao                 ; 2 uses
  %.not.not.i.i.i96 = icmp eq i32 %.fr.i.i.i95, 0
  br i1 %.not.not.i.i.i96, label %.thread.i.i.i100, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101

.thread.i.i.i100:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92, %.lr.ph.i.i
  %i.ap = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i90
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92
  %i.aq = icmp slt i32 %.fr.i.i.i95, 0
  br i1 %i.aq, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i74 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i75 = load i64, ptr %.sroa.2.0..sroa_idx.i74, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i76 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i75, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.speculated.i.i.i76, 0
  br i1 %i.ar, label %.thread.i.i.i85, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i78 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !228
  %i.as = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i78, i64 noundef %.sroa.speculated.i.i.i76) #27
  %.fr.i.i.i80 = freeze i32 %i.as                 ; 2 uses
  %.not.not.i.i.i81 = icmp eq i32 %.fr.i.i.i80, 0
  %.inv.i.i.i82 = icmp sgt i32 %.fr.i.i.i80, -1
  %spec.select.i.i.i83 = select i1 %.inv.i.i.i82, i32 1, i32 -1
  br i1 %.not.not.i.i.i81, label %.thread.i.i.i85, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86

.thread.i.i.i85:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77, %.lr.ph.i.i14.i
  %i.at = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i75
  br i1 %i.at, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86: ; preds = %.thread.i.i.i85, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77
  %.1.i.i.i84 = phi i32 [ %spec.select.i.i.i83, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77 ], [ -1, %.thread.i.i.i85 ]
  %i.au = icmp slt i32 %.1.i.i.i84, 0
  br i1 %i.au, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i85, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101 ], [ %.08.i.i, %.thread.i.i.i100 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.012.i.i15.i, %.thread.i.i.i85 ] ; 2 uses
  store ptr %.sroa.0156.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !228
  %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.am, ptr %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !216
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.av, %i.r
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !36

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.o, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.q, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i58 = load i64, ptr %.sroa.22.0..sroa_idx.i57, align 8, !tbaa !216 ; 7 uses
  %.sroa.2.0.copyload.i60 = load i64, ptr %.sroa.2.0..sroa_idx.i59, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i61 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i60, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.aw = icmp eq i64 %.sroa.speculated.i.i.i61, 0
  br i1 %i.aw, label %.thread.i.i.i70, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i63 = load ptr, ptr %i.q, align 8, !tbaa !228
  %.sroa.01.0.copyload.i64 = load ptr, ptr %.020.i20.i, align 8, !tbaa !228 ; 2 uses
  %i.ax = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i64, ptr noundef %.sroa.0.0.copyload.i63, i64 noundef %.sroa.speculated.i.i.i61) #27
  %.fr.i.i.i65 = freeze i32 %i.ax                 ; 2 uses
  %.not.not.i.i.i66 = icmp eq i32 %.fr.i.i.i65, 0
  br i1 %.not.not.i.i.i66, label %.thread.i.i.i70, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71

.thread.i.i.i70:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62, %.lr.ph.i19.i
  %i.ay = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i60
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge

.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge: ; preds = %.thread.i.i.i70
  %.sroa.0162.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !228
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62
  %i.az = icmp slt i32 %.fr.i.i.i65, 0
  br i1 %i.az, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181: ; preds = %.thread.i.i.i70, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !306
  %i.ba = ptrtoint ptr %.020.i20.i to i64
  %i.bb = sub i64 %i.ba, %i.v                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 24
  br i1 %i.bc, label %bb.j, label %bb.k, !prof !259

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.bb, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.be = getelementptr inbounds [24 x i8], ptr %i.bd, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.bb, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.bf = icmp eq i64 %i.bb, 24
  br i1 %i.bf, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !306
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !306
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread: ; preds = %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  %.sroa.0162.0.copyload = phi ptr [ %.sroa.0162.0.copyload.pre, %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge ], [ %.sroa.01.0.copyload.i64, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71 ] ; 3 uses
  %.sroa.8166.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8166.0.copyload = load i64, ptr %.sroa.8166.0..020.i20.i.sroa_idx, align 8, !tbaa !216
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i45 = load i64, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i46 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i45, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bh = icmp eq i64 %.sroa.speculated.i.i.i46, 0
  br i1 %i.bh, label %.thread.i.i.i55, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %.sroa.0.0.copyload.i48 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !228
  %i.bi = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i48, i64 noundef %.sroa.speculated.i.i.i46) #27
  %.fr.i.i.i50 = freeze i32 %i.bi                 ; 2 uses
  %.not.not.i.i.i51 = icmp eq i32 %.fr.i.i.i50, 0
  br i1 %.not.not.i.i.i51, label %.thread.i.i.i55, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56

.thread.i.i.i55:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %i.bj = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i45
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47
  %i.bk = icmp slt i32 %.fr.i.i.i50, 0
  br i1 %i.bk, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i40 = load i64, ptr %.sroa.2.0..sroa_idx.i39, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i40, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bl = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bl, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i41 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !228
  %i.bm = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i41, i64 noundef %.sroa.speculated.i.i.i) #27
  %.fr.i.i.i = freeze i32 %i.bm                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bn = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i40
  br i1 %i.bn, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bo = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bo, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56 ], [ %.020.i20.i, %.thread.i.i.i55 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0162.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !228
  %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i58, ptr %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !216
  %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8166.0.copyload, ptr %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !216
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.r
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !35

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bp = zext i16 %3 to i64
  %i.bq = load ptr, ptr %12, align 8, !tbaa !171
  %i.br = load i32, ptr %i.c, align 8, !tbaa !172
  %i.bs = zext i32 %i.br to i64
  %i.bt = load ptr, ptr %0, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 312
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bp, ptr %i.bq, i64 %i.bs) #24
  %i.bw = load ptr, ptr %12, align 8, !tbaa !171  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.b
  br i1 %i.bx, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bw) #24
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0196 = phi ptr [ %4, %.lr.ph ], [ %i.cy, %bb.x ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0196, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !848 ; 10 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = and i32 %i.bz, %6
  %.not33 = icmp eq i32 %i.cb, 0
  br i1 %.not33, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cc = and i32 %i.bz, %7
  %.not34 = icmp eq i32 %i.cc, 0
  br i1 %.not34, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cd = and i32 %i.bz, %8
  %.not35 = icmp eq i32 %i.cd, 0
  %spec.select = select i1 %.not35, i32 0, i32 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.032 = phi i32 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.ce = and i32 %.032, %i.bz
  %.not36 = icmp eq i32 %i.ce, 0
  br i1 %.not36, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cf = and i32 %i.bz, %i.m
  %i.cg = icmp eq i32 %i.cf, %i.bz
  br i1 %i.cg, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.ch = and i32 %.032, %i.m
  %i.ci = icmp eq i32 %i.ch, %i.bz
  br i1 %i.ci, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.cj = load i16, ptr %.0196, align 4, !tbaa !221
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.0196, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0196, i64 2
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !182
  %i.co = zext i8 %i.cn to i64                    ; 2 uses
  store ptr %i.cl, ptr %13, align 8
  store i64 %i.co, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !312
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !172 ; 3 uses
  %i.cq = load i32, ptr %i.d, align 4, !tbaa !244
  %.not.i = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !259

bb.v:                                             ; preds = %bb.u
  %i.cr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefENS_4COFF18DLLCharacteristicsEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF18DLLCharacteristicsEEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.cs = zext i32 %i.cp to i64
  %i.ct = load ptr, ptr %12, align 8, !tbaa !171
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cs ; 3 uses
  store ptr %i.cl, ptr %i.cu, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.co, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !216
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = zext nneg i32 %i.bz to i64
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !310
  %i.cx = add nuw i32 %i.cp, 1
  store i32 %i.cx, ptr %i.c, align 8, !tbaa !172
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF18DLLCharacteristicsEEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF18DLLCharacteristicsEEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF18DLLCharacteristicsEEEERS1_DpOT_.exit, %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %.0196, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cy, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110COFFDumper18printDataDirectoryEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef ptr @_ZNK4llvm6object14COFFObjectFile16getDataDirectoryEj(ptr noundef nonnull align 8 dereferenceable(232) %i.b, i32 noundef %1) #24 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !217, !nonnull !145, !align !161 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.f = load ptr, ptr %2, align 8, !tbaa !232, !noalias !857
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !233, !noalias !857 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !230, !alias.scope !858
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.j, align 8, !tbaa !233, !alias.scope !858
  store i8 0, ptr %i.i, align 8, !tbaa !182, !alias.scope !858
  %i.k = add i64 %i.h, 3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.k) #24
  %i.l = load i64, ptr %i.j, align 8, !tbaa !233, !alias.scope !858
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.h
  br i1 %i.n, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.f, i64 noundef %i.h) #24 ; 0 uses
  %i.p = load i64, ptr %i.j, align 8, !tbaa !233, !alias.scope !858
  %i.q = add i64 %i.p, -4611686018427387901
  %i.r = icmp ult i64 %i.q, 3
  br i1 %i.r, label %bb.d, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #25
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.s = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.66, i64 noundef 3) #24 ; 0 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !232
  %i.u = load i64, ptr %i.j, align 8, !tbaa !233
  %.sroa.01.0.copyload = load i32, ptr %i.c, align 1, !tbaa !182
  %i.v = zext i32 %.sroa.01.0.copyload to i64
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 336
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(44) %i.e, ptr %i.t, i64 %i.u, i64 %i.v) #24, !inline_history !14
  %i.z = load ptr, ptr %3, align 8, !tbaa !232    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.i
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !182
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !217, !nonnull !145, !align !161 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.ae = load ptr, ptr %2, align 8, !tbaa !232, !noalias !859
  %i.af = load i64, ptr %i.g, align 8, !tbaa !233, !noalias !859 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !230, !alias.scope !860
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !233, !alias.scope !860
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #14

declare noundef ptr @_ZNK4llvm6object14COFFObjectFile14getCOFFSectionERKNS0_10SectionRefE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEENS_4COFF22SectionCharacteristicsELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEESC_SC_SC_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i32 %3, ptr %4, i64 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%"class.llvm::ArrayRef.49") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.55", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %.sroa.021.0.copyload = load ptr, ptr %9, align 8, !tbaa !305
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !216 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !171
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !244
  %.idx.i = mul nuw nsw i64 %.sroa.222.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.222.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.222.0.copyload, i64 noundef 24) #24
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !172
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !171
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.222.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.021.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !172
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.222.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !172
  %.idx = shl nuw nsw i64 %5, 3
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not195 = icmp eq i64 %5, 0
  br i1 %.not195, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre198 = load i32, ptr %i.c, align 8, !tbaa !172
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.n = phi i32 [ %.pre198, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.idx.i37 = mul nuw nsw i64 %i.o, 24
  %i.p = load ptr, ptr %12, align 8, !tbaa !171   ; 19 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i37 ; 3 uses
  %i.r = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.p, ptr noundef nonnull %i.q, i64 noundef %i.t, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = icmp ugt i32 %i.n, 16
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.p, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i133 = load i64, ptr %.sroa.22.0..sroa_idx.i132, align 8, !tbaa !216 ; 7 uses
  %.sroa.2.0.copyload.i135 = load i64, ptr %.sroa.2.0..sroa_idx.i134, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i136 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i135, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i.i136, 0
  br i1 %i.w, label %.thread.i.i.i145, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137: ; preds = %bb.e
  %.sroa.0.0.copyload.i138 = load ptr, ptr %i.p, align 8, !tbaa !228
  %.sroa.01.0.copyload.i139 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !228 ; 2 uses
  %i.x = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i139, ptr noundef %.sroa.0.0.copyload.i138, i64 noundef %.sroa.speculated.i.i.i136) #27
  %.fr.i.i.i140 = freeze i32 %i.x                 ; 2 uses
  %.not.not.i.i.i141 = icmp eq i32 %.fr.i.i.i140, 0
  br i1 %.not.not.i.i.i141, label %.thread.i.i.i145, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146

.thread.i.i.i145:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137, %bb.e
  %i.y = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i135
  br i1 %i.y, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge

.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge: ; preds = %.thread.i.i.i145
  %.sroa.0152.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !228
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137
  %i.z = icmp slt i32 %.fr.i.i.i140, 0
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169: ; preds = %.thread.i.i.i145, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !306
  %i.aa = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !259

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !306
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !306
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread: ; preds = %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  %.sroa.0152.0.copyload = phi ptr [ %.sroa.0152.0.copyload.pre, %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge ], [ %.sroa.01.0.copyload.i139, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !216
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i120 = load i64, ptr %.sroa.2.0..sroa_idx.i119, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i121 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i120, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i121, 0
  br i1 %i.ac, label %.thread.i.i.i130, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %.sroa.0.0.copyload.i123 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !228
  %i.ad = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i123, i64 noundef %.sroa.speculated.i.i.i121) #27
  %.fr.i.i.i125 = freeze i32 %i.ad                ; 2 uses
  %.not.not.i.i.i126 = icmp eq i32 %.fr.i.i.i125, 0
  br i1 %.not.not.i.i.i126, label %.thread.i.i.i130, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131

.thread.i.i.i130:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %i.ae = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i120
  br i1 %i.ae, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122
  %i.af = icmp slt i32 %.fr.i.i.i125, 0
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i104 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i105 = load i64, ptr %.sroa.2.0..sroa_idx.i104, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i105, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i106, 0
  br i1 %i.ag, label %.thread.i.i.i115, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i108 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !228
  %i.ah = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i108, i64 noundef %.sroa.speculated.i.i.i106) #27
  %.fr.i.i.i110 = freeze i32 %i.ah                ; 2 uses
  %.not.not.i.i.i111 = icmp eq i32 %.fr.i.i.i110, 0
  %.inv.i.i.i112 = icmp sgt i32 %.fr.i.i.i110, -1
  %spec.select.i.i.i113 = select i1 %.inv.i.i.i112, i32 1, i32 -1
  br i1 %.not.not.i.i.i111, label %.thread.i.i.i115, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116

.thread.i.i.i115:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107, %.lr.ph.i.i.i
  %i.ai = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i105
  br i1 %i.ai, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116: ; preds = %.thread.i.i.i115, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107
  %.1.i.i.i114 = phi i32 [ %spec.select.i.i.i113, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107 ], [ -1, %.thread.i.i.i115 ]
  %i.aj = icmp slt i32 %.1.i.i.i114, 0
  br i1 %i.aj, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i115, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131 ], [ %.020.i.ptr.i, %.thread.i.i.i130 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.012.i.i.i, %.thread.i.i.i115 ] ; 3 uses
  store ptr %.sroa.0152.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !228
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i133, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !216
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !216
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !35

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.au, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.ak, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0156.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !228 ; 3 uses
  %.sroa.6158.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.al = load <2 x i64>, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !216
  %.sroa.6158.0.copyload = load i64, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !216 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i89 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i90 = load i64, ptr %.sroa.2.0..sroa_idx.i89, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i91 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i90, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i.i91, 0
  br i1 %i.am, label %.thread.i.i.i100, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i93 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !228
  %i.an = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i93, i64 noundef %.sroa.speculated.i.i.i91) #27
  %.fr.i.i.i95 = freeze i32 %i.an                 ; 2 uses
  %.not.not.i.i.i96 = icmp eq i32 %.fr.i.i.i95, 0
  br i1 %.not.not.i.i.i96, label %.thread.i.i.i100, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101

.thread.i.i.i100:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92, %.lr.ph.i.i
  %i.ao = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i90
  br i1 %i.ao, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92
  %i.ap = icmp slt i32 %.fr.i.i.i95, 0
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i74 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i75 = load i64, ptr %.sroa.2.0..sroa_idx.i74, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i76 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i75, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i76, 0
  br i1 %i.aq, label %.thread.i.i.i85, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i78 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !228
  %i.ar = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i78, i64 noundef %.sroa.speculated.i.i.i76) #27
  %.fr.i.i.i80 = freeze i32 %i.ar                 ; 2 uses
  %.not.not.i.i.i81 = icmp eq i32 %.fr.i.i.i80, 0
  %.inv.i.i.i82 = icmp sgt i32 %.fr.i.i.i80, -1
  %spec.select.i.i.i83 = select i1 %.inv.i.i.i82, i32 1, i32 -1
  br i1 %.not.not.i.i.i81, label %.thread.i.i.i85, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86

.thread.i.i.i85:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77, %.lr.ph.i.i14.i
  %i.as = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i75
  br i1 %i.as, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86: ; preds = %.thread.i.i.i85, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77
  %.1.i.i.i84 = phi i32 [ %spec.select.i.i.i83, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77 ], [ -1, %.thread.i.i.i85 ]
  %i.at = icmp slt i32 %.1.i.i.i84, 0
  br i1 %i.at, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i85, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101 ], [ %.08.i.i, %.thread.i.i.i100 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.012.i.i15.i, %.thread.i.i.i85 ] ; 2 uses
  store ptr %.sroa.0156.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !228
  %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.al, ptr %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !216
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.au, %i.q
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !36

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.n, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.p, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i58 = load i64, ptr %.sroa.22.0..sroa_idx.i57, align 8, !tbaa !216 ; 7 uses
  %.sroa.2.0.copyload.i60 = load i64, ptr %.sroa.2.0..sroa_idx.i59, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i61 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i60, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.av = icmp eq i64 %.sroa.speculated.i.i.i61, 0
  br i1 %i.av, label %.thread.i.i.i70, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i63 = load ptr, ptr %i.p, align 8, !tbaa !228
  %.sroa.01.0.copyload.i64 = load ptr, ptr %.020.i20.i, align 8, !tbaa !228 ; 2 uses
  %i.aw = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i64, ptr noundef %.sroa.0.0.copyload.i63, i64 noundef %.sroa.speculated.i.i.i61) #27
  %.fr.i.i.i65 = freeze i32 %i.aw                 ; 2 uses
  %.not.not.i.i.i66 = icmp eq i32 %.fr.i.i.i65, 0
  br i1 %.not.not.i.i.i66, label %.thread.i.i.i70, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71

.thread.i.i.i70:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62, %.lr.ph.i19.i
  %i.ax = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i60
  br i1 %i.ax, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge

.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge: ; preds = %.thread.i.i.i70
  %.sroa.0162.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !228
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62
  %i.ay = icmp slt i32 %.fr.i.i.i65, 0
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181: ; preds = %.thread.i.i.i70, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !306
  %i.az = ptrtoint ptr %.020.i20.i to i64
  %i.ba = sub i64 %i.az, %i.u                     ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, 24
  br i1 %i.bb, label %bb.j, label %bb.k, !prof !259

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.ba, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.bd = getelementptr inbounds [24 x i8], ptr %i.bc, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ba, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.be = icmp eq i64 %i.ba, 24
  br i1 %i.be, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !306
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !306
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread: ; preds = %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  %.sroa.0162.0.copyload = phi ptr [ %.sroa.0162.0.copyload.pre, %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge ], [ %.sroa.01.0.copyload.i64, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71 ] ; 3 uses
  %.sroa.8166.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8166.0.copyload = load i64, ptr %.sroa.8166.0..020.i20.i.sroa_idx, align 8, !tbaa !216
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i45 = load i64, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i46 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i45, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i46, 0
  br i1 %i.bg, label %.thread.i.i.i55, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %.sroa.0.0.copyload.i48 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !228
  %i.bh = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i48, i64 noundef %.sroa.speculated.i.i.i46) #27
  %.fr.i.i.i50 = freeze i32 %i.bh                 ; 2 uses
  %.not.not.i.i.i51 = icmp eq i32 %.fr.i.i.i50, 0
  br i1 %.not.not.i.i.i51, label %.thread.i.i.i55, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56

.thread.i.i.i55:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %i.bi = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i45
  br i1 %i.bi, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47
  %i.bj = icmp slt i32 %.fr.i.i.i50, 0
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i40 = load i64, ptr %.sroa.2.0..sroa_idx.i39, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i40, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bk, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i41 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !228
  %i.bl = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i41, i64 noundef %.sroa.speculated.i.i.i) #27
  %.fr.i.i.i = freeze i32 %i.bl                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bm = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i40
  br i1 %i.bm, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bn = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bn, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56 ], [ %.020.i20.i, %.thread.i.i.i55 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0162.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !228
  %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i58, ptr %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !216
  %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8166.0.copyload, ptr %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !216
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.q
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !35

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bo = zext i32 %3 to i64
  %i.bp = load ptr, ptr %12, align 8, !tbaa !171
  %i.bq = load i32, ptr %i.c, align 8, !tbaa !172
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %0, align 8, !tbaa !73
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 312
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bo, ptr %i.bp, i64 %i.br) #24
  %i.bv = load ptr, ptr %12, align 8, !tbaa !171  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.b
  br i1 %i.bw, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bv) #24
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0196 = phi ptr [ %4, %.lr.ph ], [ %i.cx, %bb.x ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0196, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !862 ; 10 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = and i32 %i.by, %6
  %.not33 = icmp eq i32 %i.ca, 0
  br i1 %.not33, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cb = and i32 %i.by, %7
  %.not34 = icmp eq i32 %i.cb, 0
  br i1 %.not34, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = and i32 %i.by, %8
  %.not35 = icmp eq i32 %i.cc, 0
  %spec.select = select i1 %.not35, i32 0, i32 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.032 = phi i32 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.cd = and i32 %.032, %i.by
  %.not36 = icmp eq i32 %i.cd, 0
  br i1 %.not36, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ce = and i32 %i.by, %3
  %i.cf = icmp eq i32 %i.ce, %i.by
  br i1 %i.cf, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.cg = and i32 %.032, %3
  %i.ch = icmp eq i32 %i.cg, %i.by
  br i1 %i.ch, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ci = load i16, ptr %.0196, align 4, !tbaa !221
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0196, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0196, i64 2
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !182
  %i.cn = zext i8 %i.cm to i64                    ; 2 uses
  store ptr %i.ck, ptr %13, align 8
  store i64 %i.cn, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.by, ptr %i.a, align 4, !tbaa !314
  %i.co = load i32, ptr %i.c, align 8, !tbaa !172 ; 3 uses
  %i.cp = load i32, ptr %i.d, align 4, !tbaa !244
  %.not.i = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !259

bb.v:                                             ; preds = %bb.u
  %i.cq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefENS_4COFF22SectionCharacteristicsEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF22SectionCharacteristicsEEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.cr = zext i32 %i.co to i64
  %i.cs = load ptr, ptr %12, align 8, !tbaa !171
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.cr ; 3 uses
  store ptr %i.ck, ptr %i.ct, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.cn, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !216
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = zext i32 %i.by to i64
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !310
  %i.cw = add nuw i32 %i.co, 1
  store i32 %i.cw, ptr %i.c, align 8, !tbaa !172
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF22SectionCharacteristicsEEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF22SectionCharacteristicsEEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF22SectionCharacteristicsEEEERS1_DpOT_.exit, %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %.0196, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110COFFDumper15printRelocationERKN4llvm6object10SectionRefERKNS2_13RelocationRefEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallString", align 8 ; 10 uses
  %4 = alloca %"class.llvm::object::symbol_iterator", align 8 ; 5 uses
  %5 = alloca %"class.llvm::Expected", align 8    ; 9 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %7 = alloca %"struct.llvm::HexNumber", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !182
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 %.sroa.0.0.copyload.i) #24, !inline_history !37
  %i.g = sub i64 %i.f, %2                         ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.sroa.0.0.copyload.i15 = load i64, ptr %1, align 8, !tbaa !182
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 320
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 %.sroa.0.0.copyload.i15) #24, !inline_history !863
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !316
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8, !tbaa !317
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 32, ptr %i.o, align 8, !tbaa !318
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.sroa.0.0.copyload.i16 = load i64, ptr %1, align 8, !tbaa !182
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 328
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 %.sroa.0.0.copyload.i16, ptr noundef nonnull align 8 dereferenceable(24) %3) #24, !inline_history !864
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %.sroa.0.0.copyload.i17 = load i64, ptr %1, align 8, !tbaa !182
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 312
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call { i64, ptr } %i.w(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 %.sroa.0.0.copyload.i17) #24, !inline_history !38 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0        ; 3 uses
  store i64 %i.y, ptr %4, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = extractvalue { i64, ptr } %i.x, 1       ; 3 uses
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !136 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call { i64, ptr } %i.af(ptr noundef nonnull align 8 dereferenceable(232) %i.ac) #24
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %.not.i.i.i.i.not = icmp eq i64 %i.y, %i.ah
  br i1 %.not.i.i.i.i.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !73, !noalias !869
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !869
  call void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 %i.y) #24, !inline_history !39
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8
  %i.an = trunc i8 %i.am to i1
  br i1 %i.an, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.ao = load i64, ptr %5, align 8, !tbaa !238, !noalias !870
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr null, ptr %5, align 8, !tbaa !238, !noalias !870
  store ptr %i.ap, ptr %6, align 8, !tbaa !155, !alias.scope !870
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.ar = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aq) #24 ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E8moveFromERS8_:bb.a
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !356
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare void @_ZNK4llvm6object14COFFObjectFile15getDebugPDBInfoEPKNS0_15debug_directoryERPKNS_8codeview9DebugInfoERNS_9StringRefE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(232), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK4llvm6object14COFFObjectFile20getRvaAndSizeAsBytesEjjRNS_8ArrayRefIhEEPKc(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(232), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsItNS_4COFF26ExtendedDLLCharacteristicsELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEES7_S7_S7_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i16 noundef zeroext %3, ptr %4, i64 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%"class.llvm::ArrayRef.49") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.55", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %.sroa.020.0.copyload = load ptr, ptr %9, align 8, !tbaa !305
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.221.0.copyload = load i64, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !216 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !171
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !244
  %.idx.i = mul nuw nsw i64 %.sroa.221.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.221.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.221.0.copyload, i64 noundef 24) #24
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !172
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !171
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.221.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.020.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !172
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.221.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !172
  %.idx = shl nuw nsw i64 %5, 3
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not193 = icmp eq i64 %5, 0
  br i1 %.not193, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = zext i16 %3 to i32                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre196 = load i32, ptr %i.c, align 8, !tbaa !172
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.o = phi i32 [ %.pre196, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.idx.i39 = mul nuw nsw i64 %i.p, 24
  %i.q = load ptr, ptr %12, align 8, !tbaa !171   ; 19 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i39 ; 3 uses
  %i.s = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.q, ptr noundef nonnull %i.r, i64 noundef %i.u, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = icmp ugt i32 %i.o, 16
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.q, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i134 = load i64, ptr %.sroa.22.0..sroa_idx.i133, align 8, !tbaa !216 ; 7 uses
  %.sroa.2.0.copyload.i136 = load i64, ptr %.sroa.2.0..sroa_idx.i135, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i137 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i136, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.x = icmp eq i64 %.sroa.speculated.i.i.i137, 0
  br i1 %i.x, label %.thread.i.i.i146, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138: ; preds = %bb.e
  %.sroa.0.0.copyload.i139 = load ptr, ptr %i.q, align 8, !tbaa !228
  %.sroa.01.0.copyload.i140 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !228 ; 2 uses
  %i.y = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i140, ptr noundef %.sroa.0.0.copyload.i139, i64 noundef %.sroa.speculated.i.i.i137) #27
  %.fr.i.i.i141 = freeze i32 %i.y                 ; 2 uses
  %.not.not.i.i.i142 = icmp eq i32 %.fr.i.i.i141, 0
  br i1 %.not.not.i.i.i142, label %.thread.i.i.i146, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147

.thread.i.i.i146:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138, %bb.e
  %i.z = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i136
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167, label %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge

.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge: ; preds = %.thread.i.i.i146
  %.sroa.0150.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !228
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i138
  %i.aa = icmp slt i32 %.fr.i.i.i141, 0
  br i1 %i.aa, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167: ; preds = %.thread.i.i.i146, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !306
  %i.ab = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.ab, label %bb.f, label %bb.g, !prof !259

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread167
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !306
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !306
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread: ; preds = %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147
  %.sroa.0150.0.copyload = phi ptr [ %.sroa.0150.0.copyload.pre, %.thread.i.i.i146._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread_crit_edge ], [ %.sroa.01.0.copyload.i140, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !216
  %.sroa.2.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i121 = load i64, ptr %.sroa.2.0..sroa_idx.i120, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i122 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i121, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i122, 0
  br i1 %i.ad, label %.thread.i.i.i131, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread
  %.sroa.0.0.copyload.i124 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !228
  %i.ae = call i32 @memcmp(ptr noundef %.sroa.0150.0.copyload, ptr noundef %.sroa.0.0.copyload.i124, i64 noundef %.sroa.speculated.i.i.i122) #27
  %.fr.i.i.i126 = freeze i32 %i.ae                ; 2 uses
  %.not.not.i.i.i127 = icmp eq i32 %.fr.i.i.i126, 0
  br i1 %.not.not.i.i.i127, label %.thread.i.i.i131, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132

.thread.i.i.i131:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit147.thread
  %i.af = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i121
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i123
  %i.ag = icmp slt i32 %.fr.i.i.i126, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i131, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i105 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i106 = load i64, ptr %.sroa.2.0..sroa_idx.i105, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i107 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i106, i64 %.sroa.22.0.copyload.i134) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i107, 0
  br i1 %i.ah, label %.thread.i.i.i116, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i109 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !228
  %i.ai = call i32 @memcmp(ptr noundef %.sroa.0150.0.copyload, ptr noundef %.sroa.0.0.copyload.i109, i64 noundef %.sroa.speculated.i.i.i107) #27
  %.fr.i.i.i111 = freeze i32 %i.ai                ; 2 uses
  %.not.not.i.i.i112 = icmp eq i32 %.fr.i.i.i111, 0
  %.inv.i.i.i113 = icmp sgt i32 %.fr.i.i.i111, -1
  %spec.select.i.i.i114 = select i1 %.inv.i.i.i113, i32 1, i32 -1
  br i1 %.not.not.i.i.i112, label %.thread.i.i.i116, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117

.thread.i.i.i116:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108, %.lr.ph.i.i.i
  %i.aj = icmp ult i64 %.sroa.22.0.copyload.i134, %.sroa.2.0.copyload.i106
  br i1 %i.aj, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117: ; preds = %.thread.i.i.i116, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108
  %.1.i.i.i115 = phi i32 [ %spec.select.i.i.i114, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i108 ], [ -1, %.thread.i.i.i116 ]
  %i.ak = icmp slt i32 %.1.i.i.i115, 0
  br i1 %i.ak, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i116, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117, %.thread.i.i.i131, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit132 ], [ %.020.i.ptr.i, %.thread.i.i.i131 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit117 ], [ %.012.i.i.i, %.thread.i.i.i116 ] ; 3 uses
  store ptr %.sroa.0150.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !228
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i134, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !216
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !216
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !35

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.av, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.al, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0154.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !228 ; 3 uses
  %.sroa.6156.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.am = load <2 x i64>, ptr %.sroa.6156.0..08.i.i.sroa_idx, align 8, !tbaa !216
  %.sroa.6156.0.copyload = load i64, ptr %.sroa.6156.0..08.i.i.sroa_idx, align 8, !tbaa !216 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i90 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i91 = load i64, ptr %.sroa.2.0..sroa_idx.i90, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i92 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i91, i64 %.sroa.6156.0.copyload) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i92, 0
  br i1 %i.an, label %.thread.i.i.i101, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i94 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !228
  %i.ao = call i32 @memcmp(ptr noundef %.sroa.0154.0.copyload, ptr noundef %.sroa.0.0.copyload.i94, i64 noundef %.sroa.speculated.i.i.i92) #27
  %.fr.i.i.i96 = freeze i32 %i.ao                 ; 2 uses
  %.not.not.i.i.i97 = icmp eq i32 %.fr.i.i.i96, 0
  br i1 %.not.not.i.i.i97, label %.thread.i.i.i101, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102

.thread.i.i.i101:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93, %.lr.ph.i.i
  %i.ap = icmp ult i64 %.sroa.6156.0.copyload, %.sroa.2.0.copyload.i91
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i93
  %i.aq = icmp slt i32 %.fr.i.i.i96, 0
  br i1 %i.aq, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i101, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i75 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i76 = load i64, ptr %.sroa.2.0..sroa_idx.i75, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i77 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i76, i64 %.sroa.6156.0.copyload) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.speculated.i.i.i77, 0
  br i1 %i.ar, label %.thread.i.i.i86, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i79 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !228
  %i.as = call i32 @memcmp(ptr noundef %.sroa.0154.0.copyload, ptr noundef %.sroa.0.0.copyload.i79, i64 noundef %.sroa.speculated.i.i.i77) #27
  %.fr.i.i.i81 = freeze i32 %i.as                 ; 2 uses
  %.not.not.i.i.i82 = icmp eq i32 %.fr.i.i.i81, 0
  %.inv.i.i.i83 = icmp sgt i32 %.fr.i.i.i81, -1
  %spec.select.i.i.i84 = select i1 %.inv.i.i.i83, i32 1, i32 -1
  br i1 %.not.not.i.i.i82, label %.thread.i.i.i86, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87

.thread.i.i.i86:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78, %.lr.ph.i.i14.i
  %i.at = icmp ult i64 %.sroa.6156.0.copyload, %.sroa.2.0.copyload.i76
  br i1 %i.at, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87: ; preds = %.thread.i.i.i86, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78
  %.1.i.i.i85 = phi i32 [ %spec.select.i.i.i84, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i78 ], [ -1, %.thread.i.i.i86 ]
  %i.au = icmp slt i32 %.1.i.i.i85, 0
  br i1 %i.au, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i86, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87, %.thread.i.i.i101, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit102 ], [ %.08.i.i, %.thread.i.i.i101 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit87 ], [ %.012.i.i15.i, %.thread.i.i.i86 ] ; 2 uses
  store ptr %.sroa.0154.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !228
  %.sroa.6156.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.am, ptr %.sroa.6156.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !216
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.av, %i.r
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !36

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.o, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.2.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.q, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i59 = load i64, ptr %.sroa.22.0..sroa_idx.i58, align 8, !tbaa !216 ; 7 uses
  %.sroa.2.0.copyload.i61 = load i64, ptr %.sroa.2.0..sroa_idx.i60, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i62 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i61, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.aw = icmp eq i64 %.sroa.speculated.i.i.i62, 0
  br i1 %i.aw, label %.thread.i.i.i71, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i64 = load ptr, ptr %i.q, align 8, !tbaa !228
  %.sroa.01.0.copyload.i65 = load ptr, ptr %.020.i20.i, align 8, !tbaa !228 ; 2 uses
  %i.ax = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i65, ptr noundef %.sroa.0.0.copyload.i64, i64 noundef %.sroa.speculated.i.i.i62) #27
  %.fr.i.i.i66 = freeze i32 %i.ax                 ; 2 uses
  %.not.not.i.i.i67 = icmp eq i32 %.fr.i.i.i66, 0
  br i1 %.not.not.i.i.i67, label %.thread.i.i.i71, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72

.thread.i.i.i71:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63, %.lr.ph.i19.i
  %i.ay = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i61
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179, label %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge

.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge: ; preds = %.thread.i.i.i71
  %.sroa.0160.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !228
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i63
  %i.az = icmp slt i32 %.fr.i.i.i66, 0
  br i1 %i.az, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179: ; preds = %.thread.i.i.i71, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !306
  %i.ba = ptrtoint ptr %.020.i20.i to i64
  %i.bb = sub i64 %i.ba, %i.v                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 24
  br i1 %i.bc, label %bb.j, label %bb.k, !prof !259

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.bb, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.be = getelementptr inbounds [24 x i8], ptr %i.bd, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.bb, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread179
  %i.bf = icmp eq i64 %i.bb, 24
  br i1 %i.bf, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !306
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !306
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread: ; preds = %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72
  %.sroa.0160.0.copyload = phi ptr [ %.sroa.0160.0.copyload.pre, %.thread.i.i.i71._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread_crit_edge ], [ %.sroa.01.0.copyload.i65, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72 ] ; 3 uses
  %.sroa.8164.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8164.0.copyload = load i64, ptr %.sroa.8164.0..020.i20.i.sroa_idx, align 8, !tbaa !216
  %.sroa.2.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i46 = load i64, ptr %.sroa.2.0..sroa_idx.i45, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i47 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i46, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.bh = icmp eq i64 %.sroa.speculated.i.i.i47, 0
  br i1 %i.bh, label %.thread.i.i.i56, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread
  %.sroa.0.0.copyload.i49 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !228
  %i.bi = call i32 @memcmp(ptr noundef %.sroa.0160.0.copyload, ptr noundef %.sroa.0.0.copyload.i49, i64 noundef %.sroa.speculated.i.i.i47) #27
  %.fr.i.i.i51 = freeze i32 %i.bi                 ; 2 uses
  %.not.not.i.i.i52 = icmp eq i32 %.fr.i.i.i51, 0
  br i1 %.not.not.i.i.i52, label %.thread.i.i.i56, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57

.thread.i.i.i56:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit72.thread
  %i.bj = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i46
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i48
  %i.bk = icmp slt i32 %.fr.i.i.i51, 0
  br i1 %i.bk, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i56, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i41 = load i64, ptr %.sroa.2.0..sroa_idx.i40, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i41, i64 %.sroa.22.0.copyload.i59) ; 2 uses
  %i.bl = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bl, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i42 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !228
  %i.bm = call i32 @memcmp(ptr noundef %.sroa.0160.0.copyload, ptr noundef %.sroa.0.0.copyload.i42, i64 noundef %.sroa.speculated.i.i.i) #27
  %.fr.i.i.i = freeze i32 %i.bm                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bn = icmp ult i64 %.sroa.22.0.copyload.i59, %.sroa.2.0.copyload.i41
  br i1 %i.bn, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bo = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bo, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i56, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit57 ], [ %.020.i20.i, %.thread.i.i.i56 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0160.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !228
  %.sroa.6162.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i59, ptr %.sroa.6162.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !216
  %.sroa.8164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8164.0.copyload, ptr %.sroa.8164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !216
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.r
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !35

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bp = zext i16 %3 to i64
  %i.bq = load ptr, ptr %12, align 8, !tbaa !171
  %i.br = load i32, ptr %i.c, align 8, !tbaa !172
  %i.bs = zext i32 %i.br to i64
  %i.bt = load ptr, ptr %0, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 312
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bp, ptr %i.bq, i64 %i.bs) #24
  %i.bw = load ptr, ptr %12, align 8, !tbaa !171  ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.b
  br i1 %i.bx, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bw) #24
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0194 = phi ptr [ %4, %.lr.ph ], [ %i.cy, %bb.x ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0194, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !1217 ; 10 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = and i32 %i.bz, %6
  %.not35 = icmp eq i32 %i.cb, 0
  br i1 %.not35, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cc = and i32 %i.bz, %7
  %.not36 = icmp eq i32 %i.cc, 0
  br i1 %.not36, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cd = and i32 %i.bz, %8
  %.not37 = icmp eq i32 %i.cd, 0
  %spec.select = select i1 %.not37, i32 0, i32 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.034 = phi i32 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.ce = and i32 %.034, %i.bz
  %.not38 = icmp eq i32 %i.ce, 0
  br i1 %.not38, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cf = and i32 %i.bz, %i.m
  %i.cg = icmp eq i32 %i.cf, %i.bz
  br i1 %i.cg, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.ch = and i32 %.034, %i.m
  %i.ci = icmp eq i32 %i.ch, %i.bz
  br i1 %i.ci, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.cj = load i16, ptr %.0194, align 4, !tbaa !221
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.0194, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0194, i64 2
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !182
  %i.co = zext i8 %i.cn to i64                    ; 2 uses
  store ptr %i.cl, ptr %13, align 8
  store i64 %i.co, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.bz, ptr %i.a, align 4, !tbaa !367
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !172 ; 3 uses
  %i.cq = load i32, ptr %i.d, align 4, !tbaa !244
  %.not.i = icmp ult i32 %i.cp, %i.cq
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !259

bb.v:                                             ; preds = %bb.u
  %i.cr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefENS_4COFF26ExtendedDLLCharacteristicsEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF26ExtendedDLLCharacteristicsEEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.cs = zext i32 %i.cp to i64
  %i.ct = load ptr, ptr %12, align 8, !tbaa !171
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cs ; 3 uses
  store ptr %i.cl, ptr %i.cu, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.co, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !216
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = zext nneg i32 %i.bz to i64
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !310
  %i.cx = add nuw i32 %i.cp, 1
  store i32 %i.cx, ptr %i.c, align 8, !tbaa !172
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF26ExtendedDLLCharacteristicsEEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF26ExtendedDLLCharacteristicsEEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefENS_4COFF26ExtendedDLLCharacteristicsEEEERS1_DpOT_.exit, %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %.0194, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cy, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorINS_8codeview6detail11GuidAdapterEEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  tail call void @_ZN4llvm8codeview6detail11GuidAdapter6formatERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #24
  ret void
}

declare void @_ZN4llvm8codeview6detail11GuidAdapter6formatERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #2

declare void @_ZN4llvm8codeview6detail11GuidAdapterC1ENS_8ArrayRefIhEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefENS_4COFF26ExtendedDLLCharacteristicsEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvm::FlagEntry", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !216
  %i.a = load i32, ptr %2, align 4, !tbaa !367
  store ptr %.sroa.0.0.copyload, ptr %3, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !216
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = zext i32 %i.a to i64
  store i64 %i.c, ptr %i.b, align 8, !tbaa !310
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !172  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !244
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !259

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !172
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !171
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.k = load i32, ptr %i.d, align 8, !tbaa !172
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !172
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.n = load ptr, ptr %0, align 8, !tbaa !171
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -24
  ret ptr %i.q
}

declare void @_ZN4llvm6object18ResourceSectionRef4loadEPKNS0_14COFFObjectFileERKNS0_10SectionRefE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4llvm6object18ResourceSectionRef12getBaseTableEv(ptr dead_on_unwind writable sret(%"class.llvm::Expected.287") align 8, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_110COFFDumper22countTotalTableEntriesEN4llvm6object18ResourceSectionRefERKNS2_23coff_resource_dir_tableENS1_9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(16) %2, ptr nofree readonly captures(none) %3, i64 %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %7 = alloca %"struct.llvm::object::coff_resource_dir_entry", align 8 ; 4 uses
  %8 = alloca %"class.llvm::Expected.303", align 8 ; 5 uses
  %9 = alloca %"class.llvm::Expected.287", align 8 ; 5 uses
  %10 = alloca %"class.llvm::object::ResourceSectionRef", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %.0.copyload.i.i.i39 = load i16, ptr %i.a, align 1
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_110COFFDumper13printRVATableEmmmPFvRN4llvm11raw_ostreamEPKhE:bb.a
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %.lr.ph.split, label %._crit_edge, !llvm.loop !1267
}

declare void @_ZNK4llvm6object14COFFObjectFile14dynamic_relocsEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.342") align 8, ptr noundef nonnull align 8 dereferenceable(232)) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm6object15DynamicRelocRef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK4llvm6object15DynamicRelocRef13arm64x_relocsEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.344") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i8 @_ZNK4llvm6object14Arm64XRelocRef7getSizeEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare noundef i64 @_ZNK4llvm6object14Arm64XRelocRef8getValueEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ScopedPrinter10printFlagsINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEjLj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEESA_SA_SA_NS_8ArrayRefINS_9FlagEntryEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i32 %3, ptr %4, i64 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef byval(%"class.llvm::ArrayRef.49") align 8 %9) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %10 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::FlagEntry", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallVector.55", align 8 ; 13 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %.sroa.021.0.copyload = load ptr, ptr %9, align 8, !tbaa !305
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.222.0.copyload = load i64, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !216 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.b, ptr %12, align 8, !tbaa !171
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.c, align 8, !tbaa !172
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 10, ptr %i.d, align 4, !tbaa !244
  %.idx.i = mul nuw nsw i64 %.sroa.222.0.copyload, 24
  %i.e = icmp ugt i64 %.sroa.222.0.copyload, 10
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i: ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef nonnull %i.b, i64 noundef %.sroa.222.0.copyload, i64 noundef 24) #24
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !172
  %i.f = zext i32 %.pre8.pre.i.i to i64
  %.pre = load ptr, ptr %12, align 8, !tbaa !171
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.222.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i
  %i.g = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ %i.b, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %.pre8.i5.i = phi i64 [ %i.f, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 8 %.sroa.021.0.copyload, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !172
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i, %bb.b
  %i.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.b ]
  %i.j = trunc i64 %.sroa.222.0.copyload to i32
  %i.k = add i32 %i.i, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.c, align 8, !tbaa !172
  %.idx = shl nuw nsw i64 %5, 3
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not195 = icmp eq i64 %5, 0
  br i1 %.not195, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre198 = load i32, ptr %i.c, align 8, !tbaa !172
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit
  %i.n = phi i32 [ %.pre198, %._crit_edge.loopexit ], [ %i.k, %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EEC2IS1_vEENS_8ArrayRefIT_EE.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.idx.i37 = mul nuw nsw i64 %i.o, 24
  %i.p = load ptr, ptr %12, align 8, !tbaa !171   ; 19 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i37 ; 3 uses
  %i.r = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  call void @_ZSt16__introsort_loopIPN4llvm9FlagEntryElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_T1_(ptr noundef %i.p, ptr noundef nonnull %i.q, i64 noundef %i.t, ptr nonnull @_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_)
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = icmp ugt i32 %i.n, 16
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.020.i.idx.i = phi i64 [ 24, %bb.d ], [ %.020.i.add.i, %bb.h ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.p, %bb.d ], [ %.020.i.ptr.i, %bb.h ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.020.i.idx.i ; 9 uses
  %.sroa.22.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 8
  %.sroa.22.0.copyload.i133 = load i64, ptr %.sroa.22.0..sroa_idx.i132, align 8, !tbaa !216 ; 7 uses
  %.sroa.2.0.copyload.i135 = load i64, ptr %.sroa.2.0..sroa_idx.i134, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i136 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i135, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i.i136, 0
  br i1 %i.w, label %.thread.i.i.i145, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137: ; preds = %bb.e
  %.sroa.0.0.copyload.i138 = load ptr, ptr %i.p, align 8, !tbaa !228
  %.sroa.01.0.copyload.i139 = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !228 ; 2 uses
  %i.x = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i139, ptr noundef %.sroa.0.0.copyload.i138, i64 noundef %.sroa.speculated.i.i.i136) #27
  %.fr.i.i.i140 = freeze i32 %i.x                 ; 2 uses
  %.not.not.i.i.i141 = icmp eq i32 %.fr.i.i.i140, 0
  br i1 %.not.not.i.i.i141, label %.thread.i.i.i145, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146

.thread.i.i.i145:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137, %bb.e
  %i.y = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i135
  br i1 %i.y, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge

.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge: ; preds = %.thread.i.i.i145
  %.sroa.0152.0.copyload.pre = load ptr, ptr %.020.i.ptr.i, align 8, !tbaa !228
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i137
  %i.z = icmp slt i32 %.fr.i.i.i140, 0
  br i1 %i.z, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169: ; preds = %.thread.i.i.i145, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %.020.i.ptr.i, i64 24, i1 false), !tbaa.struct !306
  %i.aa = icmp samesign ugt i64 %.020.i.idx.i, 24
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !259

bb.f:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread169
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !306
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !306
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.h

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread: ; preds = %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146
  %.sroa.0152.0.copyload = phi ptr [ %.sroa.0152.0.copyload.pre, %.thread.i.i.i145._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread_crit_edge ], [ %.sroa.01.0.copyload.i139, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146 ] ; 3 uses
  %.sroa.8.0..020.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i.ptr.i, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..020.i.ptr.i.sroa_idx, align 8, !tbaa !216
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %.sroa.2.0.copyload.i120 = load i64, ptr %.sroa.2.0..sroa_idx.i119, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i121 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i120, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i121, 0
  br i1 %i.ac, label %.thread.i.i.i130, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %.sroa.0.0.copyload.i123 = load ptr, ptr %.pn19.i.i, align 8, !tbaa !228
  %i.ad = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i123, i64 noundef %.sroa.speculated.i.i.i121) #27
  %.fr.i.i.i125 = freeze i32 %i.ad                ; 2 uses
  %.not.not.i.i.i126 = icmp eq i32 %.fr.i.i.i125, 0
  br i1 %.not.not.i.i.i126, label %.thread.i.i.i130, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131

.thread.i.i.i130:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit146.thread
  %i.ae = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i120
  br i1 %i.ae, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i122
  %i.af = icmp slt i32 %.fr.i.i.i125, 0
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.020.i.ptr.i, %.lr.ph.i.i.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i104 = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -16
  %.sroa.2.0.copyload.i105 = load i64, ptr %.sroa.2.0..sroa_idx.i104, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i105, i64 %.sroa.22.0.copyload.i133) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i106, 0
  br i1 %i.ag, label %.thread.i.i.i115, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.copyload.i108 = load ptr, ptr %.0.i.i.i, align 8, !tbaa !228
  %i.ah = call i32 @memcmp(ptr noundef %.sroa.0152.0.copyload, ptr noundef %.sroa.0.0.copyload.i108, i64 noundef %.sroa.speculated.i.i.i106) #27
  %.fr.i.i.i110 = freeze i32 %i.ah                ; 2 uses
  %.not.not.i.i.i111 = icmp eq i32 %.fr.i.i.i110, 0
  %.inv.i.i.i112 = icmp sgt i32 %.fr.i.i.i110, -1
  %spec.select.i.i.i113 = select i1 %.inv.i.i.i112, i32 1, i32 -1
  br i1 %.not.not.i.i.i111, label %.thread.i.i.i115, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116

.thread.i.i.i115:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107, %.lr.ph.i.i.i
  %i.ai = icmp ult i64 %.sroa.22.0.copyload.i133, %.sroa.2.0.copyload.i105
  br i1 %i.ai, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116: ; preds = %.thread.i.i.i115, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107
  %.1.i.i.i114 = phi i32 [ %spec.select.i.i.i113, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i107 ], [ -1, %.thread.i.i.i115 ]
  %i.aj = icmp slt i32 %.1.i.i.i114, 0
  br i1 %i.aj, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i: ; preds = %.thread.i.i.i115, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116, %.thread.i.i.i130, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131
  %.09.lcssa.i.i.i = phi ptr [ %.020.i.ptr.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit131 ], [ %.020.i.ptr.i, %.thread.i.i.i130 ], [ %.012.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit116 ], [ %.012.i.i.i, %.thread.i.i.i115 ] ; 3 uses
  store ptr %.sroa.0152.0.copyload, ptr %.09.lcssa.i.i.i, align 8, !tbaa !228
  %.sroa.6.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 8
  store i64 %.sroa.22.0.copyload.i133, ptr %.sroa.6.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !216
  %.sroa.8.0..09.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i, i64 16
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..09.lcssa.i.i.i.sroa_idx, align 8, !tbaa !216
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i.i
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 24 ; 2 uses
  %.not.i.i = icmp eq i64 %.020.i.add.i, 384
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, label %bb.e, !llvm.loop !35

_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i: ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i
  %.08.i.i = phi ptr [ %i.au, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i ], [ %i.ak, %_ZSt16__insertion_sortIPN4llvm9FlagEntryEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S7_EEEEvT_SB_T0_.exit.i ] ; 8 uses
  %.sroa.0156.0.copyload = load ptr, ptr %.08.i.i, align 8, !tbaa !228 ; 3 uses
  %.sroa.6158.0..08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %i.al = load <2 x i64>, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !216
  %.sroa.6158.0.copyload = load i64, ptr %.sroa.6158.0..08.i.i.sroa_idx, align 8, !tbaa !216 ; 4 uses
  %.010.i.i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i89 = getelementptr inbounds i8, ptr %.08.i.i, i64 -16
  %.sroa.2.0.copyload.i90 = load i64, ptr %.sroa.2.0..sroa_idx.i89, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i91 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i90, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i.i91, 0
  br i1 %i.am, label %.thread.i.i.i100, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92: ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload.i93 = load ptr, ptr %.010.i.i.i, align 8, !tbaa !228
  %i.an = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i93, i64 noundef %.sroa.speculated.i.i.i91) #27
  %.fr.i.i.i95 = freeze i32 %i.an                 ; 2 uses
  %.not.not.i.i.i96 = icmp eq i32 %.fr.i.i.i95, 0
  br i1 %.not.not.i.i.i96, label %.thread.i.i.i100, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101

.thread.i.i.i100:                                 ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92, %.lr.ph.i.i
  %i.ao = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i90
  br i1 %i.ao, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i92
  %i.ap = icmp slt i32 %.fr.i.i.i95, 0
  br i1 %i.ap, label %.lr.ph.i.i14.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i.preheader:                         ; preds = %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  br label %.lr.ph.i.i14.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i.i14.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86
  %.012.i.i15.i = phi ptr [ %.0.i.i17.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.010.i.i.i, %.lr.ph.i.i14.i.preheader ] ; 6 uses
  %.0911.i.i16.i = phi ptr [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.08.i.i, %.lr.ph.i.i14.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i16.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i15.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i17.i = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i74 = getelementptr inbounds i8, ptr %.012.i.i15.i, i64 -16
  %.sroa.2.0.copyload.i75 = load i64, ptr %.sroa.2.0..sroa_idx.i74, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i76 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i75, i64 %.sroa.6158.0.copyload) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i76, 0
  br i1 %i.aq, label %.thread.i.i.i85, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77: ; preds = %.lr.ph.i.i14.i
  %.sroa.0.0.copyload.i78 = load ptr, ptr %.0.i.i17.i, align 8, !tbaa !228
  %i.ar = call i32 @memcmp(ptr noundef %.sroa.0156.0.copyload, ptr noundef %.sroa.0.0.copyload.i78, i64 noundef %.sroa.speculated.i.i.i76) #27
  %.fr.i.i.i80 = freeze i32 %i.ar                 ; 2 uses
  %.not.not.i.i.i81 = icmp eq i32 %.fr.i.i.i80, 0
  %.inv.i.i.i82 = icmp sgt i32 %.fr.i.i.i80, -1
  %spec.select.i.i.i83 = select i1 %.inv.i.i.i82, i32 1, i32 -1
  br i1 %.not.not.i.i.i81, label %.thread.i.i.i85, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86

.thread.i.i.i85:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77, %.lr.ph.i.i14.i
  %i.as = icmp ult i64 %.sroa.6158.0.copyload, %.sroa.2.0.copyload.i75
  br i1 %i.as, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86: ; preds = %.thread.i.i.i85, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77
  %.1.i.i.i84 = phi i32 [ %spec.select.i.i.i83, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i77 ], [ -1, %.thread.i.i.i85 ]
  %i.at = icmp slt i32 %.1.i.i.i84, 0
  br i1 %i.at, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i: ; preds = %.thread.i.i.i85, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86, %.thread.i.i.i100, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101
  %.09.lcssa.i.i12.i = phi ptr [ %.08.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit101 ], [ %.08.i.i, %.thread.i.i.i100 ], [ %.012.i.i15.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit86 ], [ %.012.i.i15.i, %.thread.i.i.i85 ] ; 2 uses
  store ptr %.sroa.0156.0.copyload, ptr %.09.lcssa.i.i12.i, align 8, !tbaa !228
  %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i12.i, i64 8
  store <2 x i64> %i.al, ptr %.sroa.6158.0..09.lcssa.i.i12.i.sroa_idx, align 8, !tbaa !216
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.au, %i.q
  br i1 %.not.i13.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !36

bb.i:                                             ; preds = %bb.c
  %.not18.i.i = icmp eq i32 %i.n, 1
  br i1 %.not18.i.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.i
  %.017.i18.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.2.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.m
  %.020.i20.i = phi ptr [ %.0.i24.i, %bb.m ], [ %.017.i18.i, %.lr.ph.i19.i.preheader ] ; 11 uses
  %.pn19.i21.i = phi ptr [ %.020.i20.i, %bb.m ], [ %i.p, %.lr.ph.i19.i.preheader ] ; 5 uses
  %.sroa.22.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 8
  %.sroa.22.0.copyload.i58 = load i64, ptr %.sroa.22.0..sroa_idx.i57, align 8, !tbaa !216 ; 7 uses
  %.sroa.2.0.copyload.i60 = load i64, ptr %.sroa.2.0..sroa_idx.i59, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i61 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i60, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.av = icmp eq i64 %.sroa.speculated.i.i.i61, 0
  br i1 %i.av, label %.thread.i.i.i70, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62: ; preds = %.lr.ph.i19.i
  %.sroa.0.0.copyload.i63 = load ptr, ptr %i.p, align 8, !tbaa !228
  %.sroa.01.0.copyload.i64 = load ptr, ptr %.020.i20.i, align 8, !tbaa !228 ; 2 uses
  %i.aw = call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i64, ptr noundef %.sroa.0.0.copyload.i63, i64 noundef %.sroa.speculated.i.i.i61) #27
  %.fr.i.i.i65 = freeze i32 %i.aw                 ; 2 uses
  %.not.not.i.i.i66 = icmp eq i32 %.fr.i.i.i65, 0
  br i1 %.not.not.i.i.i66, label %.thread.i.i.i70, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71

.thread.i.i.i70:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62, %.lr.ph.i19.i
  %i.ax = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i60
  br i1 %i.ax, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge

.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge: ; preds = %.thread.i.i.i70
  %.sroa.0162.0.copyload.pre = load ptr, ptr %.020.i20.i, align 8, !tbaa !228
  br label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i62
  %i.ay = icmp slt i32 %.fr.i.i.i65, 0
  br i1 %i.ay, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181: ; preds = %.thread.i.i.i70, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.020.i20.i, i64 24, i1 false), !tbaa.struct !306
  %i.az = ptrtoint ptr %.020.i20.i to i64
  %i.ba = sub i64 %i.az, %i.u                     ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, 24
  br i1 %i.bb, label %bb.j, label %bb.k, !prof !259

bb.j:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 48
  %.neg25.i31.i = udiv exact i64 %i.ba, 24
  %.neg25.neg.i32.i = sub nsw i64 0, %.neg25.i31.i
  %i.bd = getelementptr inbounds [24 x i8], ptr %i.bc, i64 %.neg25.neg.i32.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ba, i1 false)
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread181
  %i.be = icmp eq i64 %i.ba, 24
  br i1 %i.be, label %bb.l, label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !306
  br label %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i

_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !306
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread: ; preds = %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71
  %.sroa.0162.0.copyload = phi ptr [ %.sroa.0162.0.copyload.pre, %.thread.i.i.i70._ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread_crit_edge ], [ %.sroa.01.0.copyload.i64, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71 ] ; 3 uses
  %.sroa.8166.0..020.i20.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 16
  %.sroa.8166.0.copyload = load i64, ptr %.sroa.8166.0..020.i20.i.sroa_idx, align 8, !tbaa !216
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %.sroa.2.0.copyload.i45 = load i64, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i46 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i45, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i46, 0
  br i1 %i.bg, label %.thread.i.i.i55, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47: ; preds = %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %.sroa.0.0.copyload.i48 = load ptr, ptr %.pn19.i21.i, align 8, !tbaa !228
  %i.bh = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i48, i64 noundef %.sroa.speculated.i.i.i46) #27
  %.fr.i.i.i50 = freeze i32 %i.bh                 ; 2 uses
  %.not.not.i.i.i51 = icmp eq i32 %.fr.i.i.i50, 0
  br i1 %.not.not.i.i.i51, label %.thread.i.i.i55, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56

.thread.i.i.i55:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit71.thread
  %i.bi = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i45
  br i1 %i.bi, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i47
  %i.bj = icmp slt i32 %.fr.i.i.i50, 0
  br i1 %i.bj, label %.lr.ph.i.i26.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i.preheader:                         ; preds = %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.preheader, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.pn19.i21.i, %.lr.ph.i.i26.i.preheader ] ; 6 uses
  %.0911.i.i28.i = phi ptr [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.020.i20.i, %.lr.ph.i.i26.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i28.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i27.i, i64 24, i1 false), !tbaa.struct !306
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -24 ; 2 uses
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -16
  %.sroa.2.0.copyload.i40 = load i64, ptr %.sroa.2.0..sroa_idx.i39, align 8, !tbaa !216 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i40, i64 %.sroa.22.0.copyload.i58) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.bk, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i26.i
  %.sroa.0.0.copyload.i41 = load ptr, ptr %.0.i.i29.i, align 8, !tbaa !228
  %i.bl = call i32 @memcmp(ptr noundef %.sroa.0162.0.copyload, ptr noundef %.sroa.0.0.copyload.i41, i64 noundef %.sroa.speculated.i.i.i) #27
  %.fr.i.i.i = freeze i32 %i.bl                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %.inv.i.i.i = icmp sgt i32 %.fr.i.i.i, -1
  %spec.select.i.i.i = select i1 %.inv.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %.lr.ph.i.i26.i
  %i.bm = icmp ult i64 %.sroa.22.0.copyload.i58, %.sroa.2.0.copyload.i40
  br i1 %i.bm, label %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i

_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit: ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i ], [ -1, %.thread.i.i.i ]
  %i.bn = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.bn, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, !llvm.loop !34

_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i: ; preds = %.thread.i.i.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit, %.thread.i.i.i55, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56
  %.09.lcssa.i.i23.i = phi ptr [ %.020.i20.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit56 ], [ %.020.i20.i, %.thread.i.i.i55 ], [ %.012.i.i27.i, %_ZN4llvm13ScopedPrinter8flagNameERKNS_9FlagEntryES3_.exit ], [ %.012.i.i27.i, %.thread.i.i.i ] ; 3 uses
  store ptr %.sroa.0162.0.copyload, ptr %.09.lcssa.i.i23.i, align 8, !tbaa !228
  %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 8
  store i64 %.sroa.22.0.copyload.i58, ptr %.sroa.6164.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !216
  %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i23.i, i64 16
  store i64 %.sroa.8166.0.copyload, ptr %.sroa.8166.0..09.lcssa.i.i23.i.sroa_idx, align 8, !tbaa !216
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN4llvm9FlagEntryES2_ET0_T_S4_S3_.exit.i30.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.020.i20.i, i64 24 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.q
  br i1 %.not.i25.i, label %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !35

_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertIPN4llvm9FlagEntryEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S7_EEEEvT_T0_.exit.i11.i, %bb.i, %._crit_edge
  %i.bo = zext i32 %3 to i64
  %i.bp = load ptr, ptr %12, align 8, !tbaa !171
  %i.bq = load i32, ptr %i.c, align 8, !tbaa !172
  %i.br = zext i32 %i.bq to i64
  %i.bs = load ptr, ptr %0, align 8, !tbaa !73
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 312
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr %1, i64 %2, i64 %i.bo, ptr %i.bp, i64 %i.br) #24
  %i.bv = load ptr, ptr %12, align 8, !tbaa !171  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.b
  br i1 %i.bw, label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit
  call void @free(ptr noundef %i.bv) #24
  br label %_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_9FlagEntryELj10EED2Ev.exit: ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9FlagEntryELj10EEEPFbRKS2_S6_EEEvOT_T0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.0196 = phi ptr [ %4, %.lr.ph ], [ %i.cx, %bb.x ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0196, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1270 ; 10 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = and i32 %i.by, %6
  %.not33 = icmp eq i32 %i.ca, 0
  br i1 %.not33, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cb = and i32 %i.by, %7
  %.not34 = icmp eq i32 %i.cb, 0
  br i1 %.not34, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = and i32 %i.by, %8
  %.not35 = icmp eq i32 %i.cc, 0
  %spec.select = select i1 %.not35, i32 0, i32 %8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.032 = phi i32 [ %spec.select, %bb.r ], [ %6, %bb.p ], [ %7, %bb.q ] ; 2 uses
  %i.cd = and i32 %.032, %i.by
  %.not36 = icmp eq i32 %i.cd, 0
  br i1 %.not36, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ce = and i32 %i.by, %3
  %i.cf = icmp eq i32 %i.ce, %i.by
  br i1 %i.cf, label %bb.u, label %bb.x

.critedge:                                        ; preds = %bb.s
  %i.cg = and i32 %.032, %3
  %i.ch = icmp eq i32 %i.cg, %i.by
  br i1 %i.ch, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ci = load i16, ptr %.0196, align 4, !tbaa !221
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0196, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0196, i64 2
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !182
  %i.cn = zext i8 %i.cm to i64                    ; 2 uses
  store ptr %i.ck, ptr %13, align 8
  store i64 %i.cn, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.by, ptr %i.a, align 4, !tbaa !183
  %i.co = load i32, ptr %i.c, align 8, !tbaa !172 ; 3 uses
  %i.cp = load i32, ptr %i.d, align 4, !tbaa !244
  %.not.i = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i, label %bb.w, label %bb.v, !prof !259

bb.v:                                             ; preds = %bb.u
  %i.cq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefEjEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.cr = zext i32 %i.co to i64
  %i.cs = load ptr, ptr %12, align 8, !tbaa !171
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.cr ; 3 uses
  store ptr %i.ck, ptr %i.ct, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.cn, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !216
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = zext i32 %i.by to i64
  store i64 %i.cv, ptr %i.cu, align 8, !tbaa !310
  %i.cw = add nuw i32 %i.co, 1
  store i32 %i.cw, ptr %i.c, align 8, !tbaa !172
  br label %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %.critedge, %_ZN4llvm15SmallVectorImplINS_9FlagEntryEE12emplace_backIJNS_9StringRefEjEEERS1_DpOT_.exit, %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %.0196, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE18growAndEmplaceBackIJNS_9StringRefEjEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvm::FlagEntry", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !216
  %i.a = load i32, ptr %2, align 4, !tbaa !183
  store ptr %.sroa.0.0.copyload, ptr %3, align 8, !tbaa !228
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !216
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = zext i32 %i.a to i64
  store i64 %i.c, ptr %i.b, align 8, !tbaa !310
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !172  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !244
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !259

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !172
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !171
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.k = load i32, ptr %i.d, align 8, !tbaa !172
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !172
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9FlagEntryELb1EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.n = load ptr, ptr %0, align 8, !tbaa !171
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -24
  ret ptr %i.q
}

declare void @_ZNK4llvm6object14COFFObjectFile8getVaPtrEmRm(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(232), i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i64 @_ZNK4llvm6object14COFFObjectFile12getImageBaseEv(ptr noundef nonnull align 8 dereferenceable(232)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN12_GLOBAL__N_110COFFDumper19printCOFFLoadConfigEvEN3$_08__invokeERN4llvm11raw_ostreamEPKh"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1) #9 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [17 x i8], align 16               ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 1, !tbaa !182  ; 2 uses
  %.not.i = icmp eq i8 %.val, 0
  br i1 %.not.i, label %"_ZZN12_GLOBAL__N_110COFFDumper19printCOFFLoadConfigEvENK3$_0clERN4llvm11raw_ostreamEPKh.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !225
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, 7
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.326, i64 noundef 7) #24
end_hunk_4
