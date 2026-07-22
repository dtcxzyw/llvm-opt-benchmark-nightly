inline.NumInlined: 10352
inline.NumDeleted: 3952
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN5arrow8internalL17ComputeNullBitmapINS0_15BinaryMemoTableINS_13BinaryBuilderEEEEENS_6StatusEPNS_10MemoryPoolERKT_lPlPSt10shared_ptrINS_6BufferEE:bb.a
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #32
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %.not = icmp eq i32 %i.h, -1
  %.not24 = icmp sgt i64 %3, %i.i
  %or.cond = or i1 %.not, %.not24
  br i1 %or.cond, label %bb.z, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = sub nsw i64 %i.i, %3
  store i64 1, ptr %4, align 8, !tbaa !484
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN5arrow8internal15BitmapAllButOneEPNS_10MemoryPoolEllb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.406") align 8 %6, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.aa, i1 noundef zeroext true)
  %i.ab = load ptr, ptr %6, align 8, !tbaa !137
  %i.ac = icmp eq ptr %i.ab, null                 ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.i, !prof !140

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !137
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %i.ad

bb.k:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !72, !noalias !1774
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !82  ; 8 uses
  store <2 x ptr> %i.af, ptr %5, align 8, !tbaa !72
  %.not.i.i.i.i26 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i26, label %_ZN5arrow6StatusC2ERKS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ah, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !79
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #32, !inline_history !1773
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #32, !inline_history !1773
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.n:                                             ; preds = %bb.l
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i27 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28

bb.p:                                             ; preds = %bb.n
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i29 = phi i32 [ %i.ak, %bb.o ], [ %i.au, %bb.p ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i29, 1
  br i1 %i.av, label %bb.q, label %_ZN5arrow6StatusC2ERKS0_.exit, !prof !37

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #32
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28, %bb.q, %bb.i
  %i.aw = load ptr, ptr %6, align 8, !tbaa !137   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.r, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !140

bb.r:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !82 ; 8 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i36, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ba, align 8, !tbaa !77
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !79
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !80
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #32, !inline_history !1288
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #32, !inline_history !1288
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.v ], [ %i.bn, %bb.w ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.x, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !37

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.t, %bb.r
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !137  ; 2 uses
  %.not.i.i37 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i37, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !278

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bp = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.aw, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !141, !range !147, !noundef !148
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %i.ac, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !137, !alias.scope !1779
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %bb.z
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1782, !nonnull !148, !align !250
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1630
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1784, !nonnull !148, !align !1785
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1786, !nonnull !148, !align !250 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1631 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 3 uses
  %i.l = sub nsw i32 %i.k, %i.e                   ; 6 uses
  %i.m = sext i32 %i.l to i64                     ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.n, ptr %i.i, align 8, !tbaa !1631
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !1784, !nonnull !148, !align !1785
  store i32 %i.k, ptr %i.o, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1787, !nonnull !148, !align !250
  %.val = load ptr, ptr %i.q, align 8, !tbaa !1615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1582, !noalias !1788 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  %sext.i.i = shl nsw i64 %i.m, 24
  %i.t = icmp slt i32 %i.l, 17
  br i1 %i.t, label %bb.b, label %bb.h, !prof !140

bb.b:                                             ; preds = %bb.a
  %i.u = icmp ult i32 %i.l, 9
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %i.l, 4
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, %i.e
  br i1 %i.w, label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.g, align 1, !tbaa !40, !noalias !1797
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 16
  %i.aa = lshr i64 %i.m, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !40, !noalias !1797
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 8
  %i.af = add nuw nsw i64 %i.m, 4294967295
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40, !noalias !1797
  %i.aj = zext i8 %i.ai to i64
  %.masked33.i.i.i.i = or disjoint i64 %i.z, %sext.i.i
  %.masked.i.i.i.i = or disjoint i64 %.masked33.i.i.i.i, %i.ae
  %i.ak = or disjoint i64 %.masked.i.i.i.i, %i.aj
  %i.al = mul i64 %i.ak, -7046029288634856825
  %i.am = tail call noundef i64 @llvm.bswap.i64(i64 %i.al)
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ap = load i32, ptr %i.ao, align 1, !noalias !1797
  %i.aq = load i32, ptr %i.g, align 1, !noalias !1797
  %i.ar = zext i32 %i.ap to i64
  %i.as = mul i64 %i.ar, -7046029288634856825
  %i.at = zext i32 %i.aq to i64
  %i.au = mul i64 %i.at, -4417276706812531889
  %i.av = xor i64 %i.au, %i.as
  %i.aw = tail call i64 @llvm.bswap.i64(i64 %i.av)
  %i.ax = xor i64 %i.aw, %i.m
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.g:                                             ; preds = %bb.b
  %i.ay = and i64 %i.m, 4294967295                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = load i64, ptr %i.ba, align 1, !noalias !1797
  %i.bc = load i64, ptr %i.g, align 1, !noalias !1797
  %i.bd = mul i64 %i.bb, -7046029288634856825
  %i.be = mul i64 %i.bc, -4417276706812531889
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.bswap.i64(i64 %i.bf)
  %i.bh = xor i64 %i.bg, %i.ay
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.bi = tail call fastcc noundef i64 @_ZL33XXH_INLINE_XXH3_64bits_withSecretPKvmS0_m(ptr noundef captures(none) %i.g, i64 noundef %i.m) #37
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.1.i.i.i.i = phi i64 [ %i.bi, %bb.h ], [ %i.bh, %bb.g ], [ %i.am, %bb.e ], [ %i.ax, %bb.f ]
  %.1.i.fr.i.i.i = freeze i64 %.1.i.i.i.i         ; 2 uses
  %i.bj = icmp eq i64 %.1.i.fr.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.bj, i64 42, i64 %.1.i.fr.i.i.i
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i: ; preds = %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i, %bb.d
  %i.bk = phi i64 [ %spec.select.i.i.i, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ 1, %bb.d ] ; 4 uses
  %.in6.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bl = load ptr, ptr %.in6.i.i.i, align 8, !tbaa !1674, !noalias !1797
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bm = load i64, ptr %.in.i.i.i, align 8, !tbaa !1669, !noalias !1797
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 336
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  %i.br = load ptr, ptr %i.bn, align 8, !noalias !1797
  %i.bs = load i64, ptr %i.bo, align 8, !noalias !1797
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = load i64, ptr %i.bp, align 8, !noalias !1797
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = load ptr, ptr %i.bq, align 8, !noalias !1797
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %i.cp, %bb.m ]
  %.0.in.in.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %.0.i.i.i.i.i.i, %bb.m ]
  %storemerge.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bm ; 2 uses
  %.0.in.i.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i.i, 5
  %.0.i.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %storemerge.i.i.i.i.i.i ; 4 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1798, !noalias !1797 ; 2 uses
  %i.bz = icmp eq i64 %i.by, %i.bk
  br i1 %i.bz, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1801, !noalias !1797
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3, !noalias !1797 ; 3 uses
  %i.cf = icmp eq i64 %i.bt, %i.cc
  br i1 %i.cf, label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !1797
  br label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i

_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ch, %bb.k ], [ %i.bv, %bb.j ] ; 2 uses
  %storemerge.i.i.i.i.i.i.i.i.i.i = sub nsw i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.ce ; 2 uses
  %i.ci = sext i32 %i.ce to i64
  %i.cj = getelementptr inbounds i8, ptr %i.bw, i64 %i.ci
  %i.ck = sext i32 %storemerge.i.i.i.i.i.i.i.i.i.i to i64
  %i.cl = icmp eq i32 %storemerge.i.i.i.i.i.i.i.i.i.i, %i.l
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i
  %i.cm = icmp eq i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.ce
  br i1 %i.cm, label %_ZN5arrow6StatusD2Ev.exit42.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.cj, ptr %i.g, i64 %i.ck), !noalias !1797
  %i.cn = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cn, label %_ZN5arrow6StatusD2Ev.exit42.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, %bb.i
  %i.co = icmp eq i64 %i.by, 0
  %i.cp = add i64 %.0.i.i.i.i.i.i, %storemerge.i.i.i.i.i.i
  br i1 %i.co, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.i, !llvm.loop !1802

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.m
  %i.cq = load ptr, ptr %i.s, align 8, !tbaa !80, !noalias !1797
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !1797
  %i.ct = tail call noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(356) %i.s), !noalias !1797, !inline_history !1803
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !1797
  %i.cu = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(256) %i.cu, ptr noundef %i.g, i32 noundef %i.l), !noalias !1797
  %i.cv = load ptr, ptr %2, align 8, !tbaa !137, !noalias !1797 ; 2 uses
  store ptr %i.cv, ptr %0, align 8, !tbaa !137, !alias.scope !1797
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !1797
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN5arrow6StatusD2Ev.exit35.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10BinaryTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit35.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !1797
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !1798, !noalias !1804
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %i.ct, ptr %i.cy, align 8, !tbaa !3, !noalias !1804
  %i.cz = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !1670, !noalias !1804
  %i.db = add i64 %i.da, 1                        ; 2 uses
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !1670, !noalias !1804
  %i.dc = shl i64 %i.db, 1
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !1668, !noalias !1804 ; 2 uses
  %.not.i36.i.i.i = icmp ult i64 %i.dc, %i.dd
  br i1 %.not.i36.i.i.i, label %_ZN5arrow6StatusD2Ev.exit38.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit38.i.i.i, !prof !140

_ZN5arrow6StatusD2Ev.exit38.thread.i.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit35.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !1797
  br label %_ZN5arrow6StatusD2Ev.exit42.i.i.i

_ZN5arrow6StatusD2Ev.exit38.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit35.i.i.i
  %i.de = shl i64 %i.dd, 2
  call void @_ZN5arrow8internal9HashTableINS0_15BinaryMemoTableINS_13BinaryBuilderEE7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.cx, i64 noundef %i.de), !noalias !1797
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !137, !noalias !1797 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !137, !alias.scope !1797
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !1797
  %i.df = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.df, label %_ZN5arrow6StatusD2Ev.exit42.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10BinaryTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit42.i.i.i:                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.l, %_ZN5arrow6StatusD2Ev.exit38.i.i.i, %_ZN5arrow6StatusD2Ev.exit38.thread.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !137, !alias.scope !1807
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10BinaryTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10BinaryTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit38.i.i.i, %_ZN5arrow6StatusD2Ev.exit42.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1810, !nonnull !148, !align !250 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1631 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.d, ptr %i.b, align 8, !tbaa !1631
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZNK5arrow8internal15BinaryMemoTableINS_13BinaryBuilderEE11VisitValuesIZNS0_16DictionaryTraitsINS_14BinaryViewTypeEvE22GetDictionaryArrayDataEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEERKS3_lEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEviOT_:bb.a
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(356) %0)
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next, %i.bv
  br i1 %i.bw, label %bb.b, label %._crit_edge, !llvm.loop !2229
}

declare void @_ZN5arrow17BinaryViewBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(272), ptr noundef) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17BinaryViewBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BinaryViewBuilderE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2225 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2224 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow15ResizableBufferEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow15ResizableBufferEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow15ResizableBufferEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow15ResizableBufferEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !79
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #32, !inline_history !2230
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #32, !inline_history !2230
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow15ResizableBufferEEEvPT_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow15ResizableBufferEEEvPT_.exit.i.i.i.i, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #32
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow15ResizableBufferEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow15ResizableBufferEEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow15ResizableBufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2231

_ZSt8_DestroyIPSt10shared_ptrIN5arrow15ResizableBufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow15ResizableBufferEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !2225
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow15ResizableBufferEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow15ResizableBufferEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow15ResizableBufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.w = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow15ResizableBufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow8internal17StringHeapBuilderD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow15ResizableBufferEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2232
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #34
  br label %_ZN5arrow8internal17StringHeapBuilderD2Ev.exit

_ZN5arrow8internal17StringHeapBuilderD2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow15ResizableBufferEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !82 ; 8 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1, label %_ZN5arrow18TypedBufferBuilderINS_14BinaryViewType6c_typeEvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow8internal17StringHeapBuilderD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !77
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !79
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #32, !inline_history !2233
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #32, !inline_history !2233
  br label %_ZN5arrow18TypedBufferBuilderINS_14BinaryViewType6c_typeEvED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZN5arrow18TypedBufferBuilderINS_14BinaryViewType6c_typeEvED2Ev.exit, !prof !37

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #32
  br label %_ZN5arrow18TypedBufferBuilderINS_14BinaryViewType6c_typeEvED2Ev.exit

_ZN5arrow18TypedBufferBuilderINS_14BinaryViewType6c_typeEvED2Ev.exit: ; preds = %_ZN5arrow8internal17StringHeapBuilderD2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #32
  ret void
}

declare { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !2234, !nonnull !148, !align !250 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2236, !nonnull !148, !align !250
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2166
  %i.e = getelementptr inbounds [16 x i8], ptr %i.d, i64 %2 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 9 uses
  %i.g = icmp slt i32 %i.f, 13
  br i1 %i.g, label %bb.b, label %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit

_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2237, !nonnull !148, !align !250
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2168
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1081 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1083, !range !147, !noundef !148
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %i.r, ptr %i.t, ptr null, !prof !140
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x ; 3 uses
  %i.z = zext nneg i32 %i.f to i64                ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1582, !noalias !2238 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  %i.ac = icmp samesign ult i32 %i.f, 17
  br i1 %i.ac, label %.thread, label %bb.g, !prof !2247

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 9 uses
  %i.ae = sext i32 %i.f to i64                    ; 6 uses
  %.val4 = load ptr, ptr %i.a, align 8, !tbaa !2153
  %i.af = getelementptr inbounds nuw i8, ptr %.val4, i64 104
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1582, !noalias !2248 ; 4 uses
  %sext.i.i5 = shl nsw i64 %i.ae, 24
  %i.ah = icmp ult i32 %i.f, 9
  br i1 %i.ah, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp samesign ult i32 %i.f, 4
  br i1 %i.ai, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp eq i32 %i.f, 0
  br i1 %i.aj, label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %i.ad, align 4, !tbaa !40, !noalias !2250
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 16
  %i.an = lshr i64 %i.ae, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !40, !noalias !2250
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 8
  %i.as = add nuw nsw i64 %i.ae, 4294967295
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !40, !noalias !2250
  %i.aw = zext i8 %i.av to i64
  %.masked33.i.i.i.i = or disjoint i64 %i.am, %sext.i.i5
  %.masked.i.i.i.i = or disjoint i64 %.masked33.i.i.i.i, %i.ar
  %i.ax = or disjoint i64 %.masked.i.i.i.i, %i.aw
  %i.ay = mul i64 %i.ax, -7046029288634856825
  %i.az = tail call noundef i64 @llvm.bswap.i64(i64 %i.ay)
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 1, !noalias !2250
  %i.bd = load i32, ptr %i.ad, align 4, !noalias !2250
  %i.be = zext i32 %i.bc to i64
  %i.bf = mul i64 %i.be, -7046029288634856825
  %i.bg = zext i32 %i.bd to i64
  %i.bh = mul i64 %i.bg, -4417276706812531889
  %i.bi = xor i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.bswap.i64(i64 %i.bi)
  %i.bk = xor i64 %i.bj, %i.ae
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

.thread:                                          ; preds = %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit, %bb.b
  %i.bl = phi ptr [ %i.ad, %bb.b ], [ %i.y, %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit ] ; 3 uses
  %i.bm = phi i64 [ %i.ae, %bb.b ], [ %i.z, %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit ]
  %i.bn = phi ptr [ %i.ag, %bb.b ], [ %i.ab, %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit ]
  %i.bo = and i64 %i.bm, 4294967295               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %i.br = load i64, ptr %i.bq, align 1, !noalias !2250
  %i.bs = load i64, ptr %i.bl, align 1, !noalias !2250
  %i.bt = mul i64 %i.br, -7046029288634856825
  %i.bu = mul i64 %i.bs, -4417276706812531889
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.bswap.i64(i64 %i.bv)
  %i.bx = xor i64 %i.bw, %i.bo
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.g:                                             ; preds = %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit
  %i.by = tail call fastcc noundef i64 @_ZL33XXH_INLINE_XXH3_64bits_withSecretPKvmS0_m(ptr noundef captures(none) %i.y, i64 noundef %i.z) #37
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i: ; preds = %bb.g, %.thread, %bb.f, %bb.e
  %i.bz = phi ptr [ %i.ab, %bb.g ], [ %i.bn, %.thread ], [ %i.ag, %bb.e ], [ %i.ag, %bb.f ]
  %i.ca = phi ptr [ %i.y, %bb.g ], [ %i.bl, %.thread ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ]
  %.1.i.i.i.i = phi i64 [ %i.by, %bb.g ], [ %i.bx, %.thread ], [ %i.az, %bb.e ], [ %i.bk, %bb.f ]
  %.1.i.fr.i.i.i = freeze i64 %.1.i.i.i.i         ; 2 uses
  %i.cb = icmp eq i64 %.1.i.fr.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.cb, i64 42, i64 %.1.i.fr.i.i.i
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i: ; preds = %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i, %bb.d
  %i.cc = phi ptr [ %i.bz, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ %i.ag, %bb.d ] ; 11 uses
  %i.cd = phi ptr [ %i.ca, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ce = phi i64 [ %spec.select.i.i.i, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ 1, %bb.d ] ; 4 uses
  %.in6.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cf = load ptr, ptr %.in6.i.i.i, align 8, !tbaa !1674, !noalias !2250
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %.in.i.i.i, align 8, !tbaa !1669, !noalias !2250
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 264
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 336
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 320
  %i.cl = load ptr, ptr %i.ch, align 8, !noalias !2250
  %i.cm = load i64, ptr %i.ci, align 8, !noalias !2250
  %i.cn = add nsw i64 %i.cm, -1
  %i.co = load i64, ptr %i.cj, align 8, !noalias !2250
  %i.cp = trunc i64 %i.co to i32
  %i.cq = load ptr, ptr %i.ck, align 8, !noalias !2250
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ %i.ce, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %i.dj, %bb.l ]
  %.0.in.in.i.i.i.i.i.i = phi i64 [ %i.ce, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %.0.i.i.i.i.i.i, %bb.l ]
  %storemerge.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.cg ; 2 uses
  %.0.in.i.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i.i, 5
  %.0.i.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i.i, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %storemerge.i.i.i.i.i.i ; 4 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1798, !noalias !2250 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, %i.ce
  br i1 %i.ct, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !1801, !noalias !2250
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !2250 ; 3 uses
  %i.cz = icmp eq i64 %i.cn, %i.cw
  br i1 %i.cz, label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr i8, ptr %i.cx, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3, !noalias !2250
  br label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i

_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.db, %bb.j ], [ %i.cp, %bb.i ] ; 2 uses
  %storemerge.i.i.i.i.i.i.i.i.i.i = sub nsw i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.cy ; 2 uses
  %i.dc = sext i32 %i.cy to i64
  %i.dd = getelementptr inbounds i8, ptr %i.cq, i64 %i.dc
  %i.de = sext i32 %storemerge.i.i.i.i.i.i.i.i.i.i to i64
  %i.df = icmp eq i32 %storemerge.i.i.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i
  %i.dg = icmp eq i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.cy
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit42.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.dd, ptr %i.cd, i64 %i.de), !noalias !2250
  %i.dh = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dh, label %_ZN5arrow6StatusD2Ev.exit42.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, %bb.h
  %i.di = icmp eq i64 %i.cs, 0
  %i.dj = add i64 %.0.i.i.i.i.i.i, %storemerge.i.i.i.i.i.i
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.h, !llvm.loop !1802

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.l
  %i.dk = load ptr, ptr %i.cc, align 8, !tbaa !80, !noalias !2250
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !2250
  %i.dn = tail call noundef i32 %i.dm(ptr noundef nonnull align 8 dereferenceable(356) %i.cc), !noalias !2250, !inline_history !2251
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !2250
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(256) %i.do, ptr noundef %i.cd, i32 noundef %i.f), !noalias !2250
  %i.dp = load ptr, ptr %3, align 8, !tbaa !137, !noalias !2250 ; 2 uses
  store ptr %i.dp, ptr %0, align 8, !tbaa !137, !alias.scope !2250
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !2250
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZN5arrow6StatusD2Ev.exit35.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit35.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !2250
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store i64 %i.ce, ptr %i.cr, align 8, !tbaa !1798, !noalias !2252
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.dn, ptr %i.ds, align 8, !tbaa !3, !noalias !2252
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1670, !noalias !2252
  %i.dv = add i64 %i.du, 1                        ; 2 uses
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !1670, !noalias !2252
  %i.dw = shl i64 %i.dv, 1
  %i.dx = load i64, ptr %i.dr, align 8, !tbaa !1668, !noalias !2252 ; 2 uses
  %.not.i36.i.i.i = icmp ult i64 %i.dw, %i.dx
  br i1 %.not.i36.i.i.i, label %_ZN5arrow6StatusD2Ev.exit38.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit38.i.i.i, !prof !140

_ZN5arrow6StatusD2Ev.exit38.thread.i.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit35.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !2250
  br label %_ZN5arrow6StatusD2Ev.exit42.i.i.i

_ZN5arrow6StatusD2Ev.exit38.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit35.i.i.i
  %i.dy = shl i64 %i.dx, 2
  call void @_ZN5arrow8internal9HashTableINS0_15BinaryMemoTableINS_13BinaryBuilderEE7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.dr, i64 noundef %i.dy), !noalias !2250
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !137, !noalias !2250 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !137, !alias.scope !2250
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !2250
  %i.dz = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.dz, label %_ZN5arrow6StatusD2Ev.exit42.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit42.i.i.i:                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN5arrow6StatusD2Ev.exit38.i.i.i, %_ZN5arrow6StatusD2Ev.exit38.thread.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !137, !alias.scope !2255
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit38.i.i.i, %_ZN5arrow6StatusD2Ev.exit42.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EEE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1582 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal16DictionaryTraitsINS_19FixedSizeBinaryTypeEvE22GetDictionaryArrayDataEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEERKNS0_15BinaryMemoTableINS_13BinaryBuilderEEEl:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

bb.ax:                                            ; preds = %bb.av
  %i.gl = atomicrmw volatile add ptr %i.fy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i58 = phi i32 [ %i.gb, %bb.aw ], [ %i.gl, %bb.ax ]
  %i.gm = icmp eq i32 %.0.i.i.i.i58, 1
  br i1 %i.gm, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fx) #32
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.bb

.loopexit.loopexit71:                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.az:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.ba:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #32
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.ba, %bb.az
  %.pn32 = phi { ptr, i32 } [ %i.gp, %bb.ba ], [ %i.go, %bb.az ]
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.gq) #32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit71, %.loopexit.loopexit
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %.loopexit.loopexit ], [ %i.gn, %.loopexit.loopexit71 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.bi

bb.bb:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit40, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !82 ; 8 uses
  %.not.i.i59 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i59, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 4 uses
  %i.gu = load atomic i64, ptr %i.gt acquire, align 8 ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 4294967297
  %i.gw = trunc i64 %i.gu to i32                  ; 2 uses
  br i1 %i.gv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.gt, align 8, !tbaa !77
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 0, ptr %i.gx, align 4, !tbaa !79
  %i.gy = load ptr, ptr %i.gs, align 8, !tbaa !80
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #32, !inline_history !1109
  %i.hb = load ptr, ptr %i.gs, align 8, !tbaa !80
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #32, !inline_history !1109
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63

bb.be:                                            ; preds = %bb.bc
  %i.he = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i60 = icmp eq i8 %i.he, 0
  br i1 %.not.i.i.i60, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = add nsw i32 %i.gw, -1
  store i32 %i.hf, ptr %i.gt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61

bb.bg:                                            ; preds = %bb.be
  %i.hg = atomicrmw volatile add ptr %i.gt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i62 = phi i32 [ %i.gw, %bb.bf ], [ %i.hg, %bb.bg ]
  %i.hh = icmp eq i32 %.0.i.i.i.i62, 1
  br i1 %i.hh, label %bb.bh, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63, !prof !37

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #32
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63: ; preds = %bb.bb, %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.hi = load ptr, ptr %6, align 8, !tbaa !1077  ; 3 uses
  %.not.i64 = icmp eq ptr %i.hi, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !80
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hi) #32, !inline_history !1080
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit63, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.bk

bb.bi:                                            ; preds = %.loopexit, %bb.n
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %.loopexit ], [ %i.bx, %bb.n ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.m
  %.pn32.pn.pn.pn = phi { ptr, i32 } [ %.pn32.pn.pn, %bb.bi ], [ %i.bw, %bb.m ]
  %i.hm = load ptr, ptr %6, align 8, !tbaa !1077  ; 3 uses
  %.not.i65 = icmp eq ptr %i.hm, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66: ; preds = %bb.bj
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !80
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.hm) #32, !inline_history !1080
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit67: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i66, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn32.pn.pn.pn

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.hq = load ptr, ptr %5, align 8, !tbaa !137   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.bl, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !140

bb.bl:                                            ; preds = %bb.bk
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !1077 ; 3 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i68, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.bl
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !80
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ht) #32, !inline_history !1110
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !137 ; 2 uses
  %.not.i.i69 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i69, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !278

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.bk
  %i.hx = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.hq, %bb.bk ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !141, !range !147, !noundef !148
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #32
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.bl, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !2315, !nonnull !148, !align !250 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1630 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2317, !nonnull !148, !align !1785
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 7 uses
  %i.f = sext i32 %i.e to i64                     ; 7 uses
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1630
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2318, !nonnull !148, !align !250
  %.val = load ptr, ptr %i.i, align 8, !tbaa !2288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1582, !noalias !2319 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  %sext.i.i = shl nsw i64 %i.f, 24
  %i.l = icmp slt i32 %i.e, 17
  br i1 %i.l, label %bb.b, label %bb.h, !prof !140

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i32 %i.e, 9
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i32 %i.e, 4
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.e, 0
  br i1 %i.o, label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.b, align 1, !tbaa !40, !noalias !2328
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  %i.s = lshr i64 %i.f, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40, !noalias !2328
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 8
  %i.x = add nuw nsw i64 %i.f, 4294967295
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !40, !noalias !2328
  %i.ab = zext i8 %i.aa to i64
  %.masked33.i.i.i.i = or disjoint i64 %i.r, %sext.i.i
  %.masked.i.i.i.i = or disjoint i64 %.masked33.i.i.i.i, %i.w
  %i.ac = or disjoint i64 %.masked.i.i.i.i, %i.ab
  %i.ad = mul i64 %i.ac, -7046029288634856825
  %i.ae = tail call noundef i64 @llvm.bswap.i64(i64 %i.ad)
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.ag = load i32, ptr %i.af, align 1, !noalias !2328
  %i.ah = load i32, ptr %i.b, align 1, !noalias !2328
  %i.ai = zext i32 %i.ag to i64
  %i.aj = mul i64 %i.ai, -7046029288634856825
  %i.ak = zext i32 %i.ah to i64
  %i.al = mul i64 %i.ak, -4417276706812531889
  %i.am = xor i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.bswap.i64(i64 %i.am)
  %i.ao = xor i64 %i.an, %i.f
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.g:                                             ; preds = %bb.b
  %i.ap = and i64 %i.f, 4294967295                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = load i64, ptr %i.ar, align 1, !noalias !2328
  %i.at = load i64, ptr %i.b, align 1, !noalias !2328
  %i.au = mul i64 %i.as, -7046029288634856825
  %i.av = mul i64 %i.at, -4417276706812531889
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.bswap.i64(i64 %i.aw)
  %i.ay = xor i64 %i.ax, %i.ap
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.az = tail call fastcc noundef i64 @_ZL33XXH_INLINE_XXH3_64bits_withSecretPKvmS0_m(ptr noundef captures(none) %i.b, i64 noundef %i.f) #37
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.1.i.i.i.i = phi i64 [ %i.az, %bb.h ], [ %i.ay, %bb.g ], [ %i.ae, %bb.e ], [ %i.ao, %bb.f ]
  %.1.i.fr.i.i.i = freeze i64 %.1.i.i.i.i         ; 2 uses
  %i.ba = icmp eq i64 %.1.i.fr.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.ba, i64 42, i64 %.1.i.fr.i.i.i
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i: ; preds = %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i, %bb.d
  %i.bb = phi i64 [ %spec.select.i.i.i, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ 1, %bb.d ] ; 4 uses
  %.in6.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bc = load ptr, ptr %.in6.i.i.i, align 8, !tbaa !1674, !noalias !2328
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bd = load i64, ptr %.in.i.i.i, align 8, !tbaa !1669, !noalias !2328
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 336
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  %i.bi = load ptr, ptr %i.be, align 8, !noalias !2328
  %i.bj = load i64, ptr %i.bf, align 8, !noalias !2328
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = load i64, ptr %i.bg, align 8, !noalias !2328
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = load ptr, ptr %i.bh, align 8, !noalias !2328
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ %i.bb, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %i.cg, %bb.m ]
  %.0.in.in.i.i.i.i.i.i = phi i64 [ %i.bb, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %.0.i.i.i.i.i.i, %bb.m ]
  %storemerge.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bd ; 2 uses
  %.0.in.i.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i.i, 5
  %.0.i.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i.i, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %storemerge.i.i.i.i.i.i ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !1798, !noalias !2328 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.bb
  br i1 %i.bq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !1801, !noalias !2328
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3, !noalias !2328 ; 3 uses
  %i.bw = icmp eq i64 %i.bk, %i.bt
  br i1 %i.bw, label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr i8, ptr %i.bu, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3, !noalias !2328
  br label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i

_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.by, %bb.k ], [ %i.bm, %bb.j ] ; 2 uses
  %storemerge.i.i.i.i.i.i.i.i.i.i = sub nsw i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.bv ; 2 uses
  %i.bz = sext i32 %i.bv to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bn, i64 %i.bz
  %i.cb = sext i32 %storemerge.i.i.i.i.i.i.i.i.i.i to i64
  %i.cc = icmp eq i32 %storemerge.i.i.i.i.i.i.i.i.i.i, %i.e
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i
  %i.cd = icmp eq i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.bv
  br i1 %i.cd, label %_ZN5arrow6StatusD2Ev.exit42.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ca, ptr %i.b, i64 %i.cb), !noalias !2328
  %i.ce = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %_ZN5arrow6StatusD2Ev.exit42.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, %bb.i
  %i.cf = icmp eq i64 %i.bp, 0
  %i.cg = add i64 %.0.i.i.i.i.i.i, %storemerge.i.i.i.i.i.i
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.i, !llvm.loop !1802

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.m
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !80, !noalias !2328
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !2328
  %i.ck = tail call noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(356) %i.k), !noalias !2328, !inline_history !2329
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !2328
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(256) %i.cl, ptr noundef %i.b, i32 noundef %i.e), !noalias !2328
  %i.cm = load ptr, ptr %2, align 8, !tbaa !137, !noalias !2328 ; 2 uses
  store ptr %i.cm, ptr %0, align 8, !tbaa !137, !alias.scope !2328
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !2328
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN5arrow6StatusD2Ev.exit35.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit35.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !2328
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bo, align 8, !tbaa !1798, !noalias !2330
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %i.ck, ptr %i.cp, align 8, !tbaa !3, !noalias !2330
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !1670, !noalias !2330
  %i.cs = add i64 %i.cr, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !1670, !noalias !2330
  %i.ct = shl i64 %i.cs, 1
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !1668, !noalias !2330 ; 2 uses
  %.not.i36.i.i.i = icmp ult i64 %i.ct, %i.cu
  br i1 %.not.i36.i.i.i, label %_ZN5arrow6StatusD2Ev.exit38.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit38.i.i.i, !prof !140

_ZN5arrow6StatusD2Ev.exit38.thread.i.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit35.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !2328
  br label %_ZN5arrow6StatusD2Ev.exit42.i.i.i

_ZN5arrow6StatusD2Ev.exit38.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit35.i.i.i
  %i.cv = shl i64 %i.cu, 2
  call void @_ZN5arrow8internal9HashTableINS0_15BinaryMemoTableINS_13BinaryBuilderEE7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.co, i64 noundef %i.cv), !noalias !2328
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !137, !noalias !2328 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !137, !alias.scope !2328
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !2328
  %i.cw = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.cw, label %_ZN5arrow6StatusD2Ev.exit42.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit42.i.i.i:                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.l, %_ZN5arrow6StatusD2Ev.exit38.i.i.i, %_ZN5arrow6StatusD2Ev.exit38.thread.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !137, !alias.scope !2333
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit38.i.i.i, %_ZN5arrow6StatusD2Ev.exit42.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_12UniqueActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2336, !nonnull !148, !align !1785
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  %i.d = load ptr, ptr %1, align 8, !tbaa !2338, !nonnull !148, !align !250 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1630
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10BinaryTypeENS2_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE6AppendERKNS_9ArraySpanE:bb.a
  store ptr null, ptr %0, align 8, !tbaa !137, !alias.scope !3318
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !3317
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !882, !noalias !3317 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !884, !noalias !3317
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !3317
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !884, !noalias !3317 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  %storemerge.i.i.i = select i1 %i.p, ptr %i.a, ptr %i.o
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !1630, !noalias !3317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32, !noalias !3317
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %i.q, ptr %i.b, align 8, !tbaa !1631, !noalias !3317
  %i.r = load i32, ptr %i.m, align 4, !tbaa !3, !noalias !3317
  store i32 %i.r, ptr %i.d, align 4, !tbaa !3, !noalias !3317
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !884, !noalias !3317 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !3317
  store ptr %i.c, ptr %8, align 8, !tbaa !1633, !noalias !3317
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.t, align 8, !tbaa !1631, !noalias !3317
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.u, align 8, !tbaa !1636, !noalias !3317
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %10, ptr %i.v, align 8, !tbaa !72, !noalias !3317
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !3317
  store ptr %i.d, ptr %9, align 8, !tbaa !1631, !noalias !3317
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.w, align 8, !tbaa !1636, !noalias !3317
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %11, ptr %i.x, align 8, !tbaa !72, !noalias !3317
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !3321
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.s, i64 noundef %i.i, i64 noundef %i.f), !noalias !3321
  %i.y = icmp sgt i64 %i.f, 0
  br i1 %i.y, label %.lr.ph141.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

.lr.ph141.i.i.i.i:                                ; preds = %bb.c, %.critedge65.i.i.i.i
  %.054140.i.i.i.i = phi i64 [ %.458.i.i.i.i, %.critedge65.i.i.i.i ], [ 0, %bb.c ] ; 7 uses
  %i.z = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3), !noalias !3321 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.z to i16 ; 6 uses
  %.sroa.9.0.extract.shift.i.i.i.i = lshr i32 %i.z, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i.i to i16
  %i.aa = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.9.0.extract.trunc.i.i.i.i
  br i1 %i.aa, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.lr.ph141.i.i.i.i
  %i.ab = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  %.not64136.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not64136.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i:                ; preds = %.preheader.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i
  %.053138.i.i.i.i = phi i64 [ %i.ae, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.155137.i.i.i.i = phi i64 [ %i.af, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !3321
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(32) %8)
  %i.ac = load ptr, ptr %4, align 8, !tbaa !137, !noalias !3321 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !3321
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit79.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i
  %i.ae = add nuw nsw i64 %.053138.i.i.i.i, 1     ; 2 uses
  %i.af = add nsw i64 %.155137.i.i.i.i, 1         ; 2 uses
  %exitcond149.not.i.i.i.i = icmp eq i64 %i.ae, %i.ab
  br i1 %exitcond149.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, !llvm.loop !3324

bb.d:                                             ; preds = %.lr.ph141.i.i.i.i
  %i.ag = icmp eq i32 %.sroa.9.0.extract.shift.i.i.i.i, 0
  br i1 %i.ag, label %.preheader120.i.i.i.i, label %.preheader123.i.i.i.i

.preheader123.i.i.i.i:                            ; preds = %bb.d
  %.not129.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not129.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.critedge65.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader123.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.z, 32767
  %i.ah = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.ai = add i64 %.054140.i.i.i.i, %i.ah         ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader120.i.i.i.i:                            ; preds = %bb.d
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %.not61132.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not61132.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i:    ; preds = %.preheader120.i.i.i.i
  %i.ak = add i64 %.054140.i.i.i.i, %i.aj
  br label %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i

_ZN5arrow6StatusD2Ev.exit81.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i
  %.046134.i.i.i.i = phi i64 [ %i.an, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !3321
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %9), !noalias !3321
  %i.al = load ptr, ptr %5, align 8, !tbaa !137, !noalias !3321 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !3321
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit85.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i
  %i.an = add nuw nsw i64 %.046134.i.i.i.i, 1     ; 2 uses
  %exitcond148.not.i.i.i.i = icmp eq i64 %i.an, %i.aj
  br i1 %exitcond148.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i, !llvm.loop !3325

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.357130.i.i.i.i = phi i64 [ %i.ba, %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i ], [ %.054140.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.ao = add nsw i64 %.357130.i.i.i.i, %i.i      ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !40, !noalias !3321
  %i.as = trunc i64 %i.ao to i8
  %i.at = and i8 %i.as, 7
  %i.au = lshr i8 %i.ar, %i.at
  %i.av = trunc i8 %i.au to i1
  br i1 %i.av, label %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i

_ZN5arrow6StatusD2Ev.exit87.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !3321
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %8)
  %i.aw = load ptr, ptr %6, align 8, !tbaa !137, !noalias !3321 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !3321
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit93.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !3321
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(24) %9), !noalias !3321
  %i.ay = load ptr, ptr %7, align 8, !tbaa !137, !noalias !3321 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !3321
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit91.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i
  %i.ba = add i64 %.357130.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ba, %i.ai
  br i1 %exitcond.not.i.i.i.i, label %.critedge65.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3326

.critedge65.i.i.i.i:                              ; preds = %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i, %.preheader120.i.i.i.i, %.preheader123.i.i.i.i, %.preheader.i.i.i.i
  %.458.i.i.i.i = phi i64 [ %i.af, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ %i.ak, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader120.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader123.i.i.i.i ], [ %i.ai, %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i ] ; 2 uses
  %i.bb = icmp slt i64 %.458.i.i.i.i, %i.f
  br i1 %i.bb, label %.lr.ph141.i.i.i.i, label %._crit_edge.i.i.i.i.loopexit, !llvm.loop !3327

._crit_edge.i.i.i.i.loopexit:                     ; preds = %.critedge65.i.i.i.i
  store ptr null, ptr %0, align 8
  br label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, %bb.c, %._crit_edge.i.i.i.i.loopexit
  %.sink = phi ptr [ %i.al, %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i ], [ %i.ac, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i ], [ null, %bb.c ], [ null, %._crit_edge.i.i.i.i.loopexit ], [ %i.aw, %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i ], [ %i.ay, %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i ]
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !3321
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32, !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !3317
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !3303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !3303
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !3328, !nonnull !148, !align !250
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1630
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3330, !nonnull !148, !align !1785
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3331, !nonnull !148, !align !250 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1631 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 3 uses
  %i.l = sub nsw i32 %i.k, %i.e                   ; 6 uses
  %i.m = sext i32 %i.l to i64                     ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.n, ptr %i.i, align 8, !tbaa !1631
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !3330, !nonnull !148, !align !1785
  store i32 %i.k, ptr %i.o, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3332, !nonnull !148, !align !250
  %.val = load ptr, ptr %i.q, align 8, !tbaa !3306 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !3333
  store ptr null, ptr %4, align 8, !tbaa !137, !alias.scope !3336, !noalias !3333
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1582, !noalias !3333 ; 11 uses
  %sext.i.i = shl nsw i64 %i.m, 24
  %i.t = icmp slt i32 %i.l, 17
  br i1 %i.t, label %bb.b, label %bb.h, !prof !140

bb.b:                                             ; preds = %bb.a
  %i.u = icmp ult i32 %i.l, 9
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %i.l, 4
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, %i.e
  br i1 %i.w, label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.g, align 1, !tbaa !40, !noalias !3339
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 16
  %i.aa = lshr i64 %i.m, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !40, !noalias !3339
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 8
  %i.af = add nuw nsw i64 %i.m, 4294967295
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40, !noalias !3339
  %i.aj = zext i8 %i.ai to i64
  %.masked33.i.i.i.i = or disjoint i64 %i.z, %sext.i.i
  %.masked.i.i.i.i = or disjoint i64 %.masked33.i.i.i.i, %i.ae
  %i.ak = or disjoint i64 %.masked.i.i.i.i, %i.aj
  %i.al = mul i64 %i.ak, -7046029288634856825
  %i.am = tail call noundef i64 @llvm.bswap.i64(i64 %i.al)
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ap = load i32, ptr %i.ao, align 1, !noalias !3339
  %i.aq = load i32, ptr %i.g, align 1, !noalias !3339
  %i.ar = zext i32 %i.ap to i64
  %i.as = mul i64 %i.ar, -7046029288634856825
  %i.at = zext i32 %i.aq to i64
  %i.au = mul i64 %i.at, -4417276706812531889
  %i.av = xor i64 %i.au, %i.as
  %i.aw = tail call i64 @llvm.bswap.i64(i64 %i.av)
  %i.ax = xor i64 %i.aw, %i.m
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.g:                                             ; preds = %bb.b
  %i.ay = and i64 %i.m, 4294967295                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = load i64, ptr %i.ba, align 1, !noalias !3339
  %i.bc = load i64, ptr %i.g, align 1, !noalias !3339
  %i.bd = mul i64 %i.bb, -7046029288634856825
  %i.be = mul i64 %i.bc, -4417276706812531889
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.bswap.i64(i64 %i.bf)
  %i.bh = xor i64 %i.bg, %i.ay
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.bi = tail call fastcc noundef i64 @_ZL33XXH_INLINE_XXH3_64bits_withSecretPKvmS0_m(ptr noundef captures(none) %i.g, i64 noundef %i.m) #37
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.1.i.i.i.i = phi i64 [ %i.bi, %bb.h ], [ %i.bh, %bb.g ], [ %i.am, %bb.e ], [ %i.ax, %bb.f ]
  %.1.i.fr.i.i.i = freeze i64 %.1.i.i.i.i         ; 2 uses
  %i.bj = icmp eq i64 %.1.i.fr.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.bj, i64 42, i64 %.1.i.fr.i.i.i
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i: ; preds = %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i, %bb.d
  %i.bk = phi i64 [ %spec.select.i.i.i, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ 1, %bb.d ] ; 4 uses
  %.in6.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bl = load ptr, ptr %.in6.i.i.i, align 8, !tbaa !1674, !noalias !3339
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bm = load i64, ptr %.in.i.i.i, align 8, !tbaa !1669, !noalias !3339
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 336
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  %i.br = load ptr, ptr %i.bn, align 8, !noalias !3339
  %i.bs = load i64, ptr %i.bo, align 8, !noalias !3339
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = load i64, ptr %i.bp, align 8, !noalias !3339
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = load ptr, ptr %i.bq, align 8, !noalias !3339
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %i.cp, %bb.m ]
  %.0.in.in.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %.0.i.i.i.i.i.i, %bb.m ]
  %storemerge.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bm ; 2 uses
  %.0.in.i.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i.i, 5
  %.0.i.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %storemerge.i.i.i.i.i.i ; 4 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1798, !noalias !3339 ; 2 uses
  %i.bz = icmp eq i64 %i.by, %i.bk
  br i1 %i.bz, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1801, !noalias !3339
  %i.cc = sext i32 %i.cb to i64                   ; 3 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3, !noalias !3339 ; 3 uses
  %i.cf = icmp eq i64 %i.bt, %i.cc
  br i1 %i.cf, label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !3339
  br label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i

_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ch, %bb.k ], [ %i.bv, %bb.j ] ; 2 uses
  %storemerge.i.i.i.i.i.i.i.i.i.i = sub nsw i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.ce ; 2 uses
  %i.ci = sext i32 %i.ce to i64
  %i.cj = getelementptr inbounds i8, ptr %i.bw, i64 %i.ci
  %i.ck = sext i32 %storemerge.i.i.i.i.i.i.i.i.i.i to i64
  %i.cl = icmp eq i32 %storemerge.i.i.i.i.i.i.i.i.i.i, %i.l
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i
  %i.cm = icmp eq i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.ce
  br i1 %i.cm, label %bb.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.cj, ptr %i.g, i64 %i.ck), !noalias !3339
  %i.cn = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, %bb.i
  %i.co = icmp eq i64 %i.by, 0
  %i.cp = add i64 %.0.i.i.i.i.i.i, %storemerge.i.i.i.i.i.i
  br i1 %i.co, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.i, !llvm.loop !1802

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.l
  %i.cq = getelementptr i8, ptr %.val, i64 288
  %.val.val.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !950, !noalias !3339
  %i.cr = getelementptr inbounds [8 x i8], ptr %.val.val.i.i.i, i64 %i.cc ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !484, !noalias !3339
  %i.ct = add nsw i64 %i.cs, 1
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !484, !noalias !3339
  br label %.thread.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.m
  %i.cu = load ptr, ptr %i.s, align 8, !tbaa !80, !noalias !3339
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !3339
  %i.cx = invoke noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(356) %i.s)
          to label %.noexc.i unwind label %bb.o, !noalias !3333, !inline_history !3344

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !3339
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(256) %i.cy, ptr noundef %i.g, i32 noundef %i.l)
          to label %.noexc10.i unwind label %bb.o, !noalias !3333

.noexc10.i:                                       ; preds = %.noexc.i
  %i.cz = load ptr, ptr %2, align 8, !tbaa !137, !noalias !3339 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !3339
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN5arrow6StatusD2Ev.exit37.i.i.i, label %bb.r

_ZN5arrow6StatusD2Ev.exit37.i.i.i:                ; preds = %.noexc10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !3339
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !1798, !noalias !3345
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %i.cx, ptr %i.dc, align 8, !tbaa !3, !noalias !3345
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !1670, !noalias !3345
  %i.df = add i64 %i.de, 1                        ; 2 uses
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !1670, !noalias !3345
  %i.dg = shl i64 %i.df, 1
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !1668, !noalias !3345 ; 2 uses
  %.not.i38.i.i.i = icmp ult i64 %i.dg, %i.dh
  br i1 %.not.i38.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40.i.i.i, !prof !140

_ZN5arrow6StatusD2Ev.exit40.thread.i.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit37.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !3339
  br label %_ZN5arrow6StatusD2Ev.exit44.i.i.i

_ZN5arrow6StatusD2Ev.exit40.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit37.i.i.i
  %i.di = shl i64 %i.dh, 2
  invoke void @_ZN5arrow8internal9HashTableINS0_15BinaryMemoTableINS_13BinaryBuilderEE7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.db, i64 noundef %i.di)
          to label %.noexc11.i unwind label %bb.o, !noalias !3333

.noexc11.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit40.i.i.i
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !137, !noalias !3339 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !3339
  %i.dj = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.dj, label %_ZN5arrow6StatusD2Ev.exit44.i.i.i, label %bb.r

_ZN5arrow6StatusD2Ev.exit44.i.i.i:                ; preds = %.noexc11.i, %_ZN5arrow6StatusD2Ev.exit40.thread.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 80
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE6AppendERKNS_9ArraySpanE:bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !3485
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !882, !noalias !3485
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !884, !noalias !3485
  %i.k = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.g
  store ptr %i.k, ptr %i.a, align 8, !tbaa !2166, !noalias !3485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !3485
  %i.l = tail call { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128) %2), !noalias !3485
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  store ptr %i.m, ptr %i.b, align 8, !tbaa !2168, !noalias !3485
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !884, !noalias !3485 ; 2 uses
  %i.o = load i64, ptr %i.f, align 8, !tbaa !882, !noalias !3485 ; 2 uses
  %i.p = load i64, ptr %i.c, align 8, !tbaa !825, !noalias !3485 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !3485
  store ptr %9, ptr %8, align 8, !tbaa !72, !noalias !3485
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.q, align 8, !tbaa !2169, !noalias !3485
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.r, align 8, !tbaa !2171, !noalias !3485
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !3489
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.n, i64 noundef %i.o, i64 noundef %i.p), !noalias !3489
  %i.s = icmp sgt i64 %i.p, 0
  br i1 %i.s, label %.lr.ph26.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

.lr.ph26.i.i.i.i:                                 ; preds = %bb.c, %.critedge65.i.i.i.i
  %.05425.i.i.i.i = phi i64 [ %.458.i.i.i.i, %.critedge65.i.i.i.i ], [ 0, %bb.c ] ; 7 uses
  %i.t = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3), !noalias !3489 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.t to i16 ; 6 uses
  %.sroa.9.0.extract.shift.i.i.i.i = lshr i32 %i.t, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i.i to i16
  %i.u = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.9.0.extract.trunc.i.i.i.i
  br i1 %i.u, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.lr.ph26.i.i.i.i
  %i.v = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  %.not6421.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not6421.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i:                ; preds = %.preheader.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i
  %.05323.i.i.i.i = phi i64 [ %i.y, %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.15522.i.i.i.i = phi i64 [ %i.z, %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i ], [ %.05425.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !3489
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 noundef %.15522.i.i.i.i), !noalias !3489
  %i.w = load ptr, ptr %4, align 8, !tbaa !137, !noalias !3489 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !3489
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit80.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i
  %i.y = add nuw nsw i64 %.05323.i.i.i.i, 1       ; 2 uses
  %i.z = add nsw i64 %.15522.i.i.i.i, 1           ; 2 uses
  %exitcond34.not.i.i.i.i = icmp eq i64 %i.y, %i.v
  br i1 %exitcond34.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, !llvm.loop !3492

bb.d:                                             ; preds = %.lr.ph26.i.i.i.i
  %i.aa = icmp eq i32 %.sroa.9.0.extract.shift.i.i.i.i, 0
  br i1 %i.aa, label %.preheader5.i.i.i.i, label %.preheader8.i.i.i.i

.preheader8.i.i.i.i:                              ; preds = %bb.d
  %.not14.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not14.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.critedge65.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader8.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.t, 32767
  %i.ab = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.ac = add i64 %.05425.i.i.i.i, %i.ab          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader5.i.i.i.i:                              ; preds = %bb.d
  %i.ad = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %.not6117.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not6117.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit82.preheader.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit82.preheader.i.i.i.i:    ; preds = %.preheader5.i.i.i.i
  %i.ae = add i64 %.05425.i.i.i.i, %i.ad
  br label %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i

_ZN5arrow6StatusD2Ev.exit82.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit86.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit82.preheader.i.i.i.i
  %.04619.i.i.i.i = phi i64 [ %i.ah, %_ZN5arrow6StatusD2Ev.exit86.i.i.i.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit82.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !3489
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %5, ptr nonnull align 8 dereferenceable(328) %1), !noalias !3489
  %i.af = load ptr, ptr %5, align 8, !tbaa !137, !noalias !3489 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !3489
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit86.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit86.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i
  %i.ah = add nuw nsw i64 %.04619.i.i.i.i, 1      ; 2 uses
  %exitcond33.not.i.i.i.i = icmp eq i64 %i.ah, %i.ad
  br i1 %exitcond33.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i, !llvm.loop !3493

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.35715.i.i.i.i = phi i64 [ %i.au, %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i ], [ %.05425.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.ai = add nsw i64 %.35715.i.i.i.i, %i.o       ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !40, !noalias !3489
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = lshr i8 %i.al, %i.an
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit94.i.i.i.i

_ZN5arrow6StatusD2Ev.exit88.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !3489
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 noundef %.35715.i.i.i.i), !noalias !3489
  %i.aq = load ptr, ptr %6, align 8, !tbaa !137, !noalias !3489 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !3489
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit94.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !3489
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %7, ptr nonnull align 8 dereferenceable(328) %1), !noalias !3489
  %i.as = load ptr, ptr %7, align 8, !tbaa !137, !noalias !3489 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !3489
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit92.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit94.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i
  %i.au = add i64 %.35715.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.au, %i.ac
  br i1 %exitcond.not.i.i.i.i, label %.critedge65.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3494

.critedge65.i.i.i.i:                              ; preds = %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit86.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i, %.preheader5.i.i.i.i, %.preheader8.i.i.i.i, %.preheader.i.i.i.i
  %.458.i.i.i.i = phi i64 [ %i.z, %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i ], [ %i.ae, %_ZN5arrow6StatusD2Ev.exit86.i.i.i.i ], [ %.05425.i.i.i.i, %.preheader.i.i.i.i ], [ %.05425.i.i.i.i, %.preheader5.i.i.i.i ], [ %.05425.i.i.i.i, %.preheader8.i.i.i.i ], [ %i.ac, %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i ] ; 2 uses
  %i.av = icmp slt i64 %.458.i.i.i.i, %i.p
  br i1 %i.av, label %.lr.ph26.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i, !llvm.loop !3495

_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i: ; preds = %.critedge65.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit94.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, %bb.c
  %.sink = phi ptr [ %i.as, %_ZN5arrow6StatusD2Ev.exit94.i.i.i.i ], [ %i.w, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i ], [ null, %bb.c ], [ %i.af, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i ], [ %i.aq, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i ], [ null, %.critedge65.i.i.i.i ]
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !3489
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !3485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !3485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !3485
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb1EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !3473
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !3496, !nonnull !148, !align !250 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3498, !nonnull !148, !align !250
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2166
  %i.e = getelementptr inbounds [16 x i8], ptr %i.d, i64 %2 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 9 uses
  %i.g = icmp slt i32 %i.f, 13
  br i1 %i.g, label %bb.b, label %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit

_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3499, !nonnull !148, !align !250
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2168
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1081 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1083, !range !147, !noundef !148
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %i.r, ptr %i.t, ptr null, !prof !140
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x ; 3 uses
  %i.z = zext nneg i32 %i.f to i64                ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !3476 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3500)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !3500
  store ptr null, ptr %5, align 8, !tbaa !137, !alias.scope !3503, !noalias !3500
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1582, !noalias !3500 ; 2 uses
  %i.ac = icmp samesign ult i32 %i.f, 17
  br i1 %i.ac, label %.thread, label %bb.g, !prof !2247

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 9 uses
  %i.ae = sext i32 %i.f to i64                    ; 6 uses
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !3476 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !3506
  store ptr null, ptr %5, align 8, !tbaa !137, !alias.scope !3503, !noalias !3506
  %i.af = getelementptr inbounds nuw i8, ptr %.val12, i64 320
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1582, !noalias !3506 ; 4 uses
  %sext.i.i13 = shl nsw i64 %i.ae, 24
  %i.ah = icmp ult i32 %i.f, 9
  br i1 %i.ah, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp samesign ult i32 %i.f, 4
  br i1 %i.ai, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp eq i32 %i.f, 0
  br i1 %i.aj, label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %i.ad, align 4, !tbaa !40, !noalias !3508
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 16
  %i.an = lshr i64 %i.ae, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !40, !noalias !3508
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 8
  %i.as = add nuw nsw i64 %i.ae, 4294967295
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !40, !noalias !3508
  %i.aw = zext i8 %i.av to i64
  %.masked33.i.i.i.i = or disjoint i64 %i.am, %sext.i.i13
  %.masked.i.i.i.i = or disjoint i64 %.masked33.i.i.i.i, %i.ar
  %i.ax = or disjoint i64 %.masked.i.i.i.i, %i.aw
  %i.ay = mul i64 %i.ax, -7046029288634856825
  %i.az = tail call noundef i64 @llvm.bswap.i64(i64 %i.ay)
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 1, !noalias !3508
  %i.bd = load i32, ptr %i.ad, align 4, !noalias !3508
  %i.be = zext i32 %i.bc to i64
  %i.bf = mul i64 %i.be, -7046029288634856825
  %i.bg = zext i32 %i.bd to i64
  %i.bh = mul i64 %i.bg, -4417276706812531889
  %i.bi = xor i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.bswap.i64(i64 %i.bi)
  %i.bk = xor i64 %i.bj, %i.ae
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

.thread:                                          ; preds = %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit, %bb.b
  %i.bl = phi ptr [ %i.ad, %bb.b ], [ %i.y, %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit ] ; 3 uses
  %i.bm = phi i64 [ %i.ae, %bb.b ], [ %i.z, %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit ]
  %.val1620 = phi ptr [ %.val12, %bb.b ], [ %.val, %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit ]
  %i.bn = phi ptr [ %i.ag, %bb.b ], [ %i.ab, %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit ]
  %i.bo = and i64 %i.bm, 4294967295               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %i.br = load i64, ptr %i.bq, align 1, !noalias !3508
  %i.bs = load i64, ptr %i.bl, align 1, !noalias !3508
  %i.bt = mul i64 %i.br, -7046029288634856825
  %i.bu = mul i64 %i.bs, -4417276706812531889
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.bswap.i64(i64 %i.bv)
  %i.bx = xor i64 %i.bw, %i.bo
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.g:                                             ; preds = %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit
  %i.by = tail call fastcc noundef i64 @_ZL33XXH_INLINE_XXH3_64bits_withSecretPKvmS0_m(ptr noundef captures(none) %i.y, i64 noundef %i.z) #37
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i: ; preds = %bb.g, %.thread, %bb.f, %bb.e
  %i.bz = phi ptr [ %i.ab, %bb.g ], [ %i.bn, %.thread ], [ %i.ag, %bb.e ], [ %i.ag, %bb.f ]
  %.val15 = phi ptr [ %.val, %bb.g ], [ %.val1620, %.thread ], [ %.val12, %bb.e ], [ %.val12, %bb.f ]
  %i.ca = phi ptr [ %i.y, %bb.g ], [ %i.bl, %.thread ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ]
  %.1.i.i.i.i = phi i64 [ %i.by, %bb.g ], [ %i.bx, %.thread ], [ %i.az, %bb.e ], [ %i.bk, %bb.f ]
  %.1.i.fr.i.i.i = freeze i64 %.1.i.i.i.i         ; 2 uses
  %i.cb = icmp eq i64 %.1.i.fr.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.cb, i64 42, i64 %.1.i.fr.i.i.i
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i: ; preds = %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i, %bb.d
  %i.cc = phi ptr [ %i.bz, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ %i.ag, %bb.d ] ; 11 uses
  %.val14 = phi ptr [ %.val15, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ %.val12, %bb.d ] ; 2 uses
  %i.cd = phi ptr [ %i.ca, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ce = phi i64 [ %spec.select.i.i.i, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ 1, %bb.d ] ; 4 uses
  %.in6.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cf = load ptr, ptr %.in6.i.i.i, align 8, !tbaa !1674, !noalias !3508
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %.in.i.i.i, align 8, !tbaa !1669, !noalias !3508
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 264
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 336
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 320
  %i.cl = load ptr, ptr %i.ch, align 8, !noalias !3508
  %i.cm = load i64, ptr %i.ci, align 8, !noalias !3508
  %i.cn = add nsw i64 %i.cm, -1
  %i.co = load i64, ptr %i.cj, align 8, !noalias !3508
  %i.cp = trunc i64 %i.co to i32
  %i.cq = load ptr, ptr %i.ck, align 8, !noalias !3508
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ %i.ce, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %i.dj, %bb.l ]
  %.0.in.in.i.i.i.i.i.i = phi i64 [ %i.ce, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %.0.i.i.i.i.i.i, %bb.l ]
  %storemerge.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.cg ; 2 uses
  %.0.in.i.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i.i, 5
  %.0.i.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i.i, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %storemerge.i.i.i.i.i.i ; 4 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1798, !noalias !3508 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, %i.ce
  br i1 %i.ct, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !1801, !noalias !3508
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !3508 ; 3 uses
  %i.cz = icmp eq i64 %i.cn, %i.cw
  br i1 %i.cz, label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr i8, ptr %i.cx, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3, !noalias !3508
  br label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i

_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.db, %bb.j ], [ %i.cp, %bb.i ] ; 2 uses
  %storemerge.i.i.i.i.i.i.i.i.i.i = sub nsw i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.cy ; 2 uses
  %i.dc = sext i32 %i.cy to i64
  %i.dd = getelementptr inbounds i8, ptr %i.cq, i64 %i.dc
  %i.de = sext i32 %storemerge.i.i.i.i.i.i.i.i.i.i to i64
  %i.df = icmp eq i32 %storemerge.i.i.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i
  %i.dg = icmp eq i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.cy
  br i1 %i.dg, label %bb.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.dd, ptr %i.cd, i64 %i.de), !noalias !3508
  %i.dh = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, %bb.h
  %i.di = icmp eq i64 %i.cs, 0
  %i.dj = add i64 %.0.i.i.i.i.i.i, %storemerge.i.i.i.i.i.i
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.h, !llvm.loop !1802

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.k
  %i.dk = getelementptr i8, ptr %.val14, i64 288
  %.val.val.i.i.i = load ptr, ptr %i.dk, align 8, !tbaa !950, !noalias !3508
  %i.dl = getelementptr inbounds [8 x i8], ptr %.val.val.i.i.i, i64 %i.cw ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !484, !noalias !3508
  %i.dn = add nsw i64 %i.dm, 1
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !484, !noalias !3508
  br label %.thread.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.l
  %i.do = load ptr, ptr %i.cc, align 8, !tbaa !80, !noalias !3508
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !3508
  %i.dr = invoke noundef i32 %i.dq(ptr noundef nonnull align 8 dereferenceable(356) %i.cc)
          to label %.noexc.i unwind label %bb.n, !noalias !3500, !inline_history !3513

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !3508
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(256) %i.ds, ptr noundef %i.cd, i32 noundef %i.f)
          to label %.noexc10.i unwind label %bb.n, !noalias !3500

.noexc10.i:                                       ; preds = %.noexc.i
  %i.dt = load ptr, ptr %3, align 8, !tbaa !137, !noalias !3508 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !3508
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_ZN5arrow6StatusD2Ev.exit37.i.i.i, label %bb.q

_ZN5arrow6StatusD2Ev.exit37.i.i.i:                ; preds = %.noexc10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !3508
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store i64 %i.ce, ptr %i.cr, align 8, !tbaa !1798, !noalias !3514
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.dr, ptr %i.dw, align 8, !tbaa !3, !noalias !3514
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !1670, !noalias !3514
  %i.dz = add i64 %i.dy, 1                        ; 2 uses
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !1670, !noalias !3514
  %i.ea = shl i64 %i.dz, 1
  %i.eb = load i64, ptr %i.dv, align 8, !tbaa !1668, !noalias !3514 ; 2 uses
  %.not.i38.i.i.i = icmp ult i64 %i.ea, %i.eb
  br i1 %.not.i38.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40.i.i.i, !prof !140

_ZN5arrow6StatusD2Ev.exit40.thread.i.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit37.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !3508
  br label %_ZN5arrow6StatusD2Ev.exit44.i.i.i

_ZN5arrow6StatusD2Ev.exit40.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit37.i.i.i
  %i.ec = shl i64 %i.eb, 2
  invoke void @_ZN5arrow8internal9HashTableINS0_15BinaryMemoTableINS_13BinaryBuilderEE7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.dv, i64 noundef %i.ec)
          to label %.noexc11.i unwind label %bb.n, !noalias !3500

.noexc11.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit40.i.i.i
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !137, !noalias !3508 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE10value_typeEv:bb.a
; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE6AppendERKNS_9ArraySpanE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %class.anon.927, align 8            ; 7 uses
  %9 = alloca %class.anon.928, align 8            ; 7 uses
  %10 = alloca %class.anon.925, align 8           ; 4 uses
  %11 = alloca %class.anon.926, align 8           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %0, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !3553
  store ptr %1, ptr %10, align 8, !tbaa !3556, !noalias !3553
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !3553
  store ptr %1, ptr %11, align 8, !tbaa !3559, !noalias !3553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !3561
  %i.d = load ptr, ptr %2, align 8, !tbaa !2298, !noalias !3561 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80, !noalias !3561
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3561
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !3561, !inline_history !3566 ; 2 uses
  store i32 %i.h, ptr %i.a, align 4, !tbaa !3, !noalias !3561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !3561
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !882, !noalias !3561 ; 3 uses
  %i.k = sext i32 %i.h to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !884, !noalias !3561
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.l
  store ptr %i.p, ptr %i.b, align 8, !tbaa !1630, !noalias !3561
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !884, !noalias !3561 ; 2 uses
  %i.r = load i64, ptr %i.c, align 8, !tbaa !825, !noalias !3561 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !3561
  store ptr %i.b, ptr %8, align 8, !tbaa !1633, !noalias !3561
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.s, align 8, !tbaa !1631, !noalias !3561
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %10, ptr %i.t, align 8, !tbaa !72, !noalias !3561
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !3561
  store ptr %i.b, ptr %9, align 8, !tbaa !1633, !noalias !3561
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.u, align 8, !tbaa !1631, !noalias !3561
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %11, ptr %i.v, align 8, !tbaa !72, !noalias !3561
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !3567
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.q, i64 noundef %i.j, i64 noundef %i.r), !noalias !3567
  %i.w = icmp sgt i64 %i.r, 0
  br i1 %i.w, label %.lr.ph141.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph141.i.i.i.i:                                ; preds = %bb.a, %.critedge65.i.i.i.i
  %.054140.i.i.i.i = phi i64 [ %.458.i.i.i.i, %.critedge65.i.i.i.i ], [ 0, %bb.a ] ; 7 uses
  %i.x = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3), !noalias !3567 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.x to i16 ; 6 uses
  %.sroa.9.0.extract.shift.i.i.i.i = lshr i32 %i.x, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i.i to i16
  %i.y = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.9.0.extract.trunc.i.i.i.i
  br i1 %i.y, label %.preheader.i.i.i.i, label %bb.b

.preheader.i.i.i.i:                               ; preds = %.lr.ph141.i.i.i.i
  %i.z = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  %.not64136.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not64136.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i:                ; preds = %.preheader.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i
  %.053138.i.i.i.i = phi i64 [ %i.ac, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.155137.i.i.i.i = phi i64 [ %i.ad, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !3567
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(24) %8)
  %i.aa = load ptr, ptr %4, align 8, !tbaa !137, !noalias !3567 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !3567
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i, label %._crit_edge.i.i.i.i

_ZN5arrow6StatusD2Ev.exit79.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i
  %i.ac = add nuw nsw i64 %.053138.i.i.i.i, 1     ; 2 uses
  %i.ad = add nsw i64 %.155137.i.i.i.i, 1         ; 2 uses
  %exitcond149.not.i.i.i.i = icmp eq i64 %i.ac, %i.z
  br i1 %exitcond149.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, !llvm.loop !3570

bb.b:                                             ; preds = %.lr.ph141.i.i.i.i
  %i.ae = icmp eq i32 %.sroa.9.0.extract.shift.i.i.i.i, 0
  br i1 %i.ae, label %.preheader120.i.i.i.i, label %.preheader123.i.i.i.i

.preheader123.i.i.i.i:                            ; preds = %bb.b
  %.not129.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not129.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.critedge65.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader123.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.x, 32767
  %i.af = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.ag = add i64 %.054140.i.i.i.i, %i.af         ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader120.i.i.i.i:                            ; preds = %bb.b
  %i.ah = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %.not61132.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not61132.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i:    ; preds = %.preheader120.i.i.i.i
  %i.ai = add i64 %.054140.i.i.i.i, %i.ah
  br label %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i

_ZN5arrow6StatusD2Ev.exit81.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i
  %.046134.i.i.i.i = phi i64 [ %i.al, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !3567
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %9), !noalias !3567
  %i.aj = load ptr, ptr %5, align 8, !tbaa !137, !noalias !3567 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !3567
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, label %._crit_edge.i.i.i.i

_ZN5arrow6StatusD2Ev.exit85.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i
  %i.al = add nuw nsw i64 %.046134.i.i.i.i, 1     ; 2 uses
  %exitcond148.not.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond148.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i, !llvm.loop !3571

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.357130.i.i.i.i = phi i64 [ %i.ay, %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i ], [ %.054140.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.am = add nsw i64 %.357130.i.i.i.i, %i.j      ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !40, !noalias !3567
  %i.aq = trunc i64 %i.am to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = lshr i8 %i.ap, %i.ar
  %i.at = trunc i8 %i.as to i1
  br i1 %i.at, label %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i

_ZN5arrow6StatusD2Ev.exit87.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !3567
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %8)
  %i.au = load ptr, ptr %6, align 8, !tbaa !137, !noalias !3567 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !3567
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, label %._crit_edge.i.i.i.i

_ZN5arrow6StatusD2Ev.exit93.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !3567
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(24) %9), !noalias !3567
  %i.aw = load ptr, ptr %7, align 8, !tbaa !137, !noalias !3567 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !3567
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, label %._crit_edge.i.i.i.i

_ZN5arrow6StatusD2Ev.exit91.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i
  %i.ay = add i64 %.357130.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ay, %i.ag
  br i1 %exitcond.not.i.i.i.i, label %.critedge65.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3572

.critedge65.i.i.i.i:                              ; preds = %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i, %.preheader120.i.i.i.i, %.preheader123.i.i.i.i, %.preheader.i.i.i.i
  %.458.i.i.i.i = phi i64 [ %i.ad, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ %i.ai, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader120.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader123.i.i.i.i ], [ %i.ag, %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i ] ; 2 uses
  %i.az = icmp slt i64 %.458.i.i.i.i, %i.r
  br i1 %i.az, label %.lr.ph141.i.i.i.i, label %._crit_edge.i.i.i.i.loopexit, !llvm.loop !3573

._crit_edge.i.i.i.i.loopexit:                     ; preds = %.critedge65.i.i.i.i
  store ptr null, ptr %0, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, %bb.a, %._crit_edge.i.i.i.i.loopexit
  %.sink = phi ptr [ %i.aj, %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i ], [ %i.aa, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i ], [ null, %bb.a ], [ null, %._crit_edge.i.i.i.i.loopexit ], [ %i.au, %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i ], [ %i.aw, %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i ]
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !3567
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !3561
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !3561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !3561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !3561
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !3553
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !3553
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_17ValueCountsActionESt17basic_string_viewIcSt11char_traitsIcEELb1EE8DoAppendILb1EEENSt9enable_ifIXT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb1EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !3574, !nonnull !148, !align !250 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1630 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3576, !nonnull !148, !align !1785
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 7 uses
  %i.f = sext i32 %i.e to i64                     ; 7 uses
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1630
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3577, !nonnull !148, !align !250
  %.val = load ptr, ptr %i.i, align 8, !tbaa !3556 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3578)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !3578
  store ptr null, ptr %4, align 8, !tbaa !137, !alias.scope !3581, !noalias !3578
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1582, !noalias !3578 ; 11 uses
  %sext.i.i = shl nsw i64 %i.f, 24
  %i.l = icmp slt i32 %i.e, 17
  br i1 %i.l, label %bb.b, label %bb.h, !prof !140

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i32 %i.e, 9
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i32 %i.e, 4
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.e, 0
  br i1 %i.o, label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.b, align 1, !tbaa !40, !noalias !3584
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  %i.s = lshr i64 %i.f, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40, !noalias !3584
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 8
  %i.x = add nuw nsw i64 %i.f, 4294967295
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !40, !noalias !3584
  %i.ab = zext i8 %i.aa to i64
  %.masked33.i.i.i.i = or disjoint i64 %i.r, %sext.i.i
  %.masked.i.i.i.i = or disjoint i64 %.masked33.i.i.i.i, %i.w
  %i.ac = or disjoint i64 %.masked.i.i.i.i, %i.ab
  %i.ad = mul i64 %i.ac, -7046029288634856825
  %i.ae = tail call noundef i64 @llvm.bswap.i64(i64 %i.ad)
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.ag = load i32, ptr %i.af, align 1, !noalias !3584
  %i.ah = load i32, ptr %i.b, align 1, !noalias !3584
  %i.ai = zext i32 %i.ag to i64
  %i.aj = mul i64 %i.ai, -7046029288634856825
  %i.ak = zext i32 %i.ah to i64
  %i.al = mul i64 %i.ak, -4417276706812531889
  %i.am = xor i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.bswap.i64(i64 %i.am)
  %i.ao = xor i64 %i.an, %i.f
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.g:                                             ; preds = %bb.b
  %i.ap = and i64 %i.f, 4294967295                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = load i64, ptr %i.ar, align 1, !noalias !3584
  %i.at = load i64, ptr %i.b, align 1, !noalias !3584
  %i.au = mul i64 %i.as, -7046029288634856825
  %i.av = mul i64 %i.at, -4417276706812531889
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.bswap.i64(i64 %i.aw)
  %i.ay = xor i64 %i.ax, %i.ap
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.az = tail call fastcc noundef i64 @_ZL33XXH_INLINE_XXH3_64bits_withSecretPKvmS0_m(ptr noundef captures(none) %i.b, i64 noundef %i.f) #37
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.1.i.i.i.i = phi i64 [ %i.az, %bb.h ], [ %i.ay, %bb.g ], [ %i.ae, %bb.e ], [ %i.ao, %bb.f ]
  %.1.i.fr.i.i.i = freeze i64 %.1.i.i.i.i         ; 2 uses
  %i.ba = icmp eq i64 %.1.i.fr.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.ba, i64 42, i64 %.1.i.fr.i.i.i
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i: ; preds = %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i, %bb.d
  %i.bb = phi i64 [ %spec.select.i.i.i, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ 1, %bb.d ] ; 4 uses
  %.in6.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bc = load ptr, ptr %.in6.i.i.i, align 8, !tbaa !1674, !noalias !3584
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bd = load i64, ptr %.in.i.i.i, align 8, !tbaa !1669, !noalias !3584
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 336
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  %i.bi = load ptr, ptr %i.be, align 8, !noalias !3584
  %i.bj = load i64, ptr %i.bf, align 8, !noalias !3584
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = load i64, ptr %i.bg, align 8, !noalias !3584
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = load ptr, ptr %i.bh, align 8, !noalias !3584
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ %i.bb, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %i.cg, %bb.m ]
  %.0.in.in.i.i.i.i.i.i = phi i64 [ %i.bb, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %.0.i.i.i.i.i.i, %bb.m ]
  %storemerge.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bd ; 2 uses
  %.0.in.i.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i.i, 5
  %.0.i.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i.i, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %storemerge.i.i.i.i.i.i ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !1798, !noalias !3584 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.bb
  br i1 %i.bq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !1801, !noalias !3584
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3, !noalias !3584 ; 3 uses
  %i.bw = icmp eq i64 %i.bk, %i.bt
  br i1 %i.bw, label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr i8, ptr %i.bu, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3, !noalias !3584
  br label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i

_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.by, %bb.k ], [ %i.bm, %bb.j ] ; 2 uses
  %storemerge.i.i.i.i.i.i.i.i.i.i = sub nsw i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.bv ; 2 uses
  %i.bz = sext i32 %i.bv to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bn, i64 %i.bz
  %i.cb = sext i32 %storemerge.i.i.i.i.i.i.i.i.i.i to i64
  %i.cc = icmp eq i32 %storemerge.i.i.i.i.i.i.i.i.i.i, %i.e
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i
  %i.cd = icmp eq i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.bv
  br i1 %i.cd, label %bb.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ca, ptr %i.b, i64 %i.cb), !noalias !3584
  %i.ce = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, %bb.i
  %i.cf = icmp eq i64 %i.bp, 0
  %i.cg = add i64 %.0.i.i.i.i.i.i, %storemerge.i.i.i.i.i.i
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.i, !llvm.loop !1802

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.l
  %i.ch = getelementptr i8, ptr %.val, i64 288
  %.val.val.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !950, !noalias !3584
  %i.ci = getelementptr inbounds [8 x i8], ptr %.val.val.i.i.i, i64 %i.bt ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !484, !noalias !3584
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !484, !noalias !3584
  br label %.thread.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.m
  %i.cl = load ptr, ptr %i.k, align 8, !tbaa !80, !noalias !3584
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !3584
  %i.co = invoke noundef i32 %i.cn(ptr noundef nonnull align 8 dereferenceable(356) %i.k)
          to label %.noexc.i unwind label %bb.o, !noalias !3578, !inline_history !3589

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !3584
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(256) %i.cp, ptr noundef %i.b, i32 noundef %i.e)
          to label %.noexc10.i unwind label %bb.o, !noalias !3578

.noexc10.i:                                       ; preds = %.noexc.i
  %i.cq = load ptr, ptr %2, align 8, !tbaa !137, !noalias !3584 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !3584
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN5arrow6StatusD2Ev.exit37.i.i.i, label %bb.r

_ZN5arrow6StatusD2Ev.exit37.i.i.i:                ; preds = %.noexc10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !3584
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bo, align 8, !tbaa !1798, !noalias !3590
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %i.co, ptr %i.ct, align 8, !tbaa !3, !noalias !3590
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !1670, !noalias !3590
  %i.cw = add i64 %i.cv, 1                        ; 2 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !1670, !noalias !3590
  %i.cx = shl i64 %i.cw, 1
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !1668, !noalias !3590 ; 2 uses
  %.not.i38.i.i.i = icmp ult i64 %i.cx, %i.cy
  br i1 %.not.i38.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40.i.i.i, !prof !140

_ZN5arrow6StatusD2Ev.exit40.thread.i.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit37.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !3584
  br label %_ZN5arrow6StatusD2Ev.exit44.i.i.i

_ZN5arrow6StatusD2Ev.exit40.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit37.i.i.i
  %i.cz = shl i64 %i.cy, 2
  invoke void @_ZN5arrow8internal9HashTableINS0_15BinaryMemoTableINS_13BinaryBuilderEE7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.cs, i64 noundef %i.cz)
          to label %.noexc11.i unwind label %bb.o, !noalias !3578

.noexc11.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit40.i.i.i
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !137, !noalias !3584 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !3584
  %i.da = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.da, label %_ZN5arrow6StatusD2Ev.exit44.i.i.i, label %bb.r

_ZN5arrow6StatusD2Ev.exit44.i.i.i:                ; preds = %.noexc11.i, %_ZN5arrow6StatusD2Ev.exit40.thread.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.val, i64 80
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_117ValueCountsAction15ObserveNotFoundIiEEvT_PNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(240) %i.db, ptr noundef nonnull %4)
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10BinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE6AppendERKNS_9ArraySpanE:bb.a

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !4419
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !882, !noalias !4419 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !884, !noalias !4419
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.w ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !4419
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !884, !noalias !4419 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  %storemerge.i.i.i = select i1 %i.ad, ptr %i.a, ptr %i.ac
  store ptr %storemerge.i.i.i, ptr %i.c, align 8, !tbaa !1630, !noalias !4419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32, !noalias !4419
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !1631, !noalias !4419
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !4419
  store i32 %i.af, ptr %i.d, align 4, !tbaa !3, !noalias !4419
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !884, !noalias !4419 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !4419
  store ptr %i.c, ptr %8, align 8, !tbaa !1633, !noalias !4419
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.d, ptr %i.ah, align 8, !tbaa !1631, !noalias !4419
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.ai, align 8, !tbaa !1636, !noalias !4419
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %10, ptr %i.aj, align 8, !tbaa !72, !noalias !4419
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !4419
  store ptr %i.d, ptr %9, align 8, !tbaa !1631, !noalias !4419
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !1636, !noalias !4419
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %11, ptr %i.al, align 8, !tbaa !72, !noalias !4419
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !4423
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ag, i64 noundef %i.w, i64 noundef %i.t), !noalias !4423
  %i.am = icmp sgt i64 %i.t, 0
  br i1 %i.am, label %.lr.ph141.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

.lr.ph141.i.i.i.i:                                ; preds = %bb.d, %.critedge65.i.i.i.i
  %.054140.i.i.i.i = phi i64 [ %.458.i.i.i.i, %.critedge65.i.i.i.i ], [ 0, %bb.d ] ; 7 uses
  %i.an = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3), !noalias !4423 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.an to i16 ; 6 uses
  %.sroa.9.0.extract.shift.i.i.i.i = lshr i32 %i.an, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i.i to i16
  %i.ao = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.9.0.extract.trunc.i.i.i.i
  br i1 %i.ao, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.lr.ph141.i.i.i.i
  %i.ap = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  %.not64136.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not64136.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i:                ; preds = %.preheader.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i
  %.053138.i.i.i.i = phi i64 [ %i.as, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.155137.i.i.i.i = phi i64 [ %i.at, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !4423
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(32) %8)
  %i.aq = load ptr, ptr %4, align 8, !tbaa !137, !noalias !4423 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !4423
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit79.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i
  %i.as = add nuw nsw i64 %.053138.i.i.i.i, 1     ; 2 uses
  %i.at = add nsw i64 %.155137.i.i.i.i, 1         ; 2 uses
  %exitcond149.not.i.i.i.i = icmp eq i64 %i.as, %i.ap
  br i1 %exitcond149.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, !llvm.loop !4426

bb.e:                                             ; preds = %.lr.ph141.i.i.i.i
  %i.au = icmp eq i32 %.sroa.9.0.extract.shift.i.i.i.i, 0
  br i1 %i.au, label %.preheader120.i.i.i.i, label %.preheader123.i.i.i.i

.preheader123.i.i.i.i:                            ; preds = %bb.e
  %.not129.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not129.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.critedge65.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader123.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.an, 32767
  %i.av = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.aw = add i64 %.054140.i.i.i.i, %i.av         ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader120.i.i.i.i:                            ; preds = %bb.e
  %i.ax = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %.not61132.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not61132.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i:    ; preds = %.preheader120.i.i.i.i
  %i.ay = add i64 %.054140.i.i.i.i, %i.ax
  br label %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i

_ZN5arrow6StatusD2Ev.exit81.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i
  %.046134.i.i.i.i = phi i64 [ %i.bb, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !4423
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %9), !noalias !4423
  %i.az = load ptr, ptr %5, align 8, !tbaa !137, !noalias !4423 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !4423
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit85.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i
  %i.bb = add nuw nsw i64 %.046134.i.i.i.i, 1     ; 2 uses
  %exitcond148.not.i.i.i.i = icmp eq i64 %i.bb, %i.ax
  br i1 %exitcond148.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i, !llvm.loop !4427

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.357130.i.i.i.i = phi i64 [ %i.bo, %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i ], [ %.054140.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.bc = add nsw i64 %.357130.i.i.i.i, %i.w      ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !40, !noalias !4423
  %i.bg = trunc i64 %i.bc to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = lshr i8 %i.bf, %i.bh
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i

_ZN5arrow6StatusD2Ev.exit87.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !4423
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %8)
  %i.bk = load ptr, ptr %6, align 8, !tbaa !137, !noalias !4423 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !4423
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit93.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !4423
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(24) %9), !noalias !4423
  %i.bm = load ptr, ptr %7, align 8, !tbaa !137, !noalias !4423 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !4423
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit91.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i
  %i.bo = add i64 %.357130.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bo, %i.aw
  br i1 %exitcond.not.i.i.i.i, label %.critedge65.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4428

.critedge65.i.i.i.i:                              ; preds = %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i, %.preheader120.i.i.i.i, %.preheader123.i.i.i.i, %.preheader.i.i.i.i
  %.458.i.i.i.i = phi i64 [ %i.at, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ %i.ay, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader120.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader123.i.i.i.i ], [ %i.aw, %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i ] ; 2 uses
  %i.bp = icmp slt i64 %.458.i.i.i.i, %i.t
  br i1 %i.bp, label %.lr.ph141.i.i.i.i, label %._crit_edge.i.i.i.i.loopexit, !llvm.loop !4429

._crit_edge.i.i.i.i.loopexit:                     ; preds = %.critedge65.i.i.i.i
  store ptr null, ptr %0, align 8
  br label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, %bb.d, %._crit_edge.i.i.i.i.loopexit
  %.sink = phi ptr [ %i.az, %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i ], [ %i.aq, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i ], [ null, %bb.d ], [ null, %._crit_edge.i.i.i.i.loopexit ], [ %i.bk, %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i ], [ %i.bm, %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i ]
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !4423
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !4419
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !4419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32, !noalias !4419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !4419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !4419
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10BinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10BinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit: ; preds = %bb.c, %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !4419
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !4405
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !4405
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10BinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !4430, !nonnull !148, !align !250
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1630
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4432, !nonnull !148, !align !1785
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4433, !nonnull !148, !align !250 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1631 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 3 uses
  %i.l = sub nsw i32 %i.k, %i.e                   ; 6 uses
  %i.m = sext i32 %i.l to i64                     ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.n, ptr %i.i, align 8, !tbaa !1631
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !4432, !nonnull !148, !align !1785
  store i32 %i.k, ptr %i.o, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4434, !nonnull !148, !align !250
  %.val = load ptr, ptr %i.q, align 8, !tbaa !4408 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4435)
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1582, !noalias !4435 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4441)
  %sext.i.i = shl nsw i64 %i.m, 24
  %i.t = icmp slt i32 %i.l, 17
  br i1 %i.t, label %bb.b, label %bb.h, !prof !140

bb.b:                                             ; preds = %bb.a
  %i.u = icmp ult i32 %i.l, 9
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %i.l, 4
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %i.k, %i.e
  br i1 %i.w, label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.g, align 1, !tbaa !40, !noalias !4444
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 16
  %i.aa = lshr i64 %i.m, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !40, !noalias !4444
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 8
  %i.af = add nuw nsw i64 %i.m, 4294967295
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40, !noalias !4444
  %i.aj = zext i8 %i.ai to i64
  %.masked33.i.i.i.i = or disjoint i64 %i.z, %sext.i.i
  %.masked.i.i.i.i = or disjoint i64 %.masked33.i.i.i.i, %i.ae
  %i.ak = or disjoint i64 %.masked.i.i.i.i, %i.aj
  %i.al = mul i64 %i.ak, -7046029288634856825
  %i.am = tail call noundef i64 @llvm.bswap.i64(i64 %i.al)
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ap = load i32, ptr %i.ao, align 1, !noalias !4444
  %i.aq = load i32, ptr %i.g, align 1, !noalias !4444
  %i.ar = zext i32 %i.ap to i64
  %i.as = mul i64 %i.ar, -7046029288634856825
  %i.at = zext i32 %i.aq to i64
  %i.au = mul i64 %i.at, -4417276706812531889
  %i.av = xor i64 %i.au, %i.as
  %i.aw = tail call i64 @llvm.bswap.i64(i64 %i.av)
  %i.ax = xor i64 %i.aw, %i.m
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.g:                                             ; preds = %bb.b
  %i.ay = and i64 %i.m, 4294967295                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = load i64, ptr %i.ba, align 1, !noalias !4444
  %i.bc = load i64, ptr %i.g, align 1, !noalias !4444
  %i.bd = mul i64 %i.bb, -7046029288634856825
  %i.be = mul i64 %i.bc, -4417276706812531889
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.bswap.i64(i64 %i.bf)
  %i.bh = xor i64 %i.bg, %i.ay
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.bi = tail call fastcc noundef i64 @_ZL33XXH_INLINE_XXH3_64bits_withSecretPKvmS0_m(ptr noundef captures(none) %i.g, i64 noundef %i.m) #37
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.1.i.i.i.i = phi i64 [ %i.bi, %bb.h ], [ %i.bh, %bb.g ], [ %i.am, %bb.e ], [ %i.ax, %bb.f ]
  %.1.i.fr.i.i.i = freeze i64 %.1.i.i.i.i         ; 2 uses
  %i.bj = icmp eq i64 %.1.i.fr.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.bj, i64 42, i64 %.1.i.fr.i.i.i
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i: ; preds = %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i, %bb.d
  %i.bk = phi i64 [ %spec.select.i.i.i, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ 1, %bb.d ] ; 4 uses
  %.in6.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bl = load ptr, ptr %.in6.i.i.i, align 8, !tbaa !1674, !noalias !4444
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bm = load i64, ptr %.in.i.i.i, align 8, !tbaa !1669, !noalias !4444
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 336
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  %i.br = load ptr, ptr %i.bn, align 8, !noalias !4444
  %i.bs = load i64, ptr %i.bo, align 8, !noalias !4444
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = load i64, ptr %i.bp, align 8, !noalias !4444
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = load ptr, ptr %i.bq, align 8, !noalias !4444
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %i.cp, %bb.m ]
  %.0.in.in.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %.0.i.i.i.i.i.i, %bb.m ]
  %storemerge.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bm ; 2 uses
  %.0.in.i.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i.i, 5
  %.0.i.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %storemerge.i.i.i.i.i.i ; 4 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1798, !noalias !4444 ; 2 uses
  %i.bz = icmp eq i64 %i.by, %i.bk
  br i1 %i.bz, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1801, !noalias !4444 ; 3 uses
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3, !noalias !4444 ; 3 uses
  %i.cf = icmp eq i64 %i.bt, %i.cc
  br i1 %i.cf, label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !4444
  br label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i

_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ch, %bb.k ], [ %i.bv, %bb.j ] ; 2 uses
  %storemerge.i.i.i.i.i.i.i.i.i.i = sub nsw i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.ce ; 2 uses
  %i.ci = sext i32 %i.ce to i64
  %i.cj = getelementptr inbounds i8, ptr %i.bw, i64 %i.ci
  %i.ck = sext i32 %storemerge.i.i.i.i.i.i.i.i.i.i to i64
  %i.cl = icmp eq i32 %storemerge.i.i.i.i.i.i.i.i.i.i, %i.l
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i
  %i.cm = icmp eq i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.ce
  br i1 %i.cm, label %_ZN5arrow6StatusD2Ev.exit43.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.cj, ptr %i.g, i64 %i.ck), !noalias !4444
  %i.cn = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cn, label %_ZN5arrow6StatusD2Ev.exit43.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, %bb.i
  %i.co = icmp eq i64 %i.by, 0
  %i.cp = add i64 %.0.i.i.i.i.i.i, %storemerge.i.i.i.i.i.i
  br i1 %i.co, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.i, !llvm.loop !1802

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.m
  %i.cq = load ptr, ptr %i.s, align 8, !tbaa !80, !noalias !4444
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !4444
  %i.ct = tail call noundef i32 %i.cs(ptr noundef nonnull align 8 dereferenceable(356) %i.s), !noalias !4444, !inline_history !4445 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !4444
  %i.cu = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(256) %i.cu, ptr noundef %i.g, i32 noundef %i.l), !noalias !4444
  %i.cv = load ptr, ptr %2, align 8, !tbaa !137, !noalias !4444 ; 2 uses
  store ptr %i.cv, ptr %0, align 8, !tbaa !137, !alias.scope !4444
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !4444
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN5arrow6StatusD2Ev.exit36.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10BinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit36.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !4444
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !1798, !noalias !4446
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %i.ct, ptr %i.cy, align 8, !tbaa !3, !noalias !4446
  %i.cz = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !1670, !noalias !4446
  %i.db = add i64 %i.da, 1                        ; 2 uses
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !1670, !noalias !4446
  %i.dc = shl i64 %i.db, 1
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !1668, !noalias !4446 ; 2 uses
  %.not.i37.i.i.i = icmp ult i64 %i.dc, %i.dd
  br i1 %.not.i37.i.i.i, label %_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit39.i.i.i, !prof !140

_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit36.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !4444
  br label %_ZN5arrow6StatusD2Ev.exit43.i.i.i

_ZN5arrow6StatusD2Ev.exit39.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit36.i.i.i
  %i.de = shl i64 %i.dd, 2
  call void @_ZN5arrow8internal9HashTableINS0_15BinaryMemoTableINS_13BinaryBuilderEE7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.cx, i64 noundef %i.de), !noalias !4444
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !137, !noalias !4444 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !137, !alias.scope !4444
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !4444
  %i.df = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.df, label %_ZN5arrow6StatusD2Ev.exit43.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_10BinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit43.i.i.i:                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.l, %_ZN5arrow6StatusD2Ev.exit39.i.i.i, %_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i
  %.sink14.i.i.i = phi i32 [ %i.ct, %_ZN5arrow6StatusD2Ev.exit39.i.i.i ], [ %i.ct, %_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i ], [ %i.cb, %bb.l ], [ %i.cb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !950, !noalias !4444
  %i.di = getelementptr inbounds nuw i8, ptr %.val, i64 184 ; 3 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !951, !noalias !4444 ; 2 uses
  %i.dk = sdiv i64 %i.dj, 8
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %i.dk ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !40, !noalias !4444
  %i.dn = srem i64 %i.dj, 8
  %i.do = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !40, !noalias !4444
  %i.dq = or i8 %i.dp, %i.dm
  store i8 %i.dq, ptr %i.dl, align 1, !tbaa !40, !noalias !4444
  %i.dr = load i64, ptr %i.di, align 8, !tbaa !951, !noalias !4444
  %i.ds = add nsw i64 %i.dr, 1
  store i64 %i.ds, ptr %i.di, align 8, !tbaa !951, !noalias !4444
  %i.dt = getelementptr inbounds nuw i8, ptr %.val, i64 208 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE6AppendERKNS_9ArraySpanE:bb.a
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !4603
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !882, !noalias !4603
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !884, !noalias !4603
  %i.y = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.u
  store ptr %i.y, ptr %i.a, align 8, !tbaa !2166, !noalias !4603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !4603
  %i.z = call { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128) %2), !noalias !4603
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !2168, !noalias !4603
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !884, !noalias !4603 ; 2 uses
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !882, !noalias !4603 ; 2 uses
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !825, !noalias !4603 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !4603
  store ptr %9, ptr %8, align 8, !tbaa !72, !noalias !4603
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !2169, !noalias !4603
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %i.af, align 8, !tbaa !2171, !noalias !4603
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !4607
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ab, i64 noundef %i.ac, i64 noundef %i.ad), !noalias !4607
  %i.ag = icmp sgt i64 %i.ad, 0
  br i1 %i.ag, label %.lr.ph26.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

.lr.ph26.i.i.i.i:                                 ; preds = %bb.d, %.critedge65.i.i.i.i
  %.05425.i.i.i.i = phi i64 [ %.458.i.i.i.i, %.critedge65.i.i.i.i ], [ 0, %bb.d ] ; 7 uses
  %i.ah = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3), !noalias !4607 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ah to i16 ; 6 uses
  %.sroa.9.0.extract.shift.i.i.i.i = lshr i32 %i.ah, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i.i to i16
  %i.ai = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.9.0.extract.trunc.i.i.i.i
  br i1 %i.ai, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.lr.ph26.i.i.i.i
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  %.not6421.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not6421.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i:                ; preds = %.preheader.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i
  %.05323.i.i.i.i = phi i64 [ %i.am, %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.15522.i.i.i.i = phi i64 [ %i.an, %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i ], [ %.05425.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !4607
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 noundef %.15522.i.i.i.i), !noalias !4607
  %i.ak = load ptr, ptr %4, align 8, !tbaa !137, !noalias !4607 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !4607
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit80.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i
  %i.am = add nuw nsw i64 %.05323.i.i.i.i, 1      ; 2 uses
  %i.an = add nsw i64 %.15522.i.i.i.i, 1          ; 2 uses
  %exitcond34.not.i.i.i.i = icmp eq i64 %i.am, %i.aj
  br i1 %exitcond34.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, !llvm.loop !4610

bb.e:                                             ; preds = %.lr.ph26.i.i.i.i
  %i.ao = icmp eq i32 %.sroa.9.0.extract.shift.i.i.i.i, 0
  br i1 %i.ao, label %.preheader5.i.i.i.i, label %.preheader8.i.i.i.i

.preheader8.i.i.i.i:                              ; preds = %bb.e
  %.not14.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not14.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.critedge65.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader8.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.ah, 32767
  %i.ap = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.aq = add i64 %.05425.i.i.i.i, %i.ap          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader5.i.i.i.i:                              ; preds = %bb.e
  %i.ar = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %.not6117.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not6117.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit82.preheader.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit82.preheader.i.i.i.i:    ; preds = %.preheader5.i.i.i.i
  %i.as = add i64 %.05425.i.i.i.i, %i.ar
  br label %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i

_ZN5arrow6StatusD2Ev.exit82.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit86.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit82.preheader.i.i.i.i
  %.04619.i.i.i.i = phi i64 [ %i.av, %_ZN5arrow6StatusD2Ev.exit86.i.i.i.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit82.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !4607
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %5, ptr nonnull align 8 dereferenceable(352) %1), !noalias !4607
  %i.at = load ptr, ptr %5, align 8, !tbaa !137, !noalias !4607 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !4607
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN5arrow6StatusD2Ev.exit86.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit86.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i
  %i.av = add nuw nsw i64 %.04619.i.i.i.i, 1      ; 2 uses
  %exitcond33.not.i.i.i.i = icmp eq i64 %i.av, %i.ar
  br i1 %exitcond33.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i, !llvm.loop !4611

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.35715.i.i.i.i = phi i64 [ %i.bi, %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i ], [ %.05425.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.aw = add nsw i64 %.35715.i.i.i.i, %i.ac      ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !40, !noalias !4607
  %i.ba = trunc i64 %i.aw to i8
  %i.bb = and i8 %i.ba, 7
  %i.bc = lshr i8 %i.az, %i.bb
  %i.bd = trunc i8 %i.bc to i1
  br i1 %i.bd, label %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit94.i.i.i.i

_ZN5arrow6StatusD2Ev.exit88.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !4607
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 noundef %.35715.i.i.i.i), !noalias !4607
  %i.be = load ptr, ptr %6, align 8, !tbaa !137, !noalias !4607 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !4607
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit94.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !4607
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %7, ptr nonnull align 8 dereferenceable(352) %1), !noalias !4607
  %i.bg = load ptr, ptr %7, align 8, !tbaa !137, !noalias !4607 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !4607
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit92.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit94.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i
  %i.bi = add i64 %.35715.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bi, %i.aq
  br i1 %exitcond.not.i.i.i.i, label %.critedge65.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4612

.critedge65.i.i.i.i:                              ; preds = %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit86.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i, %.preheader5.i.i.i.i, %.preheader8.i.i.i.i, %.preheader.i.i.i.i
  %.458.i.i.i.i = phi i64 [ %i.an, %_ZN5arrow6StatusD2Ev.exit80.i.i.i.i ], [ %i.as, %_ZN5arrow6StatusD2Ev.exit86.i.i.i.i ], [ %.05425.i.i.i.i, %.preheader.i.i.i.i ], [ %.05425.i.i.i.i, %.preheader5.i.i.i.i ], [ %.05425.i.i.i.i, %.preheader8.i.i.i.i ], [ %i.aq, %_ZN5arrow6StatusD2Ev.exit92.i.i.i.i ] ; 2 uses
  %i.bj = icmp slt i64 %.458.i.i.i.i, %i.ad
  br i1 %i.bj, label %.lr.ph26.i.i.i.i, label %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i, !llvm.loop !4613

_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i: ; preds = %.critedge65.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit94.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, %bb.d
  %.sink = phi ptr [ %i.bg, %_ZN5arrow6StatusD2Ev.exit94.i.i.i.i ], [ %i.ak, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i ], [ null, %bb.d ], [ %i.at, %_ZN5arrow6StatusD2Ev.exit82.i.i.i.i ], [ %i.be, %_ZN5arrow6StatusD2Ev.exit88.i.i.i.i ], [ null, %.critedge65.i.i.i.i ]
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !4607
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !4603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !4603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !4603
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit: ; preds = %bb.c, %_ZN5arrow8internalL14VisitBitBlocksIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS3_NS8_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSE_E_ZNSG_ILb0EEESK_SN_EUlvE_EESI_SN_OT_OT0_EUllE_ZNS5_ISO_SP_EESI_SN_SR_ST_EUlvE_EESI_PKhllSR_ST_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !4591
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !4614, !nonnull !148, !align !250 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4616, !nonnull !148, !align !250
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2166
  %i.e = getelementptr inbounds [16 x i8], ptr %i.d, i64 %2 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 9 uses
  %i.g = icmp slt i32 %i.f, 13
  br i1 %i.g, label %bb.b, label %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit

_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4617, !nonnull !148, !align !250
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2168
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1081 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1083, !range !147, !noundef !148
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %i.r, ptr %i.t, ptr null, !prof !140
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x ; 3 uses
  %i.z = zext nneg i32 %i.f to i64                ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !4594 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4618)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 344
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1582, !noalias !4618 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4624)
  %i.ac = icmp samesign ult i32 %i.f, 17
  br i1 %i.ac, label %.thread, label %bb.g, !prof !2247

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 9 uses
  %i.ae = sext i32 %i.f to i64                    ; 6 uses
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !4594 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val6, i64 344
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1582, !noalias !4627 ; 4 uses
  %sext.i.i7 = shl nsw i64 %i.ae, 24
  %i.ah = icmp ult i32 %i.f, 9
  br i1 %i.ah, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp samesign ult i32 %i.f, 4
  br i1 %i.ai, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp eq i32 %i.f, 0
  br i1 %i.aj, label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %i.ad, align 4, !tbaa !40, !noalias !4629
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 16
  %i.an = lshr i64 %i.ae, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !40, !noalias !4629
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 8
  %i.as = add nuw nsw i64 %i.ae, 4294967295
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !40, !noalias !4629
  %i.aw = zext i8 %i.av to i64
  %.masked33.i.i.i.i = or disjoint i64 %i.am, %sext.i.i7
  %.masked.i.i.i.i = or disjoint i64 %.masked33.i.i.i.i, %i.ar
  %i.ax = or disjoint i64 %.masked.i.i.i.i, %i.aw
  %i.ay = mul i64 %i.ax, -7046029288634856825
  %i.az = tail call noundef i64 @llvm.bswap.i64(i64 %i.ay)
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 1, !noalias !4629
  %i.bd = load i32, ptr %i.ad, align 4, !noalias !4629
  %i.be = zext i32 %i.bc to i64
  %i.bf = mul i64 %i.be, -7046029288634856825
  %i.bg = zext i32 %i.bd to i64
  %i.bh = mul i64 %i.bg, -4417276706812531889
  %i.bi = xor i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.bswap.i64(i64 %i.bi)
  %i.bk = xor i64 %i.bj, %i.ae
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

.thread:                                          ; preds = %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit, %bb.b
  %i.bl = phi ptr [ %i.ad, %bb.b ], [ %i.y, %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit ] ; 3 uses
  %i.bm = phi i64 [ %i.ae, %bb.b ], [ %i.z, %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit ]
  %.val1014 = phi ptr [ %.val6, %bb.b ], [ %.val, %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit ]
  %i.bn = phi ptr [ %i.ag, %bb.b ], [ %i.ab, %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit ]
  %i.bo = and i64 %i.bm, 4294967295               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %i.br = load i64, ptr %i.bq, align 1, !noalias !4629
  %i.bs = load i64, ptr %i.bl, align 1, !noalias !4629
  %i.bt = mul i64 %i.br, -7046029288634856825
  %i.bu = mul i64 %i.bs, -4417276706812531889
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.bswap.i64(i64 %i.bv)
  %i.bx = xor i64 %i.bw, %i.bo
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.g:                                             ; preds = %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit
  %i.by = tail call fastcc noundef i64 @_ZL33XXH_INLINE_XXH3_64bits_withSecretPKvmS0_m(ptr noundef captures(none) %i.y, i64 noundef %i.z) #37
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i: ; preds = %bb.g, %.thread, %bb.f, %bb.e
  %i.bz = phi ptr [ %i.ab, %bb.g ], [ %i.bn, %.thread ], [ %i.ag, %bb.e ], [ %i.ag, %bb.f ]
  %.val9 = phi ptr [ %.val, %bb.g ], [ %.val1014, %.thread ], [ %.val6, %bb.e ], [ %.val6, %bb.f ]
  %i.ca = phi ptr [ %i.y, %bb.g ], [ %i.bl, %.thread ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ]
  %.1.i.i.i.i = phi i64 [ %i.by, %bb.g ], [ %i.bx, %.thread ], [ %i.az, %bb.e ], [ %i.bk, %bb.f ]
  %.1.i.fr.i.i.i = freeze i64 %.1.i.i.i.i         ; 2 uses
  %i.cb = icmp eq i64 %.1.i.fr.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.cb, i64 42, i64 %.1.i.fr.i.i.i
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i: ; preds = %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i, %bb.d
  %i.cc = phi ptr [ %i.bz, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ %i.ag, %bb.d ] ; 11 uses
  %.val8 = phi ptr [ %.val9, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ %.val6, %bb.d ] ; 5 uses
  %i.cd = phi ptr [ %i.ca, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ce = phi i64 [ %spec.select.i.i.i, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ 1, %bb.d ] ; 4 uses
  %.in6.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cf = load ptr, ptr %.in6.i.i.i, align 8, !tbaa !1674, !noalias !4629
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %.in.i.i.i, align 8, !tbaa !1669, !noalias !4629
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 264
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 336
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 320
  %i.cl = load ptr, ptr %i.ch, align 8, !noalias !4629
  %i.cm = load i64, ptr %i.ci, align 8, !noalias !4629
  %i.cn = add nsw i64 %i.cm, -1
  %i.co = load i64, ptr %i.cj, align 8, !noalias !4629
  %i.cp = trunc i64 %i.co to i32
  %i.cq = load ptr, ptr %i.ck, align 8, !noalias !4629
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ %i.ce, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %i.dj, %bb.l ]
  %.0.in.in.i.i.i.i.i.i = phi i64 [ %i.ce, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %.0.i.i.i.i.i.i, %bb.l ]
  %storemerge.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.cg ; 2 uses
  %.0.in.i.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i.i, 5
  %.0.i.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i.i, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %storemerge.i.i.i.i.i.i ; 4 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1798, !noalias !4629 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, %i.ce
  br i1 %i.ct, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !1801, !noalias !4629 ; 3 uses
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !4629 ; 3 uses
  %i.cz = icmp eq i64 %i.cn, %i.cw
  br i1 %i.cz, label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr i8, ptr %i.cx, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3, !noalias !4629
  br label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i

_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.db, %bb.j ], [ %i.cp, %bb.i ] ; 2 uses
  %storemerge.i.i.i.i.i.i.i.i.i.i = sub nsw i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.cy ; 2 uses
  %i.dc = sext i32 %i.cy to i64
  %i.dd = getelementptr inbounds i8, ptr %i.cq, i64 %i.dc
  %i.de = sext i32 %storemerge.i.i.i.i.i.i.i.i.i.i to i64
  %i.df = icmp eq i32 %storemerge.i.i.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i
  %i.dg = icmp eq i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.cy
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit43.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.dd, ptr %i.cd, i64 %i.de), !noalias !4629
  %i.dh = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dh, label %_ZN5arrow6StatusD2Ev.exit43.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, %bb.h
  %i.di = icmp eq i64 %i.cs, 0
  %i.dj = add i64 %.0.i.i.i.i.i.i, %storemerge.i.i.i.i.i.i
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.h, !llvm.loop !1802

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.l
  %i.dk = load ptr, ptr %i.cc, align 8, !tbaa !80, !noalias !4629
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !4629
  %i.dn = tail call noundef i32 %i.dm(ptr noundef nonnull align 8 dereferenceable(356) %i.cc), !noalias !4629, !inline_history !4630 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !4629
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(256) %i.do, ptr noundef %i.cd, i32 noundef %i.f), !noalias !4629
  %i.dp = load ptr, ptr %3, align 8, !tbaa !137, !noalias !4629 ; 2 uses
  store ptr %i.dp, ptr %0, align 8, !tbaa !137, !alias.scope !4629
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !4629
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZN5arrow6StatusD2Ev.exit36.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit36.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !4629
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store i64 %i.ce, ptr %i.cr, align 8, !tbaa !1798, !noalias !4631
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.dn, ptr %i.ds, align 8, !tbaa !3, !noalias !4631
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !1670, !noalias !4631
  %i.dv = add i64 %i.du, 1                        ; 2 uses
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !1670, !noalias !4631
  %i.dw = shl i64 %i.dv, 1
  %i.dx = load i64, ptr %i.dr, align 8, !tbaa !1668, !noalias !4631 ; 2 uses
  %.not.i37.i.i.i = icmp ult i64 %i.dw, %i.dx
  br i1 %.not.i37.i.i.i, label %_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit39.i.i.i, !prof !140

_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit36.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !4629
  br label %_ZN5arrow6StatusD2Ev.exit43.i.i.i

_ZN5arrow6StatusD2Ev.exit39.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit36.i.i.i
  %i.dy = shl i64 %i.dx, 2
  call void @_ZN5arrow8internal9HashTableINS0_15BinaryMemoTableINS_13BinaryBuilderEE7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.dr, i64 noundef %i.dy), !noalias !4629
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !137, !noalias !4629 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !137, !alias.scope !4629
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !4629
  %i.dz = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.dz, label %_ZN5arrow6StatusD2Ev.exit43.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_14BinaryViewTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit43.i.i.i:                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.k, %_ZN5arrow6StatusD2Ev.exit39.i.i.i, %_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i
  %.sink14.i.i.i = phi i32 [ %i.dn, %_ZN5arrow6StatusD2Ev.exit39.i.i.i ], [ %i.dn, %_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i ], [ %i.cv, %bb.k ], [ %i.cv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.val8, i64 152
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !950, !noalias !4629
  %i.ec = getelementptr inbounds nuw i8, ptr %.val8, i64 184 ; 3 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !951, !noalias !4629 ; 2 uses
  %i.ee = sdiv i64 %i.ed, 8
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !40, !noalias !4629
  %i.eh = srem i64 %i.ed, 8
  %i.ei = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !40, !noalias !4629
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE6AppendERKNS_9ArraySpanE:bb.a
_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.m = shl nsw i64 %i.g, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.l, i64 %i.m)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !80, !noalias !4674
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !4674
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(144) %i.e, i64 noundef %.sroa.speculated.i.i.i), !inline_history !4025
  %.pr = load ptr, ptr %12, align 8, !tbaa !137   ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.q = icmp eq ptr %.pr, null
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32, !noalias !4679
  store ptr %1, ptr %10, align 8, !tbaa !4682, !noalias !4679
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !4679
  store ptr %1, ptr %11, align 8, !tbaa !4685, !noalias !4679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !4687
  %i.r = load ptr, ptr %2, align 8, !tbaa !2298, !noalias !4687 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80, !noalias !4687
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !noalias !4687
  %i.v = call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(72) %i.r), !noalias !4687, !inline_history !4692 ; 2 uses
  store i32 %i.v, ptr %i.a, align 4, !tbaa !3, !noalias !4687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !4687
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !882, !noalias !4687 ; 3 uses
  %i.y = sext i32 %i.v to i64
  %i.z = mul nsw i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !884, !noalias !4687
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.z
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !1630, !noalias !4687
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !884, !noalias !4687 ; 2 uses
  %i.af = load i64, ptr %i.c, align 8, !tbaa !825, !noalias !4687 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !4687
  store ptr %i.b, ptr %8, align 8, !tbaa !1633, !noalias !4687
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.ag, align 8, !tbaa !1631, !noalias !4687
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %10, ptr %i.ah, align 8, !tbaa !72, !noalias !4687
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32, !noalias !4687
  store ptr %i.b, ptr %9, align 8, !tbaa !1633, !noalias !4687
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.ai, align 8, !tbaa !1631, !noalias !4687
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %11, ptr %i.aj, align 8, !tbaa !72, !noalias !4687
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !4693
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ae, i64 noundef %i.x, i64 noundef %i.af), !noalias !4693
  %i.ak = icmp sgt i64 %i.af, 0
  br i1 %i.ak, label %.lr.ph141.i.i.i.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit

.lr.ph141.i.i.i.i:                                ; preds = %bb.b, %.critedge65.i.i.i.i
  %.054140.i.i.i.i = phi i64 [ %.458.i.i.i.i, %.critedge65.i.i.i.i ], [ 0, %bb.b ] ; 7 uses
  %i.al = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %3), !noalias !4693 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.al to i16 ; 6 uses
  %.sroa.9.0.extract.shift.i.i.i.i = lshr i32 %i.al, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i.i to i16
  %i.am = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.9.0.extract.trunc.i.i.i.i
  br i1 %i.am, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph141.i.i.i.i
  %i.an = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  %.not64136.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not64136.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i:                ; preds = %.preheader.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i
  %.053138.i.i.i.i = phi i64 [ %i.aq, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %.155137.i.i.i.i = phi i64 [ %i.ar, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !4693
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(24) %8)
  %i.ao = load ptr, ptr %4, align 8, !tbaa !137, !noalias !4693 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !4693
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit

_ZN5arrow6StatusD2Ev.exit79.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i
  %i.aq = add nuw nsw i64 %.053138.i.i.i.i, 1     ; 2 uses
  %i.ar = add nsw i64 %.155137.i.i.i.i, 1         ; 2 uses
  %exitcond149.not.i.i.i.i = icmp eq i64 %i.aq, %i.an
  br i1 %exitcond149.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, !llvm.loop !4696

bb.c:                                             ; preds = %.lr.ph141.i.i.i.i
  %i.as = icmp eq i32 %.sroa.9.0.extract.shift.i.i.i.i, 0
  br i1 %i.as, label %.preheader120.i.i.i.i, label %.preheader123.i.i.i.i

.preheader123.i.i.i.i:                            ; preds = %bb.c
  %.not129.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not129.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.critedge65.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader123.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.al, 32767
  %i.at = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.au = add i64 %.054140.i.i.i.i, %i.at         ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader120.i.i.i.i:                            ; preds = %bb.c
  %i.av = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %.not61132.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %.not61132.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i, label %.critedge65.i.i.i.i

_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i:    ; preds = %.preheader120.i.i.i.i
  %i.aw = add i64 %.054140.i.i.i.i, %i.av
  br label %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i

_ZN5arrow6StatusD2Ev.exit81.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i
  %.046134.i.i.i.i = phi i64 [ %i.az, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit81.preheader.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !4693
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %9), !noalias !4693
  %i.ax = load ptr, ptr %5, align 8, !tbaa !137, !noalias !4693 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !4693
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit

_ZN5arrow6StatusD2Ev.exit85.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i
  %i.az = add nuw nsw i64 %.046134.i.i.i.i, 1     ; 2 uses
  %exitcond148.not.i.i.i.i = icmp eq i64 %i.az, %i.av
  br i1 %exitcond148.not.i.i.i.i, label %.critedge65.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i, !llvm.loop !4697

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.357130.i.i.i.i = phi i64 [ %i.bm, %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i ], [ %.054140.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.ba = add nsw i64 %.357130.i.i.i.i, %i.x      ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !40, !noalias !4693
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = trunc i8 %i.bg to i1
  br i1 %i.bh, label %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i

_ZN5arrow6StatusD2Ev.exit87.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !4693
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull readonly align 8 dereferenceable(24) %8)
  %i.bi = load ptr, ptr %6, align 8, !tbaa !137, !noalias !4693 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !4693
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit

_ZN5arrow6StatusD2Ev.exit93.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !4693
  call fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUlvE_clEv(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(24) %9), !noalias !4693
  %i.bk = load ptr, ptr %7, align 8, !tbaa !137, !noalias !4693 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !4693
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit

_ZN5arrow6StatusD2Ev.exit91.i.i.i.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i
  %i.bm = add i64 %.357130.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bm, %i.au
  br i1 %exitcond.not.i.i.i.i, label %.critedge65.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4698

.critedge65.i.i.i.i:                              ; preds = %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i, %.preheader120.i.i.i.i, %.preheader123.i.i.i.i, %.preheader.i.i.i.i
  %.458.i.i.i.i = phi i64 [ %i.ar, %_ZN5arrow6StatusD2Ev.exit79.i.i.i.i ], [ %i.aw, %_ZN5arrow6StatusD2Ev.exit85.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader120.i.i.i.i ], [ %.054140.i.i.i.i, %.preheader123.i.i.i.i ], [ %i.au, %_ZN5arrow6StatusD2Ev.exit91.i.i.i.i ] ; 2 uses
  %i.bn = icmp slt i64 %.458.i.i.i.i, %i.af
  br i1 %i.bn, label %.lr.ph141.i.i.i.i, label %._crit_edge.i.i.i.i.loopexit, !llvm.loop !4699

._crit_edge.i.i.i.i.loopexit:                     ; preds = %.critedge65.i.i.i.i
  store ptr null, ptr %0, align 8
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit

_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, %bb.b, %._crit_edge.i.i.i.i.loopexit
  %.sink = phi ptr [ %i.ax, %_ZN5arrow6StatusD2Ev.exit81.i.i.i.i ], [ %i.ao, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i ], [ null, %bb.b ], [ null, %._crit_edge.i.i.i.i.loopexit ], [ %i.bk, %_ZN5arrow6StatusD2Ev.exit93.i.i.i.i ], [ %i.bi, %_ZN5arrow6StatusD2Ev.exit87.i.i.i.i ]
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !4693
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32, !noalias !4687
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !4687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !4687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !4687
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !4679
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32, !noalias !4679
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_19FixedSizeBinaryTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_117RegularHashKernelIS2_NS7_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEEUlSD_E_ZNSF_ILb0EEESJ_SM_EUlvE_EESH_SM_OT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !4700, !nonnull !148, !align !250 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1630 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4702, !nonnull !148, !align !1785
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 7 uses
  %i.f = sext i32 %i.e to i64                     ; 7 uses
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1630
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4703, !nonnull !148, !align !250
  %.val = load ptr, ptr %i.i, align 8, !tbaa !4682 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4704)
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 344
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1582, !noalias !4704 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4710)
  %sext.i.i = shl nsw i64 %i.f, 24
  %i.l = icmp slt i32 %i.e, 17
  br i1 %i.l, label %bb.b, label %bb.h, !prof !140

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i32 %i.e, 9
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i32 %i.e, 4
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.e, 0
  br i1 %i.o, label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.b, align 1, !tbaa !40, !noalias !4713
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  %i.s = lshr i64 %i.f, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40, !noalias !4713
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 8
  %i.x = add nuw nsw i64 %i.f, 4294967295
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !40, !noalias !4713
  %i.ab = zext i8 %i.aa to i64
  %.masked33.i.i.i.i = or disjoint i64 %i.r, %sext.i.i
  %.masked.i.i.i.i = or disjoint i64 %.masked33.i.i.i.i, %i.w
  %i.ac = or disjoint i64 %.masked.i.i.i.i, %i.ab
  %i.ad = mul i64 %i.ac, -7046029288634856825
  %i.ae = tail call noundef i64 @llvm.bswap.i64(i64 %i.ad)
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.ag = load i32, ptr %i.af, align 1, !noalias !4713
  %i.ah = load i32, ptr %i.b, align 1, !noalias !4713
  %i.ai = zext i32 %i.ag to i64
  %i.aj = mul i64 %i.ai, -7046029288634856825
  %i.ak = zext i32 %i.ah to i64
  %i.al = mul i64 %i.ak, -4417276706812531889
  %i.am = xor i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.bswap.i64(i64 %i.am)
  %i.ao = xor i64 %i.an, %i.f
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.g:                                             ; preds = %bb.b
  %i.ap = and i64 %i.f, 4294967295                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = load i64, ptr %i.ar, align 1, !noalias !4713
  %i.at = load i64, ptr %i.b, align 1, !noalias !4713
  %i.au = mul i64 %i.as, -7046029288634856825
  %i.av = mul i64 %i.at, -4417276706812531889
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.bswap.i64(i64 %i.aw)
  %i.ay = xor i64 %i.ax, %i.ap
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.az = tail call fastcc noundef i64 @_ZL33XXH_INLINE_XXH3_64bits_withSecretPKvmS0_m(ptr noundef captures(none) %i.b, i64 noundef %i.f) #37
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.1.i.i.i.i = phi i64 [ %i.az, %bb.h ], [ %i.ay, %bb.g ], [ %i.ae, %bb.e ], [ %i.ao, %bb.f ]
  %.1.i.fr.i.i.i = freeze i64 %.1.i.i.i.i         ; 2 uses
  %i.ba = icmp eq i64 %.1.i.fr.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.ba, i64 42, i64 %.1.i.fr.i.i.i
  br label %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i

_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i: ; preds = %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i, %bb.d
  %i.bb = phi i64 [ %spec.select.i.i.i, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.i.i.i ], [ 1, %bb.d ] ; 4 uses
  %.in6.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bc = load ptr, ptr %.in6.i.i.i, align 8, !tbaa !1674, !noalias !4713
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bd = load i64, ptr %.in.i.i.i, align 8, !tbaa !1669, !noalias !4713
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 336
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  %i.bi = load ptr, ptr %i.be, align 8, !noalias !4713
  %i.bj = load i64, ptr %i.bf, align 8, !noalias !4713
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = load i64, ptr %i.bg, align 8, !noalias !4713
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = load ptr, ptr %i.bh, align 8, !noalias !4713
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ %i.bb, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %i.cg, %bb.m ]
  %.0.in.in.i.i.i.i.i.i = phi i64 [ %i.bb, %_ZN5arrow8internal17ComputeStringHashILm0EEEmPKvl.exit.thread.i.i.i ], [ %.0.i.i.i.i.i.i, %bb.m ]
  %storemerge.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bd ; 2 uses
  %.0.in.i.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i.i, 5
  %.0.i.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i.i, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %storemerge.i.i.i.i.i.i ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !1798, !noalias !4713 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %i.bb
  br i1 %i.bq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !1801, !noalias !4713 ; 3 uses
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3, !noalias !4713 ; 3 uses
  %i.bw = icmp eq i64 %i.bk, %i.bt
  br i1 %i.bw, label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr i8, ptr %i.bu, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3, !noalias !4713
  br label %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i

_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.by, %bb.k ], [ %i.bm, %bb.j ] ; 2 uses
  %storemerge.i.i.i.i.i.i.i.i.i.i = sub nsw i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.bv ; 2 uses
  %i.bz = sext i32 %i.bv to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bn, i64 %i.bz
  %i.cb = sext i32 %storemerge.i.i.i.i.i.i.i.i.i.i to i64
  %i.cc = icmp eq i32 %storemerge.i.i.i.i.i.i.i.i.i.i, %i.e
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i
  %i.cd = icmp eq i32 %.pn.i.i.i.i.i.i.i.i.i.i, %i.bv
  br i1 %i.cd, label %_ZN5arrow6StatusD2Ev.exit43.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ca, ptr %i.b, i64 %i.cb), !noalias !4713
  %i.ce = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %_ZN5arrow6StatusD2Ev.exit43.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZNK5arrow17BaseBinaryBuilderINS_10BinaryTypeEE7GetViewEl.exit.i.i.i.i.i.i.i.i, %bb.i
  %i.cf = icmp eq i64 %i.bp, 0
  %i.cg = add i64 %.0.i.i.i.i.i.i, %storemerge.i.i.i.i.i.i
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, label %bb.i, !llvm.loop !1802

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.m
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !80, !noalias !4713
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !4713
  %i.ck = tail call noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(356) %i.k), !noalias !4713, !inline_history !4714 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !4713
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(256) %i.cl, ptr noundef %i.b, i32 noundef %i.e), !noalias !4713
  %i.cm = load ptr, ptr %2, align 8, !tbaa !137, !noalias !4713 ; 2 uses
  store ptr %i.cm, ptr %0, align 8, !tbaa !137, !alias.scope !4713
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !4713
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN5arrow6StatusD2Ev.exit36.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit36.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !4713
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bo, align 8, !tbaa !1798, !noalias !4715
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %i.ck, ptr %i.cp, align 8, !tbaa !3, !noalias !4715
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !1670, !noalias !4715
  %i.cs = add i64 %i.cr, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !1670, !noalias !4715
  %i.ct = shl i64 %i.cs, 1
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !1668, !noalias !4715 ; 2 uses
  %.not.i37.i.i.i = icmp ult i64 %i.ct, %i.cu
  br i1 %.not.i37.i.i.i, label %_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit39.i.i.i, !prof !140

_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit36.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !4713
  br label %_ZN5arrow6StatusD2Ev.exit43.i.i.i

_ZN5arrow6StatusD2Ev.exit39.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit36.i.i.i
  %i.cv = shl i64 %i.cu, 2
  call void @_ZN5arrow8internal9HashTableINS0_15BinaryMemoTableINS_13BinaryBuilderEE7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(88) %i.co, i64 noundef %i.cv), !noalias !4713
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !137, !noalias !4713 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !137, !alias.scope !4713
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !4713
  %i.cw = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.cw, label %_ZN5arrow6StatusD2Ev.exit43.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_117RegularHashKernelINS_19FixedSizeBinaryTypeENS2_16DictEncodeActionESt17basic_string_viewIcSt11char_traitsIcEELb0EE8DoAppendILb0EEENSt9enable_ifIXntT_ENS_6StatusEE4typeERKNS_9ArraySpanEENKUlS9_E_clES9_.exit

_ZN5arrow6StatusD2Ev.exit43.i.i.i:                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.l, %_ZN5arrow6StatusD2Ev.exit39.i.i.i, %_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i
  %.sink14.i.i.i = phi i32 [ %i.ck, %_ZN5arrow6StatusD2Ev.exit39.i.i.i ], [ %i.ck, %_ZN5arrow6StatusD2Ev.exit39.thread.i.i.i ], [ %i.bs, %bb.l ], [ %i.bs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !950, !noalias !4713
  %i.cz = getelementptr inbounds nuw i8, ptr %.val, i64 184 ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !951, !noalias !4713 ; 2 uses
  %i.db = sdiv i64 %i.da, 8
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !40, !noalias !4713
  %i.de = srem i64 %i.da, 8
  %i.df = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !40, !noalias !4713
  %i.dh = or i8 %i.dg, %i.dd
  store i8 %i.dh, ptr %i.dc, align 1, !tbaa !40, !noalias !4713
  %i.di = load i64, ptr %i.cz, align 8, !tbaa !951, !noalias !4713
  %i.dj = add nsw i64 %i.di, 1
  store i64 %i.dj, ptr %i.cz, align 8, !tbaa !951, !noalias !4713
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 208 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !484, !noalias !4713
end_hunk_8
