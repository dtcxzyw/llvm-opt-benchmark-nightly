Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ContextVariableUtils?download=true
inline.NumInlined: 495
inline.NumDeleted: 222
begin_hunk_0_@_ZN16OpenColorIO_v2_524ContainsContextVariablesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !12
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 1) #20
  %i.e = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.g = load i64, ptr %i.a, align 8, !tbaa !12
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %._crit_edge.i.i20, label %.critedge

._crit_edge.i.i20:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !11
  store i8 37, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.k, align 1, !tbaa !12
  %i.l = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef 1) #20 ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %._crit_edge.i.i20
  %i.o = load i64, ptr %i.i, align 8, !tbaa !12
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %._crit_edge.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not16 = icmp eq i64 %i.l, -1
  br i1 %.not16, label %.critedge, label %._crit_edge.i.i27

._crit_edge.i.i27:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !11
  store i8 37, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.s, align 1, !tbaa !12
  %i.t = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.q, i64 noundef -1, i64 noundef 1) #20 ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.q
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %._crit_edge.i.i27
  %i.w = load i64, ptr %i.q, align 8, !tbaa !12
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %._crit_edge.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not18 = icmp ne i64 %i.t, -1
  %.not19 = icmp ne i64 %i.l, %i.t
  %or.cond.not = and i1 %.not18, %.not19
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %or.cond.not, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_515LoadEnvironmentERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9EnvMapKeyIS6_EESaISt4pairIKS6_S6_EEEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %i.d = load ptr, ptr @environ, align 8, !tbaa !50 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %.not95 = icmp eq ptr %i.e, null
  br i1 %.not95, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.a
  ret void

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %.lr.ph
  %i.q = phi ptr [ %i.e, %.lr.ph ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ] ; 3 uses
  %.096 = phi ptr [ %i.d, %.lr.ph ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.f, ptr %2, align 8, !tbaa !11
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.r, ptr %i.c, align 8, !tbaa !17
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !16
  %i.u = load i64, ptr %i.c, align 8, !tbaa !17
  store i64 %i.u, ptr %i.f, align 8, !tbaa !12
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.v = phi ptr [ %i.t, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.r, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !12
  store i8 %i.w, ptr %i.v, align 1, !tbaa !12
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.x = load i64, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  store i64 %i.x, ptr %i.g, align 8, !tbaa !15
  %i.y = load ptr, ptr %2, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.aa = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 61, i64 noundef 0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %sext = shl i64 %i.aa, 32                       ; 2 uses
  %i.ab = ashr exact i64 %sext, 32
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !15, !noalias !52
  store ptr %i.h, ptr %3, align 8, !tbaa !11, !alias.scope !52
  %i.ad = load ptr, ptr %2, align 8, !tbaa !16, !noalias !52 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ac) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !52
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !17, !noalias !52
  %i.ae = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ae, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.e
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc24 unwind label %bb.q   ; 2 uses

.noexc24:                                         ; preds = %.noexc10.i.i
  store ptr %i.af, ptr %3, align 8, !tbaa !16, !alias.scope !52
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !52
  store i64 %i.ag, ptr %i.h, align 8, !tbaa !12, !alias.scope !52
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc24, %bb.e
  %i.ah = phi ptr [ %i.af, %.noexc24 ], [ %i.h, %bb.e ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !12
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !12
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ad, i64 %spec.select.i.i.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !52 ; 2 uses
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !15, !alias.scope !52
  %i.ak = load ptr, ptr %3, align 8, !tbaa !16, !alias.scope !52
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 0, ptr %i.al, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %sext16 = add i64 %sext, 4294967296
  %i.am = ashr exact i64 %sext16, 32              ; 4 uses
  %i.an = load i64, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.ao = icmp ugt i64 %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i64 noundef %i.am, i64 noundef %i.an) #22
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.h
  store ptr %i.j, ptr %4, align 8, !tbaa !11, !alias.scope !53
  %i.ap = load ptr, ptr %2, align 8, !tbaa !16, !noalias !53
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am ; 2 uses
  %i.ar = sub nuw i64 %i.an, %i.am                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !53
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !17, !noalias !53
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc10.i.i27, label %._crit_edge.i.i.i26

.noexc10.i.i27:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc29 unwind label %.loopexit ; 2 uses

.noexc29:                                         ; preds = %.noexc10.i.i27
  store ptr %i.at, ptr %4, align 8, !tbaa !16, !alias.scope !53
  %i.au = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !53
  store i64 %i.au, ptr %i.j, align 8, !tbaa !12, !alias.scope !53
  br label %._crit_edge.i.i.i26

._crit_edge.i.i.i26:                              ; preds = %.noexc29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.av = phi ptr [ %i.at, %.noexc29 ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.ar, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i26
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !12
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !12
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i26
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !53 ; 2 uses
  store i64 %i.ax, ptr %i.k, align 8, !tbaa !15, !alias.scope !53
  %i.ay = load ptr, ptr %4, align 8, !tbaa !16, !alias.scope !53
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 0, ptr %i.az, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !53
  br i1 %1, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !22  ; 3 uses
  %.not11.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not11.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !15
  %.fr9.i.i = freeze i64 %i.bb                    ; 7 uses
  %i.bc = load ptr, ptr %3, align 8               ; 2 uses
  %i.bd = icmp eq i64 %.fr9.i.i, 0                ; 2 uses
  br i1 %i.bd, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.split.us.i.i
  %.013.i.us.i.i = phi ptr [ %.1.i.us.i.i, %.lr.ph.i.split.us.i.i ], [ %i.ba, %.lr.ph.i.i.i ] ; 3 uses
  %.0812.i.us.i.i = phi ptr [ %.19.i.us.i.i, %.lr.ph.i.split.us.i.i ], [ %i.p, %.lr.ph.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.us.i.i, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !15
  %.not.not.not.i.i = icmp eq i64 %i.bf, 0        ; 2 uses
  %.sink.i.us.i.i = select i1 %.not.not.not.i.i, i64 16, i64 24
  %.19.i.us.i.i = select i1 %.not.not.not.i.i, ptr %.013.i.us.i.i, ptr %.0812.i.us.i.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.us.i.i, i64 %.sink.i.us.i.i
  %.1.i.us.i.i = load ptr, ptr %i.bg, align 8, !tbaa !23 ; 2 uses
  %.not.i.us.i.i = icmp eq ptr %.1.i.us.i.i, null
  br i1 %.not.i.us.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN16OpenColorIO_v2_59EnvMapKeyIS5_EESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.split.us.i.i, !llvm.loop !46

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i, %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i
  %.013.i.i.i = phi ptr [ %.1.i.i.i, %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i ], [ %i.ba, %.lr.ph.i.i.i ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %.19.i.i.i, %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i ], [ %i.p, %.lr.ph.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bi, %.fr9.i.i
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.split.i.i
  %i.bj = icmp ugt i64 %i.bi, %.fr9.i.i
  br i1 %i.bj, label %bb.n, label %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.split.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.bm = call i32 @memcmp(ptr noundef %i.bl, ptr noundef %i.bc, i64 noundef %.fr9.i.i) #20
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.split.i.i.i
  br label %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i

_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i: ; preds = %bb.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.split.i.i.i
  %.sink.i.i.i = phi i64 [ 24, %bb.n ], [ 16, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ 16, %.split.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %bb.n ], [ %.013.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.013.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN16OpenColorIO_v2_59EnvMapKeyIS5_EESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.split.i.i, !llvm.loop !46

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN16OpenColorIO_v2_59EnvMapKeyIS5_EESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i, %.lr.ph.i.split.us.i.i
  %.us-phi.i.i = phi ptr [ %.19.i.us.i.i, %.lr.ph.i.split.us.i.i ], [ %.19.i.i.i, %_ZNK16OpenColorIO_v2_59EnvMapKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_S9_.exit.thread.i.i.i ] ; 4 uses
  %i.bp = icmp eq ptr %.us-phi.i.i, %i.p
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN16OpenColorIO_v2_59EnvMapKeyIS5_EESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !15 ; 2 uses
  %.not.i3.i.i = icmp eq i64 %.fr9.i.i, %i.bs
  br i1 %.not.i3.i.i, label %bb.p, label %.split.i.i

.split.i.i:                                       ; preds = %bb.o
  %.not53 = icmp ugt i64 %.fr9.i.i, %i.bs
  br i1 %.not53, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE4findERSA_.exit

bb.p:                                             ; preds = %bb.o
  br i1 %i.bd, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE4findERSA_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !16
  %i.bu = call i32 @memcmp(ptr noundef %i.bc, ptr noundef %i.bt, i64 noundef %.fr9.i.i) #20
  %i.bv = icmp sgt i32 %i.bu, -1
  br i1 %i.bv, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE4findERSA_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE4findERSA_.exit: ; preds = %bb.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %.split.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.r

bb.q:                                             ; preds = %.noexc10.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

.loopexit:                                        ; preds = %.noexc10.i.i27
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.r:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE4findERSA_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.s:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN16OpenColorIO_v2_59EnvMapKeyIS5_EESaIS8_EE16_M_insert_uniqueIS8_EES6_ISt17_Rb_tree_iteratorIS8_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE6insertEOSB_.exit unwind label %bb.v ; 0 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE6insertEOSB_.exit: ; preds = %bb.t
  %i.ca = load ptr, ptr %i.l, align 8, !tbaa !16  ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.m
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE6insertEOSB_.exit
  %i.cc = load i64, ptr %i.m, align 8, !tbaa !12
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE6insertEOSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ce = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.n
  br i1 %i.cf, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cg = load i64, ptr %i.n, align 8, !tbaa !12
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #21
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.u:                                             ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.v ], [ %i.ci, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN16OpenColorIO_v2_59EnvMapKeyIS5_EESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %.split.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N16OpenColorIO_v2_59EnvMapKeyIS5_EESaISt4pairIKS5_S5_EEE4findERSA_.exit, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.ck = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.j
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.cm = load i64, ptr %i.j, align 8, !tbaa !12
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.co = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.h
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load i64, ptr %i.h, align 8, !tbaa !12
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.cs = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.f
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.cu = load i64, ptr %i.f, align 8, !tbaa !12
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #21
end_hunk_0
