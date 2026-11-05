Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrRegAllocX64?download=true
inline.NumInlined: 482
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4Luau7CodeGen3X6413IrRegAllocX648preserveERNS0_6IrInstE:bb.a
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !96
  %i.ge = icmp eq i64 %i.gd, 4611686018427387903
  br i1 %i.ge, label %bb.bb, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit216

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit216:  ; preds = %bb.ba
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gg = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gf, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.aq, %bb.ar, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit216, %bb.ab, %bb.ac, %bb.af, %bb.ae
  %.sroa.23.0 = phi i8 [ -1, %bb.aq ], [ -1, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit216 ], [ -1, %bb.ar ], [ %i.df, %bb.ab ], [ %i.df, %bb.ae ], [ %i.df, %bb.af ], [ %i.df, %bb.ac ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !97 ; 9 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !98
  %.not.i = icmp eq ptr %i.gj, %i.gl
  br i1 %.not.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.i, ptr %i.gj, align 4, !tbaa !48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store i8 %i.k, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !99
  %.sroa.21381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i32 %i.m, ptr %.sroa.21381.0..sroa_idx, align 4, !tbaa !48
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i8 %.sroa.23.0, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !54
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 13
  store i8 %i.p, ptr %.sroa.27.0..sroa_idx, align 1, !tbaa !54
  %i.gm = load ptr, ptr %i.gi, align 8, !tbaa !97
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store ptr %i.gn, ptr %i.gi, align 8, !tbaa !97
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE9push_backERKS3_.exit

bb.be:                                            ; preds = %bb.bc
  %i.go = load ptr, ptr %i.gh, align 8, !tbaa !100 ; 5 uses
  %i.gp = ptrtoint ptr %i.gj to i64
  %i.gq = ptrtoint ptr %i.go to i64               ; 2 uses
  %i.gr = sub i64 %i.gp, %i.gq                    ; 3 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775792
  br i1 %i.gs, label %bb.bf, label %_ZNKSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.be
  %i.gt = ashr exact i64 %i.gr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = tail call i64 @llvm.umin.i64(i64 %i.gu, i64 576460752303423487)
  %i.gx = select i1 %i.gv, i64 576460752303423487, i64 %i.gw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gy = shl nuw nsw i64 %i.gx, 4
  %i.gz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #25 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gr ; 5 uses
  store i32 %i.i, ptr %i.ha, align 4, !tbaa !48
  %.sroa.11.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i8 %i.k, ptr %.sroa.11.0..sroa_idx371, align 4, !tbaa !99
  %.sroa.21381.0..sroa_idx382 = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i32 %i.m, ptr %.sroa.21381.0..sroa_idx382, align 4, !tbaa !48
  %.sroa.23.0..sroa_idx384 = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i8 %.sroa.23.0, ptr %.sroa.23.0..sroa_idx384, align 4, !tbaa !54
  %.sroa.27.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %i.ha, i64 13
  store i8 %i.p, ptr %.sroa.27.0..sroa_idx387, align 1, !tbaa !54
  %.not10.i.i.i.i.i = icmp eq ptr %i.go, %i.gj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i ], [ %i.gz, %_ZNKSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i ], [ %i.go, %_ZNKSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !101, !alias.scope !154
  %i.hb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hb, %i.gj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gz, %_ZNKSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.hc, %.lr.ph.i.i.i.i.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.he = load ptr, ptr %i.gk, align 8, !tbaa !98
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = sub i64 %i.hf, %i.gq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.hg) #26
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bg, %_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.gz, ptr %i.gh, align 8, !tbaa !100
  store ptr %i.hd, ptr %i.gi, align 8, !tbaa !97
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hh, ptr %i.gk, align 8, !tbaa !98
  br label %_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.bd, %_ZNSt6vectorIN4Luau7CodeGen3X6410IrSpillX64ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.0.0.copyload = load i8, ptr %i.o, align 2, !tbaa !54 ; 2 uses
  %i.hi = and i8 %.sroa.0.0.copyload, 7
  %i.hj = icmp eq i8 %i.hi, 5                     ; 2 uses
  %i.hk = lshr i8 %.sroa.0.0.copyload, 3
  %i.hl = zext nneg i8 %i.hk to i64               ; 2 uses
  %..i = select i1 %i.hj, i64 116, i64 36
  %.9.i = select i1 %i.hj, i64 132, i64 52
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hl
  store i8 1, ptr %i.hn, align 1, !tbaa !46
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 %.9.i
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hl
  store i32 -1, ptr %i.hp, align 4, !tbaa !48
  store i8 -128, ptr %i.o, align 2, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau7CodeGen3X6413IrRegAllocX6410canTakeRegENS1_11RegisterX64E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(332) %0, i8 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  %i.b = icmp eq i8 %i.a, 5                       ; 2 uses
  %.v = select i1 %i.b, i64 116, i64 36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.v
  %i.d = lshr i8 %1, 3
  %i.e = zext nneg i8 %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !46, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.v6 = select i1 %i.b, i64 132, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.v6
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e
  %i.k = load i32, ptr %i.j, align 4, !tbaa !48
  %i.l = icmp ne i32 %i.k, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i1 [ true, %bb.a ], [ %i.l, %bb.b ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6413IrRegAllocX647freeRegENS1_11RegisterX64E(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(332) %0, i8 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  %i.b = icmp eq i8 %i.a, 5                       ; 2 uses
  %i.c = lshr i8 %1, 3
  %i.d = zext nneg i8 %i.c to i64                 ; 2 uses
  %. = select i1 %i.b, i64 116, i64 36
  %.9 = select i1 %i.b, i64 132, i64 52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store i8 1, ptr %i.f, align 1, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.9
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d
  store i32 -1, ptr %i.h, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6413IrRegAllocX6414freeLastUseRegERNS0_6IrInstEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(332) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(59) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64
  %i.c = icmp ne i32 %i.b, %2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i8, ptr %i.d, align 8, !range !41
  %i.f = trunc nuw i8 %i.e to i1
  %.not6 = select i1 %i.c, i1 true, i1 %i.f
  br i1 %.not6, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2               ; 3 uses
  %i.i = icmp eq i8 %i.h, -128
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i8 %i.h, 7
  %i.k = icmp eq i8 %i.j, 5                       ; 2 uses
  %i.l = lshr i8 %i.h, 3
  %i.m = zext nneg i8 %i.l to i64                 ; 2 uses
  %..i = select i1 %i.k, i64 116, i64 36
  %.9.i = select i1 %i.k, i64 132, i64 52
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 1, ptr %i.o, align 1, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.9.i
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  store i32 -1, ptr %i.q, align 4, !tbaa !48
  store i8 -128, ptr %i.g, align 2, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau7CodeGen3X6413IrRegAllocX6412isLastUseRegERKNS0_6IrInstEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(332) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(59) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %5 = load i32, ptr %4, align 8, !tbaa !64
  %6 = icmp eq i32 %5, %2
  br i1 %6, label %bb.a, label %7

bb.a:                                             ; preds = %3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !65, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  br label %7

7:                                                ; preds = %bb.a, %3
  %8 = phi i1 [ false, %3 ], [ %i.d, %bb.a ]
  ret i1 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen3X6413IrRegAllocX6415freeLastUseRegsERKNS0_6IrInstEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(332) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(59) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !156  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %"_ZZN4Luau7CodeGen3X6413IrRegAllocX6415freeLastUseRegsERKNS0_6IrInstEjENK3$_0clENS0_4IrOpE.exit", %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %"_ZZN4Luau7CodeGen3X6413IrRegAllocX6415freeLastUseRegsERKNS0_6IrInstEjENK3$_0clENS0_4IrOpE.exit"
  %.011 = phi ptr [ %i.b, %.lr.ph ], [ %i.ag, %"_ZZN4Luau7CodeGen3X6413IrRegAllocX6415freeLastUseRegsERKNS0_6IrInstEjENK3$_0clENS0_4IrOpE.exit" ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.011, align 4, !tbaa !54 ; 2 uses
  %i.h = and i32 %.sroa.0.0.copyload, 15
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.c, label %"_ZZN4Luau7CodeGen3X6413IrRegAllocX6415freeLastUseRegsERKNS0_6IrInstEjENK3$_0clENS0_4IrOpE.exit"

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !49, !nonnull !42, !align !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = lshr i32 %.sroa.0.0.copyload, 4
  %i.m = zext nneg i32 %i.l to i64
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.m ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !64
  %i.r = icmp ne i32 %i.q, %2
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.t = load i8, ptr %i.s, align 8, !range !41
  %i.u = trunc nuw i8 %i.t to i1
  %.not6.i.i = select i1 %i.r, i1 true, i1 %i.u
  br i1 %.not6.i.i, label %"_ZZN4Luau7CodeGen3X6413IrRegAllocX6415freeLastUseRegsERKNS0_6IrInstEjENK3$_0clENS0_4IrOpE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 54 ; 2 uses
  %i.w = load i8, ptr %i.v, align 2               ; 3 uses
  %i.x = icmp eq i8 %i.w, -128
  br i1 %i.x, label %"_ZZN4Luau7CodeGen3X6413IrRegAllocX6415freeLastUseRegsERKNS0_6IrInstEjENK3$_0clENS0_4IrOpE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = and i8 %i.w, 7
  %i.z = icmp eq i8 %i.y, 5                       ; 2 uses
  %i.aa = lshr i8 %i.w, 3
  %i.ab = zext nneg i8 %i.aa to i64               ; 2 uses
  %..i.i.i = select i1 %i.z, i64 116, i64 36
  %.9.i.i.i = select i1 %i.z, i64 132, i64 52
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %..i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 1, ptr %i.ad, align 1, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.9.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ab
  store i32 -1, ptr %i.af, align 4, !tbaa !48
  store i8 -128, ptr %i.v, align 2, !tbaa !54
  br label %"_ZZN4Luau7CodeGen3X6413IrRegAllocX6415freeLastUseRegsERKNS0_6IrInstEjENK3$_0clENS0_4IrOpE.exit"

"_ZZN4Luau7CodeGen3X6413IrRegAllocX6415freeLastUseRegsERKNS0_6IrInstEjENK3$_0clENS0_4IrOpE.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.011, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6413IrRegAllocX6420recordAndFreeLastUseEjRNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(332) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(59) %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49, !nonnull !42, !align !50 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 6                   ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 57 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !73, !range !41, !noundef !42
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 58 ; 2 uses
  %i.n = load i8, ptr %i.m, align 2, !range !41
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !97   ; 3 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !100  ; 3 uses
  %.not = icmp eq ptr %i.r, %i.s
  br i1 %.not, label %.loopexit47, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.056, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.w
  br i1 %exitcond.not, label %.loopexit47, label %.lr.ph, !llvm.loop !157

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.056 = phi i64 [ %i.x, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.056 ; 5 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !103
  %i.aa = icmp eq i32 %i.z, %i.i
  br i1 %i.aa, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !54  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !104 ; 6 uses
  %i.af = icmp eq i8 %i.ae, -1                    ; 2 uses
  br i1 %i.af, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ag = and i64 %i.h, 4294967295                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !70 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %.not.i.i = icmp ugt i64 %i.ao, %i.ag
  br i1 %.not.i.i, label %bb.e, label %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ag
  %i.aq = load i64, ptr %i.ap, align 4
  br label %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit

_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit: ; preds = %bb.d, %bb.e
  %.sroa.023.1.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.e ]
  %4 = trunc i64 %.sroa.023.1.i.i to i56
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit, %bb.c
  %.sroa.1335.0 = phi i56 [ %4, %_ZNK4Luau7CodeGen10IrFunction19findRestoreLocationERKNS0_6IrInstEb.exit ], [ 0, %bb.c ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !64
  %5 = icmp eq i32 %i.as, %3
  br i1 %5, label %.thread, label %.loopexit47

.thread:                                          ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.au = load i8, ptr %i.at, align 8, !tbaa !65, !range !41, !noundef !42
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.loopexit47, label %6

6:                                                ; preds = %.thread
  br i1 %i.af, label %.loopexit, label %.thread38

.thread38:                                        ; preds = %6
  %i.aw = zext i8 %i.ae to i32                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !105
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Luau7CodeGen3X64L15kValueDwordSizeE, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !48
  %i.bc = add i32 %i.bb, %i.aw                    ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, %i.aw
  br i1 %i.bd, label %.lr.ph58, label %.loopexit

.lr.ph58:                                         ; preds = %.thread38
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bf = zext i8 %i.ae to i64
  %wide.trip.count = zext i32 %i.bc to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph58, %_ZNSt6bitsetILm512EE3setEmb.exit
  %indvars.iv = phi i64 [ %i.bf, %.lr.ph58 ], [ %indvars.iv.next, %_ZNSt6bitsetILm512EE3setEmb.exit ] ; 4 uses
  %exitcond68 = icmp eq i64 %indvars.iv, 512
  br i1 %exitcond68, label %bb.h, label %_ZNSt6bitsetILm512EE3setEmb.exit

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i64 noundef 512, i64 noundef 512) #24
  unreachable

_ZNSt6bitsetILm512EE3setEmb.exit:                 ; preds = %bb.g
  %i.bg = and i64 %indvars.iv, 63
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = xor i64 %i.bh, -1
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !72
  %i.bm = and i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond69.not, label %.loopexit, label %bb.g, !llvm.loop !158

.loopexit:                                        ; preds = %_ZNSt6bitsetILm512EE3setEmb.exit, %.thread38, %6
  store i8 0, ptr %i.j, align 1, !tbaa !73
  store i8 0, ptr %i.m, align 2, !tbaa !95
  %i.bn = getelementptr inbounds i8, ptr %i.r, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.y, ptr noundef nonnull align 4 dereferenceable(14) %i.bn, i64 14, i1 false), !tbaa.struct !101
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !97
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -16
  store ptr %i.bp, ptr %i.q, align 8, !tbaa !97
  br label %.loopexit47

bb.i:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 54 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !54  ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !64
  %i.bu = icmp ne i32 %i.bt, %3
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bw = load i8, ptr %i.bv, align 8, !range !41
  %i.bx = trunc nuw i8 %i.bw to i1
  %.not44 = select i1 %i.bu, i1 true, i1 %i.bx
  br i1 %.not44, label %.loopexit47, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = and i8 %i.br, 7
  %i.bz = icmp eq i8 %i.by, 5                     ; 2 uses
  %i.ca = lshr i8 %i.br, 3
  %i.cb = zext nneg i8 %i.ca to i64               ; 2 uses
  %..i = select i1 %i.bz, i64 116, i64 36
  %.9.i = select i1 %i.bz, i64 132, i64 52
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store i8 1, ptr %i.cd, align 1, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.9.i
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cb
  store i32 -1, ptr %i.cf, align 4, !tbaa !48
  store i8 -128, ptr %i.bq, align 2, !tbaa !54
  br label %.loopexit47

.loopexit47:                                      ; preds = %bb.b, %.preheader, %bb.i, %bb.f, %.loopexit, %.thread, %bb.j
  %.sroa.1334.1 = phi i56 [ %.sroa.1335.0, %.loopexit ], [ %.sroa.1335.0, %.thread ], [ %.sroa.1335.0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %.preheader ], [ 0, %bb.b ]
  %.sroa.10.0 = phi i8 [ %i.ac, %.loopexit ], [ %i.ac, %.thread ], [ %i.ac, %bb.f ], [ %i.br, %bb.j ], [ %i.br, %bb.i ], [ -128, %.preheader ], [ -128, %bb.b ]
  %.sroa.7.0 = phi i8 [ %i.ae, %.loopexit ], [ %i.ae, %.thread ], [ %i.ae, %bb.f ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %.preheader ], [ -1, %bb.b ]
  %.sroa.5.0 = phi i8 [ -128, %.loopexit ], [ -128, %.thread ], [ -128, %bb.f ], [ %i.br, %bb.j ], [ %i.br, %bb.i ], [ -128, %.preheader ], [ -128, %bb.b ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !106 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !107 ; 4 uses
  %i.cl = mul i64 %i.ck, 3
  %i.cm = lshr i64 %i.cl, 2
  %.not.i.i29 = icmp ult i64 %i.ci, %i.cm
  br i1 %.not.i.i29, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS9_.exit.i, label %bb.k

bb.k:                                             ; preds = %.loopexit47
  %i.cn = icmp eq i64 %i.ci, 0
  br i1 %i.cn, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !48 ; 2 uses
  %i.cq = icmp eq i32 %1, %i.cp
  br i1 %i.cq, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = add i64 %i.ck, -1                       ; 3 uses
  %i.cs = zext i32 %1 to i64
  %i.ct = and i64 %i.cr, %i.cs
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !108
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.01828.i.i.i = phi i64 [ 0, %bb.m ], [ %i.cz, %bb.p ]
  %.01927.i.i.i = phi i64 [ %i.ct, %bb.m ], [ %i.db, %bb.p ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [56 x i8], ptr %i.cu, i64 %.01927.i.i.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !48 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, %1
  br i1 %i.cx, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS9_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = icmp eq i32 %i.cw, %i.cp
  br i1 %i.cy, label %.loopexit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.da = add i64 %i.cz, %.01927.i.i.i
  %i.db = and i64 %i.da, %i.cr
  %.not.i.i.i = icmp ugt i64 %i.cz, %i.cr
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.n, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.p, %bb.o, %bb.l, %bb.k
  tail call void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cg)
  %.pre.i = load i64, ptr %i.cj, align 8, !tbaa !107
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS9_.exit.i

_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS9_.exit.i: ; preds = %bb.n, %.loopexit.i.i, %.loopexit47
  %i.dc = phi i64 [ %.pre.i, %.loopexit.i.i ], [ %i.ck, %.loopexit47 ], [ %i.ck, %bb.n ]
  %i.dd = add i64 %i.dc, -1                       ; 3 uses
  %i.de = zext i32 %1 to i64
  %i.df = and i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !48 ; 2 uses
  %i.dj = getelementptr inbounds nuw [56 x i8], ptr %i.dg, i64 %i.df ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !48 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, %i.di
  br i1 %i.dl, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS9_.exit.i
  %i.dm = icmp eq i32 %i.dk, %1
  br i1 %i.dm, label %_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEESt4hashIjESt8equal_toIjEEixERKj.exit, label %.lr.ph61

._crit_edge.i:                                    ; preds = %.lr.ph61, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS9_.exit.i
  %.lcssa.i = phi ptr [ %i.dj, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEEES2_IKjS7_ENS0_16ItemInterfaceMapIjS7_EESt4hashIjESt8equal_toIjEE14rehash_if_fullERS9_.exit.i ], [ %i.dt, %.lr.ph61 ] ; 2 uses
  store i32 %1, ptr %.lcssa.i, align 8, !tbaa !112
  %i.dn = load i64, ptr %i.ch, align 8, !tbaa !106
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.ch, align 8, !tbaa !106
  br label %_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEESt4hashIjESt8equal_toIjEEixERKj.exit

.lr.ph.i:                                         ; preds = %.lr.ph61
  %i.dp = icmp eq i32 %i.du, %1
  br i1 %i.dp, label %_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEESt4hashIjESt8equal_toIjEEixERKj.exit, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.02030.i5.i60 = phi i64 [ %i.dq, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.02129.i6.i59 = phi i64 [ %i.ds, %.lr.ph.i ], [ %i.df, %.lr.ph.i.preheader ]
  %i.dq = add i64 %.02030.i5.i60, 1               ; 3 uses
  %i.dr = add i64 %i.dq, %.02129.i6.i59
  %i.ds = and i64 %i.dr, %i.dd                    ; 2 uses
  %.not.i3.i = icmp ule i64 %i.dq, %i.dd
  tail call void @llvm.assume(i1 %.not.i3.i)
  %i.dt = getelementptr inbounds nuw [56 x i8], ptr %i.dg, i64 %i.ds ; 3 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !48 ; 2 uses
  %i.dv = icmp eq i32 %i.du, %i.di
  br i1 %i.dv, label %._crit_edge.i, label %.lr.ph.i

_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEESt4hashIjESt8equal_toIjEEixERKj.exit: ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i
  %i.dw = phi ptr [ %.lcssa.i, %._crit_edge.i ], [ %i.dj, %.lr.ph.i.preheader ], [ %i.dt, %.lr.ph.i ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 5 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !113 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 20 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !114
  %i.ec = icmp eq i32 %i.dz, %i.eb
  br i1 %i.ec, label %bb.q, label %._crit_edge.i30

._crit_edge.i30:                                  ; preds = %_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEESt4hashIjESt8equal_toIjEEixERKj.exit
  %.pre.i31 = load ptr, ptr %i.dx, align 8, !tbaa !115
  br label %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE9push_backERKS3_.exit

bb.q:                                             ; preds = %_ZN4Luau12DenseHashMapIjNS_11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EEESt4hashIjESt8equal_toIjEEixERKj.exit
  %i.ed = add i32 %i.dz, 1
  %i.ee = lshr i32 %i.dz, 1
  %i.ef = add i32 %i.ee, %i.dz                    ; 2 uses
  %i.eg = icmp ugt i32 %i.ef, %i.ed
  %i.eh = add i32 %i.dz, 5
  %.09.i.i = select i1 %i.eg, i32 %i.ef, i32 %i.eh ; 2 uses
  %i.ei = zext i32 %.09.i.i to i64
  %i.ej = shl nuw nsw i64 %i.ei, 4
  %i.ek = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #27 ; 4 uses
  %i.el = load ptr, ptr %i.dx, align 8, !tbaa !115 ; 5 uses
  %i.em = load i32, ptr %i.dy, align 8, !tbaa !113 ; 3 uses
  %i.en = zext i32 %i.em to i64
  %.idx.i.i = shl nuw nsw i64 %i.en, 4            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.em, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.q
  %i.ep = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.eq = lshr exact i64 %i.ep, 4
  %i.er = add nuw nsw i64 %i.eq, 1
  %xtraiter = and i64 %i.er, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.prol = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.el, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.013.i.i.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.08.012.i.i.i.i.i.i.prol, i64 16, i1 false), !tbaa.struct !117
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !159

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.et, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.08.012.i.i.i.i.i.i.unr = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.es, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.eu = icmp ult i64 %i.ep, 48
  br i1 %i.eu, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.013.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.08.012.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !117
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ew, ptr noundef nonnull align 4 dereferenceable(16) %i.ev, i64 16, i1 false), !tbaa.struct !117
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ey, ptr noundef nonnull align 4 dereferenceable(16) %i.ex, i64 16, i1 false), !tbaa.struct !117
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fa, ptr noundef nonnull align 4 dereferenceable(16) %i.ez, i64 16, i1 false), !tbaa.struct !117
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.fb, %i.eo
  br i1 %.not.i.i.i.i.i.i.3, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.not.i.i32 = icmp eq ptr %i.el, %i.fd
  br i1 %.not.i.i32, label %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE4growEj.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.el) #23
  %.pre2.pre.i = load i32, ptr %i.dy, align 8, !tbaa !113
  br label %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE4growEj.exit.i: ; preds = %bb.r, %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i
  %.pre2.i = phi i32 [ %i.em, %_ZSt18uninitialized_moveIPN4Luau7CodeGen3X6414ExitSyncArgX64ES4_ET0_T_S6_S5_.exit.i.i ], [ %.pre2.pre.i, %bb.r ]
  store ptr %i.ek, ptr %i.dx, align 8, !tbaa !115
  store i32 %.09.i.i, ptr %i.ea, align 4, !tbaa !114
  br label %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE9push_backERKS3_.exit

_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE9push_backERKS3_.exit: ; preds = %._crit_edge.i30, %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE4growEj.exit.i
  %i.fe = phi i32 [ %i.dz, %._crit_edge.i30 ], [ %.pre2.i, %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE4growEj.exit.i ]
  %i.ff = phi ptr [ %.pre.i31, %._crit_edge.i30 ], [ %i.ek, %_ZN4Luau11SmallVectorINS_7CodeGen3X6414ExitSyncArgX64ELj2EE4growEj.exit.i ]
  %i.fg = zext i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fg ; 5 uses
  store i32 %i.i, ptr %i.fh, align 4, !tbaa !48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i8 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !54
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 5
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !54
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 6
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !54
  %.sroa.1334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i56 %.sroa.1334.1, ptr %.sroa.1334.0..sroa_idx, align 4
  %i.fi = load i32, ptr %i.dy, align 8, !tbaa !113
  %i.fj = add i32 %i.fi, 1
end_hunk_0
