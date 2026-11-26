Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/instantiate_cpp_exprgrammar?download=true
inline.NumInlined: 4215
inline.NumDeleted: 2340
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost6spirit7classic4impl19object_with_id_baseINS2_11grammar_tagEmE17acquire_object_idEv:bb.a
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #25, !inline_history !287
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ak = atomicrmw add ptr %i.aj, i32 -1 acq_rel, align 4
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.x, label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEE5resetIS5_EEvPT_.exit

bb.x:                                             ; preds = %bb.w
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #25, !inline_history !288
  br label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEE5resetIS5_EEvPT_.exit

_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEE5resetIS5_EEvPT_.exit: ; preds = %.noexc6, %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre = load ptr, ptr @_ZZN5boost6spirit7classic4impl19object_with_id_baseINS2_11grammar_tagEmE17acquire_object_idEvE13static_supply, align 8, !tbaa !89
  br label %bb.aa

bb.y:                                             ; preds = %bb.u, %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.z:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.z ], [ %i.y, %bb.t ]
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 72) #29
  br label %bb.ah

bb.aa:                                            ; preds = %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEE5resetIS5_EEvPT_.exit, %bb.o
  %i.ar = phi ptr [ %.pre, %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEE5resetIS5_EEvPT_.exit ], [ %i.v, %bb.o ]
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6spirit7classic4impl19object_with_id_baseINS2_11grammar_tagEmE17acquire_object_idEvE13static_supply, i64 8), align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i7, label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEC2ERKS6_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = atomicrmw add ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEC2ERKS6_.exit.i

_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEC2ERKS6_.exit.i: ; preds = %bb.ab, %bb.aa
  store ptr %i.ar, ptr %0, align 8, !tbaa !291
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !90 ; 7 uses
  store ptr %i.as, ptr %i.av, align 8, !tbaa !90
  %.not.i.i2.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i2.i, label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEaSERKS6_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEC2ERKS6_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = atomicrmw add ptr %i.ax, i32 -1 acq_rel, align 4
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.ad, label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEaSERKS6_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #25, !inline_history !289
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.be = atomicrmw add ptr %i.bd, i32 -1 acq_rel, align 4
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.ae, label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEaSERKS6_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !69
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #25, !inline_history !290
  br label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEaSERKS6_.exit

_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEaSERKS6_.exit: ; preds = %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEC2ERKS6_.exit.i, %bb.ac, %bb.ad, %bb.ae
  %i.bj = load i8, ptr %i.q, align 8, !tbaa !116, !range !62, !noundef !63
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.af, label %_ZN5boost11unique_lockINS_5mutexEED2Ev.exit

bb.af:                                            ; preds = %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEaSERKS6_.exit
  %i.bl = load ptr, ptr %3, align 8, !tbaa !115
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %i.bm = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #25
  %i.bn = icmp eq i32 %i.bm, 4
  br i1 %i.bn, label %bb.ag, label %_ZN5boost11unique_lockINS_5mutexEED2Ev.exit, !llvm.loop !1

_ZN5boost11unique_lockINS_5mutexEED2Ev.exit:      ; preds = %bb.ag, %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEEaSERKS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bo = load ptr, ptr %0, align 8, !tbaa !89
  %i.bp = call noundef i64 @_ZN5boost6spirit7classic4impl26object_with_id_base_supplyImE7acquireEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bo)
  ret i64 %i.bp

bb.ah:                                            ; preds = %.body, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.y ], [ %eh.lpad-body, %.body ]
  %i.bq = load i8, ptr %i.q, align 8, !tbaa !116, !range !62, !noundef !63
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ai, label %_ZN5boost11unique_lockINS_5mutexEED2Ev.exit8

bb.ai:                                            ; preds = %bb.ah
  %i.bs = load ptr, ptr %3, align 8, !tbaa !115
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %i.bt = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bs) #25
  %i.bu = icmp eq i32 %i.bt, 4
  br i1 %i.bu, label %bb.aj, label %_ZN5boost11unique_lockINS_5mutexEED2Ev.exit8, !llvm.loop !1

_ZN5boost11unique_lockINS_5mutexEED2Ev.exit8:     ; preds = %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl19object_with_id_baseINS2_11grammar_tagEmED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 7 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !292
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw add ptr %i.i, i32 -1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !293
  br label %_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEED2Ev.exit

_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10shared_ptrINS_6spirit7classic4impl26object_with_id_base_supplyImEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost6detail12shared_countD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6detail12shared_countD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !2
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw add ptr %i.i, i32 -1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6detail12shared_countD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3
  br label %_ZN5boost6detail12shared_countD2Ev.exit

_ZN5boost6detail12shared_countD2Ev.exit:          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost6spirit7classic4impl26object_with_id_base_supplyImE7acquireEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::unique_lock", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %0, ptr %1, align 8, !tbaa !115
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !116
  call void @_ZN5boost11unique_lockINS_5mutexEE4lockEv(ptr noundef nonnull align 8 dereferenceable(9) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !294  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !294  ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  store ptr %i.g, ptr %i.d, align 8, !tbaa !120
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !121
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !127  ; 4 uses
  %.not = icmp ugt i64 %i.n, %i.p
  br i1 %.not, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = mul i64 %i.p, 3                          ; 2 uses
  %i.r = lshr i64 %i.q, 1                         ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = icmp ugt i64 %i.q, 2305843009213693949
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #26
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not7 = icmp ugt i64 %i.n, %i.r
  br i1 %.not7, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %2 = ptrtoint ptr %i.e to i64
  %3 = sub i64 %2, %i.l
  %i.u = shl nuw nsw i64 %i.s, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28
          to label %.noexc5 unwind label %bb.i    ; 4 uses

.noexc5:                                          ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !128  ; 4 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.g:                                             ; preds = %.noexc5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.w, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.g, %.noexc5
  %.not.i8.i = icmp eq ptr %i.w, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !121
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ae) #29
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.v, ptr %i.b, align 8, !tbaa !128
  %4 = getelementptr inbounds nuw i8, ptr %i.v, i64 %3
  store ptr %4, ptr %i.d, align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s
  store ptr %i.af, ptr %i.i, align 8, !tbaa !121
  %.pre = load i64, ptr %i.o, align 8, !tbaa !127
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

bb.i:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load i8, ptr %i.a, align 8, !tbaa !116, !range !62, !noundef !63
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.j, label %_ZN5boost11unique_lockINS_5mutexEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %1, align 8, !tbaa !115
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.ak = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #25
  %i.al = icmp eq i32 %i.ak, 4
  br i1 %i.al, label %bb.k, label %_ZN5boost11unique_lockINS_5mutexEED2Ev.exit, !llvm.loop !1

_ZN5boost11unique_lockINS_5mutexEED2Ev.exit:      ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.ag

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.f, %bb.c
  %i.am = phi i64 [ %.pre, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.p, %bb.f ], [ %i.p, %bb.c ]
  %i.an = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.an, ptr %i.o, align 8, !tbaa !127
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit, %bb.b
  %.0 = phi i64 [ %i.an, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %i.h, %bb.b ]
  %i.ao = load i8, ptr %i.a, align 8, !tbaa !116, !range !62, !noundef !63
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.m, label %_ZN5boost11unique_lockINS_5mutexEED2Ev.exit6

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %1, align 8, !tbaa !115
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %i.ar = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #25
  %i.as = icmp eq i32 %i.ar, 4
  br i1 %i.as, label %bb.n, label %_ZN5boost11unique_lockINS_5mutexEED2Ev.exit6, !llvm.loop !1

_ZN5boost11unique_lockINS_5mutexEED2Ev.exit6:     ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5mutexC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::thread_resource_error", align 8 ; 5 uses
  %i.a = tail call noundef i32 @pthread_mutex_init(ptr noundef nonnull %0, ptr noundef null) #25 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN5boost21thread_resource_errorC2EiPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.a, ptr noundef nonnull @.str.52)
  invoke void @_ZN5boost15throw_exceptionINS_21thread_resource_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %1) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5mutexD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %0) #25
  %i.b = icmp eq i32 %i.a, 4
  br i1 %i.b, label %bb.b, label %_ZN5boost5posix21pthread_mutex_destroyEP15pthread_mutex_t.exit, !llvm.loop !0

_ZN5boost5posix21pthread_mutex_destroyEP15pthread_mutex_t.exit: ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionINS_21thread_resource_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 88) #25 ; 3 uses
  invoke void @_ZN5boost10wrapexceptINS_21thread_resource_errorEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptINS_21thread_resource_errorEEE, ptr nonnull @_ZN5boost10wrapexceptINS_21thread_resource_errorEED2Ev) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost21thread_resource_errorC2EiPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::error_code", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i64 0, ptr %3, align 8
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !95
  %i.b = and i64 %i.a, -2
  %switch.i.i.i = icmp eq i64 %i.b, -5572340897628102704
  br i1 %switch.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %1, 0
  br label %_ZN5boost16thread_exceptionC2EiPKc.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, i32 noundef %1) #25, !inline_history !4
  br label %_ZN5boost16thread_exceptionC2EiPKc.exit

_ZN5boost16thread_exceptionC2EiPKc.exit:          ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi i1 [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = select i1 %.0.i.i.i, i64 3, i64 2
  store i64 %i.i, ptr %i.h, align 8, !tbaa !97
  store i32 %1, ptr %3, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, ptr %i.j, align 8, !tbaa !26
  call void @_ZN5boost6system12system_errorC2ERKNS0_10error_codeEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost21thread_resource_errorE, i64 16), ptr %0, align 8, !tbaa !69
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptINS_21thread_resource_errorEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6system12system_errorE, i64 16), ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !129
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.f, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -1, ptr %i.g, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptINS_21thread_resource_errorEEE, i64 16), ptr %0, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptINS_21thread_resource_errorEEE, i64 64), ptr %i.a, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptINS_21thread_resource_errorEEE, i64 104), ptr %i.d, align 8, !tbaa !69
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptINS_21thread_resource_errorEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !5 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #27
  unreachable
end_hunk_0
