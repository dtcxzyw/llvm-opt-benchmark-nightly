inline.NumInlined: 1983
inline.NumDeleted: 978
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK6duckdb22VariantExtractBindData4CopyEv:bb.a
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %i.b) #28, !noalias !127, !inline_history !131
  call void @_ZdlPv(ptr noundef nonnull %i.b) #30, !noalias !127, !inline_history !130
  resume { ptr, i32 } %i.q

_ZNSt10unique_ptrIN6duckdb22VariantExtractBindDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !127 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.r, ptr %i.s, align 8, !tbaa !25, !noalias !127
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !23, !noalias !127
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !11, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !127
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !56, !noalias !127
  store i32 %i.x, ptr %i.v, align 8, !tbaa !56, !noalias !127
  store ptr %i.b, ptr %0, align 8, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6duckdb22VariantExtractBindData6EqualsERKNS_12FunctionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !135   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !135
  %.not = icmp eq i8 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.b:                                             ; preds = %bb.a
  switch i8 %i.b, label %.thread [
    i8 2, label %bb.c
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !138
  %.not9 = icmp eq i32 %i.f, %i.h
  br i1 %.not9, label %.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.e
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !23
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.q, i64 %i.l)
  %.not11 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not11, label %.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

.thread:                                          ; preds = %bb.b, %bb.e, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.c, %bb.a, %.thread
  %.0 = phi i1 [ true, %.thread ], [ false, %bb.a ], [ false, %bb.c ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12VariantUtils14VariantExtractERNS_6VectorERKNS_6vectorINS_20VariantPathComponentELb1ESaIS4_EEES2_m(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::RecursiveUnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"struct.duckdb::UnifiedVariantVectorData", align 8 ; 7 uses
  %6 = alloca %"struct.duckdb::SelectionVector", align 8 ; 11 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 10 uses
  %8 = alloca %"class.duckdb::AllocatedData", align 8 ; 7 uses
  %9 = alloca %"struct.duckdb::ValidityMask", align 8 ; 20 uses
  %10 = alloca %"struct.duckdb::ValidityMask", align 8 ; 9 uses
  %11 = alloca %"struct.duckdb::SelectionVector", align 8 ; 11 uses
  %12 = alloca %"class.duckdb::Vector", align 8   ; 8 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv() ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 104
  invoke void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.ds, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn161.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ds ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(128) %4) #28
  br label %common.resume

_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit: ; preds = %bb.a
  invoke void @_ZN6duckdb6Vector24RecursiveToUnifiedFormatERS0_mRNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN6duckdb24UnifiedVariantVectorDataC1ERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %3)
          to label %.preheader238 unwind label %bb.i

.preheader238:                                    ; preds = %bb.e
  %.not260 = icmp eq i64 %3, 0                    ; 5 uses
  br i1 %.not260, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader238
  %i.e = load ptr, ptr %6, align 8, !tbaa !37
  %i.f = shl nuw i64 %3, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.e, i8 0, i64 %i.f, i1 false), !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader238
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.g = shl i64 %3, 3                            ; 2 uses
  %i.h = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.g)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %._crit_edge
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %i.h, i64 noundef %i.g)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.j

bb.f:                                             ; preds = %_ZN6duckdb28RecursiveUnifiedVectorFormatC2Ev.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 24, i1 false)
  store i64 %3, ptr %i.o, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.r = load ptr, ptr %1, align 8, !tbaa !146
  %.not261 = icmp eq ptr %i.q, %i.r
  br i1 %.not261, label %._crit_edge250, label %.lr.ph249

.lr.ph249:                                        ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.k

._crit_edge250:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %_ZN6duckdb9Allocator8AllocateEm.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb20UnifiedVariantVector9GetValuesERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.ah unwind label %bb.bb     ; 4 uses

bb.j:                                             ; preds = %.noexc, %._crit_edge
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.k:                                             ; preds = %.lr.ph249, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit
  %.0140248 = phi i64 [ 0, %.lr.ph249 ], [ %i.as, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit ] ; 3 uses
  %i.w = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZNK6duckdb6vectorINS_20VariantPathComponentELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0140248)
          to label %bb.l unwind label %bb.t       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %14 = trunc nuw i64 %.0140248 to i1             ; 2 uses
  %. = select i1 %14, ptr %7, ptr %6
  %i.x = select i1 %14, ptr %6, ptr %7            ; 2 uses
  %i.y = load i8, ptr %i.w, align 8, !tbaa !53
  %i.z = icmp eq i8 %i.y, 2
  %i.aa = select i1 %i.z, i8 30, i8 29
  %i.ab = invoke i16 @_ZN6duckdb12VariantUtils17CollectNestedDataERKNS_24UnifiedVariantVectorDataENS_18VariantLogicalTypeERKNS_15SelectionVectorEmNS_12optional_idxEmPNS_17VariantNestedDataERNS_12ValidityMaskE(ptr noundef nonnull align 8 dereferenceable(160) %5, i8 noundef zeroext %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %., i64 noundef %3, i64 -1, i64 poison, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.u       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 24, i1 false)
  store i64 %3, ptr %i.s, align 8, !tbaa !57
  invoke void @_ZN6duckdb12VariantUtils15FindChildValuesERKNS_24UnifiedVariantVectorDataERKNS_20VariantPathComponentENS_12optional_ptrIKNS_15SelectionVectorELb1EEERS8_RNS_12ValidityMaskEPKNS_17VariantNestedDataERKSC_m(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(44) %i.w, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %3)
          to label %.preheader237 unwind label %bb.v

.preheader237:                                    ; preds = %bb.m
  br i1 %.not260, label %._crit_edge247, label %.lr.ph246

._crit_edge247:                                   ; preds = %bb.af, %.preheader237
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge247
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ad, align 8, !tbaa !119
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !121
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #28, !inline_history !147
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #28, !inline_history !147
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.q ], [ %i.aq, %bb.r ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.s, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !125

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #28
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %._crit_edge247, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.as = add nuw i64 %.0140248, 1                ; 2 uses
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.au = load ptr, ptr %1, align 8, !tbaa !146
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 48
  %i.az = icmp ult i64 %i.as, %i.ay
  br i1 %i.az, label %bb.k, label %._crit_edge250, !llvm.loop !148

bb.t:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.u:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.v:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.lr.ph246:                                        ; preds = %.preheader237, %bb.af
  %.0142245 = phi i64 [ %i.cp, %bb.af ], [ 0, %.preheader237 ] ; 9 uses
  %i.bd = load ptr, ptr %9, align 8, !tbaa !46    ; 3 uses
  %.not.i = icmp eq ptr %i.bd, null               ; 2 uses
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph246
  %i.be = lshr i64 %.0142245, 6
  %i.bf = and i64 %.0142245, 63
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !21
  %i.bi = shl nuw i64 1, %i.bf
  %i.bj = and i64 %i.bh, %i.bi
  %.not235 = icmp eq i64 %i.bj, 0
  br i1 %.not235, label %bb.af, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.w:                                             ; preds = %bb.z
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %.lr.ph246, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bl = load ptr, ptr %10, align 8, !tbaa !46   ; 2 uses
  %.not.i177 = icmp eq ptr %i.bl, null
  br i1 %.not.i177, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bm = lshr i64 %.0142245, 6                   ; 2 uses
  %i.bn = and i64 %.0142245, 63
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !21
  %i.bq = shl nuw i64 1, %i.bn                    ; 2 uses
  %i.br = and i64 %i.bp, %i.bq
  %.not236 = icmp eq i64 %i.br, 0
  br i1 %.not236, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i, label %bb.z, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.z:                                             ; preds = %bb.y
  %i.bs = load i64, ptr %i.o, align 8, !tbaa !57
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.bs)
          to label %.noexc182 unwind label %bb.w

.noexc182:                                        ; preds = %bb.z
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !46
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.y, %.noexc182
  %i.bt = phi ptr [ %.pre.i, %.noexc182 ], [ %i.bd, %bb.y ]
  %i.bu = xor i64 %i.bq, -1
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bm ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !21
  %i.bx = and i64 %i.bw, %i.bu
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !21
  br label %bb.af

bb.aa:                                            ; preds = %bb.x, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.0142245
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = invoke noundef zeroext i8 @_ZNK6duckdb24UnifiedVariantVectorData9GetTypeIdEmm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef %.0142245, i64 noundef %i.cb)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ce = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %.not.i183 = icmp eq ptr %i.ce, null
  br i1 %.not.i183, label %bb.ad, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit186

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load i64, ptr %i.o, align 8, !tbaa !57
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.cf)
          to label %.noexc185 unwind label %bb.ae

.noexc185:                                        ; preds = %bb.ad
  %.pre.i184 = load ptr, ptr %9, align 8, !tbaa !46
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit186

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit186: ; preds = %bb.ac, %.noexc185
  %i.cg = phi ptr [ %.pre.i184, %.noexc185 ], [ %i.ce, %bb.ac ]
  %i.ch = lshr i64 %.0142245, 6
  %i.ci = and i64 %.0142245, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = xor i64 %i.cj, -1
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !21
  %i.cn = and i64 %i.cm, %i.ck
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !21
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit186, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.ab, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cp = add nuw i64 %.0142245, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %3
  br i1 %exitcond.not, label %._crit_edge247, label %.lr.ph246, !llvm.loop !149

bb.ag:                                            ; preds = %bb.w, %bb.ae, %bb.v
  %.pn161.pn = phi { ptr, i32 } [ %i.bc, %bb.v ], [ %i.co, %bb.ae ], [ %i.bk, %bb.w ]
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.dn

bb.ah:                                            ; preds = %._crit_edge250
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.u)
          to label %bb.ai unwind label %bb.bc

bb.ai:                                            ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %i.cs = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.aj unwind label %bb.bd

bb.aj:                                            ; preds = %bb.ai
  %i.ct = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cs)
          to label %bb.ak unwind label %bb.be     ; 12 uses

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN6duckdb6Vector10InitializeEbm(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false, i64 noundef %3)
          to label %bb.al unwind label %bb.be

bb.al:                                            ; preds = %bb.ak
  %i.cu = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.am unwind label %bb.be

bb.am:                                            ; preds = %bb.al
  %i.cv = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.an unwind label %bb.be

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.cu, ptr noundef nonnull align 8 dereferenceable(104) %i.cv)
          to label %bb.ao unwind label %bb.be

bb.ao:                                            ; preds = %bb.an
  %i.cw = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector11GetChildrenERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ap unwind label %bb.be

bb.ap:                                            ; preds = %bb.ao
  %i.cx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector11GetChildrenERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.aq unwind label %bb.be

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.cw, ptr noundef nonnull align 8 dereferenceable(104) %i.cx)
          to label %bb.ar unwind label %bb.be

bb.ar:                                            ; preds = %bb.aq
  %i.cy = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector7GetDataERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.as unwind label %bb.be

bb.as:                                            ; preds = %bb.ar
  %i.cz = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector7GetDataERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.at unwind label %bb.be

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.cy, ptr noundef nonnull align 8 dereferenceable(104) %i.cz)
          to label %bb.au unwind label %bb.be

bb.au:                                            ; preds = %bb.at
  %i.da = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.av unwind label %bb.bf     ; 8 uses

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6duckdb6Vector10InitializeEbm(ptr noundef nonnull align 8 dereferenceable(104) %i.da, i1 noundef zeroext false, i64 noundef %3)
          to label %bb.aw unwind label %bb.bf

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.da, i64 noundef %i.ct)
          to label %bb.ax unwind label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.da, i64 noundef %i.ct)
          to label %bb.ay unwind label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.da)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !71
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.da)
          to label %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit unwind label %bb.bh

_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit: ; preds = %bb.az
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 3 uses
  br i1 %.not260, label %._crit_edge253, label %.lr.ph252

.lr.ph252:                                        ; preds = %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  br label %bb.bi

._crit_edge253:                                   ; preds = %bb.bn, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit
  %i.df = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.dg = load ptr, ptr %1, align 8, !tbaa !146
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = sdiv exact i64 %i.dj, 48
  %15 = trunc nuw i64 %i.dk to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  %i.dm = call noundef i64 @llvm.umax.i64(i64 %i.ct, i64 2048)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.dm)
          to label %.preheader.i unwind label %bb.ba

.preheader.i:                                     ; preds = %._crit_edge253
  %.not.i190 = icmp eq i64 %i.ct, 0
  br i1 %.not.i190, label %_ZN6duckdb15SelectionVectorC2Emm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dn = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.ct, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %vec.ind, ptr %i.do, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.dp, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb15SelectionVectorC2Emm.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.ba:                                            ; preds = %._crit_edge253
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dl) #28
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i = phi i64 [ %i.du, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ds = trunc i64 %.09.i to i32
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.09.i
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !3
  %i.du = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.du, %i.ct
  br i1 %exitcond.not.i, label %_ZN6duckdb15SelectionVectorC2Emm.exit, label %scalar.ph, !llvm.loop !153

_ZN6duckdb15SelectionVectorC2Emm.exit:            ; preds = %scalar.ph, %middle.block, %.preheader.i
  br i1 %.not260, label %._crit_edge256, label %.lr.ph255

.lr.ph255:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Emm.exit
  %i.dv = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %.not.i199 = icmp eq ptr %i.dv, null
  %i.dw = load ptr, ptr %11, align 8
  br label %bb.bo

bb.bb:                                            ; preds = %._crit_edge250
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.bc:                                            ; preds = %bb.ah
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.bd:                                            ; preds = %bb.ai
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.be:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.bf:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.bg:                                            ; preds = %bb.ay
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.bh:                                            ; preds = %bb.az
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.bi:                                            ; preds = %.lr.ph252, %bb.bn
  %.0141251 = phi i64 [ 0, %.lr.ph252 ], [ %i.fb, %bb.bn ] ; 6 uses
  %i.ee = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %.not.i191 = icmp eq ptr %i.ee, null
  br i1 %.not.i191, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit193.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit193

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit193: ; preds = %bb.bi
  %i.ef = lshr i64 %.0141251, 6                   ; 2 uses
  %i.eg = and i64 %.0141251, 63
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ef
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !21
  %i.ej = shl nuw i64 1, %i.eg                    ; 2 uses
  %i.ek = and i64 %i.ei, %i.ej
  %.not234 = icmp eq i64 %i.ek, 0
  br i1 %.not234, label %bb.bj, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit193.thread

bb.bj:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit193
  %i.el = load ptr, ptr %i.dd, align 8, !tbaa !46 ; 2 uses
  %.not.i194 = icmp eq ptr %i.el, null
  br i1 %.not.i194, label %bb.bk, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit197

bb.bk:                                            ; preds = %bb.bj
  %i.em = load i64, ptr %i.de, align 8, !tbaa !57
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i64 noundef %i.em)
          to label %.noexc196 unwind label %bb.bl

.noexc196:                                        ; preds = %bb.bk
  %.pre.i195 = load ptr, ptr %i.dd, align 8, !tbaa !46
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit197

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit197: ; preds = %bb.bj, %.noexc196
  %i.en = phi ptr [ %.pre.i195, %.noexc196 ], [ %i.el, %bb.bj ]
  %i.eo = xor i64 %i.ej, -1
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ef ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !21
  %i.er = and i64 %i.eq, %i.eo
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !21
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit193.thread: ; preds = %bb.bi, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit193
  %i.et = load ptr, ptr %i.u, align 8, !tbaa !109
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !37 ; 2 uses
  %.not.i198 = icmp eq ptr %i.eu, null
  br i1 %.not.i198, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit193.thread
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.0141251
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = zext i32 %i.ew to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.bm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit193.thread
  %i.ey = phi i64 [ %i.ex, %bb.bm ], [ %.0141251, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit193.thread ]
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.0141251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 16, i1 false), !tbaa.struct !154
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit197, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.fb = add nuw i64 %.0141251, 1                ; 2 uses
  %exitcond267.not = icmp eq i64 %i.fb, %3
  br i1 %exitcond267.not, label %._crit_edge253, label %bb.bi, !llvm.loop !155

._crit_edge256:                                   ; preds = %bb.bq, %_ZN6duckdb15SelectionVectorC2Emm.exit
  %i.fc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector15GetValuesTypeIdERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.br unwind label %bb.cb

bb.bo:                                            ; preds = %.lr.ph255, %bb.bq
  %.0139254 = phi i64 [ 0, %.lr.ph255 ], [ %i.fx, %bb.bq ] ; 6 uses
  br i1 %.not.i199, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit201.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit201

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit201: ; preds = %bb.bo
  %i.fd = lshr i64 %.0139254, 6
  %i.fe = and i64 %.0139254, 63
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.fd
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !21
  %i.fh = shl nuw i64 1, %i.fe
  %i.fi = and i64 %i.fg, %i.fh
  %.not232 = icmp eq i64 %i.fi, 0
  br i1 %.not232, label %bb.bq, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit201.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit201.thread: ; preds = %bb.bo, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit201
  %i.fj = load ptr, ptr %i.u, align 8, !tbaa !109
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !37 ; 2 uses
  %.not.i202 = icmp eq ptr %i.fk, null
  br i1 %.not.i202, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit203, label %bb.bp

bb.bp:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit201.thread
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.0139254
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = zext i32 %i.fm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit203

_ZNK6duckdb15SelectionVector9get_indexEm.exit203: ; preds = %bb.bp, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit201.thread
  %i.fo = phi i64 [ %i.fn, %bb.bp ], [ %.0139254, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit201.thread ]
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !156 ; 2 uses
  %.val = load ptr, ptr %7, align 8
  %.val233 = load ptr, ptr %6, align 8
  %i.fr = select i1 %15, ptr %.val, ptr %.val233
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.0139254
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.fu = trunc i64 %i.fq to i32
  %i.fv = add i32 %i.ft, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fq
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !3
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit201, %_ZNK6duckdb15SelectionVector9get_indexEm.exit203
  %i.fx = add nuw i64 %.0139254, 1                ; 2 uses
  %exitcond268.not = icmp eq i64 %i.fx, %3
  br i1 %exitcond268.not, label %._crit_edge256, label %bb.bo, !llvm.loop !158

bb.br:                                            ; preds = %._crit_edge256
  %i.fy = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector19GetValuesByteOffsetERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.bs unwind label %bb.cc

bb.bs:                                            ; preds = %bb.br
  %i.fz = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector15GetValuesTypeIdERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.bt unwind label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN6duckdb6Vector10DictionaryERS0_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.fc, ptr noundef nonnull align 8 dereferenceable(104) %i.fz, i64 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.ct)
          to label %bb.bu unwind label %bb.cc

bb.bu:                                            ; preds = %bb.bt
  %i.ga = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb13VariantVector19GetValuesByteOffsetERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.bv unwind label %bb.cc

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN6duckdb6Vector10DictionaryERS0_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.fy, ptr noundef nonnull align 8 dereferenceable(104) %i.ga, i64 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.ct)
          to label %bb.bw unwind label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.gb = load ptr, ptr %9, align 8, !tbaa !46
  %.not.i204 = icmp eq ptr %i.gb, null
  br i1 %.not.i204, label %bb.ck, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.gc)
          to label %bb.by unwind label %bb.cd

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull %13, i64 noundef %3)
          to label %bb.bz unwind label %bb.ce

bb.bz:                                            ; preds = %bb.by
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #28
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %12, i64 noundef %3, i64 noundef 0, i64 noundef 0)
          to label %bb.ca unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %12)
          to label %.preheader unwind label %bb.cf

.preheader:                                       ; preds = %bb.ca
  %i.gd = load ptr, ptr %9, align 8               ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  %or.cond = select i1 %.not260, i1 true, i1 %i.ge
  br i1 %or.cond, label %._crit_edge259, label %.lr.ph258.split

._crit_edge259:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit207.thread, %.preheader
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.ck

bb.cb:                                            ; preds = %._crit_edge256
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cc:                                            ; preds = %bb.cm, %bb.cl, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cd:                                            ; preds = %bb.bx
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ce:                                            ; preds = %bb.by
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #28
  br label %bb.cj

bb.cf:                                            ; preds = %bb.ca, %bb.bz
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.lr.ph258.splitthread-pre-split:                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit207.thread
  %.pr = load ptr, ptr %9, align 8, !tbaa !46
  br label %.lr.ph258.split

.lr.ph258.split:                                  ; preds = %.preheader, %.lr.ph258.splitthread-pre-split
  %i.gk = phi ptr [ %.pr, %.lr.ph258.splitthread-pre-split ], [ %i.gd, %.preheader ] ; 2 uses
  %.0257 = phi i64 [ %i.gs, %.lr.ph258.splitthread-pre-split ], [ 0, %.preheader ] ; 4 uses
  %.not.i205 = icmp eq ptr %i.gk, null
  br i1 %.not.i205, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit207.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit207

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit207: ; preds = %.lr.ph258.split
  %i.gl = lshr i64 %.0257, 6
  %i.gm = and i64 %.0257, 63
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gl
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !21
  %i.gp = shl nuw i64 1, %i.gm
  %i.gq = and i64 %i.go, %i.gp
  %.not = icmp eq i64 %i.gq, 0
  br i1 %.not, label %bb.cg, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit207.thread

bb.cg:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit207
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.0257, i1 noundef zeroext true)
          to label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit207.thread unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit207.thread: ; preds = %.lr.ph258.split, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit207, %bb.cg
  %i.gs = add nuw i64 %.0257, 1                   ; 2 uses
  %exitcond269.not = icmp eq i64 %i.gs, %3
  br i1 %exitcond269.not, label %._crit_edge259, label %.lr.ph258.splitthread-pre-split, !llvm.loop !159

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %.pn = phi { ptr, i32 } [ %i.gr, %bb.ch ], [ %i.gj, %bb.cf ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %12) #28
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ce, %bb.cd
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ci ], [ %i.gi, %bb.ce ], [ %i.gh, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.dm

bb.ck:                                            ; preds = %._crit_edge259, %bb.bw
  %i.gt = load i8, ptr %0, align 8, !tbaa !161
  %i.gu = icmp eq i8 %i.gt, 2
  br i1 %i.gu, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.cm unwind label %bb.cc

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3)
          to label %bb.cn unwind label %bb.cc

bb.cn:                                            ; preds = %bb.cm
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i208 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i208, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 4 uses
  %i.gy = load atomic i64, ptr %i.gx acquire, align 8 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 4294967297
  %i.ha = trunc i64 %i.gy to i32                  ; 2 uses
  br i1 %i.gz, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 0, ptr %i.gx, align 8, !tbaa !119
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  store i32 0, ptr %i.hb, align 4, !tbaa !121
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !122
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #28, !inline_history !162
  %i.hf = load ptr, ptr %i.gw, align 8, !tbaa !122
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #28, !inline_history !162
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.cq:                                            ; preds = %bb.co
  %i.hi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i209 = icmp eq i8 %i.hi, 0
  br i1 %.not.i.i.i.i.i209, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hj = add nsw i32 %i.ha, -1
  store i32 %i.hj, ptr %i.gx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i210

bb.cs:                                            ; preds = %bb.cq
  %i.hk = atomicrmw volatile add ptr %i.gx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i210

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i210: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i.i.i.i211 = phi i32 [ %i.ha, %bb.cr ], [ %i.hk, %bb.cs ]
  %i.hl = icmp eq i32 %.0.i.i.i.i.i.i211, 1
  br i1 %i.hl, label %bb.ct, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !125

bb.ct:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i210
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit
end_hunk_0
