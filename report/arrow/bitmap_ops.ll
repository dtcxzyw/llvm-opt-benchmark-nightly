inline.NumInlined: 424
inline.NumDeleted: 159
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh:bb.a
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !7
  %i.kf = add nuw nsw i64 %.0123, 2               ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !7
  %i.ki = xor i8 %i.kh, -1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.kf
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !7
  %i.kk = add nuw nsw i64 %.0123, 3               ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !7
  %i.kn = xor i8 %i.km, -1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.kk
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !7
  %i.kp = add nuw nsw i64 %.0123, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.kp, %i.io
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph124, !llvm.loop !32

.loopexit:                                        ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader, %bb.af, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal13ReverseBitmapEPKhllPhl(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = sdiv i64 %1, 8
  %i.b = srem i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.d = sdiv i64 %4, 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph.preheader.i, label %_ZN5arrow8internal12_GLOBAL__N_119ReverseBlockOffsetsEPKhlllPh.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = add nsw i64 %i.b, %2                     ; 2 uses
  %i.h = ashr i64 %i.g, 3
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.g, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %i.m = add nsw i64 %i.i, %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.04858.i = phi i64 [ %i.bd, %bb.g ], [ %2, %.lr.ph.preheader.i ] ; 4 uses
  %.04957.i = phi i64 [ %i.bf, %bb.g ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.05056.i = phi i64 [ %spec.select.i, %bb.g ], [ %i.m, %.lr.ph.preheader.i ] ; 3 uses
  %.05155.i = phi i64 [ %i.bc, %bb.g ], [ %4, %.lr.ph.preheader.i ] ; 2 uses
  %i.n = add nsw i64 %.04858.i, %1
  %i.o = srem i64 %i.n, 8                         ; 2 uses
  %i.p = trunc nsw i64 %i.o to i8
  %.not.i = icmp eq i64 %i.o, 0
  %i.q = select i1 %.not.i, i8 8, i8 %i.p         ; 2 uses
  %i.r = srem i64 %.05155.i, 8                    ; 2 uses
  %i.s = trunc nsw i64 %i.r to i8
  %i.t = sub nsw i8 8, %i.s                       ; 3 uses
  %i.u = zext nneg i8 %i.t to i32
  %i.v = sub nsw i32 8, %i.u                      ; 2 uses
  %i.w = shl nuw nsw i32 255, %i.v                ; 3 uses
  %i.x = icmp samesign ult i64 %.04858.i, 9
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = add nsw i64 %i.r, %.04858.i              ; 2 uses
  %i.z = icmp slt i64 %i.y, 8
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = trunc nsw i64 %i.y to i32
  %i.ab = sub nsw i32 8, %i.aa                    ; 2 uses
  %i.ac = shl i32 %i.w, %i.ab
  %i.ad = and i32 %i.ac, 255
  %i.ae = lshr i32 %i.ad, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.047.in.i = phi i32 [ %i.ae, %bb.c ], [ %i.w, %bb.b ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.af = icmp eq i64 %.05056.i, 0
  %i.ag = zext nneg i8 %i.q to i32
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i8, ptr %i.c, align 1, !tbaa !7
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = or disjoint i32 %i.aj, %i.ai
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.c, i64 %.05056.i
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i16, ptr %i.am, align 1
  %i.ao = zext i16 %i.an to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i = phi i32 [ %i.ao, %bb.f ], [ %i.ak, %bb.e ]
  %i.ap = lshr i32 %.sink.i, %i.ag
  %i.aq = trunc i32 %i.ap to i8
  %rev.i.i54.i = tail call noundef i8 @llvm.bitreverse.i8(i8 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04957.i ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !7
  %i.at = trunc i32 %.047.in.i to i8
  %i.au = xor i8 %i.at, -1
  %i.av = and i8 %i.as, %i.au
  %i.aw = zext i8 %rev.i.i54.i to i32
  %i.ax = shl nuw nsw i32 %i.aw, %i.v
  %i.ay = and i32 %i.ax, %.047.in.i
  %i.az = trunc i32 %i.ay to i8
  %i.ba = or i8 %i.av, %i.az
  store i8 %i.ba, ptr %i.ar, align 1, !tbaa !7
  %i.bb = zext nneg i8 %i.t to i64                ; 2 uses
  %i.bc = add nsw i64 %.05155.i, %i.bb
  %i.bd = sub nsw i64 %.04858.i, %i.bb            ; 2 uses
  %.not53.i = icmp uge i8 %i.t, %i.q
  %i.be = sext i1 %.not53.i to i64
  %spec.select.i = add nsw i64 %.05056.i, %i.be
  %i.bf = add nuw nsw i64 %.04957.i, 1
  %i.bg = icmp sgt i64 %i.bd, 0
  br i1 %i.bg, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_119ReverseBlockOffsetsEPKhlllPh.exit, !llvm.loop !33

_ZN5arrow8internal12_GLOBAL__N_119ReverseBlockOffsetsEPKhlllPh.exit: ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal10CopyBitmapEPNS_10MemoryPoolEPKhlll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.a = add nsw i64 %5, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !34
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, i64 noundef %i.a, ptr noundef %1), !noalias !34
  %i.b = load ptr, ptr %6, align 8, !tbaa !37, !noalias !34
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #23
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !41, !noalias !42
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !47, !noalias !42 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !34
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52, !range !61, !noalias !34, !noundef !62
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !61, !noalias !34
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !34
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !20
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE0EEEvPKhlllPh(ptr noundef readonly %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %i.q), !noalias !34
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !34
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !41, !alias.scope !34
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %6, align 8, !tbaa !37, !noalias !34 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63, !noalias !34 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !66
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !69
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !69
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !34
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !37, !noalias !34 ; 2 uses
  %.not.i.i17.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i17.i, label %_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  %i.ak = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !71, !range !61, !noundef !62
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  br label %_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit

_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !34
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal12InvertBitmapEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !79
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, i64 noundef %4, ptr noundef %1), !noalias !79
  %i.a = load ptr, ptr %5, align 8, !tbaa !37, !noalias !79
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !41, !noalias !82
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !47, !noalias !82 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !79
  %i.h = load i8, ptr %i.g, align 1, !tbaa !52, !range !61, !noalias !79, !noundef !62
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !61, !noalias !79
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.i, i1 %i.l, i1 false, !prof !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !79
  %i.p = select i1 %i.m, ptr %i.o, ptr null, !prof !20
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_114TransferBitmapILNS1_12TransferModeE1EEEvPKhlllPh(ptr noundef readonly %2, i64 noundef %3, i64 noundef %4, i64 noundef 0, ptr noundef %i.p), !noalias !79
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !79
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !41, !alias.scope !79
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.q = load ptr, ptr %5, align 8, !tbaa !37, !noalias !79 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63, !noalias !79 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.u, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !66
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #23, !inline_history !87
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #23, !inline_history !87
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.h ], [ %i.ah, %bb.i ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !37, !noalias !79 ; 2 uses
  %.not.i.i17.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i17.i, label %_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE1EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  %i.aj = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.q, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !71, !range !61, !noundef !62
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE1EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  br label %_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE1EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit

_ZN5arrow8internal14TransferBitmapILNS0_12_GLOBAL__N_112TransferModeE1EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !79
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal13ReverseBitmapEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Result", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, i64 noundef %4, ptr noundef %1)
  %i.a = load ptr, ptr %5, align 8, !tbaa !37
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !41, !noalias !88
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !47, !noalias !88 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.g = load i8, ptr %i.f, align 1, !tbaa !52, !range !61, !noundef !62
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i8, ptr %i.i, align 8, !range !61
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 %i.k, i1 false, !prof !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !20
  %i.p = sdiv i64 %3, 8
  %i.q = srem i64 %3, 8
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.p ; 2 uses
  %i.s = icmp sgt i64 %4, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.t = add nsw i64 %i.q, %4                     ; 2 uses
  %i.u = ashr i64 %i.t, 3
  %i.v = add nsw i64 %i.u, -1
  %i.w = and i64 %i.t, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i64
  %i.z = add nsw i64 %i.v, %i.y
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.04858.i = phi i64 [ %i.bo, %bb.i ], [ %4, %.lr.ph.preheader.i ] ; 4 uses
  %.04957.i = phi i64 [ %i.bq, %bb.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.05056.i = phi i64 [ %spec.select.i, %bb.i ], [ %i.z, %.lr.ph.preheader.i ] ; 3 uses
  %.05155.i = phi i64 [ %i.bn, %bb.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.aa = add nsw i64 %.04858.i, %3
  %i.ab = srem i64 %i.aa, 8                       ; 2 uses
  %i.ac = trunc nsw i64 %i.ab to i8
  %.not.i = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %.not.i, i8 8, i8 %i.ac       ; 2 uses
  %i.ae = and i64 %.05155.i, 7                    ; 3 uses
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %i.ag = sub nuw nsw i8 8, %i.af                 ; 2 uses
  %i.ah = trunc nuw nsw i64 %i.ae to i32          ; 2 uses
  %i.ai = shl nuw nsw i32 255, %i.ah              ; 3 uses
  %i.aj = icmp samesign ult i64 %.04858.i, 9
  br i1 %i.aj, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.ak = add nuw nsw i64 %i.ae, %.04858.i        ; 2 uses
  %i.al = icmp samesign ult i64 %i.ak, 8
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = trunc nuw nsw i64 %i.ak to i32
  %i.an = sub nuw nsw i32 8, %i.am
  %i.ao = lshr i32 255, %i.an
  %i.ap = and i32 %i.ao, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i
  %.047.in.i = phi i32 [ %i.ap, %bb.e ], [ %i.ai, %bb.d ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %i.aq = icmp eq i64 %.05056.i, 0
  %i.ar = zext nneg i8 %i.ad to i32
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = load i8, ptr %i.r, align 1, !tbaa !7
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = or disjoint i32 %i.au, %i.at
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aw = getelementptr i8, ptr %i.r, i64 %.05056.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = zext i16 %i.ay to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.i = phi i32 [ %i.az, %bb.h ], [ %i.av, %bb.g ]
  %i.ba = lshr i32 %.sink.i, %i.ar
  %i.bb = trunc i32 %i.ba to i8
  %rev.i.i54.i = call noundef i8 @llvm.bitreverse.i8(i8 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 %.04957.i ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !7
  %i.be = trunc i32 %.047.in.i to i8
  %i.bf = xor i8 %i.be, -1
  %i.bg = and i8 %i.bd, %i.bf
  %i.bh = zext i8 %rev.i.i54.i to i32
  %i.bi = shl nuw nsw i32 %i.bh, %i.ah
  %i.bj = and i32 %i.bi, %.047.in.i
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = or i8 %i.bg, %i.bk
  store i8 %i.bl, ptr %i.bc, align 1, !tbaa !7
  %i.bm = zext nneg i8 %i.ag to i64               ; 2 uses
  %i.bn = add nuw nsw i64 %.05155.i, %i.bm
  %i.bo = sub nsw i64 %.04858.i, %i.bm            ; 2 uses
  %.not53.i = icmp uge i8 %i.ag, %i.ad
  %i.bp = sext i1 %.not53.i to i64
  %spec.select.i = add nsw i64 %.05056.i, %i.bp
  %i.bq = add nuw nsw i64 %.04957.i, 1
  %i.br = icmp sgt i64 %i.bo, 0
  br i1 %i.br, label %.lr.ph.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !llvm.loop !33

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.d, ptr %i.bs, align 8, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  %i.bt = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.k, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !63 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bx, align 8, !tbaa !64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !66
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #23, !inline_history !93
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #23, !inline_history !93
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ca, %bb.o ], [ %i.ck, %bb.p ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.q, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !15

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %bb.k
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !37   ; 2 uses
  %.not.i.i14 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i14, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %bb.j
  %i.cm = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.bt, %bb.j ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !71, !range !61, !noundef !62
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

declare void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, i64 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !37
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !37
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !15

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !94     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !7
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !94     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !7
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.m = load ptr, ptr %3, align 8, !tbaa !94     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !7
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #25
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrow8internal12BitmapEqualsEPKhlS2_ll(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = or i64 %3, %1
  %i.b = and i64 %i.a, 7
  %or.cond = icmp eq i64 %i.b, 0
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = ashr exact i64 %1, 3
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = ashr exact i64 %3, 3
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  %i.g = sdiv i64 %4, 8                           ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %i.d, ptr %i.f, i64 %i.g)
  %i.h = icmp eq i32 %bcmp, 0
  br i1 %i.h, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = shl nsw i64 %i.g, 3                      ; 2 uses
  %.not38101.not = icmp slt i64 %i.i, %4
  br i1 %.not38101.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.030102 = phi i64 [ %i.z, %.lr.ph ], [ %i.i, %bb.c ] ; 3 uses
  %i.j = add nsw i64 %.030102, %1                 ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7
  %i.n = trunc i64 %i.j to i8
  %i.o = and i8 %i.n, 7
  %i.p = lshr i8 %i.m, %i.o
  %i.q = add nsw i64 %.030102, %3                 ; 2 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !7
  %i.u = trunc i64 %i.q to i8
  %i.v = and i8 %i.u, 7
  %i.w = lshr i8 %i.t, %i.v
  %i.x = xor i8 %i.w, %i.p
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = add i64 %.030102, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %4
  %or.cond131 = or i1 %exitcond.not, %i.y
  br i1 %or.cond131, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !95

bb.d:                                             ; preds = %bb.a
  %i.aa = srem i64 %1, 8                          ; 5 uses
  %i.ab = sdiv i64 %1, 8
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab ; 4 uses
  %i.ad = lshr i64 %4, 6
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 1) ; 2 uses
  %i.ae = shl nuw i64 %spec.select.i, 6
  %i.af = sub i64 %4, %i.ae                       ; 2 uses
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %sext.i = shl i64 %i.af, 32
  %i.ah = ashr i64 %sext.i, 35
  %i.ai = and i64 %4, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i64
  %i.al = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %i.am = trunc nsw i64 %i.al to i32
  %.not.i = icmp ult i64 %4, 128
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not7.i = icmp eq i64 %4, 0
  br i1 %.not7.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal9BitmapAndEPNS_10MemoryPoolEPKhlS4_lll:bb.a
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i64                    ; 2 uses
  %i.al = add nsw i64 %i.ah, %i.ak                ; 9 uses
  %i.am = sdiv i64 %i.ab, 8                       ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am ; 7 uses
  %i.ao = sdiv i64 %i.ac, 8                       ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %4, i64 %i.ao ; 7 uses
  %i.aq = sdiv i64 %i.ad, 8                       ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.q, i64 %i.aq ; 7 uses
  %i.as = icmp sgt i64 %i.al, 0
  br i1 %i.as, label %iter.check, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.al, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.at = add i64 %i.aq, %i.r                     ; 2 uses
  %i.au = add i64 %i.am, %i.b
  %i.av = sub i64 %i.at, %i.au
  %diff.check = icmp ult i64 %i.av, 32
  %i.aw = add i64 %i.ao, %i.a
  %i.ax = sub i64 %i.at, %i.aw
  %diff.check11 = icmp ult i64 %i.ax, 32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 28
  %n.vec = and i64 %i.al, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <16 x i8>, ptr %i.ay, align 1, !tbaa !7, !noalias !98
  %wide.load13 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !7, !noalias !98
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load14 = load <16 x i8>, ptr %i.az, align 1, !tbaa !7, !noalias !98
  %wide.load15 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !7, !noalias !98
  %i.bc = and <16 x i8> %wide.load14, %wide.load
  %i.bd = and <16 x i8> %wide.load15, %wide.load13
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !7, !noalias !98
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !7, !noalias !98
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 %index18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !7, !noalias !98
  %wide.load20 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !7, !noalias !98
  %i.bj = and <4 x i8> %wide.load20, %wide.load19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index18
  store <4 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !7, !noalias !98
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.al, %n.vec17
  br i1 %cmp.n22, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ] ; 3 uses
  %i.bm = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7, !noalias !98
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !7, !noalias !98
  %i.br = and i8 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7, !noalias !98
  %i.bt = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !108

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.prol ]
  %i.bu = sub i64 %.016.i.i.i.ph, %i.bm
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !7, !noalias !98
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !7, !noalias !98
  %i.ca = and i8 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !7, !noalias !98
  %i.cc = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cc
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !7, !noalias !98
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !7, !noalias !98
  %i.ch = and i8 %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cc
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !7, !noalias !98
  %i.cj = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cj
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !7, !noalias !98
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !7, !noalias !98
  %i.co = and i8 %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cj
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !7, !noalias !98
  %i.cq = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cq
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !7, !noalias !98
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !7, !noalias !98
  %i.cv = and i8 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cq
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !7, !noalias !98
  %i.cx = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cx, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !109

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !98
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !98
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cy, align 8, !tbaa !41, !alias.scope !98
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.cz = load ptr, ptr %8, align 8, !tbaa !37, !noalias !98 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !63, !noalias !98 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.dd, align 8, !tbaa !64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !66
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23, !inline_history !110
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23, !inline_history !110
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !98
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.n ], [ %i.dq, %bb.o ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !37, !noalias !98 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.ds = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.cz, %bb.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !71, !range !61, !noundef !62
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #23
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !98
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %6 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond.i = and i1 %i.f, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_andEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %i.j, %3
  %i.n = add nsw i64 %i.j, %5
  %i.o = sub nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.p, %i.o                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 7 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 7 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.aa, %i.c                     ; 2 uses
  %i.ae = add i64 %i.w, %i.b
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ult i64 %i.af, 32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ad, %i.ag
  %diff.check9 = icmp ult i64 %i.ah, 32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7
  %wide.load11 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load12 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !7
  %wide.load13 = load <16 x i8>, ptr %i.al, align 1, !tbaa !7
  %i.am = and <16 x i8> %wide.load12, %wide.load
  %i.an = and <16 x i8> %wide.load13, %wide.load11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %i.am, ptr %i.ao, align 1, !tbaa !7
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %index16
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !7
  %wide.load18 = load <4 x i8>, ptr %i.as, align 1, !tbaa !7
  %i.at = and <4 x i8> %wide.load18, %wide.load17
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index16
  store <4 x i8> %i.at, ptr %i.au, align 1, !tbaa !7
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !112

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.v, %n.vec15
  br i1 %cmp.n20, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %i.aw = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !7
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.bb = and i8 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !7
  %i.bd = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !113

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.prol ]
  %i.be = sub i64 %.016.i.i.ph, %i.aw
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_andEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bk = and i8 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !7
  %i.bm = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bm
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal8BitmapOrEPNS_10MemoryPoolEPKhlS4_lll:bb.a
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i64                    ; 2 uses
  %i.al = add nsw i64 %i.ah, %i.ak                ; 9 uses
  %i.am = sdiv i64 %i.ab, 8                       ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am ; 7 uses
  %i.ao = sdiv i64 %i.ac, 8                       ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %4, i64 %i.ao ; 7 uses
  %i.aq = sdiv i64 %i.ad, 8                       ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.q, i64 %i.aq ; 7 uses
  %i.as = icmp sgt i64 %i.al, 0
  br i1 %i.as, label %iter.check, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.al, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.at = add i64 %i.aq, %i.r                     ; 2 uses
  %i.au = add i64 %i.am, %i.b
  %i.av = sub i64 %i.at, %i.au
  %diff.check = icmp ult i64 %i.av, 32
  %i.aw = add i64 %i.ao, %i.a
  %i.ax = sub i64 %i.at, %i.aw
  %diff.check11 = icmp ult i64 %i.ax, 32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 28
  %n.vec = and i64 %i.al, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <16 x i8>, ptr %i.ay, align 1, !tbaa !7, !noalias !115
  %wide.load13 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !7, !noalias !115
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load14 = load <16 x i8>, ptr %i.az, align 1, !tbaa !7, !noalias !115
  %wide.load15 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !7, !noalias !115
  %i.bc = or <16 x i8> %wide.load14, %wide.load
  %i.bd = or <16 x i8> %wide.load15, %wide.load13
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !7, !noalias !115
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !7, !noalias !115
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 %index18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !7, !noalias !115
  %wide.load20 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !7, !noalias !115
  %i.bj = or <4 x i8> %wide.load20, %wide.load19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index18
  store <4 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !7, !noalias !115
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.al, %n.vec17
  br i1 %cmp.n22, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ] ; 3 uses
  %i.bm = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7, !noalias !115
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !7, !noalias !115
  %i.br = or i8 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7, !noalias !115
  %i.bt = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !125

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.prol ]
  %i.bu = sub i64 %.016.i.i.i.ph, %i.bm
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !7, !noalias !115
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !7, !noalias !115
  %i.ca = or i8 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !7, !noalias !115
  %i.cc = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cc
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !7, !noalias !115
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !7, !noalias !115
  %i.ch = or i8 %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cc
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !7, !noalias !115
  %i.cj = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cj
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !7, !noalias !115
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !7, !noalias !115
  %i.co = or i8 %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cj
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !7, !noalias !115
  %i.cq = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cq
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !7, !noalias !115
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !7, !noalias !115
  %i.cv = or i8 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cq
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !7, !noalias !115
  %i.cx = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cx, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !126

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !115
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !115
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cy, align 8, !tbaa !41, !alias.scope !115
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.cz = load ptr, ptr %8, align 8, !tbaa !37, !noalias !115 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !63, !noalias !115 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.dd, align 8, !tbaa !64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !66
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23, !inline_history !127
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23, !inline_history !127
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !115
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.n ], [ %i.dq, %bb.o ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !37, !noalias !115 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.ds = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.cz, %bb.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !71, !range !61, !noundef !62
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #23
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !115
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal8BitmapOrEPKhlS2_lllPh(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %6 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond.i = and i1 %i.f, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt6bit_orEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %i.j, %3
  %i.n = add nsw i64 %i.j, %5
  %i.o = sub nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.p, %i.o                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 7 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 7 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.aa, %i.c                     ; 2 uses
  %i.ae = add i64 %i.w, %i.b
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ult i64 %i.af, 32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ad, %i.ag
  %diff.check9 = icmp ult i64 %i.ah, 32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7
  %wide.load11 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load12 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !7
  %wide.load13 = load <16 x i8>, ptr %i.al, align 1, !tbaa !7
  %i.am = or <16 x i8> %wide.load12, %wide.load
  %i.an = or <16 x i8> %wide.load13, %wide.load11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %i.am, ptr %i.ao, align 1, !tbaa !7
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %index16
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !7
  %wide.load18 = load <4 x i8>, ptr %i.as, align 1, !tbaa !7
  %i.at = or <4 x i8> %wide.load18, %wide.load17
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index16
  store <4 x i8> %i.at, ptr %i.au, align 1, !tbaa !7
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.v, %n.vec15
  br i1 %cmp.n20, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %i.aw = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !7
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.bb = or i8 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !7
  %i.bd = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !130

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.prol ]
  %i.be = sub i64 %.016.i.i.ph, %i.aw
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt6bit_orEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bk = or i8 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !7
  %i.bm = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bm
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal9BitmapXorEPNS_10MemoryPoolEPKhlS4_lll:bb.a
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i64                    ; 2 uses
  %i.al = add nsw i64 %i.ah, %i.ak                ; 9 uses
  %i.am = sdiv i64 %i.ab, 8                       ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am ; 7 uses
  %i.ao = sdiv i64 %i.ac, 8                       ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %4, i64 %i.ao ; 7 uses
  %i.aq = sdiv i64 %i.ad, 8                       ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.q, i64 %i.aq ; 7 uses
  %i.as = icmp sgt i64 %i.al, 0
  br i1 %i.as, label %iter.check, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.al, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.at = add i64 %i.aq, %i.r                     ; 2 uses
  %i.au = add i64 %i.am, %i.b
  %i.av = sub i64 %i.at, %i.au
  %diff.check = icmp ult i64 %i.av, 32
  %i.aw = add i64 %i.ao, %i.a
  %i.ax = sub i64 %i.at, %i.aw
  %diff.check11 = icmp ult i64 %i.ax, 32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 28
  %n.vec = and i64 %i.al, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <16 x i8>, ptr %i.ay, align 1, !tbaa !7, !noalias !132
  %wide.load13 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !7, !noalias !132
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load14 = load <16 x i8>, ptr %i.az, align 1, !tbaa !7, !noalias !132
  %wide.load15 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !7, !noalias !132
  %i.bc = xor <16 x i8> %wide.load14, %wide.load
  %i.bd = xor <16 x i8> %wide.load15, %wide.load13
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !7, !noalias !132
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !7, !noalias !132
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.al, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 %index18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !7, !noalias !132
  %wide.load20 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !7, !noalias !132
  %i.bj = xor <4 x i8> %wide.load20, %wide.load19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index18
  store <4 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !7, !noalias !132
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.al, %n.vec17
  br i1 %cmp.n22, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ] ; 3 uses
  %i.bm = add nsw i64 %i.ah, %i.ak                ; 2 uses
  %xtraiter = and i64 %i.bm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.prol ], [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i.prol
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i.prol
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7, !noalias !132
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !7, !noalias !132
  %i.br = xor i8 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i.prol
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7, !noalias !132
  %i.bt = add nuw nsw i64 %.016.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !142

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.016.i.i.i.unr = phi i64 [ %.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.prol ]
  %i.bu = sub i64 %.016.i.i.i.ph, %i.bm
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 %.016.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.016.i.i.i
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !7, !noalias !132
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !7, !noalias !132
  %i.ca = xor i8 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.016.i.i.i
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !7, !noalias !132
  %i.cc = add nuw nsw i64 %.016.i.i.i, 1          ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cc
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !7, !noalias !132
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !7, !noalias !132
  %i.ch = xor i8 %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cc
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !7, !noalias !132
  %i.cj = add nuw nsw i64 %.016.i.i.i, 2          ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cj
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !7, !noalias !132
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !7, !noalias !132
  %i.co = xor i8 %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cj
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !7, !noalias !132
  %i.cq = add nuw nsw i64 %.016.i.i.i, 3          ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cq
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !7, !noalias !132
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !7, !noalias !132
  %i.cv = xor i8 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cq
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !7, !noalias !132
  %i.cx = add nuw nsw i64 %.016.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cx, %i.al
  br i1 %exitcond.not.i.i.i.3, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !143

bb.h:                                             ; preds = %bb.c
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, ptr noundef %i.s, i64 noundef %7, i64 noundef %6), !noalias !132
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.g, %bb.f
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !132
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.g, ptr %i.cy, align 8, !tbaa !41, !alias.scope !132
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.cz = load ptr, ptr %8, align 8, !tbaa !37, !noalias !132 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !63, !noalias !132 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.dd, align 8, !tbaa !64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !66
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23, !inline_history !144
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23, !inline_history !144
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !132
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.n ], [ %i.dq, %bb.o ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.l, %bb.j
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !37, !noalias !132 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.i
  %i.ds = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.cz, %bb.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !71, !range !61, !noundef !62
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #23
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !132
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal9BitmapXorEPKhlS2_lllPh(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %6 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond.i = and i1 %i.f, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %i.j, %3
  %i.n = add nsw i64 %i.j, %5
  %i.o = sub nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.p, %i.o                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 7 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 7 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.aa, %i.c                     ; 2 uses
  %i.ae = add i64 %i.w, %i.b
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ult i64 %i.af, 32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ad, %i.ag
  %diff.check9 = icmp ult i64 %i.ah, 32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7
  %wide.load11 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load12 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !7
  %wide.load13 = load <16 x i8>, ptr %i.al, align 1, !tbaa !7
  %i.am = xor <16 x i8> %wide.load12, %wide.load
  %i.an = xor <16 x i8> %wide.load13, %wide.load11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %i.am, ptr %i.ao, align 1, !tbaa !7
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %index16
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !7
  %wide.load18 = load <4 x i8>, ptr %i.as, align 1, !tbaa !7
  %i.at = xor <4 x i8> %wide.load18, %wide.load17
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index16
  store <4 x i8> %i.at, ptr %i.au, align 1, !tbaa !7
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !146

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.v, %n.vec15
  br i1 %cmp.n20, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %i.aw = add nsw i64 %i.r, %i.u                  ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.prol ], [ %.016.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i.prol
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i.prol
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !7
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.bb = xor i8 %i.ba, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i.prol
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !7
  %i.bd = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !147

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.prol ]
  %i.be = sub i64 %.016.i.i.ph, %i.aw
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.i
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bk = xor i8 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !7
  %i.bm = add nuw nsw i64 %.016.i.i, 1            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bm
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !7
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !7
  %i.br = xor i8 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bm
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7
  %i.bt = add nuw nsw i64 %.016.i.i, 2            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bt
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !7
  %i.by = xor i8 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bt
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !7
  %i.ca = add nuw nsw i64 %.016.i.i, 3            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ca
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !7
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !7
  %i.cf = xor i8 %i.ce, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ca
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !7
  %i.ch = add nuw nsw i64 %.016.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ch, %i.v
  br i1 %exitcond.not.i.i.3, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit, label %.lr.ph.i.i, !llvm.loop !148

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpISt7bit_xorEEvPKhlS5_lPhll(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpISt7bit_xorEEvPKhlS5_lllPh.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal12BitmapAndNotEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !149
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !149
  %i.b = load ptr, ptr %8, align 8, !tbaa !37, !noalias !149
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !41, !noalias !152
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !47, !noalias !152 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !149
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52, !range !61, !noalias !149, !noundef !62
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !61, !noalias !149
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !149
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !20
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !149
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !149
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !41, !alias.scope !149
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !37, !noalias !149 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63, !noalias !149 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !66
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !157
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !157
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !149
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !37, !noalias !149 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  %i.ak = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !71, !range !61, !noundef !62
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #23
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal12BitmapAndNotEPKhlS2_lllPh(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_8AndNotOpEEEvPKhlS5_lllPh(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef captures(none) %6) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %6 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond = and i1 %i.f, %i.h
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %3, %i.j
  %i.n = add nsw i64 %5, %i.j
  %i.o = sub nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.o, %i.p                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 5 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 5 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 5 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.aa, %i.c                     ; 2 uses
  %i.ae = add i64 %i.w, %i.b
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ult i64 %i.af, 32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ad, %i.ag
  %diff.check39 = icmp ult i64 %i.ah, 32
  %conflict.rdx = or i1 %diff.check, %diff.check39
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7
  %wide.load41 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load42 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !7
  %wide.load43 = load <16 x i8>, ptr %i.al, align 1, !tbaa !7
  %i.am = xor <16 x i8> %wide.load42, splat (i8 -1)
  %i.an = xor <16 x i8> %wide.load43, splat (i8 -1)
  %i.ao = and <16 x i8> %wide.load, %i.am
  %i.ap = and <16 x i8> %wide.load41, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !7
  store <16 x i8> %i.ap, ptr %i.ar, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 %index46
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 %index46
  %wide.load47 = load <4 x i8>, ptr %i.at, align 1, !tbaa !7
  %wide.load48 = load <4 x i8>, ptr %i.au, align 1, !tbaa !7
  %i.av = xor <4 x i8> %wide.load48, splat (i8 -1)
  %i.aw = and <4 x i8> %wide.load47, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index46
  store <4 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !7
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.v, %n.vec45
  br i1 %cmp.n50, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 6 uses
  %i.az = add nsw i64 %i.r, %i.u                  ; 2 uses
  %.neg = or disjoint i64 %.016.i.ph, 1
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.ph
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !7
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !7
  %i.be = xor i8 %i.bd, -1
  %i.bf = and i8 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.ph
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !7
  %i.bh = or disjoint i64 %.016.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %i.bi = icmp eq i64 %i.az, %.neg
  br i1 %i.bi, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.by, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !7
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !7
  %i.bn = xor i8 %i.bm, -1
  %i.bo = and i8 %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !7
  %i.bq = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bq
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !7
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !7
  %i.bv = xor i8 %i.bu, -1
  %i.bw = and i8 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bq
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !7
  %i.by = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.by, %i.v
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !160

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit

_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_8AndNotOpEEEvPKhlS5_lPhll.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11BitmapOrNotEPNS_10MemoryPoolEPKhlS4_lll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.arrow::Result", align 8     ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.a = add nsw i64 %7, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !161
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.a, ptr noundef %1), !noalias !161
  %i.b = load ptr, ptr %8, align 8, !tbaa !37, !noalias !161
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  br label %bb.c

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !41, !noalias !164
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !47, !noalias !164 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !161
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52, !range !61, !noalias !161, !noundef !62
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !61, !noalias !161
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !161
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !20
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr noundef readonly %2, i64 noundef %3, ptr noundef readonly %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %i.q), !noalias !161
  store ptr null, ptr %0, align 8, !tbaa !37, !alias.scope !161
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !41, !alias.scope !161
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !37, !noalias !161 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63, !noalias !161 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !66
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !169
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23, !inline_history !169
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !161
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !15

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !37, !noalias !161 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i18.i, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !70

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %bb.c
  %i.ak = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.r, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !71, !range !61, !noundef !62
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #23
  br label %_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit

_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhlSC_lll.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !161
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal11BitmapOrNotEPKhlS2_lllPh(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_18BitmapOpINS0_7OrNotOpEEEvPKhlS5_lllPh(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef captures(none) %6) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %6 to i64
  %i.d = srem i64 %5, 8                           ; 3 uses
  %i.e = srem i64 %1, 8
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = srem i64 %3, 8
  %i.h = icmp eq i64 %i.d, %i.g
  %or.cond = and i1 %i.f, %i.h
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.i, 7                          ; 7 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp sgt i64 %4, %i.j
  br i1 %i.k, label %bb.e, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, %1                     ; 2 uses
  %i.m = add nsw i64 %3, %i.j
  %i.n = add nsw i64 %5, %i.j
  %i.o = sub nsw i64 %4, %i.j
  %i.p = srem i64 %i.l, 8
  %i.q = add nsw i64 %i.o, %i.p                   ; 2 uses
  %i.r = ashr i64 %i.q, 3                         ; 2 uses
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i64                      ; 2 uses
  %i.v = add nsw i64 %i.r, %i.u                   ; 9 uses
  %i.w = sdiv i64 %i.l, 8                         ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 5 uses
  %i.y = sdiv i64 %i.m, 8                         ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 5 uses
  %i.aa = sdiv i64 %i.n, 8                        ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 5 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %iter.check, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add i64 %i.aa, %i.c                     ; 2 uses
  %i.ae = add i64 %i.w, %i.b
  %i.af = sub i64 %i.ad, %i.ae
  %diff.check = icmp ult i64 %i.af, 32
  %i.ag = add i64 %i.y, %i.a
  %i.ah = sub i64 %i.ad, %i.ag
  %diff.check39 = icmp ult i64 %i.ah, 32
  %conflict.rdx = or i1 %diff.check, %diff.check39
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7
  %wide.load41 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load42 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !7
  %wide.load43 = load <16 x i8>, ptr %i.al, align 1, !tbaa !7
  %i.am = xor <16 x i8> %wide.load42, splat (i8 -1)
  %i.an = xor <16 x i8> %wide.load43, splat (i8 -1)
  %i.ao = or <16 x i8> %wide.load, %i.am
  %i.ap = or <16 x i8> %wide.load41, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !7
  store <16 x i8> %i.ap, ptr %i.ar, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.v, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 %index46
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 %index46
  %wide.load47 = load <4 x i8>, ptr %i.at, align 1, !tbaa !7
  %wide.load48 = load <4 x i8>, ptr %i.au, align 1, !tbaa !7
  %i.av = xor <4 x i8> %wide.load48, splat (i8 -1)
  %i.aw = or <4 x i8> %wide.load47, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index46
  store <4 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !7
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !171

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.v, %n.vec45
  br i1 %cmp.n50, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ] ; 6 uses
  %i.az = add nsw i64 %i.r, %i.u                  ; 2 uses
  %.neg = or disjoint i64 %.016.i.ph, 1
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i.ph
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !7
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !7
  %i.be = xor i8 %i.bd, -1
  %i.bf = or i8 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i.ph
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !7
  %i.bh = or disjoint i64 %.016.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.016.i.unr = phi i64 [ %.016.i.ph, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %i.bi = icmp eq i64 %i.az, %.neg
  br i1 %i.bi, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.by, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 %.016.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 %.016.i
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !7
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !7
  %i.bn = xor i8 %i.bm, -1
  %i.bo = or i8 %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.016.i
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !7
  %i.bq = add nuw nsw i64 %.016.i, 1              ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bq
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !7
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !7
  %i.bv = xor i8 %i.bu, -1
  %i.bw = or i8 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bq
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !7
  %i.by = add nuw nsw i64 %.016.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.by, %i.v
  br i1 %exitcond.not.i.1, label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit, label %.lr.ph.i, !llvm.loop !172

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117UnalignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %6, i64 noundef %5, i64 noundef %4)
  br label %_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit

_ZN5arrow8internal12_GLOBAL__N_115AlignedBitmapOpINS0_7OrNotOpEEEvPKhlS5_lPhll.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !173
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !173
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !66
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !174
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !174
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !15

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !7
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #24
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #24
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !175  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !175  ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 3 uses
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %i.l = icmp ugt i64 %i.e, %i.k                  ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !94    ; 4 uses
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %.pre, %i.m                  ; 2 uses
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12: ; preds = %bb.c, %bb.d
  %i.p = load i64, ptr %i.m, align 8
  %i.q = select i1 %i.n, i64 15, i64 %i.p
  %.not = icmp ugt i64 %i.e, %i.q
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !176
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !94   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !175  ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8, !tbaa !94
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !7
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !175
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !175
  store ptr %i.u, ptr %i.r, align 8, !tbaa !94
  store i64 0, ptr %i.ab, align 8, !tbaa !175
  store i8 0, ptr %i.u, align 8, !tbaa !7
  br label %bb.o

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  br i1 %i.h, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  br i1 %i.l, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %.pre, align 1, !tbaa !7
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.e, ptr %i.a, align 8, !tbaa !175
  %i.aj = load ptr, ptr %1, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.e
  store i8 0, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !176
  %i.am = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !175 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.am, ptr %0, align 8, !tbaa !94
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !7
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !7
  %.pre15 = load i64, ptr %i.a, align 8, !tbaa !175
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = phi i64 [ %i.ao, %bb.n ], [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !175
  store ptr %i.g, ptr %1, align 8, !tbaa !94
  store i64 0, ptr %i.a, align 8, !tbaa !175
  store i8 0, ptr %i.g, align 8, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_3
