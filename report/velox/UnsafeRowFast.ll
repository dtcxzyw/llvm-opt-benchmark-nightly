Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/UnsafeRowFast?download=true
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
  %10 = alloca %"class.std::vector.57", align 8   ; 11 uses
  %11 = alloca %"class.std::vector.25", align 8   ; 12 uses
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
  %i.n = tail call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 4 uses
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %3, align 8, !tbaa !171    ; 2 uses
  %.not159 = icmp eq ptr %i.p, null
  br i1 %.not159, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !180
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = phi ptr [ %i.r, %bb.b ], [ null, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %.not160 = icmp eq i32 %i.n, 0                  ; 2 uses
  br i1 %.not160, label %._crit_edge178, label %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.u = shl nuw nsw i64 %i.o, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #30
          to label %.lr.ph177 unwind label %bb.d  ; 3 uses

.lr.ph177:                                        ; preds = %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_M_allocateEm.exit.i
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

bb.e:                                             ; preds = %.lr.ph177, %._crit_edge
  %i.ab = phi i64 [ %i.i, %.lr.ph177 ], [ %i.dy, %._crit_edge ]
  %.065176 = phi i32 [ 0, %.lr.ph177 ], [ %i.dz, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !179
  %sext161 = shl i64 %i.ab, 32
  %i.ad = ashr exact i64 %sext161, 32
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
          to label %.noexc155 unwind label %.loopexit.split-lp170

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
          to label %.noexc156 unwind label %.loopexit169 ; 12 uses

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
  %scevgep264 = getelementptr i8, ptr %scevgep, i64 %i.be
  %scevgep265 = getelementptr i8, ptr %i.ak, i64 8
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.be
  %bound0 = icmp ult ptr %i.av, %scevgep266
  %bound1 = icmp ult ptr %i.ak, %scevgep264
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i149.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check267 = icmp ult i64 %i.az, 120
  br i1 %min.iters.check267, label %vec.epilog.ph, label %vector.ph

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
  %next.gep268 = getelementptr i8, ptr %i.ak, i64 %i.bj ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.bk = getelementptr i8, ptr %next.gep268, i64 32 ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep268, i64 64 ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep268, i64 96 ; 2 uses
  %wide.load = load <4 x ptr>, ptr %next.gep268, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  %wide.load269 = load <4 x ptr>, ptr %i.bk, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  %wide.load270 = load <4 x ptr>, ptr %i.bl, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  %wide.load271 = load <4 x ptr>, ptr %i.bm, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  %i.bn = getelementptr i8, ptr %next.gep, i64 32
  %i.bo = getelementptr i8, ptr %next.gep, i64 64
  %i.bp = getelementptr i8, ptr %next.gep, i64 96
  store <4 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !171, !alias.scope !201, !noalias !198
  store <4 x ptr> %wide.load269, ptr %i.bn, align 8, !tbaa !171, !alias.scope !201, !noalias !198
  store <4 x ptr> %wide.load270, ptr %i.bo, align 8, !tbaa !171, !alias.scope !201, !noalias !198
  store <4 x ptr> %wide.load271, ptr %i.bp, align 8, !tbaa !171, !alias.scope !201, !noalias !198
  store <4 x ptr> splat (ptr null), ptr %next.gep268, align 8, !tbaa !171, !alias.scope !198, !noalias !193
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
  %n.vec273 = and i64 %i.bb, 4611686018427387900  ; 3 uses
  %i.br = shl i64 %n.vec273, 3                    ; 2 uses
  %i.bs = getelementptr i8, ptr %i.av, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.ak, i64 %i.br
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index274 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next278, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = shl i64 %index274, 3                    ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.av, i64 %i.bu
  %next.gep276 = getelementptr i8, ptr %i.ak, i64 %i.bu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %wide.load277 = load <4 x ptr>, ptr %next.gep276, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  store <4 x ptr> %wide.load277, ptr %next.gep275, align 8, !tbaa !171, !alias.scope !201, !noalias !198
  store <4 x ptr> splat (ptr null), ptr %next.gep276, align 8, !tbaa !171, !alias.scope !198, !noalias !193
  %index.next278 = add nuw i64 %index274, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next278, %n.vec273
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !207

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n279 = icmp eq i64 %i.bb, %n.vec273
  br i1 %cmp.n279, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i149.preheader
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
  %.not190 = icmp eq i64 %i.cw, 0
  br i1 %.not190, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit
  %i.cx = lshr i32 %.065176, 3
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = and i32 %.065176, 7
  %i.da = shl nuw nsw i32 1, %i.cz                ; 2 uses
  br i1 %.not100, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %bb.o ], [ 0, %.lr.ph ] ; 6 uses
  %i.db = load ptr, ptr %2, align 8, !tbaa !168
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv198
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !212
  %i.de = load ptr, ptr %4, align 8, !tbaa !94
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv198
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !98
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cy
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !112
  %i.dk = zext i8 %i.dj to i32
  %i.dl = and i32 %i.da, %i.dk
  %.not162.us = icmp eq i32 %i.dl, 0
  %i.dm = lshr i64 %indvars.iv198, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dm ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !112 ; 2 uses
  br i1 %.not162.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us
  %i.dp = and i64 %indvars.iv198, 7
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !112
  %i.ds = and i8 %i.dr, %i.do
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.dt = trunc i64 %indvars.iv198 to i8
  %i.du = and i8 %i.dt, 7
  %i.dv = shl nuw i8 1, %i.du
  %i.dw = or i8 %i.do, %i.dv
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i.us = phi i8 [ %i.ds, %bb.m ], [ %i.dw, %bb.n ]
  store i8 %.sink.i.us, ptr %i.dn, align 1, !tbaa !112
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.dx = icmp ugt i64 %i.cw, %indvars.iv.next199
  br i1 %i.dx, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !213

._crit_edge:                                      ; preds = %bb.w, %bb.o, %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit
  %i.dy = phi i64 [ %i.cw, %bb.o ], [ 0, %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit ], [ %i.fk, %bb.w ] ; 2 uses
  %i.dz = add nuw i32 %.065176, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.dz, %i.n
  br i1 %exitcond.not, label %._crit_edge178, label %bb.e, !llvm.loop !214

bb.p:                                             ; preds = %bb.e
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit169:                                     ; preds = %_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit171 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp170:                            ; preds = %bb.h
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp170, %.loopexit169
  %lpad.phi173 = phi { ptr, i32 } [ %lpad.loopexit171, %.loopexit169 ], [ %lpad.loopexit.split-lp172, %.loopexit.split-lp170 ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn98 = phi { ptr, i32 } [ %lpad.phi173, %bb.q ], [ %i.ea, %bb.p ]
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
  %.not162 = icmp eq i32 %i.ev, 0
  %i.ew = lshr i64 %indvars.iv, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ew ; 3 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !112 ; 2 uses
  br i1 %.not162, label %bb.u, label %bb.v

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

._crit_edge178:                                   ; preds = %._crit_edge, %bb.c
  %i.fm = phi i64 [ %i.i, %bb.c ], [ %i.dy, %._crit_edge ] ; 10 uses
  %14 = sext i32 %i.n to i64
  %i.fn = shl nsw i64 %14, 29
  %i.fo = add nsw i64 %i.fn, 33822867456
  %sext = ashr i64 %i.fo, 32
  %i.fp = and i64 %sext, -8                       ; 4 uses
  %.not191 = icmp eq i64 %i.fm, 0
  br i1 %.not191, label %.preheader, label %.lr.ph181

.lr.ph181:                                        ; preds = %._crit_edge178
  %.not95 = icmp eq ptr %i.s, null
  br i1 %.not95, label %iter.check297, label %.lr.ph181.split

iter.check297:                                    ; preds = %.lr.ph181
  %i.fq = load ptr, ptr %4, align 8, !tbaa !94    ; 3 uses
  %min.iters.check282 = icmp ult i64 %i.fm, 4
  br i1 %min.iters.check282, label %vec.epilog.scalar.ph298.preheader, label %vector.main.loop.iter.check283

vector.main.loop.iter.check283:                   ; preds = %iter.check297
  %min.iters.check284 = icmp ult i64 %i.fm, 16
  br i1 %min.iters.check284, label %vec.epilog.ph301, label %vector.ph285

vector.ph285:                                     ; preds = %vector.main.loop.iter.check283
  %i.fr = and i64 %i.fm, 12
  %n.vec286 = and i64 %i.fm, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.fp, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph285
  %index288 = phi i64 [ 0, %vector.ph285 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index288 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 64 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 96 ; 2 uses
  %wide.load289 = load <4 x i64>, ptr %i.fs, align 8, !tbaa !98
  %wide.load290 = load <4 x i64>, ptr %i.ft, align 8, !tbaa !98
  %wide.load291 = load <4 x i64>, ptr %i.fu, align 8, !tbaa !98
  %wide.load292 = load <4 x i64>, ptr %i.fv, align 8, !tbaa !98
  %i.fw = add <4 x i64> %wide.load289, %broadcast.splat
  %i.fx = add <4 x i64> %wide.load290, %broadcast.splat
  %i.fy = add <4 x i64> %wide.load291, %broadcast.splat
  %i.fz = add <4 x i64> %wide.load292, %broadcast.splat
  store <4 x i64> %i.fw, ptr %i.fs, align 8, !tbaa !98
  store <4 x i64> %i.fx, ptr %i.ft, align 8, !tbaa !98
  store <4 x i64> %i.fy, ptr %i.fu, align 8, !tbaa !98
  store <4 x i64> %i.fz, ptr %i.fv, align 8, !tbaa !98
  %index.next293 = add nuw i64 %index288, 16      ; 2 uses
  %i.ga = icmp eq i64 %index.next293, %n.vec286
  br i1 %i.ga, label %middle.block294, label %vector.body287, !llvm.loop !215

middle.block294:                                  ; preds = %vector.body287
  %cmp.n295 = icmp eq i64 %i.fm, %n.vec286
  br i1 %cmp.n295, label %.preheader, label %vec.epilog.iter.check299

vec.epilog.iter.check299:                         ; preds = %middle.block294
  %min.epilog.iters.check300 = icmp eq i64 %i.fr, 0
  br i1 %min.epilog.iters.check300, label %vec.epilog.scalar.ph298.preheader, label %vec.epilog.ph301, !prof !206

vec.epilog.ph301:                                 ; preds = %vector.main.loop.iter.check283, %vec.epilog.iter.check299
  %vec.epilog.resume.val296 = phi i64 [ %n.vec286, %vec.epilog.iter.check299 ], [ 0, %vector.main.loop.iter.check283 ]
  %n.vec302 = and i64 %i.fm, -4                   ; 3 uses
  %broadcast.splatinsert303 = insertelement <4 x i64> poison, i64 %i.fp, i64 0
  %broadcast.splat304 = shufflevector <4 x i64> %broadcast.splatinsert303, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body305

vec.epilog.vector.body305:                        ; preds = %vec.epilog.vector.body305, %vec.epilog.ph301
  %index306 = phi i64 [ %vec.epilog.resume.val296, %vec.epilog.ph301 ], [ %index.next308, %vec.epilog.vector.body305 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index306 ; 2 uses
  %wide.load307 = load <4 x i64>, ptr %i.gb, align 8, !tbaa !98
  %i.gc = add <4 x i64> %wide.load307, %broadcast.splat304
  store <4 x i64> %i.gc, ptr %i.gb, align 8, !tbaa !98
  %index.next308 = add nuw i64 %index306, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next308, %n.vec302
  br i1 %i.gd, label %vec.epilog.middle.block309, label %vec.epilog.vector.body305, !llvm.loop !216

vec.epilog.middle.block309:                       ; preds = %vec.epilog.vector.body305
  %cmp.n310 = icmp eq i64 %i.fm, %n.vec302
  br i1 %cmp.n310, label %.preheader, label %vec.epilog.scalar.ph298.preheader

vec.epilog.scalar.ph298.preheader:                ; preds = %iter.check297, %vec.epilog.iter.check299, %vec.epilog.middle.block309
  %indvars.iv204.ph = phi i64 [ 0, %iter.check297 ], [ %n.vec286, %vec.epilog.iter.check299 ], [ %n.vec302, %vec.epilog.middle.block309 ]
  br label %vec.epilog.scalar.ph298

vec.epilog.scalar.ph298:                          ; preds = %vec.epilog.scalar.ph298.preheader, %vec.epilog.scalar.ph298
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %vec.epilog.scalar.ph298 ], [ %indvars.iv204.ph, %vec.epilog.scalar.ph298.preheader ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv204 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !98
  %i.gg = add i64 %i.gf, %i.fp
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !98
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %i.gh = icmp ugt i64 %i.fm, %indvars.iv.next205
  br i1 %i.gh, label %vec.epilog.scalar.ph298, label %.preheader, !llvm.loop !217

.preheader:                                       ; preds = %bb.z, %vec.epilog.scalar.ph298, %middle.block294, %vec.epilog.middle.block309, %._crit_edge178
  br i1 %.not160, label %._crit_edge188, label %.lr.ph187

.lr.ph187:                                        ; preds = %.preheader
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

bb.x:                                             ; preds = %._crit_edge188
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph181.split:                                  ; preds = %.lr.ph181, %bb.z
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %bb.z ], [ 0, %.lr.ph181 ] ; 4 uses
  %i.gr = lshr i64 %indvars.iv201, 6
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !98
  %i.gu = and i64 %indvars.iv201, 63
  %i.gv = shl nuw i64 1, %i.gu
  %i.gw = and i64 %i.gt, %i.gv
  %.not.i111 = icmp eq i64 %i.gw, 0
  br i1 %.not.i111, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph181.split
  %i.gx = load ptr, ptr %4, align 8, !tbaa !94
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv201 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !98
  %i.ha = add i64 %i.gz, %i.fp
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !98
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph181.split, %bb.y
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.hb = icmp ugt i64 %i.fm, %indvars.iv.next202
  br i1 %i.hb, label %.lr.ph181.split, label %.preheader, !llvm.loop !218

._crit_edge188:                                   ; preds = %bb.bm, %.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  store ptr null, ptr %0, align 8, !tbaa !25, !alias.scope !219
  %i.hc = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #30
          to label %.noexc112 unwind label %bb.x  ; 6 uses

.noexc112:                                        ; preds = %._crit_edge188
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i32 1, ptr %i.hd, align 8, !tbaa !126, !noalias !219
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  store i32 1, ptr %i.he, align 4, !tbaa !128, !noalias !219
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.hc, align 8, !tbaa !19, !noalias !219
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox9RowVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEERKN5boost13intrusive_ptrINS1_6BufferEEERKmSt6vectorIS7_INS1_10BaseVectorEESaISN_EEEEvPT_DpOT0_(ptr noundef nonnull %i.hf, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bn unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !219

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc112
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef 168) #27, !noalias !219
  br label %.body

bb.aa:                                            ; preds = %.lr.ph187, %bb.bm
  %indvars.iv213 = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next214, %bb.bm ] ; 4 uses
  %i.hh = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !19
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = trunc nuw nsw i64 %indvars.iv213 to i32
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
  br i1 %i.hr, label %bb.az, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.hs = load i64, ptr %i.b, align 8, !tbaa !98  ; 12 uses
  %i.ht = icmp ugt i64 %i.hs, 1152921504606846975
  br i1 %i.ht, label %bb.ae, label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #29
          to label %.noexc114 unwind label %.loopexit.split-lp

.noexc114:                                        ; preds = %bb.ae
  unreachable

_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i113 = icmp eq i64 %i.hs, 0
  br i1 %.not.i.i.i.i113, label %.loopexit.thread, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.hu = shl nuw nsw i64 %i.hs, 3
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #30
          to label %.noexc115 unwind label %.loopexit163 ; 4 uses

.noexc115:                                        ; preds = %bb.af
  store ptr %i.hv, ptr %10, align 8, !tbaa !168
end_hunk_1
