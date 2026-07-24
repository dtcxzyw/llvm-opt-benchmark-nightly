inline.NumInlined: 6734
inline.NumDeleted: 3043
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb15SelectionVectorD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1511
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1511
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit, !prof !79

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIssNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 1
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !151
  store i64 %i.d, ptr %i.e, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIssNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1501
  %i.f = shl i64 %i.a, 1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !149
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !151
  store i64 %i.h, ptr %i.i, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !1501
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !753  ; 13 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !194   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !1502
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1503 ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [2 x i8], ptr %i.r, i64 %invariant.op ; 12 uses
  br i1 %.not.i, label %iter.check, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.03441.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !1512
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.03441.prol
  store i16 %i.aa, ptr %gep.prol, align 2, !tbaa !1512
  %i.ab = add nuw i64 %.03441.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1514

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.03441.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

iter.check:                                       ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 7 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.af = shl i64 %.pre, 1
  %i.ag = add i64 %i.af, %i.s
  %i.ah = shl i64 %2, 1
  %i.ai = add i64 %i.ah, %i.p
  %i.aj = sub i64 %i.ai, %i.ag
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check55 = icmp ult i64 %i.ae, 16
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %i.ak = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add i64 %2, %index                      ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <8 x i16>, ptr %i.am, align 2, !tbaa !1512
  %wide.load56 = load <8 x i16>, ptr %i.an, align 2, !tbaa !1512
  %i.ao = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.al ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store <8 x i16> %wide.load, ptr %i.ao, align 2, !tbaa !1512
  store <8 x i16> %wide.load56, ptr %i.ap, align 2, !tbaa !1512
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1515

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !1516

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec58 = and i64 %i.ae, -4                    ; 3 uses
  %i.ar = add i64 %2, %n.vec58
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 2 uses
  %i.as = add i64 %2, %index59                    ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.as
  %wide.load60 = load <4 x i16>, ptr %i.at, align 2, !tbaa !1512
  %i.au = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.as
  store <4 x i16> %wide.load60, ptr %i.au, align 2, !tbaa !1512
  %index.next61 = add nuw i64 %index59, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next61, %n.vec58
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1517

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.ae, %n.vec58
  br i1 %cmp.n62, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03441.us.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 4 uses
  %i.aw = sub i64 %3, %.03441.us.ph
  %xtraiter65 = and i64 %i.aw, 3                  ; 2 uses
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %.03441.us.prol = phi i64 [ %i.az, %.lr.ph.split.us.prol ], [ %.03441.us.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter67 = phi i64 [ %prol.iter67.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.03441.us.prol
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !1512
  %gep53.prol = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.03441.us.prol
  store i16 %i.ay, ptr %gep53.prol, align 2, !tbaa !1512
  %i.az = add nuw i64 %.03441.us.prol, 1          ; 2 uses
  %prol.iter67.next = add i64 %prol.iter67, 1     ; 2 uses
  %prol.iter67.cmp.not = icmp eq i64 %prol.iter67.next, %xtraiter65
  br i1 %prol.iter67.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1518

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %.03441.us.unr = phi i64 [ %.03441.us.ph, %.lr.ph.split.us.preheader ], [ %i.az, %.lr.ph.split.us.prol ]
  %i.ba = sub i64 %.03441.us.ph, %3
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.03441.us = phi i64 [ %i.bn, %.lr.ph.split.us ], [ %.03441.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.03441.us
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !1512
  %gep53 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.03441.us
  store i16 %i.bd, ptr %gep53, align 2, !tbaa !1512
  %i.be = add nuw i64 %.03441.us, 1               ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !1512
  %gep53.1 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.be
  store i16 %i.bg, ptr %gep53.1, align 2, !tbaa !1512
  %i.bh = add nuw i64 %.03441.us, 2               ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !1512
  %gep53.2 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.bh
  store i16 %i.bj, ptr %gep53.2, align 2, !tbaa !1512
  %i.bk = add nuw i64 %.03441.us, 3               ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !1512
  %gep53.3 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.bk
  store i16 %i.bm, ptr %gep53.3, align 2, !tbaa !1512
  %i.bn = add nuw i64 %.03441.us, 4               ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bn, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1519

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.bo = add i64 %.pre, %i.a
  store i64 %i.bo, ptr %0, align 8, !tbaa !194
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.br, align 8, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !75
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #34, !inline_history !762
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !76
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #34, !inline_history !762
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.l ], [ %i.ce, %bb.m ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ci, align 8, !tbaa !73
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !75
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !76
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #34, !inline_history !763
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !76
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #34, !inline_history !763
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.cl, %bb.r ], [ %i.cv, %bb.s ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cw, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !79

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.g
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.03441 = phi i64 [ %i.dx, %.lr.ph.split ], [ %.03441.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !1512
  %gep = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.03441
  store i16 %i.de, ptr %gep, align 2, !tbaa !1512
  %i.df = add nuw i64 %.03441, 1                  ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !1512
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.df
  store i16 %i.dk, ptr %gep.1, align 2, !tbaa !1512
end_hunk_0
begin_hunk_1_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.h = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIiiNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 2
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !151
  store i64 %i.d, ptr %i.e, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIiiNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1501
  %i.f = shl i64 %i.a, 2
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !149
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !151
  store i64 %i.h, ptr %i.i, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !1501
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !753  ; 12 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !194   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !1502
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1503 ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [4 x i8], ptr %i.r, i64 %invariant.op ; 11 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.03441.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441.prol
  store i32 %i.aa, ptr %gep.prol, align 4, !tbaa !3
  %i.ab = add nuw i64 %.03441.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1521

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.03441.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 20
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.af = shl i64 %.pre, 2
  %i.ag = add i64 %i.af, %i.s
  %i.ah = shl i64 %2, 2
  %i.ai = add i64 %i.ah, %i.p
  %i.aj = sub i64 %i.ai, %i.ag
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.ak = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add i64 %2, %index                      ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !3
  %wide.load55 = load <4 x i32>, ptr %i.an, align 4, !tbaa !3
  %i.ao = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.al ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store <4 x i32> %wide.load, ptr %i.ao, align 4, !tbaa !3
  store <4 x i32> %wide.load55, ptr %i.ap, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1522

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader56

.lr.ph.split.us.preheader56:                      ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block
  %.03441.us.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.split.us.preheader ], [ %i.ak, %middle.block ] ; 4 uses
  %i.ar = sub i64 %3, %.03441.us.ph
  %xtraiter58 = and i64 %i.ar, 3                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader56, %.lr.ph.split.us.prol
  %.03441.us.prol = phi i64 [ %i.au, %.lr.ph.split.us.prol ], [ %.03441.us.ph, %.lr.ph.split.us.preheader56 ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader56 ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.03441.us.prol
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %gep53.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441.us.prol
  store i32 %i.at, ptr %gep53.prol, align 4, !tbaa !3
  %i.au = add nuw i64 %.03441.us.prol, 1          ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1523

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader56
  %.03441.us.unr = phi i64 [ %.03441.us.ph, %.lr.ph.split.us.preheader56 ], [ %i.au, %.lr.ph.split.us.prol ]
  %i.av = sub i64 %.03441.us.ph, %3
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.03441.us = phi i64 [ %i.bi, %.lr.ph.split.us ], [ %.03441.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.03441.us
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %gep53 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441.us
  store i32 %i.ay, ptr %gep53, align 4, !tbaa !3
  %i.az = add nuw i64 %.03441.us, 1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %gep53.1 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.az
  store i32 %i.bb, ptr %gep53.1, align 4, !tbaa !3
  %i.bc = add nuw i64 %.03441.us, 2               ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %gep53.2 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.bc
  store i32 %i.be, ptr %gep53.2, align 4, !tbaa !3
  %i.bf = add nuw i64 %.03441.us, 3               ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %gep53.3 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.bf
  store i32 %i.bh, ptr %gep53.3, align 4, !tbaa !3
  %i.bi = add nuw i64 %.03441.us, 4               ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bi, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1524

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %bb.h
  %i.bj = add i64 %.pre, %i.a
  store i64 %i.bj, ptr %0, align 8, !tbaa !194
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bm, align 8, !tbaa !73
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !75
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34, !inline_history !762
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34, !inline_history !762
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bp, %bb.l ], [ %i.bz, %bb.m ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cd, align 8, !tbaa !73
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !75
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34, !inline_history !763
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34, !inline_history !763
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.cg, %bb.r ], [ %i.cq, %bb.s ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cr, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !79

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.g
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.03441 = phi i64 [ %i.ds, %.lr.ph.split ], [ %.03441.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %gep = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441
  store i32 %i.cz, ptr %gep, align 4, !tbaa !3
  %i.da = add nuw i64 %.03441, 1                  ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = zext i32 %i.dc to i64
end_hunk_1
begin_hunk_2_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.i = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIttNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 1
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !151
  store i64 %i.d, ptr %i.e, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIttNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1501
  %i.f = shl i64 %i.a, 1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !149
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !151
  store i64 %i.h, ptr %i.i, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !1501
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !753  ; 13 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !194   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !1502
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1503 ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [2 x i8], ptr %i.r, i64 %invariant.op ; 12 uses
  br i1 %.not.i, label %iter.check, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.03441.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !1512
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.03441.prol
  store i16 %i.aa, ptr %gep.prol, align 2, !tbaa !1512
  %i.ab = add nuw i64 %.03441.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1548

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.03441.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

iter.check:                                       ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 7 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.af = shl i64 %.pre, 1
  %i.ag = add i64 %i.af, %i.s
  %i.ah = shl i64 %2, 1
  %i.ai = add i64 %i.ah, %i.p
  %i.aj = sub i64 %i.ai, %i.ag
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check55 = icmp ult i64 %i.ae, 16
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %i.ak = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add i64 %2, %index                      ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <8 x i16>, ptr %i.am, align 2, !tbaa !1512
  %wide.load56 = load <8 x i16>, ptr %i.an, align 2, !tbaa !1512
  %i.ao = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.al ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store <8 x i16> %wide.load, ptr %i.ao, align 2, !tbaa !1512
  store <8 x i16> %wide.load56, ptr %i.ap, align 2, !tbaa !1512
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1549

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !1516

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec58 = and i64 %i.ae, -4                    ; 3 uses
  %i.ar = add i64 %2, %n.vec58
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 2 uses
  %i.as = add i64 %2, %index59                    ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.as
  %wide.load60 = load <4 x i16>, ptr %i.at, align 2, !tbaa !1512
  %i.au = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.as
  store <4 x i16> %wide.load60, ptr %i.au, align 2, !tbaa !1512
  %index.next61 = add nuw i64 %index59, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next61, %n.vec58
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1550

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.ae, %n.vec58
  br i1 %cmp.n62, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03441.us.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 4 uses
  %i.aw = sub i64 %3, %.03441.us.ph
  %xtraiter65 = and i64 %i.aw, 3                  ; 2 uses
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %.03441.us.prol = phi i64 [ %i.az, %.lr.ph.split.us.prol ], [ %.03441.us.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter67 = phi i64 [ %prol.iter67.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.03441.us.prol
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !1512
  %gep53.prol = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.03441.us.prol
  store i16 %i.ay, ptr %gep53.prol, align 2, !tbaa !1512
  %i.az = add nuw i64 %.03441.us.prol, 1          ; 2 uses
  %prol.iter67.next = add i64 %prol.iter67, 1     ; 2 uses
  %prol.iter67.cmp.not = icmp eq i64 %prol.iter67.next, %xtraiter65
  br i1 %prol.iter67.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1551

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %.03441.us.unr = phi i64 [ %.03441.us.ph, %.lr.ph.split.us.preheader ], [ %i.az, %.lr.ph.split.us.prol ]
  %i.ba = sub i64 %.03441.us.ph, %3
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.03441.us = phi i64 [ %i.bn, %.lr.ph.split.us ], [ %.03441.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.03441.us
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !1512
  %gep53 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.03441.us
  store i16 %i.bd, ptr %gep53, align 2, !tbaa !1512
  %i.be = add nuw i64 %.03441.us, 1               ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !1512
  %gep53.1 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.be
  store i16 %i.bg, ptr %gep53.1, align 2, !tbaa !1512
  %i.bh = add nuw i64 %.03441.us, 2               ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !1512
  %gep53.2 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.bh
  store i16 %i.bj, ptr %gep53.2, align 2, !tbaa !1512
  %i.bk = add nuw i64 %.03441.us, 3               ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !1512
  %gep53.3 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.bk
  store i16 %i.bm, ptr %gep53.3, align 2, !tbaa !1512
  %i.bn = add nuw i64 %.03441.us, 4               ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bn, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1552

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.bo = add i64 %.pre, %i.a
  store i64 %i.bo, ptr %0, align 8, !tbaa !194
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.br, align 8, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !75
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #34, !inline_history !762
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !76
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #34, !inline_history !762
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.l ], [ %i.ce, %bb.m ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ci, align 8, !tbaa !73
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !75
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !76
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #34, !inline_history !763
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !76
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #34, !inline_history !763
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.cl, %bb.r ], [ %i.cv, %bb.s ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cw, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !79

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.g
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.03441 = phi i64 [ %i.dx, %.lr.ph.split ], [ %.03441.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !1512
  %gep = getelementptr [2 x i8], ptr %invariant.gep52, i64 %.03441
  store i16 %i.de, ptr %gep, align 2, !tbaa !1512
  %i.df = add nuw i64 %.03441, 1                  ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !1512
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %i.df
  store i16 %i.dk, ptr %gep.1, align 2, !tbaa !1512
end_hunk_2
begin_hunk_3_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.h = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIjjNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 2
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !151
  store i64 %i.d, ptr %i.e, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIjjNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1501
  %i.f = shl i64 %i.a, 2
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !149
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !151
  store i64 %i.h, ptr %i.i, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !1501
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !753  ; 12 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !194   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !1502
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1503 ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [4 x i8], ptr %i.r, i64 %invariant.op ; 11 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.03441.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441.prol
  store i32 %i.aa, ptr %gep.prol, align 4, !tbaa !3
  %i.ab = add nuw i64 %.03441.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1554

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.03441.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 20
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.af = shl i64 %.pre, 2
  %i.ag = add i64 %i.af, %i.s
  %i.ah = shl i64 %2, 2
  %i.ai = add i64 %i.ah, %i.p
  %i.aj = sub i64 %i.ai, %i.ag
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.ak = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add i64 %2, %index                      ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !3
  %wide.load55 = load <4 x i32>, ptr %i.an, align 4, !tbaa !3
  %i.ao = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.al ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store <4 x i32> %wide.load, ptr %i.ao, align 4, !tbaa !3
  store <4 x i32> %wide.load55, ptr %i.ap, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1555

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader56

.lr.ph.split.us.preheader56:                      ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block
  %.03441.us.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.split.us.preheader ], [ %i.ak, %middle.block ] ; 4 uses
  %i.ar = sub i64 %3, %.03441.us.ph
  %xtraiter58 = and i64 %i.ar, 3                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader56, %.lr.ph.split.us.prol
  %.03441.us.prol = phi i64 [ %i.au, %.lr.ph.split.us.prol ], [ %.03441.us.ph, %.lr.ph.split.us.preheader56 ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader56 ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.03441.us.prol
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %gep53.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441.us.prol
  store i32 %i.at, ptr %gep53.prol, align 4, !tbaa !3
  %i.au = add nuw i64 %.03441.us.prol, 1          ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1556

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader56
  %.03441.us.unr = phi i64 [ %.03441.us.ph, %.lr.ph.split.us.preheader56 ], [ %i.au, %.lr.ph.split.us.prol ]
  %i.av = sub i64 %.03441.us.ph, %3
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.03441.us = phi i64 [ %i.bi, %.lr.ph.split.us ], [ %.03441.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.03441.us
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %gep53 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441.us
  store i32 %i.ay, ptr %gep53, align 4, !tbaa !3
  %i.az = add nuw i64 %.03441.us, 1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %gep53.1 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.az
  store i32 %i.bb, ptr %gep53.1, align 4, !tbaa !3
  %i.bc = add nuw i64 %.03441.us, 2               ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %gep53.2 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.bc
  store i32 %i.be, ptr %gep53.2, align 4, !tbaa !3
  %i.bf = add nuw i64 %.03441.us, 3               ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %gep53.3 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.bf
  store i32 %i.bh, ptr %gep53.3, align 4, !tbaa !3
  %i.bi = add nuw i64 %.03441.us, 4               ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bi, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1557

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %bb.h
  %i.bj = add i64 %.pre, %i.a
  store i64 %i.bj, ptr %0, align 8, !tbaa !194
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bm, align 8, !tbaa !73
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !75
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34, !inline_history !762
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34, !inline_history !762
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bp, %bb.l ], [ %i.bz, %bb.m ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cd, align 8, !tbaa !73
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !75
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34, !inline_history !763
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34, !inline_history !763
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.cg, %bb.r ], [ %i.cq, %bb.s ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cr, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !79

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.g
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.03441 = phi i64 [ %i.ds, %.lr.ph.split ], [ %.03441.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %gep = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441
  store i32 %i.cz, ptr %gep, align 4, !tbaa !3
  %i.da = add nuw i64 %.03441, 1                  ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = zext i32 %i.dc to i64
end_hunk_3
begin_hunk_4_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.h = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIffNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 2
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !151
  store i64 %i.d, ptr %i.e, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIffNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1501
  %i.f = shl i64 %i.a, 2
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !149
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !151
  store i64 %i.h, ptr %i.i, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !1501
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !753  ; 12 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !194   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !1502
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1503 ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [4 x i8], ptr %i.r, i64 %invariant.op ; 11 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.03441.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !222
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441.prol
  store float %i.aa, ptr %gep.prol, align 4, !tbaa !222
  %i.ab = add nuw i64 %.03441.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1561

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.03441.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 20
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.af = shl i64 %.pre, 2
  %i.ag = add i64 %i.af, %i.s
  %i.ah = shl i64 %2, 2
  %i.ai = add i64 %i.ah, %i.p
  %i.aj = sub i64 %i.ai, %i.ag
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.ak = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add i64 %2, %index                      ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <4 x float>, ptr %i.am, align 4, !tbaa !222
  %wide.load55 = load <4 x float>, ptr %i.an, align 4, !tbaa !222
  %i.ao = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.al ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store <4 x float> %wide.load, ptr %i.ao, align 4, !tbaa !222
  store <4 x float> %wide.load55, ptr %i.ap, align 4, !tbaa !222
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader56

.lr.ph.split.us.preheader56:                      ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block
  %.03441.us.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.split.us.preheader ], [ %i.ak, %middle.block ] ; 4 uses
  %i.ar = sub i64 %3, %.03441.us.ph
  %xtraiter58 = and i64 %i.ar, 3                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader56, %.lr.ph.split.us.prol
  %.03441.us.prol = phi i64 [ %i.au, %.lr.ph.split.us.prol ], [ %.03441.us.ph, %.lr.ph.split.us.preheader56 ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader56 ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.03441.us.prol
  %i.at = load float, ptr %i.as, align 4, !tbaa !222
  %gep53.prol = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441.us.prol
  store float %i.at, ptr %gep53.prol, align 4, !tbaa !222
  %i.au = add nuw i64 %.03441.us.prol, 1          ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1563

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader56
  %.03441.us.unr = phi i64 [ %.03441.us.ph, %.lr.ph.split.us.preheader56 ], [ %i.au, %.lr.ph.split.us.prol ]
  %i.av = sub i64 %.03441.us.ph, %3
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.03441.us = phi i64 [ %i.bi, %.lr.ph.split.us ], [ %.03441.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.03441.us
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !222
  %gep53 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441.us
  store float %i.ay, ptr %gep53, align 4, !tbaa !222
  %i.az = add nuw i64 %.03441.us, 1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !222
  %gep53.1 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.az
  store float %i.bb, ptr %gep53.1, align 4, !tbaa !222
  %i.bc = add nuw i64 %.03441.us, 2               ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !222
  %gep53.2 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.bc
  store float %i.be, ptr %gep53.2, align 4, !tbaa !222
  %i.bf = add nuw i64 %.03441.us, 3               ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !222
  %gep53.3 = getelementptr [4 x i8], ptr %invariant.gep52, i64 %i.bf
  store float %i.bh, ptr %gep53.3, align 4, !tbaa !222
  %i.bi = add nuw i64 %.03441.us, 4               ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bi, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1564

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %bb.h
  %i.bj = add i64 %.pre, %i.a
  store i64 %i.bj, ptr %0, align 8, !tbaa !194
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bm, align 8, !tbaa !73
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !75
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34, !inline_history !762
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34, !inline_history !762
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bp, %bb.l ], [ %i.bz, %bb.m ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cd, align 8, !tbaa !73
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !75
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34, !inline_history !763
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34, !inline_history !763
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.cg, %bb.r ], [ %i.cq, %bb.s ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cr, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !79

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.g
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.03441 = phi i64 [ %i.ds, %.lr.ph.split ], [ %.03441.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !222
  %gep = getelementptr [4 x i8], ptr %invariant.gep52, i64 %.03441
  store float %i.cz, ptr %gep, align 4, !tbaa !222
  %i.da = add nuw i64 %.03441, 1                  ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = zext i32 %i.dc to i64
end_hunk_4
begin_hunk_5_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.h = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIddNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 3
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !151
  store i64 %i.d, ptr %i.e, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIddNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1501
  %i.f = shl i64 %i.a, 3
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !149
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !151
  store i64 %i.h, ptr %i.i, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !1501
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !753  ; 12 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !194   ; 3 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load ptr, ptr %5, align 8, !tbaa !1502
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1503 ; 6 uses
  %.not.i = icmp eq ptr %i.u, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep52 = getelementptr [8 x i8], ptr %i.r, i64 %invariant.op ; 11 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.v = sub i64 %3, %2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.03441.prol = phi i64 [ %i.ab, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1467
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep52, i64 %.03441.prol
  store double %i.aa, ptr %gep.prol, align 8, !tbaa !1467
  %i.ab = add nuw i64 %.03441.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1566

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.03441.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.ab, %.lr.ph.split.prol ]
  %i.ac = sub i64 %2, %3
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ae = sub i64 %3, %2                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 18
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.af = shl i64 %.pre, 3
  %i.ag = add i64 %i.af, %i.s
  %i.ah = shl i64 %2, 3
  %i.ai = add i64 %i.ah, %i.p
  %i.aj = sub i64 %i.ai, %i.ag
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %.lr.ph.split.us.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -4                      ; 3 uses
  %i.ak = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add i64 %2, %index                      ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !1467
  %wide.load55 = load <2 x double>, ptr %i.an, align 8, !tbaa !1467
  %i.ao = getelementptr [8 x i8], ptr %invariant.gep52, i64 %i.al ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store <2 x double> %wide.load, ptr %i.ao, align 8, !tbaa !1467
  store <2 x double> %wide.load55, ptr %i.ap, align 8, !tbaa !1467
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1567

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader56

.lr.ph.split.us.preheader56:                      ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block
  %.03441.us.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.split.us.preheader ], [ %i.ak, %middle.block ] ; 4 uses
  %i.ar = sub i64 %3, %.03441.us.ph
  %xtraiter58 = and i64 %i.ar, 3                  ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader56, %.lr.ph.split.us.prol
  %.03441.us.prol = phi i64 [ %i.au, %.lr.ph.split.us.prol ], [ %.03441.us.ph, %.lr.ph.split.us.preheader56 ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader56 ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.03441.us.prol
  %i.at = load double, ptr %i.as, align 8, !tbaa !1467
  %gep53.prol = getelementptr [8 x i8], ptr %invariant.gep52, i64 %.03441.us.prol
  store double %i.at, ptr %gep53.prol, align 8, !tbaa !1467
  %i.au = add nuw i64 %.03441.us.prol, 1          ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1568

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader56
  %.03441.us.unr = phi i64 [ %.03441.us.ph, %.lr.ph.split.us.preheader56 ], [ %i.au, %.lr.ph.split.us.prol ]
  %i.av = sub i64 %.03441.us.ph, %3
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.03441.us = phi i64 [ %i.bi, %.lr.ph.split.us ], [ %.03441.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.03441.us
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !1467
  %gep53 = getelementptr [8 x i8], ptr %invariant.gep52, i64 %.03441.us
  store double %i.ay, ptr %gep53, align 8, !tbaa !1467
  %i.az = add nuw i64 %.03441.us, 1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !1467
  %gep53.1 = getelementptr [8 x i8], ptr %invariant.gep52, i64 %i.az
  store double %i.bb, ptr %gep53.1, align 8, !tbaa !1467
  %i.bc = add nuw i64 %.03441.us, 2               ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !1467
  %gep53.2 = getelementptr [8 x i8], ptr %invariant.gep52, i64 %i.bc
  store double %i.be, ptr %gep53.2, align 8, !tbaa !1467
  %i.bf = add nuw i64 %.03441.us, 3               ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !1467
  %gep53.3 = getelementptr [8 x i8], ptr %invariant.gep52, i64 %i.bf
  store double %i.bh, ptr %gep53.3, align 8, !tbaa !1467
  %i.bi = add nuw i64 %.03441.us, 4               ; 2 uses
  %exitcond44.not.3 = icmp eq i64 %i.bi, %3
  br i1 %exitcond44.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1569

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block, %bb.h
  %i.bj = add i64 %.pre, %i.a
  store i64 %i.bj, ptr %0, align 8, !tbaa !194
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bm, align 8, !tbaa !73
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !75
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34, !inline_history !762
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34, !inline_history !762
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bp, %bb.l ], [ %i.bz, %bb.m ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.cd, align 8, !tbaa !73
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !75
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34, !inline_history !763
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34, !inline_history !763
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.cg, %bb.r ], [ %i.cq, %bb.s ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cr, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !79

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.g
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.03441 = phi i64 [ %i.ds, %.lr.ph.split ], [ %.03441.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03441
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !1467
  %gep = getelementptr [8 x i8], ptr %invariant.gep52, i64 %.03441
  store double %i.cz, ptr %gep, align 8, !tbaa !1467
  %i.da = add nuw i64 %.03441, 1                  ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = zext i32 %i.dc to i64
end_hunk_5
begin_hunk_6_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv:bb.a
  store i8 12, ptr %i.a, align 1, !tbaa !1507
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.h = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ArrowScalarDataIisNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 3 uses
  %i.c = shl i64 %2, 2
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.g, i64 noundef %i.d) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.d) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !151
  store i64 %i.d, ptr %i.e, align 8, !tbaa !149
  br label %_ZN6duckdb11ArrowBuffer7reserveEm.exit

_ZN6duckdb11ArrowBuffer7reserveEm.exit:           ; preds = %bb.a, %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19ArrowScalarBaseDataIisNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = sub i64 %3, %2                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb15ArrowAppendData14AppendValidityERNS_19UnifiedVectorFormatEmm(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(73) %5, i64 noundef %2, i64 noundef %3)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11ArrowBufferELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit unwind label %bb.v ; 5 uses

_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1501
  %i.f = shl i64 %i.a, 2
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = invoke noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.g)
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !149
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.h) #38
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = call noalias ptr @malloc(i64 noundef %i.h) #39
  br label %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i

_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ]
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !151
  store i64 %i.h, ptr %i.i, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb11ArrowBuffer15ReserveInternalEm.exit.i.i, %.noexc
  store i64 %i.g, ptr %i.d, align 8, !tbaa !1501
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !753  ; 7 uses
  %i.p = icmp ult i64 %2, %3
  %.pre = load i64, ptr %0, align 8, !tbaa !194   ; 2 uses
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.r = load ptr, ptr %5, align 8, !tbaa !1502
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1503 ; 6 uses
  %.not.i = icmp eq ptr %i.s, null
  %invariant.op = sub i64 %.pre, %2
  %invariant.gep51 = getelementptr [4 x i8], ptr %i.q, i64 %invariant.op ; 7 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.t = sub i64 %3, %2
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.03441.prol = phi i64 [ %i.aa, %.lr.ph.split.prol ], [ %2, %.lr.ph.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.03441.prol
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !1512
  %i.z = sext i16 %i.y to i32
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep51, i64 %.03441.prol
  store i32 %i.z, ptr %gep.prol, align 4, !tbaa !3
  %i.aa = add nuw i64 %.03441.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !1571

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.03441.unr = phi i64 [ %2, %.lr.ph.split.preheader ], [ %i.aa, %.lr.ph.split.prol ]
  %i.ab = sub i64 %2, %3
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ad = sub i64 %3, %2                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %i.ad, -8                      ; 3 uses
  %i.ae = add i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = add i64 %2, %index                      ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %wide.load = load <4 x i16>, ptr %i.ag, align 2, !tbaa !1512
  %wide.load54 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !1512
  %i.ai = sext <4 x i16> %wide.load to <4 x i32>
  %i.aj = sext <4 x i16> %wide.load54 to <4 x i32>
  %i.ak = getelementptr [4 x i8], ptr %invariant.gep51, i64 %i.af ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  store <4 x i32> %i.ai, ptr %i.ak, align 4, !tbaa !3
  store <4 x i32> %i.aj, ptr %i.al, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1572

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader55

.lr.ph.split.us.preheader55:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %.03441.us.ph = phi i64 [ %2, %.lr.ph.split.us.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader55, %.lr.ph.split.us
  %.03441.us = phi i64 [ %i.aq, %.lr.ph.split.us ], [ %.03441.us.ph, %.lr.ph.split.us.preheader55 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.03441.us
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !1512
  %i.ap = sext i16 %i.ao to i32
  %gep52 = getelementptr [4 x i8], ptr %invariant.gep51, i64 %.03441.us
  store i32 %i.ap, ptr %gep52, align 4, !tbaa !3
  %i.aq = add nuw i64 %.03441.us, 1               ; 2 uses
  %exitcond43.not = icmp eq i64 %i.aq, %3
  br i1 %exitcond43.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1573

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us, %middle.block, %bb.h
  %i.ar = add i64 %.pre, %i.a
  store i64 %i.ar, ptr %0, align 8, !tbaa !194
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.au, align 8, !tbaa !73
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !75
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #34, !inline_history !762
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #34, !inline_history !762
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.l ], [ %i.bh, %bb.m ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #34
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !72 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bl, align 8, !tbaa !73
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !75
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !76
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #34, !inline_history !763
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !76
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #34, !inline_history !763
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bo, %bb.r ], [ %i.by, %bb.s ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.bz, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !79

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #34
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.u:                                             ; preds = %bb.b, %bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZN6duckdb15ArrowAppendData13GetMainBufferEv.exit, %bb.c
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.g
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.03441 = phi i64 [ %i.de, %.lr.ph.split ], [ %.03441.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.03441
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !1512
  %i.ci = sext i16 %i.ch to i32
  %gep = getelementptr [4 x i8], ptr %invariant.gep51, i64 %.03441
  store i32 %i.ci, ptr %gep, align 4, !tbaa !3
  %i.cj = add nuw i64 %.03441, 1                  ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !1512
  %i.cp = sext i16 %i.co to i32
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep51, i64 %i.cj
  store i32 %i.cp, ptr %gep.1, align 4, !tbaa !3
  %i.cq = add nuw i64 %.03441, 2                  ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !1512
  %i.cw = sext i16 %i.cv to i32
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep51, i64 %i.cq
  store i32 %i.cw, ptr %gep.2, align 4, !tbaa !3
  %i.cx = add nuw i64 %.03441, 3                  ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !1512
  %i.dd = sext i16 %i.dc to i32
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep51, i64 %i.cx
  store i32 %i.dd, ptr %gep.3, align 4, !tbaa !3
  %i.de = add nuw i64 %.03441, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.de, %3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1574

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.u ], [ %i.cb, %bb.v ], [ %i.cc, %bb.w ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  resume { ptr, i32 } %.pn.pn.pn.pn
end_hunk_6
