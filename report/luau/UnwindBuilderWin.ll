Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/UnwindBuilderWin?download=true
inline.NumInlined: 166
inline.NumDeleted: 93
begin_hunk_0_@_ZN4Luau7CodeGen16UnwindBuilderWin13startFunctionEv:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.j, align 4, !tbaa !30
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !30
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store ptr %i.m, ptr %i.i, align 8, !tbaa !28
  br label %_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !31   ; 4 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = sdiv exact i64 %i.q, 12                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 768614336404564650)
  %i.w = select i1 %i.u, i64 768614336404564650, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = mul nuw nsw i64 %i.w, 12
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #14 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 4 uses
  store i32 0, ptr %i.z, align 4, !tbaa !30
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx2, align 4, !tbaa !30
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %i.g, ptr %.sroa.6.0..sroa_idx4, align 4, !tbaa !30
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ae) #15
  br label %_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.y, ptr %i.h, align 8, !tbaa !31
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr %i.k, align 8, !tbaa !29
  br label %_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i, label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4Luau7CodeGen13UnwindCodeWinES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau7CodeGen13UnwindCodeWinES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE9push_backERKS2_.exit
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !33
  br label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen17UnwindFunctionWinESaIS2_EE9push_backERKS2_.exit, %_ZSt8_DestroyIPN4Luau7CodeGen13UnwindCodeWinES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !34
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ah to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, 32
  br i1 %i.ap, label %_ZNSt12_Vector_baseIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE5clearEv.exit
  %i.aq = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 4 uses
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 4 uses
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %bb.g, label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %i.ar, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ar, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !34
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.az) #15
  br label %_ZNSt12_Vector_baseIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !32
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ba, ptr %i.ak, align 8, !tbaa !34
  br label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE5clearEv.exit, %_ZNSt12_Vector_baseIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store i8 0, ptr %i.bb, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1097
  store i8 4, ptr %i.bc, align 1, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1098
  store i8 0, ptr %i.bd, align 2, !tbaa !37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen16UnwindBuilderWin14finishFunctionEjj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1099) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -12
  store i32 %1, ptr %i.c, align 4, !tbaa !43
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  store i32 %2, ptr %i.d, align 4, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.f = load i8, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 1
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1097
  %i.q = load i8, ptr %i.p, align 1
  %i.r = lshr i8 %i.q, 3
  %i.s = and i8 %i.r, 15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1098
  %i.u = load i8, ptr %i.t, align 2, !tbaa !37
  %i.v = shl i8 %i.u, 4
  %i.w = or disjoint i8 %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27   ; 4 uses
  store i8 1, ptr %i.y, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %i.f, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 %i.o, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  store i8 %i.w, ptr %.sroa.9.0..sroa_idx, align 1
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 3 uses
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !27
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !45  ; 3 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !45  ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr i8, ptr %i.aa, i64 %i.ag
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ai = phi ptr [ %i.an, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ]
  %.011 = phi i64 [ %i.al, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.pn10 = phi ptr [ %.09, %.lr.ph ], [ %i.ah, %.lr.ph.preheader ]
  %.09 = getelementptr i8, ptr %.pn10, i64 -2     ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %.011
  %i.ak = load i16, ptr %i.aj, align 1
  store i16 %i.ak, ptr %.09, align 1
  %i.al = add nuw i64 %.011, 1                    ; 2 uses
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !32  ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = ashr exact i64 %i.aq, 1
  %i.as = icmp ult i64 %i.al, %i.ar
  br i1 %i.as, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !41

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !27
  %3 = and i64 %i.aq, 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %.loopexit.loopexit
  %.pre-phi17 = phi i64 [ %3, %.loopexit.loopexit ], [ 0, %bb.a ]
  %.pre-phi17.a = phi i64 [ %i.aq, %.loopexit.loopexit ], [ 0, %bb.a ]
  %i.at = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.aa, %bb.a ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.pre-phi17.a
  %spec.select = getelementptr inbounds nuw i8, ptr %i.au, i64 %.pre-phi17
  store ptr %spec.select, ptr %i.x, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4Luau7CodeGen16UnwindBuilderWin10finishInfoEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4Luau7CodeGen16UnwindBuilderWin11prologueA64EjjSt16initializer_listINS0_3A6411RegisterA64EE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2, ptr nofree readnone captures(none) %3, i64 %4) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen16UnwindBuilderWin11prologueX64EjjbSt16initializer_listINS0_3X6411RegisterX64EERKSt6vectorIS4_SaIS4_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1099) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree readonly captures(address) %4, i64 %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #3 align 2 {
bb.a:
  br i1 %3, label %bb.b, label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit58

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 20482, ptr %i.c, align 1, !tbaa !36
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !33
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775806
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add i64 %.sroa.speculated.i.i.i.i, %i.m  ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 4611686018427387903)
  %i.q = select i1 %i.o, i64 4611686018427387903, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #14 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store i16 20482, ptr %i.t, align 1, !tbaa !36
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #15
  br label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !32
  store ptr %i.v, ptr %i.b, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.q ; 2 uses
  store ptr %i.z, ptr %i.d, align 8, !tbaa !34
  br label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.aa = phi ptr [ %.pre, %bb.c ], [ %i.z, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.g, %bb.c ], [ %i.v, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1097
  store i8 44, ptr %i.ac, align 1, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1098
  store i8 0, ptr %i.ad, align 2, !tbaa !37
  %.not.i.i51 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i51, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit
  store i16 773, ptr %i.ab, align 1, !tbaa !36
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store ptr %i.af, ptr %i.b, align 8, !tbaa !33
  br label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit58

bb.i:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !32  ; 4 uses
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775806
  br i1 %i.ak, label %bb.j, label %_ZNKSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52: ; preds = %bb.i
  %i.al = ashr exact i64 %i.aj, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i53 = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add i64 %.sroa.speculated.i.i.i.i53, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 4611686018427387903)
  %i.ap = select i1 %i.an, i64 4611686018427387903, i64 %i.ao ; 3 uses
  %.not.i.i.i.i54 = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i54)
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #14 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store i16 773, ptr %i.as, align 1, !tbaa !36
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.k, label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i55

bb.k:                                             ; preds = %_ZNKSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i55

_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i55: ; preds = %bb.k, %_ZNKSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i52
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %.not.i17.i.i.i56 = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i56, label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i57, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i55
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ax) #15
  br label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i57

_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i57: ; preds = %bb.l, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i55
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !32
  store ptr %i.au, ptr %i.b, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ay, ptr %i.d, align 8, !tbaa !34
  br label %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit58

_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit58: ; preds = %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i57, %bb.h, %bb.a
  %.044 = phi i32 [ 0, %bb.a ], [ 5, %bb.h ], [ 5, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i57 ] ; 2 uses
  %.0 = phi i32 [ 8, %bb.a ], [ 16, %bb.h ], [ 16, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i57 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %.not193 = icmp samesign eq i64 %5, 0
  br i1 %.not193, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit58
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.bd = trunc i64 %5 to i32
  %i.be = shl i32 %i.bd, 3
  %i.bf = add i32 %.0, %i.be
  %.pre207 = load ptr, ptr %i.bb, align 8, !tbaa !33
  %.pre209 = load ptr, ptr %i.bc, align 8, !tbaa !34
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit66, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit58
  %.145.lcssa = phi i32 [ %.044, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit58 ], [ %i.bv, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit66 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit58 ], [ %i.bf, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit66 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !49 ; 2 uses
  %i.bi = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = shl i32 %i.bm, 4                        ; 2 uses
  %i.bo = icmp eq ptr %i.bi, %i.bh
  %i.bp = and i32 %.1.lcssa, 8
  %.not50 = icmp eq i32 %i.bp, 0
  %or.cond = select i1 %i.bo, i1 true, i1 %.not50
  %i.bq = or disjoint i32 %i.bn, 8
  %.046 = select i1 %or.cond, i32 %i.bn, i32 %i.bq
  %i.br = icmp ult i32 %2, 129
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 6 uses
  br i1 %i.br, label %bb.s, label %bb.y

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit66
  %i.bt = phi ptr [ %.pre209, %.lr.ph ], [ %i.cu, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit66 ] ; 2 uses
  %i.bu = phi ptr [ %.pre207, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit66 ] ; 2 uses
  %.145195 = phi i32 [ %.044, %.lr.ph ], [ %i.bv, %_ZNSt6vectorIN4Luau7CodeGen13UnwindCodeWinESaIS2_EE9push_backEOS2_.exit66 ]
end_hunk_0
