inline.NumInlined: 1089
inline.NumDeleted: 535
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper14setNativeStateERKN8facebook3jsi6ObjectESt10shared_ptrINS2_11NativeStateEE:bb.a
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper18NativeStateWrapper2vtE, ptr %i.h, align 8, !tbaa !233
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !51
  %i.l = load <2 x ptr>, ptr %2, align 8, !tbaa !79
  store ptr null, ptr %i.j, align 8, !tbaa !51
  store ptr null, ptr %2, align 8, !tbaa !240
  store <2 x ptr> %i.l, ptr %i.k, align 8, !tbaa !79
  store ptr null, ptr %3, align 8, !tbaa !240
  %i.m = invoke i64 %i.d(ptr noundef %i.f, ptr %.val.val, ptr noundef nonnull %i.h)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZNSt12__shared_ptrIN8facebook3jsi11NativeStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.m, 2
  %i.p = trunc i64 %i.o to i32
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %0, i32 noundef %i.p) #28
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt12__shared_ptrIN8facebook3jsi11NativeStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook3jsi11NativeStateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #25
  resume { ptr, i32 } %i.q
}

declare void @_ZN8facebook3jsi7Runtime14setPrototypeOfERKNS0_6ObjectERKNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

declare void @_ZN8facebook3jsi7Runtime14getPrototypeOfERKNS0_6ObjectE(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Value") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper11getPropertyERKN8facebook3jsi6ObjectERKNS2_10PropNameIDE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.facebook::jsi::Value") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !243
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %.val4 = load ptr, ptr %3, align 8, !tbaa !101
  %i.h = getelementptr i8, ptr %.val4, i64 16
  %.val4.val = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.i = tail call { i32, i64 } %i.d(ptr noundef %i.f, ptr %.val.val, ptr %.val4.val) ; 2 uses
  %i.j = extractvalue { i32, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i32, i64 } %i.i, 1        ; 2 uses
  %i.l = icmp eq i32 %i.j, 3
  br i1 %i.l, label %bb.b, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.45.8.extract.trunc = trunc i64 %i.k to i32
  tail call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %1, i32 noundef %.sroa.45.8.extract.trunc) #28, !noalias !244
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !244
  store i32 %i.j, ptr %4, align 8, !noalias !244
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.k, ptr %i.m, align 8, !noalias !244
  call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK14HermesABIValue(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !244
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper11getPropertyERKN8facebook3jsi6ObjectERKNS2_6StringE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.facebook::jsi::Value") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  %5 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.val3 = load ptr, ptr %3, align 8, !tbaa !101
  %i.a = getelementptr i8, ptr %.val3, i64 16
  %.val3.val = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.b = ptrtoint ptr %.val3.val to i64
  store i32 -2147483641, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.j = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.k = call { i32, i64 } %i.g(ptr noundef %i.i, ptr %.val.val, ptr noundef nonnull %5) ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i32, i64 } %i.k, 1        ; 2 uses
  %i.n = icmp eq i32 %i.l, 3
  br i1 %i.n, label %bb.b, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.44.8.extract.trunc = trunc i64 %i.m to i32
  call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %1, i32 noundef %.sroa.44.8.extract.trunc) #28, !noalias !248
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !248
  store i32 %i.l, ptr %4, align 8, !noalias !248
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.o, align 8, !noalias !248
  call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK14HermesABIValue(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

declare void @_ZN8facebook3jsi7Runtime11getPropertyERKNS0_6ObjectERKNS0_5ValueE(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Value") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper11hasPropertyERKN8facebook3jsi6ObjectERKNS2_10PropNameIDE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %.val5 = load ptr, ptr %2, align 8, !tbaa !101
  %i.h = getelementptr i8, ptr %.val5, i64 16
  %.val5.val = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.i = tail call i64 %i.d(ptr noundef %i.f, ptr %.val.val, ptr %.val5.val) ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIBoolOrError.exit

bb.b:                                             ; preds = %bb.a
  %i.k = lshr i64 %i.i, 2
  %i.l = trunc i64 %i.k to i32
  tail call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %0, i32 noundef %i.l) #28
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIBoolOrError.exit: ; preds = %bb.a
  %i.m = icmp ugt i64 %i.i, 3
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper11hasPropertyERKN8facebook3jsi6ObjectERKNS2_6StringE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.val4 = load ptr, ptr %2, align 8, !tbaa !101
  %i.a = getelementptr i8, ptr %.val4, i64 16
  %.val4.val = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.b = ptrtoint ptr %.val4.val to i64
  store i32 -2147483641, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !252
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %.val = load ptr, ptr %1, align 8, !tbaa !101
  %i.j = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.k = call i64 %i.g(ptr noundef %i.i, ptr %.val.val, ptr noundef nonnull %3) ; 3 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIBoolOrError.exit

bb.b:                                             ; preds = %bb.a
  %i.m = lshr i64 %i.k, 2
  %i.n = trunc i64 %i.m to i32
  call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %0, i32 noundef %i.n) #28
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIBoolOrError.exit: ; preds = %bb.a
  %i.o = icmp ugt i64 %i.k, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i1 %i.o
}

declare noundef zeroext i1 @_ZN8facebook3jsi7Runtime11hasPropertyERKNS0_6ObjectERKNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper16setPropertyValueERKN8facebook3jsi6ObjectERKNS2_10PropNameIDERKNS2_5ValueE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load i32, ptr %3, align 8, !tbaa !253    ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 0, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
    i32 1, label %.fold.split.i
    i32 2, label %bb.b
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i.i = zext nneg i8 %i.c to i64
  %.fca.1.insert.i.i = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52
  %.fca.1.insert.i18.i = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.e, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %5 = ptrtoint ptr %.val.i to i64                ; 4 uses
  switch i32 %i.a, label %.unreachabledefault.i [
    i32 6, label %bb.e
    i32 7, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %.fca.1.insert.i19.i = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %5, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.f:                                             ; preds = %bb.d
  %.fca.1.insert.i20.i = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %5, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.g:                                             ; preds = %bb.d
  %.fca.1.insert.i21.i = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %5, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

.unreachabledefault.i:                            ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.d
  %.fca.1.insert.i22.i = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %5, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

.fold.split.i:                                    ; preds = %bb.a
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %.fold.split.i
  %.pn16.i = phi { i32, i64 } [ %.fca.1.insert.i22.i, %bb.h ], [ { i32 0, i64 undef }, %bb.a ], [ %.fca.1.insert.i.i, %bb.b ], [ %.fca.1.insert.i18.i, %bb.c ], [ %.fca.1.insert.i19.i, %bb.e ], [ %.fca.1.insert.i20.i, %bb.f ], [ %.fca.1.insert.i21.i, %bb.g ], [ { i32 1, i64 undef }, %.fold.split.i ] ; 2 uses
  %i.i = extractvalue { i32, i64 } %.pn16.i, 0
  store i32 %i.i, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = extractvalue { i32, i64 } %.pn16.i, 1
  store i64 %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !258
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  %.val = load ptr, ptr %1, align 8, !tbaa !101
  %i.r = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.r, align 8, !tbaa !52
  %.val6 = load ptr, ptr %2, align 8, !tbaa !101
  %i.s = getelementptr i8, ptr %.val6, i64 16
  %.val6.val = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.t = call i64 %i.o(ptr noundef %i.q, ptr %.val.val, ptr %.val6.val, ptr noundef nonnull %4) ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIVoidOrError.exit

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
  %i.v = lshr i64 %i.t, 2
  %i.w = trunc i64 %i.v to i32
  call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %0, i32 noundef %i.w) #28
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIVoidOrError.exit: ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper16setPropertyValueERKN8facebook3jsi6ObjectERKNS2_6StringERKNS2_5ValueE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  %5 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.val5 = load ptr, ptr %2, align 8, !tbaa !101
  %i.a = getelementptr i8, ptr %.val5, i64 16
  %.val5.val = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.b = ptrtoint ptr %.val5.val to i64
  store i32 -2147483641, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.b, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.d = load i32, ptr %3, align 8, !tbaa !253    ; 2 uses
  switch i32 %i.d, label %bb.d [
    i32 0, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
    i32 1, label %.fold.split.i
    i32 2, label %bb.b
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i.i = zext nneg i8 %i.f to i64
  %.fca.1.insert.i.i6 = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !52
  %.fca.1.insert.i18.i = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.h, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !52
  %6 = ptrtoint ptr %.val.i to i64                ; 4 uses
  switch i32 %i.d, label %.unreachabledefault.i [
    i32 6, label %bb.e
    i32 7, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %.fca.1.insert.i19.i = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %6, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.f:                                             ; preds = %bb.d
  %.fca.1.insert.i20.i = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %6, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.g:                                             ; preds = %bb.d
  %.fca.1.insert.i21.i = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %6, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

.unreachabledefault.i:                            ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.d
  %.fca.1.insert.i22.i = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %6, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

.fold.split.i:                                    ; preds = %bb.a
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %.fold.split.i
  %.pn16.i = phi { i32, i64 } [ %.fca.1.insert.i22.i, %bb.h ], [ { i32 0, i64 undef }, %bb.a ], [ %.fca.1.insert.i.i6, %bb.b ], [ %.fca.1.insert.i18.i, %bb.c ], [ %.fca.1.insert.i19.i, %bb.e ], [ %.fca.1.insert.i20.i, %bb.f ], [ %.fca.1.insert.i21.i, %bb.g ], [ { i32 1, i64 undef }, %.fold.split.i ] ; 2 uses
  %i.l = extractvalue { i32, i64 } %.pn16.i, 0
  store i32 %i.l, ptr %5, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = extractvalue { i32, i64 } %.pn16.i, 1
  store i64 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !259
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %.val = load ptr, ptr %1, align 8, !tbaa !101
  %i.u = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.v = call i64 %i.r(ptr noundef %i.t, ptr %.val.val, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %bb.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIVoidOrError.exit

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
  %i.x = lshr i64 %i.v, 2
  %i.y = trunc i64 %i.x to i32
  call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %0, i32 noundef %i.y) #28
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIVoidOrError.exit: ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

declare void @_ZN8facebook3jsi7Runtime16setPropertyValueERKNS0_6ObjectERKNS0_5ValueES7_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

declare void @_ZN8facebook3jsi7Runtime14deletePropertyERKNS0_6ObjectERKNS0_10PropNameIDE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN8facebook3jsi7Runtime14deletePropertyERKNS0_6ObjectERKNS0_6StringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN8facebook3jsi7Runtime14deletePropertyERKNS0_6ObjectERKNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_123HermesABIRuntimeWrapper7isArrayERKN8facebook3jsi6ObjectE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !260
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = tail call i64 %i.d(ptr noundef %i.f, ptr %.val.val) ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIBoolOrError.exit

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.h, 2
  %i.k = trunc i64 %i.j to i32
  tail call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %0, i32 noundef %i.k) #28
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIBoolOrError.exit: ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 3
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_123HermesABIRuntimeWrapper13isArrayBufferERKN8facebook3jsi6ObjectE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef %i.f, ptr %.val.val)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_123HermesABIRuntimeWrapper10isFunctionERKN8facebook3jsi6ObjectE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef %i.f, ptr %.val.val)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_123HermesABIRuntimeWrapper12isHostObjectERKN8facebook3jsi6ObjectE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = tail call noundef ptr %i.d(ptr noundef %i.f, ptr %.val.val) ; 2 uses
  %.not.not.not = icmp eq ptr %i.h, null
  br i1 %.not.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !209
  %i.j = icmp eq ptr %i.i, @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper2vtE
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %spec.select = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_123HermesABIRuntimeWrapper14isHostFunctionERKN8facebook3jsi8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = tail call noundef ptr %i.d(ptr noundef %i.f, ptr %.val.val) ; 2 uses
  %.not.not.not = icmp eq ptr %i.h, null
  br i1 %.not.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !263
  %i.j = icmp eq ptr %i.i, @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapper2vtE
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %spec.select = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper16getPropertyNamesERKN8facebook3jsi6ObjectE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.facebook::jsi::Array") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !266
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = tail call i64 %i.d(ptr noundef %i.f, ptr %.val.val) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK21HermesABIArrayOrError.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.h, 2
  %i.k = trunc i64 %i.j to i32
  tail call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %1, i32 noundef %i.k) #28, !noalias !267
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK21HermesABIArrayOrError.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98, !noalias !273 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIArrayERK21HermesABIArrayOrError.exit, !prof !91

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK21HermesABIArrayOrError.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !99, !noalias !273
  %i.q = uitofp i64 %i.p to double
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load double, ptr %i.r, align 8, !tbaa !100, !noalias !273
  %i.t = fcmp ogt double %i.s, %i.q
  br i1 %i.t, label %.sink.split.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l), !noalias !273
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !98, !noalias !273 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.u, null
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15getValueAtIndexERKN8facebook3jsi5ArrayEm:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %5, align 8, !tbaa !61     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64   ; 3 uses
  %i.l = add nuw nsw i64 %i.k, 1
  store ptr %i.g, ptr %5, align 8, !tbaa !61
  store i64 0, ptr %i.j, align 8, !tbaa !64
  %i.m = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.g, align 8, !tbaa !52
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  store ptr %i.g, ptr %5, align 8, !tbaa !61
  store i64 0, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  store i64 %i.n, ptr %i.i, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread
  %.sink = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %i.o = phi i64 [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  store i8 0, ptr %i.g, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sink, ptr %i.p, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.o, ptr %i.q, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook3jsi18JSINativeExceptionE, i64 16), ptr %i.e, align 8, !tbaa !11
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN8facebook3jsi18JSINativeExceptionE, ptr nonnull @_ZN8facebook3jsi18JSINativeExceptionD1Ev) #28
          to label %bb.j unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %5, align 8, !tbaa !61     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.e
  %i.u = load i64, ptr %i.g, align 8, !tbaa !52
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @__cxa_free_exception(ptr %i.e) #25
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.x = uitofp i64 %3 to double
  store i32 4, ptr %7, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.af = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ag = call { i32, i64 } %i.ac(ptr noundef %i.ae, ptr %.val.val, ptr noundef nonnull %7) ; 2 uses
  %i.ah = extractvalue { i32, i64 } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i32, i64 } %i.ag, 1      ; 2 uses
  %i.aj = icmp eq i32 %i.ah, 3
  br i1 %i.aj, label %bb.h, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError.exit

bb.h:                                             ; preds = %bb.g
  %.sroa.412.8.extract.trunc = trunc i64 %i.ai to i32
  call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %1, i32 noundef %.sroa.412.8.extract.trunc) #28, !noalias !325
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !325
  store i32 %i.ah, ptr %4, align 8, !noalias !325
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !noalias !325
  call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK14HermesABIValue(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.w, %bb.f ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19setValueAtIndexImplERKN8facebook3jsi5ArrayEmRKNS2_5ValueE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  %7 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !324
  %.not = icmp ult i64 %2, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !61     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64   ; 3 uses
  %i.l = add nuw nsw i64 %i.k, 1
  store ptr %i.g, ptr %4, align 8, !tbaa !61
  store i64 0, ptr %i.j, align 8, !tbaa !64
  %i.m = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.g, align 8, !tbaa !52
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  store ptr %i.g, ptr %4, align 8, !tbaa !61
  store i64 0, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  store i64 %i.n, ptr %i.i, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread
  %.sink = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %i.o = phi i64 [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  store i8 0, ptr %i.g, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sink, ptr %i.p, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.o, ptr %i.q, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook3jsi18JSINativeExceptionE, i64 16), ptr %i.e, align 8, !tbaa !11
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN8facebook3jsi18JSINativeExceptionE, ptr nonnull @_ZN8facebook3jsi18JSINativeExceptionD1Ev) #28
          to label %bb.q unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %4, align 8, !tbaa !61     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.e
  %i.u = load i64, ptr %i.g, align 8, !tbaa !52
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.p

bb.f:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @__cxa_free_exception(ptr %i.e) #25
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.x = uitofp i64 %2 to double
  store i32 4, ptr %6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.x, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.z = load i32, ptr %3, align 8, !tbaa !253    ; 2 uses
  switch i32 %i.z, label %bb.j [
    i32 0, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
    i32 1, label %.fold.split.i
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i.i = zext nneg i8 %i.ab to i64
  %.fca.1.insert.i.i = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !52
  %.fca.1.insert.i18.i = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.ad, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.j:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !52
  %8 = ptrtoint ptr %.val.i to i64                ; 4 uses
  switch i32 %i.z, label %.unreachabledefault.i [
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %.fca.1.insert.i19.i = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %8, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.l:                                             ; preds = %bb.j
  %.fca.1.insert.i20.i = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %8, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.m:                                             ; preds = %bb.j
  %.fca.1.insert.i21.i = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %8, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

.unreachabledefault.i:                            ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %bb.j
  %.fca.1.insert.i22.i = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %8, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

.fold.split.i:                                    ; preds = %bb.g
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %.fold.split.i
  %.pn16.i = phi { i32, i64 } [ %.fca.1.insert.i22.i, %bb.n ], [ { i32 0, i64 undef }, %bb.g ], [ %.fca.1.insert.i.i, %bb.h ], [ %.fca.1.insert.i18.i, %bb.i ], [ %.fca.1.insert.i19.i, %bb.k ], [ %.fca.1.insert.i20.i, %bb.l ], [ %.fca.1.insert.i21.i, %bb.m ], [ { i32 1, i64 undef }, %.fold.split.i ] ; 2 uses
  %i.ah = extractvalue { i32, i64 } %.pn16.i, 0
  store i32 %i.ah, ptr %7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = extractvalue { i32, i64 } %.pn16.i, 1
  store i64 %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !259
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33
  %.val = load ptr, ptr %1, align 8, !tbaa !101
  %i.aq = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.ar = call i64 %i.an(ptr noundef %i.ap, ptr %.val.val, ptr noundef nonnull %6, ptr noundef nonnull %7) ; 2 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %bb.o, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIVoidOrError.exit

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
  %i.at = lshr i64 %i.ar, 2
  %i.au = trunc i64 %i.at to i32
  call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %0, i32 noundef %i.au) #28
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIVoidOrError.exit: ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.w, %bb.f ]
  resume { ptr, i32 } %.pn16

bb.q:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper30createFunctionFromHostFunctionERKN8facebook3jsi10PropNameIDEjSt8functionIFNS2_5ValueERNS2_7RuntimeERKS7_PSA_mEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.facebook::jsi::Function") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !328
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !329  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit.thread, label %bb.b

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit.thread: ; preds = %bb.a
  store ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapper2vtE, ptr %i.h, align 8, !tbaa !263
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !212
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapperC2ERS0_St8functionIFN8facebook3jsi5ValueERNS5_7RuntimeERKS6_PS9_mEE.exit

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !329  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %bb.q unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #27
  unreachable

_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !331  ; 2 uses
  store ptr %i.v, ptr %i.j, align 8, !tbaa !331
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !329  ; 3 uses
  store ptr %i.w, ptr %i.i, align 8, !tbaa !329
  store ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapper2vtE, ptr %i.h, align 8, !tbaa !263
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %i.x, align 8, !tbaa !212
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 24, i1 false)
  store ptr %i.v, ptr %i.z, align 8, !tbaa !331
  %.not.i.i.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapperC2ERS0_St8functionIFN8facebook3jsi5ValueERNS5_7RuntimeERKS6_PS9_mEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !333
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !329
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapperC2ERS0_St8functionIFN8facebook3jsi5ValueERNS5_7RuntimeERKS6_PS9_mEE.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapperC2ERS0_St8functionIFN8facebook3jsi5ValueERNS5_7RuntimeERKS6_PS9_mEE.exit: ; preds = %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit.thread, %_ZNSt8functionIFN8facebook3jsi5ValueERNS1_7RuntimeERKS2_PS5_mEEC2ERKS9_.exit, %bb.f
  %i.ab = invoke i64 %i.d(ptr noundef %i.f, ptr %.val.val, i32 noundef %3, ptr noundef nonnull %i.h)
          to label %bb.g unwind label %bb.n       ; 3 uses

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapperC2ERS0_St8functionIFN8facebook3jsi5ValueERNS5_7RuntimeERKS6_PS9_mEE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK24HermesABIFunctionOrError.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ad = lshr i64 %i.ab, 2
  %i.ae = trunc i64 %i.ad to i32
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %1, i32 noundef %i.ae) #28
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK24HermesABIFunctionOrError.exit.i: ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !98, !noalias !340 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.k, !prof !91

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK24HermesABIFunctionOrError.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !99, !noalias !340
  %i.ak = uitofp i64 %i.aj to double
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load double, ptr %i.al, align 8, !tbaa !100, !noalias !340
  %i.an = fcmp ogt double %i.am, %i.ak
  br i1 %i.an, label %.sink.split.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.af), !noalias !340
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !98, !noalias !340 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not4.i.i.i, label %.sink.split.i.i.i, label %bb.k

.sink.split.i.i.i:                                ; preds = %bb.j, %bb.i
  invoke fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %.noexc9 unwind label %bb.n

.noexc9:                                          ; preds = %.sink.split.i.i.i
  %.pre.i.i = load ptr, ptr %i.ag, align 8, !tbaa !98, !noalias !340
  br label %bb.k

bb.k:                                             ; preds = %.noexc9, %bb.j, %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK24HermesABIFunctionOrError.exit.i
  %i.ap = phi ptr [ %i.ah, %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK24HermesABIFunctionOrError.exit.i ], [ %i.ao, %bb.j ], [ %.pre.i.i, %.noexc9 ] ; 3 uses
  %i.aq = inttoptr i64 %i.ab to ptr
  %i.ar = getelementptr i8, ptr %i.ap, i64 16     ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !52, !noalias !340
  store ptr %.val.i.i.i, ptr %i.ag, align 8, !tbaa !98, !noalias !340
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store atomic i32 1, ptr %i.as monotonic, align 8, !noalias !340
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !52, !noalias !340
  store ptr %i.ap, ptr %0, align 8, !tbaa !101, !alias.scope !341
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !329 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = invoke noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.k, %bb.l
  ret void

bb.n:                                             ; preds = %.sink.split.i.i.i, %bb.h, %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapperC2ERS0_St8functionIFN8facebook3jsi5ValueERNS5_7RuntimeERKS6_PS9_mEE.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !329 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ay, null
  br i1 %.not.i10, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body unwind label %bb.p      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #27
  unreachable

bb.q:                                             ; preds = %bb.c, %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 48) #26
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o, %bb.q
  %.pn14 = phi { ptr, i32 } [ %i.p, %bb.q ], [ %i.ax, %bb.o ], [ %i.ax, %bb.n ]
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper4callERKN8facebook3jsi8FunctionERKNS2_5ValueEPS7_m(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.facebook::jsi::Value") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  %7 = alloca %struct.HermesABIValue, align 8     ; 6 uses
  %i.a = icmp ugt i64 %5, 576460752303423487
  br i1 %i.a, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.b = shl nuw nsw i64 %5, 4
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #24 ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %5
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit
  %i.e = ptrtoint ptr %.sroa.12.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.19.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.19.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.e, %._crit_edge.loopexit ]
  %.sroa.040.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.040.3, %._crit_edge.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.f = load i32, ptr %3, align 8, !tbaa !253    ; 2 uses
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.v
    i32 1, label %.fold.split.i
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i.i = zext nneg i8 %i.h to i64
  %.fca.1.insert.i.i = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i, 1
  br label %bb.v

bb.d:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52
  %.fca.1.insert.i18.i = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.j, 1
  br label %bb.v

bb.e:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !52
  %8 = ptrtoint ptr %.val.i to i64                ; 4 uses
  switch i32 %i.f, label %.unreachabledefault.i [
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %.fca.1.insert.i19.i = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %8, 1
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %.fca.1.insert.i20.i = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %8, 1
  br label %bb.v

bb.h:                                             ; preds = %bb.e
  %.fca.1.insert.i21.i = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %8, 1
  br label %bb.v

.unreachabledefault.i:                            ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  %.fca.1.insert.i22.i = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %8, 1
  br label %bb.v

.fold.split.i:                                    ; preds = %._crit_edge
  br label %bb.v

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit
  %.01071 = phi i64 [ %i.am, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.040.070 = phi ptr [ %.sroa.040.3, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %.sroa.12.069 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %.sroa.19.068 = phi ptr [ %.sroa.19.3, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.01071 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !253  ; 2 uses
  switch i32 %i.o, label %bb.l [
    i32 0, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24
    i32 1, label %.fold.split.i18
    i32 2, label %bb.j
    i32 3, label %bb.k
  ]

bb.j:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i.i16 = zext nneg i8 %i.q to i64
  %.fca.1.insert.i.i17 = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i16, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

bb.k:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !52
  %.fca.1.insert.i18.i14 = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.s, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

bb.l:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %.val.i19 = load ptr, ptr %i.v, align 8, !tbaa !52
  %9 = ptrtoint ptr %.val.i19 to i64              ; 4 uses
  switch i32 %i.o, label %.unreachabledefault.i24 [
    i32 6, label %bb.m
    i32 7, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %.fca.1.insert.i19.i22 = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %9, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

bb.n:                                             ; preds = %bb.l
  %.fca.1.insert.i20.i21 = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %9, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

bb.o:                                             ; preds = %bb.l
  %.fca.1.insert.i21.i20 = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %9, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

.unreachabledefault.i24:                          ; preds = %bb.l
  unreachable

bb.p:                                             ; preds = %bb.l
  %.fca.1.insert.i22.i23 = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %9, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

.fold.split.i18:                                  ; preds = %.lr.ph
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24: ; preds = %.lr.ph, %bb.j, %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %.fold.split.i18
  %.pn16.i15 = phi { i32, i64 } [ %.fca.1.insert.i22.i23, %bb.p ], [ { i32 0, i64 undef }, %.lr.ph ], [ %.fca.1.insert.i.i17, %bb.j ], [ %.fca.1.insert.i18.i14, %bb.k ], [ %.fca.1.insert.i19.i22, %bb.m ], [ %.fca.1.insert.i20.i21, %bb.n ], [ %.fca.1.insert.i21.i20, %bb.o ], [ { i32 1, i64 undef }, %.fold.split.i18 ] ; 2 uses
  %i.w = extractvalue { i32, i64 } %.pn16.i15, 0  ; 2 uses
  %i.x = extractvalue { i32, i64 } %.pn16.i15, 1  ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.069, %.sroa.19.068
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24
  store i32 %i.w, ptr %.sroa.12.069, align 8, !tbaa !344
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.069, i64 8
  store i64 %i.x, ptr %.sroa.637.0..sroa_idx, align 8, !tbaa !52
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit24
  %i.y = ptrtoint ptr %.sroa.12.069 to i64
  %i.z = ptrtoint ptr %.sroa.040.070 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775792
  br i1 %i.ab, label %bb.s, label %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #28
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.ac = ashr exact i64 %i.aa, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487)
  %i.ag = select i1 %i.ae, i64 576460752303423487, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 4
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #24
          to label %.noexc26 unwind label %.loopexit ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 3 uses
  store i32 %i.w, ptr %i.aj, align 8, !tbaa !344
  %.sroa.637.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.x, ptr %.sroa.637.0..sroa_idx38, align 8, !tbaa !52
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.t, label %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.t:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %.sroa.040.070, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.t, %.noexc26
  %.not.i17.i.i.i = icmp eq ptr %.sroa.040.070, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.070, i64 noundef %i.aa) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.q
  %.sroa.19.3 = phi ptr [ %i.al, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.19.068, %bb.q ] ; 2 uses
  %.pn57 = phi ptr [ %i.aj, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.12.069, %bb.q ]
  %.sroa.040.3 = phi ptr [ %i.ai, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.040.070, %bb.q ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn57, i64 16 ; 2 uses
  %i.am = add nuw i64 %.01071, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %5
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !346

.loopexit:                                        ; preds = %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.v:                                             ; preds = %.fold.split.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %._crit_edge
  %.pn16.i = phi { i32, i64 } [ %.fca.1.insert.i22.i, %bb.i ], [ { i32 0, i64 undef }, %._crit_edge ], [ %.fca.1.insert.i.i, %bb.c ], [ %.fca.1.insert.i18.i, %bb.d ], [ %.fca.1.insert.i19.i, %bb.f ], [ %.fca.1.insert.i20.i, %bb.g ], [ %.fca.1.insert.i21.i, %bb.h ], [ { i32 1, i64 undef }, %.fold.split.i ] ; 2 uses
  %i.an = extractvalue { i32, i64 } %.pn16.i, 0
  store i32 %i.an, ptr %7, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = extractvalue { i32, i64 } %.pn16.i, 1
  store i64 %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 248
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !348
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !33
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.aw = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.ax = ptrtoint ptr %.sroa.040.0.lcssa to i64  ; 2 uses
  %i.ay = sub i64 %.sroa.12.0.lcssa, %i.ax
  %i.az = ashr exact i64 %i.ay, 4
  %i.ba = invoke { i32, i64 } %i.at(ptr noundef %i.av, ptr %.val.val, ptr noundef nonnull %7, ptr noundef %.sroa.040.0.lcssa, i64 noundef %i.az)
          to label %bb.w unwind label %bb.ab      ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.bb = extractvalue { i32, i64 } %i.ba, 0      ; 2 uses
  %i.bc = extractvalue { i32, i64 } %i.ba, 1      ; 2 uses
  %i.bd = icmp eq i32 %i.bb, 3
  br i1 %i.bd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.sroa.531.8.extract.trunc = trunc i64 %i.bc to i32
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %1, i32 noundef %.sroa.531.8.extract.trunc) #28
          to label %.noexc27 unwind label %bb.ab

.noexc27:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !349
  store i32 %i.bb, ptr %6, align 8, !noalias !349
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !noalias !349
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK14HermesABIValue(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.not.i.i.i = icmp eq ptr %.sroa.040.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.bg = sub i64 %i.bf, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0.lcssa, i64 noundef %i.bg) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit

_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit:   ; preds = %bb.z, %bb.aa
  ret void

bb.ab:                                            ; preds = %bb.y, %bb.x, %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ab
  %.sroa.19.066 = phi ptr [ %.sroa.19.0.lcssa, %bb.ab ], [ %.sroa.12.069, %.loopexit ], [ %.sroa.12.069, %.loopexit.split-lp ]
  %.sroa.040.060 = phi ptr [ %.sroa.040.0.lcssa, %bb.ab ], [ %.sroa.040.070, %.loopexit ], [ %.sroa.040.070, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i29 = icmp eq ptr %.sroa.040.060, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit30, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bi = ptrtoint ptr %.sroa.19.066 to i64
  %i.bj = ptrtoint ptr %.sroa.040.060 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.060, i64 noundef %i.bk) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit30

_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit30: ; preds = %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17callAsConstructorERKN8facebook3jsi8FunctionEPKNS2_5ValueEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.facebook::jsi::Value") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.HermesABIValue, align 8     ; 5 uses
  %i.a = icmp ugt i64 %4, 576460752303423487
  br i1 %i.a, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #28
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.b = shl nuw nsw i64 %4, 4
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #24 ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit
  %.0959 = phi i64 [ %i.ad, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.028.058 = phi ptr [ %.sroa.028.3, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %.sroa.12.057 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %.sroa.19.056 = phi ptr [ %.sroa.19.3, %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0959 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !253  ; 2 uses
  switch i32 %i.f, label %bb.e [
    i32 0, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
    i32 1, label %.fold.split.i
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i.i = zext nneg i8 %i.h to i64
  %.fca.1.insert.i.i = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52
  %.fca.1.insert.i18.i = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.j, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !52
  %6 = ptrtoint ptr %.val.i to i64                ; 4 uses
  switch i32 %i.f, label %.unreachabledefault.i [
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %.fca.1.insert.i19.i = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %6, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.g:                                             ; preds = %bb.e
  %.fca.1.insert.i20.i = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %6, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

bb.h:                                             ; preds = %bb.e
  %.fca.1.insert.i21.i = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %6, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

.unreachabledefault.i:                            ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  %.fca.1.insert.i22.i = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %6, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

.fold.split.i:                                    ; preds = %.lr.ph
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit: ; preds = %.lr.ph, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %.fold.split.i
  %.pn16.i = phi { i32, i64 } [ %.fca.1.insert.i22.i, %bb.i ], [ { i32 0, i64 undef }, %.lr.ph ], [ %.fca.1.insert.i.i, %bb.c ], [ %.fca.1.insert.i18.i, %bb.d ], [ %.fca.1.insert.i19.i, %bb.f ], [ %.fca.1.insert.i20.i, %bb.g ], [ %.fca.1.insert.i21.i, %bb.h ], [ { i32 1, i64 undef }, %.fold.split.i ] ; 2 uses
  %i.n = extractvalue { i32, i64 } %.pn16.i, 0    ; 2 uses
  %i.o = extractvalue { i32, i64 } %.pn16.i, 1    ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.057, %.sroa.19.056
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
  store i32 %i.n, ptr %.sroa.12.057, align 8, !tbaa !344
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.057, i64 8
  store i64 %i.o, ptr %.sroa.625.0..sroa_idx, align 8, !tbaa !52
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE.exit
  %i.p = ptrtoint ptr %.sroa.12.057 to i64
  %i.q = ptrtoint ptr %.sroa.028.058 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775792
  br i1 %i.s, label %bb.l, label %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #28
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.t = ashr exact i64 %i.r, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 576460752303423487)
  %i.x = select i1 %i.v, i64 576460752303423487, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #24
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 3 uses
  store i32 %i.n, ptr %i.aa, align 8, !tbaa !344
  %.sroa.625.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.o, ptr %.sroa.625.0..sroa_idx26, align 8, !tbaa !52
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.m, label %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.m:                                             ; preds = %.noexc14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %.sroa.028.058, i64 %i.r, i1 false)
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.m, %.noexc14
  %.not.i17.i.i.i = icmp eq ptr %.sroa.028.058, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.028.058, i64 noundef %i.r) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorI14HermesABIValueSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.x
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.j
  %.sroa.19.3 = phi ptr [ %i.ac, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.19.056, %bb.j ] ; 2 uses
  %.pn45 = phi ptr [ %i.aa, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.12.057, %bb.j ]
  %.sroa.028.3 = phi ptr [ %i.z, %_ZNSt6vectorI14HermesABIValueSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.028.058, %bb.j ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn45, i64 16 ; 2 uses
  %i.ad = add nuw i64 %.0959, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %4
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !352

.loopexit:                                        ; preds = %_ZNKSt6vectorI14HermesABIValueSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorI14HermesABIValueSaIS0_EE9push_backEOS0_.exit
  %i.ae = ptrtoint ptr %.sroa.12.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.19.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.19.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit ]
  %.sroa.028.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.028.3, %._crit_edge.loopexit ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 256
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !353
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.al = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.am = ptrtoint ptr %.sroa.028.0.lcssa to i64  ; 2 uses
  %i.an = sub i64 %.sroa.12.0.lcssa, %i.am
  %i.ao = ashr exact i64 %i.an, 4
  %i.ap = invoke { i32, i64 } %i.ai(ptr noundef %i.ak, ptr %.val.val, ptr noundef %.sroa.028.0.lcssa, i64 noundef %i.ao)
          to label %bb.o unwind label %bb.t       ; 2 uses

bb.o:                                             ; preds = %._crit_edge
  %i.aq = extractvalue { i32, i64 } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { i32, i64 } %i.ap, 1      ; 2 uses
  %i.as = icmp eq i32 %i.aq, 3
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.519.8.extract.trunc = trunc i64 %i.ar to i32
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %1, i32 noundef %.sroa.519.8.extract.trunc) #28
          to label %.noexc15 unwind label %bb.t

.noexc15:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !354
  store i32 %i.aq, ptr %5, align 8, !noalias !354
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ar, ptr %i.at, align 8, !noalias !354
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK14HermesABIValue(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !354
  %.not.i.i.i = icmp eq ptr %.sroa.028.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.av = sub i64 %i.au, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.028.0.lcssa, i64 noundef %i.av) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit

_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit:   ; preds = %bb.r, %bb.s
  ret void

bb.t:                                             ; preds = %bb.q, %bb.p, %._crit_edge
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %.sroa.19.054 = phi ptr [ %.sroa.19.0.lcssa, %bb.t ], [ %.sroa.12.057, %.loopexit ], [ %.sroa.12.057, %.loopexit.split-lp ]
  %.sroa.028.048 = phi ptr [ %.sroa.028.0.lcssa, %bb.t ], [ %.sroa.028.058, %.loopexit ], [ %.sroa.028.058, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i17 = icmp eq ptr %.sroa.028.048, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit18, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = ptrtoint ptr %.sroa.19.054 to i64
  %i.ay = ptrtoint ptr %.sroa.028.048 to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.028.048, i64 noundef %i.az) #26
  br label %_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit18

_ZNSt6vectorI14HermesABIValueSaIS0_EED2Ev.exit18: ; preds = %bb.u, %bb.v
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN8facebook3jsi7Runtime9pushScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN8facebook3jsi7Runtime8popScopeEPNS1_10ScopeStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_123HermesABIRuntimeWrapper12strictEqualsERKN8facebook3jsi6SymbolES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !357
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val4 = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val4, i64 16
  %.val4.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.h = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef %i.f, ptr %.val4.val, ptr %.val.val)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_123HermesABIRuntimeWrapper12strictEqualsERKN8facebook3jsi6BigIntES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !358
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN8facebook3jsi10HostObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !363
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !363
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper7releaseEP19HermesABIHostObject(ptr noundef %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.b, align 8, !tbaa !51  ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapperD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.h = load ptr, ptr %.val, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !401
  %i.k = load ptr, ptr %.val, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !401
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapperD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapperD2Ev.exit, !prof !91

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapperD2Ev.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapperD2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapperD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal { i32, i64 } @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper3getEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameID(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::jsi::PropNameID", align 8 ; 7 uses
  %4 = alloca %"class.facebook::jsi::Value", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %struct.HermesABIValue, align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !402, !nonnull !257, !align !405 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36, !noalias !406
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !409, !noalias !406
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33, !noalias !406
  %i.i = invoke ptr %i.f(ptr noundef %i.h, ptr %2)
          to label %.noexc.i unwind label %bb.q, !inline_history !410

.noexc.i:                                         ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !98, !noalias !414 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper20cloneToJSIPropNameIDE19HermesABIPropNameID.exit.i.i, !prof !91

bb.b:                                             ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !99, !noalias !414
  %i.o = uitofp i64 %i.n to double
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.q = load double, ptr %i.p, align 8, !tbaa !100, !noalias !414
  %i.r = fcmp ogt double %i.q, %i.o
  br i1 %i.r, label %.sink.split.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j), !noalias !414
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !98, !noalias !414 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not4.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper20cloneToJSIPropNameIDE19HermesABIPropNameID.exit.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.c, %bb.b
  invoke fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %.noexc24.i unwind label %bb.q

.noexc24.i:                                       ; preds = %.sink.split.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !98, !noalias !414
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper20cloneToJSIPropNameIDE19HermesABIPropNameID.exit.i.i

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper20cloneToJSIPropNameIDE19HermesABIPropNameID.exit.i.i: ; preds = %.noexc24.i, %bb.c, %.noexc.i
  %i.t = phi ptr [ %i.l, %.noexc.i ], [ %i.s, %bb.c ], [ %.pre.i.i.i.i, %.noexc24.i ] ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16       ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !52, !noalias !414
  store ptr %.val.i.i.i.i.i, ptr %i.k, align 8, !tbaa !98, !noalias !414
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store atomic i32 1, ptr %i.v monotonic, align 8, !noalias !414
  store ptr %i.i, ptr %i.u, align 8, !tbaa !52, !noalias !414
  store ptr %i.t, ptr %3, align 8, !tbaa !101, !alias.scope !415
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !214  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper20cloneToJSIPropNameIDE19HermesABIPropNameID.exit.i.i
  %.val.i.i = load ptr, ptr %i.c, align 8         ; 4 uses
  %.val7.i.i = load ptr, ptr %i.g, align 8        ; 4 uses
  %i.ab = load i32, ptr %4, align 8, !tbaa !253   ; 2 uses
  switch i32 %i.ab, label %bb.g [
    i32 0, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i
    i32 1, label %.fold.split.i.i.i
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i.i.i.i = zext nneg i8 %i.ad to i64
  %.fca.1.insert.i.i.i.i = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i.i.i, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !52
  %.fca.1.insert.i23.i.i.i = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.af, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.val.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 4 uses
  switch i32 %i.ab, label %.unreachabledefault.i.i.i [
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !418
  %i.al = invoke ptr %i.ak(ptr noundef %.val7.i.i, ptr %.val.i.i.i)
          to label %.noexc.i.i unwind label %bb.n, !inline_history !419

.noexc.i.i:                                       ; preds = %bb.h
  %i.am = ptrtoint ptr %i.al to i64
  %.fca.1.insert.i.i.i.i.i = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %i.am, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !420
  %i.ap = invoke ptr %i.ao(ptr noundef %.val7.i.i, ptr %.val.i.i.i)
          to label %.noexc8.i.i unwind label %bb.n, !inline_history !419

.noexc8.i.i:                                      ; preds = %bb.i
  %i.aq = ptrtoint ptr %i.ap to i64
  %.fca.1.insert.i.i24.i.i.i = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %i.aq, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !421
  %i.at = invoke ptr %i.as(ptr noundef %.val7.i.i, ptr %.val.i.i.i)
          to label %.noexc9.i.i unwind label %bb.n, !inline_history !419

.noexc9.i.i:                                      ; preds = %bb.j
  %i.au = ptrtoint ptr %i.at to i64
  %.fca.1.insert.i.i25.i.i.i = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %i.au, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

.unreachabledefault.i.i.i:                        ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !422
  %i.ax = invoke ptr %i.aw(ptr noundef %.val7.i.i, ptr %.val.i.i.i)
          to label %.noexc10.i.i unwind label %bb.n, !inline_history !419

.noexc10.i.i:                                     ; preds = %bb.k
  %i.ay = ptrtoint ptr %i.ax to i64
  %.fca.1.insert.i.i26.i.i.i = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %i.ay, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

.fold.split.i.i.i:                                ; preds = %bb.d
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i: ; preds = %.fold.split.i.i.i, %.noexc10.i.i, %.noexc9.i.i, %.noexc8.i.i, %.noexc.i.i, %bb.f, %bb.e, %bb.d
  %.pn21.i.i.i = phi { i32, i64 } [ %.fca.1.insert.i.i26.i.i.i, %.noexc10.i.i ], [ { i32 0, i64 undef }, %bb.d ], [ %.fca.1.insert.i.i.i.i, %bb.e ], [ %.fca.1.insert.i23.i.i.i, %bb.f ], [ %.fca.1.insert.i.i.i.i.i, %.noexc.i.i ], [ %.fca.1.insert.i.i24.i.i.i, %.noexc8.i.i ], [ %.fca.1.insert.i.i25.i.i.i, %.noexc9.i.i ], [ { i32 1, i64 undef }, %.fold.split.i.i.i ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.az = load ptr, ptr %3, align 8, !tbaa !101   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper3getEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDENKUlvE_clEv.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.az) #25, !inline_history !423
  br label %_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper3getEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDENKUlvE_clEv.exit.i

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper20cloneToJSIPropNameIDE19HermesABIPropNameID.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.bd = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.bd, %bb.n ], [ %i.bc, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.be = load ptr, ptr %3, align 8, !tbaa !101   ; 3 uses
  %.not.i11.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i11.i.i, label %_ZN8facebook3jsi7PointerD2Ev.exit12.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #25, !inline_history !423
  br label %_ZN8facebook3jsi7PointerD2Ev.exit12.i.i

_ZN8facebook3jsi7PointerD2Ev.exit12.i.i:          ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body.i

_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper3getEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDENKUlvE_clEv.exit.i: ; preds = %bb.l, %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI21HermesABIValueOrErrorLm16EZNS0_17HostObjectWrapper3getEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDEUlvE_EET_PFSA_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.q:                                             ; preds = %.sink.split.i.i.i.i.i, %bb.a
  %i.bh = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.q, %_ZN8facebook3jsi7PointerD2Ev.exit12.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bh, %bb.q ], [ %.pn.i.i, %_ZN8facebook3jsi7PointerD2Ev.exit12.i.i ] ; 2 uses
  %i.bi = extractvalue { ptr, i32 } %eh.lpad-body.i, 0 ; 2 uses
  %i.bj = extractvalue { ptr, i32 } %eh.lpad-body.i, 1 ; 2 uses
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook3jsi7JSErrorE) #25
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.body.i
  %i.bm = call ptr @__cxa_begin_catch(ptr %i.bi) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !424
  %i.bp = call fastcc { i32, i64 } @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) ; 2 uses
  %i.bq = extractvalue { i32, i64 } %i.bp, 0
  store i32 %i.bq, ptr %9, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bs = extractvalue { i32, i64 } %i.bp, 1
  store i64 %i.bs, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !427
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !33
  invoke void %i.bv(ptr noundef %i.bw, ptr noundef nonnull %9)
          to label %bb.s unwind label %bb.ai

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI21HermesABIValueOrErrorLm16EZNS0_17HostObjectWrapper3getEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDEUlvE_EET_PFSA_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.t:                                             ; preds = %.body.i
  %i.bx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.by = icmp eq i32 %i.bj, %i.bx
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.bi) #25 ; 2 uses
  br i1 %i.by, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.v unwind label %bb.ag

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, i64 noundef 15)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull @.str.10)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %bb.w
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call noundef ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.bz) #25, !inline_history !428
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef %i.cf)
          to label %bb.y unwind label %bb.ah      ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !429
  %i.ck = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.cl = load ptr, ptr %7, align 8, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !64
  invoke void %i.cj(ptr noundef %i.ck, ptr noundef %i.cl, i64 noundef %i.cn)
          to label %bb.z unwind label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.co = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !52
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI21HermesABIValueOrErrorLm16EZNS0_17HostObjectWrapper3getEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDEUlvE_EET_PFSA_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.aa:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7, i64 noundef 15)
          to label %bb.ac unwind label %bb.af     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !429
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.cy = load ptr, ptr %5, align 8, !tbaa !61
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !64
  invoke void %i.cw(ptr noundef %i.cx, ptr noundef %i.cy, i64 noundef %i.da)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.db = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i: ; preds = %bb.ad
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !52
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI21HermesABIValueOrErrorLm16EZNS0_17HostObjectWrapper3getEP19HermesABIHostObjectP16HermesABIRuntime19HermesABIPropNameIDEUlvE_EET_PFSA_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.ae:                                            ; preds = %bb.aa
  %i.dg = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntime:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bi = extractvalue { i32, i64 } %i.bf, 1
  store i64 %i.bi, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !427
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33
  invoke void %i.bm(ptr noundef %i.bo, ptr noundef nonnull %7)
          to label %bb.l unwind label %bb.ab

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI33HermesABIPropNameIDListPtrOrErrorLm29EZNS0_17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntimeEUlvE_EET_PFS9_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.m:                                             ; preds = %.body.i
  %i.bp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.bq = icmp eq i32 %i.az, %i.bp
  %i.br = call ptr @__cxa_begin_catch(ptr %i.ay) #25 ; 2 uses
  br i1 %i.bq, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12, i64 noundef 28)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull @.str.10)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.br) #25, !inline_history !460
  %i.by = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef %i.bx)
          to label %bb.r unwind label %bb.aa      ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !429
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !33
  %i.cf = load ptr, ptr %5, align 8, !tbaa !61
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !64
  invoke void %i.cc(ptr noundef %i.ce, ptr noundef %i.cf, i64 noundef %i.ch)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !52
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI33HermesABIPropNameIDListPtrOrErrorLm29EZNS0_17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntimeEUlvE_EET_PFS9_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.t:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12, i64 noundef 28)
          to label %bb.v unwind label %bb.y       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !36
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !429
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.cu = load ptr, ptr %3, align 8, !tbaa !61
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !64
  invoke void %i.cr(ptr noundef %i.ct, ptr noundef %i.cu, i64 noundef %i.cw)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i: ; preds = %bb.w
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !52
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI33HermesABIPropNameIDListPtrOrErrorLm29EZNS0_17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntimeEUlvE_EET_PFS9_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.x:                                             ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %bb.y
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !52
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.dc, %bb.x ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i ], [ %i.dd, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  invoke void @__cxa_end_catch()
          to label %bb.ac unwind label %bb.ad

bb.z:                                             ; preds = %bb.n
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

bb.aa:                                            ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.aa
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !52
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i, %bb.z
  %.pn18.i = phi { ptr, i32 } [ %i.dj, %bb.z ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i ], [ %i.dk, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  invoke void @__cxa_end_catch()
          to label %bb.ac unwind label %bb.ad

bb.ab:                                            ; preds = %bb.k
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @__cxa_end_catch()
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i
  %.pn20.i = phi { ptr, i32 } [ %.pn18.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i ], [ %i.dq, %bb.ab ]
  resume { ptr, i32 } %.pn20.i

bb.ad:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #27
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI33HermesABIPropNameIDListPtrOrErrorLm29EZNS0_17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntimeEUlvE_EET_PFS9_18HermesABIErrorCodeERAT0__KcT1_.exit: ; preds = %_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntimeENKUlvE_clEv.exit.i, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i
  %.sroa.0.0.i = phi i64 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i ], [ 5, %bb.l ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.aw, %_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper17HostObjectWrapper12get_own_keysEP19HermesABIHostObjectP16HermesABIRuntimeENKUlvE_clEv.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #20

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0 align 2

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i32, i64 } @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !253    ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 0, label %bb.i
    i32 1, label %.fold.split
    i32 2, label %bb.b
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i = zext nneg i8 %i.c to i64
  %.fca.1.insert.i = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52
  %.fca.1.insert.i18 = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.e, 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val = load ptr, ptr %i.h, align 8, !tbaa !52
  %1 = ptrtoint ptr %.val to i64                  ; 4 uses
  switch i32 %i.a, label %.unreachabledefault [
    i32 6, label %bb.e
    i32 7, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %.fca.1.insert.i19 = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %1, 1
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %.fca.1.insert.i20 = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %1, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.fca.1.insert.i21 = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %1, 1
  br label %bb.i

.unreachabledefault:                              ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.d
  %.fca.1.insert.i22 = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %1, 1
  br label %bb.i

.fold.split:                                      ; preds = %bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.fold.split, %bb.e, %bb.f, %bb.g, %bb.h, %bb.c, %bb.b
  %.pn16 = phi { i32, i64 } [ %.fca.1.insert.i22, %bb.h ], [ { i32 0, i64 undef }, %bb.a ], [ %.fca.1.insert.i, %bb.b ], [ %.fca.1.insert.i18, %bb.c ], [ %.fca.1.insert.i19, %bb.e ], [ %.fca.1.insert.i20, %bb.f ], [ %.fca.1.insert.i21, %bb.g ], [ { i32 1, i64 undef }, %.fold.split ]
  ret { i32, i64 } %.pn16
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToJSIValueERK14HermesABIValue(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(81) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !372
  switch i32 %i.a, label %bb.r [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
    i32 -2147483641, label %bb.f
    i32 -2147483639, label %bb.i
    i32 -2147483643, label %bb.l
    i32 -2147483642, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !253, !alias.scope !461
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !253, !alias.scope !464
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !52, !range !256, !noundef !257
  store i32 2, ptr %0, align 8, !tbaa !253
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !52
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !52
  store i32 3, ptr %0, align 8, !tbaa !253
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.f, ptr %i.g, align 8, !tbaa !52
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !418
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = tail call ptr %i.k(ptr noundef %i.m, ptr %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !98, !noalias !467 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.g, label %_ZN8facebook3jsi7PointerD2Ev.exit, !prof !91

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !99, !noalias !467
  %i.v = uitofp i64 %i.u to double
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load double, ptr %i.w, align 8, !tbaa !100, !noalias !467
  %i.y = fcmp ogt double %i.x, %i.v
  br i1 %i.y, label %.sink.split.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.q), !noalias !467
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !98, !noalias !467 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.z, null
  br i1 %.not4.i.i, label %.sink.split.i.i, label %_ZN8facebook3jsi7PointerD2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.h, %bb.g
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.q), !noalias !467
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !98, !noalias !467
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.f, %bb.h, %.sink.split.i.i
  %i.aa = phi ptr [ %i.s, %bb.f ], [ %i.z, %bb.h ], [ %.pre.i, %.sink.split.i.i ] ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16     ; 2 uses
  %.val.i.i = load ptr, ptr %i.ab, align 8, !tbaa !52, !noalias !467
  store ptr %.val.i.i, ptr %i.r, align 8, !tbaa !98, !noalias !467
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store atomic i32 1, ptr %i.ac monotonic, align 8, !noalias !467
  store ptr %i.p, ptr %i.ab, align 8, !tbaa !52, !noalias !467
  store i32 6, ptr %0, align 8, !tbaa !253
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !101
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !420
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52
  %i.am = tail call ptr %i.ah(ptr noundef %i.aj, ptr %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !98, !noalias !470 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i24, label %bb.j, label %_ZN8facebook3jsi7PointerD2Ev.exit30, !prof !91

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !99, !noalias !470
  %i.as = uitofp i64 %i.ar to double
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load double, ptr %i.at, align 8, !tbaa !100, !noalias !470
  %i.av = fcmp ogt double %i.au, %i.as
  br i1 %i.av, label %.sink.split.i.i27, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.an), !noalias !470
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !98, !noalias !470 ; 2 uses
  %.not4.i.i26 = icmp eq ptr %i.aw, null
  br i1 %.not4.i.i26, label %.sink.split.i.i27, label %_ZN8facebook3jsi7PointerD2Ev.exit30

.sink.split.i.i27:                                ; preds = %bb.k, %bb.j
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.an), !noalias !470
  %.pre.i28 = load ptr, ptr %i.ao, align 8, !tbaa !98, !noalias !470
  br label %_ZN8facebook3jsi7PointerD2Ev.exit30

_ZN8facebook3jsi7PointerD2Ev.exit30:              ; preds = %bb.i, %bb.k, %.sink.split.i.i27
  %i.ax = phi ptr [ %i.ap, %bb.i ], [ %i.aw, %bb.k ], [ %.pre.i28, %.sink.split.i.i27 ] ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16     ; 2 uses
  %.val.i.i25 = load ptr, ptr %i.ay, align 8, !tbaa !52, !noalias !470
  store ptr %.val.i.i25, ptr %i.ao, align 8, !tbaa !98, !noalias !470
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store atomic i32 1, ptr %i.az monotonic, align 8, !noalias !470
  store ptr %i.am, ptr %i.ay, align 8, !tbaa !52, !noalias !470
  store i32 7, ptr %0, align 8, !tbaa !253
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !101
  br label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !421
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !52
  %i.bj = tail call ptr %i.be(ptr noundef %i.bg, ptr %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !98, !noalias !473 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i33, label %bb.m, label %_ZN8facebook3jsi7PointerD2Ev.exit39, !prof !91

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !99, !noalias !473
  %i.bp = uitofp i64 %i.bo to double
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = load double, ptr %i.bq, align 8, !tbaa !100, !noalias !473
  %i.bs = fcmp ogt double %i.br, %i.bp
  br i1 %i.bs, label %.sink.split.i.i36, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bk), !noalias !473
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !98, !noalias !473 ; 2 uses
  %.not4.i.i35 = icmp eq ptr %i.bt, null
  br i1 %.not4.i.i35, label %.sink.split.i.i36, label %_ZN8facebook3jsi7PointerD2Ev.exit39

.sink.split.i.i36:                                ; preds = %bb.n, %bb.m
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bk), !noalias !473
  %.pre.i37 = load ptr, ptr %i.bl, align 8, !tbaa !98, !noalias !473
  br label %_ZN8facebook3jsi7PointerD2Ev.exit39

_ZN8facebook3jsi7PointerD2Ev.exit39:              ; preds = %bb.l, %bb.n, %.sink.split.i.i36
  %i.bu = phi ptr [ %i.bm, %bb.l ], [ %i.bt, %bb.n ], [ %.pre.i37, %.sink.split.i.i36 ] ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 16     ; 2 uses
  %.val.i.i34 = load ptr, ptr %i.bv, align 8, !tbaa !52, !noalias !473
  store ptr %.val.i.i34, ptr %i.bl, align 8, !tbaa !98, !noalias !473
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store atomic i32 1, ptr %i.bw monotonic, align 8, !noalias !473
  store ptr %i.bj, ptr %i.bv, align 8, !tbaa !52, !noalias !473
  store i32 4, ptr %0, align 8, !tbaa !253
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !101
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_3
begin_hunk_4_@_ZNSt12__shared_ptrIN8facebook3jsi11NativeStateELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapper7releaseEP21HermesABIHostFunction(ptr noundef %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !329  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapperD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3)
          to label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapperD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapperD2Ev.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapperD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal { i32, i64 } @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueS8_m(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.51", align 8    ; 13 uses
  %6 = alloca %"class.facebook::jsi::Value", align 8 ; 8 uses
  %7 = alloca %"class.facebook::jsi::Value", align 8 ; 7 uses
  %8 = alloca %"class.facebook::jsi::Value", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  %13 = alloca %struct.HermesABIValue, align 8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !485, !nonnull !257, !align !405 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.e = icmp ugt i64 %4, 576460752303423487
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #28
          to label %.noexc.i.i unwind label %bb.d

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.not35.i.i = icmp eq i64 %4, 0
  br i1 %.not35.i.i, label %._crit_edge.i.i, label %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.c
  %i.g = shl nuw nsw i64 %4, 4
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24
          to label %.lr.ph.i.i unwind label %bb.d ; 3 uses

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE11_M_allocateEm.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !487
  store ptr %i.h, ptr %i.i, align 8, !tbaa !489
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %4
  store ptr %i.j, ptr %i.f, align 8, !tbaa !490
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToJSIValueERK14HermesABIValue(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(81) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.l unwind label %bb.x

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE11_M_allocateEm.exit.i.i.i, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body.i

bb.e:                                             ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i, %.lr.ph.i.i
  %.01128.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.q, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.01128.i.i
  invoke fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToJSIValueERK14HermesABIValue(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(81) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !489  ; 3 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !490
  %.not.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !489
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.i, align 8, !tbaa !489
  br label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i unwind label %bb.j

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i: ; preds = %bb.h, %bb.g
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.q = add nuw i64 %.01128.i.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %4
  br i1 %exitcond.not, label %._crit_edge.i.i, label %bb.e, !llvm.loop !491

bb.i:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn14.i.i = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.r, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body.i

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.t = load ptr, ptr %5, align 8, !tbaa !487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.t, ptr %i.a, align 8, !tbaa !492, !noalias !493
  store i64 %4, ptr %i.b, align 8, !tbaa !107, !noalias !493
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !329, !noalias !493
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt25__throw_bad_function_callv() #28
          to label %.noexc21.i.i unwind label %bb.y

.noexc21.i.i:                                     ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331, !noalias !493
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Value") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.o unwind label %bb.y, !inline_history !496

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr i8, ptr %i.d, i64 16
  %.val.i.i = load ptr, ptr %i.z, align 8         ; 4 uses
  %i.aa = getelementptr i8, ptr %i.d, i64 24
  %.val17.i.i = load ptr, ptr %i.aa, align 8      ; 4 uses
  %i.ab = load i32, ptr %8, align 8, !tbaa !253   ; 2 uses
  switch i32 %i.ab, label %bb.r [
    i32 0, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i
    i32 1, label %.fold.split.i.i.i
    i32 2, label %bb.p
    i32 3, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !52, !range !256, !noundef !257
  %.sroa.2.8.insert.ext.i.i.i.i = zext nneg i8 %i.ad to i64
  %.fca.1.insert.i.i.i.i = insertvalue { i32, i64 } { i32 2, i64 poison }, i64 %.sroa.2.8.insert.ext.i.i.i.i, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !52
  %.fca.1.insert.i23.i.i.i = insertvalue { i32, i64 } { i32 4, i64 poison }, i64 %i.af, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

bb.r:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.val.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 4 uses
  switch i32 %i.ab, label %.unreachabledefault.i.i.i [
    i32 6, label %bb.s
    i32 7, label %bb.t
    i32 4, label %bb.u
    i32 5, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !418
  %i.al = invoke ptr %i.ak(ptr noundef %.val17.i.i, ptr %.val.i.i.i)
          to label %.noexc23.i.i unwind label %bb.z, !inline_history !419

.noexc23.i.i:                                     ; preds = %bb.s
  %i.am = ptrtoint ptr %i.al to i64
  %.fca.1.insert.i.i.i.i.i = insertvalue { i32, i64 } { i32 -2147483641, i64 poison }, i64 %i.am, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !420
  %i.ap = invoke ptr %i.ao(ptr noundef %.val17.i.i, ptr %.val.i.i.i)
          to label %.noexc24.i.i unwind label %bb.z, !inline_history !419

.noexc24.i.i:                                     ; preds = %bb.t
  %i.aq = ptrtoint ptr %i.ap to i64
  %.fca.1.insert.i.i24.i.i.i = insertvalue { i32, i64 } { i32 -2147483639, i64 poison }, i64 %i.aq, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

bb.u:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !421
  %i.at = invoke ptr %i.as(ptr noundef %.val17.i.i, ptr %.val.i.i.i)
          to label %.noexc25.i.i unwind label %bb.z, !inline_history !419

.noexc25.i.i:                                     ; preds = %bb.u
  %i.au = ptrtoint ptr %i.at to i64
  %.fca.1.insert.i.i25.i.i.i = insertvalue { i32, i64 } { i32 -2147483643, i64 poison }, i64 %i.au, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

.unreachabledefault.i.i.i:                        ; preds = %bb.r
  unreachable

bb.v:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !422
  %i.ax = invoke ptr %i.aw(ptr noundef %.val17.i.i, ptr %.val.i.i.i)
          to label %.noexc26.i.i unwind label %bb.z, !inline_history !419

.noexc26.i.i:                                     ; preds = %bb.v
  %i.ay = ptrtoint ptr %i.ax to i64
  %.fca.1.insert.i.i26.i.i.i = insertvalue { i32, i64 } { i32 -2147483642, i64 poison }, i64 %i.ay, 1
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

.fold.split.i.i.i:                                ; preds = %bb.o
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i: ; preds = %.fold.split.i.i.i, %.noexc26.i.i, %.noexc25.i.i, %.noexc24.i.i, %.noexc23.i.i, %bb.q, %bb.p, %bb.o
  %.pn21.i.i.i = phi { i32, i64 } [ %.fca.1.insert.i.i26.i.i.i, %.noexc26.i.i ], [ { i32 0, i64 undef }, %bb.o ], [ %.fca.1.insert.i.i.i.i, %bb.p ], [ %.fca.1.insert.i23.i.i.i, %bb.q ], [ %.fca.1.insert.i.i.i.i.i, %.noexc23.i.i ], [ %.fca.1.insert.i.i24.i.i.i, %.noexc24.i.i ], [ %.fca.1.insert.i.i25.i.i.i, %.noexc25.i.i ], [ { i32 1, i64 undef }, %.fold.split.i.i.i ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.az = load ptr, ptr %5, align 8, !tbaa !487   ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !489 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.az, %i.bb
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.az, %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i ] ; 2 uses
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i.i.i) #25
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !497

_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !487
  br label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i
  %i.bd = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.az, %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15cloneToABIValueERKN8facebook3jsi5ValueE.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i.i.i, label %_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueS8_mENKUlvE_clEv.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !490
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #26
  br label %_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueS8_mENKUlvE_clEv.exit.i

bb.x:                                             ; preds = %._crit_edge.i.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ab

bb.y:                                             ; preds = %bb.n, %bb.m
  %i.bj = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.aa

bb.z:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.bk = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook3jsi7JSErrorE
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.i.i = phi { ptr, i32 } [ %i.bk, %bb.z ], [ %i.bj, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.aa ], [ %i.bi, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.ab, %bb.k, %bb.d
  %.pn14.pn.i.i = phi { ptr, i32 } [ %.pn14.i.i, %bb.k ], [ %.pn.pn.i.i, %bb.ab ], [ %i.k, %bb.d ] ; 2 uses
  call void @_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bl = extractvalue { ptr, i32 } %.pn14.pn.i.i, 0 ; 2 uses
  %i.bm = extractvalue { ptr, i32 } %.pn14.pn.i.i, 1 ; 2 uses
  %i.bn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook3jsi7JSErrorE) #25
  %i.bo = icmp eq i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.ac, label %bb.ae

_ZZN12_GLOBAL__N_123HermesABIRuntimeWrapper19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueS8_mENKUlvE_clEv.exit.i: ; preds = %bb.w, %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI21HermesABIValueOrErrorLm13EZNS0_19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueSA_mEUlvE_EET_PFSC_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.ac:                                            ; preds = %.body.i
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bl) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !424
  %i.bs = call fastcc { i32, i64 } @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10toABIValueERKN8facebook3jsi5ValueE(ptr noundef nonnull align 8 dereferenceable(16) %i.br) ; 2 uses
  %i.bt = extractvalue { i32, i64 } %i.bs, 0
  store i32 %i.bt, ptr %13, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bv = extractvalue { i32, i64 } %i.bs, 1
  store i64 %i.bv, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !427
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !33
  invoke void %i.bz(ptr noundef %i.cb, ptr noundef nonnull %13)
          to label %bb.ad unwind label %bb.at

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI21HermesABIValueOrErrorLm13EZNS0_19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueSA_mEUlvE_EET_PFSC_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.ae:                                            ; preds = %.body.i
  %i.cc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.cd = icmp eq i32 %i.bm, %i.cc
  %i.ce = call ptr @__cxa_begin_catch(ptr %i.bl) #25 ; 2 uses
  br i1 %i.cd, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ag unwind label %bb.ar

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.14, i64 noundef 12)
          to label %bb.ah unwind label %bb.as

bb.ah:                                            ; preds = %bb.ag
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull @.str.10)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) #25, !inline_history !498
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef %i.ck)
          to label %bb.aj unwind label %bb.as     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !36
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !429
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !33
  %i.cs = load ptr, ptr %11, align 8, !tbaa !61
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !64
  invoke void %i.cp(ptr noundef %i.cr, ptr noundef %i.cs, i64 noundef %i.cu)
          to label %bb.ak unwind label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.cv = load ptr, ptr %11, align 8, !tbaa !61   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !52
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @__cxa_end_catch()
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10abiRethrowI21HermesABIValueOrErrorLm13EZNS0_19HostFunctionWrapper4callEP21HermesABIHostFunctionP16HermesABIRuntimePK14HermesABIValueSA_mEUlvE_EET_PFSC_18HermesABIErrorCodeERAT0__KcT1_.exit

bb.al:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.14, i64 noundef 12)
          to label %bb.an unwind label %bb.aq     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !36
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !429
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !33
  %i.dh = load ptr, ptr %9, align 8, !tbaa !61
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  tail call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i) #25
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.0911.i.i.i) #25
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !499

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  tail call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19) #25
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.0911.i.i.i19) #25
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !499

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !490
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #26
  br label %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !487
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !489
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !490
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN8facebook3jsi13MutableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !363
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !363
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120MutableBufferWrapper7releaseEP22HermesABIMutableBuffer(ptr noundef %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.b, align 8, !tbaa !51  ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.h = load ptr, ptr %.val, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !500
  %i.k = load ptr, ptr %.val, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !500
  br label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit, !prof !91

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25
  br label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit

_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZSt11make_uniqueIN12_GLOBAL__N_123HermesABIRuntimeWrapperEJRPK15HermesABIVTableEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!10 = distinct !{!10, !"_ZSt11make_uniqueIN12_GLOBAL__N_123HermesABIRuntimeWrapperEJRPK15HermesABIVTableEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !17, i64 8}
!14 = !{!"_ZTSN12_GLOBAL__N_123HermesABIRuntimeWrapperE", !15, i64 0, !17, i64 8, !19, i64 16, !20, i64 24, !21, i64 32, !27, i64 80}
!15 = !{!"_ZTSN8facebook3jsi7RuntimeE", !16, i64 0}
!16 = !{!"_ZTSN8facebook3jsi5ICastE"}
!17 = !{!"p1 _ZTS15HermesABIVTable", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"p1 _ZTS22HermesABIRuntimeVTable", !18, i64 0}
!20 = !{!"p1 _ZTS16HermesABIRuntime", !18, i64 0}
!21 = !{!"_ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EEE", !22, i64 0, !23, i64 8, !24, i64 16, !26, i64 32, !25, i64 40}
!22 = !{!"p1 _ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE5ChunkE", !18, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!"_ZTSN6hermes24ExponentialMovingAverageE", !25, i64 0, !25, i64 8}
!25 = !{!"double", !6, i64 0}
!26 = !{!"p1 _ZTSN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderE", !18, i64 0}
!27 = !{!"bool", !6, i64 0}
!28 = !{!24, !25, i64 0}
!29 = !{!21, !25, i64 40}
!30 = !{!14, !27, i64 80}
!31 = !{!32, !18, i64 0}
!32 = !{!"_ZTS15HermesABIVTable", !18, i64 0, !18, i64 8}
!33 = !{!14, !20, i64 24}
!34 = !{!35, !19, i64 0}
!35 = !{!"_ZTS16HermesABIRuntime", !19, i64 0}
!36 = !{!14, !19, i64 16}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook3jsi7RuntimeELb0EE", !39, i64 0}
!39 = !{!"p1 _ZTSN8facebook3jsi7RuntimeE", !18, i64 0}
!40 = !{!21, !22, i64 0}
!41 = !{!42, !22, i64 0}
!42 = !{!"_ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE5ChunkE", !22, i64 0, !6, i64 8}
!43 = !{!44, !18, i64 0}
!44 = !{!"_ZTS22HermesABIRuntimeVTable", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !18, i64 400, !18, i64 408, !18, i64 416, !18, i64 424, !18, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464}
!45 = !{ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapperD2Ev}
!46 = !{!47, !48, i64 0}
!47 = !{!"_ZTSSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0, !49, i64 8}
!48 = !{!"p1 _ZTSN8facebook3jsi6BufferE", !18, i64 0}
!49 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !50, i64 0}
!50 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!51 = !{!49, !50, i64 0}
!52 = !{!6, !6, i64 0}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTS15HermesABIBuffer", !55, i64 0, !56, i64 8, !23, i64 16}
!55 = !{!"p1 _ZTS21HermesABIBufferVTable", !18, i64 0}
!56 = !{!"p1 omnipotent char", !18, i64 0}
!57 = distinct !{null}
!58 = !{!54, !56, i64 8}
!59 = !{!54, !23, i64 16}
!60 = !{!32, !18, i64 8}
!61 = !{!62, !56, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0, !23, i64 8, !6, i64 16}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!64 = !{!62, !23, i64 8}
!65 = !{!44, !18, i64 88}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError: argument 0"}
!68 = distinct !{!68, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError"}
!69 = !{!44, !18, i64 80}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError: argument 0"}
!72 = distinct !{!72, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZSt11make_sharedIKN8facebook3jsi27SourceJavaScriptPreparationEJRKSt10shared_ptrIKNS1_6BufferEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES4_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESH_E4typeEEDpOT0_: argument 0"}
!75 = distinct !{!75, !"_ZSt11make_sharedIKN8facebook3jsi27SourceJavaScriptPreparationEJRKSt10shared_ptrIKNS1_6BufferEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES4_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESH_E4typeEEDpOT0_"}
!76 = !{!77, !5, i64 8}
!77 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!78 = !{!77, !5, i64 12}
!79 = !{!18, !18, i64 0}
!80 = !{!63, !56, i64 0}
!81 = !{!82, !83, i64 0}
!82 = !{!"_ZTSSt12__shared_ptrIKN8facebook3jsi18PreparedJavaScriptELN9__gnu_cxx12_Lock_policyE2EE", !83, i64 0, !49, i64 8}
!83 = !{!"p1 _ZTSN8facebook3jsi18PreparedJavaScriptE", !18, i64 0}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZSt19static_pointer_castIKN8facebook3jsi27SourceJavaScriptPreparationEKNS1_18PreparedJavaScriptEESt10shared_ptrIT_ERKS6_IT0_E: argument 0"}
!86 = distinct !{!86, !"_ZSt19static_pointer_castIKN8facebook3jsi27SourceJavaScriptPreparationEKNS1_18PreparedJavaScriptEESt10shared_ptrIT_ERKS6_IT0_E"}
!87 = !{!88, !89, i64 0}
!88 = !{!"_ZTSSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EE", !89, i64 0, !49, i64 8}
!89 = !{!"p1 _ZTSN8facebook3jsi27SourceJavaScriptPreparationE", !18, i64 0}
!90 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!91 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!92 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!93 = !{!44, !18, i64 416}
!94 = !{!44, !18, i64 96}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIObjectERK15HermesABIObject: argument 0"}
!97 = distinct !{!97, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIObjectERK15HermesABIObject"}
!98 = !{!21, !26, i64 32}
!99 = !{!21, !23, i64 8}
!100 = !{!24, !25, i64 8}
!101 = !{!102, !103, i64 0}
!102 = !{!"_ZTSN8facebook3jsi7PointerE", !103, i64 0}
!103 = !{!"p1 _ZTSN8facebook3jsi7Runtime12PointerValueE", !18, i64 0}
!104 = !{!105, !96}
!105 = distinct !{!105, !106, !"_ZN8facebook3jsi7Runtime4makeINS0_6ObjectEEET_PNS1_12PointerValueE: argument 0"}
!106 = distinct !{!106, !"_ZN8facebook3jsi7Runtime4makeINS0_6ObjectEEET_PNS1_12PointerValueE"}
!107 = !{!23, !23, i64 0}
!108 = distinct !{null}
!109 = !{!44, !18, i64 224}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError: argument 0"}
!112 = distinct !{!112, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK19HermesABIPropNameID: argument 0"}
!115 = distinct !{!115, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK19HermesABIPropNameID"}
!116 = !{!114, !111}
!117 = !{!118, !114, !111}
!118 = distinct !{!118, !119, !"_ZN8facebook3jsi7Runtime4makeINS0_10PropNameIDEEET_PNS1_12PointerValueE: argument 0"}
!119 = distinct !{!119, !"_ZN8facebook3jsi7Runtime4makeINS0_10PropNameIDEEET_PNS1_12PointerValueE"}
!120 = !{!44, !18, i64 232}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError: argument 0"}
!123 = distinct !{!123, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK19HermesABIPropNameID: argument 0"}
!126 = distinct !{!126, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK19HermesABIPropNameID"}
!127 = !{!125, !122}
!128 = !{!129, !125, !122}
!129 = distinct !{!129, !130, !"_ZN8facebook3jsi7Runtime4makeINS0_10PropNameIDEEET_PNS1_12PointerValueE: argument 0"}
!130 = distinct !{!130, !"_ZN8facebook3jsi7Runtime4makeINS0_10PropNameIDEEET_PNS1_12PointerValueE"}
!131 = !{!132, !133, i64 0}
!132 = !{!"_ZTS23HermesABIGrowableBuffer", !133, i64 0, !56, i64 8, !23, i64 16, !23, i64 24}
!133 = !{!"p1 _ZTS29HermesABIGrowableBufferVTable", !18, i64 0}
!134 = !{!132, !56, i64 8}
!135 = !{!132, !23, i64 16}
!136 = !{!44, !18, i64 360}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNO12_GLOBAL__N_116StringByteBuffer3getB5cxx11Ev: argument 0"}
!139 = distinct !{!139, !"_ZNO12_GLOBAL__N_116StringByteBuffer3getB5cxx11Ev"}
!140 = !{!132, !23, i64 24}
!141 = !{!44, !18, i64 240}
!142 = !{!44, !18, i64 368}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZNO12_GLOBAL__N_116StringByteBuffer3getB5cxx11Ev: argument 0"}
!145 = distinct !{!145, !"_ZNO12_GLOBAL__N_116StringByteBuffer3getB5cxx11Ev"}
!146 = !{!44, !18, i64 424}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK22HermesABIBigIntOrError: argument 0"}
!149 = distinct !{!149, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK22HermesABIBigIntOrError"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK15HermesABIBigInt: argument 0"}
!152 = distinct !{!152, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK15HermesABIBigInt"}
!153 = !{!151, !148}
!154 = !{!155, !151, !148}
!155 = distinct !{!155, !156, !"_ZN8facebook3jsi7Runtime4makeINS0_6BigIntEEET_PNS1_12PointerValueE: argument 0"}
!156 = distinct !{!156, !"_ZN8facebook3jsi7Runtime4makeINS0_6BigIntEEET_PNS1_12PointerValueE"}
!157 = !{!44, !18, i64 432}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK22HermesABIBigIntOrError: argument 0"}
!160 = distinct !{!160, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK22HermesABIBigIntOrError"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK15HermesABIBigInt: argument 0"}
!163 = distinct !{!163, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK15HermesABIBigInt"}
!164 = !{!162, !159}
!165 = !{!166, !162, !159}
!166 = distinct !{!166, !167, !"_ZN8facebook3jsi7Runtime4makeINS0_6BigIntEEET_PNS1_12PointerValueE: argument 0"}
!167 = distinct !{!167, !"_ZN8facebook3jsi7Runtime4makeINS0_6BigIntEEET_PNS1_12PointerValueE"}
!168 = !{!44, !18, i64 440}
!169 = !{!44, !18, i64 448}
!170 = !{!44, !18, i64 456}
!171 = !{!44, !18, i64 464}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIStringERK22HermesABIStringOrError: argument 0"}
!174 = distinct !{!174, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIStringERK22HermesABIStringOrError"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIStringERK15HermesABIString: argument 0"}
!177 = distinct !{!177, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIStringERK15HermesABIString"}
!178 = !{!176, !173}
!179 = !{!180, !176, !173}
!180 = distinct !{!180, !181, !"_ZN8facebook3jsi7Runtime4makeINS0_6StringEEET_PNS1_12PointerValueE: argument 0"}
!181 = distinct !{!181, !"_ZN8facebook3jsi7Runtime4makeINS0_6StringEEET_PNS1_12PointerValueE"}
!182 = !{!44, !18, i64 104}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIStringERK22HermesABIStringOrError: argument 0"}
!185 = distinct !{!185, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIStringERK22HermesABIStringOrError"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIStringERK15HermesABIString: argument 0"}
end_hunk_5
