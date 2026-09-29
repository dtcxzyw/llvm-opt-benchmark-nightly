Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UnwindInfoRegistrationPlugin?download=true
inline.NumInlined: 1338
inline.NumDeleted: 783
begin_hunk_0_@_ZN4llvm3orc6shared19WrapperFunctionCall6CreateINS1_10SPSArgListIJNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrES7_EEEEES7_S8_S8_EEEJNS_11SmallVectorINS0_17ExecutorAddrRangeELj3EEENS0_12ExecutorAddrESC_SC_EEENS_8ExpectedIS2_EESE_DpRKT0_:_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i
  %.not37 = icmp eq i64 %i.ae, 8
  br i1 %.not37, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm3orc6shared22SPSSerializationTraitsINS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrES5_EEEEENS_11SmallVectorINS0_17ExecutorAddrRangeELj3EEEvE9serializeERNS1_15SPSOutputBufferERKSA_.exit.i.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i64, ptr %4, align 8, !tbaa !12
  store i64 %i.ag, ptr %i.af, align 1
  %.not38 = icmp eq i64 %i.ae, 16
  br i1 %.not38, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !12
  store i64 %i.ai, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not39 = icmp eq i64 %i.ae, 24
  br i1 %.not39, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.al = load i64, ptr %5, align 8, !tbaa !12
  store i64 %i.al, ptr %i.ak, align 1
  %.not40 = icmp eq i64 %i.ae, 32
  br i1 %.not40, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !12
  store i64 %i.an, ptr %i.am, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.ao, ptr %9, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 24, ptr %i.aq, align 8, !tbaa !84
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !83
  %.not.i.i10 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i10, label %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread, label %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit

_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread: ; preds = %bb.g
  store i64 %1, ptr %8, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !82
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.au, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 24, ptr %i.av, align 8, !tbaa !84
  br label %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit

_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit:        ; preds = %bb.g
  %i.aw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %7) ; 0 uses
  %.pre = load i64, ptr %i.ap, align 8, !tbaa !83
  %i.ax = icmp eq i64 %.pre, 0
  store i64 %1, ptr %8, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !82
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 24, ptr %i.bb, align 8, !tbaa !84
  br i1 %i.ax, label %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit
  %i.bc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %9) ; 0 uses
  %.pre44 = load i64, ptr %8, align 8, !tbaa !17
  %.pre45 = load i64, ptr %i.ba, align 8, !tbaa !83
  %i.bd = icmp eq i64 %.pre45, 0
  br label %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit

_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit: ; preds = %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit, %bb.h
  %i.be = phi ptr [ %i.az, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %i.az, %bb.h ], [ %i.at, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ]
  %i.bf = phi ptr [ %i.ay, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %i.ay, %bb.h ], [ %i.as, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ] ; 2 uses
  %.not.i.i.i.i = phi i1 [ true, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %i.bd, %bb.h ], [ true, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ]
  %i.bg = phi i64 [ %1, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %.pre44, %bb.h ], [ %1, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = and i8 %i.bi, -2
  store i8 %i.bj, ptr %i.bh, align 8
  store i64 %i.bg, ptr %0, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bm, align 8, !tbaa !83
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 24, ptr %i.bn, align 8, !tbaa !84
  br i1 %.not.i.i.i.i, label %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit
  %i.bo = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %i.bf) ; 0 uses
  br label %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit

_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit: ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit, %bb.i
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !82 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.be
  br i1 %i.bq, label %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit
  call void @free(ptr noundef %i.bp) #18
  br label %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit

_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit: ; preds = %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit, %bb.j
  %i.br = load ptr, ptr %9, align 8, !tbaa !82    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ao
  br i1 %i.bs, label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit
  call void @free(ptr noundef %i.br) #18
  br label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit

_ZN4llvm11SmallVectorIcLj24EED2Ev.exit:           ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.l

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.b, %.lr.ph.i.i, %_ZN4llvm3orc6shared22SPSSerializationTraitsINS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrES5_EEEEENS_11SmallVectorINS0_17ExecutorAddrRangeELj3EEEvE9serializeERNS1_15SPSOutputBufferERKSA_.exit.i.thread, %bb.e, %bb.f, %bb.d
  %i.bt = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #18 ; 2 uses
  %i.bu = extractvalue { i32, ptr } %i.bt, 0
  %i.bv = extractvalue { i32, ptr } %i.bt, 1
  %i.bw = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !283 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !283
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.bx, align 1, !tbaa !37, !noalias !283
  store ptr @.str.7, ptr %6, align 8, !tbaa !38, !noalias !283
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %i.by, align 8, !tbaa !36, !noalias !283
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.bw, ptr noundef nonnull align 8 dereferenceable(34) %6, i32 %i.bu, ptr %i.bv) #18, !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !283
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8
  %i.cb = or i8 %i.ca, 1
  store i8 %i.cb, ptr %i.bz, align 8
  store ptr %i.bw, ptr %0, align 8, !tbaa !89, !alias.scope !284
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit
  %i.cc = load ptr, ptr %7, align 8, !tbaa !82    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.a
  br i1 %i.cd, label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit11, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.cc) #18
  br label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit11

_ZN4llvm11SmallVectorIcLj24EED2Ev.exit11:         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc6shared19WrapperFunctionCall6CreateINS1_10SPSArgListIJNS1_11SPSSequenceINS1_8SPSTupleIJNS1_15SPSExecutorAddrES7_EEEEEEEEJNS_11SmallVectorINS0_17ExecutorAddrRangeELj3EEEEEENS_8ExpectedIS2_EENS0_12ExecutorAddrEDpRKT0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.112") align 8 %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::SmallVector.106", align 8 ; 11 uses
  %5 = alloca %"class.llvm::orc::shared::WrapperFunctionCall", align 8 ; 13 uses
  %6 = alloca %"class.llvm::SmallVector.106", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 24, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %i.f, 4             ; 3 uses
  %i.g = or disjoint i64 %.idx.i.i, 8             ; 4 uses
  %i.h = icmp ugt i32 %i.e, 1
  br i1 %i.h, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i, label %.lr.ph.preheader.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i:  ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 1) #18
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !83 ; 2 uses
  %.not11.i.i = icmp samesign eq i64 %.pre.i.i, %i.g
  br i1 %.not11.i.i, label %bb.b, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !82
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge, %bb.a
  %i.i = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ %i.a, %bb.a ]
  %i.j = phi i64 [ %.pre.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j
  %i.l = sub i64 %i.g, %i.j
  call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.l, i1 false), !tbaa !38
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i
  store i64 %i.g, ptr %i.b, align 8, !tbaa !83
  %i.m = load ptr, ptr %4, align 8, !tbaa !82     ; 8 uses
  %i.n = load i32, ptr %i.d, align 8, !tbaa !53
  %i.o = zext i32 %i.n to i64
  store i64 %i.o, ptr %i.m, align 1
  %i.p = load ptr, ptr %2, align 8, !tbaa !52     ; 8 uses
  %i.q = load i32, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx.i.i3 = shl nuw nsw i64 %i.r, 4            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i3
  %.not16.i.i = icmp eq i32 %i.q, 0
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.t = add nsw i64 %.idx.i.i3, -16              ; 2 uses
  %i.u = lshr exact i64 %i.t, 4
  %i.v = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.f) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.m, i64 8
  %i.w = lshr exact i64 %i.t, 4
  %umin = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.f)
  %i.x = shl nuw nsw i64 %umin, 4                 ; 2 uses
  %i.y = getelementptr i8, ptr %i.m, i64 %i.x
  %scevgep24 = getelementptr i8, ptr %i.y, i64 24
  %i.z = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep25 = getelementptr i8, ptr %i.z, i64 16
  %bound0 = icmp ult ptr %scevgep, %scevgep25
  %bound1 = icmp ult ptr %i.p, %scevgep24
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967294               ; 3 uses
  %i.aa = shl nuw nsw i64 %n.vec, 4               ; 2 uses
  %i.ab = getelementptr i8, ptr %i.m, i64 %i.aa
  %i.ac = sub nsw i64 %i.f, %n.vec
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = getelementptr i8, ptr %i.p, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 4                       ; 3 uses
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.af
  %next.gep26 = getelementptr i8, ptr %i.m, i64 %i.ag
  %next.gep27 = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep28 = getelementptr i8, ptr %i.p, i64 %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep26, i64 8
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !12, !alias.scope !296
  %wide.load29 = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !12, !alias.scope !296
  store <2 x i64> %wide.load, ptr %i.ah, align 1, !alias.scope !297, !noalias !296
  store <2 x i64> %wide.load29, ptr %i.ai, align 1, !alias.scope !297, !noalias !296
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %.lr.ph.i.i.preheader33, label %vector.body, !llvm.loop !288

.lr.ph.i.i.preheader33:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.preheader
  %.pn.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.preheader ], [ %i.ab, %vector.body ]
  %.sroa.10.0.ph = phi i64 [ %.idx.i.i, %vector.memcheck ], [ %.idx.i.i, %.lr.ph.i.i.preheader ], [ %i.ad, %vector.body ]
  %.01317.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.preheader ], [ %i.ae, %vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader33, %bb.c
  %.pn = phi ptr [ %i.am, %bb.c ], [ %.pn.ph, %.lr.ph.i.i.preheader33 ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.ao, %bb.c ], [ %.sroa.10.0.ph, %.lr.ph.i.i.preheader33 ] ; 2 uses
  %.01317.i.i = phi ptr [ %i.ap, %bb.c ], [ %.01317.i.i.ph, %.lr.ph.i.i.preheader33 ] ; 3 uses
  %.not = icmp eq i64 %.sroa.10.0, 0
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 8
  %.sroa.09.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.al = load i64, ptr %.01317.i.i, align 8, !tbaa !12
  store i64 %i.al, ptr %.sroa.09.0, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !12
  store i64 %i.an, ptr %i.am, align 1
  %i.ao = add nsw i64 %.sroa.10.0, -16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.s
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !289

.loopexit:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.aq, ptr %6, align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 24, ptr %i.as, align 8, !tbaa !84
  %i.at = load i64, ptr %i.b, align 8, !tbaa !83
  %.not.i.i4 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i4, label %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread, label %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit

_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread: ; preds = %.loopexit
  store i64 %1, ptr %5, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.aw, align 8, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 24, ptr %i.ax, align 8, !tbaa !84
  br label %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit

_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit:        ; preds = %.loopexit
  %i.ay = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %4) ; 0 uses
  %.pre17 = load i64, ptr %i.ar, align 8, !tbaa !83
  %i.az = icmp eq i64 %.pre17, 0
  store i64 %1, ptr %5, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !82
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !83
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 24, ptr %i.bd, align 8, !tbaa !84
  br i1 %i.az, label %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit
  %i.be = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %6) ; 0 uses
  %.pre18 = load i64, ptr %5, align 8, !tbaa !17
  %.pre19 = load i64, ptr %i.bc, align 8, !tbaa !83
  %i.bf = icmp eq i64 %.pre19, 0
  br label %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit

_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit: ; preds = %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit, %bb.d
  %i.bg = phi ptr [ %i.bb, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %i.bb, %bb.d ], [ %i.av, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ]
  %i.bh = phi ptr [ %i.ba, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %i.ba, %bb.d ], [ %i.au, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ] ; 2 uses
  %.not.i.i.i.i = phi i1 [ true, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %i.bf, %bb.d ], [ true, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ]
  %i.bi = phi i64 [ %1, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %.pre18, %bb.d ], [ %1, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8
  %i.bl = and i8 %i.bk, -2
  store i8 %i.bl, ptr %i.bj, align 8
  store i64 %i.bi, ptr %0, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !82
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bo, align 8, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 24, ptr %i.bp, align 8, !tbaa !84
  br i1 %.not.i.i.i.i, label %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit
  %i.bq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %i.bh) ; 0 uses
  br label %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit

_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit: ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit, %bb.e
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !82 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bg
  br i1 %i.bs, label %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit
  call void @free(ptr noundef %i.br) #18
  br label %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit

_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit: ; preds = %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit, %bb.f
  %i.bt = load ptr, ptr %6, align 8, !tbaa !82    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aq
  br i1 %i.bu, label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit
  call void @free(ptr noundef %i.bt) #18
  br label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit

_ZN4llvm11SmallVectorIcLj24EED2Ev.exit:           ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.h

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %.lr.ph.i.i
  %i.bv = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #18 ; 2 uses
  %i.bw = extractvalue { i32, ptr } %i.bv, 0
  %i.bx = extractvalue { i32, ptr } %i.bv, 1
  %i.by = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !300 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !300
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.bz, align 1, !tbaa !37, !noalias !300
  store ptr @.str.7, ptr %3, align 8, !tbaa !38, !noalias !300
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.ca, align 8, !tbaa !36, !noalias !300
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.by, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 %i.bw, ptr %i.bx) #18, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !300
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8
  %i.cd = or i8 %i.cc, 1
  store i8 %i.cd, ptr %i.cb, align 8
  store ptr %i.by, ptr %0, align 8, !tbaa !89, !alias.scope !301
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit
  %i.ce = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.a
  br i1 %i.cf, label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.ce) #18
  br label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit5

_ZN4llvm11SmallVectorIcLj24EED2Ev.exit5:          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc28UnwindInfoRegistrationPluginD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3orc28UnwindInfoRegistrationPluginE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %notsub.i.i.i = add i64 %i.c, -1
  %i.d = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.d, label %bb.b, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
