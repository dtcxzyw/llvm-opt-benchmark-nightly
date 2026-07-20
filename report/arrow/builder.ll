inline.NumInlined: 40063
inline.NumDeleted: 2741
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE5ResetEv:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !336
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #20, !inline_history !684
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #20, !inline_history !684
  br label %_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i.i.i2 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i4 = phi i32 [ %i.z, %bb.k ], [ %i.aj, %bb.l ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i.i4, 1
  br i1 %i.ak, label %bb.m, label %_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit, !prof !338

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #20
  br label %_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit

_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit:   ; preds = %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !483, !noalias !38629 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38629
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !38629
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !38629, !inline_history !688 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit9.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38629
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !38629
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.n = load i64, ptr %i.m, align 8, !tbaa !689
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !689
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  store i32 %i.o, ptr %i.t, align 1
  %i.u = load i64, ptr %i.r, align 8, !tbaa !689
  %i.v = add nsw i64 %i.u, 4
  store i64 %i.v, ptr %i.r, align 8, !tbaa !689
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !690  ; 2 uses
  %i.aa = sdiv i64 %i.z, 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !120
  %i.ad = srem i64 %i.z, 8
  %i.ae = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !120
  %i.ag = xor i8 %i.af, -1
  %i.ah = and i8 %i.ac, %i.ag
  store i8 %i.ah, ptr %i.ab, align 1, !tbaa !120
  %i.ai = load <2 x i64>, ptr %i.y, align 8, !tbaa !479
  %i.aj = add nsw <2 x i64> %i.ai, splat (i64 1)
  store <2 x i64> %i.aj, ptr %i.y, align 8, !tbaa !479
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.al = load <2 x i64>, ptr %i.ak, align 8, !tbaa !479
  %i.am = add nsw <2 x i64> %i.al, splat (i64 1)
  store <2 x i64> %i.am, ptr %i.ak, align 8, !tbaa !479
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !38632
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11AppendNullsEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.b = load i64, ptr %i.a, align 8, !tbaa !689
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !483, !noalias !38635 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38635
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !38635
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !38635, !inline_history !688
  %i.i = add nsw i64 %i.h, %2                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38635
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !38635
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.o = icmp sgt i64 %2, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit17
  %i.p = trunc i64 %i.b to i32                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.r, align 8, !tbaa !689 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.s = icmp eq i64 %2, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod21)
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %.epil.init
  store i32 %i.p, ptr %i.u, align 1
  %i.v = load i64, ptr %i.r, align 8, !tbaa !689
  %i.w = add nsw i64 %i.v, 4
  store i64 %i.w, ptr %i.r, align 8, !tbaa !689
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder13UnsafeSetNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2)
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !38638
  br label %.critedge

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.x = phi i64 [ %.pre, %.lr.ph.new ], [ %i.af, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.x
  store i32 %i.p, ptr %i.z, align 1
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !689
  %i.ab = add nsw i64 %i.aa, 4                    ; 2 uses
  store i64 %i.ab, ptr %i.r, align 8, !tbaa !689
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab
  store i32 %i.p, ptr %i.ad, align 1
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !689
  %i.af = add nsw i64 %i.ae, 4                    ; 3 uses
  store i64 %i.af, ptr %i.r, align 8, !tbaa !689
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !38641

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE16AppendEmptyValueEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !483, !noalias !38642 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38642
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !38642
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !38642, !inline_history !688 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit9.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38642
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !38642
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.n = load i64, ptr %i.m, align 8, !tbaa !689
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !689
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  store i32 %i.o, ptr %i.t, align 1
  %i.u = load i64, ptr %i.r, align 8, !tbaa !689
  %i.v = add nsw i64 %i.u, 4
  store i64 %i.v, ptr %i.r, align 8, !tbaa !689
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !690  ; 2 uses
  %i.aa = sdiv i64 %i.z, 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !120
  %i.ad = srem i64 %i.z, 8
  %i.ae = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !120
  %i.ag = or i8 %i.af, %i.ac
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !120
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !690
  %i.ai = add nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !690
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !479
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !479
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !38645
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE17AppendEmptyValuesEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.b = load i64, ptr %i.a, align 8, !tbaa !689
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !483, !noalias !38648 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38648
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !38648
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !38648, !inline_history !688
  %i.i = add nsw i64 %i.h, %2                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38648
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !38648
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.o = icmp sgt i64 %2, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit17
  %i.p = trunc i64 %i.b to i32                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.r, align 8, !tbaa !689 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.s = icmp eq i64 %2, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod21)
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %.epil.init
  store i32 %i.p, ptr %i.u, align 1
  %i.v = load i64, ptr %i.r, align 8, !tbaa !689
  %i.w = add nsw i64 %i.v, 4
  store i64 %i.w, ptr %i.r, align 8, !tbaa !689
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2)
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !38651
  br label %.critedge

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.x = phi i64 [ %.pre, %.lr.ph.new ], [ %i.af, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.x
  store i32 %i.p, ptr %i.z, align 1
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !689
  %i.ab = add nsw i64 %i.aa, 4                    ; 2 uses
  store i64 %i.ab, ptr %i.r, align 8, !tbaa !689
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab
  store i32 %i.p, ptr %i.ad, align 1
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !689
  %i.af = add nsw i64 %i.ae, 4                    ; 3 uses
  store i64 %i.af, ptr %i.r, align 8, !tbaa !689
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !38654

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !719  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !712
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !719
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !719
  %i.l = getelementptr [4 x i8], ptr %i.i, i64 %3 ; 3 uses
  %i.m = getelementptr [4 x i8], ptr %i.l, i64 %4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = load i32, ptr %i.l, align 4, !tbaa !3
  %i.p = sub nsw i32 %i.n, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.r = load i64, ptr %i.q, align 8, !tbaa !483, !noalias !38655 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38655
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !38655
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !38655, !inline_history !688
  %i.w = add nsw i64 %i.v, %4                     ; 2 uses
  %.not.i = icmp sgt i64 %i.w, %i.r
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN5arrow6StatusD2Ev.exit48

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.x = shl nsw i64 %i.r, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.w, i64 %i.x)
  %i.y = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38655
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !38655
  call void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %6, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ab = icmp eq ptr %.pr, null
  br i1 %i.ab, label %_ZN5arrow6StatusD2Ev.exit48, label %.critedge

_ZN5arrow6StatusD2Ev.exit48:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ac = sext i32 %i.p to i64                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38658)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !38658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !38661
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 7 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !689, !noalias !38661
  %i.af = add nsw i64 %i.ae, %i.ac                ; 3 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !479, !noalias !38661
  %i.ag = icmp sgt i64 %i.af, 2147483646
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i, !prof !338

_ZN5arrow6StatusD2Ev.exit10.thread.i:             ; preds = %_ZN5arrow6StatusD2Ev.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !38661
  store ptr null, ptr %7, align 8, !tbaa !54, !alias.scope !38658
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !38658
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !38661
  store i64 2147483646, ptr %i.b, align 8, !tbaa !479, !noalias !38661
  call void @_ZN5arrow6Status13CapacityErrorIJRA32_KclRA14_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(32) @.str.18, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.19, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !38658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !38661
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !54, !noalias !38658 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !38661
  store ptr %.pr.i, ptr %7, align 8, !tbaa !54, !alias.scope !38658
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !38658
  %i.ah = icmp eq ptr %.pr.i, null
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, label %_ZN5arrow6StatusD2Ev.exit50.thread56

_ZN5arrow6StatusD2Ev.exit50.thread56:             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %.pr.i, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit._crit_edge.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pre.i = load i64, ptr %i.ad, align 8, !tbaa !689, !noalias !38664
  %.pre12.i = add nsw i64 %.pre.i, %i.ac
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i ], [ %i.af, %_ZN5arrow6StatusD2Ev.exit10.thread.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !780, !noalias !38664 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre-phi.i, %i.aj
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit50, label %_ZN5arrow6StatusD2Ev.exit50.thread

_ZN5arrow6StatusD2Ev.exit50.thread:               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZN5arrow6StatusD2Ev.exit54

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.al = shl nsw i64 %i.aj, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %.pre-phi.i, i64 %i.al)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ak, i64 noundef %.sroa.speculated.i.i.i.i, i1 noundef zeroext false)
  %.pr55 = load ptr, ptr %7, align 8, !tbaa !54   ; 2 uses
  store ptr %.pr55, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.am = icmp eq ptr %.pr55, null
  br i1 %i.am, label %_ZN5arrow6StatusD2Ev.exit54, label %.critedge

_ZN5arrow6StatusD2Ev.exit54:                      ; preds = %_ZN5arrow6StatusD2Ev.exit50, %_ZN5arrow6StatusD2Ev.exit50.thread
  %i.an = icmp sgt i64 %4, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit54
  %.not = icmp eq ptr %i.d, null
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %_ZN5arrow6StatusD2Ev.exit54
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !38669
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.03657 = phi i64 [ 0, %.lr.ph ], [ %i.dg, %bb.g ] ; 3 uses
  br i1 %.not, label %._crit_edge58, label %bb.d

._crit_edge58:                                    ; preds = %bb.c
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !689
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = load i64, ptr %i.e, align 8, !tbaa !712
  %i.aw = add i64 %.03657, %3
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !120
  %i.bb = trunc i64 %i.ax to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = lshr i8 %i.ba, %i.bc
  %i.be = trunc i8 %i.bd to i1
  %.pre59 = load i64, ptr %i.ad, align 8, !tbaa !689 ; 2 uses
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge58, %bb.d
  %i.bf = phi i64 [ %.pre, %._crit_edge58 ], [ %.pre59, %bb.d ]
  %i.bg = getelementptr [4 x i8], ptr %i.l, i64 %.03657 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds i8, ptr %i.k, i64 %i.bk
  %i.bm = sub nsw i32 %i.bj, %i.bh
  %i.bn = trunc i64 %i.bf to i32
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !99
  %i.bp = load i64, ptr %i.ap, align 8, !tbaa !689
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp
  store i32 %i.bn, ptr %i.bq, align 1
  %i.br = load i64, ptr %i.ap, align 8, !tbaa !689
  %i.bs = add nsw i64 %i.br, 4
  store i64 %i.bs, ptr %i.ap, align 8, !tbaa !689
  %i.bt = sext i32 %i.bm to i64                   ; 2 uses
  %i.bu = load ptr, ptr %i.au, align 8, !tbaa !99
  %i.bv = load i64, ptr %i.ad, align 8, !tbaa !689
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bl, i64 %i.bt, i1 false)
  %i.bx = load i64, ptr %i.ad, align 8, !tbaa !689
  %i.by = add nsw i64 %i.bx, %i.bt
  store i64 %i.by, ptr %i.ad, align 8, !tbaa !689
  %i.bz = load ptr, ptr %i.aq, align 8, !tbaa !99
  %i.ca = load i64, ptr %i.ar, align 8, !tbaa !690 ; 2 uses
  %i.cb = sdiv i64 %i.ca, 8
  %i.cc = getelementptr inbounds i8, ptr %i.bz, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !120
  %i.ce = srem i64 %i.ca, 8
  %i.cf = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !120
  %i.ch = or i8 %i.cg, %i.cd
  store i8 %i.ch, ptr %i.cc, align 1, !tbaa !120
  %i.ci = load i64, ptr %i.ar, align 8, !tbaa !690
  %i.cj = add nsw i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ar, align 8, !tbaa !690
end_hunk_0
begin_hunk_1_@_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE5ResetEv:bb.a
bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.w, align 8, !tbaa !334
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !336
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #20, !inline_history !684
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #20, !inline_history !684
  br label %_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i.i.i2 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i4 = phi i32 [ %i.z, %bb.k ], [ %i.aj, %bb.l ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i.i4, 1
  br i1 %i.ak, label %bb.m, label %_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit, !prof !338

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #20
  br label %_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit

_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit:   ; preds = %_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !483, !noalias !38731 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38731
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !38731
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !38731, !inline_history !688 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit9.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38731
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !38731
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.n = load i64, ptr %i.m, align 8, !tbaa !689
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !689
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  store i64 %i.n, ptr %i.s, align 1
  %i.t = load i64, ptr %i.q, align 8, !tbaa !689
  %i.u = add nsw i64 %i.t, 8
  store i64 %i.u, ptr %i.q, align 8, !tbaa !689
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !690  ; 2 uses
  %i.z = sdiv i64 %i.y, 8
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !120
  %i.ac = srem i64 %i.y, 8
  %i.ad = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !120
  %i.af = xor i8 %i.ae, -1
  %i.ag = and i8 %i.ab, %i.af
  store i8 %i.ag, ptr %i.aa, align 1, !tbaa !120
  %i.ah = load <2 x i64>, ptr %i.x, align 8, !tbaa !479
  %i.ai = add nsw <2 x i64> %i.ah, splat (i64 1)
  store <2 x i64> %i.ai, ptr %i.x, align 8, !tbaa !479
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !tbaa !479
  %i.al = add nsw <2 x i64> %i.ak, splat (i64 1)
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !479
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !38734
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE11AppendNullsEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.b = load i64, ptr %i.a, align 8, !tbaa !689  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !483, !noalias !38737 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38737
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !38737
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !38737, !inline_history !688
  %i.i = add nsw i64 %i.h, %2                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38737
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !38737
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.o = icmp sgt i64 %2, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.q, align 8, !tbaa !689 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod21)
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !99
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %.epil.init
  store i64 %i.b, ptr %i.t, align 1
  %i.u = load i64, ptr %i.q, align 8, !tbaa !689
  %i.v = add nsw i64 %i.u, 8
  store i64 %i.v, ptr %i.q, align 8, !tbaa !689
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder13UnsafeSetNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2)
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !38740
  br label %.critedge

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.w = phi i64 [ %.pre, %.lr.ph.new ], [ %i.ae, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !99
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.w
  store i64 %i.b, ptr %i.y, align 1
  %i.z = load i64, ptr %i.q, align 8, !tbaa !689
  %i.aa = add nsw i64 %i.z, 8                     ; 2 uses
  store i64 %i.aa, ptr %i.q, align 8, !tbaa !689
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !99
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.aa
  store i64 %i.b, ptr %i.ac, align 1
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !689
  %i.ae = add nsw i64 %i.ad, 8                    ; 3 uses
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !689
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !38743

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE16AppendEmptyValueEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !483, !noalias !38744 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38744
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !38744
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !38744, !inline_history !688 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit9.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38744
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !38744
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.n = load i64, ptr %i.m, align 8, !tbaa !689
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !99
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !689
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  store i64 %i.n, ptr %i.s, align 1
  %i.t = load i64, ptr %i.q, align 8, !tbaa !689
  %i.u = add nsw i64 %i.t, 8
  store i64 %i.u, ptr %i.q, align 8, !tbaa !689
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !690  ; 2 uses
  %i.z = sdiv i64 %i.y, 8
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !120
  %i.ac = srem i64 %i.y, 8
  %i.ad = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !120
  %i.af = or i8 %i.ae, %i.ab
  store i8 %i.af, ptr %i.aa, align 1, !tbaa !120
  %i.ag = load i64, ptr %i.x, align 8, !tbaa !690
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr %i.x, align 8, !tbaa !690
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !479
  %i.ak = add nsw i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !479
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !38747
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE17AppendEmptyValuesEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.b = load i64, ptr %i.a, align 8, !tbaa !689  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !483, !noalias !38750 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38750
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !38750
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !38750, !inline_history !688
  %i.i = add nsw i64 %i.h, %2                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38750
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !38750
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.o = icmp sgt i64 %2, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.q, align 8, !tbaa !689 ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod21)
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !99
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %.epil.init
  store i64 %i.b, ptr %i.t, align 1
  %i.u = load i64, ptr %i.q, align 8, !tbaa !689
  %i.v = add nsw i64 %i.u, 8
  store i64 %i.v, ptr %i.q, align 8, !tbaa !689
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2)
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !38753
  br label %.critedge

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.w = phi i64 [ %.pre, %.lr.ph.new ], [ %i.ae, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !99
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.w
  store i64 %i.b, ptr %i.y, align 1
  %i.z = load i64, ptr %i.q, align 8, !tbaa !689
  %i.aa = add nsw i64 %i.z, 8                     ; 2 uses
  store i64 %i.aa, ptr %i.q, align 8, !tbaa !689
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !99
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.aa
  store i64 %i.b, ptr %i.ac, align 1
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !689
  %i.ae = add nsw i64 %i.ad, 8                    ; 3 uses
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !689
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !38756

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !719  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !712
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !719
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !719  ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %3 ; 4 uses
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %4
  %i.n = load i64, ptr %i.m, align 8, !tbaa !479
  %i.o = load i64, ptr %i.l, align 8, !tbaa !479
  %i.p = sub nsw i64 %i.n, %i.o                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.r = load i64, ptr %i.q, align 8, !tbaa !483, !noalias !38757 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38757
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !38757
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !38757, !inline_history !688
  %i.w = add nsw i64 %i.v, %4                     ; 2 uses
  %.not.i = icmp sgt i64 %i.w, %i.r
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN5arrow6StatusD2Ev.exit48

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.x = shl nsw i64 %i.r, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.w, i64 %i.x)
  %i.y = load ptr, ptr %1, align 8, !tbaa !58, !noalias !38757
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !38757
  call void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %6, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ab = icmp eq ptr %.pr, null
  br i1 %i.ab, label %_ZN5arrow6StatusD2Ev.exit48, label %.critedge

_ZN5arrow6StatusD2Ev.exit48:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !38760)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !38760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !38763
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 11 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !689, !noalias !38763
  %i.ae = add nsw i64 %i.ad, %i.p                 ; 3 uses
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !479, !noalias !38763
  %i.af = icmp eq i64 %i.ae, 9223372036854775807
  br i1 %i.af, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i, !prof !338

_ZN5arrow6StatusD2Ev.exit10.thread.i:             ; preds = %_ZN5arrow6StatusD2Ev.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !38763
  store ptr null, ptr %7, align 8, !tbaa !54, !alias.scope !38760
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !38760
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !38763
  store i64 9223372036854775806, ptr %i.b, align 8, !tbaa !479, !noalias !38763
  call void @_ZN5arrow6Status13CapacityErrorIJRA32_KclRA14_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(32) @.str.18, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.19, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !38760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !38763
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !54, !noalias !38760 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !38763
  store ptr %.pr.i, ptr %7, align 8, !tbaa !54, !alias.scope !38760
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !38760
  %i.ag = icmp eq ptr %.pr.i, null
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, label %_ZN5arrow6StatusD2Ev.exit50.thread56

_ZN5arrow6StatusD2Ev.exit50.thread56:             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %.pr.i, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit._crit_edge.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pre.i = load i64, ptr %i.ac, align 8, !tbaa !689, !noalias !38766
  %.pre12.i = add nsw i64 %.pre.i, %i.p
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i ], [ %i.ae, %_ZN5arrow6StatusD2Ev.exit10.thread.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !780, !noalias !38766 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre-phi.i, %i.ai
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit50, label %_ZN5arrow6StatusD2Ev.exit50.thread

_ZN5arrow6StatusD2Ev.exit50.thread:               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZN5arrow6StatusD2Ev.exit54

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ak = shl nsw i64 %i.ai, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %.pre-phi.i, i64 %i.ak)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i64 noundef %.sroa.speculated.i.i.i.i, i1 noundef zeroext false)
  %.pr55 = load ptr, ptr %7, align 8, !tbaa !54   ; 2 uses
  store ptr %.pr55, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.al = icmp eq ptr %.pr55, null
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit54, label %.critedge

_ZN5arrow6StatusD2Ev.exit54:                      ; preds = %_ZN5arrow6StatusD2Ev.exit50, %_ZN5arrow6StatusD2Ev.exit50.thread
  %i.am = icmp sgt i64 %4, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit54
  %.not = icmp eq ptr %i.d, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.03657.us = phi i64 [ %i.by, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.l, i64 %.03657.us ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !479 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !479
  %i.ay = getelementptr inbounds i8, ptr %i.k, i64 %i.av
  %i.az = sub nsw i64 %i.ax, %i.av                ; 2 uses
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !689
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.bc = load i64, ptr %i.ao, align 8, !tbaa !689
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  store i64 %i.ba, ptr %i.bd, align 1
  %i.be = load i64, ptr %i.ao, align 8, !tbaa !689
  %i.bf = add nsw i64 %i.be, 8
  store i64 %i.bf, ptr %i.ao, align 8, !tbaa !689
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !99
  %i.bh = load i64, ptr %i.ac, align 8, !tbaa !689
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.ay, i64 %i.az, i1 false)
  %i.bj = load i64, ptr %i.ac, align 8, !tbaa !689
  %i.bk = add nsw i64 %i.bj, %i.az
  store i64 %i.bk, ptr %i.ac, align 8, !tbaa !689
  %i.bl = load ptr, ptr %i.ap, align 8, !tbaa !99
  %i.bm = load i64, ptr %i.aq, align 8, !tbaa !690 ; 2 uses
  %i.bn = sdiv i64 %i.bm, 8
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !120
  %i.bq = srem i64 %i.bm, 8
  %i.br = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !120
  %i.bt = or i8 %i.bs, %i.bp
  store i8 %i.bt, ptr %i.bo, align 1, !tbaa !120
  %i.bu = load i64, ptr %i.aq, align 8, !tbaa !690
  %i.bv = add nsw i64 %i.bu, 1
  store i64 %i.bv, ptr %i.aq, align 8, !tbaa !690
  %i.bw = load i64, ptr %i.ar, align 8, !tbaa !479
  %i.bx = add nsw i64 %i.bw, 1
  store i64 %i.bx, ptr %i.ar, align 8, !tbaa !479
  %i.by = add nuw nsw i64 %.03657.us, 1           ; 2 uses
  %exitcond59.not = icmp eq i64 %i.by, %4
  br i1 %exitcond59.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !38771

._crit_edge:                                      ; preds = %bb.e, %.lr.ph.split.us, %_ZN5arrow6StatusD2Ev.exit54
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !38772
  br label %.critedge

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %.03657 = phi i64 [ %i.eh, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.bz = load i64, ptr %i.e, align 8, !tbaa !712
  %i.ca = add i64 %.03657, %3
  %i.cb = add i64 %i.ca, %i.bz                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !120
  %i.cf = trunc i64 %i.cb to i8
  %i.cg = and i8 %i.cf, 7
  %i.ch = lshr i8 %i.ce, %i.cg
  %i.ci = trunc i8 %i.ch to i1
  br i1 %i.ci, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.cj = getelementptr [8 x i8], ptr %i.l, i64 %.03657 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !479 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
end_hunk_1
begin_hunk_2_@_ZNK5arrow24VarLengthListLikeBuilderINS_8ListTypeEE4typeEv:bb.a
  store ptr %i.h, ptr %i.l, align 8, !tbaa !39429
  br label %_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i
  store ptr %i.j, ptr %0, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.af, align 8, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !118 ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ai, align 8, !tbaa !334
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !336
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #20, !inline_history !39377
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #20, !inline_history !39377
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  br i1 %i.aw, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !338

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #20
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !118 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.az, align 8, !tbaa !334
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !336
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #20, !inline_history !543
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #20, !inline_history !543
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  br i1 %i.bn, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !338

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
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
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.w
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bo, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15BaseListBuilderINS_8ListTypeEE12AppendValuesEPKiS4_lPKh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow15BaseListBuilderINS_8ListTypeEE12AppendValuesEPKilPKh(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef %2, i64 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39370 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b)
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = trunc i64 %i.f to i32                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.j, align 8, !tbaa !689 ; 2 uses
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
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.epil.init
  store i32 %i.h, ptr %i.m, align 1
  %i.n = load i64, ptr %i.j, align 8, !tbaa !689
  %i.o = add nsw i64 %i.n, 4
  store i64 %i.o, ptr %i.j, align 8, !tbaa !689
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.p = phi i64 [ %.pre, %.lr.ph.new ], [ %i.x, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.p
  store i32 %i.h, ptr %i.r, align 1
  %i.s = load i64, ptr %i.j, align 8, !tbaa !689
  %i.t = add nsw i64 %i.s, 4                      ; 2 uses
  store i64 %i.t, ptr %i.j, align 8, !tbaa !689
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.t
  store i32 %i.h, ptr %i.v, align 1
  %i.w = load i64, ptr %i.j, align 8, !tbaa !689
  %i.x = add nsw i64 %i.w, 4                      ; 3 uses
  store i64 %i.x, ptr %i.j, align 8, !tbaa !689
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !39432
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !689
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  store i32 %i.a, ptr %i.f, align 1
  %i.g = load i64, ptr %i.d, align 8, !tbaa !689
  %i.h = add nsw i64 %i.g, 4
  store i64 %i.h, ptr %i.d, align 8, !tbaa !689
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.g, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.m, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118  ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !119
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  %i.x = load ptr, ptr %3, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38288
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38289
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1479") align 8 %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !334
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !336
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !543
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !543
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !338

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #20
  call void @_ZN5arrow18TypedBufferBuilderIivED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #20
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #20
  resume { ptr, i32 } %i.as
}

declare void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.1479") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !334
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !336
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !562
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !562
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_:bb.a
  %i.v = load i8, ptr %i.u, align 1, !tbaa !120
  %.not46 = icmp eq i8 %i.v, 0                    ; 2 uses
  %i.w = zext i1 %.not46 to i64
  %i.x = load i64, ptr %i.r, align 8, !tbaa !796
  %i.y = add nsw i64 %i.x, %i.w
  store i64 %i.y, ptr %i.r, align 8, !tbaa !796
  %i.z = select i1 %.not46, i8 0, i8 %.03650
  %i.aa = or i8 %i.z, %.03849                     ; 2 uses
  %i.ab = shl i8 %.03650, 1                       ; 2 uses
  %i.ac = add nsw i64 %.03551, -1                 ; 2 uses
  %i.ad = icmp ne i8 %i.ab, 0
  %i.ae = icmp samesign ugt i64 %.03551, 1
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.d, label %._crit_edge, !llvm.loop !39484

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.038.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.aa, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.ac, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !120
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
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !39476
  %i.am = load ptr, ptr %3, align 8, !tbaa !39482, !nonnull !109, !align !110
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1466 ; 8 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !39483, !nonnull !109, !align !110 ; 16 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 16 uses
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !479 ; 2 uses
  %i.ar = add nsw i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !479
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.at = load i8, ptr %i.as, align 1, !tbaa !120
  %i.au = icmp ne i8 %i.at, 0                     ; 2 uses
  %i.av = xor i1 %i.au, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !796
  %i.ay = add nsw i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.ap, align 8, !tbaa !796
  %i.az = zext i1 %i.au to i8
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !479 ; 2 uses
  %i.bb = add nsw i64 %i.ba, 1
  store i64 %i.bb, ptr %i.ao, align 8, !tbaa !479
  %i.bc = getelementptr inbounds i8, ptr %i.an, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !120
  %.not69 = icmp eq i8 %i.bd, 0                   ; 2 uses
  %i.be = zext i1 %.not69 to i64
  %i.bf = load i64, ptr %i.ap, align 8, !tbaa !796
  %i.bg = add nsw i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.ap, align 8, !tbaa !796
  %i.bh = load i64, ptr %i.ao, align 8, !tbaa !479 ; 2 uses
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.ao, align 8, !tbaa !479
  %i.bj = getelementptr inbounds i8, ptr %i.an, i64 %i.bh
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !120
  %.not70 = icmp eq i8 %i.bk, 0                   ; 2 uses
  %i.bl = zext i1 %.not70 to i64
  %i.bm = load i64, ptr %i.ap, align 8, !tbaa !796
  %i.bn = add nsw i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.ap, align 8, !tbaa !796
  %i.bo = load i64, ptr %i.ao, align 8, !tbaa !479 ; 2 uses
  %i.bp = add nsw i64 %i.bo, 1
  store i64 %i.bp, ptr %i.ao, align 8, !tbaa !479
  %i.bq = getelementptr inbounds i8, ptr %i.an, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !120
  %.not71 = icmp eq i8 %i.br, 0                   ; 2 uses
  %i.bs = zext i1 %.not71 to i64
  %i.bt = load i64, ptr %i.ap, align 8, !tbaa !796
  %i.bu = add nsw i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %i.ap, align 8, !tbaa !796
  %i.bv = load i64, ptr %i.ao, align 8, !tbaa !479 ; 2 uses
  %i.bw = add nsw i64 %i.bv, 1
  store i64 %i.bw, ptr %i.ao, align 8, !tbaa !479
  %i.bx = getelementptr inbounds i8, ptr %i.an, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !120
  %.not72 = icmp eq i8 %i.by, 0                   ; 2 uses
  %i.bz = zext i1 %.not72 to i64
  %i.ca = load i64, ptr %i.ap, align 8, !tbaa !796
  %i.cb = add nsw i64 %i.ca, %i.bz
  store i64 %i.cb, ptr %i.ap, align 8, !tbaa !796
  %i.cc = load i64, ptr %i.ao, align 8, !tbaa !479 ; 2 uses
  %i.cd = add nsw i64 %i.cc, 1
  store i64 %i.cd, ptr %i.ao, align 8, !tbaa !479
  %i.ce = getelementptr inbounds i8, ptr %i.an, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !120
  %.not73 = icmp eq i8 %i.cf, 0                   ; 2 uses
  %i.cg = zext i1 %.not73 to i64
  %i.ch = load i64, ptr %i.ap, align 8, !tbaa !796
  %i.ci = add nsw i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %i.ap, align 8, !tbaa !796
  %i.cj = load i64, ptr %i.ao, align 8, !tbaa !479 ; 2 uses
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ao, align 8, !tbaa !479
  %i.cl = getelementptr inbounds i8, ptr %i.an, i64 %i.cj
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !120
  %.not74 = icmp eq i8 %i.cm, 0                   ; 2 uses
  %i.cn = zext i1 %.not74 to i64
  %i.co = load i64, ptr %i.ap, align 8, !tbaa !796
  %i.cp = add nsw i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.ap, align 8, !tbaa !796
  %i.cq = load i64, ptr %i.ao, align 8, !tbaa !479 ; 2 uses
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr %i.ao, align 8, !tbaa !479
  %i.cs = getelementptr inbounds i8, ptr %i.an, i64 %i.cq
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !120
  %.not75 = icmp eq i8 %i.ct, 0                   ; 2 uses
  %i.cu = zext i1 %.not75 to i64
  %i.cv = load i64, ptr %i.ap, align 8, !tbaa !796
  %i.cw = add nsw i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.ap, align 8, !tbaa !796
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
  store i8 %i.dl, ptr %.14154, align 1, !tbaa !120
  %i.dn = icmp samesign ugt i64 %.in, 1
  br i1 %i.dn, label %.preheader48, label %._crit_edge55, !llvm.loop !39485

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
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !39476
  %i.ds = load ptr, ptr %3, align 8, !tbaa !39482, !nonnull !109, !align !110
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1466 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !39483, !nonnull !109, !align !110 ; 6 uses
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
  %i.dy = load i64, ptr %i.dv, align 8, !tbaa !479 ; 2 uses
  %i.dz = add nsw i64 %i.dy, 1
  store i64 %i.dz, ptr %i.dv, align 8, !tbaa !479
  %i.ea = getelementptr inbounds i8, ptr %i.dt, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !120
  %.not47 = icmp eq i8 %i.eb, 0                   ; 2 uses
  %i.ec = zext i1 %.not47 to i64
  %i.ed = load i64, ptr %i.dw, align 8, !tbaa !796
  %i.ee = add nsw i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %i.dw, align 8, !tbaa !796
  %i.ef = select i1 %.not47, i8 0, i8 %.13758
  %i.eg = or i8 %i.ef, %.13957
  %i.eh = shl nuw i8 %.13758, 1
  %i.ei = load i64, ptr %i.dv, align 8, !tbaa !479 ; 2 uses
  %i.ej = add nsw i64 %i.ei, 1
  store i64 %i.ej, ptr %i.dv, align 8, !tbaa !479
  %i.ek = getelementptr inbounds i8, ptr %i.dt, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !120
  %.not47.1 = icmp eq i8 %i.el, 0                 ; 2 uses
  %i.em = zext i1 %.not47.1 to i64
  %i.en = load i64, ptr %i.dw, align 8, !tbaa !796
  %i.eo = add nsw i64 %i.en, %i.em
  store i64 %i.eo, ptr %i.dw, align 8, !tbaa !796
  %i.ep = select i1 %.not47.1, i8 0, i8 %i.eh
  %i.eq = or i8 %i.ep, %i.eg                      ; 3 uses
  %i.er = shl nuw i8 %.13758, 2                   ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge61.loopexit.unr-lcssa, label %bb.f, !llvm.loop !39486

._crit_edge61.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.loopexit.unr-lcssa, %.lr.ph60
  %.13758.epil.init = phi i8 [ 1, %.lr.ph60 ], [ %i.er, %._crit_edge61.loopexit.unr-lcssa ]
  %.13957.epil.init = phi i8 [ 0, %.lr.ph60 ], [ %i.eq, %._crit_edge61.loopexit.unr-lcssa ]
  %lcmp.mod86 = trunc i64 %i.do to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.es = load i64, ptr %i.dv, align 8, !tbaa !479 ; 2 uses
  %i.et = add nsw i64 %i.es, 1
  store i64 %i.et, ptr %i.dv, align 8, !tbaa !479
  %i.eu = getelementptr inbounds i8, ptr %i.dt, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !120
  %.not47.epil = icmp eq i8 %i.ev, 0              ; 2 uses
  %i.ew = zext i1 %.not47.epil to i64
  %i.ex = load i64, ptr %i.dw, align 8, !tbaa !796
  %i.ey = add nsw i64 %i.ex, %i.ew
  store i64 %i.ey, ptr %i.dw, align 8, !tbaa !796
  %i.ez = select i1 %.not47.epil, i8 0, i8 %.13758.epil.init
  %i.fa = or i8 %i.ez, %.13957.epil.init
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %.epil.preheader, %._crit_edge61.loopexit.unr-lcssa, %.preheader
  %.139.lcssa = phi i8 [ 0, %.preheader ], [ %i.eq, %._crit_edge61.loopexit.unr-lcssa ], [ %i.fa, %.epil.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !120
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge55, %._crit_edge61, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !334
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !336
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !39377
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !39377
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !338

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !118  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !334
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !336
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !38299
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !38299
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !338

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20
  br label %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !334
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !336
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #20, !inline_history !1225
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #20, !inline_history !1225
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit, !prof !338

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #20
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16LargeListBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #22
  ret void
}
end_hunk_3
begin_hunk_4_@_ZNK5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE4typeEv:bb.a
_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i
  store ptr %i.h, ptr %i.l, align 8, !tbaa !39429
  br label %_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i.i, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i.i
  store ptr %i.j, ptr %0, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.af, align 8, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !118 ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ai, align 8, !tbaa !334
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !336
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #20, !inline_history !39377
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #20, !inline_history !39377
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  br i1 %i.aw, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !338

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #20
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !118 ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.az, align 8, !tbaa !334
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !336
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #20, !inline_history !543
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #20, !inline_history !543
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  br i1 %i.bn, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !338

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
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
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.w
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bo, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15BaseListBuilderINS_13LargeListTypeEE12AppendValuesEPKlS4_lPKh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow15BaseListBuilderINS_13LargeListTypeEE12AppendValuesEPKllPKh(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef %2, i64 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39370 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b) ; 3 uses
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.i, align 8, !tbaa !689 ; 2 uses
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
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %.epil.init
  store i64 %i.f, ptr %i.l, align 1
  %i.m = load i64, ptr %i.i, align 8, !tbaa !689
  %i.n = add nsw i64 %i.m, 8
  store i64 %i.n, ptr %i.i, align 8, !tbaa !689
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.o = phi i64 [ %.pre, %.lr.ph.new ], [ %i.w, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  store i64 %i.f, ptr %i.q, align 1
  %i.r = load i64, ptr %i.i, align 8, !tbaa !689
  %i.s = add nsw i64 %i.r, 8                      ; 2 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !689
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.s
  store i64 %i.f, ptr %i.u, align 1
  %i.v = load i64, ptr %i.i, align 8, !tbaa !689
  %i.w = add nsw i64 %i.v, 8                      ; 3 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !689
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !39533
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !689
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d
  store i64 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8, !tbaa !689
  %i.g = add nsw i64 %i.f, 8
  store i64 %i.g, ptr %i.c, align 8, !tbaa !689
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.g, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.m, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118  ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !119
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  %i.x = load ptr, ptr %3, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38288
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38289
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1479") align 8 %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !334
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !336
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !543
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !543
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !338

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #20
  call void @_ZN5arrow18TypedBufferBuilderIlvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #20
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #20
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15BaseListBuilderINS_13LargeListTypeEE16AppendNextOffsetEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !479, !noalias !39534
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39370, !noalias !39534 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58, !noalias !39534
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noalias !39534
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(144) %i.e), !noalias !39534, !inline_history !39537
  %i.j = icmp eq i64 %i.i, 9223372036854775807
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit9.thread, !prof !338

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !39534
  store ptr @.str.22, ptr %i.b, align 8, !tbaa !1466, !noalias !39534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20, !noalias !39534
  store i64 9223372036854775806, ptr %i.c, align 8, !tbaa !479, !noalias !39534
  call void @_ZN5arrow6Status13CapacityErrorIJPKcRA33_S2_lRA17_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(33) @.str.23, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !39534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !39534
  %.pr = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.b, label %_ZN5arrow18TypedBufferBuilderIlvE6AppendEl.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !39370 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
end_hunk_4
begin_hunk_5_@_ZNK5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE4typeEv:bb.a
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.as, %bb.p ], [ %i.ar, %bb.o ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEE12AppendValuesEPKiS4_lPKh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %class.anon.1514, align 8           ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !483, !noalias !39608 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !58, !noalias !39608
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !39608
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !39608, !inline_history !688
  %i.i = add nsw i64 %i.h, %4                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit16.thread

_ZN5arrow6StatusD2Ev.exit16.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !58, !noalias !39608
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !39608
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %7, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.o = icmp eq ptr %5, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %4)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %5, ptr %i.a, align 8, !tbaa !1466
  %i.p = icmp eq i64 %4, 0
  br i1 %i.p, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !479
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !690
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !1467
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %i.v, align 8, !tbaa !1829
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.q, ptr %i.w, align 8, !tbaa !39476
  call void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %i.s, i64 noundef %i.u, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.x = load i64, ptr %i.t, align 8, !tbaa !690
  %i.y = add nsw i64 %i.x, %4
  store i64 %i.y, ptr %i.t, align 8, !tbaa !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !478
  %i.ab = add nsw i64 %i.aa, %4
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !478
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !796
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !752
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i
  %i.af = shl i64 %4, 2                           ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !689
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %2, i64 %i.af, i1 false)
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !689
  %i.am = add nsw i64 %i.al, %i.af
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !689
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !689
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %3, i64 %i.af, i1 false)
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !689
  %i.at = add nsw i64 %i.as, %i.af
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !689
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !39611
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.c, align 8, !tbaa !689 ; 2 uses
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
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %.epil.init
  store i32 0, ptr %i.g, align 1
  %i.h = load i64, ptr %i.c, align 8, !tbaa !689
  %i.i = add nsw i64 %i.h, 4
  store i64 %i.i, ptr %i.c, align 8, !tbaa !689
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.unr-lcssa, %.epil.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %.pre12 = load i64, ptr %i.k, align 8, !tbaa !689 ; 2 uses
  %xtraiter15 = and i64 %1, 1
  %i.l = icmp eq i64 %i.d, 0
  br i1 %i.l, label %.epil.preheader14, label %.lr.ph10.new

.lr.ph10.new:                                     ; preds = %.lr.ph10
  %unroll_iter20 = and i64 %1, 9223372036854775806
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.m = phi i64 [ %.pre, %.lr.ph.new ], [ %i.u, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.m
  store i32 0, ptr %i.o, align 1
  %i.p = load i64, ptr %i.c, align 8, !tbaa !689
  %i.q = add nsw i64 %i.p, 4                      ; 2 uses
  store i64 %i.q, ptr %i.c, align 8, !tbaa !689
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.q
  store i32 0, ptr %i.s, align 1
  %i.t = load i64, ptr %i.c, align 8, !tbaa !689
  %i.u = add nsw i64 %i.t, 4                      ; 3 uses
  store i64 %i.u, ptr %i.c, align 8, !tbaa !689
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph10.unr-lcssa, label %bb.b, !llvm.loop !39614

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod18.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod18.not, label %._crit_edge, label %.epil.preheader14

.epil.preheader14:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph10
  %.epil.init17 = phi i64 [ %.pre12, %.lr.ph10 ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.epil.init17
  store i32 0, ptr %i.w, align 1
  %i.x = load i64, ptr %i.k, align 8, !tbaa !689
  %i.y = add nsw i64 %i.x, 4
  store i64 %i.y, ptr %i.k, align 8, !tbaa !689
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader14, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph10.new
  %i.z = phi i64 [ %.pre12, %.lr.ph10.new ], [ %i.ah, %bb.c ]
  %niter21 = phi i64 [ 0, %.lr.ph10.new ], [ %niter21.next.1, %bb.c ]
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.z
  store i32 0, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !689
  %i.ad = add nsw i64 %i.ac, 4                    ; 2 uses
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !689
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ad
  store i32 0, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !689
  %i.ah = add nsw i64 %i.ag, 4                    ; 3 uses
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !689
  %niter21.next.1 = add i64 %niter21, 2           ; 2 uses
  %niter21.ncmp.1 = icmp eq i64 %niter21.next.1, %unroll_iter20
  br i1 %niter21.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !39615
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19BaseListViewBuilderINS_12ListViewTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !689
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  store i32 %i.a, ptr %i.f, align 1
  %i.g = load i64, ptr %i.d, align 8, !tbaa !689
  %i.h = add nsw i64 %i.g, 4
  store i64 %i.h, ptr %i.d, align 8, !tbaa !689
  %i.i = trunc i64 %2 to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !689
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  store i32 %i.i, ptr %i.n, align 1
  %i.o = load i64, ptr %i.l, align 8, !tbaa !689
  %i.p = add nsw i64 %i.o, 4
  store i64 %i.p, ptr %i.l, align 8, !tbaa !689
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.g, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.m, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118  ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !119
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  %i.x = load ptr, ptr %3, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38288
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38289
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1479") align 8 %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !334
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !336
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !543
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !543
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !338

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #20
  call void @_ZN5arrow18TypedBufferBuilderIivED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #20
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #20
  resume { ptr, i32 } %i.as
}

declare noundef ptr @_ZN5arrow19default_memory_poolEv() local_unnamed_addr #11
end_hunk_5
begin_hunk_6_@_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE6ResizeEl:bb.a
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !479
  %i.e = icmp sgt i64 %2, 2147483646
  br i1 %i.e, label %bb.b, label %bb.c, !prof !338

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr @.str.25, ptr %i.c, align 8, !tbaa !1466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 2147483646, ptr %i.d, align 8, !tbaa !479
  call void @_ZN5arrow6Status13CapacityErrorIJPKcRA43_S2_lRA6_S2_RlEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(43) @.str.20, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !479, !noalias !39616
  %i.f = icmp slt i64 %2, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !338

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status7InvalidIJRA46_KcRlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(46) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.3)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !478, !noalias !39616
  %i.i = icmp slt i64 %2, %i.h
  br i1 %i.i, label %bb.f, label %_ZN5arrow6StatusD2Ev.exit15.thread, !prof !338

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status7InvalidIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(2) @.str.3)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d, %bb.f
  %.pr = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = shl i64 %2, 2
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 noundef %i.l, i1 noundef zeroext true)
  %i.m = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit21, label %.critedge

_ZN5arrow6StatusD2Ev.exit21:                      ; preds = %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2)
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit21, %_ZN5arrow6StatusD2Ev.exit17, %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.a, align 8, !tbaa !683
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !334
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !336
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #20, !inline_history !1099
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #20, !inline_history !1099
  br label %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit, !prof !338

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #20
  br label %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit

_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39370 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(144) %i.u)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39370 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b)
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = trunc i64 %i.f to i32                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.j, align 8, !tbaa !689 ; 2 uses
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
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.epil.init
  store i32 %i.h, ptr %i.m, align 1
  %i.n = load i64, ptr %i.j, align 8, !tbaa !689
  %i.o = add nsw i64 %i.n, 4
  store i64 %i.o, ptr %i.j, align 8, !tbaa !689
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.p = phi i64 [ %.pre, %.lr.ph.new ], [ %i.x, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.p
  store i32 %i.h, ptr %i.r, align 1
  %i.s = load i64, ptr %i.j, align 8, !tbaa !689
  %i.t = add nsw i64 %i.s, 4                      ; 2 uses
  store i64 %i.t, ptr %i.j, align 8, !tbaa !689
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.t
  store i32 %i.h, ptr %i.v, align 1
  %i.w = load i64, ptr %i.j, align 8, !tbaa !689
  %i.x = add nsw i64 %i.w, 4                      ; 3 uses
  store i64 %i.x, ptr %i.j, align 8, !tbaa !689
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !39619
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !689
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  store i32 %i.a, ptr %i.f, align 1
  %i.g = load i64, ptr %i.d, align 8, !tbaa !689
  %i.h = add nsw i64 %i.g, 4
  store i64 %i.h, ptr %i.d, align 8, !tbaa !689
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_5FieldEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !39605
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #21, !noalias !39620 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !334
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !336
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN5arrow12ListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #22
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !118
  store ptr %i.d, ptr %0, align 8, !tbaa !39623
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39429 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.g, align 8, !tbaa !39430
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i3.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !39429
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #20, !inline_history !39624
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !39429
  br label %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12ListViewTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #20, !inline_history !39625
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !791  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !120
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12ListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.1479"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 41, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow12ListViewTypeE, i64 16), ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 2 uses
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !119
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
end_hunk_6
begin_hunk_7_@_ZNK5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE4typeEv:bb.a
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.as, %bb.p ], [ %i.ar, %bb.o ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEE12AppendValuesEPKlS4_lPKh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %class.anon.1514, align 8           ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !483, !noalias !39678 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !58, !noalias !39678
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !39678
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !39678, !inline_history !688
  %i.i = add nsw i64 %i.h, %4                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit16.thread

_ZN5arrow6StatusD2Ev.exit16.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !58, !noalias !39678
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !39678
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !688
  %.pr = load ptr, ptr %7, align 8, !tbaa !54     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.o = icmp eq ptr %5, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %4)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %5, ptr %i.a, align 8, !tbaa !1466
  %i.p = icmp eq i64 %4, 0
  br i1 %i.p, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !479
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !690
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !1467
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %i.v, align 8, !tbaa !1829
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.q, ptr %i.w, align 8, !tbaa !39476
  call void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %i.s, i64 noundef %i.u, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.x = load i64, ptr %i.t, align 8, !tbaa !690
  %i.y = add nsw i64 %i.x, %4
  store i64 %i.y, ptr %i.t, align 8, !tbaa !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !478
  %i.ab = add nsw i64 %i.aa, %4
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !478
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !796
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !752
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i
  %i.af = shl i64 %4, 3                           ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !689
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %2, i64 %i.af, i1 false)
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !689
  %i.am = add nsw i64 %i.al, %i.af
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !689
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !689
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %3, i64 %i.af, i1 false)
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !689
  %i.at = add nsw i64 %i.as, %i.af
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !689
  store ptr null, ptr %0, align 8, !tbaa !54, !alias.scope !39681
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.c, align 8, !tbaa !689 ; 2 uses
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
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %.epil.init
  store i64 0, ptr %i.g, align 1
  %i.h = load i64, ptr %i.c, align 8, !tbaa !689
  %i.i = add nsw i64 %i.h, 8
  store i64 %i.i, ptr %i.c, align 8, !tbaa !689
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.unr-lcssa, %.epil.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %.pre12 = load i64, ptr %i.k, align 8, !tbaa !689 ; 2 uses
  %xtraiter15 = and i64 %1, 1
  %i.l = icmp eq i64 %i.d, 0
  br i1 %i.l, label %.epil.preheader14, label %.lr.ph10.new

.lr.ph10.new:                                     ; preds = %.lr.ph10
  %unroll_iter20 = and i64 %1, 9223372036854775806
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.m = phi i64 [ %.pre, %.lr.ph.new ], [ %i.u, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.m
  store i64 0, ptr %i.o, align 1
  %i.p = load i64, ptr %i.c, align 8, !tbaa !689
  %i.q = add nsw i64 %i.p, 8                      ; 2 uses
  store i64 %i.q, ptr %i.c, align 8, !tbaa !689
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.q
  store i64 0, ptr %i.s, align 1
  %i.t = load i64, ptr %i.c, align 8, !tbaa !689
  %i.u = add nsw i64 %i.t, 8                      ; 3 uses
  store i64 %i.u, ptr %i.c, align 8, !tbaa !689
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph10.unr-lcssa, label %bb.b, !llvm.loop !39684

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod18.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod18.not, label %._crit_edge, label %.epil.preheader14

.epil.preheader14:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph10
  %.epil.init17 = phi i64 [ %.pre12, %.lr.ph10 ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.epil.init17
  store i64 0, ptr %i.w, align 1
  %i.x = load i64, ptr %i.k, align 8, !tbaa !689
  %i.y = add nsw i64 %i.x, 8
  store i64 %i.y, ptr %i.k, align 8, !tbaa !689
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader14, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph10.new
  %i.z = phi i64 [ %.pre12, %.lr.ph10.new ], [ %i.ah, %bb.c ]
  %niter21 = phi i64 [ 0, %.lr.ph10.new ], [ %niter21.next.1, %bb.c ]
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.z
  store i64 0, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !689
  %i.ad = add nsw i64 %i.ac, 8                    ; 2 uses
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !689
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ad
  store i64 0, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !689
  %i.ah = add nsw i64 %i.ag, 8                    ; 3 uses
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !689
  %niter21.next.1 = add i64 %niter21, 2           ; 2 uses
  %niter21.ncmp.1 = icmp eq i64 %niter21.next.1, %unroll_iter20
  br i1 %niter21.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !39685
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !689
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d
  store i64 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8, !tbaa !689
  %i.g = add nsw i64 %i.f, 8
  store i64 %i.g, ptr %i.c, align 8, !tbaa !689
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !689
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  store i64 %2, ptr %i.l, align 1
  %i.m = load i64, ptr %i.j, align 8, !tbaa !689
  %i.n = add nsw i64 %i.m, 8
  store i64 %i.n, ptr %i.j, align 8, !tbaa !689
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEC2EPNS_10MemoryPoolERKSt10shared_ptrINS_12ArrayBuilderEERKS5_INS_8DataTypeEEl(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.g, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.j, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %4, ptr %i.m, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118  ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !119
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  %i.x = load ptr, ptr %3, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38288
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38289
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1479") align 8 %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !334
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !336
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !543
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !543
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
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
  br i1 %i.ar, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !338

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZNSt12__shared_ptrIN5arrow12ArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #20
  call void @_ZN5arrow18TypedBufferBuilderIlvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #20
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #20
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19BaseListViewBuilderINS_17LargeListViewTypeEED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_7
begin_hunk_8_@_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE6ResizeEl:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !479
  %i.e = icmp eq i64 %2, 9223372036854775807
  br i1 %i.e, label %bb.b, label %bb.c, !prof !338

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr @.str.25, ptr %i.c, align 8, !tbaa !1466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 9223372036854775806, ptr %i.d, align 8, !tbaa !479
  call void @_ZN5arrow6Status13CapacityErrorIJPKcRA43_S2_lRA6_S2_RlEEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(43) @.str.20, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !479, !noalias !39686
  %i.f = icmp slt i64 %2, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !338

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status7InvalidIJRA46_KcRlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(46) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.3)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !478, !noalias !39686
  %i.i = icmp slt i64 %2, %i.h
  br i1 %i.i, label %bb.f, label %_ZN5arrow6StatusD2Ev.exit15.thread, !prof !338

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status7InvalidIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(2) @.str.3)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d, %bb.f
  %.pr = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.pr, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = shl i64 %2, 3
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 noundef %i.l, i1 noundef zeroext true)
  %i.m = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit21, label %.critedge

_ZN5arrow6StatusD2Ev.exit21:                      ; preds = %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2)
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit21, %_ZN5arrow6StatusD2Ev.exit17, %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.a, align 8, !tbaa !683
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !334
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !336
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #20, !inline_history !1232
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #20, !inline_history !1232
  br label %_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit, !prof !338

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #20
  br label %_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit

_ZN5arrow18TypedBufferBuilderIlvE5ResetEv.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39370 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(144) %i.u)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE27UnsafeAppendEmptyDimensionsEl(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39370 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %i.b) ; 3 uses
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.i, align 8, !tbaa !689 ; 2 uses
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
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %.epil.init
  store i64 %i.f, ptr %i.l, align 1
  %i.m = load i64, ptr %i.i, align 8, !tbaa !689
  %i.n = add nsw i64 %i.m, 8
  store i64 %i.n, ptr %i.i, align 8, !tbaa !689
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.o = phi i64 [ %.pre, %.lr.ph.new ], [ %i.w, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  store i64 %i.f, ptr %i.q, align 1
  %i.r = load i64, ptr %i.i, align 8, !tbaa !689
  %i.s = add nsw i64 %i.r, 8                      ; 2 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !689
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.s
  store i64 %i.f, ptr %i.u, align 1
  %i.v = load i64, ptr %i.i, align 8, !tbaa !689
  %i.w = add nsw i64 %i.v, 8                      ; 3 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !689
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !39689
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE22UnsafeAppendDimensionsEll(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !689
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d
  store i64 %1, ptr %i.e, align 1
  %i.f = load i64, ptr %i.c, align 8, !tbaa !689
  %i.g = add nsw i64 %i.f, 8
  store i64 %i.g, ptr %i.c, align 8, !tbaa !689
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_5FieldEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !39675
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #21, !noalias !39690 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !334
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !336
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN5arrow17LargeListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #22
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !118
  store ptr %i.d, ptr %0, align 8, !tbaa !39693
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39429 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.g, align 8, !tbaa !39430
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i3.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !39429
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #20, !inline_history !39694
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !39429
  br label %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow17LargeListViewTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #20, !inline_history !39695
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !791  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !120
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17LargeListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.1479"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 42, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow17LargeListViewTypeE, i64 16), ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 2 uses
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !119
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !120
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

end_hunk_8
