Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrRegAllocX64?download=true
inline.NumInlined: 482
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@__cxa_begin_catch
declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6412ScopedRegX644takeENS1_11RegisterX64E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) initializes((8, 9)) %0, i8 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122, !nonnull !42, !align !50 ; 9 uses
  %i.b = and i8 %1, 7
  %i.c = icmp eq i8 %i.b, 5
  %i.d = lshr i8 %1, 3
  %i.e = zext nneg i8 %i.d to i64                 ; 5 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !46, !range !41, !noundef !42
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49, !nonnull !42, !align !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.e
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.p
  tail call void @_ZN4Luau7CodeGen3X6413IrRegAllocX648preserveERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(332) %i.a, ptr noundef nonnull align 8 dereferenceable(59) %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.g, align 1, !tbaa !46
  br label %_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.e ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !46, !range !41, !noundef !42
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49, !nonnull !42, !align !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.e
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !48
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %i.ac
  tail call void @_ZN4Luau7CodeGen3X6413IrRegAllocX648preserveERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(332) %i.a, ptr noundef nonnull align 8 dereferenceable(59) %i.ae)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 0, ptr %i.t, align 1, !tbaa !46
  br label %_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej.exit

_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej.exit: ; preds = %bb.d, %bb.g
  %.sink.i = phi i64 [ 52, %bb.g ], [ 132, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.e
  store i32 -1, ptr %i.ag, align 4, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.ah, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6412ScopedRegX644freeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122, !nonnull !42, !align !50 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 8, !tbaa !54 ; 2 uses
  %i.c = and i8 %.sroa.0.0.copyload, 7
  %i.d = icmp eq i8 %i.c, 5                       ; 2 uses
  %i.e = lshr i8 %.sroa.0.0.copyload, 3
  %i.f = zext nneg i8 %i.e to i64                 ; 2 uses
  %..i = select i1 %i.d, i64 116, i64 36
  %.9.i = select i1 %i.d, i64 132, i64 52
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %..i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  store i8 1, ptr %i.h, align 1, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.9.i
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f
  store i32 -1, ptr %i.j, align 4, !tbaa !48
  store i8 -128, ptr %i.b, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i8 @_ZN4Luau7CodeGen3X6412ScopedRegX647releaseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 8, !tbaa !54
  store i8 -128, ptr %i.a, align 8, !tbaa !54
  ret i8 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6412ScopedSpillsC2ERNS1_13IrRegAllocX64E(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noundef nonnull align 8 dereferenceable(332) %1) unnamed_addr #5 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !120
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.c = load i32, ptr %i.b, align 4, !tbaa !44
  store i32 %i.c, ptr %i.a, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Luau7CodeGen3X6412ScopedSpillsD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(12) dereferenceable(12) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !179, !nonnull !42, !align !50 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %.not7 = icmp eq ptr %i.d, %i.e
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.g = phi ptr [ %i.a, %.lr.ph ], [ %i.u, %bb.e ] ; 3 uses
  %i.h = phi ptr [ %i.e, %.lr.ph ], [ %i.y, %bb.e ]
  %.06 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.e ]   ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.06 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !180
  %i.l = load i32, ptr %i.f, align 8, !tbaa !124
  %.not = icmp ult i32 %i.k, %i.l
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49, !nonnull !42, !align !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load i32, ptr %i.i, align 4, !tbaa !103
  %i.q = zext i32 %i.p to i64
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.q
  invoke void @_ZN4Luau7CodeGen3X6413IrRegAllocX647restoreERNS0_6IrInstEb(ptr noundef nonnull align 8 dereferenceable(332) %i.g, ptr noundef nonnull align 8 dereferenceable(59) %i.s, i1 noundef zeroext true)
          to label %._crit_edge8 unwind label %bb.f

._crit_edge8:                                     ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !179
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.06, 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge8, %bb.d
  %i.u = phi ptr [ %i.g, %bb.d ], [ %.pre, %._crit_edge8 ] ; 3 uses
  %.1 = phi i64 [ %i.t, %bb.d ], [ %.06, %._crit_edge8 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !100  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 4
  %i.ad = icmp ult i64 %.1, %i.ac
  br i1 %i.ad, label %bb.b, label %._crit_edge, !llvm.loop !178

bb.f:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #28
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !70     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen20ValueRestoreLocationEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen20ValueRestoreLocationEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !69
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.x = load i64, ptr %.0911.i.i.i, align 4, !alias.scope !187, !noalias !186
  store i64 %i.x, ptr %.012.i.i.i, align 4, !alias.scope !186, !noalias !187
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !184

_ZNSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !185
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #26
  br label %_ZNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !185
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4Luau7CodeGen20ValueRestoreLocationEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #18

declare void @_ZN4Luau13vformatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #18

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(30) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEC2ERS9_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = mul i64 %spec.select, 56
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27 ; 3 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.b
  %.07.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %.lr.ph.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %.07.i.i ; 5 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.l, align 8, !tbaa !113
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 2, ptr %i.m, align 4, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.n, ptr %i.k, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %.07.i.i ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i32 %i.i, ptr %i.p, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i32 0, ptr %i.r, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  store i32 2, ptr %i.s, align 4, !tbaa !114
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %i.t, ptr %i.q, align 8, !tbaa !115
  %i.u = add nuw i64 %.07.i.i, 2                  ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.u, %spec.select
  br i1 %exitcond.not.i.i.1, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEC2ERS9_m.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !188

_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEC2ERS9_m.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !107
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEC2ERS9_m.exit

_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEC2ERS9_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEC2ERS9_m.exit.loopexit, %bb.a
  %i.v = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEC2ERS9_m.exit.loopexit ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEC2ERS9_m.exit.loopexit ] ; 3 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEC2ERS9_m.exit
  %i.w = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3X6414ExitSyncArgX64ELj2EEEEaSEOS6_.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !193    ; 4 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !193
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !72
  %.not.i11 = icmp eq ptr %i.x, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEED2Ev.exit, label %bb.c

._crit_edge.thread:                               ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEC2ERS9_m.exit
  %i.y = load ptr, ptr %0, align 8, !tbaa !193    ; 2 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !193
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !72
  %.not.i1135 = icmp eq ptr %i.y, null
  br i1 %.not.i1135, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEED2Ev.exit, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE7destroyEv.exit.i

bb.c:                                             ; preds = %._crit_edge
  %.not.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE7destroyEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EED2Ev.exit.i.i.i
  %.04.i.i.i = phi i64 [ %i.ae, %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EED2Ev.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.x, i64 %.04.i.i.i ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !113
  %.not1.i.i.i.i.i = icmp eq i32 %.promoted.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE5clearEv.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i
  store i32 0, ptr %i.ab, align 8, !tbaa !113
  br label %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE5clearEv.exit.i.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !115 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ac) #23
  br label %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EED2Ev.exit.i.i.i

_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE5clearEv.exit.i.i.i.i
  %i.ae = add nuw i64 %.04.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ae, %i.cb
  br i1 %exitcond.not.i.i.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE7destroyEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !189

_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE7destroyEv.exit.i: ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EED2Ev.exit.i.i.i, %._crit_edge.thread, %bb.c
  %i.af = phi ptr [ %i.y, %._crit_edge.thread ], [ %i.x, %bb.c ], [ %i.x, %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EED2Ev.exit.i.i.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.af) #23
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEED2Ev.exit

_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEED2Ev.exit: ; preds = %._crit_edge.thread, %._crit_edge, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE7destroyEv.exit.i
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3X6414ExitSyncArgX64ELj2EEEEaSEOS6_.exit
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %_ZNSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3X6414ExitSyncArgX64ELj2EEEEaSEOS6_.exit ] ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.ag, i64 %.016 ; 8 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !48 ; 6 uses
  %i.aj = load i32, ptr %i.e, align 8, !tbaa !48
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3X6414ExitSyncArgX64ELj2EEEEaSEOS6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = zext i32 %i.ai to i64
  %i.am = and i64 %i.w, %i.al
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.02030.i = phi i64 [ 0, %bb.f ], [ %i.ar, %bb.j ]
  %.02129.i = phi i64 [ %i.am, %bb.f ], [ %i.at, %bb.j ] ; 2 uses
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0, i64 %.02129.i ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !48 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, %i.f
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.ai, ptr %i.an, align 8, !tbaa !112
  %.pre22 = load i32, ptr %i.ah, align 4, !tbaa !48
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE13insert_unsafeERS9_.exit

bb.i:                                             ; preds = %bb.g
  %i.aq = icmp eq i32 %i.ao, %i.ai
  br i1 %i.aq, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE13insert_unsafeERS9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add i64 %.02030.i, 1                    ; 3 uses
  %i.as = add i64 %i.ar, %.02129.i
  %i.at = and i64 %i.as, %i.w
  %.not.i12 = icmp ugt i64 %i.ar, %i.w
  br i1 %.not.i12, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE13insert_unsafeERS9_.exit, label %bb.g, !llvm.loop !190

_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE13insert_unsafeERS9_.exit: ; preds = %bb.j, %bb.i, %bb.h
  %i.au = phi i32 [ %.pre22, %bb.h ], [ %i.ai, %bb.i ], [ %i.ai, %bb.j ]
  %spec.select.i = phi ptr [ %i.an, %bb.h ], [ null, %bb.j ], [ %i.an, %bb.i ] ; 5 uses
  store i32 %i.au, ptr %spec.select.i, align 8, !tbaa !112
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %spec.select.i, %i.ah
  br i1 %.not.i.i, label %_ZNSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3X6414ExitSyncArgX64ELj2EEEEaSEOS6_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE13insert_unsafeERS9_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16 ; 4 uses
  %.promoted.i.i.i = load i32, ptr %i.ax, align 8, !tbaa !113
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE5clearEv.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.k
  store i32 0, ptr %i.ax, align 8, !tbaa !113
  br label %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE5clearEv.exit.i.i

_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE5clearEv.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.k
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !115 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not19.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE5clearEv.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !113 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %.idx.i.i = shl nuw nsw i64 %i.bc, 4            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.l
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !115 ; 2 uses
  %i.bf = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.bg = lshr exact i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bg, 1
  %xtraiter = and i64 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.be, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ay, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.013.i.i.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.08.012.i.i.i.i.i.i.prol, i64 16, i1 false), !tbaa.struct !117
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !191

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i.i
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.be, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.08.012.i.i.i.i.i.i.unr = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.preheader.i.i ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bk = icmp ult i64 %i.bf, 48
  br i1 %i.bk, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.013.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.08.012.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !117
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bm, ptr noundef nonnull align 4 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !117
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bo, ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !117
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, ptr noundef nonnull align 4 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !117
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.br, %i.bd
  br i1 %.not.i.i.i.i.i.i.3, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.pre21.i.i = load i32, ptr %i.ba, align 8, !tbaa !113
  br label %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i

_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.loopexit.i.i, %bb.l
  %i.bt = phi i32 [ %.pre21.i.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.loopexit.i.i ], [ 0, %bb.l ]
  store i32 %i.bt, ptr %i.ax, align 8, !tbaa !113
  %.promoted.i15.i.i = load i32, ptr %i.ba, align 8, !tbaa !113
  %.not1.i16.i.i = icmp eq i32 %.promoted.i15.i.i, 0
  br i1 %.not1.i16.i.i, label %_ZNSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3X6414ExitSyncArgX64ELj2EEEEaSEOS6_.exit, label %.lr.ph.preheader.i17.i.i

.lr.ph.preheader.i17.i.i:                         ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i
  store i32 0, ptr %i.ba, align 8, !tbaa !113
  br label %_ZNSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3X6414ExitSyncArgX64ELj2EEEEaSEOS6_.exit

bb.m:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE5clearEv.exit.i.i
  %i.bu = load ptr, ptr %i.aw, align 8, !tbaa !115 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 24
  %.not20.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not20.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdlPv(ptr noundef %i.bu) #23
  %.pre.i.i13 = load ptr, ptr %i.av, align 8, !tbaa !115
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bw = phi ptr [ %.pre.i.i13, %bb.n ], [ %i.ay, %bb.m ]
  store ptr %i.bw, ptr %i.aw, align 8, !tbaa !115
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.bz = load <2 x i32>, ptr %i.by, align 8, !tbaa !48
  store <2 x i32> %i.bz, ptr %i.ax, align 8, !tbaa !48
  store ptr %i.az, ptr %i.av, align 8, !tbaa !115
  store i32 2, ptr %i.bx, align 4, !tbaa !114
  store i32 0, ptr %i.by, align 8, !tbaa !113
  br label %_ZNSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3X6414ExitSyncArgX64ELj2EEEEaSEOS6_.exit

_ZNSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3X6414ExitSyncArgX64ELj2EEEEaSEOS6_.exit: ; preds = %bb.o, %.lr.ph.preheader.i17.i.i, %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE13insert_unsafeERS9_.exit, %bb.e
  %i.ca = add nuw i64 %.016, 1                    ; 2 uses
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !107 ; 3 uses
  %i.cc = icmp ult i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.e, label %._crit_edge, !llvm.loop !192
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_IrRegAllocX64.cpp() #19 section ".text.startup" {
bb.a:
  store i8 0, ptr @_ZN5FFlag20LuauCodegenNoEcbDataE, align 8, !tbaa !40
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20LuauCodegenNoEcbDataE, i64 1), align 1, !tbaa !194
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20LuauCodegenNoEcbDataE, i64 8), align 8, !tbaa !195
  %i.a = load ptr, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !196
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20LuauCodegenNoEcbDataE, i64 16), align 8, !tbaa !197
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag20LuauCodegenNoEcbDataE, i64 24), align 8, !tbaa !198
  store ptr @_ZN5FFlag20LuauCodegenNoEcbDataE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !196
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !47}
!1 = distinct !{!1, !47}
!2 = distinct !{!2, !47}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSN4Luau7CodeGen10LogBuilderE", !12, i64 0}
!14 = !{!"p1 _ZTSN4Luau7CodeGen3X6418AssemblyBuilderX64E", !12, i64 0}
!15 = !{!"p1 _ZTSN4Luau7CodeGen10IrFunctionE", !12, i64 0}
!16 = !{!"p1 _ZTSN4Luau7CodeGen13LoweringStatsE", !12, i64 0}
!17 = !{!"_ZTSSt5arrayIbLm16EE", !8, i64 0}
!18 = !{!"_ZTSSt5arrayIjLm16EE", !8, i64 0}
!19 = !{!"_ZTSSt12_Base_bitsetILm8EE", !8, i64 0}
!20 = !{!"_ZTSSt6bitsetILm512EE", !19, i64 0}
!21 = !{!"p1 _ZTSN4Luau7CodeGen3X6410IrSpillX64E", !12, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE", !24, i64 0}
!26 = !{!"p1 _ZTSSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3X6414ExitSyncArgX64ELj2EEEE", !12, i64 0}
!27 = !{!"long", !8, i64 0}
!28 = !{!"_ZTSSt4hashIjE"}
!29 = !{!"_ZTSSt8equal_toIjE"}
!30 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEEE", !26, i64 0, !27, i64 8, !27, i64 16, !9, i64 24, !28, i64 28, !29, i64 29}
!31 = !{!"_ZTSN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEESt4hashIjESt8equal_toIjEEE", !30, i64 0}
!32 = !{!"_ZTSN4Luau7CodeGen3X6413IrRegAllocX64E", !13, i64 0, !14, i64 8, !15, i64 16, !16, i64 24, !9, i64 32, !17, i64 36, !18, i64 52, !17, i64 116, !18, i64 132, !8, i64 196, !20, i64 200, !9, i64 264, !9, i64 268, !25, i64 272, !31, i64 296, !9, i64 328}
!33 = !{!32, !13, i64 0}
!34 = !{!32, !16, i64 24}
!35 = !{!32, !9, i64 32}
!36 = !{!"bool", !8, i64 0}
!37 = !{!"p1 omnipotent char", !12, i64 0}
!38 = !{!"p1 _ZTSN4Luau6FValueIbEE", !12, i64 0}
!39 = !{!"_ZTSN4Luau6FValueIbEE", !36, i64 0, !36, i64 1, !37, i64 8, !38, i64 16, !9, i64 24}
!40 = !{!39, !36, i64 0}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!32, !8, i64 196}
!44 = !{!32, !9, i64 268}
!45 = !{!32, !9, i64 328}
!46 = !{!36, !36, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!9, !9, i64 0}
!49 = !{!32, !15, i64 16}
!50 = !{i64 8}
!51 = !{!"p1 _ZTSN4Luau7CodeGen6IrInstE", !12, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!52, !51, i64 0}
!54 = !{!8, !8, i64 0}
!55 = !{!"_ZTSN4Luau7CodeGen5IrCmdE", !8, i64 0}
!56 = !{!"p1 _ZTSN4Luau7CodeGen4IrOpE", !12, i64 0}
!57 = !{!"_ZTSN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EEE", !56, i64 0, !9, i64 8, !9, i64 12, !8, i64 16}
!58 = !{!"short", !8, i64 0}
!59 = !{!"_ZTSN4Luau7CodeGen3X647SizeX64E", !8, i64 0}
!60 = !{!"_ZTSN4Luau7CodeGen3X6411RegisterX64E", !59, i64 0, !8, i64 0}
!61 = !{!"_ZTSN4Luau7CodeGen3A647KindA64E", !8, i64 0}
!62 = !{!"_ZTSN4Luau7CodeGen3A6411RegisterA64E", !61, i64 0, !8, i64 0}
!63 = !{!"_ZTSN4Luau7CodeGen6IrInstE", !55, i64 0, !57, i64 8, !9, i64 48, !58, i64 52, !60, i64 54, !62, i64 55, !36, i64 56, !36, i64 57, !36, i64 58}
!64 = !{!63, !9, i64 48}
!65 = !{!63, !36, i64 56}
!66 = !{!63, !55, i64 0}
!67 = !{!"p1 _ZTSN4Luau7CodeGen20ValueRestoreLocationE", !12, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!68, !67, i64 8}
!70 = !{!68, !67, i64 0}
!71 = !{!32, !14, i64 8}
!72 = !{!27, !27, i64 0}
!73 = !{!63, !36, i64 57}
!74 = !{!"p1 _ZTSN4Luau7CodeGen15AssemblyOptionsE", !12, i64 0}
!75 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!76 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !75, i64 0, !27, i64 8, !8, i64 16}
!77 = !{!"_ZTSN4Luau7CodeGen10LogBuilderE", !74, i64 0, !76, i64 8}
!78 = !{!77, !74, i64 0}
!79 = !{!"_ZTSN4Luau7CodeGen15AssemblyOptions6TargetE", !8, i64 0}
!80 = !{!"_ZTSN4Luau7CodeGen11HostIrHooksE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!81 = !{!"any p2 pointer", !12, i64 0}
!82 = !{!"p2 omnipotent char", !81, i64 0}
!83 = !{!"_ZTSN4Luau7CodeGen18CompilationOptionsE", !9, i64 0, !80, i64 8, !82, i64 88, !36, i64 96, !36, i64 97}
!84 = !{!"_ZTSN4Luau7CodeGen15IncludeIrPrefixE", !8, i64 0}
!85 = !{!"_ZTSN4Luau7CodeGen14IncludeUseInfoE", !8, i64 0}
!86 = !{!"_ZTSN4Luau7CodeGen14IncludeCfgInfoE", !8, i64 0}
!87 = !{!"_ZTSN4Luau7CodeGen18IncludeRegFlowInfoE", !8, i64 0}
!88 = !{!"_ZTSN4Luau7CodeGen15AssemblyOptionsE", !79, i64 0, !83, i64 8, !36, i64 112, !36, i64 113, !36, i64 114, !36, i64 115, !36, i64 116, !36, i64 117, !84, i64 120, !85, i64 124, !86, i64 128, !87, i64 132, !12, i64 136, !12, i64 144}
!89 = !{!88, !36, i64 117}
!90 = !{!88, !36, i64 113}
!91 = !{!"_ZTSN4Luau7CodeGen8IrOpKindE", !8, i64 0}
!92 = !{!"_ZTSN4Luau7CodeGen4IrOpE", !91, i64 0, !9, i64 0}
!93 = !{!"_ZTSN4Luau7CodeGen11IrValueKindE", !8, i64 0}
!94 = !{!"_ZTSN4Luau7CodeGen20ValueRestoreLocationE", !92, i64 0, !93, i64 4, !55, i64 5, !36, i64 6}
!95 = !{!63, !36, i64 58}
!96 = !{!76, !27, i64 8}
!97 = !{!22, !21, i64 8}
!98 = !{!22, !21, i64 16}
!99 = !{!93, !93, i64 0}
!100 = !{!22, !21, i64 0}
!101 = !{i64 0, i64 4, !48, i64 4, i64 1, !99, i64 8, i64 4, !48, i64 12, i64 1, !54, i64 13, i64 1, !54}
!102 = !{!"_ZTSN4Luau7CodeGen3X6410IrSpillX64E", !9, i64 0, !93, i64 4, !9, i64 8, !8, i64 12, !60, i64 13}
!103 = !{!102, !9, i64 0}
!104 = !{!102, !8, i64 12}
!105 = !{!102, !93, i64 4}
!106 = !{!30, !27, i64 16}
!107 = !{!30, !27, i64 8}
!108 = !{!30, !26, i64 0}
!109 = !{!"p1 _ZTSN4Luau7CodeGen3X6414ExitSyncArgX64E", !12, i64 0}
!110 = !{!"_ZTSN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEE", !109, i64 0, !9, i64 8, !9, i64 12, !8, i64 16}
!111 = !{!"_ZTSSt4pairIjN4Luau11SmallVectorINS0_7CodeGen3X6414ExitSyncArgX64ELj2EEEE", !9, i64 0, !110, i64 8}
!112 = !{!111, !9, i64 0}
!113 = !{!110, !9, i64 8}
!114 = !{!110, !9, i64 12}
!115 = !{!110, !109, i64 0}
!116 = !{!55, !55, i64 0}
!117 = !{i64 0, i64 4, !48, i64 4, i64 1, !54, i64 5, i64 1, !54, i64 6, i64 1, !54, i64 8, i64 4, !54, i64 12, i64 1, !99, i64 13, i64 1, !116, i64 14, i64 1, !46}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = !{!"p1 _ZTSN4Luau7CodeGen3X6413IrRegAllocX64E", !12, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"_ZTSN4Luau7CodeGen3X6412ScopedRegX64E", !119, i64 0, !60, i64 8}
!122 = !{!121, !119, i64 0}
!123 = !{!"_ZTSN4Luau7CodeGen3X6412ScopedSpillsE", !119, i64 0, !9, i64 8}
!124 = !{!123, !9, i64 8}
!125 = !{!14, !14, i64 0}
!126 = !{!15, !15, i64 0}
!127 = !{!30, !9, i64 24}
!128 = distinct !{!128, !47}
!129 = distinct !{!129, !47}
!130 = distinct !{!130, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3X6410IrSpillX64ES3_SaIS3_EEvPT_PT0_RT1_"}
!131 = distinct !{!131, !130, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3X6410IrSpillX64ES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!132 = distinct !{!132, !130, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3X6410IrSpillX64ES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!133 = !{!"p1 int", !12, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!"p1 _ZTSN4Luau7CodeGen7IrBlockE", !12, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE17_Vector_impl_dataE", !135, i64 0, !135, i64 8, !135, i64 16}
!137 = !{!136, !135, i64 0}
!138 = !{!"_ZTSN4Luau7CodeGen11IrBlockKindE", !8, i64 0}
!139 = !{!"_ZTSN4Luau7CodeGen5LabelE", !9, i64 0, !9, i64 4}
!140 = !{!"_ZTSN4Luau7CodeGen7IrBlockE", !138, i64 0, !8, i64 1, !58, i64 2, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !139, i64 28}
!141 = !{!140, !9, i64 4}
!142 = !{!32, !9, i64 264}
!143 = !{!"double", !8, i64 0}
!144 = !{!"_ZTSN4Luau7CodeGen23BlockLinearizationStatsE", !9, i64 0, !143, i64 8}
!145 = !{!"p1 _ZTSN4Luau7CodeGen13FunctionStatsE", !12, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13FunctionStatsESaIS2_EE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!147 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13FunctionStatsESaIS2_EE12_Vector_implE", !146, i64 0}
!148 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13FunctionStatsESaIS2_EE", !147, i64 0}
!149 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13FunctionStatsESaIS2_EE", !148, i64 0}
!150 = !{!"_ZTSN4Luau7CodeGen13LoweringStatsE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !144, i64 40, !9, i64 56, !149, i64 64}
!151 = !{!150, !9, i64 8}
!152 = !{!94, !36, i64 6}
!153 = !{!150, !9, i64 12}
!154 = !{!132, !131}
!155 = !{!57, !56, i64 0}
!156 = !{!57, !9, i64 8}
!157 = distinct !{!157, !47}
!158 = distinct !{!158, !47}
!159 = distinct !{!159, !118}
!160 = distinct !{!160, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3X6410IrSpillX64ES3_SaIS3_EEvPT_PT0_RT1_"}
!161 = distinct !{!161, !160, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3X6410IrSpillX64ES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!162 = distinct !{!162, !160, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3X6410IrSpillX64ES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!163 = distinct !{!163, !47}
!164 = distinct !{!164, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3X6410IrSpillX64ES3_SaIS3_EEvPT_PT0_RT1_"}
!165 = distinct !{!165, !164, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3X6410IrSpillX64ES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!166 = distinct !{!166, !164, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3X6410IrSpillX64ES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!167 = !{!"_ZTSN4Luau7CodeGen3X6414ExitSyncArgX64E", !9, i64 0, !60, i64 4, !8, i64 5, !60, i64 6, !94, i64 8}
!168 = !{!167, !9, i64 0}
!169 = !{!167, !8, i64 5}
!170 = !{!162, !161}
!171 = !{!166, !165}
!172 = distinct !{!172, !47}
!173 = distinct !{!173, !47}
!174 = !{!88, !84, i64 120}
!175 = distinct !{!175, !47}
!176 = distinct !{!176, !47}
!177 = !{!21, !21, i64 0}
!178 = distinct !{!178, !47}
!179 = !{!123, !119, i64 0}
!180 = !{!102, !9, i64 8}
!181 = distinct !{!181, !"_ZSt19__relocate_object_aIN4Luau7CodeGen20ValueRestoreLocationES2_SaIS2_EEvPT_PT0_RT1_"}
!182 = distinct !{!182, !181, !"_ZSt19__relocate_object_aIN4Luau7CodeGen20ValueRestoreLocationES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!183 = distinct !{!183, !181, !"_ZSt19__relocate_object_aIN4Luau7CodeGen20ValueRestoreLocationES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!184 = distinct !{!184, !47}
!185 = !{!68, !67, i64 16}
!186 = !{!182}
!187 = !{!183}
!188 = distinct !{!188, !47}
!189 = distinct !{!189, !47}
!190 = distinct !{!190, !47}
!191 = distinct !{!191, !118}
!192 = distinct !{!192, !47}
!193 = !{!26, !26, i64 0}
!194 = !{!39, !36, i64 1}
!195 = !{!39, !37, i64 8}
!196 = !{!38, !38, i64 0}
!197 = !{!39, !38, i64 16}
!198 = !{!39, !9, i64 24}
end_hunk_0
