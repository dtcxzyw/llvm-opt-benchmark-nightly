Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/libfsst?download=true
inline.NumInlined: 716
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@duckdb_fsst_create:bb.a
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.at, %bb.u ], [ %i.bd, %bb.v ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.be, label %bb.w, label %_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !54

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22
  br label %_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %bb.q
  %i.bf = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #23
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit

_ZNSt6vectorIPKhSaIS1_EED2Ev.exit:                ; preds = %_ZNSt12__shared_ptrIN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.a) #23
  %i.bg = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit25, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #23
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit25

_ZNSt6vectorIPKhSaIS1_EED2Ev.exit25:              ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bh = load ptr, ptr %4, align 8, !tbaa !50    ; 3 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit25
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i26, label %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #23
  br label %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i

_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i: ; preds = %bb.aa, %bb.z
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #23
  br label %_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit25, %_ZNKSt14default_deleteISt6vectorImSaImEEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret ptr %i.c

bb.ab:                                            ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit30

bb.ac:                                            ; preds = %bb.d, %bb.b, %_ZNSt15__new_allocatorIPKhE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %5, align 8, !tbaa !31
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28

bb.ad:                                            ; preds = %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.ad ], [ %i.ai, %bb.n ] ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28, label %bb.ae

bb.ae:                                            ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #23
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28

_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28:              ; preds = %bb.ac, %.body, %bb.ae
  %i.bm = phi ptr [ %i.j, %bb.ae ], [ %.pre, %bb.ac ], [ %i.j, %.body ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.ae ], [ %i.bk, %bb.ac ], [ %eh.lpad-body, %.body ] ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit30, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #23
  br label %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit30

_ZNSt6vectorIPKhSaIS1_EED2Ev.exit30:              ; preds = %bb.af, %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.ab ], [ %.pn.pn.pn, %_ZNSt6vectorIPKhSaIS1_EED2Ev.exit28 ], [ %.pn.pn.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @duckdb_fsst_duplicate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1572880) ptr @_Znwm(i64 noundef 1572880) #21 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1572872) %i.b, i8 0, i64 1572872, i1 false)
  %i.c = load ptr, ptr %0, align 8, !tbaa !65
  store ptr %i.c, ptr %i.a, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7libfsst11SymbolTableEEaSERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !63 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !57
  %i.q = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22, !inline_history !128
  %i.t = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22, !inline_history !128
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i9.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !54

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.f, ptr %i.d, align 8, !tbaa !63
  br label %_ZNSt10shared_ptrIN7libfsst11SymbolTableEEaSERKS2_.exit

_ZNSt10shared_ptrIN7libfsst11SymbolTableEEaSERKS2_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @duckdb_fsst_export(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 17)) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 156162
  %3 = load i16, ptr %2, align 2, !tbaa !20
  %4 = zext i16 %3 to i64
  %5 = shl nuw nsw i64 %4, 24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 156164
  %6 = load i16, ptr %i.b, align 4, !tbaa !21
  %i.c = zext i16 %6 to i64
  %i.d = shl nuw nsw i64 %i.c, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 156160
  %i.f = load i16, ptr %i.e, align 8, !tbaa !42
  %i.g = zext i16 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 8
  %7 = or i64 %5, %i.d
  %i.i = or i64 %7, %i.h
  %i.j = or i64 %i.i, 86716326009110529
  store i64 %i.j, ptr %1, align 1
  %i.k = load ptr, ptr %0, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 156166
  %i.m = load i8, ptr %i.l, align 2, !tbaa !22, !range !66, !noundef !67
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.m, ptr %i.n, align 1, !tbaa !12
  %i.o = load ptr, ptr %0, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 156168
  %i.q = load i16, ptr %i.p, align 2, !tbaa !24
  %i.r = trunc i16 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12
  %i.t = load ptr, ptr %0, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 156170
  %i.v = load i16, ptr %i.u, align 2, !tbaa !24
  %i.w = trunc i16 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.w, ptr %i.x, align 1, !tbaa !12
  %i.y = load ptr, ptr %0, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 156172
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !24
  %i.ab = trunc i16 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !12
  %i.ad = load ptr, ptr %0, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 156174
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !24
  %i.ag = trunc i16 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 156176
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !24
  %i.al = trunc i16 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.al, ptr %i.am, align 1, !tbaa !12
  %i.an = load ptr, ptr %0, align 8, !tbaa !65
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 156178
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !24
  %i.aq = trunc i16 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !12
  %i.as = load ptr, ptr %0, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 156180
  %i.au = load i16, ptr %i.at, align 2, !tbaa !24
  %i.av = trunc i16 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !12
  %i.ax = load ptr, ptr %0, align 8, !tbaa !65
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 156182
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !24
  %i.ba = trunc i16 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !12
  %i.bc = load ptr, ptr %0, align 8, !tbaa !65    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 156166
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !22, !range !66, !noundef !67 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 156160
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !42
  %i.bh = zext nneg i8 %i.be to i16
  %i.bi = icmp ugt i16 %i.bg, %i.bh
  br i1 %i.bi, label %.preheader.preheader, label %._crit_edge35

.preheader.preheader:                             ; preds = %bb.a
  %i.bj = zext nneg i8 %i.be to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.bk = phi ptr [ %i.bc, %.preheader.preheader ], [ %i.bp, %._crit_edge ] ; 3 uses
  %indvars.iv39 = phi i64 [ %i.bj, %.preheader.preheader ], [ %indvars.iv.next40, %._crit_edge ] ; 4 uses
  %.02833 = phi i32 [ 17, %.preheader.preheader ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 131592
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = and i64 %i.bn, 1152921504338411520
  %.not = icmp eq i64 %i.bo, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge35:                                    ; preds = %._crit_edge, %bb.a
  %.028.lcssa = phi i32 [ 17, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i32 %.028.lcssa

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.bp = phi ptr [ %i.bk, %.preheader ], [ %i.cc, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi i32 [ %.02833, %.preheader ], [ %i.bz, %.lr.ph ] ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 156160
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !42
  %i.bs = zext i16 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next40, %i.bs
  br i1 %i.bt, label %.preheader, label %._crit_edge35, !llvm.loop !129

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.bu = phi ptr [ %i.cc, %.lr.ph ], [ %i.bk, %.preheader ]
  %.131 = phi i32 [ %i.bz, %.lr.ph ], [ %.02833, %.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 131584
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv39
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !12
  %i.bz = add i32 %.131, 1                        ; 2 uses
  %i.ca = zext i32 %.131 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !65    ; 3 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv39
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 131592
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !11
  %i.cg = lshr i64 %i.cf, 28
  %i.ch = and i64 %i.cg, 4294967295
  %i.ci = icmp samesign ult i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !130
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @duckdb_fsst_import(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.0.copyload = load i64, ptr %1, align 1
  %.mask = and i64 %.0.copyload, -4294967296
  %.not = icmp eq i64 %.mask, 86716326009110528
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12    ; 3 uses
  %i.c = and i8 %i.b, 1                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.f = load i64, ptr %i.e, align 1              ; 14 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.f to i8 ; 2 uses
  %.sroa.11.0.extract.shift = lshr i64 %i.f, 32
  %.sroa.12.0.extract.shift = lshr i64 %i.f, 40
  %.sroa.13.0.extract.shift = lshr i64 %i.f, 48
  %.sroa.14.0.extract.shift = lshr i64 %i.f, 56   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 16 uses
  store i8 1, ptr %i.g, align 1, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 16 uses
  store i64 0, ptr %i.h, align 8, !tbaa !137
  %i.i = zext nneg i8 %i.c to i32
  %i.j = and i8 %i.b, 1                           ; 2 uses
  %spec.select = sub i8 %.sroa.0.0.extract.trunc, %i.j ; 3 uses
  %i.k = trunc i64 %i.f to i32
  %i.l = lshr i32 %i.k, 8
  %i.m = and i32 %i.l, 255
  %i.n = and i64 %i.f, 65280
  %.not61 = icmp eq i64 %i.n, 0
  br i1 %.not61, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %.preheader
  %i.o = and i8 %i.b, 1
  %i.p = zext nneg i8 %i.o to i64
  br label %.lr.ph.preheader

._crit_edge52.loopexit:                           ; preds = %.lr.ph.preheader
  %i.q = trunc nuw nsw i64 %indvars.iv.next87 to i32
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %.preheader
  %.141.lcssa = phi i32 [ %i.i, %.preheader ], [ %i.q, %._crit_edge52.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ 17, %.preheader ], [ %i.ii, %._crit_edge52.loopexit ] ; 2 uses
  %i.r = trunc i64 %i.f to i32
  %i.s = lshr i32 %i.r, 16
  %i.t = and i32 %i.s, 255
  %i.u = and i64 %i.f, 16711680
  %.not61.1 = icmp eq i64 %i.u, 0
  br i1 %.not61.1, label %._crit_edge52.1, label %.lr.ph51.1

.lr.ph51.1:                                       ; preds = %._crit_edge52
  %i.v = zext nneg i32 %.141.lcssa to i64
  br label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %.lr.ph51.1, %.lr.ph.preheader.1
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %.lr.ph.preheader.1 ], [ %i.v, %.lr.ph51.1 ] ; 3 uses
  %.03750.1 = phi i32 [ %i.am, %.lr.ph.preheader.1 ], [ 0, %.lr.ph51.1 ]
  %.149.1 = phi i32 [ %i.ah, %.lr.ph.preheader.1 ], [ %.1.lcssa, %.lr.ph51.1 ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv83
  store i8 3, ptr %i.w, align 1, !tbaa !12
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv83 ; 4 uses
  store i64 0, ptr %i.x, align 8, !tbaa !137
  %i.y = add i32 %.149.1, 1
  %i.z = zext i32 %.149.1 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12
  store i8 %i.ab, ptr %i.x, align 8, !tbaa !12
  %i.ac = add i32 %.149.1, 2
  %i.ad = zext i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !12
  %i.ah = add i32 %.149.1, 3                      ; 2 uses
  %i.ai = zext i32 %i.ac to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 %i.ak, ptr %i.al, align 2, !tbaa !12
  %i.am = add nuw nsw i32 %.03750.1, 1            ; 2 uses
end_hunk_0
