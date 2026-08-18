inline.NumInlined: 3109
inline.NumDeleted: 1191
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8facebook5velox3row13UnsafeRowFast11deserializeERKSt6vectorIPcSaIS4_EERKSt10shared_ptrIKNS0_7RowTypeEEPNS0_6memory10MemoryPoolE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !84
  %i.k = add i64 %i.d, -8
  %i.l = sub i64 %i.k, %i.e
  %i.m = and i64 %i.l, -8
  %i.n = add i64 %i.m, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.n, i1 false), !tbaa !98
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc8, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %i.o = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.h, %.noexc8 ] ; 3 uses
  %i.p = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !123  ; 2 uses
  %i.u = load <2 x ptr>, ptr %2, align 8, !tbaa !170
  store <2 x ptr> %i.u, ptr %5, align 16, !tbaa !170
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_7RowTypeEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !112
  %.not.i.i.i.i9 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.v, align 4, !tbaa !124
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !124
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_7RowTypeEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_7RowTypeEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_7RowTypeEvEERKS_IT_E.exit: ; preds = %.loopexit, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr null, ptr %6, align 8, !tbaa !171
  invoke fastcc void @_ZN8facebook5velox3row12_GLOBAL__N_115deserializeRowsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %3)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_7RowTypeEvEERKS_IT_E.exit
  %i.aa = load ptr, ptr %6, align 8, !tbaa !171   ; 7 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = atomicrmw sub ptr %i.ab, i32 1 acq_rel, align 4
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.f
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(64) %i.aa)
          to label %.noexc.i unwind label %bb.g, !inline_history !172

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !173
  %.not.i.i = icmp eq ptr %i.ai, null
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !19
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %..i.i
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.aa)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.g, !inline_history !172

bb.g:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #31
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.e, %bb.f, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !123 ; 8 uses
  %.not.i.i10 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i10, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ap, align 8, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !128
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28, !inline_history !178
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28, !inline_history !178
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !112
  %.not.i.i.i11 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.as, %bb.k ], [ %i.bc, %bb.l ]
  %i.bd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bd, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.be = load ptr, ptr %4, align 8, !tbaa !94    ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !84
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.o:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2IKNS1_7RowTypeEvEERKS_IT_E.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.not.i.i.i13 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorImSaImEED2Ev.exit14, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = ptrtoint ptr %i.p to i64
  %i.bm = ptrtoint ptr %i.o to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.bn) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit14

_ZNSt6vectorImSaImEED2Ev.exit14:                  ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.bk
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox3row12_GLOBAL__N_115deserializeRowsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr noundef %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::optional.168", align 1 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %7 = alloca %"class.std::vector.41", align 8    ; 14 uses
  %8 = alloca %"class.std::vector.156", align 8   ; 16 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 9 uses
  %10 = alloca %"class.std::vector.57", align 8   ; 10 uses
  %11 = alloca %"class.std::vector.25", align 8   ; 11 uses
  %12 = alloca %"class.std::shared_ptr.46", align 16 ; 9 uses
  %13 = alloca %"class.std::shared_ptr.46", align 16 ; 9 uses
  store ptr %5, ptr %i.a, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164
  %i.e = load ptr, ptr %2, align 8, !tbaa !168
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !98
  %i.j = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %3, align 8, !tbaa !171    ; 2 uses
  %.not160 = icmp eq ptr %i.p, null
  br i1 %.not160, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = phi ptr [ %i.r, %bb.b ], [ null, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %.not161 = icmp eq i32 %i.n, 0                  ; 2 uses
  br i1 %.not161, label %._crit_edge174, label %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.u = shl nuw nsw i64 %i.o, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #30
          to label %.lr.ph173 unwind label %bb.d  ; 3 uses

.lr.ph173:                                        ; preds = %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.v, ptr %8, align 8, !tbaa !181
  store ptr %i.v, ptr %i.w, align 8, !tbaa !184
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.o
  store ptr %i.x, ptr %i.t, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %.not100 = icmp eq ptr %i.s, null
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_M_allocateEm.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %.lr.ph173, %._crit_edge
  %i.ab = phi i64 [ %i.i, %.lr.ph173 ], [ %i.dy, %._crit_edge ]
  %.065172 = phi i32 [ 0, %.lr.ph173 ], [ %i.dz, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !179
  %sext162 = shl i64 %i.ab, 32
  %i.ad = ashr exact i64 %sext162, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !186
  store i8 -1, ptr %6, align 1, !tbaa !112, !noalias !186
  store i8 1, ptr %i.y, align 1, !tbaa !191, !noalias !186
  %i.ae = add nsw i64 %i.ad, 7
  %i.af = lshr i64 %i.ae, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %9, i64 noundef %i.af, ptr noundef %i.ac, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !186
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !184 ; 6 uses
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !185
  %.not.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i, label %bb.g, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.f
  %i.ai = load ptr, ptr %9, align 8, !tbaa !171
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !171
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !184
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %8, align 8, !tbaa !181   ; 12 uses
  %i.al = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.h, label %_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #29
          to label %.noexc155 unwind label %.loopexit.split-lp166

.noexc155:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i147 = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i147)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #30
          to label %.noexc156 unwind label %.loopexit165 ; 12 uses

.noexc156:                                        ; preds = %_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  %i.ax = load ptr, ptr %9, align 8, !tbaa !171
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !171
  store ptr null, ptr %9, align 8, !tbaa !171
  %.not10.i.i.i.i148 = icmp eq ptr %i.ak, %i.ag
  br i1 %.not10.i.i.i.i148, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc156
  %i.ay = add i64 %i.al, -8
  %i.az = sub i64 %i.ay, %i.am                    ; 3 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.az, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i149.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.av, i64 8
  %i.bc = add i64 %i.al, -8
  %i.bd = sub i64 %i.bc, %i.am
  %i.be = and i64 %i.bd, -8                       ; 2 uses
  %scevgep259 = getelementptr i8, ptr %scevgep, i64 %i.be
  %scevgep260 = getelementptr i8, ptr %i.ak, i64 8
  %scevgep261 = getelementptr i8, ptr %scevgep260, i64 %i.be
  %bound0 = icmp ult ptr %i.av, %scevgep261
  %bound1 = icmp ult ptr %i.ak, %scevgep259
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i149.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check262 = icmp ult i64 %i.az, 120
  br i1 %min.iters.check262, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %i.bb, 12
  %n.vec = and i64 %i.bb, 4611686018427387888     ; 4 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ak, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bj ; 4 uses
  %next.gep263 = getelementptr i8, ptr %i.ak, i64 %i.bj ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.bk = getelementptr i8, ptr %next.gep263, i64 32 ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep263, i64 64 ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep263, i64 96 ; 2 uses
  %wide.load = load <4 x ptr>, ptr %next.gep263, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  %wide.load264 = load <4 x ptr>, ptr %i.bk, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  %wide.load265 = load <4 x ptr>, ptr %i.bl, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  %wide.load266 = load <4 x ptr>, ptr %i.bm, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  %i.bn = getelementptr i8, ptr %next.gep, i64 32
  %i.bo = getelementptr i8, ptr %next.gep, i64 64
  %i.bp = getelementptr i8, ptr %next.gep, i64 96
  store <4 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !171, !alias.scope !201, !noalias !198
  store <4 x ptr> %wide.load264, ptr %i.bn, align 8, !tbaa !171, !alias.scope !201, !noalias !198
  store <4 x ptr> %wide.load265, ptr %i.bo, align 8, !tbaa !171, !alias.scope !201, !noalias !198
  store <4 x ptr> %wide.load266, ptr %i.bp, align 8, !tbaa !171, !alias.scope !201, !noalias !198
  store <4 x ptr> splat (ptr null), ptr %next.gep263, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  store <4 x ptr> splat (ptr null), ptr %i.bk, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  store <4 x ptr> splat (ptr null), ptr %i.bl, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  store <4 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i149.preheader, label %vec.epilog.ph, !prof !206

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec268 = and i64 %i.bb, 4611686018427387900  ; 3 uses
  %i.br = shl i64 %n.vec268, 3                    ; 2 uses
  %i.bs = getelementptr i8, ptr %i.av, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.ak, i64 %i.br
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index269 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next273, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = shl i64 %index269, 3                    ; 2 uses
  %next.gep270 = getelementptr i8, ptr %i.av, i64 %i.bu
  %next.gep271 = getelementptr i8, ptr %i.ak, i64 %i.bu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %wide.load272 = load <4 x ptr>, ptr %next.gep271, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  store <4 x ptr> %wide.load272, ptr %next.gep270, align 8, !tbaa !171, !alias.scope !201, !noalias !198
  store <4 x ptr> splat (ptr null), ptr %next.gep271, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  %index.next273 = add nuw i64 %index269, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next273, %n.vec268
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !207

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n274 = icmp eq i64 %i.bb, %n.vec268
  br i1 %cmp.n274, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i149.preheader
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox3row12_GLOBAL__N_115deserializeRowsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.cc = atomicrmw sub ptr %i.cb, i32 1 acq_rel, align 4
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.j
  %i.ce = load ptr, ptr %.pr, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i unwind label %bb.k, !inline_history !172

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !173
  %.not.i.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %.pr, align 8, !tbaa !19
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %..i.i
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.k, !inline_history !172

bb.k:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #31
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %bb.j, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.co = load ptr, ptr %i.z, align 8, !tbaa !209
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !171 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 44
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !210
  %i.ct = and i8 %i.cs, 2
  %.not.i108 = icmp eq i8 %i.ct, 0
  br i1 %.not.i108, label %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit, label %bb.l, !prof !211

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #29
          to label %.noexc109 unwind label %bb.s

.noexc109:                                        ; preds = %bb.l
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !180 ; 3 uses
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !98  ; 3 uses
  %.not186 = icmp eq i64 %i.cw, 0
  br i1 %.not186, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit
  %i.cx = lshr i32 %.065172, 3
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = and i32 %.065172, 7
  %i.da = shl nuw nsw i32 1, %i.cz                ; 2 uses
  br i1 %.not100, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %bb.o ], [ 0, %.lr.ph ] ; 6 uses
  %i.db = load ptr, ptr %2, align 8, !tbaa !168
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv194
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !212
  %i.de = load ptr, ptr %4, align 8, !tbaa !94
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv194
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !98
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cy
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !112
  %i.dk = zext i8 %i.dj to i32
  %i.dl = and i32 %i.da, %i.dk
  %.not163.us = icmp eq i32 %i.dl, 0
  %i.dm = lshr i64 %indvars.iv194, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dm ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !112 ; 2 uses
  br i1 %.not163.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us
  %i.dp = and i64 %indvars.iv194, 7
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !112
  %i.ds = and i8 %i.dr, %i.do
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.dt = trunc i64 %indvars.iv194 to i8
  %i.du = and i8 %i.dt, 7
  %i.dv = shl nuw i8 1, %i.du
  %i.dw = or i8 %i.do, %i.dv
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i.us = phi i8 [ %i.ds, %bb.m ], [ %i.dw, %bb.n ]
  store i8 %.sink.i.us, ptr %i.dn, align 1, !tbaa !112
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.dx = icmp ugt i64 %i.cw, %indvars.iv.next195
  br i1 %i.dx, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !213

._crit_edge:                                      ; preds = %bb.w, %bb.o, %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit
  %i.dy = phi i64 [ %i.cw, %bb.o ], [ 0, %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit ], [ %i.fk, %bb.w ] ; 2 uses
  %i.dz = add nuw i32 %.065172, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.dz, %i.n
  br i1 %exitcond.not, label %._crit_edge174, label %bb.e, !llvm.loop !214

bb.p:                                             ; preds = %bb.e
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit165:                                     ; preds = %_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp166:                            ; preds = %bb.h
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp166, %.loopexit165
  %lpad.phi169 = phi { ptr, i32 } [ %lpad.loopexit167, %.loopexit165 ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp166 ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn98 = phi { ptr, i32 } [ %lpad.phi169, %bb.q ], [ %i.ea, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body

bb.s:                                             ; preds = %bb.l
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 0, %.lr.ph ] ; 9 uses
  %i.ec = lshr i64 %indvars.iv, 6
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !98
  %i.ef = and i64 %indvars.iv, 63
  %i.eg = shl nuw i64 1, %i.ef
  %i.eh = and i64 %i.ee, %i.eg
  %.not.i110 = icmp eq i64 %i.eh, 0
  br i1 %.not.i110, label %.thread, label %bb.t

.thread:                                          ; preds = %.lr.ph.split
  %i.ei = lshr i64 %indvars.iv, 3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ei ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !112
  br label %bb.v

bb.t:                                             ; preds = %.lr.ph.split
  %i.el = load ptr, ptr %2, align 8, !tbaa !168
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !212
  %i.eo = load ptr, ptr %4, align 8, !tbaa !94
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !98
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.cy
  %i.et = load i8, ptr %i.es, align 1, !tbaa !112
  %i.eu = zext i8 %i.et to i32
  %i.ev = and i32 %i.da, %i.eu
  %.not163 = icmp eq i32 %i.ev, 0
  %i.ew = lshr i64 %indvars.iv, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ew ; 3 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !112 ; 2 uses
  br i1 %.not163, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ez = trunc i64 %indvars.iv to i8
  %i.fa = and i8 %i.ez, 7
  %i.fb = shl nuw i8 1, %i.fa
  %i.fc = or i8 %i.ey, %i.fb
  br label %bb.w

bb.v:                                             ; preds = %.thread, %bb.t
  %i.fd = phi i8 [ %i.ek, %.thread ], [ %i.ey, %bb.t ]
  %i.fe = phi ptr [ %i.ej, %.thread ], [ %i.ex, %bb.t ]
  %i.ff = and i64 %indvars.iv, 7
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !112
  %i.fi = and i8 %i.fh, %i.fd
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fj = phi ptr [ %i.fe, %bb.v ], [ %i.ex, %bb.u ]
  %.sink.i = phi i8 [ %i.fi, %bb.v ], [ %i.fc, %bb.u ]
  store i8 %.sink.i, ptr %i.fj, align 1, !tbaa !112
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fk = load i64, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %i.fl = icmp ugt i64 %i.fk, %indvars.iv.next
  br i1 %i.fl, label %.lr.ph.split, label %._crit_edge, !llvm.loop !213

._crit_edge174:                                   ; preds = %._crit_edge, %bb.c
  %i.fm = phi i64 [ %i.i, %bb.c ], [ %i.dy, %._crit_edge ] ; 10 uses
  %i.fn = shl nuw nsw i64 %i.o, 29
  %i.fo = add nuw nsw i64 %i.fn, 33822867456
  %sext = lshr i64 %i.fo, 32
  %i.fp = and i64 %sext, 536870904                ; 4 uses
  %.not187 = icmp eq i64 %i.fm, 0
  br i1 %.not187, label %.preheader, label %.lr.ph177

.lr.ph177:                                        ; preds = %._crit_edge174
  %.not95 = icmp eq ptr %i.s, null
  br i1 %.not95, label %iter.check292, label %.lr.ph177.split

iter.check292:                                    ; preds = %.lr.ph177
  %i.fq = load ptr, ptr %4, align 8, !tbaa !94    ; 3 uses
  %min.iters.check277 = icmp ult i64 %i.fm, 4
  br i1 %min.iters.check277, label %vec.epilog.scalar.ph293.preheader, label %vector.main.loop.iter.check278

vector.main.loop.iter.check278:                   ; preds = %iter.check292
  %min.iters.check279 = icmp ult i64 %i.fm, 16
  br i1 %min.iters.check279, label %vec.epilog.ph296, label %vector.ph280

vector.ph280:                                     ; preds = %vector.main.loop.iter.check278
  %i.fr = and i64 %i.fm, 12
  %n.vec281 = and i64 %i.fm, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.fp, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body282 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index283 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 64 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 96 ; 2 uses
  %wide.load284 = load <4 x i64>, ptr %i.fs, align 8, !tbaa !98
  %wide.load285 = load <4 x i64>, ptr %i.ft, align 8, !tbaa !98
  %wide.load286 = load <4 x i64>, ptr %i.fu, align 8, !tbaa !98
  %wide.load287 = load <4 x i64>, ptr %i.fv, align 8, !tbaa !98
  %i.fw = add <4 x i64> %wide.load284, %broadcast.splat
  %i.fx = add <4 x i64> %wide.load285, %broadcast.splat
  %i.fy = add <4 x i64> %wide.load286, %broadcast.splat
  %i.fz = add <4 x i64> %wide.load287, %broadcast.splat
  store <4 x i64> %i.fw, ptr %i.fs, align 8, !tbaa !98
  store <4 x i64> %i.fx, ptr %i.ft, align 8, !tbaa !98
  store <4 x i64> %i.fy, ptr %i.fu, align 8, !tbaa !98
  store <4 x i64> %i.fz, ptr %i.fv, align 8, !tbaa !98
  %index.next288 = add nuw i64 %index283, 16      ; 2 uses
  %i.ga = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.ga, label %middle.block289, label %vector.body282, !llvm.loop !215

middle.block289:                                  ; preds = %vector.body282
  %cmp.n290 = icmp eq i64 %i.fm, %n.vec281
  br i1 %cmp.n290, label %.preheader, label %vec.epilog.iter.check294

vec.epilog.iter.check294:                         ; preds = %middle.block289
  %min.epilog.iters.check295 = icmp eq i64 %i.fr, 0
  br i1 %min.epilog.iters.check295, label %vec.epilog.scalar.ph293.preheader, label %vec.epilog.ph296, !prof !206

vec.epilog.ph296:                                 ; preds = %vector.main.loop.iter.check278, %vec.epilog.iter.check294
  %vec.epilog.resume.val291 = phi i64 [ %n.vec281, %vec.epilog.iter.check294 ], [ 0, %vector.main.loop.iter.check278 ]
  %n.vec297 = and i64 %i.fm, -4                   ; 3 uses
  %broadcast.splatinsert298 = insertelement <4 x i64> poison, i64 %i.fp, i64 0
  %broadcast.splat299 = shufflevector <4 x i64> %broadcast.splatinsert298, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body300

vec.epilog.vector.body300:                        ; preds = %vec.epilog.vector.body300, %vec.epilog.ph296
  %index301 = phi i64 [ %vec.epilog.resume.val291, %vec.epilog.ph296 ], [ %index.next303, %vec.epilog.vector.body300 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index301 ; 2 uses
  %wide.load302 = load <4 x i64>, ptr %i.gb, align 8, !tbaa !98
  %i.gc = add <4 x i64> %wide.load302, %broadcast.splat299
  store <4 x i64> %i.gc, ptr %i.gb, align 8, !tbaa !98
  %index.next303 = add nuw i64 %index301, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next303, %n.vec297
  br i1 %i.gd, label %vec.epilog.middle.block304, label %vec.epilog.vector.body300, !llvm.loop !216

vec.epilog.middle.block304:                       ; preds = %vec.epilog.vector.body300
  %cmp.n305 = icmp eq i64 %i.fm, %n.vec297
  br i1 %cmp.n305, label %.preheader, label %vec.epilog.scalar.ph293.preheader

vec.epilog.scalar.ph293.preheader:                ; preds = %iter.check292, %vec.epilog.iter.check294, %vec.epilog.middle.block304
  %indvars.iv200.ph = phi i64 [ 0, %iter.check292 ], [ %n.vec281, %vec.epilog.iter.check294 ], [ %n.vec297, %vec.epilog.middle.block304 ]
  br label %vec.epilog.scalar.ph293

vec.epilog.scalar.ph293:                          ; preds = %vec.epilog.scalar.ph293.preheader, %vec.epilog.scalar.ph293
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %vec.epilog.scalar.ph293 ], [ %indvars.iv200.ph, %vec.epilog.scalar.ph293.preheader ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv200 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !98
  %i.gg = add i64 %i.gf, %i.fp
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !98
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.gh = icmp ugt i64 %i.fm, %indvars.iv.next201
  br i1 %i.gh, label %vec.epilog.scalar.ph293, label %.preheader, !llvm.loop !217

.preheader:                                       ; preds = %bb.z, %vec.epilog.scalar.ph293, %middle.block289, %vec.epilog.middle.block304, %._crit_edge174
  br i1 %.not161, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %.preheader
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not = icmp eq ptr %i.s, null
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.aa

bb.x:                                             ; preds = %._crit_edge184
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph177.split:                                  ; preds = %.lr.ph177, %bb.z
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %bb.z ], [ 0, %.lr.ph177 ] ; 4 uses
  %i.gr = lshr i64 %indvars.iv197, 6
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !98
  %i.gu = and i64 %indvars.iv197, 63
  %i.gv = shl nuw i64 1, %i.gu
  %i.gw = and i64 %i.gt, %i.gv
  %.not.i111 = icmp eq i64 %i.gw, 0
  br i1 %.not.i111, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph177.split
  %i.gx = load ptr, ptr %4, align 8, !tbaa !94
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv197 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !98
  %i.ha = add i64 %i.gz, %i.fp
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !98
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph177.split, %bb.y
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.hb = icmp ugt i64 %i.fm, %indvars.iv.next198
  br i1 %i.hb, label %.lr.ph177.split, label %.preheader, !llvm.loop !218

._crit_edge184:                                   ; preds = %bb.bn, %.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  store ptr null, ptr %0, align 8, !tbaa !25, !alias.scope !219
  %i.hc = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #30
          to label %.noexc112 unwind label %bb.x  ; 6 uses

.noexc112:                                        ; preds = %._crit_edge184
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i32 1, ptr %i.hd, align 8, !tbaa !126, !noalias !219
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  store i32 1, ptr %i.he, align 4, !tbaa !128, !noalias !219
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.hc, align 8, !tbaa !19, !noalias !219
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox9RowVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEERKN5boost13intrusive_ptrINS1_6BufferEEERKmSt6vectorIS7_INS1_10BaseVectorEESaISN_EEEEvPT_DpOT0_(ptr noundef nonnull %i.hf, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bo unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !219

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc112
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef 168) #27, !noalias !219
  br label %.body

bb.aa:                                            ; preds = %.lr.ph183, %bb.bn
  %indvars.iv209 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next210, %bb.bn ] ; 4 uses
  %i.hh = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !19
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = trunc nuw nsw i64 %indvars.iv209 to i32
  %i.hm = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, i32 noundef %i.hl)
          to label %bb.ab unwind label %bb.ah     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !16 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !19
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = invoke noundef zeroext i1 %i.hq(ptr noundef nonnull align 8 dereferenceable(18) %i.hn)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.hr, label %bb.ba, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.hs = load i64, ptr %i.b, align 8, !tbaa !98  ; 11 uses
  %i.ht = icmp ugt i64 %i.hs, 1152921504606846975
  br i1 %i.ht, label %bb.ae, label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #29
          to label %.noexc114 unwind label %.loopexit.split-lp

.noexc114:                                        ; preds = %bb.ae
  unreachable

_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.ad
  %.not.i.i.i.i113 = icmp eq i64 %i.hs, 0
  br i1 %.not.i.i.i.i113, label %.loopexit.thread, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.hu = shl nuw nsw i64 %i.hs, 3                ; 4 uses
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #30
          to label %.noexc115 unwind label %.loopexit164 ; 8 uses

.noexc115:                                        ; preds = %bb.af
  %i.hw = ptrtoaddr ptr %i.hv to i64
  store ptr %i.hv, ptr %10, align 8, !tbaa !168
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb:bb.a
bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !652
  store ptr @.str.37, ptr %7, align 16, !tbaa !112, !alias.scope !655, !noalias !652
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.a, ptr %i.d, align 16, !tbaa !112, !alias.scope !655, !noalias !652
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 160, ptr %i.e, align 16, !tbaa !112, !alias.scope !655, !noalias !652
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.45, i64 20, i64 1100, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !652
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.45) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %8, align 8, !tbaa !107    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !112
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ap, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.b
  %i.l = extractvalue { i64, i1 } %i.b, 0
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 96) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.g, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, !prof !130

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !658
  store ptr @.str.37, ptr %5, align 16, !tbaa !112, !alias.scope !661, !noalias !658
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.o, align 16, !tbaa !112, !alias.scope !661, !noalias !658
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 96, ptr %i.p, align 16, !tbaa !112, !alias.scope !661, !noalias !658
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.45, i64 20, i64 1100, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !658
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.45) #29
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !107    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !112
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23: ; preds = %bb.f
  %i.w = extractvalue { i64, i1 } %i.m, 0
  %i.x = load ptr, ptr %2, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %i.w)
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  %.0 = phi i64 [ %i.l, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ], [ %i.aa, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23 ] ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %.0, i64 0) ; 12 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.k, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit, !prof !130

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs) #29
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit: ; preds = %bb.j
  %i.af = add i64 %.0, -96
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %2, ptr %i.ah, align 8, !tbaa !173
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !180
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !664
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  store i32 0, ptr %i.al, align 8, !tbaa !665
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  store i8 1, ptr %i.am, align 4, !tbaa !210
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 -1, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.ae, align 8, !tbaa !19
  store i64 %1, ptr %i.aj, align 8, !tbaa !666
  store ptr %i.ae, ptr %0, align 8, !tbaa !171
  %i.ao = atomicrmw add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  invoke void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 noundef 0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  br label %common.resume

bb.m:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.211", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !664  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !130

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !667
  store i64 %2, ptr %4, align 16, !tbaa !112, !alias.scope !670, !noalias !667
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !112, !alias.scope !670, !noalias !667
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.53, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !667
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.53) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !107    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !112
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !85
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPccEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !210
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit, label %bb.g, !prof !211

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #29
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !180
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %gepdiff = sub nuw nsw i64 %2, %1
  %i.s = load i8, ptr %3, align 1, !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %i.s, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit

_ZSt4fillIPccEvT_S1_RKT0_.exit:                   ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Buffer7setSizeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.211", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !210
  %i.c = and i8 %i.b, 2
  %.not4 = icmp eq i8 %i.c, 0
  br i1 %.not4, label %bb.c, label %bb.b, !prof !211

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !664  ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.g, !prof !130

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !673
  store i64 %1, ptr %2, align 16, !tbaa !112, !alias.scope !676, !noalias !673
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.e, ptr %i.f, align 16, !tbaa !112, !alias.scope !676, !noalias !673
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.53, i64 11, i64 68, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !673
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.53) #29
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %3, align 8, !tbaa !107    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !112
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.m, align 8, !tbaa !666
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox13AlignedBuffer10transferToEPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.209", align 16 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 3 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !664  ; 2 uses
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 96) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !130

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !679
  store ptr @.str.37, ptr %2, align 16, !tbaa !112, !alias.scope !682, !noalias !679
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 96, ptr %i.h, align 16, !tbaa !112, !alias.scope !682, !noalias !679
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.e, ptr %i.i, align 16, !tbaa !112, !alias.scope !682, !noalias !679
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.45, i64 20, i64 1100, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !679
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.45) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8, !tbaa !107    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.l, align 8, !tbaa !112
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.j

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.b
  %i.p = extractvalue { i64, i1 } %i.f, 0
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef %1, ptr noundef nonnull %0, i64 noundef %i.p)
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  store ptr %1, ptr %i.a, align 8, !tbaa !179
  br label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, %bb.a, %bb.f
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.f ], [ false, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer15setEndGuardImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !664
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i64 -4982426243126403411, ptr %i.e, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox13AlignedBuffer17checkEndGuardImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.212", align 16 ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !664  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !98
  %.not = icmp eq i64 %i.f, -4982426243126403411
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !685
  %.sroa.03.0.insert.ext.i = zext i64 %i.d to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %1, align 16, !noalias !685
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.55, i64 31, i64 4, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !685
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox13AlignedBuffer17checkEndGuardImplEvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.55) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !107    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !112
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox13AlignedBuffer8allocateIaEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb:bb.a
bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !883
  store ptr @.str.37, ptr %7, align 16, !tbaa !112, !alias.scope !886, !noalias !883
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.a, ptr %i.d, align 16, !tbaa !112, !alias.scope !886, !noalias !883
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 160, ptr %i.e, align 16, !tbaa !112, !alias.scope !886, !noalias !883
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.45, i64 20, i64 1100, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !883
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.45) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %8, align 8, !tbaa !107    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !112
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ap, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.b
  %i.l = extractvalue { i64, i1 } %i.b, 0
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 96) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.g, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, !prof !130

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !889
  store ptr @.str.37, ptr %5, align 16, !tbaa !112, !alias.scope !892, !noalias !889
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.o, align 16, !tbaa !112, !alias.scope !892, !noalias !889
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 96, ptr %i.p, align 16, !tbaa !112, !alias.scope !892, !noalias !889
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.45, i64 20, i64 1100, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !889
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.45) #29
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !107    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !112
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23: ; preds = %bb.f
  %i.w = extractvalue { i64, i1 } %i.m, 0
  %i.x = load ptr, ptr %2, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %i.w)
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  %.0 = phi i64 [ %i.l, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ], [ %i.aa, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23 ] ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %.0, i64 0) ; 12 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.k, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit, !prof !130

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer8allocateIaEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs) #29
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit: ; preds = %bb.j
  %i.af = add i64 %.0, -96
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %2, ptr %i.ah, align 8, !tbaa !173
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !180
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !664
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  store i32 0, ptr %i.al, align 8, !tbaa !665
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  store i8 1, ptr %i.am, align 4, !tbaa !210
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 -1, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.ae, align 8, !tbaa !19
  store i64 %1, ptr %i.aj, align 8, !tbaa !666
  store ptr %i.ae, ptr %0, align 8, !tbaa !171
  %i.ao = atomicrmw add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  invoke void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIaEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 noundef 0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  br label %common.resume

bb.m:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIaEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.211", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !664  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !130

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !895
  store i64 %2, ptr %4, align 16, !tbaa !112, !alias.scope !898, !noalias !895
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !112, !alias.scope !898, !noalias !895
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.53, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !895
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIaEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.53) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !107    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !112
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !85
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPaaEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !210
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIaEEPT_v.exit, label %bb.g, !prof !211

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIaEEPT_vE18veloxCheckFailArgs) #29
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIaEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !180
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %gepdiff = sub nuw nsw i64 %2, %1
  %i.s = load i8, ptr %3, align 1, !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %i.s, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPaaEvT_S1_RKT0_.exit

_ZSt4fillIPaaEvT_S1_RKT0_.exit:                   ; preds = %_ZNK8facebook5velox6Buffer9asMutableIaEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10FlatVectorIsE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %2 = alloca %"class.std::optional.268", align 2 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i8, ptr %i.c, align 4, !tbaa !210
  %i.e = and i8 %i.d, 2
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.q, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread: ; preds = %bb.b, %_ZNK8facebook5velox6Buffer9isMutableEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !335
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !819
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.n, align 2, !tbaa !901
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIsEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %1, i64 noundef %i.k, ptr noundef %i.m, ptr noundef nonnull align 2 dereferenceable(4) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !171
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.p = load ptr, ptr %1, align 8, !tbaa !171    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.r = load i8, ptr %i.q, align 4, !tbaa !210
  %i.s = and i8 %i.r, 2
  %.not.i5 = icmp eq i8 %i.s, 0
  br i1 %.not.i5, label %bb.e, label %bb.d, !prof !211

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #29
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.i, align 8, !tbaa !335
  %i.u = zext i32 %i.t to i64
  %i.v = shl i64 %i.u, 33
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !180
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !903
  %i.aa = ashr exact i64 %i.v, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 2 %i.z, i64 %i.aa, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e, %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.ac = load ptr, ptr %1, align 8, !tbaa !171   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = atomicrmw add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !171 ; 7 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !171
  %.not.i2.i = icmp eq ptr %i.af, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.i
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i unwind label %bb.j, !inline_history !172

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !173
  %.not.i.i.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !19
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %..i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit unwind label %bb.j, !inline_history !172

bb.j:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #31
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit: ; preds = %.noexc.i.i, %bb.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !171 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !210
  %i.aw = and i8 %i.av, 2
  %.not.i6 = icmp eq i8 %i.aw, 0
  br i1 %.not.i6, label %bb.l, label %bb.k, !prof !211

bb.k:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIsEEPT_vE18veloxCheckFailArgs) #29
          to label %.noexc7 unwind label %bb.o

.noexc7:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !180
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !903
  %i.ba = load ptr, ptr %1, align 8, !tbaa !171   ; 7 uses
  %.not.i8 = icmp eq ptr %i.ba, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = atomicrmw sub ptr %i.bb, i32 1 acq_rel, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.m
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %.noexc.i unwind label %bb.n, !inline_history !172

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !173
  %.not.i.i9 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !19
  %..i.i = select i1 %.not.i.i9, i64 8, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %..i.i
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.n, !inline_history !172

bb.n:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #31
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.l, %bb.m, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.o ], [ %i.ab, %bb.f ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !903
  ret ptr %i.bq
end_hunk_3
