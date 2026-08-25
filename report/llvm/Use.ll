Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Use?download=true
begin_hunk_0
$_ZTVN4llvm9sandboxir6UseSetE = comdat any

$_ZTVN4llvm9sandboxir7UseSwapE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN4llvm9sandboxir6UseSetE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN4llvm9sandboxir6UseSet6revertERNS0_7TrackerE, ptr @_ZN4llvm9sandboxir6UseSet6acceptEv, ptr @_ZN4llvm9sandboxir12IRChangeBaseD2Ev, ptr @_ZN4llvm9sandboxir6UseSetD0Ev] }, comdat, align 8
@_ZTVN4llvm9sandboxir7UseSwapE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN4llvm9sandboxir7UseSwap6revertERNS0_7TrackerE, ptr @_ZN4llvm9sandboxir7UseSwap6acceptEv, ptr @_ZN4llvm9sandboxir12IRChangeBaseD2Ev, ptr @_ZN4llvm9sandboxir7UseSwapD0Ev] }, comdat, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm9sandboxir3Use3getEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %0, align 8, !tbaa !14
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = tail call noundef ptr @_ZNK4llvm9sandboxir7Context8getValueEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(488) %i.b, ptr noundef %i.d) #7
  ret ptr %i.e
}

declare noundef ptr @_ZNK4llvm9sandboxir7Context8getValueEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(488), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9sandboxir3Use3setEPNS0_5ValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call noundef zeroext i1 @_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_6UseSetEJNS0_3UseEEEEbDpT0_(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull byval(%"class.llvm::sandboxir::Use") align 8 %0) ; 0 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !26
  %.not2.i.i = icmp eq ptr %i.k, null
  br i1 %.not2.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.i, ptr %i.l, align 8, !tbaa !24
  store ptr null, ptr %i.j, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.h, align 8, !tbaa !24
  br label %_ZN4llvm3Use14removeFromListEv.exit.i

_ZN4llvm3Use14removeFromListEv.exit.i:            ; preds = %bb.d, %bb.a
  store ptr %i.g, ptr %i.e, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN4llvm3Use3setEPNS_5ValueE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i
  %i.m = load i8, ptr %i.g, align 8, !tbaa !27
  %i.n = icmp ugt i8 %i.m, 10
  br i1 %i.n, label %bb.f, label %_ZN4llvm3Use3setEPNS_5ValueE.exit

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !25
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !24
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i:            ; preds = %bb.g, %bb.f
  store ptr %i.o, ptr %i.h, align 8, !tbaa !24
  store ptr %i.e, ptr %i.o, align 8, !tbaa !26
  br label %_ZN4llvm3Use3setEPNS_5ValueE.exit

_ZN4llvm3Use3setEPNS_5ValueE.exit:                ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i, %bb.e, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_6UseSetEJNS0_3UseEEEEbDpT0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef byval(%"class.llvm::sandboxir::Use") align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq i32 %i.b, 1                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #8, !noalias !45, !inline_history !48 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm9sandboxir6UseSetE, i64 16), ptr %i.d, align 8, !tbaa !49, !noalias !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !51, !noalias !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8, !noalias !45
  %i.i = load ptr, ptr %1, align 8, !tbaa !14, !noalias !45
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15, !noalias !45
  %i.k = tail call noundef ptr @_ZNK4llvm9sandboxir7Context8getValueEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(488) %i.h, ptr noundef %i.j) #7, !noalias !45, !inline_history !54
  store ptr %i.k, ptr %i.f, align 8, !tbaa !55, !noalias !45
  store ptr %i.d, ptr %2, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !62   ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !63
  %.not.i.i.not.i.i = icmp ult i32 %i.m, %i.q
  %.pre3.i.i = load ptr, ptr %0, align 8, !tbaa !64 ; 4 uses
  %i.r = ptrtoint ptr %i.d to i64                 ; 2 uses
  br i1 %.not.i.i.not.i.i, label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i.i, i64 %i.n
  %i.t = icmp uge ptr %2, %.pre3.i.i
  %i.u = icmp ult ptr %2, %i.s
  %spec.select.i.i.i.i.i.i = and i1 %i.t, %i.u
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %.critedge.i.i.i.i, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.v = ptrtoint ptr %2 to i64
  %i.w = ptrtoint ptr %.pre3.i.i to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.o)
  %i.y = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.x ; 2 uses
  %.pre = load i64, ptr %i.z, align 8, !tbaa !67
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit

.critedge.i.i.i.i:                                ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.o)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !64
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit

_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit: ; preds = %bb.b, %bb.d, %.critedge.i.i.i.i
  %i.aa = phi i64 [ %i.r, %bb.b ], [ %.pre, %bb.d ], [ %i.r, %.critedge.i.i.i.i ]
  %i.ab = phi ptr [ %.pre3.i.i, %bb.b ], [ %i.y, %bb.d ], [ %.pre.i.i, %.critedge.i.i.i.i ]
  %.016.i.i.i.i = phi ptr [ %2, %bb.b ], [ %i.z, %bb.d ], [ %2, %.critedge.i.i.i.i ]
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !62  ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  store i64 %i.aa, ptr %i.ae, align 8, !tbaa !67
  store ptr null, ptr %.016.i.i.i.i, align 8, !tbaa !67
  %i.af = add i32 %i.ac, 1
  store i32 %i.af, ptr %i.l, align 8, !tbaa !62
  %i.ag = load ptr, ptr %2, align 8, !tbaa !67    ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm9sandboxir6UseSetESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i: ; preds = %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #7, !inline_history !68
  br label %_ZNSt10unique_ptrIN4llvm9sandboxir6UseSetESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm9sandboxir6UseSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i, %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN4llvm9sandboxir6UseSetESt14default_deleteIS2_EED2Ev.exit
  ret i1 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4llvm9sandboxir3Use12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9sandboxir3Use4swapERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_7UseSwapEJNS0_3UseES4_EEEbDpT0_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.g = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #8, !noalias !70, !inline_history !73 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm9sandboxir7UseSwapE, i64 16), ptr %i.g, align 8, !tbaa !49, !noalias !70
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store ptr %i.g, ptr %2, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !63
  %.not.i.i.not.i.i.i = icmp ult i32 %i.k, %i.o
  %.pre3.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !64 ; 4 uses
  %i.p = ptrtoint ptr %i.g to i64                 ; 2 uses
  br i1 %.not.i.i.not.i.i.i, label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i.i.i, i64 %i.l
  %i.r = icmp uge ptr %2, %.pre3.i.i.i
  %i.s = icmp ult ptr %2, %i.q
  %spec.select.i.i.i.i.i.i.i = and i1 %i.r, %i.s
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.d, label %.critedge.i.i.i.i.i, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %.pre3.i.i.i to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %i.m), !inline_history !74
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.v ; 2 uses
  %.pre.i = load i64, ptr %i.x, align 8, !tbaa !67
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i

.critedge.i.i.i.i.i:                              ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %i.m), !inline_history !74
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !64
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i

_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.d, %bb.b
  %i.y = phi i64 [ %i.p, %bb.b ], [ %.pre.i, %bb.d ], [ %i.p, %.critedge.i.i.i.i.i ]
  %i.z = phi ptr [ %.pre3.i.i.i, %bb.b ], [ %i.w, %bb.d ], [ %.pre.i.i.i, %.critedge.i.i.i.i.i ]
  %.016.i.i.i.i.i = phi ptr [ %2, %bb.b ], [ %i.x, %bb.d ], [ %2, %.critedge.i.i.i.i.i ]
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !62  ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store i64 %i.y, ptr %i.ac, align 8, !tbaa !67
  store ptr null, ptr %.016.i.i.i.i.i, align 8, !tbaa !67
  %i.ad = add i32 %i.aa, 1
  store i32 %i.ad, ptr %i.j, align 8, !tbaa !62
  %i.ae = load ptr, ptr %2, align 8, !tbaa !67    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i: ; preds = %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #7, !inline_history !75
  br label %_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i, %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_7UseSwapEJNS0_3UseES4_EEEbDpT0_.exit

_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_7UseSwapEJNS0_3UseES4_EEEbDpT0_.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !14
  %i.aj = load ptr, ptr %1, align 8, !tbaa !14
  call void @_ZN4llvm3Use4swapERS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj) #7
  ret void
}

declare void @_ZN4llvm3Use4swapERS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #7 ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !64     ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 3               ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 %.idx.i  ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.a
  %i.i = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.j = lshr exact i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.c, i64 %.idx.i
  %bound0 = icmp ult ptr %i.c, %i.h
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 4611686018427387900      ; 3 uses
  %i.l = shl i64 %n.vec, 3                        ; 2 uses
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.d, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.o ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.d, i64 %i.o ; 4 uses
  %i.p = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !67, !alias.scope !76
  %wide.load7 = load <2 x i64>, ptr %i.p, align 8, !tbaa !67, !alias.scope !76
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !67, !alias.scope !79, !noalias !76
  store <2 x i64> %wide.load7, ptr %i.q, align 8, !tbaa !67, !alias.scope !79, !noalias !76
  %i.r = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !67, !alias.scope !76
  store <2 x ptr> splat (ptr null), ptr %i.r, align 8, !tbaa !67, !alias.scope !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.i.preheader9:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.m, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader9 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader9 ] ; 3 uses
  %i.t = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !67
  store i64 %i.t, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !67
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !85

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNSt10unique_ptrIN4llvm9sandboxir12IRChangeBaseESt14default_deleteIS2_EED2Ev.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZNSt10unique_ptrIN4llvm9sandboxir12IRChangeBaseESt14default_deleteIS2_EED2Ev.exit.i.i ], [ %i.h, %.lr.ph.i.i.preheader ]
  %i.w = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4llvm9sandboxir12IRChangeBaseESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i.i: ; preds = %.lr.ph.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #7, !inline_history !86
  br label %_ZNSt10unique_ptrIN4llvm9sandboxir12IRChangeBaseESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm9sandboxir12IRChangeBaseESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.d, %i.w
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !87

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit.loopexit: ; preds = %_ZNSt10unique_ptrIN4llvm9sandboxir12IRChangeBaseESt14default_deleteIS2_EED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !64
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit.loopexit, %bb.a
  %i.ab = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !88
  %i.ad = icmp eq ptr %i.ab, %i.b
  br i1 %i.ad, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE21takeAllocationForGrowEPS6_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit
  call void @free(ptr noundef %i.ab) #7
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE21takeAllocationForGrowEPS6_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE21takeAllocationForGrowEPS6_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE19moveElementsForGrowEPS6_.exit, %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !64
  %i.ae = trunc i64 %i.ac to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
end_hunk_0
