Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLowRankSSAugSystemSolver?download=true
inline.NumInlined: 748
inline.NumDeleted: 378
begin_hunk_0_@_ZN5Ipopt24LowRankSSAugSystemSolver14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(129) %i.u) #16, !inline_history !64
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundMatrixEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_14CompoundMatrixEEaSEPS1_.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_25ExpandedMultiVectorMatrixEEaSEPS1_.exit, %bb.f, %bb.g
  store ptr null, ptr %i.t, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !44 ; 4 uses
  %.not.i.i.i5 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i5, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEaSEPS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundMatrixEEaSEPS1_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !8
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !8
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEaSEPS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(265) %i.ad) #16, !inline_history !65
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEaSEPS1_.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundMatrixEEaSEPS1_.exit, %bb.h, %bb.i
  store ptr null, ptr %i.ac, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42 ; 4 uses
  %.not.i.i.i6 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i6, label %_ZN5Ipopt8SmartPtrINS_19CompoundVectorSpaceEEaSEPS1_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEaSEPS1_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !8
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !8
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %_ZN5Ipopt8SmartPtrINS_19CompoundVectorSpaceEEaSEPS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(48) %i.am) #16, !inline_history !66
  br label %_ZN5Ipopt8SmartPtrINS_19CompoundVectorSpaceEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_19CompoundVectorSpaceEEaSEPS1_.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEaSEPS1_.exit, %bb.j, %bb.k
  store ptr null, ptr %i.al, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53
  %i.be = tail call noundef zeroext i1 @_ZN5Ipopt23AlgorithmStrategyObject10InitializeERKNS_10JournalistERNS_8IpoptNLPERNS_9IpoptDataERNS_25IpoptCalculatedQuantitiesERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(2232) %i.bb, ptr noundef nonnull align 8 dereferenceable(2185) %i.bd, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 %i.be
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5Ipopt23AlgorithmStrategyObject10InitializeERKNS_10JournalistERNS_8IpoptNLPERNS_9IpoptDataERNS_25IpoptCalculatedQuantitiesERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(2232) %3, ptr noundef nonnull align 8 dereferenceable(2185) %4, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !8
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !59   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #16, !inline_history !68
  br label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit

_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit: ; preds = %bb.a, %bb.b, %bb.c
  store ptr %1, ptr %i.b, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !8
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !8
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !57   ; 4 uses
  %.not.i.i.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i8, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #16, !inline_history !69
  br label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit:    ; preds = %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit, %bb.d, %bb.e
  store ptr %2, ptr %i.n, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !8
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !8
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !55  ; 4 uses
  %.not.i.i.i9 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i9, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !8
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !8
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(2232) %i.ad) #16, !inline_history !70
  br label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit:   ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit, %bb.f, %bb.g
  store ptr %3, ptr %i.z, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !8
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !8
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !53 ; 4 uses
  %.not.i.i.i10 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i10, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !8
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !8
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(2185) %i.ap) #16, !inline_history !71
  br label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit, %bb.h, %bb.i
  store ptr %4, ptr %i.al, align 8, !tbaa !53
  %i.ax = load ptr, ptr %0, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 2 uses
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit
  store i8 0, ptr %i.a, align 8, !tbaa !67
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit
  ret i1 %i.ba
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5Ipopt24LowRankSSAugSystemSolver5SolveEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dPKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_RS4_SB_SB_SB_bi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef %7, ptr noundef %8, double noundef %9, ptr noundef %10, ptr noundef %11, double noundef %12, ptr noundef nonnull align 8 dereferenceable(205) %13, ptr noundef nonnull align 8 dereferenceable(205) %14, ptr noundef nonnull align 8 dereferenceable(205) %15, ptr noundef nonnull align 8 dereferenceable(205) %16, ptr noundef nonnull align 8 dereferenceable(205) %17, ptr noundef nonnull align 8 dereferenceable(205) %18, ptr noundef nonnull align 8 dereferenceable(205) %19, ptr noundef nonnull align 8 dereferenceable(205) %20, i1 noundef zeroext %21, i32 noundef %22) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !61, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !77   ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.g, ptr %i.j, align 4, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %i.g, ptr %i.k, align 8, !tbaa !81
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Ipopt15DiagMatrixSpaceE, i64 16), ptr %i.h, align 8, !tbaa !10
  store i32 1, ptr %i.i, align 8, !tbaa !8
  %i.l = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18
          to label %.noexc unwind label %.body.thread ; 4 uses

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN5Ipopt10DiagMatrixC1EPKNS_14SymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %i.h)
          to label %_ZNK5Ipopt15DiagMatrixSpace17MakeNewDiagMatrixEv.exit unwind label %23

23:                                               ; preds = %.noexc
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 88) #17
  br label %.body

_ZNK5Ipopt15DiagMatrixSpace17MakeNewDiagMatrixEv.exit: ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !8
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !8
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !50   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK5Ipopt15DiagMatrixSpace17MakeNewDiagMatrixEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !8
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !8
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(88) %i.q) #16, !inline_history !62
  br label %bb.e

bb.e:                                             ; preds = %_ZNK5Ipopt15DiagMatrixSpace17MakeNewDiagMatrixEv.exit, %bb.c, %bb.d
  store ptr %i.l, ptr %i.m, align 8, !tbaa !50
  %i.y = load i32, ptr %i.i, align 8, !tbaa !8
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.i, align 8, !tbaa !8
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(20) %i.h) #16, !inline_history !82
  br label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit

.body.thread:                                     ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.thread, %23
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %.body.thread ], [ %24, %23 ] ; 2 uses
  %.pre = load i32, ptr %i.i, align 8, !tbaa !8
  %i.af = add nsw i32 %.pre, -1                   ; 2 uses
  store i32 %i.af, ptr %i.i, align 8, !tbaa !8
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101.sink.split, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101

_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit: ; preds = %bb.f, %bb.e, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(49) %i.ai)
  %spec.select = and i1 %21, %i.am
  %i.an = load i8, ptr %i.a, align 8, !tbaa !61, !range !72, !noundef !73
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !92
  %.not29.i = icmp eq i32 %i.aq, %i.as
  br i1 %.not29.i, label %bb.i, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge.i:                                      ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.au = load i32, ptr %i.at, align 4, !tbaa !92
  %.not30.i = icmp eq i32 %i.au, 0
  br i1 %.not30.i, label %bb.i, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.i:                                             ; preds = %.critedge.i, %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load double, ptr %i.av, align 8, !tbaa !93
  %i.ax = fcmp une double %2, %i.aw
  br i1 %i.ax, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not31.i = icmp eq ptr %3, null
  br i1 %.not31.i, label %.critedge46.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !94
  %.not32.i = icmp eq i32 %i.az, %i.bb
  br i1 %.not32.i, label %bb.l, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge46.i:                                    ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !94
  %.not33.i = icmp eq i32 %i.bd, 0
  br i1 %.not33.i, label %bb.l, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.l:                                             ; preds = %.critedge46.i, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load double, ptr %i.be, align 8, !tbaa !40
  %i.bg = fcmp une double %4, %i.bf
  br i1 %i.bg, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not34.i = icmp eq ptr %5, null
  br i1 %.not34.i, label %.critedge48.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !83
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !41
  %.not35.i = icmp eq i32 %i.bi, %i.bk
  br i1 %.not35.i, label %bb.o, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge48.i:                                    ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !41
  %.not36.i = icmp eq i32 %i.bm, 0
  br i1 %.not36.i, label %bb.o, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.o:                                             ; preds = %.critedge48.i, %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !95
  %i.bp = fcmp une double %6, %i.bo
  br i1 %i.bp, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !83
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !96
  %.not37.i = icmp eq i32 %i.br, %i.bt
  br i1 %.not37.i, label %bb.q, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.q:                                             ; preds = %bb.p
  %.not38.i = icmp eq ptr %8, null
  br i1 %.not38.i, label %.critedge50.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !83
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !97
  %.not39.i = icmp eq i32 %i.bv, %i.bx
  br i1 %.not39.i, label %bb.s, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge50.i:                                    ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !97
  %.not40.i = icmp eq i32 %i.bz, 0
  br i1 %.not40.i, label %bb.s, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.s:                                             ; preds = %.critedge50.i, %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !98
  %i.cc = fcmp une double %9, %i.cb
  br i1 %i.cc, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !83
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !99
  %.not41.i = icmp eq i32 %i.ce, %i.cg
  br i1 %.not41.i, label %bb.u, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.u:                                             ; preds = %bb.t
  %.not42.i = icmp eq ptr %11, null
  br i1 %.not42.i, label %.critedge52.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !83
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !100
  %.not43.i = icmp eq i32 %i.ci, %i.ck
  br i1 %.not43.i, label %bb.w, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge52.i:                                    ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !100
  %.not44.i = icmp eq i32 %i.cm, 0
  br i1 %.not44.i, label %bb.w, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.w:                                             ; preds = %.critedge52.i, %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.co = load double, ptr %i.cn, align 8, !tbaa !101
  %i.cp = fcmp une double %12, %i.co
  br i1 %i.cp, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit

_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread: ; preds = %bb.h, %.critedge.i, %bb.i, %bb.k, %.critedge46.i, %bb.l, %bb.n, %.critedge48.i, %bb.o, %bb.p, %bb.r, %.critedge50.i, %bb.s, %bb.t, %bb.v, %.critedge52.i, %bb.w, %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit
  %i.cq = tail call noundef i32 @_ZN5Ipopt24LowRankSSAugSystemSolver18UpdateExtendedDataEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, double noundef %2, ptr poison, double poison, ptr poison, double poison, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef %8, double poison, ptr nonnull align 8 poison, ptr poison, double poison, ptr noundef nonnull align 8 dereferenceable(205) %13, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(205) %15, ptr nonnull align 8 poison) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !83
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !92
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %2, ptr %i.cu, align 8, !tbaa !93
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !83
  br label %bb.y

bb.y:                                             ; preds = %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, %bb.x
  %.sink = phi i32 [ %i.cw, %bb.x ], [ 0, %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sink, ptr %i.cx, align 8, !tbaa !94
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %4, ptr %i.cy, align 8, !tbaa !40
  %.not90 = icmp eq ptr %5, null
  br i1 %.not90, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !83
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sink134 = phi i32 [ %i.da, %bb.z ], [ 0, %bb.y ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sink134, ptr %i.db, align 8, !tbaa !41
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %6, ptr %i.dc, align 8, !tbaa !95
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !83
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.de, ptr %i.df, align 8, !tbaa !96
  %.not91 = icmp eq ptr %8, null
  br i1 %.not91, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !83
end_hunk_0
begin_hunk_1_@_ZN5Ipopt24LowRankSSAugSystemSolver5SolveEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dPKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_RS4_SB_SB_SB_bi:bb.a
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 8, !tbaa !8, !noalias !105
  br label %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit

_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit: ; preds = %bb.ah, %.noexc104
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !10
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(205) %i.ed, double noundef 0.000000e+00)
          to label %.noexc105 unwind label %bb.as, !inline_history !111

.noexc105:                                        ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.ed)
          to label %_ZN5Ipopt6Vector3SetEd.exit unwind label %bb.as

_ZN5Ipopt6Vector3SetEd.exit:                      ; preds = %.noexc105
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !8
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !8
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ai, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.ai:                                            ; preds = %_ZN5Ipopt6Vector3SetEd.exit
  %i.eo = load ptr, ptr %i.ed, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  tail call void %i.eq(ptr noundef nonnull align 8 dereferenceable(205) %i.ed) #16, !inline_history !112
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %_ZN5Ipopt6Vector3SetEd.exit, %bb.ai
  %i.er = load ptr, ptr %i.dr, align 8, !tbaa !42 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = invoke noundef ptr %i.eu(ptr noundef nonnull align 8 dereferenceable(48) %i.er, i1 noundef zeroext true)
          to label %bb.aj unwind label %bb.au     ; 10 uses

bb.aj:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %.not.i.i108 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i108, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit109, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !8
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.ew, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit109

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit109: ; preds = %bb.aj, %bb.ak
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ev, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %19)
          to label %bb.al unwind label %bb.av

bb.al:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit109
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !113
  %i.fb = add nsw i32 %i.fa, %22
  %i.fc = load ptr, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !50
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !46
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !44
  %i.fj = load ptr, ptr %i.fc, align 8, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef i32 %i.fl(ptr noundef nonnull align 8 dereferenceable(49) %i.fc, ptr noundef %i.fe, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef %i.fg, ptr noundef %i.fi, double noundef %9, ptr noundef nonnull %10, ptr noundef %11, double noundef %12, ptr noundef nonnull align 8 dereferenceable(205) %13, ptr noundef nonnull align 8 dereferenceable(205) %14, ptr noundef nonnull align 8 dereferenceable(205) %i.dw, ptr noundef nonnull align 8 dereferenceable(205) %16, ptr noundef nonnull align 8 dereferenceable(205) %17, ptr noundef nonnull align 8 dereferenceable(205) %18, ptr noundef nonnull align 8 dereferenceable(205) %i.ev, ptr noundef nonnull align 8 dereferenceable(205) %20, i1 noundef zeroext %spec.select, i32 noundef %i.fb)
          to label %bb.am unwind label %bb.av     ; 3 uses

bb.am:                                            ; preds = %bb.al
  %i.fn = load ptr, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = invoke noundef zeroext i1 %i.fq(ptr noundef nonnull align 8 dereferenceable(49) %i.fn)
          to label %bb.an unwind label %bb.av

bb.an:                                            ; preds = %bb.am
  br i1 %i.fr, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %i.fs = load ptr, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !10
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = invoke noundef i32 %i.fv(ptr noundef nonnull align 8 dereferenceable(49) %i.fs)
          to label %bb.ap unwind label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.fx = load i32, ptr %i.ez, align 8, !tbaa !113
  %i.fy = sub nsw i32 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !114
  br label %bb.ax

bb.aq:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.ar:                                            ; preds = %bb.ag
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.as:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit, %.noexc105
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !8
  %i.gf = add nsw i32 %i.ge, -1                   ; 2 uses
  store i32 %i.gf, ptr %i.gd, align 8, !tbaa !8
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.at, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.at:                                            ; preds = %bb.as
  %i.gh = load ptr, ptr %i.ed, align 8, !tbaa !10
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  tail call void %i.gj(ptr noundef nonnull align 8 dereferenceable(205) %i.ed) #16, !inline_history !112
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.au:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.av:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit109, %bb.al, %bb.am, %bb.ao, %bb.ay
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !8
  %i.go = add nsw i32 %i.gn, -1                   ; 2 uses
  store i32 %i.go, ptr %i.gm, align 8, !tbaa !8
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.aw, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.aw:                                            ; preds = %bb.av
  %i.gq = load ptr, ptr %i.ev, align 8, !tbaa !10
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  tail call void %i.gs(ptr noundef nonnull align 8 dereferenceable(265) %i.ev) #16, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.ax:                                            ; preds = %bb.ap, %bb.an
  %.not95 = icmp eq i32 %i.fm, 0
  br i1 %.not95, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !59 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !10
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.gx(ptr noundef nonnull align 8 dereferenceable(40) %i.gu, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %i.fm)
          to label %bb.az unwind label %bb.av

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !8
  %i.ha = add nsw i32 %i.gz, -1                   ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !8
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.ba, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit114

bb.ba:                                            ; preds = %bb.az
  %i.hc = load ptr, ptr %i.ev, align 8, !tbaa !10
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  tail call void %i.he(ptr noundef nonnull align 8 dereferenceable(265) %i.ev) #16, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit114

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit114: ; preds = %bb.ba, %bb.az
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !8
  %i.hh = add nsw i32 %i.hg, -1                   ; 2 uses
  store i32 %i.hh, ptr %i.hf, align 8, !tbaa !8
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.bb, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit116

bb.bb:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit114
  %i.hj = load ptr, ptr %i.dw, align 8, !tbaa !10
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  tail call void %i.hl(ptr noundef nonnull align 8 dereferenceable(265) %i.dw) #16, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit116

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit116: ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit114, %bb.bb
  ret i32 %i.fm

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111:      ; preds = %bb.aq, %bb.at, %bb.as, %bb.ar, %bb.aw, %bb.av, %bb.au
  %.pn96.pn = phi { ptr, i32 } [ %i.gc, %bb.at ], [ %i.ga, %bb.aq ], [ %i.gb, %bb.ar ], [ %i.gc, %bb.as ], [ %i.gk, %bb.au ], [ %i.gl, %bb.av ], [ %i.gl, %bb.aw ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !8
  %i.ho = add nsw i32 %i.hn, -1                   ; 2 uses
  store i32 %i.ho, ptr %i.hm, align 8, !tbaa !8
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101.sink.split, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101

_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101.sink.split: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111, %.body
  %.sink153 = phi ptr [ %i.h, %.body ], [ %i.dw, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111 ] ; 2 uses
  %.pn96.pn.pn.ph = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn96.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111 ]
  %i.hq = load ptr, ptr %.sink153, align 8, !tbaa !10
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  tail call void %i.hs(ptr noundef nonnull align 8 dereferenceable(20) %.sink153) #16
  br label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101

_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101: ; preds = %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101.sink.split, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111, %.body
  %.pn96.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn96.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111 ], [ %.pn96.pn.pn.ph, %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101.sink.split ]
  resume { ptr, i32 } %.pn96.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, double noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, double noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %7, ptr nofree noundef readonly captures(address_is_null) %8, double noundef %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %10, ptr nofree noundef readonly captures(address_is_null) %11, double noundef %12) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !92
  %.not29 = icmp eq i32 %i.b, %i.d
  br i1 %.not29, label %bb.c, label %bb.s

.critedge:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !92
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load double, ptr %i.g, align 8, !tbaa !93
  %i.i = fcmp une double %2, %i.h
  br i1 %i.i, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %.critedge46, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !94
  %.not32 = icmp eq i32 %i.k, %i.m
  br i1 %.not32, label %bb.f, label %bb.s

.critedge46:                                      ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !94
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e, %.critedge46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load double, ptr %i.p, align 8, !tbaa !40
  %i.r = fcmp une double %4, %i.q
  br i1 %i.r, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not34 = icmp eq ptr %5, null
  br i1 %.not34, label %.critedge48, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !41
  %.not35 = icmp eq i32 %i.t, %i.v
  br i1 %.not35, label %bb.i, label %bb.s

.critedge48:                                      ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %.not36 = icmp eq i32 %i.x, 0
  br i1 %.not36, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h, %.critedge48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load double, ptr %i.y, align 8, !tbaa !95
  %i.aa = fcmp une double %6, %i.z
  br i1 %i.aa, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !96
  %.not37 = icmp eq i32 %i.ac, %i.ae
  br i1 %.not37, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %.not38 = icmp eq ptr %8, null
  br i1 %.not38, label %.critedge50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !97
  %.not39 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not39, label %bb.m, label %bb.s

.critedge50:                                      ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !97
  %.not40 = icmp eq i32 %i.ak, 0
  br i1 %.not40, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l, %.critedge50
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load double, ptr %i.al, align 8, !tbaa !98
  %i.an = fcmp une double %9, %i.am
  br i1 %i.an, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !99
  %.not41 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not41, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %.not42 = icmp eq ptr %11, null
  br i1 %.not42, label %.critedge52, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.av = load i32, ptr %i.au, align 4, !tbaa !100
  %.not43 = icmp eq i32 %i.at, %i.av
  br i1 %.not43, label %bb.q, label %bb.s

.critedge52:                                      ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !100
  %.not44 = icmp eq i32 %i.ax, 0
  br i1 %.not44, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p, %.critedge52
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load double, ptr %i.ay, align 8, !tbaa !101
  %i.ba = fcmp une double %12, %i.az
  br i1 %i.ba, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %.critedge, %bb.c, %bb.e, %.critedge46, %bb.f, %bb.h, %.critedge48, %bb.i, %bb.j, %bb.l, %.critedge50, %bb.m, %bb.n, %bb.p, %.critedge52, %bb.q, %bb.r
  %.0 = phi i1 [ false, %bb.r ], [ true, %bb.q ], [ true, %.critedge52 ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.m ], [ true, %.critedge50 ], [ true, %bb.l ], [ true, %bb.j ], [ true, %bb.i ], [ true, %.critedge48 ], [ true, %bb.h ], [ true, %bb.f ], [ true, %.critedge46 ], [ true, %bb.e ], [ true, %bb.c ], [ true, %.critedge ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5Ipopt24LowRankSSAugSystemSolver18UpdateExtendedDataEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, ptr nofree readnone captures(none) %3, double %4, ptr nofree readnone captures(none) %5, double %6, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef %8, double %9, ptr nofree nonnull readnone align 8 captures(none) %10, ptr nofree readnone captures(none) %11, double %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %13, ptr nofree nonnull readnone align 8 captures(none) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %15, ptr nofree nonnull readnone align 8 captures(none) %16) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %17 = alloca %"class.Ipopt::SmartPtr.66", align 8 ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::allocator.28", align 1 ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator.28", align 1 ; 5 uses
  %22 = alloca %"class.Ipopt::SmartPtr.52", align 8 ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::allocator.28", align 1 ; 4 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::allocator.28", align 1 ; 5 uses
  %27 = alloca %"class.Ipopt::SmartPtr.52", align 8 ; 4 uses
  %28 = alloca %"class.Ipopt::SmartPtr.52", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115, !noalias !118 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121, !noalias !124 ; 18 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null        ; 9 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK5Ipopt22LowRankUpdateSymMatrix9P_LowRankEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8, !noalias !124
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !8, !noalias !124
  br label %_ZNK5Ipopt22LowRankUpdateSymMatrix9P_LowRankEv.exit

_ZNK5Ipopt22LowRankUpdateSymMatrix9P_LowRankEv.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !127 ; 10 uses
  %.not.i.i.i.i.i151 = icmp eq ptr %i.i, null     ; 3 uses
  br i1 %.not.i.i.i.i.i151, label %_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5Ipopt22LowRankUpdateSymMatrix9P_LowRankEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !8, !noalias !127
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !8, !noalias !127
  br label %_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit

end_hunk_1
