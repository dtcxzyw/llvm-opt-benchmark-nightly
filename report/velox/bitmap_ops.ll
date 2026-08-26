Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/bitmap_ops?download=true
inline.NumInlined: 402
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE1EEEvPKhlllPh:bb.a
  br i1 %i.jb, label %._crit_edge, label %.lr.ph129

._crit_edge:                                      ; preds = %.lr.ph129.prol.loopexit, %.lr.ph129, %middle.block, %vec.epilog.middle.block, %bb.ag
  %i.jc = getelementptr inbounds i8, ptr %i.hv, i64 %i.ib
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !8
  %i.je = getelementptr inbounds i8, ptr %i.hx, i64 %i.ib ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !8
  %i.jg = trunc i32 %notmask to i8                ; 2 uses
  %i.jh = and i8 %i.jf, %i.jg
  %.demorgan = or i8 %i.jd, %i.jg
  %i.ji = xor i8 %.demorgan, -1
  %i.jj = or i8 %i.jh, %i.ji
  store i8 %i.jj, ptr %i.je, align 1, !tbaa !8
  br label %.loopexit

.lr.ph129:                                        ; preds = %.lr.ph129.prol.loopexit, %.lr.ph129
  %.0128 = phi i64 [ %i.kd, %.lr.ph129 ], [ %.0128.unr, %.lr.ph129.prol.loopexit ] ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.0128
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !8
  %i.jm = xor i8 %i.jl, -1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.0128
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !8
  %i.jo = add nuw nsw i64 %.0128, 1               ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !8
  %i.jr = xor i8 %i.jq, -1
  %i.js = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jo
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !8
  %i.jt = add nuw nsw i64 %.0128, 2               ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !8
  %i.jw = xor i8 %i.jv, -1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jt
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !8
  %i.jy = add nuw nsw i64 %.0128, 3               ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !8
  %i.kb = xor i8 %i.ka, -1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.jy
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !8
  %i.kd = add nuw nsw i64 %.0128, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.kd, %i.ib
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph129, !llvm.loop !36

.loopexit:                                        ; preds = %_ZN5arrow8internal16BitmapWordWriterImLb1EE19PutNextTrailingByteEhi.exit, %.preheader, %bb.af, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal13ReverseBitmapEPKhllPhl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = sdiv i64 %1, 8
  %i.b = srem i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.d = sdiv i64 %4, 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph.preheader.i, label %_ZN5arrow8internal19ReverseBlockOffsetsEPKhlllPh.exit

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
  %i.ah = load i8, ptr %i.c, align 1, !tbaa !8
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
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = trunc i32 %.047.in.i to i8
  %i.au = xor i8 %i.at, -1
  %i.av = and i8 %i.as, %i.au
  %i.aw = zext i8 %rev.i.i54.i to i32
  %i.ax = shl nuw nsw i32 %i.aw, %i.v
  %i.ay = and i32 %i.ax, %.047.in.i
  %i.az = trunc i32 %i.ay to i8
  %i.ba = or i8 %i.av, %i.az
  store i8 %i.ba, ptr %i.ar, align 1, !tbaa !8
  %i.bb = zext nneg i8 %i.t to i64                ; 2 uses
  %i.bc = add nsw i64 %.05155.i, %i.bb
  %i.bd = sub nsw i64 %.04858.i, %i.bb            ; 2 uses
  %.not53.i = icmp uge i8 %i.t, %i.q
  %i.be = sext i1 %.not53.i to i64
  %spec.select.i = add nsw i64 %.05056.i, %i.be
  %i.bf = add nuw nsw i64 %.04957.i, 1
  %i.bg = icmp sgt i64 %i.bd, 0
  br i1 %i.bg, label %.lr.ph.i, label %_ZN5arrow8internal19ReverseBlockOffsetsEPKhlllPh.exit, !llvm.loop !22

_ZN5arrow8internal19ReverseBlockOffsetsEPKhlllPh.exit: ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal10CopyBitmapEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, i64 noundef %4, ptr noundef %1)
  %i.a = load ptr, ptr %5, align 8, !tbaa !37
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47, !noalias !52 ; 5 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !47, !alias.scope !52
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53, !noalias !52 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !53, !noalias !52
  store ptr %i.g, ptr %i.e, align 8, !tbaa !53, !alias.scope !52
  store ptr null, ptr %i.c, align 8, !tbaa !47, !noalias !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !54, !range !63, !noundef !64
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !63
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !26 ; 2 uses
  invoke void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE0EEEvPKhlllPh(ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 0, ptr noundef %i.q)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %7 = and i64 %4, 7
  %.not = icmp eq i64 %7, 0
  %8 = select i1 %.not, i64 0, i64 8
  %i.r = add i64 %8, %4
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %i.t = icmp slt i64 %4, %i.s
  br i1 %i.t, label %.lr.ph, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.lr.ph, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.u, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.v, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.w

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.026 = phi i64 [ %i.ae, %.lr.ph ], [ %4, %bb.d ] ; 3 uses
  %i.x = srem i64 %.026, 8
  %i.y = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL15kFlippedBitmaskE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = sdiv i64 %.026, 8
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = and i8 %i.ac, %i.z
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !8
  %i.ae = add nsw i64 %.026, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.s
  br i1 %exitcond.not, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.lr.ph, !llvm.loop !65

bb.f:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  %i.af = load ptr, ptr %5, align 8, !tbaa !37
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aj, align 8, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !68
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21, !inline_history !71
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21, !inline_history !71
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !72
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.k ], [ %i.aw, %bb.l ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.m, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !20

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %bb.g
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !37
  %.not.i.i25 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i25, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !73

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal12InvertBitmapEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE1EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE1EEENS_6ResultISt10shared_ptrINS_6BufferEEEEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, i64 noundef %4, ptr noundef %1)
  %i.a = load ptr, ptr %5, align 8, !tbaa !37
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47, !noalias !80 ; 5 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !47, !alias.scope !80
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53, !noalias !80 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !53, !noalias !80
  store ptr %i.g, ptr %i.e, align 8, !tbaa !53, !alias.scope !80
  store ptr null, ptr %i.c, align 8, !tbaa !47, !noalias !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !54, !range !63, !noundef !64
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !63
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 %i.m, i1 false, !prof !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %i.n, ptr %i.p, ptr null, !prof !26 ; 2 uses
  invoke void @_ZN5arrow8internal14TransferBitmapILNS0_12TransferModeE1EEEvPKhlllPh(ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 0, ptr noundef %i.q)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %7 = and i64 %4, 7
  %.not = icmp eq i64 %7, 0
  %8 = select i1 %.not, i64 0, i64 8
  %i.r = add i64 %8, %4
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %i.t = icmp slt i64 %4, %i.s
  br i1 %i.t, label %.lr.ph, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.lr.ph, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.u, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.v, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.w

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.026 = phi i64 [ %i.ae, %.lr.ph ], [ %4, %bb.d ] ; 3 uses
  %i.x = srem i64 %.026, 8
  %i.y = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL15kFlippedBitmaskE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = sdiv i64 %.026, 8
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = and i8 %i.ac, %i.z
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !8
  %i.ae = add nsw i64 %.026, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.s
  br i1 %exitcond.not, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.lr.ph, !llvm.loop !81

bb.f:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  %i.af = load ptr, ptr %5, align 8, !tbaa !37
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.g, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aj, align 8, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !68
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21, !inline_history !71
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21, !inline_history !71
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !72
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.k ], [ %i.aw, %bb.l ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.m, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !20

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #21
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %bb.g
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !37
  %.not.i.i25 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i25, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !73

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal13ReverseBitmapEPNS_10MemoryPoolEPKhll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Result", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, i64 noundef %4, ptr noundef %1)
  %i.a = load ptr, ptr %5, align 8, !tbaa !37
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !82, !noalias !83
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !47, !noalias !83 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.g = load i8, ptr %i.f, align 1, !tbaa !54, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i8, ptr %i.i, align 8, !range !63
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 %i.k, i1 false, !prof !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !26
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
  %i.as = load i8, ptr %i.r, align 1, !tbaa !8
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

end_hunk_0
