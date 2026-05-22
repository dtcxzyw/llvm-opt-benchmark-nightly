inline.NumInlined: 891
inline.NumDeleted: 443
begin_hunk_0_@_ZN4YAML7Scanner11StartStreamEv:bb.a
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.c
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #27
          to label %.noexc4 unwind label %_ZNKSt14default_deleteIN4YAML7Scanner12IndentMarkerEEclEPS2_.exit.i8 ; 10 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = ptrtoint ptr %i.d to i64
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !17
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc4
  %i.ac = add i64 %i.p, -8
  %i.ad = sub i64 %i.ac, %i.q                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.ag = add i64 %i.p, -8
  %i.ah = sub i64 %i.ag, %i.q
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.aj
  %scevgep19 = getelementptr i8, ptr %i.o, i64 %i.aj
  %bound0 = icmp ult ptr %i.z, %scevgep19
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.z, i64 %i.ak   ; 2 uses
  %i.am = getelementptr i8, ptr %i.o, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.an ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.o, i64 %i.an ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.ao = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !17, !alias.scope !127, !noalias !122
  %wide.load21 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !17, !alias.scope !127, !noalias !122
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !17, !alias.scope !130, !noalias !127
  store <2 x i64> %wide.load21, ptr %i.ap, align 8, !tbaa !17, !alias.scope !130, !noalias !127
  %i.aq = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !17, !alias.scope !127, !noalias !122
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !17, !alias.scope !127, !noalias !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.i.i.i.preheader23:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.as = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !alias.scope !125, !noalias !122
  store i64 %i.as, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !alias.scope !122, !noalias !125
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !17, !alias.scope !125, !noalias !122
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !135

_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc4
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.noexc4 ], [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  store ptr %i.z, ptr %i.h, align 8, !tbaa !13
  store ptr %i.av, ptr %i.i, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.aw, ptr %i.k, align 8, !tbaa !121
  br label %_ZN4YAML10ptr_vectorINS_7Scanner12IndentMarkerEE9push_backEOSt10unique_ptrIS2_St14default_deleteIS2_EE.exit

_ZN4YAML10ptr_vectorINS_7Scanner12IndentMarkerEE9push_backEOSt10unique_ptrIS2_St14default_deleteIS2_EE.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i, %bb.b
  %i.ax = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17 ; 2 uses
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !136 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !137
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %.not.i.i.i5 = icmp eq ptr %i.ba, %i.bd
  br i1 %.not.i.i.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4YAML10ptr_vectorINS_7Scanner12IndentMarkerEE9push_backEOSt10unique_ptrIS2_St14default_deleteIS2_EE.exit
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.az, align 8, !tbaa !136
  br label %_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZN4YAML10ptr_vectorINS_7Scanner12IndentMarkerEE9push_backEOSt10unique_ptrIS2_St14default_deleteIS2_EE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @_ZNSt5dequeIPN4YAML7Scanner12IndentMarkerESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

_ZNKSt14default_deleteIN4YAML7Scanner12IndentMarkerEEclEPS2_.exit.i8: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24
  resume { ptr, i32 } %i.bg
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML7Scanner15ScanToNextTokenEv(ptr noundef nonnull align 8 dereferenceable(480) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.YAML::StreamCharSource", align 8 ; 5 uses
  %2 = alloca %"class.YAML::StreamCharSource", align 8 ; 5 uses
  %3 = alloca %"class.YAML::StreamCharSource", align 8 ; 5 uses
  %4 = alloca %"class.YAML::StreamCharSource", align 8 ; 5 uses
  %5 = alloca %"class.YAML::StreamCharSource", align 8 ; 5 uses
  %6 = alloca %"class.YAML::RegEx", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 210 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.k = call noundef zeroext i1 @_ZNK4YAML6StreamcvbEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %i.l = call noundef signext i8 @_ZNK4YAML6Stream4peekEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  switch i8 %i.l, label %.critedge [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.p = load atomic i8, ptr @_ZGVZN4YAML3Exp3TabEvE1e acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZN4YAML3Exp3TabEv.exit, !prof !138

bb.e:                                             ; preds = %bb.d
  %i.r = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4YAML3Exp3TabEvE1e) #25
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN4YAML3Exp3TabEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4YAML5RegExC1Ec(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4YAML3Exp3TabEvE1e, i8 noundef signext 9)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @__cxa_atexit(ptr nonnull @_ZN4YAML5RegExD2Ev, ptr nonnull @_ZZN4YAML3Exp3TabEvE1e, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4YAML3Exp3TabEvE1e) #25
  br label %_ZN4YAML3Exp3TabEv.exit

common.resume:                                    ; preds = %bb.s, %bb.n, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.ab, %bb.n ], [ %i.ao, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4YAML3Exp3TabEvE1e) #25
  br label %common.resume

_ZN4YAML3Exp3TabEv.exit:                          ; preds = %bb.d, %bb.e, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 0, ptr %5, align 8, !tbaa !112
  store ptr %0, ptr %i.c, align 8, !tbaa !115
  %i.u = call noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4YAML3Exp3TabEvE1e, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4YAML3Exp3TabEv.exit
  store i8 0, ptr %i.d, align 2, !tbaa !111
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4YAML3Exp3TabEv.exit, %bb.c
  call void @_ZN4YAML6Stream3eatEi(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef 1)
  %i.w = call noundef zeroext i1 @_ZNK4YAML6StreamcvbEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br i1 %i.w, label %.lr.ph, label %.critedge, !llvm.loop !139

.critedge:                                        ; preds = %bb.j, %.lr.ph, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.x = load atomic i8, ptr @_ZGVZN4YAML3Exp7CommentEvE1e acquire, align 8, !noalias !140
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.k, label %_ZN4YAML3Exp7CommentEv.exit, !prof !138

bb.k:                                             ; preds = %.critedge
  %i.z = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4YAML3Exp7CommentEvE1e) #25, !noalias !140
  %.not.i5 = icmp eq i32 %i.z, 0
  br i1 %.not.i5, label %_ZN4YAML3Exp7CommentEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4YAML5RegExC1Ec(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4YAML3Exp7CommentEvE1e, i8 noundef signext 35)
          to label %bb.m unwind label %bb.n, !noalias !140

bb.m:                                             ; preds = %bb.l
  %i.aa = call i32 @__cxa_atexit(ptr nonnull @_ZN4YAML5RegExD2Ev, ptr nonnull @_ZZN4YAML3Exp7CommentEvE1e, ptr nonnull @__dso_handle) #25, !noalias !140 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4YAML3Exp7CommentEvE1e) #25, !noalias !140
  br label %_ZN4YAML3Exp7CommentEv.exit

bb.n:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4YAML3Exp7CommentEvE1e) #25, !noalias !140
  br label %common.resume

_ZN4YAML3Exp7CommentEv.exit:                      ; preds = %.critedge, %bb.k, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(6) @_ZZN4YAML3Exp7CommentEvE1e, i64 6, i1 false)
  call void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN4YAML3Exp7CommentEvE1e, i64 8)), !inline_history !143
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i64 0, ptr %4, align 8, !tbaa !112
  store ptr %0, ptr %i.f, align 8, !tbaa !115
  %i.ac = invoke noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZN4YAML3Exp7CommentEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ad = icmp sgt i32 %i.ac, -1
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !144
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !147
  invoke void @_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_(ptr noundef %i.ae, ptr noundef %i.af)
          to label %_ZNSt6vectorIN4YAML5RegExESaIS1_EED2Ev.exit.i unwind label %bb.p, !inline_history !148

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #28, !inline_history !148
  unreachable

_ZNSt6vectorIN4YAML5RegExESaIS1_EED2Ev.exit.i:    ; preds = %bb.o
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZN4YAML5RegExD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4YAML5RegExESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #24, !inline_history !149
  br label %_ZN4YAML5RegExD2Ev.exit

_ZN4YAML5RegExD2Ev.exit:                          ; preds = %_ZNSt6vectorIN4YAML5RegExESaIS1_EED2Ev.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.ad, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %_ZN4YAML5RegExD2Ev.exit
  %i.aj = call noundef zeroext i1 @_ZNK4YAML6StreamcvbEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br i1 %i.aj, label %.lr.ph7, label %.critedge2

.lr.ph7:                                          ; preds = %.preheader, %bb.r
  %i.ak = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp5BreakEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i64 0, ptr %3, align 8, !tbaa !112
  store ptr %0, ptr %i.h, align 8, !tbaa !115
  %i.al = call noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %.critedge2, label %bb.r

bb.r:                                             ; preds = %.lr.ph7
  call void @_ZN4YAML6Stream3eatEi(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef 1)
  %i.an = call noundef zeroext i1 @_ZNK4YAML6StreamcvbEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br i1 %i.an, label %.lr.ph7, label %.critedge2, !llvm.loop !150

bb.s:                                             ; preds = %_ZN4YAML3Exp7CommentEv.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML5RegExD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

.critedge2:                                       ; preds = %bb.r, %.lr.ph7, %.preheader, %_ZN4YAML5RegExD2Ev.exit
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp5BreakEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i64 0, ptr %2, align 8, !tbaa !112
  store ptr %0, ptr %i.i, align 8, !tbaa !115
  %i.aq = call noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.critedge2
  %i.as = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp5BreakEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %1, align 8, !tbaa !112
  store ptr %0, ptr %i.j, align 8, !tbaa !115
  %i.at = call noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @_ZN4YAML6Stream3eatEi(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.at)
  call void @_ZN4YAML7Scanner19InvalidateSimpleKeyEv(ptr noundef nonnull align 8 dereferenceable(480) %0)
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.u, label %.backedge

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.d, align 2, !tbaa !111
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.t
  br label %bb.b, !llvm.loop !151

bb.v:                                             ; preds = %.critedge2
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML7Scanner15PopIndentToHereEv(ptr noundef nonnull align 8 dereferenceable(480) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.YAML::StreamCharSource", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !100
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !101  ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.pre1014 = phi ptr [ %i.h, %.lr.ph ], [ %i.ai, %bb.g ] ; 2 uses
  %i.n = phi ptr [ %i.g, %.lr.ph ], [ %i.ah, %bb.g ] ; 4 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !102, !noalias !152
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !106, !noalias !152
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 512
  br label %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit

_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit: ; preds = %bb.b, %bb.c
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.n, %bb.b ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !118  ; 2 uses
  %i.y = load i32, ptr %i.l, align 8, !tbaa !99   ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit
  %i.aa = icmp eq i32 %i.x, %i.y
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !107
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp10BlockEntryEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %1, align 8, !tbaa !112
  store ptr %0, ptr %i.m, align 8, !tbaa !115
  %i.af = call noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %..thread.loopexit_crit_edge, label %bb.g

..thread.loopexit_crit_edge:                      ; preds = %bb.f
  %.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !101
  %.pre10.pre = load ptr, ptr %i.f, align 8, !tbaa !101
  br label %.thread

bb.g:                                             ; preds = %bb.d, %bb.f
  call void @_ZN4YAML7Scanner9PopIndentEv(ptr noundef nonnull align 8 dereferenceable(480) %0)
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !101 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %.critedge, label %bb.b

.thread:                                          ; preds = %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit, %bb.e, %..thread.loopexit_crit_edge
  %.pre10 = phi ptr [ %.pre10.pre, %..thread.loopexit_crit_edge ], [ %.pre1014, %bb.e ], [ %.pre1014, %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit ]
  %.pre = phi ptr [ %.pre.pre, %..thread.loopexit_crit_edge ], [ %i.n, %bb.e ], [ %i.n, %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit ] ; 2 uses
  %i.ak = icmp eq ptr %.pre, %.pre10
  br i1 %i.ak, label %.critedge, label %.lr.ph9

.lr.ph9:                                          ; preds = %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 368
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph9, %bb.j
  %i.an = phi ptr [ %.pre, %.lr.ph9 ], [ %i.ba, %bb.j ] ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !102, !noalias !155
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit4

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !106, !noalias !155
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
end_hunk_0
