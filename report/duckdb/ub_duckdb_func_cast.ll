inline.NumInlined: 41041
inline.NumDeleted: 4767
begin_hunk_0_@_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_9hugeint_tES2_NS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvRNS_6VectorES8_mPvbNS_14FunctionErrorsE:bb.a
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_9hugeint_tES2_NS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mRNS_12ValidityMaskESD_Pvb(ptr noundef %i.ag, ptr noundef %i.ae, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef %3, i1 noundef zeroext %4)
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZN6duckdb6Vector10DictionaryERS0_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ag

bb.j:                                             ; preds = %.thread64, %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.k unwind label %bb.ac

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
          to label %bb.l unwind label %bb.ac

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !93
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_9hugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !530
  %i.as = load ptr, ptr %7, align 8, !tbaa !539
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  invoke void @_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_9hugeint_tES2_NS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESG_Pvb(ptr noundef %i.ar, ptr noundef %i.ap, i64 noundef %2, ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef %3, i1 noundef zeroext %4)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ax, align 8, !tbaa !136
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !138
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !718
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !718
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.t ], [ %i.bk, %bb.u ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.v, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !140

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.r, %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bo, align 8, !tbaa !136
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !138
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #28, !inline_history !719
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #28, !inline_history !719
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.aa:                                            ; preds = %bb.y
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.br, %bb.z ], [ %i.cb, %bb.aa ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cc, label %bb.ab, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !140

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ag

bb.ac:                                            ; preds = %bb.k, %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.n, %bb.m, %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.ac ], [ %i.cf, %bb.ae ], [ %i.ce, %bb.ad ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %bb.i, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_9hugeint_tES2_NS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mRNS_12ValidityMaskESD_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !94     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not84 = icmp eq i64 %2, 0
  br i1 %.not84, label %.loopexit, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.preheader
  %min.iters.check128 = icmp ult i64 %2, 4
  br i1 %min.iters.check128, label %.lr.ph82.preheader140, label %vector.ph129

vector.ph129:                                     ; preds = %.lr.ph82.preheader
  %n.vec131 = and i64 %2, -2                      ; 3 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph129
  %index133 = phi i64 [ 0, %vector.ph129 ], [ %index.next136, %vector.body132 ] ; 4 uses
  %i.b = or disjoint i64 %index133, 1             ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index133
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.b
  %wide.load134 = load <2 x i64>, ptr %i.c, align 8, !tbaa !13
  %wide.load135 = load <2 x i64>, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index133
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.b
  store <2 x i64> %wide.load134, ptr %i.e, align 8, !tbaa !13
  store <2 x i64> %wide.load135, ptr %i.f, align 8, !tbaa !13
  %index.next136 = add nuw i64 %index133, 2       ; 2 uses
  %i.g = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.g, label %middle.block137, label %vector.body132, !llvm.loop !5490

middle.block137:                                  ; preds = %vector.body132
  %cmp.n138 = icmp eq i64 %2, %n.vec131
  br i1 %cmp.n138, label %.loopexit, label %.lr.ph82.preheader140

.lr.ph82.preheader140:                            ; preds = %.lr.ph82.preheader, %middle.block137
  %.06481.ph = phi i64 [ 0, %.lr.ph82.preheader ], [ %n.vec131, %middle.block137 ]
  br label %.lr.ph82

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = icmp eq ptr %4, %3
  br i1 %i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134  ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !135
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !134  ; 8 uses
  store <2 x ptr> %i.m, ptr %i.h, align 8, !tbaa !135
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !136
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !138
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !1242
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !1242
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !140

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !141
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !141
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.am = add i64 %2, 63
  %i.an = lshr i64 %i.am, 6                       ; 3 uses
  %.not83 = icmp eq i64 %i.an, 0
  br i1 %.not83, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.o
  %i.ao = load ptr, ptr %3, align 8, !tbaa !94    ; 2 uses
  %.not.i65 = icmp eq ptr %i.ao, null
  br i1 %.not.i65, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph80, %.loopexit72.us
  %.079.us = phi i64 [ %.1.lcssa.us, %.loopexit72.us ], [ 0, %.lr.ph80 ] ; 7 uses
  %.06378.us = phi i64 [ %i.bf, %.loopexit72.us ], [ 0, %.lr.ph80 ]
  %i.ap = add i64 %.079.us, 64
  %i.aq = tail call noundef i64 @llvm.umin.i64(i64 %i.ap, i64 %2) ; 5 uses
  %i.ar = icmp ult i64 %.079.us, %i.aq
  br i1 %i.ar, label %.lr.ph.us.preheader, label %.loopexit72.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.as = sub nuw i64 %i.aq, %.079.us             ; 3 uses
  %min.iters.check115 = icmp ult i64 %i.as, 4
  br i1 %min.iters.check115, label %.lr.ph.us.preheader141, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.us.preheader
  %n.vec118 = and i64 %i.as, -2                   ; 3 uses
  %i.at = add i64 %.079.us, %n.vec118
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph116
  %index120 = phi i64 [ 0, %vector.ph116 ], [ %index.next123, %vector.body119 ] ; 2 uses
  %i.au = add i64 %.079.us, %index120             ; 3 uses
  %i.av = add i64 %i.au, 1                        ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.au
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.av
  %wide.load121 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !13
  %wide.load122 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.au
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.av
  store <2 x i64> %wide.load121, ptr %i.ay, align 8, !tbaa !13
  store <2 x i64> %wide.load122, ptr %i.az, align 8, !tbaa !13
  %index.next123 = add nuw i64 %index120, 2       ; 2 uses
  %i.ba = icmp eq i64 %index.next123, %n.vec118
  br i1 %i.ba, label %middle.block124, label %vector.body119, !llvm.loop !5491

middle.block124:                                  ; preds = %vector.body119
  %cmp.n125 = icmp eq i64 %i.as, %n.vec118
  br i1 %cmp.n125, label %.loopexit72.us, label %.lr.ph.us.preheader141

.lr.ph.us.preheader141:                           ; preds = %.lr.ph.us.preheader, %middle.block124
  %.174.us.ph = phi i64 [ %.079.us, %.lr.ph.us.preheader ], [ %i.at, %middle.block124 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader141, %.lr.ph.us
  %.174.us = phi i64 [ %i.be, %.lr.ph.us ], [ %.174.us.ph, %.lr.ph.us.preheader141 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.174.us
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.174.us
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !tbaa !13
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !tbaa !13
  %i.be = add nuw i64 %.174.us, 1                 ; 2 uses
  %exitcond92.not = icmp eq i64 %i.be, %i.aq
  br i1 %exitcond92.not, label %.loopexit72.us, label %.lr.ph.us, !llvm.loop !5492

.loopexit72.us:                                   ; preds = %.lr.ph.us, %middle.block124, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.079.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.aq, %middle.block124 ], [ %i.aq, %.lr.ph.us ]
  %i.bf = add nuw nsw i64 %.06378.us, 1           ; 2 uses
  %exitcond93.not = icmp eq i64 %i.bf, %i.an
  br i1 %exitcond93.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !5493

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph80, %.loopexit70
  %.079 = phi i64 [ %.4, %.loopexit70 ], [ 0, %.lr.ph80 ] ; 17 uses
  %.06378 = phi i64 [ %i.cu, %.loopexit70 ], [ 0, %.lr.ph80 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.06378
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13 ; 4 uses
  %i.bi = add i64 %.079, 64
  %i.bj = tail call noundef i64 @llvm.umin.i64(i64 %i.bi, i64 %2) ; 12 uses
  switch i64 %i.bh, label %.preheader69 [
    i64 -1, label %.preheader71
    i64 0, label %.loopexit70
  ]

.preheader71:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bk = icmp ult i64 %.079, %i.bj
  br i1 %i.bk, label %.lr.ph.preheader, label %.loopexit70

.lr.ph.preheader:                                 ; preds = %.preheader71
  %i.bl = sub nuw i64 %i.bj, %.079                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bl, 4
  br i1 %min.iters.check, label %.lr.ph.preheader143, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bl, -2                      ; 3 uses
  %i.bm = add i64 %.079, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = add i64 %.079, %index                   ; 3 uses
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bn
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bo
  %wide.load = load <2 x i64>, ptr %i.bp, align 8, !tbaa !13
  %wide.load113 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bn
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bo
  store <2 x i64> %wide.load, ptr %i.br, align 8, !tbaa !13
  store <2 x i64> %wide.load113, ptr %i.bs, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !5494

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.loopexit70, label %.lr.ph.preheader143

.lr.ph.preheader143:                              ; preds = %.lr.ph.preheader, %middle.block
  %.174.ph = phi i64 [ %.079, %.lr.ph.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph

.preheader69:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bu = icmp ult i64 %.079, %i.bj
  br i1 %i.bu, label %.lr.ph76.preheader, label %.loopexit70

.lr.ph76.preheader:                               ; preds = %.preheader69
  %i.bv = sub nuw i64 %i.bj, %.079
  %.neg = add i64 %.079, 1
  %xtraiter = and i64 %i.bv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol

.lr.ph76.prol:                                    ; preds = %.lr.ph76.preheader
  %i.bw = and i64 %i.bh, 1
  %.not.prol = icmp eq i64 %i.bw, 0
  br i1 %.not.prol, label %.lr.ph76.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph76.prol
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.079
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.079
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !tbaa !13
  store <2 x i64> %i.bz, ptr %i.by, align 8, !tbaa !13
  br label %.lr.ph76.prol.loopexit.unr-lcssa

.lr.ph76.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph76.prol
  %i.ca = add nuw i64 %.079, 1
  br label %.lr.ph76.prol.loopexit

.lr.ph76.prol.loopexit:                           ; preds = %.lr.ph76.prol.loopexit.unr-lcssa, %.lr.ph76.preheader
  %.275.unr = phi i64 [ %.079, %.lr.ph76.preheader ], [ %i.ca, %.lr.ph76.prol.loopexit.unr-lcssa ]
  %i.cb = icmp eq i64 %i.bj, %.neg
  br i1 %i.cb, label %.loopexit70, label %.lr.ph76

.lr.ph:                                           ; preds = %.lr.ph.preheader143, %.lr.ph
  %.174 = phi i64 [ %i.cf, %.lr.ph ], [ %.174.ph, %.lr.ph.preheader143 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.174
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.174
  %i.ce = load <2 x i64>, ptr %i.cc, align 8, !tbaa !13
  store <2 x i64> %i.ce, ptr %i.cd, align 8, !tbaa !13
  %i.cf = add nuw i64 %.174, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %i.bj
  br i1 %exitcond.not, label %.loopexit70, label %.lr.ph, !llvm.loop !5495

.lr.ph76:                                         ; preds = %.lr.ph76.prol.loopexit, %bb.s
  %.275 = phi i64 [ %i.ct, %bb.s ], [ %.275.unr, %.lr.ph76.prol.loopexit ] ; 5 uses
  %i.cg = sub nuw i64 %.275, %.079
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ch, %i.bh
  %.not = icmp eq i64 %i.ci, 0
  br i1 %.not, label %.lr.ph76.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph76
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.275
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.275
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !tbaa !13
  store <2 x i64> %i.cl, ptr %i.ck, align 8, !tbaa !13
  br label %.lr.ph76.1

.lr.ph76.1:                                       ; preds = %.lr.ph76, %bb.q
  %i.cm = add nuw i64 %.275, 1                    ; 3 uses
  %i.cn = sub nuw i64 %i.cm, %.079
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.co, %i.bh
  %.not.1 = icmp eq i64 %i.cp, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph76.1
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cm
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cm
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !tbaa !13
  store <2 x i64> %i.cs, ptr %i.cr, align 8, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph76.1
  %i.ct = add nuw i64 %.275, 2                    ; 2 uses
  %exitcond90.not.1 = icmp eq i64 %i.ct, %i.bj
  br i1 %exitcond90.not.1, label %.loopexit70, label %.lr.ph76, !llvm.loop !5496

.loopexit70:                                      ; preds = %.lr.ph, %.lr.ph76.prol.loopexit, %bb.s, %middle.block, %.preheader71, %.preheader69, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.bj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.bj, %middle.block ], [ %.079, %.preheader69 ], [ %.079, %.preheader71 ], [ %i.bj, %.lr.ph76.prol.loopexit ], [ %i.bj, %bb.s ], [ %i.bj, %.lr.ph ]
  %i.cu = add nuw nsw i64 %.06378, 1              ; 2 uses
  %exitcond91.not = icmp eq i64 %i.cu, %i.an
  br i1 %exitcond91.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !5493

.lr.ph82:                                         ; preds = %.lr.ph82.preheader140, %.lr.ph82
  %.06481 = phi i64 [ %i.cy, %.lr.ph82 ], [ %.06481.ph, %.lr.ph82.preheader140 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.06481
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.06481
  %i.cx = load <2 x i64>, ptr %i.cv, align 8, !tbaa !13
  store <2 x i64> %i.cx, ptr %i.cw, align 8, !tbaa !13
  %i.cy = add nuw i64 %.06481, 1                  ; 2 uses
  %exitcond94.not = icmp eq i64 %i.cy, %2
  br i1 %exitcond94.not, label %.loopexit, label %.lr.ph82, !llvm.loop !5497

.loopexit:                                        ; preds = %.loopexit70, %.loopexit72.us, %.lr.ph82, %middle.block137, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_9hugeint_tES2_NS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESG_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !94
  %.not.i = icmp eq ptr %i.a, null
  %.not44 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader38

.preheader38:                                     ; preds = %bb.a
  br i1 %.not44, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader38
  %i.b = load ptr, ptr %3, align 8, !tbaa !548    ; 2 uses
  %.not.i34 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i34, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.040.us = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.040.us, 6                     ; 2 uses
  %i.e = and i64 %.040.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.040.us
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.040.us
  %i.m = load <2 x i64>, ptr %i.k, align 8, !tbaa !13
  store <2 x i64> %i.m, ptr %i.l, align 8, !tbaa !13
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = load ptr, ptr %5, align 8, !tbaa !94     ; 2 uses
  %.not.i35.us = icmp eq ptr %i.n, null
  br i1 %.not.i35.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !tbaa !141
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.o)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !94
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %.pre.i.us, %bb.d ], [ %i.n, %bb.c ]
  %i.q = xor i64 %i.i, -1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.d ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = and i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.u = add nuw i64 %.040.us, 1                  ; 2 uses
  %exitcond48.not = icmp eq i64 %i.u, %2
  br i1 %exitcond48.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !5498

.preheader:                                       ; preds = %bb.a
  br i1 %.not44, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader
  %i.v = load ptr, ptr %3, align 8, !tbaa !548    ; 4 uses
  %.not.i36 = icmp eq ptr %i.v, null
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader: ; preds = %.lr.ph42
  %xtraiter = and i64 %2, 1
  %i.w = icmp eq i64 %2, 1
  br i1 %i.w, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader
  %unroll_iter = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader: ; preds = %.lr.ph42
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader64, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
  %n.vec = and i64 %2, -2                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.x = or disjoint i64 %index, 1                ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.x
  %wide.load = load <2 x i64>, ptr %i.y, align 8, !tbaa !13
  %wide.load63 = load <2 x i64>, ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.x
  store <2 x i64> %wide.load, ptr %i.aa, align 8, !tbaa !13
  store <2 x i64> %wide.load63, ptr %i.ab, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !5499

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader64

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader64: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader, %middle.block
  %.03341.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader64, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us
  %.03341.us = phi i64 [ %i.ag, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us ], [ %.03341.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader64 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.03341.us
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03341.us
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !tbaa !13
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !13
  %i.ag = add nuw i64 %.03341.us, 1               ; 2 uses
  %exitcond50.not = icmp eq i64 %i.ag, %2
  br i1 %exitcond50.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, !llvm.loop !5500

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.i
  %.040 = phi i64 [ %i.be, %bb.i ], [ 0, %.lr.ph ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.040
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 3 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = and i64 %i.aj, 63
  %i.am = load ptr, ptr %4, align 8, !tbaa !94
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13
  %i.ap = shl nuw i64 1, %i.al
  %i.aq = and i64 %i.ao, %i.ap
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.040
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !tbaa !13
  store <2 x i64> %i.at, ptr %i.as, align 8, !tbaa !13
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.au = load ptr, ptr %5, align 8, !tbaa !94    ; 2 uses
  %.not.i35 = icmp eq ptr %i.au, null
  br i1 %.not.i35, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.h:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.c, align 8, !tbaa !141
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.av)
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !94
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.g, %bb.h
  %i.aw = phi ptr [ %.pre.i, %bb.h ], [ %i.au, %bb.g ]
  %i.ax = lshr i64 %.040, 6
  %i.ay = and i64 %.040, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = xor i64 %i.az, -1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !13
  %i.bd = and i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.f
  %i.be = add nuw i64 %.040, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %2
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !5498

_ZNK6duckdb15SelectionVector9get_indexEm.exit37:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader.new
  %.03341 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader.new ], [ %i.bs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37 ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.03341
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03341
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !tbaa !13
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !13
  %i.bl = or disjoint i64 %.03341, 1              ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bl
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !tbaa !13
  store <2 x i64> %i.br, ptr %i.bq, align 8, !tbaa !13
  %i.bs = add nuw i64 %.03341, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit65.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, !llvm.loop !5501

.loopexit.loopexit65.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.epil.preheader: ; preds = %.loopexit.loopexit65.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader
  %.03341.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader ], [ %i.bs, %.loopexit.loopexit65.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.03341.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03341.epil.init
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !tbaa !13
  store <2 x i64> %i.by, ptr %i.bx, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.epil.preheader, %.loopexit.loopexit65.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, %middle.block, %.preheader38, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_9hugeint_tENS_10uhugeint_tENS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::uhugeint_t", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::optional_idx", align 8 ; 8 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !78
  switch i8 %i.a, label %bb.n [
    i8 2, label %bb.b
    i8 0, label %bb.h
    i8 3, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext true)
  br label %bb.ak

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext false)
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.j = call noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastINS_10uhugeint_tEEEbNS_9hugeint_tERT_(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.j, label %bb.d, label %bb.e, !prof !177

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.sroa.010.0.copyload.i.i = load i64, ptr %6, align 8, !tbaa !13
  %.sroa.311.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.311.0.copyload.i.i = load i64, ptr %.sroa.311.0..sroa_idx.i.i, align 8, !tbaa !13
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.010.0.copyload.i.i, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.311.0.copyload.i.i, 1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_21VectorTryCastOperatorINS_14NumericTryCastEEENS_9hugeint_tENS_10uhugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit

bb.e:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call fastcc void @_ZN6duckdbL17CastExceptionTextINS_9hugeint_tENS_10uhugeint_tEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable align 8 %7, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.n = invoke { i64, i64 } @_ZN6duckdb21HandleVectorCastError9OperationINS_10uhugeint_tEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_12ValidityMaskEmRNS_17VectorTryCastDataE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(17) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %7, align 8, !tbaa !105    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_21VectorTryCastOperatorINS_14NumericTryCastEEENS_9hugeint_tENS_10uhugeint_tEEET1_T0_RNS_12ValidityMaskEmPv.exit

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %7, align 8, !tbaa !105    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.s) #30
end_hunk_0
begin_hunk_1_@_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_10uhugeint_tES2_NS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvRNS_6VectorES8_mPvbNS_14FunctionErrorsE:bb.a
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_10uhugeint_tES2_NS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mRNS_12ValidityMaskESD_Pvb(ptr noundef %i.ag, ptr noundef %i.ae, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef %3, i1 noundef zeroext %4)
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZN6duckdb6Vector10DictionaryERS0_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ag

bb.j:                                             ; preds = %.thread64, %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.k unwind label %bb.ac

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
          to label %bb.l unwind label %bb.ac

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !93
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10uhugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !530
  %i.as = load ptr, ptr %7, align 8, !tbaa !539
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  invoke void @_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_10uhugeint_tES2_NS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESG_Pvb(ptr noundef %i.ar, ptr noundef %i.ap, i64 noundef %2, ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef %3, i1 noundef zeroext %4)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ax, align 8, !tbaa !136
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !138
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !718
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !718
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.t ], [ %i.bk, %bb.u ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.v, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !140

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.r, %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bo, align 8, !tbaa !136
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !138
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #28, !inline_history !719
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #28, !inline_history !719
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.aa:                                            ; preds = %bb.y
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.br, %bb.z ], [ %i.cb, %bb.aa ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cc, label %bb.ab, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !140

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ag

bb.ac:                                            ; preds = %bb.k, %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.n, %bb.m, %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.ac ], [ %i.cf, %bb.ae ], [ %i.ce, %bb.ad ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %bb.i, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_10uhugeint_tES2_NS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mRNS_12ValidityMaskESD_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !94     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not84 = icmp eq i64 %2, 0
  br i1 %.not84, label %.loopexit, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.preheader
  %min.iters.check128 = icmp ult i64 %2, 4
  br i1 %min.iters.check128, label %.lr.ph82.preheader140, label %vector.ph129

vector.ph129:                                     ; preds = %.lr.ph82.preheader
  %n.vec131 = and i64 %2, -2                      ; 3 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph129
  %index133 = phi i64 [ 0, %vector.ph129 ], [ %index.next136, %vector.body132 ] ; 4 uses
  %i.b = or disjoint i64 %index133, 1             ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index133
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.b
  %wide.load134 = load <2 x i64>, ptr %i.c, align 8, !tbaa !13
  %wide.load135 = load <2 x i64>, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index133
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.b
  store <2 x i64> %wide.load134, ptr %i.e, align 8, !tbaa !13
  store <2 x i64> %wide.load135, ptr %i.f, align 8, !tbaa !13
  %index.next136 = add nuw i64 %index133, 2       ; 2 uses
  %i.g = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.g, label %middle.block137, label %vector.body132, !llvm.loop !5786

middle.block137:                                  ; preds = %vector.body132
  %cmp.n138 = icmp eq i64 %2, %n.vec131
  br i1 %cmp.n138, label %.loopexit, label %.lr.ph82.preheader140

.lr.ph82.preheader140:                            ; preds = %.lr.ph82.preheader, %middle.block137
  %.06481.ph = phi i64 [ 0, %.lr.ph82.preheader ], [ %n.vec131, %middle.block137 ]
  br label %.lr.ph82

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = icmp eq ptr %4, %3
  br i1 %i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134  ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !135
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !134  ; 8 uses
  store <2 x ptr> %i.m, ptr %i.h, align 8, !tbaa !135
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !136
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !138
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !1242
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !1242
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !140

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !141
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !141
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.am = add i64 %2, 63
  %i.an = lshr i64 %i.am, 6                       ; 3 uses
  %.not83 = icmp eq i64 %i.an, 0
  br i1 %.not83, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.o
  %i.ao = load ptr, ptr %3, align 8, !tbaa !94    ; 2 uses
  %.not.i65 = icmp eq ptr %i.ao, null
  br i1 %.not.i65, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph80, %.loopexit72.us
  %.079.us = phi i64 [ %.1.lcssa.us, %.loopexit72.us ], [ 0, %.lr.ph80 ] ; 7 uses
  %.06378.us = phi i64 [ %i.bf, %.loopexit72.us ], [ 0, %.lr.ph80 ]
  %i.ap = add i64 %.079.us, 64
  %i.aq = tail call noundef i64 @llvm.umin.i64(i64 %i.ap, i64 %2) ; 5 uses
  %i.ar = icmp ult i64 %.079.us, %i.aq
  br i1 %i.ar, label %.lr.ph.us.preheader, label %.loopexit72.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.as = sub nuw i64 %i.aq, %.079.us             ; 3 uses
  %min.iters.check115 = icmp ult i64 %i.as, 4
  br i1 %min.iters.check115, label %.lr.ph.us.preheader141, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.us.preheader
  %n.vec118 = and i64 %i.as, -2                   ; 3 uses
  %i.at = add i64 %.079.us, %n.vec118
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph116
  %index120 = phi i64 [ 0, %vector.ph116 ], [ %index.next123, %vector.body119 ] ; 2 uses
  %i.au = add i64 %.079.us, %index120             ; 3 uses
  %i.av = add i64 %i.au, 1                        ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.au
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.av
  %wide.load121 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !13
  %wide.load122 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.au
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.av
  store <2 x i64> %wide.load121, ptr %i.ay, align 8, !tbaa !13
  store <2 x i64> %wide.load122, ptr %i.az, align 8, !tbaa !13
  %index.next123 = add nuw i64 %index120, 2       ; 2 uses
  %i.ba = icmp eq i64 %index.next123, %n.vec118
  br i1 %i.ba, label %middle.block124, label %vector.body119, !llvm.loop !5787

middle.block124:                                  ; preds = %vector.body119
  %cmp.n125 = icmp eq i64 %i.as, %n.vec118
  br i1 %cmp.n125, label %.loopexit72.us, label %.lr.ph.us.preheader141

.lr.ph.us.preheader141:                           ; preds = %.lr.ph.us.preheader, %middle.block124
  %.174.us.ph = phi i64 [ %.079.us, %.lr.ph.us.preheader ], [ %i.at, %middle.block124 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader141, %.lr.ph.us
  %.174.us = phi i64 [ %i.be, %.lr.ph.us ], [ %.174.us.ph, %.lr.ph.us.preheader141 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.174.us
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.174.us
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !tbaa !13
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !tbaa !13
  %i.be = add nuw i64 %.174.us, 1                 ; 2 uses
  %exitcond92.not = icmp eq i64 %i.be, %i.aq
  br i1 %exitcond92.not, label %.loopexit72.us, label %.lr.ph.us, !llvm.loop !5788

.loopexit72.us:                                   ; preds = %.lr.ph.us, %middle.block124, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.079.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.aq, %middle.block124 ], [ %i.aq, %.lr.ph.us ]
  %i.bf = add nuw nsw i64 %.06378.us, 1           ; 2 uses
  %exitcond93.not = icmp eq i64 %i.bf, %i.an
  br i1 %exitcond93.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !5789

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph80, %.loopexit70
  %.079 = phi i64 [ %.4, %.loopexit70 ], [ 0, %.lr.ph80 ] ; 17 uses
  %.06378 = phi i64 [ %i.cu, %.loopexit70 ], [ 0, %.lr.ph80 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.06378
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13 ; 4 uses
  %i.bi = add i64 %.079, 64
  %i.bj = tail call noundef i64 @llvm.umin.i64(i64 %i.bi, i64 %2) ; 12 uses
  switch i64 %i.bh, label %.preheader69 [
    i64 -1, label %.preheader71
    i64 0, label %.loopexit70
  ]

.preheader71:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bk = icmp ult i64 %.079, %i.bj
  br i1 %i.bk, label %.lr.ph.preheader, label %.loopexit70

.lr.ph.preheader:                                 ; preds = %.preheader71
  %i.bl = sub nuw i64 %i.bj, %.079                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bl, 4
  br i1 %min.iters.check, label %.lr.ph.preheader143, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bl, -2                      ; 3 uses
  %i.bm = add i64 %.079, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = add i64 %.079, %index                   ; 3 uses
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bn
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bo
  %wide.load = load <2 x i64>, ptr %i.bp, align 8, !tbaa !13
  %wide.load113 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bn
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bo
  store <2 x i64> %wide.load, ptr %i.br, align 8, !tbaa !13
  store <2 x i64> %wide.load113, ptr %i.bs, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !5790

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.loopexit70, label %.lr.ph.preheader143

.lr.ph.preheader143:                              ; preds = %.lr.ph.preheader, %middle.block
  %.174.ph = phi i64 [ %.079, %.lr.ph.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph

.preheader69:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bu = icmp ult i64 %.079, %i.bj
  br i1 %i.bu, label %.lr.ph76.preheader, label %.loopexit70

.lr.ph76.preheader:                               ; preds = %.preheader69
  %i.bv = sub nuw i64 %i.bj, %.079
  %.neg = add i64 %.079, 1
  %xtraiter = and i64 %i.bv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol

.lr.ph76.prol:                                    ; preds = %.lr.ph76.preheader
  %i.bw = and i64 %i.bh, 1
  %.not.prol = icmp eq i64 %i.bw, 0
  br i1 %.not.prol, label %.lr.ph76.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph76.prol
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.079
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.079
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !tbaa !13
  store <2 x i64> %i.bz, ptr %i.by, align 8, !tbaa !13
  br label %.lr.ph76.prol.loopexit.unr-lcssa

.lr.ph76.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph76.prol
  %i.ca = add nuw i64 %.079, 1
  br label %.lr.ph76.prol.loopexit

.lr.ph76.prol.loopexit:                           ; preds = %.lr.ph76.prol.loopexit.unr-lcssa, %.lr.ph76.preheader
  %.275.unr = phi i64 [ %.079, %.lr.ph76.preheader ], [ %i.ca, %.lr.ph76.prol.loopexit.unr-lcssa ]
  %i.cb = icmp eq i64 %i.bj, %.neg
  br i1 %i.cb, label %.loopexit70, label %.lr.ph76

.lr.ph:                                           ; preds = %.lr.ph.preheader143, %.lr.ph
  %.174 = phi i64 [ %i.cf, %.lr.ph ], [ %.174.ph, %.lr.ph.preheader143 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.174
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.174
  %i.ce = load <2 x i64>, ptr %i.cc, align 8, !tbaa !13
  store <2 x i64> %i.ce, ptr %i.cd, align 8, !tbaa !13
  %i.cf = add nuw i64 %.174, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %i.bj
  br i1 %exitcond.not, label %.loopexit70, label %.lr.ph, !llvm.loop !5791

.lr.ph76:                                         ; preds = %.lr.ph76.prol.loopexit, %bb.s
  %.275 = phi i64 [ %i.ct, %bb.s ], [ %.275.unr, %.lr.ph76.prol.loopexit ] ; 5 uses
  %i.cg = sub nuw i64 %.275, %.079
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ch, %i.bh
  %.not = icmp eq i64 %i.ci, 0
  br i1 %.not, label %.lr.ph76.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph76
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.275
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.275
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !tbaa !13
  store <2 x i64> %i.cl, ptr %i.ck, align 8, !tbaa !13
  br label %.lr.ph76.1

.lr.ph76.1:                                       ; preds = %.lr.ph76, %bb.q
  %i.cm = add nuw i64 %.275, 1                    ; 3 uses
  %i.cn = sub nuw i64 %i.cm, %.079
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.co, %i.bh
  %.not.1 = icmp eq i64 %i.cp, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph76.1
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cm
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cm
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !tbaa !13
  store <2 x i64> %i.cs, ptr %i.cr, align 8, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph76.1
  %i.ct = add nuw i64 %.275, 2                    ; 2 uses
  %exitcond90.not.1 = icmp eq i64 %i.ct, %i.bj
  br i1 %exitcond90.not.1, label %.loopexit70, label %.lr.ph76, !llvm.loop !5792

.loopexit70:                                      ; preds = %.lr.ph, %.lr.ph76.prol.loopexit, %bb.s, %middle.block, %.preheader71, %.preheader69, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.bj, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.bj, %middle.block ], [ %.079, %.preheader69 ], [ %.079, %.preheader71 ], [ %i.bj, %.lr.ph76.prol.loopexit ], [ %i.bj, %bb.s ], [ %i.bj, %.lr.ph ]
  %i.cu = add nuw nsw i64 %.06378, 1              ; 2 uses
  %exitcond91.not = icmp eq i64 %i.cu, %i.an
  br i1 %exitcond91.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !5789

.lr.ph82:                                         ; preds = %.lr.ph82.preheader140, %.lr.ph82
  %.06481 = phi i64 [ %i.cy, %.lr.ph82 ], [ %.06481.ph, %.lr.ph82.preheader140 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.06481
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.06481
  %i.cx = load <2 x i64>, ptr %i.cv, align 8, !tbaa !13
  store <2 x i64> %i.cx, ptr %i.cw, align 8, !tbaa !13
  %i.cy = add nuw i64 %.06481, 1                  ; 2 uses
  %exitcond94.not = icmp eq i64 %i.cy, %2
  br i1 %exitcond94.not, label %.loopexit, label %.lr.ph82, !llvm.loop !5793

.loopexit:                                        ; preds = %.loopexit70, %.loopexit72.us, %.lr.ph82, %middle.block137, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_10uhugeint_tES2_NS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESG_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !94
  %.not.i = icmp eq ptr %i.a, null
  %.not44 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader38

.preheader38:                                     ; preds = %bb.a
  br i1 %.not44, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader38
  %i.b = load ptr, ptr %3, align 8, !tbaa !548    ; 2 uses
  %.not.i34 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i34, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.040.us = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.040.us, 6                     ; 2 uses
  %i.e = and i64 %.040.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.040.us
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.040.us
  %i.m = load <2 x i64>, ptr %i.k, align 8, !tbaa !13
  store <2 x i64> %i.m, ptr %i.l, align 8, !tbaa !13
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = load ptr, ptr %5, align 8, !tbaa !94     ; 2 uses
  %.not.i35.us = icmp eq ptr %i.n, null
  br i1 %.not.i35.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !tbaa !141
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.o)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !94
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %.pre.i.us, %bb.d ], [ %i.n, %bb.c ]
  %i.q = xor i64 %i.i, -1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.d ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = and i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.u = add nuw i64 %.040.us, 1                  ; 2 uses
  %exitcond48.not = icmp eq i64 %i.u, %2
  br i1 %exitcond48.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !5794

.preheader:                                       ; preds = %bb.a
  br i1 %.not44, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader
  %i.v = load ptr, ptr %3, align 8, !tbaa !548    ; 4 uses
  %.not.i36 = icmp eq ptr %i.v, null
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader: ; preds = %.lr.ph42
  %xtraiter = and i64 %2, 1
  %i.w = icmp eq i64 %2, 1
  br i1 %i.w, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader
  %unroll_iter = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader: ; preds = %.lr.ph42
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader64, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
  %n.vec = and i64 %2, -2                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.x = or disjoint i64 %index, 1                ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.x
  %wide.load = load <2 x i64>, ptr %i.y, align 8, !tbaa !13
  %wide.load63 = load <2 x i64>, ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.x
  store <2 x i64> %wide.load, ptr %i.aa, align 8, !tbaa !13
  store <2 x i64> %wide.load63, ptr %i.ab, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !5795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader64

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader64: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader, %middle.block
  %.03341.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader64, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us
  %.03341.us = phi i64 [ %i.ag, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us ], [ %.03341.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader64 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.03341.us
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03341.us
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !tbaa !13
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !13
  %i.ag = add nuw i64 %.03341.us, 1               ; 2 uses
  %exitcond50.not = icmp eq i64 %i.ag, %2
  br i1 %exitcond50.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, !llvm.loop !5796

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.i
  %.040 = phi i64 [ %i.be, %bb.i ], [ 0, %.lr.ph ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.040
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 3 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = and i64 %i.aj, 63
  %i.am = load ptr, ptr %4, align 8, !tbaa !94
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13
  %i.ap = shl nuw i64 1, %i.al
  %i.aq = and i64 %i.ao, %i.ap
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.040
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !tbaa !13
  store <2 x i64> %i.at, ptr %i.as, align 8, !tbaa !13
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.au = load ptr, ptr %5, align 8, !tbaa !94    ; 2 uses
  %.not.i35 = icmp eq ptr %i.au, null
  br i1 %.not.i35, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.h:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.c, align 8, !tbaa !141
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.av)
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !94
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.g, %bb.h
  %i.aw = phi ptr [ %.pre.i, %bb.h ], [ %i.au, %bb.g ]
  %i.ax = lshr i64 %.040, 6
  %i.ay = and i64 %.040, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = xor i64 %i.az, -1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !13
  %i.bd = and i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.f
  %i.be = add nuw i64 %.040, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %2
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !5794

_ZNK6duckdb15SelectionVector9get_indexEm.exit37:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader.new
  %.03341 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader.new ], [ %i.bs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37 ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.03341
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03341
  %i.bk = load <2 x i64>, ptr %i.bi, align 8, !tbaa !13
  store <2 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !13
  %i.bl = or disjoint i64 %.03341, 1              ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bl
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !tbaa !13
  store <2 x i64> %i.br, ptr %i.bq, align 8, !tbaa !13
  %i.bs = add nuw i64 %.03341, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit65.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, !llvm.loop !5797

.loopexit.loopexit65.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.epil.preheader: ; preds = %.loopexit.loopexit65.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader
  %.03341.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.preheader ], [ %i.bs, %.loopexit.loopexit65.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.03341.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03341.epil.init
  %i.by = load <2 x i64>, ptr %i.bw, align 8, !tbaa !13
  store <2 x i64> %i.by, ptr %i.bx, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.epil.preheader, %.loopexit.loopexit65.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, %middle.block, %.preheader38, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_10uhugeint_tEfNS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvRNS_6VectorES8_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::optional_idx", align 8 ; 8 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !78
  switch i8 %i.b, label %bb.n [
    i8 2, label %bb.b
    i8 0, label %bb.h
    i8 3, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext true)
  br label %bb.ak

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext false)
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.k = call noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIfEEbNS_10uhugeint_tERT_(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.k, label %bb.d, label %bb.e, !prof !177

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.l = load float, ptr %i.a, align 4, !tbaa !1357
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_21VectorTryCastOperatorINS_14NumericTryCastEEENS_10uhugeint_tEfEET1_T0_RNS_12ValidityMaskEmPv.exit

bb.e:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call fastcc void @_ZN6duckdbL17CastExceptionTextINS_10uhugeint_tEfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable align 8 %6, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.n = invoke noundef float @_ZN6duckdb21HandleVectorCastError9OperationIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_12ValidityMaskEmRNS_17VectorTryCastDataE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(17) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %6, align 8, !tbaa !105    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_21VectorTryCastOperatorINS_14NumericTryCastEEENS_10uhugeint_tEfEET1_T0_RNS_12ValidityMaskEmPv.exit

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %6, align 8, !tbaa !105    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

common.resume:                                    ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i ], [ %.pn.pn, %bb.aj ]
end_hunk_1
