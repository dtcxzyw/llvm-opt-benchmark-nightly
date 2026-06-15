inline.NumInlined: 2429
inline.NumDeleted: 1247
begin_hunk_0_@_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm:bb.a
bb.n:                                             ; preds = %bb.m
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 112), align 8, !tbaa !75
  %i.af = icmp ult i64 %1, %i.ae
  br i1 %i.af, label %.lr.ph.preheader, label %bb.o, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 120), align 8, !tbaa !75
  %i.ah = icmp ult i64 %1, %i.ag
  br i1 %i.ah, label %.lr.ph.preheader, label %bb.p, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !75
  %i.aj = icmp ult i64 %1, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.q, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !75
  %i.al = icmp ult i64 %1, %i.ak
  br i1 %i.al, label %.lr.ph.preheader, label %bb.r, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !75
  %i.an = icmp ult i64 %1, %i.am
  br i1 %i.an, label %.lr.ph.preheader, label %bb.s, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !75
  %i.ap = icmp ult i64 %1, %i.ao
  br i1 %i.ap, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit, label %.lr.ph.preheader, !prof !14

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit: ; preds = %bb.s
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit
  %.ph = phi i64 [ 19, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit ], [ 18, %bb.r ], [ 17, %bb.q ], [ 16, %bb.p ], [ 15, %bb.o ], [ 14, %bb.n ], [ 13, %bb.m ], [ 12, %bb.l ], [ 11, %bb.k ], [ 10, %bb.j ], [ 9, %bb.i ], [ 8, %bb.h ], [ 7, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 20, %bb.s ] ; 5 uses
  %i.aq = add nsw i64 %.ph, -3                    ; 2 uses
  %i.ar = and i64 %i.aq, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ar, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.as = add nsw i64 %.ph, -2                    ; 3 uses
  %i.at = udiv i64 %1, 100                        ; 2 uses
  %i.au = urem i64 %1, 100
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !2482
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i16 %i.aw, ptr %i.ax, align 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i6.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %.014.i5.unr = phi i64 [ %.ph, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %.lcssa20.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %i.ay = icmp ult i64 %i.aq, 2
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i6 = phi i64 [ %i.bg, %.lr.ph ], [ %.0.i6.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.014.i5 = phi i64 [ %i.bf, %.lr.ph ], [ %.014.i5.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.az = udiv i64 %.0.i6, 100
  %i.ba = urem i64 %.0.i6, 100
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !2482
  %i.bd = getelementptr i8, ptr %0, i64 %.014.i5
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  store i16 %i.bc, ptr %i.be, align 1
  %i.bf = add i64 %.014.i5, -4                    ; 4 uses
  %i.bg = udiv i64 %.0.i6, 10000                  ; 2 uses
  %i.bh = urem i64 %i.az, 100
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !2482
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i16 %i.bj, ptr %i.bk, align 1
  %i.bl = icmp ugt i64 %i.bf, 2
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !2483

._crit_edge.thread:                               ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !2482
  br label %bb.u

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa20 = phi i64 [ %.lcssa20.unr, %.lr.ph.prol.loopexit ], [ %i.bf, %.lr.ph ]
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.lcssa
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !2482 ; 2 uses
  %i.bq = icmp eq i64 %.lcssa20, 2
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.thread14, %._crit_edge
  %i.br = phi i16 [ %i.h, %._crit_edge.thread14 ], [ %i.bp, %._crit_edge ]
  %i.bs = phi i64 [ 2, %._crit_edge.thread14 ], [ %.ph, %._crit_edge ]
  store i16 %i.br, ptr %0, align 1
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bt = phi i16 [ %i.bn, %._crit_edge.thread ], [ %i.bp, %._crit_edge ]
  %i.bu = phi i64 [ 1, %._crit_edge.thread ], [ %.ph, %._crit_edge ]
  %i.bv = lshr i16 %i.bt, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  store i8 %i.bw, ptr %0, align 1, !tbaa !22
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit: ; preds = %bb.t, %bb.u
  %i.bx = phi i64 [ %i.bs, %bb.t ], [ %i.bu, %bb.u ]
  ret i64 %i.bx
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEED2Ev(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEEE, i64 16), ptr %0, align 16, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !1959 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 16, !tbaa !22
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS2_8FunctionIFvvEEEEUlvE_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.j = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef null) #28, !inline_history !2484 ; 0 uses
  br label %_ZNSt6thread8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS2_8FunctionIFvvEEEEUlvE_EEED2Ev.exit

_ZNSt6thread8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS2_8FunctionIFvvEEEEUlvE_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.b
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEEE, i64 16), ptr %0, align 16, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !1959 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 16, !tbaa !22
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #35, !inline_history !2485
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.j = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef null) #28, !inline_history !2486 ; 0 uses
  br label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEED2Ev.exit

_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.b
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 16 dead_on_return(8) dereferenceable(112) %0) #28, !inline_history !2485
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5folly18NamedThreadFactory9newThreadEONS3_8FunctionIFvvEEEEUlvE_EEEEE6_M_runEv(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !1959 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1961
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr %i.c, ptr %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !25
  tail call void %i.i(ptr noundef nonnull align 16 dereferenceable(96) %i.a), !inline_history !2487
  ret void
}

declare noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define void @_ZN5folly16ThreadedExecutor4workERNS_8FunctionIFvvEEE(ptr noundef nonnull align 64 dereferenceable(224) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Function", align 16  ; 6 uses
  %3 = alloca %"class.folly::Function", align 16  ; 7 uses
  %4 = alloca %"struct.folly::ThreadedExecutor::Message", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.a, align 16, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  store ptr null, ptr %2, align 16, !tbaa !22, !alias.scope !2494
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23, !noalias !2494 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.d, align 16, !tbaa !24, !noalias !2494
  store <2 x ptr> %i.h, ptr %i.c, align 16, !tbaa !24, !alias.scope !2494
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.d, align 16, !tbaa !25, !noalias !2494
  store ptr null, ptr %i.f, align 8, !tbaa !23, !noalias !2494
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i

_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i:         ; preds = %bb.a
  %i.i = call noundef i64 %i.g(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2) #28, !inline_history !2495 ; 0 uses
  %.pr.i.i = load ptr, ptr %i.f, align 8, !tbaa !23, !noalias !2494 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i4.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i
  %i.j = call noundef i64 %.pr.i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef null) #28, !inline_history !2496 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i, %bb.a
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23, !noalias !2494 ; 2 uses
  %.not.i9.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i9.i.i.i, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef i64 %i.k(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %1) #28, !inline_history !2496 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !23, !noalias !2494
  br label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i.i.i

_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i.i.i: ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ null, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  store ptr %i.m, ptr %i.f, align 8, !tbaa !23, !noalias !2494
  %i.n = load ptr, ptr %i.a, align 16, !tbaa !25, !noalias !2494
  store ptr %i.n, ptr %i.d, align 16, !tbaa !25, !noalias !2494
  store ptr null, ptr %i.b, align 8, !tbaa !23, !noalias !2494
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.a, align 16, !tbaa !25, !noalias !2494
  %5 = load ptr, ptr %i.c, align 16, !tbaa !25
  invoke void %5(ptr noundef nonnull align 16 dereferenceable(64) %2)
          to label %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit unwind label %bb.e, !inline_history !2497

bb.e:                                             ; preds = %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = call ptr @__cxa_begin_catch(ptr %i.p) #28 ; 0 uses
  call void @_ZN5folly8Executor21invokeCatchingExnsLogEPKc(ptr noundef nonnull @.str.90) #28, !inline_history !2498
  invoke void @__cxa_end_catch()
          to label %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #36
  unreachable

_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i.i.i, %bb.e
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.t, null
  br i1 %.not.i.i28, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit
  %i.u = call noundef i64 %i.t(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef null) #28, !inline_history !641 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %_ZN5folly15catch_exceptionIRNS_8FunctionIFvvEEERDoFvPKcEJRS6_EvEET2_OT_OT0_DpOT1_.exit, %bb.g
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.v, null
  br i1 %.not.i.i29, label %_ZN5folly8FunctionIFvvEED2Ev.exit30, label %bb.h

bb.h:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit
  %i.w = call noundef i64 %i.v(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #28, !inline_history !641 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit30

_ZN5folly8FunctionIFvvEED2Ev.exit30:              ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i32 1, ptr %4, align 16, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.y, i8 0, i64 48, i1 false)
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.z, align 16, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 4 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ac = tail call i64 @pthread_self() #38
  store i64 %i.ac, ptr %i.ab, align 16
  %i.ad = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_26default_hazptr_domain_implISt6atomicEEvNS1_9ArgCreateILb1EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.i, label %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i, !prof !14

bb.i:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit30
  %i.ae = call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb1EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_26default_hazptr_domain_implISt6atomicEEvNS1_9ArgCreateILb1EEEEERT1_vE3arg) #28
  br label %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i

_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i: ; preds = %bb.i, %_ZN5folly8FunctionIFvvEED2Ev.exit30
  %i.af = phi ptr [ %i.ae, %bb.i ], [ %i.ad, %_ZN5folly8FunctionIFvvEED2Ev.exit30 ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 448
  %i.ah = load i8, ptr %i.ag, align 64, !tbaa !28, !range !12, !noalias !2499, !noundef !13
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.j, label %.thread, !prof !46

bb.j:                                             ; preds = %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E13getLocalCacheEvE5cache) ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ak, null
  br i1 %.not.i15, label %bb.k, label %.noexc3, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.al = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E7getSlowERNS_6detail25SingletonThreadLocalState10LocalCacheE(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %.noexc3 unwind label %.loopexit.split-lp

.noexc3:                                          ; preds = %bb.k, %bb.j
  %i.am = phi ptr [ %i.ak, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !49, !noalias !2499 ; 2 uses
  %.not.i14 = icmp eq i8 %i.ao, 0
  br i1 %.not.i14, label %.thread, label %_ZN5folly9hazptr_tcISt6atomicE7try_getEv.exit, !prof !14

_ZN5folly9hazptr_tcISt6atomicE7try_getEv.exit:    ; preds = %.noexc3
  %i.ap = add i8 %i.ao, -1                        ; 2 uses
  store i8 %i.ap, ptr %i.an, align 8, !tbaa !49, !noalias !2499
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !51, !noalias !2499 ; 2 uses
  %.not.i.not = icmp eq ptr %i.as, null
  br i1 %.not.i.not, label %.thread, label %.noexc

.thread:                                          ; preds = %.noexc3, %_ZN5folly9hazptr_tcISt6atomicE7try_getEv.exit, %_ZN5folly6detail30StaticSingletonManagerWithRtti6createINS0_26default_hazptr_domain_implISt6atomicEEJELb1EEERT_RNS1_9ArgCreateIXT1_EEE.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread, %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i
  %i.aw = phi i64 [ %i.bd, %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i ], [ %i.au, %.thread ] ; 4 uses
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.az = or disjoint i64 %i.aw, 1
  %i.ba = cmpxchg weak ptr %i.at, i64 %i.aw, i64 %i.az acq_rel acquire, align 8
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  br i1 %i.bb, label %_ZN5folly13hazptr_domainISt6atomicE24try_pop_available_hprecsEh.exit.i, label %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bc = call noundef i32 @sched_yield() #28     ; 0 uses
  br label %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i

_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.bd = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i, label %.lr.ph.i.i

_ZN5folly13hazptr_domainISt6atomicE24try_pop_available_hprecsEh.exit.i: ; preds = %bb.l
  %i.bf = inttoptr i64 %i.aw to ptr               ; 2 uses
  %.012.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.012.i.i.i = load ptr, ptr %.012.in.i.i.i, align 16, !tbaa !54
  %i.bg = ptrtoint ptr %.012.i.i.i to i64
  store atomic i64 %i.bg, ptr %i.at release, align 8
  store ptr null, ptr %.012.in.i.i.i, align 16, !tbaa !54
  br label %.noexc

.lr.ph.i:                                         ; preds = %_ZN5folly13hazptr_domainISt6atomicE9cas_availERmm.exit.i.i, %.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bi = load atomic ptr, ptr %i.af acquire, align 64 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i31, label %bb.n, label %_ZN5folly13hazptr_domainISt6atomicE20get_or_create_hprecsEv.exit.i.i, !prof !14

bb.n:                                             ; preds = %.lr.ph.i
  %i.bj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly13hazptr_domainISt6atomicE25get_or_create_hprecs_slowEv(ptr noundef nonnull align 64 dereferenceable(449) %i.af)
          to label %_ZN5folly13hazptr_domainISt6atomicE20get_or_create_hprecsEv.exit.i.i unwind label %.loopexit

_ZN5folly13hazptr_domainISt6atomicE20get_or_create_hprecsEv.exit.i.i: ; preds = %bb.n, %.lr.ph.i
  %i.bk = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.bj, %bb.n ] ; 3 uses
  %i.bl = atomicrmw add ptr %i.bh, i32 1 monotonic, align 4
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8
  %i.bp = icmp ugt i64 %i.bo, %i.bm
  br i1 %i.bp, label %bb.o, label %bb.p, !prof !46

bb.o:                                             ; preds = %_ZN5folly13hazptr_domainISt6atomicE20get_or_create_hprecsEv.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.br = load atomic ptr, ptr %i.bq acquire, align 8
  br label %_ZN5folly13hazptr_domainISt6atomicE16create_new_hprecEv.exit.i

bb.p:                                             ; preds = %_ZN5folly13hazptr_domainISt6atomicE20get_or_create_hprecsEv.exit.i.i
  %i.bs = invoke noundef ptr @_ZN5folly17atomic_grow_arrayINS_10hazptr_recISt6atomicEENS_13hazptr_domainIS2_E20HazptrRecArrayPolicyEE7at_slowEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 noundef %i.bm)
          to label %_ZN5folly13hazptr_domainISt6atomicE16create_new_hprecEv.exit.i unwind label %.loopexit

_ZN5folly13hazptr_domainISt6atomicE16create_new_hprecEv.exit.i: ; preds = %bb.p, %bb.o
  %i.bt = phi ptr [ %i.br, %bb.o ], [ %i.bs, %bb.p ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bm
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !59 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr null, ptr %i.bx, align 16, !tbaa !54
  br label %.noexc

.noexc:                                           ; preds = %_ZN5folly13hazptr_domainISt6atomicE16create_new_hprecEv.exit.i, %_ZN5folly9hazptr_tcISt6atomicE7try_getEv.exit, %_ZN5folly13hazptr_domainISt6atomicE24try_pop_available_hprecsEh.exit.i
  %.sroa.0.1 = phi ptr [ %i.as, %_ZN5folly9hazptr_tcISt6atomicE7try_getEv.exit ], [ %i.bf, %_ZN5folly13hazptr_domainISt6atomicE24try_pop_available_hprecsEh.exit.i ], [ %i.bw, %_ZN5folly13hazptr_domainISt6atomicE16create_new_hprecEv.exit.i ] ; 13 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.bz = load atomic ptr, ptr %i.by monotonic, align 64 ; 2 uses
  store atomic ptr %i.bz, ptr %.sroa.0.1 release, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !60
  %i.ca = load atomic ptr, ptr %i.by acquire, align 64 ; 3 uses
  %.not.i2375 = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i2375, label %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EESB_SE_T0_.exit, label %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EEbRSB_SE_T0_.exit, !prof !61

_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EEbRSB_SE_T0_.exit: ; preds = %.noexc, %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EEbRSB_SE_T0_.exit
  %i.cb = phi ptr [ %i.cc, %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EEbRSB_SE_T0_.exit ], [ %i.ca, %.noexc ] ; 2 uses
  store atomic ptr null, ptr %.sroa.0.1 release, align 8
  store atomic ptr %i.cb, ptr %.sroa.0.1 release, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #28, !srcloc !60
  %i.cc = load atomic ptr, ptr %i.by acquire, align 64 ; 3 uses
  %.not.i23 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i23, label %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EESB_SE_T0_.exit, label %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EEbRSB_SE_T0_.exit, !prof !62

_ZN5folly13hazptr_holderISt6atomicE7protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EESB_SE_T0_.exit: ; preds = %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EEbRSB_SE_T0_.exit, %.noexc
  %.lcssa71 = phi ptr [ %i.ca, %.noexc ], [ %i.cc, %_ZN5folly13hazptr_holderISt6atomicE11try_protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EEbRSB_SE_T0_.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ce = atomicrmw add ptr %i.cd, i64 1 acq_rel, align 8 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.lcssa71, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !63
  %i.ch = add i64 %i.cg, 256
  %.not.i2577 = icmp ult i64 %i.ce, %i.ch
  br i1 %.not.i2577, label %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE11findSegmentEPNS4_7SegmentEm.exit, label %.lr.ph, !prof !61

.lr.ph:                                           ; preds = %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EESB_SE_T0_.exit, %.lr.ph
  %.0.i2478 = phi ptr [ %i.ci, %.lr.ph ], [ %.lcssa71, %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EESB_SE_T0_.exit ]
  %i.ci = call noundef ptr @_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE19getAllocNextSegmentEPNS4_7SegmentEm(ptr noundef nonnull align 64 dereferenceable(80) %i.x, ptr noundef nonnull %.0.i2478, i64 noundef %i.ce) #28 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !63
  %i.cl = add i64 %i.ck, 256
  %.not.i25 = icmp ult i64 %i.ce, %i.cl
  br i1 %.not.i25, label %_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE11findSegmentEPNS4_7SegmentEm.exit, label %.lr.ph, !prof !62, !llvm.loop !72

_ZN5folly14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ESt6atomicE11findSegmentEPNS4_7SegmentEm.exit: ; preds = %.lr.ph, %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EESB_SE_T0_.exit
  %.0.i24.lcssa76 = phi ptr [ %.lcssa71, %_ZN5folly13hazptr_holderISt6atomicE7protectINS_14UnboundedQueueINS_16ThreadedExecutor7MessageELb0ELb1ELb1ELm8ELm6ES1_E7SegmentEZNS2_7protectIS8_EEPT_RKS1_ISB_EEUlPS8_E_EESB_SE_T0_.exit ], [ %i.ci, %.lr.ph ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i24.lcssa76, i64 40 ; 2 uses
  %i.cn = mul i64 %i.ce, 27
  %i.co = and i64 %i.cn, 255
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i24.lcssa76, i64 64
  %i.cq = getelementptr inbounds nuw [112 x i8], ptr %i.cp, i64 %i.co ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i32, ptr %4, align 16, !tbaa !15
  store i32 %i.cs, ptr %i.cr, align 16, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 2 uses
  store ptr null, ptr %i.ct, align 16, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 88
  %i.cw = load <2 x ptr>, ptr %i.z, align 16, !tbaa !24
  store <2 x ptr> %i.cw, ptr %i.cu, align 16, !tbaa !24
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.z, align 16, !tbaa !25
end_hunk_0
