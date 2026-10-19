Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/array_binary?download=true
inline.NumInlined: 369
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5arrow15BinaryViewArrayC2ESt10shared_ptrINS_9ArrayDataEE:bb.a
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ac, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !110
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #16, !inline_history !0
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #16, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i9.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i9.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.af, %bb.n ], [ %i.ap, %bb.o ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.p, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !111

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.i, ptr %i.u, align 8, !tbaa !102
  %.pre16 = load ptr, ptr %i.a, align 8, !tbaa !41 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre16, i64 40
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !81
  br label %.noexc

.noexc:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i
  %i.ar = phi ptr [ %.pre17, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ], [ %i.m, %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i ]
  %i.as = phi ptr [ %.pre16, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ], [ %i.g, %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !84 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.noexc
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !93, !range !94, !noundef !95
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.bb, i64 %i.au
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.noexc
  %.0.i.i.i = phi ptr [ %i.bc, %bb.r ], [ null, %bb.q ], [ null, %.noexc ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i, ptr %i.bd, align 8, !tbaa !119
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.be, align 8, !tbaa !109
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !110
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #16, !inline_history !1
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #16, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i14 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i14, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.w ], [ %i.br, %bb.x ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #16
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  ret void

bb.z:                                             ; preds = %bb.b
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.c
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.aa ], [ %i.bt, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA58_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(58) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow15BinaryViewArrayC2ESt10shared_ptrINS_8DataTypeEElS1_INS_6BufferEESt6vectorIS5_SaIS5_EES5_ll(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 32)) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::shared_ptr", align 8   ; 3 uses
  %9 = alloca %"class.std::shared_ptr.7", align 16 ; 4 uses
  %10 = alloca %"class.std::vector", align 16     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow15BinaryViewArrayE, i64 16), ptr %0, align 8, !tbaa !35
  %i.b = load ptr, ptr %4, align 8, !tbaa !135    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load <2 x ptr>, ptr %3, align 8, !tbaa !103
  store ptr null, ptr %i.i, align 8, !tbaa !102
  store <2 x ptr> %i.j, ptr %i.d, align 8, !tbaa !103
  store ptr null, ptr %3, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.k, ptr %i.c, align 8, !tbaa !106
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.f unwind label %11

bb.e:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.f unwind label %11

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.l = load ptr, ptr %4, align 8, !tbaa !81     ; 3 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !106  ; 5 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !105
  %.not.i.i11 = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i11, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq ptr %i.l, %i.m
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load <2 x ptr>, ptr %5, align 8, !tbaa !103
  store ptr null, ptr %i.q, align 8, !tbaa !102
  store <2 x ptr> %i.r, ptr %i.m, align 8, !tbaa !103
  store ptr null, ptr %5, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.s, ptr %i.c, align 8, !tbaa !106
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_insert_auxIS3_EEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.k unwind label %bb.av

bb.j:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.k unwind label %bb.av

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load <2 x ptr>, ptr %1, align 8, !tbaa !103
  store ptr null, ptr %i.u, align 8, !tbaa !102
  store <2 x ptr> %i.v, ptr %9, align 16, !tbaa !103
  store ptr null, ptr %1, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.x = load <2 x ptr>, ptr %4, align 8, !tbaa !135
  store <2 x ptr> %i.x, ptr %10, align 16, !tbaa !135
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !105
  store ptr %i.z, ptr %i.y, align 16, !tbaa !105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %8, ptr noundef nonnull %9, i64 noundef %2, ptr noundef nonnull %10, i64 noundef %6, i64 noundef %7)
          to label %bb.l unwind label %bb.aw

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %8, align 8, !tbaa !41    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !106
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84 ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.af, null
  br i1 %.not.i.i23, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !93, !range !94, !noundef !95
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.o, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i

_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.sink.i = phi ptr [ null, %bb.m ], [ %i.ak, %bb.o ], [ null, %bb.n ], [ null, %bb.l ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink.i, ptr %i.al, align 8, !tbaa !107
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !102 ; 4 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i.i.i, label %.noexc15, label %bb.p

bb.p:                                             ; preds = %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i
  %.not7.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !15
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !15
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !102
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.av = phi ptr [ %i.ap, %bb.p ], [ %i.ap, %bb.r ], [ %.pr.pre.i.i.i.i, %bb.s ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.aw, align 8, !tbaa !109
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !110
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #16, !inline_history !0
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #16, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i9.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i9.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i = phi i32 [ %i.az, %bb.w ], [ %i.bj, %bb.x ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.y, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !111

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.u, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !102
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre27 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !81
  br label %.noexc15

.noexc15:                                         ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i
  %i.bl = phi ptr [ %.pre27, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ], [ %i.ae, %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i ]
  %i.bm = phi ptr [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ], [ %i.aa, %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !80
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !84 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.noexc15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 9
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !93, !range !94, !noundef !95
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %i.bo
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.noexc15
  %.0.i.i.i = phi ptr [ %i.bw, %bb.aa ], [ null, %bb.z ], [ null, %.noexc15 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i, ptr %i.bx, align 8, !tbaa !119
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !102 ; 8 uses
  %.not.i.i16 = icmp eq ptr %i.by, null
  br i1 %.not.i.i16, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bz, align 8, !tbaa !109
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !110
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #16, !inline_history !1
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #16, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i17 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i17, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i = phi i32 [ %i.cc, %bb.af ], [ %i.cm, %bb.ag ]
  %i.cn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cn, label %bb.ah, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #16
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ab, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ah
  %i.co = load ptr, ptr %10, align 16, !tbaa !81  ; 3 uses
  %i.cp = load ptr, ptr %i.w, align 8, !tbaa !106 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dh, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i ], [ %i.co, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !102 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.cs, align 8, !tbaa !109
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !110
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !35
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #16, !inline_history !2
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !35
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #16, !inline_history !2
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cv, %bb.al ], [ %i.df, %bb.am ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dg, label %bb.an, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, !prof !111

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #16
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i: ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.aj, %.lr.ph.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.dh, %i.cp
  br i1 %.not.i.i.i18, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 16, !tbaa !81
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.di = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.co, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i
  %i.dj = load ptr, ptr %i.y, align 16, !tbaa !105
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dm) #18
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ao
  %i.dn = load ptr, ptr %i.t, align 8, !tbaa !102 ; 8 uses
  %.not.i.i19 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i19, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 4 uses
  %i.dp = load atomic i64, ptr %i.do acquire, align 8 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 4294967297
  %i.dr = trunc i64 %i.dp to i32                  ; 2 uses
  br i1 %i.dq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.do, align 8, !tbaa !109
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 0, ptr %i.ds, align 4, !tbaa !110
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !35
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #16, !inline_history !5
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #16, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.dz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i20 = icmp eq i8 %i.dz, 0
  br i1 %.not.i.i.i20, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ea = add nsw i32 %i.dr, -1
  store i32 %i.ea, ptr %i.do, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21

bb.at:                                            ; preds = %bb.ar
  %i.eb = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i22 = phi i32 [ %i.dr, %bb.as ], [ %i.eb, %bb.at ]
  %i.ec = icmp eq i32 %.0.i.i.i.i22, 1
  br i1 %i.ec, label %bb.au, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #16
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21, %bb.au
  ret void

11:                                               ; preds = %bb.e, %bb.d
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.av:                                            ; preds = %bb.j, %bb.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.k
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %11
  %.pn.pn = phi { ptr, i32 } [ %i.ee, %bb.aw ], [ %i.ed, %bb.av ], [ %12, %11 ]
  call void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, ptr } @_ZNK5arrow15BinaryViewArray7GetViewEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.c = getelementptr inbounds [16 x i8], ptr %i.b, i64 %1 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.e = icmp slt i32 %i.d, 13
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !104
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !84   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !93, !range !94, !noundef !95
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %i.s, ptr %i.u, ptr null, !prof !61
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !104
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  br label %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit

_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit: ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.f, %bb.b ], [ %i.z, %bb.c ]
  %i.ab = sext i32 %i.d to i64
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.ab, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.aa, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow15StringViewArrayC2ESt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 32)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow15StringViewArrayE, i64 16), ptr %0, align 8, !tbaa !35
  %i.b = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60
  %.not = icmp eq i32 %i.e, 39
  br i1 %.not, label %.critedge13, label %bb.b, !prof !61

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 3)
          to label %bb.c unwind label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA58_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(58) @.str.6)
          to label %.critedge unwind label %bb.aa ; 0 uses

.critedge:                                        ; preds = %bb.c
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.pre = load ptr, ptr %1, align 8, !tbaa !41
  br label %.critedge13

.critedge13:                                      ; preds = %bb.a, %.critedge
  %i.g = phi ptr [ %i.b, %bb.a ], [ %.pre, %.critedge ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102  ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !106
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !81   ; 3 uses
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.d

bb.d:                                             ; preds = %.critedge13
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84   ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.n, null
  br i1 %.not.i.i15, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !93, !range !94, !noundef !95
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  br label %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i

_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %.critedge13
  %.sink.i = phi ptr [ null, %bb.d ], [ %i.s, %bb.f ], [ null, %bb.e ], [ null, %.critedge13 ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink.i, ptr %i.t, align 8, !tbaa !107
  store ptr %i.g, ptr %i.a, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !102  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.v
  br i1 %.not.i.i.i.i, label %.noexc, label %bb.g

bb.g:                                             ; preds = %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i
  %.not7.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %i.w, align 4, !tbaa !15
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !15
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !102
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.g
  %i.ab = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.i ], [ %.pr.pre.i.i.i.i, %bb.j ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ac, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !110
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #16, !inline_history !0
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #16, !inline_history !0
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !104
  %.not.i9.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i9.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.af, %bb.n ], [ %i.ap, %bb.o ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.p, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !111

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.i, ptr %i.u, align 8, !tbaa !102
  %.pre16 = load ptr, ptr %i.a, align 8, !tbaa !41 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre16, i64 40
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !81
  br label %.noexc

.noexc:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i
  %i.ar = phi ptr [ %.pre17, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ], [ %i.m, %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i ]
  %i.as = phi ptr [ %.pre16, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ], [ %i.g, %_ZNK5arrow9ArrayData13GetValuesSafeIhEEPKT_il.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !84 ; 3 uses
end_hunk_0
