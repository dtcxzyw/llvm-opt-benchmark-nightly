inline.NumInlined: 2675
inline.NumDeleted: 797
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK5arrow24VarLengthListLikeBuilderINS_8ListTypeEE4typeEv:bb.a
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #18, !inline_history !176
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i
  store ptr %i.h, ptr %i.l, align 8, !tbaa !89
  br label %_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i
  store ptr %i.j, ptr %0, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.af, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56 ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ai, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !70
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #18, !inline_history !177
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i5 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.o:                                             ; preds = %bb.m
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i7 = phi i32 [ %i.al, %bb.n ], [ %i.av, %bb.o ]
  %i.aw = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.aw, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.az, align 8, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !70
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18, !inline_history !71
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i9 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.u:                                             ; preds = %bb.s
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i11 = phi i32 [ %i.bc, %bb.t ], [ %i.bm, %bb.u ]
  %i.bn = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.bn, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.w:                                             ; preds = %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.x ], [ %i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.w
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bo, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b)
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = trunc i64 %i.f to i32                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.j, align 8, !tbaa !178 ; 2 uses
  %xtraiter = and i64 %1, 1
  %i.k = icmp eq i64 %1, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.epil.init
  store i32 %i.h, ptr %i.m, align 1
  %i.n = load i64, ptr %i.j, align 8, !tbaa !178
  %i.o = add nsw i64 %i.n, 4
  store i64 %i.o, ptr %i.j, align 8, !tbaa !178
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.p = phi i64 [ %.pre, %.lr.ph.new ], [ %i.x, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.p
  store i32 %i.h, ptr %i.r, align 1
  %i.s = load i64, ptr %i.j, align 8, !tbaa !178
  %i.t = add nsw i64 %i.s, 4                      ; 2 uses
  store i64 %i.t, ptr %i.j, align 8, !tbaa !178
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.t
  store i32 %i.h, ptr %i.v, align 1
  %i.w = load i64, ptr %i.j, align 8, !tbaa !178
  %i.x = add nsw i64 %i.w, 4                      ; 3 uses
  store i64 %i.x, ptr %i.j, align 8, !tbaa !178
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !179
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !178
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  store i32 %i.a, ptr %i.f, align 1
  %i.g = load i64, ptr %i.d, align 8, !tbaa !178
  %i.h = add nsw i64 %i.g, 4
  store i64 %i.h, ptr %i.d, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = load ptr, ptr %3, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !70
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i10 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18
  call void @_ZN5arrow18TypedBufferBuilderIlvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #18
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  resume { ptr, i32 } %i.as
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18TypedBufferBuilderIlvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow13BufferBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !70
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !74
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !74
  br label %_ZN5arrow13BufferBuilderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
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
  br i1 %i.q, label %bb.g, label %_ZN5arrow13BufferBuilderD2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE4typeEv:bb.a
bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #18, !inline_history !235
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i
  store ptr %i.h, ptr %i.l, align 8, !tbaa !89
  br label %_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i
  store ptr %i.j, ptr %0, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.af, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56 ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ai, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !70
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #18, !inline_history !177
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i5 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.o:                                             ; preds = %bb.m
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i7 = phi i32 [ %i.al, %bb.n ], [ %i.av, %bb.o ]
  %i.aw = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.aw, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.az, align 8, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !70
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18, !inline_history !71
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i9 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.u:                                             ; preds = %bb.s
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i11 = phi i32 [ %i.bc, %bb.t ], [ %i.bm, %bb.u ]
  %i.bn = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.bn, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.w:                                             ; preds = %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.x ], [ %i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.w
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bo, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b) ; 3 uses
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.i, align 8, !tbaa !178 ; 2 uses
  %xtraiter = and i64 %1, 1
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %.epil.init
  store i64 %i.f, ptr %i.l, align 1
  %i.m = load i64, ptr %i.i, align 8, !tbaa !178
  %i.n = add nsw i64 %i.m, 8
  store i64 %i.n, ptr %i.i, align 8, !tbaa !178
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.o = phi i64 [ %.pre, %.lr.ph.new ], [ %i.w, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  store i64 %i.f, ptr %i.q, align 1
  %i.r = load i64, ptr %i.i, align 8, !tbaa !178
  %i.s = add nsw i64 %i.r, 8                      ; 2 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !178
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.s
  store i64 %i.f, ptr %i.u, align 1
  %i.v = load i64, ptr %i.i, align 8, !tbaa !178
  %i.w = add nsw i64 %i.v, 8                      ; 3 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !178
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !236
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !178
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d
  store i64 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8, !tbaa !178
  %i.g = add nsw i64 %i.f, 8
  store i64 %i.g, ptr %i.c, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = load ptr, ptr %3, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !70
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i10 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18
  call void @_ZN5arrow18TypedBufferBuilderIivED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #18
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator.126", align 1 ; 3 uses
  %5 = alloca %"class.std::shared_ptr.14", align 16 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.46", align 16 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.a = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !237
  invoke void @_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_8DataTypeEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !237
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = load <2 x ptr>, ptr %6, align 16, !tbaa !57
  store ptr null, ptr %i.e, align 8, !tbaa !56
  store <2 x ptr> %i.f, ptr %5, align 16, !tbaa !57
  store ptr null, ptr %6, align 16, !tbaa !240
  invoke void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %3)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !70
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !71
end_hunk_1
begin_hunk_2_@_ZNK5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE4typeEv:bb.a
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.d)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !292
  invoke void @_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_5FieldEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.p

_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !292
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load <2 x ptr>, ptr %3, align 16, !tbaa !57
  store ptr null, ptr %i.h, align 8, !tbaa !56
  store <2 x ptr> %i.i, ptr %0, align 8, !tbaa !57
  store ptr null, ptr %3, align 16, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !70
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #18, !inline_history !177
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i5 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i7 = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.z, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ac, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !70
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !71
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i9 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.m:                                             ; preds = %bb.k
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i11 = phi i32 [ %i.af, %bb.l ], [ %i.ap, %bb.m ]
  %i.aq = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.aq, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.as, %bb.p ], [ %i.ar, %bb.o ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b)
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = trunc i64 %i.f to i32                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.j, align 8, !tbaa !178 ; 2 uses
  %xtraiter = and i64 %1, 1
  %i.k = icmp eq i64 %1, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.epil.init
  store i32 %i.h, ptr %i.m, align 1
  %i.n = load i64, ptr %i.j, align 8, !tbaa !178
  %i.o = add nsw i64 %i.n, 4
  store i64 %i.o, ptr %i.j, align 8, !tbaa !178
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.p = phi i64 [ %.pre, %.lr.ph.new ], [ %i.x, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.p
  store i32 %i.h, ptr %i.r, align 1
  %i.s = load i64, ptr %i.j, align 8, !tbaa !178
  %i.t = add nsw i64 %i.s, 4                      ; 2 uses
  store i64 %i.t, ptr %i.j, align 8, !tbaa !178
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.t
  store i32 %i.h, ptr %i.v, align 1
  %i.w = load i64, ptr %i.j, align 8, !tbaa !178
  %i.x = add nsw i64 %i.w, 4                      ; 3 uses
  store i64 %i.x, ptr %i.j, align 8, !tbaa !178
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !295
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !178
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  store i32 %i.a, ptr %i.f, align 1
  %i.g = load i64, ptr %i.d, align 8, !tbaa !178
  %i.h = add nsw i64 %i.g, 4
  store i64 %i.h, ptr %i.d, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = load ptr, ptr %3, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !70
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i10 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #18
  call void @_ZN5arrow18TypedBufferBuilderIlvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #18
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) unnamed_addr #1 comdat($_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEC5EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEEl) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator.126", align 1 ; 3 uses
  %5 = alloca %"class.std::shared_ptr.14", align 16 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.50", align 16 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.a = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !296
  invoke void @_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_8DataTypeEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !296
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = load <2 x ptr>, ptr %6, align 16, !tbaa !57
  store ptr null, ptr %i.e, align 8, !tbaa !56
  store <2 x ptr> %i.f, ptr %5, align 16, !tbaa !57
  store ptr null, ptr %6, align 16, !tbaa !299
  invoke void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %3)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !70
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
end_hunk_2
begin_hunk_3_@_ZNK5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE4typeEv:bb.a
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.d)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !351
  invoke void @_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_5FieldEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.p

_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !351
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load <2 x ptr>, ptr %3, align 16, !tbaa !57
  store ptr null, ptr %i.h, align 8, !tbaa !56
  store <2 x ptr> %i.i, ptr %0, align 8, !tbaa !57
  store ptr null, ptr %3, align 16, !tbaa !299
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !70
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #18, !inline_history !177
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #18, !inline_history !177
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i5 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i7 = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.z, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #18
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ac, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !70
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !71
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18, !inline_history !71
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i9 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.m:                                             ; preds = %bb.k
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i11 = phi i32 [ %i.af, %bb.l ], [ %i.ap, %bb.m ]
  %i.aq = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.aq, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.as, %bb.p ], [ %i.ar, %bb.o ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b) ; 3 uses
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.i, align 8, !tbaa !178 ; 2 uses
  %xtraiter = and i64 %1, 1
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %.epil.init
  store i64 %i.f, ptr %i.l, align 1
  %i.m = load i64, ptr %i.i, align 8, !tbaa !178
  %i.n = add nsw i64 %i.m, 8
  store i64 %i.n, ptr %i.i, align 8, !tbaa !178
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.o = phi i64 [ %.pre, %.lr.ph.new ], [ %i.w, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  store i64 %i.f, ptr %i.q, align 1
  %i.r = load i64, ptr %i.i, align 8, !tbaa !178
  %i.s = add nsw i64 %i.r, 8                      ; 2 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !178
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.s
  store i64 %i.f, ptr %i.u, align 1
  %i.v = load i64, ptr %i.i, align 8, !tbaa !178
  %i.w = add nsw i64 %i.v, 8                      ; 3 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !178
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !354
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !178
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d
  store i64 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8, !tbaa !178
  %i.g = add nsw i64 %i.f, 8
  store i64 %i.g, ptr %i.c, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow15BaseListBuilderINS_8ListTypeEE6AppendEb(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !355
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !112, !noalias !358 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54, !noalias !358
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !358
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(232) %1), !noalias !358, !inline_history !128 ; 2 uses
  %.not.i.not.i = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not.i, label %_ZN5arrow6StatusD2Ev.exit11.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit11.thread.i:             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !355
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !54, !noalias !358
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !358
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 noundef %.sroa.speculated.i.i.i), !noalias !355, !inline_history !128
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !101, !noalias !355 ; 2 uses
  store ptr %.pr.i, ptr %0, align 8, !tbaa !101, !alias.scope !355
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !355
  %i.l = icmp eq ptr %.pr.i, null
  br i1 %i.l, label %bb.b, label %_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE6AppendEbl.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit11.thread.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52, !noalias !355
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !117, !noalias !355 ; 2 uses
  %.neg.i.i.i.i = sext i1 %2 to i8
  %i.q = sdiv i64 %i.p, 8
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !58, !noalias !355 ; 2 uses
  %i.t = xor i8 %i.s, %.neg.i.i.i.i
  %i.u = srem i64 %i.p, 8
  %i.v = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !58, !noalias !355
  %i.x = and i8 %i.t, %i.w
  %i.y = xor i8 %i.x, %i.s
  store i8 %i.y, ptr %i.r, align 1, !tbaa !58, !noalias !355
  br i1 %2, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i, label %bb.c

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i: ; preds = %bb.b
  %i.z = load i64, ptr %i.o, align 8, !tbaa !117, !noalias !355
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEb.exit.i

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !118, !noalias !355
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !118, !noalias !355
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !117, !noalias !355
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !100, !noalias !355
  %i.ag = add nsw i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !100, !noalias !355
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEb.exit.i

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEb.exit.i: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i
  %.sink.in.i = phi i64 [ %i.z, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i ], [ %i.ad, %bb.c ]
  %.sink4.i.i = phi i64 [ 104, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEb.exit.thread.i.i ], [ 96, %bb.c ]
  %.sink.i = add nsw i64 %.sink.in.i, 1
  store i64 %.sink.i, ptr %i.o, align 8, !tbaa !117, !noalias !355
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sink4.i.i ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !95, !noalias !355
  %i.aj = add nsw i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !95, !noalias !355
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82, !noalias !355 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54, !noalias !355
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !355
  %i.ap = call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(144) %i.al), !noalias !355, !inline_history !129
  %i.aq = load ptr, ptr %1, align 8, !tbaa !54, !noalias !355
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !355
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(232) %1, i64 noundef %i.ap, i64 noundef 0), !noalias !355, !inline_history !129
  store ptr null, ptr %0, align 8, !tbaa !101, !alias.scope !361
  br label %_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE6AppendEbl.exit

_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE6AppendEbl.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEb.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow15BaseListBuilderINS_8ListTypeEE12AppendValuesEPKilPKh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %class.anon.96, align 8             ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !112, !noalias !364 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !54, !noalias !364
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !364
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !364, !inline_history !116
  %i.i = add nsw i64 %i.h, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit14.thread

_ZN5arrow6StatusD2Ev.exit14.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !54, !noalias !364
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !364
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !116
  %.pr = load ptr, ptr %6, align 8, !tbaa !101    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.o = icmp eq ptr %4, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !96
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %i.a, ptr %5, align 8, !tbaa !367
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.v, align 8, !tbaa !370
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.q, ptr %i.w, align 8, !tbaa !372
  call void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %i.s, i64 noundef %i.u, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.x = load i64, ptr %i.t, align 8, !tbaa !117
  %i.y = add nsw i64 %i.x, %3
  store i64 %i.y, ptr %i.t, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !100
  %i.ab = add nsw i64 %i.aa, %3
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !118
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !375
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i
  %i.af = shl i64 %3, 2                           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
  %.not.i.i.i129 = icmp eq i8 %i.lc, 0
  br i1 %.not.i.i.i129, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ld = add nsw i32 %i.ku, -1
  store i32 %i.ld, ptr %i.kr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130

bb.cv:                                            ; preds = %bb.ct
  %i.le = atomicrmw volatile add ptr %i.kr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i131 = phi i32 [ %i.ku, %bb.cu ], [ %i.le, %bb.cv ]
  %i.lf = icmp eq i32 %.0.i.i.i.i131, 1
  br i1 %i.lf, label %bb.cw, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit132, !prof !72

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #18
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit132

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit132: ; preds = %.critedge, %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.lg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !56 ; 8 uses
  %.not.i.i133 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i133, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit132
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 4 uses
  %i.lj = load atomic i64, ptr %i.li acquire, align 8 ; 2 uses
  %i.lk = icmp eq i64 %i.lj, 4294967297
  %i.ll = trunc i64 %i.lj to i32                  ; 2 uses
  br i1 %i.lk, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.li, align 8, !tbaa !68
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  store i32 0, ptr %i.lm, align 4, !tbaa !70
  %i.ln = load ptr, ptr %i.lh, align 8, !tbaa !54
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #18, !inline_history !428
  %i.lq = load ptr, ptr %i.lh, align 8, !tbaa !54
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #18, !inline_history !428
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137

bb.cz:                                            ; preds = %bb.cx
  %i.lt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i134 = icmp eq i8 %i.lt, 0
  br i1 %.not.i.i.i134, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lu = add nsw i32 %i.ll, -1
  store i32 %i.lu, ptr %i.li, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135

bb.db:                                            ; preds = %bb.cz
  %i.lv = atomicrmw volatile add ptr %i.li, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i136 = phi i32 [ %i.ll, %bb.da ], [ %i.lv, %bb.db ]
  %i.lw = icmp eq i32 %.0.i.i.i.i136, 1
  br i1 %i.lw, label %bb.dc, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137, !prof !72

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #18
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit132, %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !56 ; 8 uses
  %.not.i.i138 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i138, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 4 uses
  %i.ma = load atomic i64, ptr %i.lz acquire, align 8 ; 2 uses
  %i.mb = icmp eq i64 %i.ma, 4294967297
  %i.mc = trunc i64 %i.ma to i32                  ; 2 uses
  br i1 %i.mb, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %i.lz, align 8, !tbaa !68
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  store i32 0, ptr %i.md, align 4, !tbaa !70
  %i.me = load ptr, ptr %i.ly, align 8, !tbaa !54
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #18, !inline_history !428
  %i.mh = load ptr, ptr %i.ly, align 8, !tbaa !54
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #18, !inline_history !428
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

bb.df:                                            ; preds = %bb.dd
  %i.mk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i139 = icmp eq i8 %i.mk, 0
  br i1 %.not.i.i.i139, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ml = add nsw i32 %i.mc, -1
  store i32 %i.ml, ptr %i.lz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

bb.dh:                                            ; preds = %bb.df
  %i.mm = atomicrmw volatile add ptr %i.lz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140: ; preds = %bb.dh, %bb.dg
  %.0.i.i.i.i141 = phi i32 [ %i.mc, %bb.dg ], [ %i.mm, %bb.dh ]
  %i.mn = icmp eq i32 %.0.i.i.i.i141, 1
  br i1 %i.mn, label %bb.di, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, !prof !72

bb.di:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #18
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137, %bb.de, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.dj:                                            ; preds = %bb.cq, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %bb.cq ], [ %i.ai, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.d ], [ %i.p, %bb.c ], [ %i.l, %bb.b ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn52.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.c, align 8, !tbaa !178 ; 2 uses
  %i.d = add nsw i64 %1, -1                       ; 2 uses
  %xtraiter = and i64 %1, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %bb.b

.lr.ph10.unr-lcssa:                               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph10, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph10.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.u, %.lr.ph10.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %.epil.init
  store i32 0, ptr %i.g, align 1
  %i.h = load i64, ptr %i.c, align 8, !tbaa !178
  %i.i = add nsw i64 %i.h, 4
  store i64 %i.i, ptr %i.c, align 8, !tbaa !178
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.unr-lcssa, %.epil.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %.pre12 = load i64, ptr %i.k, align 8, !tbaa !178 ; 2 uses
  %xtraiter15 = and i64 %1, 1
  %i.l = icmp eq i64 %i.d, 0
  br i1 %i.l, label %.epil.preheader14, label %.lr.ph10.new

.lr.ph10.new:                                     ; preds = %.lr.ph10
  %unroll_iter20 = and i64 %1, 9223372036854775806
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.m = phi i64 [ %.pre, %.lr.ph.new ], [ %i.u, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.m
  store i32 0, ptr %i.o, align 1
  %i.p = load i64, ptr %i.c, align 8, !tbaa !178
  %i.q = add nsw i64 %i.p, 4                      ; 2 uses
  store i64 %i.q, ptr %i.c, align 8, !tbaa !178
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.q
  store i32 0, ptr %i.s, align 1
  %i.t = load i64, ptr %i.c, align 8, !tbaa !178
  %i.u = add nsw i64 %i.t, 4                      ; 3 uses
  store i64 %i.u, ptr %i.c, align 8, !tbaa !178
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph10.unr-lcssa, label %bb.b, !llvm.loop !503

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod18.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod18.not, label %._crit_edge, label %.epil.preheader14

.epil.preheader14:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph10
  %.epil.init17 = phi i64 [ %.pre12, %.lr.ph10 ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.epil.init17
  store i32 0, ptr %i.w, align 1
  %i.x = load i64, ptr %i.k, align 8, !tbaa !178
  %i.y = add nsw i64 %i.x, 4
  store i64 %i.y, ptr %i.k, align 8, !tbaa !178
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader14, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph10.new
  %i.z = phi i64 [ %.pre12, %.lr.ph10.new ], [ %i.ah, %bb.c ]
  %niter21 = phi i64 [ 0, %.lr.ph10.new ], [ %niter21.next.1, %bb.c ]
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.z
  store i32 0, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !178
  %i.ad = add nsw i64 %i.ac, 4                    ; 2 uses
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !178
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ad
  store i32 0, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !178
  %i.ah = add nsw i64 %i.ag, 4                    ; 3 uses
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !178
  %niter21.next.1 = add i64 %niter21, 2           ; 2 uses
  %niter21.ncmp.1 = icmp eq i64 %niter21.next.1, %unroll_iter20
  br i1 %niter21.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !504
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !178
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  store i32 %i.a, ptr %i.f, align 1
  %i.g = load i64, ptr %i.d, align 8, !tbaa !178
  %i.h = add nsw i64 %i.g, 4
  store i64 %i.h, ptr %i.d, align 8, !tbaa !178
  %i.i = trunc i64 %2 to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !178
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  store i32 %i.i, ptr %i.n, align 1
  %i.o = load i64, ptr %i.l, align 8, !tbaa !178
  %i.p = add nsw i64 %i.o, 4
  store i64 %i.p, ptr %i.l, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEE6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !101    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.d = shl i64 %2, 3
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.d, i1 noundef zeroext true)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(232) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.a, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !70
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !505
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !505
  br label %_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE5ResetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE5ResetEv.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE5ResetEv.exit

_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE5ResetEv.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !82   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(144) %i.u), !inline_history !506
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.y, align 8, !tbaa !110
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 8 uses
  store ptr null, ptr %i.z, align 8, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE5ResetEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !68
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !70
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #18, !inline_history !189
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #18, !inline_history !189
  br label %_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i.i.i.i1 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
end_hunk_4
begin_hunk_5_@_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE:bb.a
  %.not.i.i.i129 = icmp eq i8 %i.lc, 0
  br i1 %.not.i.i.i129, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ld = add nsw i32 %i.ku, -1
  store i32 %i.ld, ptr %i.kr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130

bb.cv:                                            ; preds = %bb.ct
  %i.le = atomicrmw volatile add ptr %i.kr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i131 = phi i32 [ %i.ku, %bb.cu ], [ %i.le, %bb.cv ]
  %i.lf = icmp eq i32 %.0.i.i.i.i131, 1
  br i1 %i.lf, label %bb.cw, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit132, !prof !72

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #18
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit132

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit132: ; preds = %.critedge, %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.lg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !56 ; 8 uses
  %.not.i.i133 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i133, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit132
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 4 uses
  %i.lj = load atomic i64, ptr %i.li acquire, align 8 ; 2 uses
  %i.lk = icmp eq i64 %i.lj, 4294967297
  %i.ll = trunc i64 %i.lj to i32                  ; 2 uses
  br i1 %i.lk, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.li, align 8, !tbaa !68
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  store i32 0, ptr %i.lm, align 4, !tbaa !70
  %i.ln = load ptr, ptr %i.lh, align 8, !tbaa !54
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #18, !inline_history !428
  %i.lq = load ptr, ptr %i.lh, align 8, !tbaa !54
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #18, !inline_history !428
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137

bb.cz:                                            ; preds = %bb.cx
  %i.lt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i134 = icmp eq i8 %i.lt, 0
  br i1 %.not.i.i.i134, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lu = add nsw i32 %i.ll, -1
  store i32 %i.lu, ptr %i.li, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135

bb.db:                                            ; preds = %bb.cz
  %i.lv = atomicrmw volatile add ptr %i.li, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i136 = phi i32 [ %i.ll, %bb.da ], [ %i.lv, %bb.db ]
  %i.lw = icmp eq i32 %.0.i.i.i.i136, 1
  br i1 %i.lw, label %bb.dc, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137, !prof !72

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #18
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit132, %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !56 ; 8 uses
  %.not.i.i138 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i138, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 4 uses
  %i.ma = load atomic i64, ptr %i.lz acquire, align 8 ; 2 uses
  %i.mb = icmp eq i64 %i.ma, 4294967297
  %i.mc = trunc i64 %i.ma to i32                  ; 2 uses
  br i1 %i.mb, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %i.lz, align 8, !tbaa !68
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  store i32 0, ptr %i.md, align 4, !tbaa !70
  %i.me = load ptr, ptr %i.ly, align 8, !tbaa !54
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #18, !inline_history !428
  %i.mh = load ptr, ptr %i.ly, align 8, !tbaa !54
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #18, !inline_history !428
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

bb.df:                                            ; preds = %bb.dd
  %i.mk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i139 = icmp eq i8 %i.mk, 0
  br i1 %.not.i.i.i139, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ml = add nsw i32 %i.mc, -1
  store i32 %i.ml, ptr %i.lz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

bb.dh:                                            ; preds = %bb.df
  %i.mm = atomicrmw volatile add ptr %i.lz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140: ; preds = %bb.dh, %bb.dg
  %.0.i.i.i.i141 = phi i32 [ %i.mc, %bb.dg ], [ %i.mm, %bb.dh ]
  %i.mn = icmp eq i32 %.0.i.i.i.i141, 1
  br i1 %i.mn, label %bb.di, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, !prof !72

bb.di:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #18
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137, %bb.de, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.dj:                                            ; preds = %bb.cq, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %bb.cq ], [ %i.ai, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.d ], [ %i.p, %bb.c ], [ %i.l, %bb.b ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn52.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.c, align 8, !tbaa !178 ; 2 uses
  %i.d = add nsw i64 %1, -1                       ; 2 uses
  %xtraiter = and i64 %1, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %bb.b

.lr.ph10.unr-lcssa:                               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph10, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph10.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.u, %.lr.ph10.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %.epil.init
  store i64 0, ptr %i.g, align 1
  %i.h = load i64, ptr %i.c, align 8, !tbaa !178
  %i.i = add nsw i64 %i.h, 8
  store i64 %i.i, ptr %i.c, align 8, !tbaa !178
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.unr-lcssa, %.epil.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %.pre12 = load i64, ptr %i.k, align 8, !tbaa !178 ; 2 uses
  %xtraiter15 = and i64 %1, 1
  %i.l = icmp eq i64 %i.d, 0
  br i1 %i.l, label %.epil.preheader14, label %.lr.ph10.new

.lr.ph10.new:                                     ; preds = %.lr.ph10
  %unroll_iter20 = and i64 %1, 9223372036854775806
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.m = phi i64 [ %.pre, %.lr.ph.new ], [ %i.u, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.m
  store i64 0, ptr %i.o, align 1
  %i.p = load i64, ptr %i.c, align 8, !tbaa !178
  %i.q = add nsw i64 %i.p, 8                      ; 2 uses
  store i64 %i.q, ptr %i.c, align 8, !tbaa !178
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.q
  store i64 0, ptr %i.s, align 1
  %i.t = load i64, ptr %i.c, align 8, !tbaa !178
  %i.u = add nsw i64 %i.t, 8                      ; 3 uses
  store i64 %i.u, ptr %i.c, align 8, !tbaa !178
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph10.unr-lcssa, label %bb.b, !llvm.loop !529

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod18.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod18.not, label %._crit_edge, label %.epil.preheader14

.epil.preheader14:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph10
  %.epil.init17 = phi i64 [ %.pre12, %.lr.ph10 ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.epil.init17
  store i64 0, ptr %i.w, align 1
  %i.x = load i64, ptr %i.k, align 8, !tbaa !178
  %i.y = add nsw i64 %i.x, 8
  store i64 %i.y, ptr %i.k, align 8, !tbaa !178
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader14, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph10.new
  %i.z = phi i64 [ %.pre12, %.lr.ph10.new ], [ %i.ah, %bb.c ]
  %niter21 = phi i64 [ 0, %.lr.ph10.new ], [ %niter21.next.1, %bb.c ]
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.z
  store i64 0, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !178
  %i.ad = add nsw i64 %i.ac, 8                    ; 2 uses
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !178
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ad
  store i64 0, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !178
  %i.ah = add nsw i64 %i.ag, 8                    ; 3 uses
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !178
  %niter21.next.1 = add i64 %niter21, 2           ; 2 uses
  %niter21.ncmp.1 = icmp eq i64 %niter21.next.1, %unroll_iter20
  br i1 %niter21.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !530
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !178
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d
  store i64 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8, !tbaa !178
  %i.g = add nsw i64 %i.f, 8
  store i64 %i.g, ptr %i.c, align 8, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !178
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  store i64 %2, ptr %i.l, align 1
  %i.m = load i64, ptr %i.j, align 8, !tbaa !178
  %i.n = add nsw i64 %i.m, 8
  store i64 %i.n, ptr %i.j, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10MapBuilderC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEES7_RKS3_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(296) initializes((0, 146)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %"class.std::shared_ptr.11", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.11", align 8 ; 7 uses
  %7 = alloca %"class.std::vector", align 8       ; 12 uses
  %8 = alloca [2 x %"class.std::shared_ptr.8"], align 16 ; 12 uses
  %9 = alloca %"class.std::shared_ptr.76", align 8 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !531
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.f, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.h, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow10MapBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 0, ptr %i.j, align 8, !tbaa !532
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 3 uses
  store i8 0, ptr %i.k, align 1, !tbaa !539
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !540
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.n, align 8, !tbaa !541
  store i8 0, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !540
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.q, align 8, !tbaa !541
  store i8 0, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !540
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.t, align 8, !tbaa !541
  store i8 0, ptr %i.s, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56   ; 2 uses
  %i.y = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.y, ptr %i.v, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %3, align 8, !tbaa !57
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !57
  %.not.i.i.i27 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i27, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit29, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i28 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit29

bb.g:                                             ; preds = %bb.e
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit29

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit29: ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, %bb.f, %bb.g
  %i.an = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !62, !noalias !542
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65, !noalias !542
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !59, !noalias !542
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62, !noalias !542 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !65, !noalias !542 ; 3 uses
  store ptr %i.ay, ptr %5, align 8, !tbaa !65, !alias.scope !542
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56, !noalias !542 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !56, !alias.scope !542
  %.not.i.i.i.i30 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i30, label %_ZNK5arrow7MapType9key_fieldEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58, !noalias !542
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

end_hunk_5
begin_hunk_6_@_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_:bb.a
  %i.v = load i8, ptr %i.u, align 1, !tbaa !58
  %.not46 = icmp eq i8 %i.v, 0                    ; 2 uses
  %i.w = zext i1 %.not46 to i64
  %i.x = load i64, ptr %i.r, align 8, !tbaa !118
  %i.y = add nsw i64 %i.x, %i.w
  store i64 %i.y, ptr %i.r, align 8, !tbaa !118
  %i.z = select i1 %.not46, i8 0, i8 %.03650
  %i.aa = or i8 %i.z, %.03849                     ; 2 uses
  %i.ab = shl i8 %.03650, 1                       ; 2 uses
  %i.ac = add nsw i64 %.03551, -1                 ; 2 uses
  %i.ad = icmp ne i8 %i.ab, 0
  %i.ae = icmp samesign ugt i64 %.03551, 1
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.d, label %._crit_edge, !llvm.loop !865

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.038.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.aa, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.ac, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.040 = phi ptr [ %i.ag, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.ah = icmp sgt i64 %.1, 7
  br i1 %i.ah, label %.preheader48.lr.ph, label %._crit_edge55

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.ai = lshr i64 %.1, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.ai, %.preheader48.lr.ph ], [ %i.cx, %.preheader48 ] ; 2 uses
  %.14154 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.dm, %.preheader48 ] ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !372
  %i.am = load ptr, ptr %3, align 8, !tbaa !863, !nonnull !562, !align !861
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !96 ; 8 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !864, !nonnull !562, !align !861 ; 16 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 16 uses
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.ar = add nsw i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !95
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.at = load i8, ptr %i.as, align 1, !tbaa !58
  %i.au = icmp ne i8 %i.at, 0                     ; 2 uses
  %i.av = xor i1 %i.au, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !118
  %i.ay = add nsw i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.ap, align 8, !tbaa !118
  %i.az = zext i1 %i.au to i8
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.bb = add nsw i64 %i.ba, 1
  store i64 %i.bb, ptr %i.ao, align 8, !tbaa !95
  %i.bc = getelementptr inbounds i8, ptr %i.an, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !58
  %.not69 = icmp eq i8 %i.bd, 0                   ; 2 uses
  %i.be = zext i1 %.not69 to i64
  %i.bf = load i64, ptr %i.ap, align 8, !tbaa !118
  %i.bg = add nsw i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.ap, align 8, !tbaa !118
  %i.bh = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.ao, align 8, !tbaa !95
  %i.bj = getelementptr inbounds i8, ptr %i.an, i64 %i.bh
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !58
  %.not70 = icmp eq i8 %i.bk, 0                   ; 2 uses
  %i.bl = zext i1 %.not70 to i64
  %i.bm = load i64, ptr %i.ap, align 8, !tbaa !118
  %i.bn = add nsw i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.ap, align 8, !tbaa !118
  %i.bo = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.bp = add nsw i64 %i.bo, 1
  store i64 %i.bp, ptr %i.ao, align 8, !tbaa !95
  %i.bq = getelementptr inbounds i8, ptr %i.an, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !58
  %.not71 = icmp eq i8 %i.br, 0                   ; 2 uses
  %i.bs = zext i1 %.not71 to i64
  %i.bt = load i64, ptr %i.ap, align 8, !tbaa !118
  %i.bu = add nsw i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %i.ap, align 8, !tbaa !118
  %i.bv = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.bw = add nsw i64 %i.bv, 1
  store i64 %i.bw, ptr %i.ao, align 8, !tbaa !95
  %i.bx = getelementptr inbounds i8, ptr %i.an, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !58
  %.not72 = icmp eq i8 %i.by, 0                   ; 2 uses
  %i.bz = zext i1 %.not72 to i64
  %i.ca = load i64, ptr %i.ap, align 8, !tbaa !118
  %i.cb = add nsw i64 %i.ca, %i.bz
  store i64 %i.cb, ptr %i.ap, align 8, !tbaa !118
  %i.cc = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.cd = add nsw i64 %i.cc, 1
  store i64 %i.cd, ptr %i.ao, align 8, !tbaa !95
  %i.ce = getelementptr inbounds i8, ptr %i.an, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !58
  %.not73 = icmp eq i8 %i.cf, 0                   ; 2 uses
  %i.cg = zext i1 %.not73 to i64
  %i.ch = load i64, ptr %i.ap, align 8, !tbaa !118
  %i.ci = add nsw i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %i.ap, align 8, !tbaa !118
  %i.cj = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ao, align 8, !tbaa !95
  %i.cl = getelementptr inbounds i8, ptr %i.an, i64 %i.cj
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !58
  %.not74 = icmp eq i8 %i.cm, 0                   ; 2 uses
  %i.cn = zext i1 %.not74 to i64
  %i.co = load i64, ptr %i.ap, align 8, !tbaa !118
  %i.cp = add nsw i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.ap, align 8, !tbaa !118
  %i.cq = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr %i.ao, align 8, !tbaa !95
  %i.cs = getelementptr inbounds i8, ptr %i.an, i64 %i.cq
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !58
  %.not75 = icmp eq i8 %i.ct, 0                   ; 2 uses
  %i.cu = zext i1 %.not75 to i64
  %i.cv = load i64, ptr %i.ap, align 8, !tbaa !118
  %i.cw = add nsw i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.ap, align 8, !tbaa !118
  %i.cx = add nsw i64 %.in, -1
  %i.cy = select i1 %.not69, i8 0, i8 2
  %i.cz = or disjoint i8 %i.cy, %i.az
  %i.da = select i1 %.not70, i8 0, i8 4
  %i.db = or disjoint i8 %i.cz, %i.da
  %i.dc = select i1 %.not71, i8 0, i8 8
  %i.dd = or disjoint i8 %i.db, %i.dc
  %i.de = select i1 %.not72, i8 0, i8 16
  %i.df = or disjoint i8 %i.dd, %i.de
  %i.dg = select i1 %.not73, i8 0, i8 32
  %i.dh = or disjoint i8 %i.df, %i.dg
  %i.di = select i1 %.not74, i8 0, i8 64
  %i.dj = or i8 %i.dh, %i.di
  %i.dk = select i1 %.not75, i8 0, i8 -128
  %i.dl = or i8 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.14154, i64 1 ; 2 uses
  store i8 %i.dl, ptr %.14154, align 1, !tbaa !58
  %i.dn = icmp samesign ugt i64 %.in, 1
  br i1 %i.dn, label %.preheader48, label %._crit_edge55, !llvm.loop !866

._crit_edge55:                                    ; preds = %.preheader48, %bb.e
  %.141.lcssa = phi ptr [ %.040, %bb.e ], [ %i.dm, %.preheader48 ]
  %i.do = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.do, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !372
  %i.ds = load ptr, ptr %3, align 8, !tbaa !863, !nonnull !562, !align !861
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !96 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !864, !nonnull !562, !align !861 ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 64 ; 6 uses
  %xtraiter = and i64 %i.do, 1
  %i.dx = icmp eq i64 %i.do, 1
  br i1 %i.dx, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.do, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph60.new
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.er, %bb.f ] ; 3 uses
  %.13957 = phi i8 [ 0, %.lr.ph60.new ], [ %i.eq, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.1, %bb.f ]
  %i.dy = load i64, ptr %i.dv, align 8, !tbaa !95 ; 2 uses
  %i.dz = add nsw i64 %i.dy, 1
  store i64 %i.dz, ptr %i.dv, align 8, !tbaa !95
  %i.ea = getelementptr inbounds i8, ptr %i.dt, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !58
  %.not47 = icmp eq i8 %i.eb, 0                   ; 2 uses
  %i.ec = zext i1 %.not47 to i64
  %i.ed = load i64, ptr %i.dw, align 8, !tbaa !118
  %i.ee = add nsw i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %i.dw, align 8, !tbaa !118
  %i.ef = select i1 %.not47, i8 0, i8 %.13758
  %i.eg = or i8 %i.ef, %.13957
  %i.eh = shl nuw i8 %.13758, 1
  %i.ei = load i64, ptr %i.dv, align 8, !tbaa !95 ; 2 uses
  %i.ej = add nsw i64 %i.ei, 1
  store i64 %i.ej, ptr %i.dv, align 8, !tbaa !95
  %i.ek = getelementptr inbounds i8, ptr %i.dt, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !58
  %.not47.1 = icmp eq i8 %i.el, 0                 ; 2 uses
  %i.em = zext i1 %.not47.1 to i64
  %i.en = load i64, ptr %i.dw, align 8, !tbaa !118
  %i.eo = add nsw i64 %i.en, %i.em
  store i64 %i.eo, ptr %i.dw, align 8, !tbaa !118
  %i.ep = select i1 %.not47.1, i8 0, i8 %i.eh
  %i.eq = or i8 %i.ep, %i.eg                      ; 3 uses
  %i.er = shl nuw i8 %.13758, 2                   ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge61.loopexit.unr-lcssa, label %bb.f, !llvm.loop !867

._crit_edge61.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.loopexit.unr-lcssa, %.lr.ph60
  %.13758.epil.init = phi i8 [ 1, %.lr.ph60 ], [ %i.er, %._crit_edge61.loopexit.unr-lcssa ]
  %.13957.epil.init = phi i8 [ 0, %.lr.ph60 ], [ %i.eq, %._crit_edge61.loopexit.unr-lcssa ]
  %lcmp.mod86 = trunc i64 %i.do to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.es = load i64, ptr %i.dv, align 8, !tbaa !95 ; 2 uses
  %i.et = add nsw i64 %i.es, 1
  store i64 %i.et, ptr %i.dv, align 8, !tbaa !95
  %i.eu = getelementptr inbounds i8, ptr %i.dt, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !58
  %.not47.epil = icmp eq i8 %i.ev, 0              ; 2 uses
  %i.ew = zext i1 %.not47.epil to i64
  %i.ex = load i64, ptr %i.dw, align 8, !tbaa !118
  %i.ey = add nsw i64 %i.ex, %i.ew
  store i64 %i.ey, ptr %i.dw, align 8, !tbaa !118
  %i.ez = select i1 %.not47.epil, i8 0, i8 %.13758.epil.init
  %i.fa = or i8 %i.ez, %.13957.epil.init
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %.epil.preheader, %._crit_edge61.loopexit.unr-lcssa, %.preheader
  %.139.lcssa = phi i8 [ 0, %.preheader ], [ %i.eq, %._crit_edge61.loopexit.unr-lcssa ], [ %i.fa, %.epil.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge55, %._crit_edge61, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %4 = alloca %"class.std::__shared_ptr.54", align 16 ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %7 = alloca %"class.std::unique_ptr.102", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !178
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.b, i1 noundef zeroext %3)
  %i.c = load ptr, ptr %5, align 8, !tbaa !101    ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.a, label %bb.aj

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.e = load i64, ptr %i.a, align 8, !tbaa !178
  %.not = icmp eq i64 %i.e, 0
  %.pre36 = load ptr, ptr %1, align 8, !tbaa !868 ; 7 uses
  br i1 %.not, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.pre36, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !869  ; 2 uses
  %.not.i27 = icmp eq i64 %i.g, 0
  br i1 %.not.i27, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.pre36, i64 9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !876, !range !561, !noundef !562
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %.pre36, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !561
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !605
  %i.o = getelementptr inbounds nuw i8, ptr %.pre36, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !605
  %i.r = getelementptr inbounds nuw i8, ptr %.pre36, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !877  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  %i.u = sub nsw i64 %i.g, %i.s
  call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 0, i64 %i.u, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !868
  br label %_ZN5arrow6Buffer11ZeroPaddingEv.exit

_ZN5arrow6Buffer11ZeroPaddingEv.exit:             ; preds = %bb.c, %bb.b, %bb.a
  %i.v = phi ptr [ %.pre, %bb.c ], [ %.pre36, %bb.b ], [ %.pre36, %bb.a ] ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !407
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !56   ; 4 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSINS0_15ResizableBufferEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6Buffer11ZeroPaddingEv.exit
  %.not7.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !56
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.af = phi ptr [ %i.z, %bb.d ], [ %i.z, %bb.f ], [ %.pr.pre.i.i.i, %bb.g ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ag, align 8, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !70
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18, !inline_history !878
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18, !inline_history !878
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i9.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.aj, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.au, label %bb.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !72

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.y, ptr %i.x, align 8, !tbaa !56
  %.pre37 = load ptr, ptr %2, align 8, !tbaa !407
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSINS0_15ResizableBufferEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEaSINS0_15ResizableBufferEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit: ; preds = %_ZN5arrow6Buffer11ZeroPaddingEv.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.av = phi ptr [ %i.v, %_ZN5arrow6Buffer11ZeroPaddingEv.exit ], [ %.pre37, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  %.not.i28 = icmp eq ptr %i.av, null
  br i1 %.not.i28, label %bb.n, label %bb.ac

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSINS0_15ResizableBufferEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !53
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51
  call void @_ZN5arrow14AllocateBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, i64 noundef 0, i64 noundef %i.ax, ptr noundef %i.az)
  %i.ba = load ptr, ptr %6, align 8, !tbaa !101
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %i.bb, label %bb.q, label %bb.o, !prof !605

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %0, align 8, !tbaa !101
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !885, !noalias !886
end_hunk_6
