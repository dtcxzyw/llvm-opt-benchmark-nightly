Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/unicode-test?download=true
inline.NumInlined: 3630
inline.NumDeleted: 1043
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN3fmt3v126detail6bigint13divmod_assignERKS2_:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !171
  %i.dr = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.i15
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !171
  %i.du = zext i32 %i.dt to i64
  %i.dv = zext i32 %i.dq to i64
  %i.dw = add nuw nsw i64 %i.dn, %i.dv
  %i.dx = sub nsw i64 %i.du, %i.dw                ; 3 uses
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !171
  %i.dz = lshr i64 %i.dx, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
  %i.ea = add nuw i64 %.024.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !565

bb.h:                                             ; preds = %._crit_edge.i
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i16.lcssa ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !171
  %i.ed = add i32 %i.ec, -1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !171
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.h, %._crit_edge.i, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.ee = load ptr, ptr %0, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.cn, i32 1) ; 2 uses
  %i.ef = trunc i64 %i.cm to i32                  ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %.lr.ph95, label %.critedge.i.i

.lr.ph95:                                         ; preds = %._crit_edge.thread.i
  %i.eh = and i64 %i.cm, 2147483647
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ei = trunc nuw i64 %i.el to i32              ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.j, label %.critedge.i.i, !llvm.loop !29

bb.j:                                             ; preds = %.lr.ph95, %bb.i
  %i.ek = phi i32 [ %i.ef, %.lr.ph95 ], [ %i.ei, %bb.i ]
  %indvars.iv.i14.i94 = phi i64 [ %i.eh, %.lr.ph95 ], [ %i.el, %bb.i ]
  %i.el = add nsw i64 %indvars.iv.i14.i94, -1     ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !171
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.i, label %..critedge.i.i_crit_edge, !llvm.loop !29

..critedge.i.i_crit_edge:                         ; preds = %bb.j
  br label %.critedge.i.i, !llvm.loop !29

.critedge.i.i:                                    ; preds = %bb.i, %..critedge.i.i_crit_edge, %._crit_edge.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %._crit_edge.thread.i ], [ %i.ek, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.i ]
  %i.ep = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.eq = load i64, ptr %i.ci, align 8, !tbaa !216 ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  br i1 %i.er, label %bb.k, label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

bb.k:                                             ; preds = %.critedge.i.i
  %i.es = load ptr, ptr %i.cj, align 8, !tbaa !214
  tail call void %i.es(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ep), !inline_history !566
  %.pre.i.i.i.i = load i64, ptr %i.ci, align 8, !tbaa !216
  br label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.k
  %i.et = phi i64 [ %i.eq, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.k ]
  %i.eu = tail call noundef i64 @llvm.umin.i64(i64 %i.ep, i64 %i.et) ; 4 uses
  store i64 %i.eu, ptr %i.a, align 8, !tbaa !221
  %i.ev = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.ew = trunc nuw i64 %i.eu to i32              ; 2 uses
  %i.ex = load i32, ptr %i.d, align 8, !tbaa !220 ; 2 uses
  %i.ey = add nsw i32 %i.ex, %i.ew                ; 2 uses
  %i.ez = load i64, ptr %i.g, align 8, !tbaa !221 ; 3 uses
  %i.fa = trunc i64 %i.ez to i32                  ; 2 uses
  %i.fb = load i32, ptr %i.j, align 8, !tbaa !220
  %i.fc = add nsw i32 %i.fb, %i.fa                ; 2 uses
  %.not.i18 = icmp eq i32 %i.ey, %i.fc
  br i1 %.not.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fd = icmp sgt i32 %i.ey, %i.fc
  br i1 %i.fd, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.m:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fe = sub nsw i32 %i.ew, %i.fa
  %spec.store.select.i20 = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 0)
  %i.ff = load ptr, ptr %0, align 8
  %i.fg = load ptr, ptr %1, align 8
  %sext.i21 = shl nuw i64 %i.eu, 32
  %i.fh = ashr exact i64 %sext.i21, 32            ; 3 uses
  %i.fi = zext nneg i32 %spec.store.select.i20 to i64 ; 3 uses
  %sext55.i22 = shl i64 %i.ez, 32
  %i.fj = ashr exact i64 %sext55.i22, 32          ; 2 uses
  %smin59 = tail call i64 @llvm.smin.i64(i64 %i.fh, i64 %i.fi)
  %.not35.not.i2599 = icmp sgt i64 %i.fh, %i.fi
  br i1 %.not35.not.i2599, label %.lr.ph103, label %._crit_edge104

bb.n:                                             ; preds = %.lr.ph103
  %.not35.not.i25 = icmp sgt i64 %indvars.iv.next.i27, %i.fi
  br i1 %.not35.not.i25, label %.lr.ph103, label %._crit_edge104, !llvm.loop !28

.lr.ph103:                                        ; preds = %bb.m, %bb.n
  %indvars.iv.i24101 = phi i64 [ %indvars.iv.next.i27, %bb.n ], [ %i.fh, %bb.m ]
  %indvars.iv45.i23100 = phi i64 [ %indvars.iv.next46.i28, %bb.n ], [ %i.fj, %bb.m ]
  %indvars.iv.next.i27 = add nsw i64 %indvars.iv.i24101, -1 ; 3 uses
  %indvars.iv.next46.i28 = add nsw i64 %indvars.iv45.i23100, -1 ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next.i27
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !171 ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %indvars.iv.next46.i28
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !171 ; 2 uses
  %.not37.i29 = icmp eq i32 %i.fl, %i.fn
  br i1 %.not37.i29, label %bb.n, label %.loopexit.i30, !llvm.loop !28

._crit_edge104:                                   ; preds = %bb.n, %bb.m
  %indvars.iv45.i23.lcssa = phi i64 [ %i.fj, %bb.m ], [ %indvars.iv.next46.i28, %bb.n ]
  %or.cond.not49 = icmp slt i64 %smin59, %indvars.iv45.i23.lcssa
  br i1 %or.cond.not49, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge

.loopexit.i30:                                    ; preds = %.lr.ph103
  %i.fo = icmp ugt i32 %i.fl, %i.fn
  br i1 %i.fo, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge: ; preds = %.loopexit.i30, %bb.l, %._crit_edge104
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31, !llvm.loop !567

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge104, %.loopexit.i30, %bb.l, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.ev, %bb.l ], [ %i.ev, %.loopexit.i30 ], [ %i.ev, %._crit_edge104 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !216  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !215    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #40 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !221  ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !215
  store i64 %.0, ptr %i.a, align 8, !tbaa !216
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_memory_buffer.60", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !221  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(161) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !214
  %i.g = load ptr, ptr %0, align 8, !tbaa !215    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !216  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !215
  store i64 %i.i, ptr %i.e, align 8, !tbaa !216
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %.noexc.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !171
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !215
  store i64 %i.i, ptr %i.e, align 8, !tbaa !216
  store ptr %i.j, ptr %0, align 8, !tbaa !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i

_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c
  %2 = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.g, %bb.c ] ; 2 uses
  %3 = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ] ; 2 uses
  %i.m = icmp ugt i64 %i.b, %i.i
  br i1 %i.m, label %bb.d, label %.noexc.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i
  %i.n = lshr i64 %i.i, 1
  %i.o = add i64 %i.n, %i.i                       ; 3 uses
  %i.p = icmp ugt i64 %i.b, %i.o
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = call noundef i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ %i.o, %bb.e ], [ %i.r, %bb.f ], [ %i.b, %bb.d ] ; 3 uses
  %i.s = shl i64 %.0.i, 2
  %i.t = call noalias ptr @malloc(i64 noundef %i.s) #40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i

bb.h:                                             ; preds = %bb.g
  %i.u = call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.noexc112 unwind label %bb.j

.noexc112:                                        ; preds = %bb.h
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i: ; preds = %bb.g
  store ptr %i.t, ptr %1, align 8, !tbaa !215
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !216
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %2, %i.v
  br i1 %.not.i, label %.noexc.i, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef %2) #34
  %.pre.i.i.i.i.pre = load i64, ptr %i.e, align 8, !tbaa !216
  %.pre.pre = load i64, ptr %i.h, align 8, !tbaa !216
  br label %.noexc.i

bb.j:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #37
  unreachable

.noexc.i:                                         ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i, %bb.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i, %bb.b
  %4 = phi i64 [ %3, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i ], [ %i.i, %bb.b ], [ %.pre.pre, %bb.i ], [ %3, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ] ; 2 uses
  %5 = phi i64 [ %i.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i ], [ %i.i, %bb.b ], [ %.pre.i.i.i.i.pre, %bb.i ], [ %.0.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %5)
  store i64 %i.z, ptr %i.y, align 8, !tbaa !221
  %i.aa = zext i32 %i.d to i64                    ; 3 uses
  %i.ab = icmp ult i64 %4, %i.aa
  br i1 %i.ab, label %bb.k, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.k:                                             ; preds = %.noexc.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !214
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(161) %0, i64 noundef %i.aa)
          to label %.noexc unwind label %bb.l, !inline_history !568

.noexc:                                           ; preds = %bb.k
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !216
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %.noexc.i, %.noexc
  %i.ae = phi i64 [ %4, %.noexc.i ], [ %.pre.i.i42, %.noexc ] ; 3 uses
  %i.af = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ae) ; 4 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !221
  %i.ag = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.ag, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.ah = load ptr, ptr %1, align 8, !tbaa !215   ; 6 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.m
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.m ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.bb, %bb.m ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.ai = icmp eq i64 %indvars.iv, 0
  br i1 %i.ai, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.n

.preheader.loopexit:                              ; preds = %bb.m
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bb, %.preheader.loopexit ]
  %i.aj = icmp sgt i32 %i.d, %i.c
  br i1 %i.aj, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.ak = load ptr, ptr %1, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.al = ashr exact i64 %sext, 32                ; 4 uses
  %sext109 = add i64 %sext, -4294967296
  %i.am = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.am, %i.al
  %i.an = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.al, -1      ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv82.prol
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.m, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03750, %.preheader46 ], [ %i.bv, %.unr-lcssa ]
  %lcmp.mod150 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod150)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv64.epil.init
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !171
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv62.epil.init
  %i.au = load i32, ptr %i.at, align 4, !tbaa !171
  %i.av = zext i32 %i.au to i64
  %i.aw = mul nuw i64 %i.av, %i.as
  %i.ax = zext i64 %i.aw to i128
  %i.ay = add i128 %.147.epil.init, %i.ax
  br label %bb.m

bb.m:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa147 = phi i128 [ %i.bv, %.unr-lcssa ], [ %i.ay, %.epil.preheader ] ; 2 uses
  %i.az = trunc i128 %.lcssa147 to i32
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !171
  %i.bb = lshr i128 %.lcssa147, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !569

bb.n:                                             ; preds = %bb.n, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.n ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.n ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.bv, %bb.n ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.n ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv64
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !171
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv62
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !171
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul nuw i64 %i.bh, %i.be
  %i.bj = zext i64 %i.bi to i128
  %i.bk = add i128 %.147, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !171
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv62
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !171
  %i.bs = zext i32 %i.br to i64
  %i.bt = mul nuw i64 %i.bs, %i.bo
  %i.bu = zext i64 %i.bt to i128
  %i.bv = add i128 %i.bk, %i.bu                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.n, !llvm.loop !570

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.bw = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.bx = trunc nuw i64 %i.af to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.bx, i32 1) ; 2 uses
  %i.by = trunc nuw i64 %i.af to i32              ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 1
  br i1 %i.bz, label %.lr.ph142, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph142
  %i.ca = trunc nuw i64 %i.cd to i32              ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 1
  br i1 %i.cb, label %.lr.ph142, label %.critedge.i, !llvm.loop !29

.lr.ph142:                                        ; preds = %._crit_edge59, %bb.o
  %i.cc = phi i32 [ %i.ca, %bb.o ], [ %i.by, %._crit_edge59 ]
  %indvars.iv.i141 = phi i64 [ %i.cd, %bb.o ], [ %i.af, %._crit_edge59 ]
  %i.cd = add nsw i64 %indvars.iv.i141, -1        ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !171
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.o, label %..critedge.i_crit_edge, !llvm.loop !29

..critedge.i_crit_edge:                           ; preds = %.lr.ph142
  br label %.critedge.i, !llvm.loop !29

.critedge.i:                                      ; preds = %bb.o, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cc, %..critedge.i_crit_edge ], [ %smin.i, %bb.o ]
  %i.ch = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.ci = icmp ult i64 %i.ae, %i.ch
  br i1 %i.ci, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.critedge.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !214
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ch)
          to label %.noexc43 unwind label %bb.t, !inline_history !571

.noexc43:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !216
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.al, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.da, %._crit_edge ] ; 3 uses
  %i.cl = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.cl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.cm = sext i32 %indvars.iv78 to i64           ; 3 uses
  %i.cn = sub i32 %indvar, %i.c
  %i.co = and i32 %i.cn, 1
  %lcmp.mod152.not.not = icmp eq i32 %i.co, 0
  br i1 %lcmp.mod152.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %i.cm, 1
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.cm
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !171
  %i.cr = zext i32 %i.cq to i64
  %i.cs = load i32, ptr %i.ao, align 4, !tbaa !171
  %i.ct = zext i32 %i.cs to i64
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.az = icmp slt i32 %.sroa.010.sroa.0.sroa.0.0, 0
  %i.ba = zext nneg i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br i1 %i.az, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

bb.r:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.bb = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext74 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift75 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext74, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext63 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert65 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift75, %.sroa.010.sroa.0.sroa.0.0.insert.ext63
  %i.bc = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.010.sroa.0.sroa.0.0.insert.insert65, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.62) #38
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.62) #38
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.62) #38
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.62) #38
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.62) #38
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.62) #38
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.62) #38
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.62) #38
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.62) #38
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.62) #38
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.61) #38
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !171
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i32 0, ptr %i.a, align 4, !tbaa !240
  %i.b = load i8, ptr %0, align 1, !tbaa !72      ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !34

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !72    ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !34

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !34

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !72
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.46) #38
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !171
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !72
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !138 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.54) #38
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !138
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !240
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr %4, ptr %5, align 8, !tbaa !652
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !653
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !140
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l
  %.0 = phi ptr [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ], [ %i.ar, %bb.l ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !72
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !240
  br label %bb.q

bb.p:                                             ; preds = %bb.h, %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.51) #38
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !72      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !34

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !72    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !34

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !34

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !72
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !72
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.51) #38
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !656, !nonnull !83, !align !111
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !657, !nonnull !83, !align !170
  store i32 1, ptr %i.am, align 4, !tbaa !240
  %i.an = load ptr, ptr %2, align 8, !tbaa !658, !nonnull !83, !align !111
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !138
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.55) #38
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !138
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ar = and i8 %i.c, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.c, 95
  %i.au = or i1 %i.at, %or.cond10.i
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.51) #38
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !654

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !72  ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !654

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !654

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !656, !nonnull !83, !align !111 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !72
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !657, !nonnull !83, !align !170
  store i32 2, ptr %i.bl, align 4, !tbaa !240
  %i.bm = load ptr, ptr %2, align 8, !tbaa !658, !nonnull !83, !align !111
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !138
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #23 comdat {
bb.a:
  %4 = alloca %class.anon.35, align 1             ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail15write_codepointILm8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj:bb.a
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1: ; preds = %bb.h, %bb.i
  %.pre-phi.i.i.i.i.1 = phi i64 [ %i.ar, %bb.h ], [ %.pre2.i.i.i.i.1, %bb.i ]
  %i.av = phi i64 [ %i.aq, %bb.h ], [ %.pre.i.i.i.i.1, %bb.i ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.1, ptr %i.ad, align 8, !tbaa !130
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.ap, ptr %i.ax, align 1, !tbaa !72
  %.07.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ay = load i8, ptr %.07.i.ptr.2, align 2, !tbaa !72
  %.not.i.i11.2 = icmp eq i64 %.sroa.4.1, 2
  br i1 %.not.i.i11.2, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1
  %i.az = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.k, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !127
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ba), !inline_history !37
  %.pre.i.i.i.i.2 = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %.pre2.i.i.i.i.2 = add i64 %.pre.i.i.i.i.2, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2: ; preds = %bb.j, %bb.k
  %.pre-phi.i.i.i.i.2 = phi i64 [ %i.ba, %bb.j ], [ %.pre2.i.i.i.i.2, %bb.k ]
  %i.be = phi i64 [ %i.az, %bb.j ], [ %.pre.i.i.i.i.2, %bb.k ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.2, ptr %i.ad, align 8, !tbaa !130
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 %i.ay, ptr %i.bg, align 1, !tbaa !72
  %.07.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.bh = load i8, ptr %.07.i.ptr.3, align 1, !tbaa !72
  %.not.i.i11.3 = icmp eq i64 %.sroa.4.1, 3
  br i1 %.not.i.i11.3, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.l

bb.l:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !127
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bj), !inline_history !37
  %.pre.i.i.i.i.3 = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %.pre2.i.i.i.i.3 = add i64 %.pre.i.i.i.i.3, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3: ; preds = %bb.l, %bb.m
  %.pre-phi.i.i.i.i.3 = phi i64 [ %i.bj, %bb.l ], [ %.pre2.i.i.i.i.3, %bb.m ]
  %i.bn = phi i64 [ %i.bi, %bb.l ], [ %.pre.i.i.i.i.3, %bb.m ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.3, ptr %i.ad, align 8, !tbaa !130
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !72
  %.07.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bq = load i8, ptr %.07.i.ptr.4, align 4, !tbaa !72
  %.not.i.i11.4 = icmp eq i64 %.sroa.4.1, 4
  br i1 %.not.i.i11.4, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.n

bb.n:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3
  %i.br = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %i.bs = add i64 %i.br, 1                        ; 3 uses
  %i.bt = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.o, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.af, align 8, !tbaa !127
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bs), !inline_history !37
  %.pre.i.i.i.i.4 = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %.pre2.i.i.i.i.4 = add i64 %.pre.i.i.i.i.4, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4: ; preds = %bb.n, %bb.o
  %.pre-phi.i.i.i.i.4 = phi i64 [ %i.bs, %bb.n ], [ %.pre2.i.i.i.i.4, %bb.o ]
  %i.bw = phi i64 [ %i.br, %bb.n ], [ %.pre.i.i.i.i.4, %bb.o ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.4, ptr %i.ad, align 8, !tbaa !130
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 %i.bq, ptr %i.by, align 1, !tbaa !72
  %.07.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bz = load i8, ptr %.07.i.ptr.5, align 1, !tbaa !72
  %.not.i.i11.5 = icmp eq i64 %.sroa.4.1, 5
  br i1 %.not.i.i11.5, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.p

bb.p:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4
  %i.ca = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !127
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !inline_history !37
  %.pre.i.i.i.i.5 = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %.pre2.i.i.i.i.5 = add i64 %.pre.i.i.i.i.5, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5: ; preds = %bb.p, %bb.q
  %.pre-phi.i.i.i.i.5 = phi i64 [ %i.cb, %bb.p ], [ %.pre2.i.i.i.i.5, %bb.q ]
  %i.cf = phi i64 [ %i.ca, %bb.p ], [ %.pre.i.i.i.i.5, %bb.q ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.5, ptr %i.ad, align 8, !tbaa !130
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 %i.bz, ptr %i.ch, align 1, !tbaa !72
  %.07.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ci = load i8, ptr %.07.i.ptr.6, align 2, !tbaa !72
  %.not.i.i11.6 = icmp eq i64 %.sroa.4.1, 6
  br i1 %.not.i.i11.6, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.r

bb.r:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !127
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck), !inline_history !37
  %.pre.i.i.i.i.6 = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %.pre2.i.i.i.i.6 = add i64 %.pre.i.i.i.i.6, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6: ; preds = %bb.r, %bb.s
  %.pre-phi.i.i.i.i.6 = phi i64 [ %i.ck, %bb.r ], [ %.pre2.i.i.i.i.6, %bb.s ]
  %i.co = phi i64 [ %i.cj, %bb.r ], [ %.pre.i.i.i.i.6, %bb.s ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.6, ptr %i.ad, align 8, !tbaa !130
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 %i.ci, ptr %i.cq, align 1, !tbaa !72
  %.07.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.cr = load i8, ptr %.07.i.ptr.7, align 1, !tbaa !72
  %.not.i.i11.7 = icmp eq i64 %.sroa.4.1, 7
  br i1 %.not.i.i11.7, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.t

bb.t:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !127
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ct), !inline_history !37
  %.pre.i.i.i.i.7 = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %.pre2.i.i.i.i.7 = add i64 %.pre.i.i.i.i.7, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7:    ; preds = %bb.u, %bb.t
  %.pre-phi.i.i.i.i.7 = phi i64 [ %i.ct, %bb.t ], [ %.pre2.i.i.i.i.7, %bb.u ]
  %i.cx = phi i64 [ %i.cs, %bb.t ], [ %.pre.i.i.i.i.7, %bb.u ]
  %i.cy = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.7, ptr %i.ad, align 8, !tbaa !130
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cr, ptr %i.cz, align 1, !tbaa !72
  %i.da = add i64 %.sroa.4.1, -8
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7: ; preds = %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %.sroa.3.1.i.7 = phi i64 [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6 ], [ %i.da, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ], [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.1.i.7, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINS0_7weekdayEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::formatter", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !72
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !146
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc37ELc70ELc32ELc37ELc84EEE5valueE, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !185    ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !186  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  %.not.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.g, align 1, !tbaa !72
  %i.l = icmp eq i8 %i.k, 76
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i32 49152, ptr %3, align 8, !tbaa !144
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %.not13.i = icmp eq ptr %.0.i, %i.j
  br i1 %.not13.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %.0.i, align 1, !tbaa !72
  %i.o = icmp ne i8 %i.n, 125                     ; 2 uses
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %i.f, align 8, !tbaa !261
  br i1 %i.o, label %bb.f, label %_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit

bb.f:                                             ; preds = %bb.e
  %i.q = call noundef ptr @_ZN3fmt3v129formatterI2tmcvE8do_parseERNS0_13parse_contextIcEEb(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext true)
  %.pre = load ptr, ptr %1, align 8, !tbaa !185
  %.pre7 = load i64, ptr %i.h, align 8, !tbaa !186
  br label %_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit

.critedge.i:                                      ; preds = %bb.d, %bb.a
  %.016.i = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.a ]
  store i8 0, ptr %i.f, align 8, !tbaa !261
  br label %_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.e, %bb.f, %.critedge.i
  %i.r = phi i64 [ %.pre7, %bb.f ], [ %i.i, %.critedge.i ], [ %i.i, %bb.e ]
  %i.s = phi ptr [ %.pre, %bb.f ], [ %i.g, %.critedge.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.q, %bb.f ], [ %.016.i, %.critedge.i ], [ %.0.i, %bb.e ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  store ptr %i.x, ptr %1, align 8, !tbaa !185
  %i.y = sub i64 %i.r, %i.w
  store i64 %i.y, ptr %i.h, align 8, !tbaa !186
  %.sroa.0.0.copyload = load i8, ptr %0, align 1, !tbaa !72
  %i.z = call ptr @_ZNK3fmt3v129formatterINS0_7weekdayEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES2_RT_(ptr noundef nonnull align 8 dereferenceable(49) %3, i8 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v129formatterINS0_7weekdayEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES2_RT_(ptr noundef nonnull align 8 dereferenceable(49) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 7 uses
  %4 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 9 uses
  %5 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.a = zext i8 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.a, ptr %i.b, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !261, !range !82, !noundef !83
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_ZNK3fmt3v129formatterI2tmcvE9do_formatINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS0_7contextEEEDTcldtfp0_3outEERKS2_RT0_PKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.g = load i32, ptr %0, align 8, !tbaa !144
  %i.h = and i32 %i.g, 16384                      ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !140 ; 2 uses
  %.lobit = lshr exact i32 %i.h, 14
  %i.j = trunc nuw nsw i32 %.lobit to i8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i8 %i.j, ptr %i.k, align 8, !tbaa !263
  br i1 %.not, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i) #34
  br label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %4) #34
  br label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.c, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.l = load i8, ptr %i.k, align 8, !tbaa !263, !range !82, !noundef !83
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !264

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  %.not.i.i7 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i7, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !266
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.j, %bb.h, %bb.g
  %i.s = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !266, !nonnull !83, !align !111
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.t = phi ptr [ %i.s, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %4, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.0.0.copyload.i8 = load ptr, ptr %2, align 8, !tbaa !134
  store ptr %i.t, ptr %5, align 8, !tbaa !266
  %i.u = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.p, !prof !264

bb.l:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.w = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  %.not.i.i10 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i10, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.x, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !266
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %.body

bb.p:                                             ; preds = %bb.n, %bb.l, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !266, !nonnull !83, !align !111
  %i.ab = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #34
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %i.z, align 8, !tbaa !270
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %.sroa.0.0.copyload.i8, ptr %i.ad, align 8, !tbaa !134
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.ae, align 8, !tbaa !271
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %i.af, align 8, !tbaa !272
  invoke void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_abbr_weekdayEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i13 = load ptr, ptr %i.ad, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.ag = load i8, ptr %i.k, align 8, !tbaa !263, !range !82, !noundef !83
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.r, label %_ZN3fmt3v126detail10get_localeD2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %4) #34
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.o, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.ai, %bb.s ], [ %i.y, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.aj = load i8, ptr %i.k, align 8, !tbaa !263, !range !82, !noundef !83
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.t, label %_ZN3fmt3v126detail10get_localeD2Ev.exit14

bb.t:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %4) #34
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit14

_ZN3fmt3v126detail10get_localeD2Ev.exit14:        ; preds = %.body, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %eh.lpad-body

bb.u:                                             ; preds = %_ZN3fmt3v126detail10get_localeD2Ev.exit, %bb.b
  %.sroa.06.0 = phi ptr [ %i.f, %bb.b ], [ %.sroa.0.0.copyload.i13, %_ZN3fmt3v126detail10get_localeD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v129formatterI2tmcvE8do_parseERNS0_13parse_contextIcEEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.fmt::v12::detail::tm_format_checker", align 1 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !185    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !186  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 5 uses
  %i.e = icmp samesign eq i64 %i.c, 0
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 1, !tbaa !72
  %i.g = icmp eq i8 %i.f, 125
  br i1 %i.g, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN3fmt3v126detail11parse_alignIcEEPKT_S5_S5_RNS0_12format_specsE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(16) %0) ; 5 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_2
