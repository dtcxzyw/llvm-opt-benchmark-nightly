inline.NumInlined: 33057
inline.NumDeleted: 6232
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 171
begin_hunk_0_@_ZNK8facebook5velox12SimpleVectorISt10shared_ptrIvEE11hashValueAtEi:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.h = load i8, ptr %i.g, align 1, !tbaa !629, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %0, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1) ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1828 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  store ptr %i.n, ptr %3, align 8, !tbaa !1828
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !132  ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !132
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIvEC2ERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.r, align 4, !tbaa !12
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !12
  br label %_ZNSt10shared_ptrIvEC2ERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIvEC2ERKS0_.exit

_ZNSt10shared_ptrIvEC2ERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.e, ptr %2, align 8, !tbaa !630
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %3, ptr %i.w, align 8, !tbaa !1830
  %i.x = invoke noundef i64 @_ZZN8facebook5velox12SimpleVectorISt10shared_ptrIvEE25hashValueAtWithCustomTypeERKS2_IKNS0_4TypeEES3_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.g unwind label %bb.n       ; 4 uses

bb.g:                                             ; preds = %_ZNSt10shared_ptrIvEC2ERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !132  ; 8 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.z, align 8, !tbaa !145
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !147
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #36, !inline_history !1831
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #36, !inline_history !1831
  br label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i6 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !12
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !149

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #36
  br label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt10shared_ptrIvEC2ERKS0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #36
  resume { ptr, i32 } %i.ao

bb.o:                                             ; preds = %bb.b
  %i.ap = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.aq = xor i64 %i.ap, -1
  %i.ar = shl i64 %i.ap, 21
  %i.as = add i64 %i.ar, %i.aq                    ; 2 uses
  %i.at = lshr i64 %i.as, 24
  %i.au = xor i64 %i.at, %i.as
  %i.av = mul i64 %i.au, 265                      ; 2 uses
  %i.aw = lshr i64 %i.av, 14
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, 21                       ; 2 uses
  %i.az = lshr i64 %i.ay, 28
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, 2147483649
  br label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i, %bb.g, %bb.a, %bb.o
  %.0 = phi i64 [ %i.bb, %bb.o ], [ 1, %bb.a ], [ %i.x, %bb.g ], [ %i.x, %bb.i ], [ %i.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.x, %bb.m ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorISt10shared_ptrIvEE7hashAllEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %3 = alloca %"class.std::optional.185", align 8 ; 4 uses
  %4 = alloca %"class.std::unique_ptr.193", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.201", align 8 ; 7 uses
  %6 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %7 = alloca %"class.std::vector.96", align 8    ; 10 uses
  %8 = alloca %"struct.facebook::velox::SimpleVectorStats.204", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !216
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !632
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !633
  call void @_ZN8facebook5velox13AlignedBuffer8allocateImEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %2, i64 noundef %i.f, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.j = load ptr, ptr %2, align 8, !tbaa !210    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.l = load i8, ptr %i.k, align 4, !tbaa !635
  %i.m = and i8 %i.l, 2
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #48
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !223  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  %i.r = load i32, ptr %i.d, align 8, !tbaa !216  ; 4 uses
  %i.s = icmp sgt i32 %i.r, 0                     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader35

.preheader35:                                     ; preds = %bb.c
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader35
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %bb.e

.preheader:                                       ; preds = %bb.c
  br i1 %i.s, label %.lr.ph39, label %.loopexit

.lr.ph39:                                         ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !133  ; 2 uses
  %wide.trip.count45 = zext nneg i32 %i.r to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.r, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph39
  %indvars.iv42.ph = phi i64 [ 0, %.lr.ph39 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph39
  %n.mod.vf = and i64 %wide.trip.count45, 3       ; 2 uses
  %i.w = icmp eq i64 %n.mod.vf, 0
  %i.x = select i1 %i.w, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count45, %i.x   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %index
  %wide.vec = load <8 x ptr>, ptr %i.y, align 8, !tbaa !1828
  %strided.vec = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.z = ptrtoint <4 x ptr> %strided.vec to <4 x i64> ; 2 uses
  %i.aa = xor <4 x i64> %i.z, splat (i64 -1)
  %i.ab = shl <4 x i64> %i.z, splat (i64 21)
  %i.ac = add <4 x i64> %i.ab, %i.aa              ; 2 uses
  %i.ad = lshr <4 x i64> %i.ac, splat (i64 24)
  %i.ae = xor <4 x i64> %i.ad, %i.ac
  %i.af = mul <4 x i64> %i.ae, splat (i64 265)    ; 2 uses
  %i.ag = lshr <4 x i64> %i.af, splat (i64 14)
  %i.ah = xor <4 x i64> %i.ag, %i.af
  %i.ai = mul <4 x i64> %i.ah, splat (i64 21)     ; 2 uses
  %i.aj = lshr <4 x i64> %i.ai, splat (i64 28)
  %i.ak = xor <4 x i64> %i.aj, %i.ai
  %i.al = mul <4 x i64> %i.ak, splat (i64 2147483649)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
  store <4 x i64> %i.al, ptr %i.am, align 8, !tbaa !123
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1832

bb.d:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %scalar.ph ], [ %indvars.iv42.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv42
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1828
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = xor i64 %i.ar, -1
  %i.at = shl i64 %i.ar, 21
  %i.au = add i64 %i.at, %i.as                    ; 2 uses
  %i.av = lshr i64 %i.au, 24
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = mul i64 %i.aw, 265                      ; 2 uses
  %i.ay = lshr i64 %i.ax, 14
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 21                       ; 2 uses
  %i.bb = lshr i64 %i.ba, 28
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = mul i64 %i.bc, 2147483649
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv42
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !123
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %.loopexit, label %scalar.ph, !llvm.loop !1833

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.bf = lshr i64 %indvars.iv, 6
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !123
  %i.bi = and i64 %indvars.iv, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not.i24 = icmp eq i64 %i.bk, 0
  br i1 %.not.i24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bl = load ptr, ptr %i.t, align 8, !tbaa !133
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1828
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bp = xor i64 %i.bo, -1
  %i.bq = shl i64 %i.bo, 21
  %i.br = add i64 %i.bq, %i.bp                    ; 2 uses
  %i.bs = lshr i64 %i.br, 24
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = mul i64 %i.bt, 265                      ; 2 uses
  %i.bv = lshr i64 %i.bu, 14
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = mul i64 %i.bw, 21                       ; 2 uses
  %i.by = lshr i64 %i.bx, 28
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = mul i64 %i.bz, 2147483649
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ %i.ca, %bb.f ], [ 1, %bb.e ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store i64 %.sink, ptr %i.cb, align 8, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !1834

.loopexit:                                        ; preds = %bb.g, %scalar.ph, %.preheader35, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZN8facebook5velox6BIGINTEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.201") align 8 %5)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr null, ptr %6, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.cc, align 8, !tbaa !633
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.cd, align 8, !tbaa !633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i32 0, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i8 0, ptr %i.b, align 1, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !216
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 3
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !123
  invoke void @_ZSt11make_uniqueIN8facebook5velox10FlatVectorImEEJRKPNS1_6memory10MemoryPoolESt10shared_ptrIKNS1_10ScalarTypeILNS1_8TypeKindE4EEEEN5boost13intrusive_ptrINS1_6BufferEEERKiSI_St6vectorISI_SaISI_EENS1_17SimpleVectorStatsImEERKSt9nullopt_tibmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.193") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nullopt, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSt10unique_ptrIN8facebook5velox10FlatVectorImEESt14default_deleteIS3_EED2Ev.exit unwind label %bb.w

_ZNSt10unique_ptrIN8facebook5velox10FlatVectorImEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.h
  %i.ch = load ptr, ptr %4, align 8, !tbaa !637
  store ptr null, ptr %4, align 8, !tbaa !637
  store ptr %i.ch, ptr %0, align 8, !tbaa !639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.ci = load ptr, ptr %7, align 8, !tbaa !618   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !619 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ci, %i.ck
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN8facebook5velox10FlatVectorImEESt14default_deleteIS3_EED2Ev.exit, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cz, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.ci, %_ZNSt10unique_ptrIN8facebook5velox10FlatVectorImEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  %i.cl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !210 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = atomicrmw sub ptr %i.cm, i32 1 acq_rel, align 4
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.i
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !57
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(64) %i.cl)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.j, !inline_history !620

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !621
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !57
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %..i.i.i.i.i.i.i
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(64) %i.cl)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.j, !inline_history !620

bb.j:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #47
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cz, %i.ck
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !622

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !618
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN8facebook5velox10FlatVectorImEESt14default_deleteIS3_EED2Ev.exit
  %i.da = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ci, %_ZNSt10unique_ptrIN8facebook5velox10FlatVectorImEESt14default_deleteIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !623
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #49
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.dg = load ptr, ptr %6, align 8, !tbaa !210   ; 7 uses
  %.not.i26 = icmp eq ptr %i.dg, null
  br i1 %.not.i26, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = atomicrmw sub ptr %i.dh, i32 1 acq_rel, align 4
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.l
end_hunk_0
