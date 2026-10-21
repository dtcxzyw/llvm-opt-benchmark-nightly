Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_cast?download=true
inline.NumInlined: 41041
inline.NumDeleted: 4767
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 221
loop-unroll.NumUnrolled: 234
begin_hunk_0_@_ZN6duckdb13UnaryExecutor15ExecuteStandardIlfNS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvRNS_6VectorES7_mPvbNS_14FunctionErrorsE:bb.a

.thread63:                                        ; preds = %bb.h, %bb.g, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !125
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !125
  %i.ai = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIlfNS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mRNS_12ValidityMaskESC_Pvb(ptr noundef %i.ah, ptr noundef %i.af, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef %3, i1 noundef zeroext %4)
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @_ZN6duckdb6Vector10DictionaryERS0_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ad

bb.j:                                             ; preds = %.thread63, %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.k unwind label %bb.ac

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
          to label %bb.l unwind label %bb.ac

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.m unwind label %bb.ac

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !125
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.n unwind label %bb.ac

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !341
  %i.at = load ptr, ptr %7, align 8, !tbaa !342
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  invoke void @_ZN6duckdb13UnaryExecutor11ExecuteLoopIlfNS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb(ptr noundef %i.as, ptr noundef %i.aq, i64 noundef %2, ptr noundef %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef %3, i1 noundef zeroext %4)
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !154 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ay, align 8, !tbaa !157
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !158
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !78
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #28, !inline_history !23
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #28, !inline_history !23
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.t ], [ %i.bl, %bb.u ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.v, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !159

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.r, %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !154 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bp, align 8, !tbaa !157
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !158
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !78
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #28, !inline_history !24
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !78
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #28, !inline_history !24
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.aa:                                            ; preds = %bb.y
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bs, %bb.z ], [ %i.cc, %bb.aa ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cd, label %bb.ab, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !159

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ad

bb.ac:                                            ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.k, %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %i.ce

bb.ad:                                            ; preds = %bb.i, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIlfNS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mRNS_12ValidityMaskESC_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !126    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check118 = icmp ult i64 %2, 4
  br i1 %min.iters.check118, label %.lr.ph73.preheader129, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph73.preheader
  %n.vec120 = and i64 %2, -4                      ; 3 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next125, %vector.body121 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index122 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load123 = load <2 x i64>, ptr %i.b, align 8, !tbaa !65
  %wide.load124 = load <2 x i64>, ptr %i.c, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index122
  %7 = shufflevector <2 x i64> %wide.load123, <2 x i64> %wide.load124, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = sitofp <4 x i64> %7 to <4 x float>
  store <4 x float> %8, ptr %i.d, align 4, !tbaa !476
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.e = icmp eq i64 %index.next125, %n.vec120
  br i1 %i.e, label %middle.block126, label %vector.body121, !llvm.loop !4307

middle.block126:                                  ; preds = %vector.body121
  %cmp.n127 = icmp eq i64 %2, %n.vec120
  br i1 %cmp.n127, label %.loopexit, label %.lr.ph73.preheader129

.lr.ph73.preheader129:                            ; preds = %.lr.ph73.preheader, %middle.block126
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec120, %middle.block126 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = icmp eq ptr %4, %3
  br i1 %i.g, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !154  ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !155
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.l, align 4, !tbaa !60
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !60
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !154  ; 8 uses
  store <2 x ptr> %i.k, ptr %i.f, align 8, !tbaa !155
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !157
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !158
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #28, !inline_history !42
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #28, !inline_history !42
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !159

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #28
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !160
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !160
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ak = add i64 %2, 63
  %i.al = lshr i64 %i.ak, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.al, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.am = load ptr, ptr %3, align 8, !tbaa !126   ; 2 uses
  %.not.i56 = icmp eq ptr %i.am, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %i.bc, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %.05569.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %i.an = add i64 %.05569.us, 64
  %i.ao = tail call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %2) ; 5 uses
  %i.ap = icmp ult i64 %.05569.us, %i.ao
  br i1 %i.ap, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.aq = sub nuw i64 %i.ao, %.05569.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader130, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec108 = and i64 %i.aq, -4                   ; 3 uses
  %i.ar = add i64 %.05569.us, %n.vec108
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next113, %vector.body109 ] ; 2 uses
  %i.as = add nuw i64 %.05569.us, %index110       ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load111 = load <2 x i64>, ptr %i.at, align 8, !tbaa !65
  %wide.load112 = load <2 x i64>, ptr %i.au, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %9 = shufflevector <2 x i64> %wide.load111, <2 x i64> %wide.load112, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = sitofp <4 x i64> %9 to <4 x float>
  store <4 x float> %10, ptr %i.av, align 4, !tbaa !476
  %index.next113 = add nuw i64 %index110, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.aw, label %middle.block114, label %vector.body109, !llvm.loop !4308

middle.block114:                                  ; preds = %vector.body109
  %cmp.n115 = icmp eq i64 %i.aq, %n.vec108
  br i1 %cmp.n115, label %.loopexit63.us, label %.lr.ph.us.preheader130

.lr.ph.us.preheader130:                           ; preds = %.lr.ph.us.preheader, %middle.block114
  %.165.us.ph = phi i64 [ %.05569.us, %.lr.ph.us.preheader ], [ %i.ar, %middle.block114 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader130, %.lr.ph.us
  %.165.us = phi i64 [ %i.bb, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader130 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.az = sitofp i64 %i.ay to float
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.165.us
  store float %i.az, ptr %i.ba, align 4, !tbaa !476
  %i.bb = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bb, %i.ao
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !4309

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block114, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05569.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.ao, %middle.block114 ], [ %i.ao, %.lr.ph.us ]
  %i.bc = add nuw nsw i64 %.05470.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bc, %i.al
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !4310

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %i.ct, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %.05569 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.05470
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !65 ; 4 uses
  %i.bf = add i64 %.05569, 64
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bf, i64 %2) ; 12 uses
  switch i64 %i.be, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bh = icmp ult i64 %.05569, %i.bg
  br i1 %i.bh, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bi = sub nuw i64 %i.bg, %.05569              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bi, 4
  br i1 %min.iters.check, label %.lr.ph.preheader132, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bi, -4                      ; 3 uses
  %i.bj = add i64 %.05569, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = add nuw i64 %.05569, %index             ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <2 x i64>, ptr %i.bl, align 8, !tbaa !65
  %wide.load104 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !65
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk
  %11 = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load104, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %12 = sitofp <4 x i64> %11 to <4 x float>
  store <4 x float> %12, ptr %i.bn, align 4, !tbaa !476
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !4311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader132

.lr.ph.preheader132:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05569, %.lr.ph.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bp = icmp ult i64 %.05569, %i.bg
  br i1 %i.bp, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.bq = sub nuw i64 %i.bg, %.05569
  %.neg = add i64 %.05569, 1
  %xtraiter = and i64 %i.bq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.br = and i64 %i.be, 1
  %.not.prol = icmp eq i64 %i.br, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05569
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !65
  %i.bu = sitofp i64 %i.bt to float
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05569
  store float %i.bu, ptr %i.bv, align 4, !tbaa !476
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.bw = add nuw i64 %.05569, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05569, %.lr.ph67.preheader ], [ %i.bw, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.bx = icmp eq i64 %i.bg, %.neg
  br i1 %i.bx, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader132, %.lr.ph
  %.165 = phi i64 [ %i.cc, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader132 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !65
  %i.ca = sitofp i64 %i.bz to float
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.165
  store float %i.ca, ptr %i.cb, align 4, !tbaa !476
  %i.cc = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %i.bg
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !4312

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.cs, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cd = sub nuw i64 %.266, %.05569
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, %i.be
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !65
  %i.ci = sitofp i64 %i.ch to float
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.266
  store float %i.ci, ptr %i.cj, align 4, !tbaa !476
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.ck = add nuw i64 %.266, 1                    ; 3 uses
  %i.cl = sub nuw i64 %i.ck, %.05569
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = and i64 %i.cm, %i.be
  %.not.1 = icmp eq i64 %i.cn, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ck
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !65
  %i.cq = sitofp i64 %i.cp to float
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ck
  store float %i.cq, ptr %i.cr, align 4, !tbaa !476
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.cs = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.cs, %i.bg
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !4313

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.bg, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.bg, %middle.block ], [ %.05569, %.preheader60 ], [ %.05569, %.preheader62 ], [ %i.bg, %.lr.ph67.prol.loopexit ], [ %i.bg, %bb.s ], [ %i.bg, %.lr.ph ]
  %i.ct = add nuw nsw i64 %.05470, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.ct, %i.al
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !4310

.lr.ph73:                                         ; preds = %.lr.ph73.preheader129, %.lr.ph73
  %.072 = phi i64 [ %i.cy, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader129 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !65
  %i.cw = sitofp i64 %i.cv to float
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.072
  store float %i.cw, ptr %i.cx, align 4, !tbaa !476
  %i.cy = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.cy, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !4314

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block126, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopIlfNS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !126
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !343    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.v, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65
  %i.m = sitofp i64 %i.l to float
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035.us
  store float %i.m, ptr %i.n, align 4, !tbaa !476
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.o = load ptr, ptr %5, align 8, !tbaa !126    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.o, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !160
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.p)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !126
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %.pre.i.us, %bb.d ], [ %i.o, %bb.c ]
  %i.r = xor i64 %i.i, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.d ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !65
  %i.u = and i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.v = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.v, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !4315

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.w = load ptr, ptr %3, align 8, !tbaa !343    ; 6 uses
  %.not.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i31, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader: ; preds = %.lr.ph37
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.x = icmp ult i64 %2, 4
  br i1 %i.x, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader
  %unroll_iter = and i64 %2, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader: ; preds = %.lr.ph37
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader59, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <2 x i64>, ptr %i.y, align 8, !tbaa !65
  %wide.load58 = load <2 x i64>, ptr %i.z, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %8 = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load58, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = sitofp <4 x i64> %8 to <4 x float>
  store <4 x float> %9, ptr %i.aa, align 4, !tbaa !476
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !4316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader59

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader59: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader, %middle.block
  %.02836.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader59, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us
  %.02836.us = phi i64 [ %i.ag, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us ], [ %.02836.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.preheader59 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02836.us
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !65
  %i.ae = sitofp i64 %i.ad to float
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02836.us
  store float %i.ae, ptr %i.af, align 4, !tbaa !476
  %i.ag = add nuw i64 %.02836.us, 1               ; 2 uses
  %exitcond45.not = icmp eq i64 %i.ag, %2
  br i1 %exitcond45.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us, !llvm.loop !4317

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.i
  %.035 = phi i64 [ %i.bf, %bb.i ], [ 0, %.lr.ph ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.035
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !60
  %i.aj = zext i32 %i.ai to i64                   ; 3 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = and i64 %i.aj, 63
  %i.am = load ptr, ptr %4, align 8, !tbaa !126
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !65
  %i.ap = shl nuw i64 1, %i.al
  %i.aq = and i64 %i.ao, %i.ap
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !65
  %i.at = sitofp i64 %i.as to float
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035
  store float %i.at, ptr %i.au, align 4, !tbaa !476
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.av = load ptr, ptr %5, align 8, !tbaa !126   ; 2 uses
  %.not.i30 = icmp eq ptr %i.av, null
  br i1 %.not.i30, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.h:                                             ; preds = %bb.g
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !160
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aw)
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !126
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.g, %bb.h
  %i.ax = phi ptr [ %.pre.i, %bb.h ], [ %i.av, %bb.g ]
  %i.ay = lshr i64 %.035, 6
  %i.az = and i64 %.035, 63
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = xor i64 %i.ba, -1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !65
  %i.be = and i64 %i.bd, %i.bb
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.f
  %i.bf = add nuw i64 %.035, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %2
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !4315

_ZNK6duckdb15SelectionVector9get_indexEm.exit32:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new
  %.02836 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new ], [ %i.cl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32 ] ; 6 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.02836
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !60
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !65
  %i.bl = sitofp i64 %i.bk to float
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02836
  store float %i.bl, ptr %i.bm, align 4, !tbaa !476
  %i.bn = or disjoint i64 %.02836, 1              ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !60
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !65
  %i.bt = sitofp i64 %i.bs to float
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bn
  store float %i.bt, ptr %i.bu, align 4, !tbaa !476
  %i.bv = or disjoint i64 %.02836, 2              ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !60
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !65
  %i.cb = sitofp i64 %i.ca to float
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv
  store float %i.cb, ptr %i.cc, align 4, !tbaa !476
  %i.cd = or disjoint i64 %.02836, 3              ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !60
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !65
  %i.cj = sitofp i64 %i.ci to float
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cd
  store float %i.cj, ptr %i.ck, align 4, !tbaa !476
  %i.cl = add nuw i64 %.02836, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit60.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32, !llvm.loop !4318

.loopexit.loopexit60.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader: ; preds = %.loopexit.loopexit60.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader
  %.02836.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.preheader ], [ %i.cl, %.loopexit.loopexit60.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader
  %.02836.epil = phi i64 [ %i.ct, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil ], [ %.02836.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil.preheader ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.02836.epil
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !60
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !65
  %i.cr = sitofp i64 %i.cq to float
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02836.epil
  store float %i.cr, ptr %i.cs, align 4, !tbaa !476
  %i.ct = add nuw i64 %.02836.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil, !llvm.loop !4319

.loopexit:                                        ; preds = %bb.i, %bb.e, %.loopexit.loopexit60.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us, %middle.block, %.preheader33, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor15ExecuteStandardIldNS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_14NumericTryCastEEEEEvRNS_6VectorES7_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::optional_idx", align 8 ; 8 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !124
  switch i8 %i.a, label %bb.j [
    i8 2, label %bb.b
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext true)
  br label %bb.ad

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext false)
  %i.j = load i64, ptr %i.e, align 8, !tbaa !65
  %i.k = sitofp i64 %i.j to double
  store double %i.k, ptr %i.c, align 8, !tbaa !478
  br label %bb.ad

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !125
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_0
