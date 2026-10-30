Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDecl?download=true
inline.NumInlined: 28669
inline.NumDeleted: 12983
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZSt13__adjust_heapIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiaglS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_13ActOnPopScopeES2_S4_E3$_2EEEvT_T0_SD_T1_T2_":bb.a
  store i64 %i.bt, ptr %.sroa.3.0..sroa_idx40, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !820 ; 6 uses
  %.not.i.i.i15.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i15.i, label %"_ZSt11__push_heapIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiaglS5_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_13ActOnPopScopeES2_S4_E3$_2EEEvT_T0_SD_T1_RT2_.exit", label %bb.r

bb.r:                                             ; preds = %.critedge.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !821 ; 4 uses
  %.not.i.i.i.i16.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i16.i, label %"_ZSt11__push_heapIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiaglS5_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_13ActOnPopScopeES2_S4_E3$_2EEEvT_T0_SD_T1_RT2_.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = icmp uge ptr %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 14848 ; 2 uses
  %i.db = icmp ule ptr %i.cw, %i.da
  %or.cond.i.i.i.i.i17.i = select i1 %i.cz, i1 %i.db, i1 false
  br i1 %or.cond.i.i.i.i.i17.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 14976 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !906 ; 2 uses
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !906
  %i.df = zext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.df
  store ptr %i.cw, ptr %i.dg, align 8, !tbaa !907
  br label %"_ZSt11__push_heapIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiaglS5_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_13ActOnPopScopeES2_S4_E3$_2EEEvT_T0_SD_T1_RT2_.exit"

bb.u:                                             ; preds = %bb.s
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.cw) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 928) #29
  br label %"_ZSt11__push_heapIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiaglS5_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_13ActOnPopScopeES2_S4_E3$_2EEEvT_T0_SD_T1_RT2_.exit"

"_ZSt11__push_heapIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiaglS5_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_13ActOnPopScopeES2_S4_E3$_2EEEvT_T0_SD_T1_RT2_.exit": ; preds = %bb.t, %bb.u, %.critedge.i, %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store i32 %i.bw, ptr %i.dh, align 8, !tbaa !1594
  store <2 x ptr> %i.bx, ptr %i.cv, align 8, !tbaa !920
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiagN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_13ActOnPopScopeES2_S4_E3$_2EEEvT_SC_T0_"(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca { %"class.clang::SourceLocation", %"class.std::optional.1497", [4 x i8] }, align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.020 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not21 = icmp eq ptr %.020, %1
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.023 = phi ptr [ %.020, %.lr.ph ], [ %.0, %bb.m ] ; 7 uses
  %.pn22 = phi ptr [ %0, %.lr.ph ], [ %.023, %bb.m ] ; 3 uses
  %.0.val = load i32, ptr %.023, align 4, !tbaa !857
  %.val = load i32, ptr %0, align 4, !tbaa !857
  %i.f = icmp ult i32 %.0.val, %.val
  br i1 %i.f, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(12) %.023, i64 12, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.pn22, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn22, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1594
  %i.j = load <2 x ptr>, ptr %i.g, align 8, !tbaa !920
  store ptr null, ptr %i.g, align 8, !tbaa !820
  %i.k = ptrtoint ptr %.023 to i64
  %i.l = sub i64 %i.k, %i.b                       ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiagS6_ET0_T_S8_S7_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn22, i64 80
  %i.o = udiv exact i64 %i.l, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ai, %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit.i.i.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.q, %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit.i.i.i.i.i ], [ %i.n, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.078.i.i.i.i.i = phi ptr [ %i.p, %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit.i.i.i.i.i ], [ %.023, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 12, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !820  ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !821  ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp uge ptr %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 14848 ; 2 uses
  %i.x = icmp ule ptr %i.s, %i.w
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 14976 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !906  ; 2 uses
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !906
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ab
  store ptr %i.s, ptr %i.ac, align 8, !tbaa !907
  br label %_ZN5clang20DiagStorageAllocator10DeallocateEPNS_17DiagnosticStorageE.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.s) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 928) #29
  br label %_ZN5clang20DiagStorageAllocator10DeallocateEPNS_17DiagnosticStorageE.exit.i.i.i.i.i.i.i.i.i

_ZN5clang20DiagStorageAllocator10DeallocateEPNS_17DiagnosticStorageE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.r, align 8, !tbaa !820
  br label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit.i.i.i.i.i

_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit.i.i.i.i.i: ; preds = %_ZN5clang20DiagStorageAllocator10DeallocateEPNS_17DiagnosticStorageE.exit.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1594
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !1594
  %i.ah = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !920
  store <2 x ptr> %i.ah, ptr %i.r, align 8, !tbaa !920
  store ptr null, ptr %i.ad, align 8, !tbaa !820
  %i.ai = add nsw i64 %.010.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiagS6_ET0_T_S8_S7_.exit, !llvm.loop !4344

_ZSt13move_backwardIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiagS6_ET0_T_S8_S7_.exit: ; preds = %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit.i.i.i.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0, i64 12, i1 false)
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !820 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiagS6_ET0_T_S8_S7_.exit
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !821 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp uge ptr %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 14848 ; 2 uses
  %i.ao = icmp ule ptr %i.ak, %i.an
  %or.cond.i.i.i.i.i = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 14976 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !906 ; 2 uses
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !906
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.as
  store ptr %i.ak, ptr %i.at, align 8, !tbaa !907
  br label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.ak) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 928) #29
  br label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit

_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit: ; preds = %bb.j, %bb.k, %_ZSt13move_backwardIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiagS6_ET0_T_S8_S7_.exit, %bb.h
  store i32 %i.i, ptr %i.e, align 8, !tbaa !1594
  store <2 x ptr> %i.j, ptr %i.c, align 8, !tbaa !920
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiagN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_13ActOnPopScopeES2_S4_E3$_2EEEvT_T0_"(ptr noundef nonnull %.023)
  br label %bb.m

bb.m:                                             ; preds = %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit, %bb.l
  %.0 = getelementptr inbounds nuw i8, ptr %.023, i64 40 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !4345

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIPZN5clang4Sema13ActOnPopScopeENS0_14SourceLocationEPNS0_5ScopeEE10LocAndDiagN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_13ActOnPopScopeES2_S4_E3$_2EEEvT_T0_"(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.a = load i64, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1594
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !821
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !820
  store ptr null, ptr %i.b, align 8, !tbaa !820
  %.021 = getelementptr inbounds i8, ptr %0, i64 -40 ; 2 uses
  %.0.val22 = load i32, ptr %.021, align 8, !tbaa !857
  %i.h = icmp ult i32 %.sroa.0.0.copyload, %.0.val22
  br i1 %i.h, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  %.sroa.5.0..09.sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %i.a, ptr %.sroa.5.0..09.sroa_idx32, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit16

.lr.ph:                                           ; preds = %bb.a, %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit
  %.024 = phi ptr [ %.0, %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit ], [ %.021, %bb.a ] ; 11 uses
  %.0923 = phi ptr [ %.024, %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit ], [ %0, %bb.a ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0923, ptr noundef nonnull align 8 dereferenceable(40) %.024, i64 12, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.0923, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !820  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.0923, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !821  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp uge ptr %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 14848 ; 2 uses
  %i.p = icmp ule ptr %i.k, %i.o
  %or.cond.i.i.i.i.i = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 14976 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !906  ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !906
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.t
  store ptr %i.k, ptr %i.u, align 8, !tbaa !907
  br label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.k) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 928) #29
  br label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit

_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit: ; preds = %bb.d, %bb.e, %.lr.ph, %bb.b
  %i.v = getelementptr inbounds i8, ptr %.0923, i64 -24 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.0923, i64 -8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1594
  %i.y = getelementptr inbounds nuw i8, ptr %.0923, i64 32
  store i32 %i.x, ptr %i.y, align 8, !tbaa !1594
  %i.z = load <2 x ptr>, ptr %i.v, align 8, !tbaa !920
  store <2 x ptr> %i.z, ptr %i.j, align 8, !tbaa !920
  store ptr null, ptr %i.v, align 8, !tbaa !820
  %.0 = getelementptr inbounds i8, ptr %.024, i64 -40 ; 2 uses
  %.0.val = load i32, ptr %.0, align 8, !tbaa !857
  %i.aa = icmp ult i32 %.sroa.0.0.copyload, %.0.val
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !4346

._crit_edge:                                      ; preds = %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !820 ; 6 uses
  store i32 %.sroa.0.0.copyload, ptr %.024, align 8
  %.sroa.5.0..09.sroa_idx = getelementptr inbounds nuw i8, ptr %.024, i64 4
  store i64 %i.a, ptr %.sroa.5.0..09.sroa_idx, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.024, i64 16 ; 4 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit16, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %.024, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !821 ; 4 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i13, label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp uge ptr %.pre, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 14848 ; 2 uses
  %i.ag = icmp ule ptr %.pre, %i.af
  %or.cond.i.i.i.i.i14 = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i.i.i.i14, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 14976 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !906 ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !906
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ak
  store ptr %.pre, ptr %i.al, align 8, !tbaa !907
  br label %_ZN5clang20DiagStorageAllocator10DeallocateEPNS_17DiagnosticStorageE.exit.i.i.i.i15

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %.pre) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 928) #29
  br label %_ZN5clang20DiagStorageAllocator10DeallocateEPNS_17DiagnosticStorageE.exit.i.i.i.i15

_ZN5clang20DiagStorageAllocator10DeallocateEPNS_17DiagnosticStorageE.exit.i.i.i.i15: ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.ab, align 8, !tbaa !820
  br label %_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit16

_ZZN5clang4Sema13ActOnPopScopeENS_14SourceLocationEPNS_5ScopeEEN10LocAndDiagaSEOS4_.exit16: ; preds = %._crit_edge.thread, %._crit_edge, %bb.f, %_ZN5clang20DiagStorageAllocator10DeallocateEPNS_17DiagnosticStorageE.exit.i.i.i.i15
  %i.am = phi ptr [ %i.i, %._crit_edge.thread ], [ %i.ab, %._crit_edge ], [ %i.ab, %bb.f ], [ %i.ab, %_ZN5clang20DiagStorageAllocator10DeallocateEPNS_17DiagnosticStorageE.exit.i.i.i.i15 ]
  %.09.lcssa34 = phi ptr [ %0, %._crit_edge.thread ], [ %.024, %._crit_edge ], [ %.024, %bb.f ], [ %.024, %_ZN5clang20DiagStorageAllocator10DeallocateEPNS_17DiagnosticStorageE.exit.i.i.i.i15 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.09.lcssa34, i64 32
  store i32 %i.d, ptr %i.an, align 8, !tbaa !1594
  store ptr %i.g, ptr %i.am, align 8, !tbaa !820
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.lcssa34, i64 24
  store ptr %i.f, ptr %i.ao, align 8, !tbaa !821
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang11ParmVarDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !877
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #28
  %i.f = load ptr, ptr %0, align 8, !tbaa !876
  %i.g = load i32, ptr %i.a, align 8, !tbaa !877
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !877
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !877
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm9remove_ifIRNS_11SmallVectorIPN5clang4AttrELj4EEEZNS2_4Decl9dropAttrsIJNS2_13ConstInitAttrEEEEvvEUlS4_E_EEDaOT_T0_(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !876    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !877  ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %.idx2 = shl nuw nsw i64 %i.d, 3                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx2 ; 5 uses
  %i.f = lshr i64 %i.d, 2                         ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.g = and i64 %.idx2, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.a, i64 %i.g
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %i.ab, %bb.e ], [ %i.f, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02940.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.a, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.h = load ptr, ptr %.02940.i.i.i.i, align 8, !tbaa !1563
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.j = load i16, ptr %i.i, align 4
  %i.k = icmp eq i16 %i.j, 192
  br i1 %i.k, label %_ZSt9__find_ifIPPN5clang4AttrEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Decl9dropAttrsIJNS0_13ConstInitAttrEEEEvvEUlS2_E_EEET_SC_SC_T0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1563
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.o = load i16, ptr %i.n, align 4
  %i.p = icmp eq i16 %i.o, 192
  br i1 %i.p, label %_ZSt9__find_ifIPPN5clang4AttrEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Decl9dropAttrsIJNS0_13ConstInitAttrEEEEvvEUlS2_E_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1563
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.t = load i16, ptr %i.s, align 4
  %i.u = icmp eq i16 %i.t, 192
  br i1 %i.u, label %_ZSt9__find_ifIPPN5clang4AttrEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Decl9dropAttrsIJNS0_13ConstInitAttrEEEEvvEUlS2_E_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit16, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1563
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.y = load i16, ptr %i.x, align 4
  %i.z = icmp eq i16 %i.y, 192
  br i1 %i.z, label %_ZSt9__find_ifIPPN5clang4AttrEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Decl9dropAttrsIJNS0_13ConstInitAttrEEEEvvEUlS2_E_EEET_SC_SC_T0_.exit.i.i.loopexit.split.loop.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.02940.i.i.i.i, i64 32
  %i.ab = add nsw i64 %.041.i.i.i.i, -1
  %i.ac = icmp sgt i64 %.041.i.i.i.i, 1
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !4347

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %i.ad = and i32 %i.c, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi47.i.i.i.i = phi i32 [ %i.ad, %._crit_edge.loopexit.i.i.i.i ], [ %i.c, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  switch i32 %.pre-phi47.i.i.i.i, label %_ZSt9remove_ifIPPN5clang4AttrEZNS0_4Decl9dropAttrsIJNS0_13ConstInitAttrEEEEvvEUlS2_E_ET_S8_S8_T0_.exit [
    i32 3, label %bb.f
    i32 2, label %bb.h
    i32 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !1563
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
end_hunk_0
