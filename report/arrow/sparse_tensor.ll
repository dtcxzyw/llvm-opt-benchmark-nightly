inline.NumInlined: 1366
inline.NumDeleted: 535
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5arrow6Status11DeleteStateEv:bb.a
bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !107
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !322
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !322
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !111

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !136  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !95
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !323
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !323
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_120GetCOOIndexTensorRowERKSt10shared_ptrINS_6TensorEElPSt6vectorIlSaIlEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 -9223372036854775808, 9223372036854775807) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20, !noalias !324 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94, !noalias !324 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 7 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !324
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !324
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3, !noalias !324
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !324 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.f, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !107
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !110
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !110
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.w = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.h ], [ %i.w, %bb.i ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
  %i.ac = sdiv i32 %i.ab, 8
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !88
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !101
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !10 ; 16 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !99 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !101   ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3                 ; 3 uses
  %i.aq = icmp ugt i64 %i.ai, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ar = sub nuw i64 %i.ai, %i.ap
  tail call void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ar)
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = icmp ult i64 %i.ai, %i.ap
  br i1 %i.as, label %bb.m, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ai ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.ak, %i.at
  br i1 %.not.i.i64, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.m
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !99
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %bb.k, %bb.l, %bb.m, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ad)
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %.split, label %.loopexit

.split:                                           ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.aw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  switch i64 %i.aw, label %.loopexit [
    i64 0, label %.preheader
    i64 1, label %.preheader131
    i64 2, label %.preheader133
    i64 3, label %.preheader135
  ]

.preheader135:                                    ; preds = %.split
  %i.ax = icmp sgt i64 %i.ai, 0
  br i1 %i.ax, label %.lr.ph.i.i.i90.preheader, label %.loopexit

.lr.ph.i.i.i90.preheader:                         ; preds = %.preheader135
  %i.ay = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !101 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !327
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !101   ; 3 uses
  %i.bg = icmp eq i64 %i.ai, 1
  br i1 %i.bg, label %.lr.ph.i.i.i90.epil.preheader, label %.lr.ph.i.i.i90.preheader.new

.lr.ph.i.i.i90.preheader.new:                     ; preds = %.lr.ph.i.i.i90.preheader
  %unroll_iter = and i64 %i.ai, 9223372036854775806
  br label %.lr.ph.i.i.i90

.preheader133:                                    ; preds = %.split
  %i.bh = icmp sgt i64 %i.ai, 0
  br i1 %i.bh, label %.lr.ph.i.i.i80.preheader, label %.loopexit

.lr.ph.i.i.i80.preheader:                         ; preds = %.preheader133
  %i.bi = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !101 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !327
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  %i.bp = load ptr, ptr %2, align 8, !tbaa !101   ; 3 uses
  %i.bq = icmp eq i64 %i.ai, 1
  br i1 %i.bq, label %.lr.ph.i.i.i80.epil.preheader, label %.lr.ph.i.i.i80.preheader.new

.lr.ph.i.i.i80.preheader.new:                     ; preds = %.lr.ph.i.i.i80.preheader
  %unroll_iter170 = and i64 %i.ai, 9223372036854775806
  br label %.lr.ph.i.i.i80

.preheader131:                                    ; preds = %.split
  %i.br = icmp sgt i64 %i.ai, 0
  br i1 %i.br, label %.lr.ph.i.i.i70.preheader, label %.loopexit

.lr.ph.i.i.i70.preheader:                         ; preds = %.preheader131
  %i.bs = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !101 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !327
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  %i.bz = load ptr, ptr %2, align 8, !tbaa !101   ; 3 uses
  %i.ca = icmp eq i64 %i.ai, 1
  br i1 %i.ca, label %.lr.ph.i.i.i70.epil.preheader, label %.lr.ph.i.i.i70.preheader.new

.lr.ph.i.i.i70.preheader.new:                     ; preds = %.lr.ph.i.i.i70.preheader
  %unroll_iter175 = and i64 %i.ai, 9223372036854775806
  br label %.lr.ph.i.i.i70

.preheader:                                       ; preds = %.split
  %i.cb = icmp sgt i64 %i.ai, 0
  br i1 %i.cb, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader
  %i.cc = load ptr, ptr %0, align 8, !tbaa !88    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !101 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !327
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  %i.cj = load ptr, ptr %2, align 8, !tbaa !101   ; 3 uses
  %i.ck = icmp eq i64 %i.ai, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter180 = and i64 %i.ai, 9223372036854775806
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.053143 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.dg, %.lr.ph.i.i.i ] ; 4 uses
  %niter181 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter181.next.1, %.lr.ph.i.i.i ]
  %i.cl = load i64, ptr %i.ce, align 8, !tbaa !10
  %i.cm = mul nsw i64 %i.cl, %1
  %i.cn = load i64, ptr %i.cf, align 8, !tbaa !10
  %i.co = mul nsw i64 %i.cn, %.053143
  %i.cp = load ptr, ptr %i.ci, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cm
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !95
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.053143
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !10
  %i.cv = or disjoint i64 %.053143, 1             ; 2 uses
  %i.cw = load i64, ptr %i.ce, align 8, !tbaa !10
  %i.cx = mul nsw i64 %i.cw, %1
  %i.cy = load i64, ptr %i.cf, align 8, !tbaa !10
  %i.cz = mul nsw i64 %i.cy, %i.cv
  %i.da = load ptr, ptr %i.ci, align 8
  %i.db = getelementptr i8, ptr %i.da, i64 %i.cz
  %i.dc = getelementptr i8, ptr %i.db, i64 %i.cx
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !95
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cv
  store i64 %i.de, ptr %i.df, align 8, !tbaa !10
  %i.dg = add nuw nsw i64 %.053143, 2             ; 2 uses
  %niter181.next.1 = add nuw nsw i64 %niter181, 2 ; 2 uses
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i, !llvm.loop !330

.lr.ph.i.i.i70:                                   ; preds = %.lr.ph.i.i.i70, %.lr.ph.i.i.i70.preheader.new
  %.054142 = phi i64 [ 0, %.lr.ph.i.i.i70.preheader.new ], [ %i.ec, %.lr.ph.i.i.i70 ] ; 4 uses
  %niter176 = phi i64 [ 0, %.lr.ph.i.i.i70.preheader.new ], [ %niter176.next.1, %.lr.ph.i.i.i70 ]
  %i.dh = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.di = mul nsw i64 %i.dh, %1
  %i.dj = load i64, ptr %i.bv, align 8, !tbaa !10
  %i.dk = mul nsw i64 %i.dj, %.054142
  %i.dl = load ptr, ptr %i.by, align 8
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.dk
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.di
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !331
  %i.dp = zext i16 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.054142
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !10
  %i.dr = or disjoint i64 %.054142, 1             ; 2 uses
  %i.ds = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.dt = mul nsw i64 %i.ds, %1
  %i.du = load i64, ptr %i.bv, align 8, !tbaa !10
  %i.dv = mul nsw i64 %i.du, %i.dr
  %i.dw = load ptr, ptr %i.by, align 8
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.dv
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dt
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !331
  %i.ea = zext i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dr
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !10
  %i.ec = add nuw nsw i64 %.054142, 2             ; 2 uses
  %niter176.next.1 = add nuw nsw i64 %niter176, 2 ; 2 uses
  %niter176.ncmp.1 = icmp eq i64 %niter176.next.1, %unroll_iter175
  br i1 %niter176.ncmp.1, label %.lr.ph.i.i.i70.epil.preheader, label %.lr.ph.i.i.i70, !llvm.loop !333

.lr.ph.i.i.i80:                                   ; preds = %.lr.ph.i.i.i80, %.lr.ph.i.i.i80.preheader.new
  %.055141 = phi i64 [ 0, %.lr.ph.i.i.i80.preheader.new ], [ %i.ey, %.lr.ph.i.i.i80 ] ; 4 uses
  %niter171 = phi i64 [ 0, %.lr.ph.i.i.i80.preheader.new ], [ %niter171.next.1, %.lr.ph.i.i.i80 ]
  %i.ed = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.ee = mul nsw i64 %i.ed, %1
  %i.ef = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.eg = mul nsw i64 %i.ef, %.055141
  %i.eh = load ptr, ptr %i.bo, align 8
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.eg
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.ee
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.055141
  store i64 %i.el, ptr %i.em, align 8, !tbaa !10
  %i.en = or disjoint i64 %.055141, 1             ; 2 uses
  %i.eo = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.ep = mul nsw i64 %i.eo, %1
  %i.eq = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.er = mul nsw i64 %i.eq, %i.en
  %i.es = load ptr, ptr %i.bo, align 8
  %i.et = getelementptr i8, ptr %i.es, i64 %i.er
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.ep
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.en
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !10
  %i.ey = add nuw nsw i64 %.055141, 2             ; 2 uses
  %niter171.next.1 = add nuw nsw i64 %niter171, 2 ; 2 uses
  %niter171.ncmp.1 = icmp eq i64 %niter171.next.1, %unroll_iter170
  br i1 %niter171.ncmp.1, label %.lr.ph.i.i.i80.epil.preheader, label %.lr.ph.i.i.i80, !llvm.loop !334

.lr.ph.i.i.i90:                                   ; preds = %.lr.ph.i.i.i90, %.lr.ph.i.i.i90.preheader.new
  %.052140 = phi i64 [ 0, %.lr.ph.i.i.i90.preheader.new ], [ %i.fs, %.lr.ph.i.i.i90 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i90.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i90 ]
  %i.ez = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.fa = mul nsw i64 %i.ez, %1
  %i.fb = load i64, ptr %i.bb, align 8, !tbaa !10
  %i.fc = mul nsw i64 %i.fb, %.052140
  %i.fd = load ptr, ptr %i.be, align 8
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.fc
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fa
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !10
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.052140
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !10
  %i.fi = or disjoint i64 %.052140, 1             ; 2 uses
  %i.fj = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.fk = mul nsw i64 %i.fj, %1
  %i.fl = load i64, ptr %i.bb, align 8, !tbaa !10
  %i.fm = mul nsw i64 %i.fl, %i.fi
  %i.fn = load ptr, ptr %i.be, align 8
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fm
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fk
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !10
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.fi
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !10
  %i.fs = add nuw nsw i64 %.052140, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.i.i90.epil.preheader, label %.lr.ph.i.i.i90, !llvm.loop !335

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.053143.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i ] ; 2 uses
  %i.ft = load i64, ptr %i.ce, align 8, !tbaa !10
  %i.fu = mul nsw i64 %i.ft, %1
  %i.fv = load i64, ptr %i.cf, align 8, !tbaa !10
  %i.fw = mul nsw i64 %i.fv, %.053143.epil.init
  %i.fx = load ptr, ptr %i.ci, align 8
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fw
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.fu
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !95
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.053143.epil.init
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !10
  br label %.loopexit

.lr.ph.i.i.i70.epil.preheader:                    ; preds = %.lr.ph.i.i.i70.preheader, %.lr.ph.i.i.i70
  %.054142.epil.init = phi i64 [ 0, %.lr.ph.i.i.i70.preheader ], [ %i.ec, %.lr.ph.i.i.i70 ] ; 2 uses
  %i.gd = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.ge = mul nsw i64 %i.gd, %1
  %i.gf = load i64, ptr %i.bv, align 8, !tbaa !10
  %i.gg = mul nsw i64 %i.gf, %.054142.epil.init
  %i.gh = load ptr, ptr %i.by, align 8
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.gg
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.ge
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !331
  %i.gl = zext i16 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.054142.epil.init
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !10
  br label %.loopexit

.lr.ph.i.i.i80.epil.preheader:                    ; preds = %.lr.ph.i.i.i80.preheader, %.lr.ph.i.i.i80
  %.055141.epil.init = phi i64 [ 0, %.lr.ph.i.i.i80.preheader ], [ %i.ey, %.lr.ph.i.i.i80 ] ; 2 uses
  %i.gn = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.go = mul nsw i64 %i.gn, %1
  %i.gp = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.gq = mul nsw i64 %i.gp, %.055141.epil.init
  %i.gr = load ptr, ptr %i.bo, align 8
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.gq
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.go
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.055141.epil.init
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !10
  br label %.loopexit

.lr.ph.i.i.i90.epil.preheader:                    ; preds = %.lr.ph.i.i.i90.preheader, %.lr.ph.i.i.i90
  %.052140.epil.init = phi i64 [ 0, %.lr.ph.i.i.i90.preheader ], [ %i.fs, %.lr.ph.i.i.i90 ] ; 2 uses
  %i.gx = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.gy = mul nsw i64 %i.gx, %1
  %i.gz = load i64, ptr %i.bb, align 8, !tbaa !10
  %i.ha = mul nsw i64 %i.gz, %.052140.epil.init
  %i.hb = load ptr, ptr %i.be, align 8
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.ha
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.gy
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.052140.epil.init
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i90.epil.preheader, %.lr.ph.i.i.i80.epil.preheader, %.lr.ph.i.i.i70.epil.preheader, %.lr.ph.i.i.i.epil.preheader, %.preheader135, %.preheader133, %.preheader131, %.preheader, %_ZNSt6vectorIlSaIlEE6resizeEm.exit, %.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !101    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !10
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !99
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #28
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #25 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !10
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !10
  br label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36: ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !101
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !99
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !154
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA46_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(46) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !336
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !336
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306, !noalias !336, !nonnull !125, !align !315
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %2) #24, !noalias !336
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !336 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !336
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !336
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !136    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !95
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !136    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !95
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
end_hunk_0
