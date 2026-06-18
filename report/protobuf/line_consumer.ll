inline.NumInlined: 269
inline.NumDeleted: 106
begin_hunk_0_@_ZN6google8protobuf8compiler10objectivec17ParseSimpleStreamERNS0_2io19ZeroCopyInputStreamESt17basic_string_viewIcSt11char_traitsIcEEPNS2_12LineConsumerEPNSt7__cxx1112basic_stringIcS8_SaIcEEE:bb.a
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.af ], [ %i.dp, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.ah

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16Parser6FinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.t, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ true, %bb.r ], [ true, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.g
  br i1 %i.ds, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16Parser6FinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.dt = load i64, ptr %i.g, align 8, !tbaa !15
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #14
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16Parser6FinishEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.dv = load ptr, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.c
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit
  %i.dx = load i64, ptr %i.c, align 8, !tbaa !15
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret i1 %.0

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ag, %bb.q
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22, %bb.q ], [ %.pn, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.g
  br i1 %i.ea, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65: ; preds = %bb.ah
  %i.eb = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #14
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit67

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit67: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.ed = load ptr, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.c
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit67
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !15
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16ParserD2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  resume { ptr, i32 } %.pn22.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_16Parser10ParseChunkESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, ptr %2, ptr noundef nonnull %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !7
  %i.h = icmp eq ptr %2, null
  %i.i = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.i, %i.h
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.j = icmp ugt i64 %1, 15
  br i1 %i.j, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !13
  %i.l = load i64, ptr %i.b, align 8, !tbaa !11
  store i64 %i.l, ptr %i.g, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %1, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %2, align 1, !tbaa !15
  store i8 %i.n, ptr %i.m, align 1, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.o = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %4, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.s = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !16
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #13
          to label %.noexc18 unwind label %bb.h

.noexc18:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.w = load ptr, ptr %4, align 8, !tbaa !13
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef %i.w, i64 noundef %i.s)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.g
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !16
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.g
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.h
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.1147.0 = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %2, %bb.a ]
  %.sroa.044.0 = phi i64 [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %1, %bb.a ] ; 2 uses
  %.not.i73 = icmp eq i64 %.sroa.044.0, 0
  br i1 %.not.i73, label %._crit_edge, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %bb.w
  %.sroa.044.175 = phi i64 [ %.sroa.044.0, %.lr.ph.i.preheader.lr.ph ], [ %i.ao, %bb.w ] ; 6 uses
  %.sroa.1147.174 = phi ptr [ %.sroa.1147.0, %.lr.ph.i.preheader.lr.ph ], [ %i.an, %bb.w ] ; 7 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.01524.i = phi i64 [ %i.am, %bb.j ], [ 0, %.lr.ph.i.preheader ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.1147.174, i64 %.01524.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.am = add nuw i64 %.01524.i, 1                ; 4 uses
  switch i8 %i.al, label %bb.j [
    i8 13, label %bb.k
    i8 10, label %bb.k
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %i.am, %.sroa.044.175
  br i1 %exitcond.not.i, label %bb.x, label %.lr.ph.i, !llvm.loop !42

bb.k:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.1147.174, i64 %i.am
  %i.ao = sub i64 %.sroa.044.175, %i.am           ; 2 uses
  %i.ap = load i32, ptr %i.aj, align 8, !tbaa !28
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.aj, align 8, !tbaa !28
  %.not6.i = icmp eq i64 %.01524.i, 0
  br i1 %.not6.i, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.k
  %6 = call ptr @memchr(ptr noundef nonnull %.sroa.1147.174, i32 noundef 35, i64 noundef %.01524.i) #12 ; 2 uses
  %.not.i.i = icmp eq ptr %6, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ar = ptrtoint ptr %6 to i64
  %i.as = ptrtoint ptr %.sroa.1147.174 to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %.not.i23 = icmp eq i64 %i.at, -1
  %spec.select = select i1 %.not.i23, i64 %.01524.i, i64 %i.at
  br label %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.k, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.sroa.038.2 = phi i64 [ 0, %bb.k ], [ %.01524.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %spec.select, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ]
  %i.au = call { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %.sroa.038.2, ptr nonnull %.sroa.1147.174) ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0      ; 4 uses
  %i.aw = extractvalue { i64, ptr } %i.au, 1      ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = ashr i64 %i.av, 2                       ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.preheader.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bb = and i64 %i.av, 3
  %scevgep.i.i = getelementptr i8, ptr %i.aw, i64 %i.bb
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.preheader.i.i
  %.sroa.03.3.i.i.i.i = phi ptr [ %i.bu, %bb.o ], [ %i.ax, %.lr.ph.i.i.i.preheader.i.i ] ; 8 uses
  %.015.i.i.i.i.i = phi i64 [ %i.ca, %bb.o ], [ %i.az, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !15, !noalias !43
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !15, !noalias !43
  %i.bh = and i8 %i.bg, 8
  %.not.i.i24 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i24, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15, !noalias !43
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !15, !noalias !43
  %i.bn = and i8 %i.bm, 8
  %.not9.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not9.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit110, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !15, !noalias !43
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !15, !noalias !43
  %i.bt = and i8 %i.bs, 8
  %.not10.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not10.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit108, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -4 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !15, !noalias !43
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15, !noalias !43
  %i.bz = and i8 %i.by, 8
  %.not11.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = add nsw i64 %.015.i.i.i.i.i, -1
  %i.cb = icmp sgt i64 %.015.i.i.i.i.i, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !50

._crit_edge.i.i.i.i.i:                            ; preds = %bb.o, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.ax, %_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_113RemoveCommentEPSt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %scevgep.i.i, %bb.o ] ; 5 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.i.i.i.i to i64
  %i.cc = sub i64 %.pre-phi.i.i.i.i.i, %i.ay
  switch i64 %i.cc, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit [
    i64 3, label %bb.p
    i64 2, label %bb.q
    i64 1, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cd = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i, i64 -1 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15, !noalias !43
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !15, !noalias !43
  %i.ci = and i8 %i.ch, 8
  %.not12.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not12.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i
  %.sroa.03.2.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.cd, %bb.p ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i.i, i64 -1 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !15, !noalias !43
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !15, !noalias !43
  %i.co = and i8 %i.cn, 8
  %.not13.i.i = icmp eq i8 %i.co, 0
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi ptr [ %.sroa.03.0.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.cj, %bb.q ] ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i.i, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !15, !noalias !43
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !15, !noalias !43
  %i.cu = and i8 %i.ct, 8
  %.not14.i.i = icmp eq i8 %i.cu, 0
  %spec.select.i.i.i.i = select i1 %.not14.i.i, ptr %.sroa.03.1.i.i.i.i, ptr %i.aw
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit: ; preds = %bb.n
  %i.cv = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit108: ; preds = %bb.m
  %i.cw = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit110: ; preds = %bb.l
  %i.cx = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  br label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit108, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit110, %._crit_edge.i.i.i.i.i, %bb.p, %bb.q, %bb.r
  %.sink.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.r ], [ %.sroa.03.2.i.i.i.i, %bb.q ], [ %.sroa.03.0.i.i.i.i, %bb.p ], [ %i.aw, %._crit_edge.i.i.i.i.i ], [ %i.cx, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit110 ], [ %i.cw, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit108 ], [ %i.cv, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit ], [ %.sroa.03.3.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.cy = ptrtoint ptr %.sink.i.i.i.i.i to i64
  %i.cz = sub i64 %i.cy, %i.ay
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.cz) ; 2 uses
  %i.da = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.da, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.db = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !29
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef zeroext i1 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db, i64 %.sroa.speculated.i.i.i, ptr %i.aw, ptr noundef nonnull %3)
  br i1 %i.df, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !16
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 44) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i64 0, ptr %i.d, align 8, !tbaa !16
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.dk, align 1, !tbaa !15
  br label %bb.ag

bb.w:                                             ; preds = %bb.s, %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.w, %bb.i
  store i64 0, ptr %i.d, align 8, !tbaa !16
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.dl, align 1, !tbaa !15
  br label %bb.ag

bb.x:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.dm, ptr %5, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %.sroa.044.175, ptr %i.a, align 8, !tbaa !11
  %i.dn = icmp ugt i64 %.sroa.044.175, 15
  br i1 %i.dn, label %._crit_edge.i.i.i.i29.thread, label %._crit_edge.i.i.i.i29

._crit_edge.i.i.i.i29.thread:                     ; preds = %bb.x
  %i.do = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.do, ptr %5, align 8, !tbaa !13
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.dp, ptr %i.dm, align 8, !tbaa !15
  br label %bb.z

._crit_edge.i.i.i.i29:                            ; preds = %bb.x
  %cond = icmp eq i64 %.sroa.044.175, 1
  br i1 %cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i.i29
  %i.dq = load i8, ptr %.sroa.1147.174, align 1, !tbaa !15
  store i8 %i.dq, ptr %i.dm, align 8, !tbaa !15
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i.i29.thread, %._crit_edge.i.i.i.i29
  %i.dr = phi ptr [ %i.do, %._crit_edge.i.i.i.i29.thread ], [ %i.dm, %._crit_edge.i.i.i.i29 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr nonnull align 1 %.sroa.1147.174, i64 %.sroa.044.175, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !16
  %i.du = load ptr, ptr %5, align 8, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  store i8 0, ptr %i.dv, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !13  ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  %i.dz = load ptr, ptr %5, align 8, !tbaa !13    ; 5 uses
end_hunk_0
