Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ClusteringInitialization?download=true
inline.NumInlined: 442
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK5faiss24ClusteringInitialization11init_randomEmPKfPf:bb.a

._crit_edge.thread:                               ; preds = %.lr.ph, %._crit_edge
  %i.l = ptrtoint ptr %.sroa.11.0 to i64
  %i.m = ptrtoint ptr %.sroa.016.0 to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.016.0, i64 noundef %i.n) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i14 = icmp eq ptr %.sroa.016.0, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIiSaIiEED2Ev.exit15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %.sroa.11.0 to i64
  %i.q = ptrtoint ptr %.sroa.016.0 to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.016.0, i64 noundef %i.r) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit15

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.021 = phi i64 [ %i.ab, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.s = load i64, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.t = mul i64 %i.s, %.021
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.016.0, i64 %.021
  %i.w = load i32, ptr %i.v, align 4, !tbaa !66
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y
  %i.aa = shl i64 %i.s, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.z, i64 %i.aa, i1 false)
  %i.ab = add nuw i64 %.021, 1                    ; 2 uses
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !19
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !65

_ZNSt6vectorIiSaIiEED2Ev.exit15:                  ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss24ClusteringInitialization21init_kmeans_plus_plusEmPKfPfmS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(34) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::mersenne_twister_engine", align 8 ; 10 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 8 uses
  %8 = alloca %"struct.faiss::(anonymous namespace)::InitDistancesResult", align 8 ; 5 uses
  %9 = alloca %"class.std::vector.3", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #17
  br label %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit

_ZN5faiss12_GLOBAL__N_18get_seedEl.exit:          ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  store i64 %.0.i, ptr %6, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit
  %store_forwarded86 = phi i64 [ %.0.i, %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit ], [ %i.o, %bb.d ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit ], [ %i.p, %bb.d ] ; 4 uses
  %i.e = getelementptr [8 x i8], ptr %6, i64 %.011.i.i
  %i.f = lshr i64 %store_forwarded86, 62
  %i.g = xor i64 %i.f, %store_forwarded86
  %i.h = mul i64 %i.g, 6364136223846793005
  %i.i = add i64 %i.h, %.011.i.i                  ; 3 uses
  store i64 %i.i, ptr %i.e, align 8, !tbaa !32
  %i.j = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.j, 312
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr [8 x i8], ptr %6, i64 %i.j
  %i.l = lshr i64 %i.i, 62
  %i.m = xor i64 %i.l, %i.i
  %i.n = mul i64 %i.m, 6364136223846793005
  %i.o = add i64 %i.n, %i.j                       ; 2 uses
  store i64 %i.o, ptr %i.k, align 8, !tbaa !32
  %i.p = add nuw nsw i64 %.011.i.i, 2
  br label %bb.c

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 2496
  store i64 312, ptr %i.q, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.r = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.r, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %.noexc10

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %bb.e

.noexc10:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = shl nuw nsw i64 %1, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20 ; 6 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %1 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !38
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !40
  %i.w = getelementptr i8, ptr %i.t, i64 8        ; 3 uses
  %i.x = add nsw i64 %1, -1                       ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc10
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.x, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.e

bb.e:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc10, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.aa = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.u, %.noexc10 ], [ %i.u, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.t, %.noexc10 ], [ %i.t, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 16 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.w, %.noexc10 ], [ %i.z, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ad = load i64, ptr %0, align 8, !tbaa !18
  invoke fastcc void @_ZN5faiss12_GLOBAL__N_130init_distances_for_d2_samplingEmmPKfPfmS2_RSt6vectorIdSaIdEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE(ptr dead_on_unwind noalias writable align 8 %8, i64 noundef %i.ad, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(2504) %6)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %8, align 8, !tbaa !43    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i11

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i11

bb.h:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i11: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  br i1 %.not.i.i.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i11
  %i.ak = shl nuw nsw i64 %1, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #20
          to label %.noexc18 unwind label %bb.m   ; 13 uses

.noexc18:                                         ; preds = %bb.i
  store ptr %i.al, ptr %9, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %1
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !38
  store double 0.000000e+00, ptr %i.al, align 8, !tbaa !40
  %i.ao = getelementptr i8, ptr %i.al, i64 8      ; 3 uses
  %i.ap = add nsw i64 %1, -1                      ; 4 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i13

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i13: ; preds = %.noexc18
  %.idx.i.i.i.i.i.i.i14 = shl nuw nsw i64 %i.ap, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %.idx.i.i.i.i.i.i.i14, i1 false), !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i.i.i.i.i.i.i14
  br label %bb.j

bb.j:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i13, %.noexc18
  %.0.i.i.i.i.i15 = phi ptr [ %i.ar, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i13 ], [ %i.ao, %.noexc18 ]
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.0.i.i.i.i.i15, ptr %i.as, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !19
  %i.av = icmp ult i64 %i.ae, %i.au
  br i1 %i.av, label %.lr.ph25.i.i.i.i.preheader.split, label %.loopexit

.thread:                                          ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i11
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !19
  %i.ay = icmp uge i64 %i.ae, %i.ax
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.lr.ph25.i.i.i.i.preheader.split:                 ; preds = %bb.j
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %.lr.ph25.i.i.i.i.preheader64, label %.lr.ph25.i.i.i.i.us46.preheader

.lr.ph25.i.i.i.i.us46.preheader:                  ; preds = %.lr.ph25.i.i.i.i.preheader.split
  %i.az = add nsw i64 %1, -2
  %xtraiter = and i64 %i.ap, 3                    ; 3 uses
  %i.ba = icmp ult i64 %i.az, 3
  %unroll_iter = and i64 %i.ap, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod89 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph25.i.i.i.i.us46

.lr.ph25.i.i.i.i.preheader64:                     ; preds = %.lr.ph25.i.i.i.i.preheader.split
  %.pre = load double, ptr %i.ab, align 8, !tbaa !40
  br label %.lr.ph25.i.i.i.i

.lr.ph25.i.i.i.i.us46:                            ; preds = %.lr.ph25.i.i.i.i.us46.preheader, %._crit_edge22.i.i.i.i.loopexit.us
  %.01723.i.i.i.i.us47 = phi i64 [ %i.cr, %._crit_edge22.i.i.i.i.loopexit.us ], [ %i.ae, %.lr.ph25.i.i.i.i.us46.preheader ] ; 2 uses
  %i.bb = load double, ptr %i.ab, align 8, !tbaa !40 ; 3 uses
  store double %i.bb, ptr %i.al, align 8, !tbaa !40
  br i1 %i.ba, label %.lr.ph.i.i.i.i.us49.epil.preheader, label %.lr.ph.i.i.i.i.us49

.lr.ph.i.i.i.i.us49:                              ; preds = %.lr.ph25.i.i.i.i.us46, %.lr.ph.i.i.i.i.us49
  %store_forwarded = phi double [ %i.bu, %.lr.ph.i.i.i.i.us49 ], [ %i.bb, %.lr.ph25.i.i.i.i.us46 ]
  %.01618.i.i.i.i.us50 = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.us49 ], [ 1, %.lr.ph25.i.i.i.i.us46 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.us49 ], [ 0, %.lr.ph25.i.i.i.i.us46 ]
  %i.bc = getelementptr [8 x i8], ptr %i.al, i64 %.01618.i.i.i.i.us50
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.01618.i.i.i.i.us50
  %i.be = load double, ptr %i.bd, align 8, !tbaa !40
  %i.bf = fadd double %store_forwarded, %i.be     ; 2 uses
  store double %i.bf, ptr %i.bc, align 8, !tbaa !40
  %i.bg = add nuw nsw i64 %.01618.i.i.i.i.us50, 1 ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %i.al, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bg
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !40
  %i.bk = fadd double %i.bf, %i.bj                ; 2 uses
  store double %i.bk, ptr %i.bh, align 8, !tbaa !40
  %i.bl = add nuw nsw i64 %.01618.i.i.i.i.us50, 2 ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.al, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bl
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !40
  %i.bp = fadd double %i.bk, %i.bo                ; 2 uses
  store double %i.bp, ptr %i.bm, align 8, !tbaa !40
  %i.bq = add nuw nsw i64 %.01618.i.i.i.i.us50, 3 ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.al, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bq
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !40
  %i.bu = fadd double %i.bp, %i.bt                ; 3 uses
  store double %i.bu, ptr %i.br, align 8, !tbaa !40
  %i.bv = add nuw nsw i64 %.01618.i.i.i.i.us50, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.loopexit.us52.unr-lcssa, label %.lr.ph.i.i.i.i.us49, !llvm.loop !67

._crit_edge.i.i.i.i.loopexit.us52.unr-lcssa:      ; preds = %.lr.ph.i.i.i.i.us49
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.loopexit.us52, label %.lr.ph.i.i.i.i.us49.epil.preheader

.lr.ph.i.i.i.i.us49.epil.preheader:               ; preds = %._crit_edge.i.i.i.i.loopexit.us52.unr-lcssa, %.lr.ph25.i.i.i.i.us46
  %store_forwarded.epil.init = phi double [ %i.bb, %.lr.ph25.i.i.i.i.us46 ], [ %i.bu, %._crit_edge.i.i.i.i.loopexit.us52.unr-lcssa ]
  %.01618.i.i.i.i.us50.epil.init = phi i64 [ 1, %.lr.ph25.i.i.i.i.us46 ], [ %i.bv, %._crit_edge.i.i.i.i.loopexit.us52.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph.i.i.i.i.us49.epil

.lr.ph.i.i.i.i.us49.epil:                         ; preds = %.lr.ph.i.i.i.i.us49.epil, %.lr.ph.i.i.i.i.us49.epil.preheader
  %store_forwarded.epil = phi double [ %store_forwarded.epil.init, %.lr.ph.i.i.i.i.us49.epil.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.us49.epil ]
  %.01618.i.i.i.i.us50.epil = phi i64 [ %.01618.i.i.i.i.us50.epil.init, %.lr.ph.i.i.i.i.us49.epil.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.us49.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.i.i.us49.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.us49.epil ]
  %i.bw = getelementptr [8 x i8], ptr %i.al, i64 %.01618.i.i.i.i.us50.epil
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.01618.i.i.i.i.us50.epil
  %i.by = load double, ptr %i.bx, align 8, !tbaa !40
  %i.bz = fadd double %store_forwarded.epil, %i.by ; 2 uses
  store double %i.bz, ptr %i.bw, align 8, !tbaa !40
  %i.ca = add nuw nsw i64 %.01618.i.i.i.i.us50.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.loopexit.us52, label %.lr.ph.i.i.i.i.us49.epil, !llvm.loop !68

._crit_edge.i.i.i.i.loopexit.us52:                ; preds = %.lr.ph.i.i.i.i.us49.epil, %._crit_edge.i.i.i.i.loopexit.us52.unr-lcssa
  %i.cb = invoke fastcc noundef i64 @_ZN5faiss12_GLOBAL__N_118sample_from_cumsumERKSt6vectorIdSaIdEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(2504) %6)
          to label %.noexc21.us54 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split.us

.noexc21.us54:                                    ; preds = %._crit_edge.i.i.i.i.loopexit.us52
  %i.cc = load i64, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.cd = mul i64 %i.cc, %.01723.i.i.i.i.us47
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cd ; 2 uses
  %i.cf = mul i64 %i.cc, %i.cb
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cf
  %i.ch = shl i64 %i.cc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.cg, i64 %i.ch, i1 false)
  br label %.lr.ph21.i.i.i.i.us

.lr.ph21.i.i.i.i.us:                              ; preds = %.noexc22.us, %.noexc21.us54
  %.019.i.i.i.i.us = phi i64 [ %i.cq, %.noexc22.us ], [ 0, %.noexc21.us54 ] ; 3 uses
  %i.ci = load i64, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.cj = mul i64 %i.ci, %.019.i.i.i.i.us
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cj
  %i.cl = invoke noundef float @_ZN5faiss10fvec_L2sqrILNS_9SIMDLevelE0EEEfPKfS3_m(ptr noundef %i.ck, ptr noundef %i.ce, i64 noundef %i.ci)
          to label %.noexc22.us unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split.us

.noexc22.us:                                      ; preds = %.lr.ph21.i.i.i.i.us
  %i.cm = fpext float %i.cl to double             ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.019.i.i.i.i.us ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !40 ; 2 uses
  %i.cp = fcmp ogt double %i.co, %i.cm
  %.sroa.speculated.i.i.i.i.us = select i1 %i.cp, double %i.cm, double %i.co
  store double %.sroa.speculated.i.i.i.i.us, ptr %i.cn, align 8, !tbaa !40
  %i.cq = add nuw i64 %.019.i.i.i.i.us, 1         ; 2 uses
  %exitcond66.not = icmp eq i64 %i.cq, %1
  br i1 %exitcond66.not, label %._crit_edge22.i.i.i.i.loopexit.us, label %.lr.ph21.i.i.i.i.us, !llvm.loop !69

._crit_edge22.i.i.i.i.loopexit.us:                ; preds = %.noexc22.us
  %i.cr = add nuw i64 %.01723.i.i.i.i.us47, 1     ; 2 uses
  %i.cs = load i64, ptr %i.at, align 8, !tbaa !19
  %i.ct = icmp ult i64 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph25.i.i.i.i.us46, label %.loopexit, !llvm.loop !70

_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split.us: ; preds = %._crit_edge.i.i.i.i.loopexit.us52
  %lpad.loopexit.split-lp.us56 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit26

_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split.us: ; preds = %.lr.ph21.i.i.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit26

.lr.ph25.i.i.i.i:                                 ; preds = %.lr.ph25.i.i.i.i.preheader64, %.lr.ph21.i.i.i.i
  %10 = phi double [ %.sroa.speculated.i.i.i.i, %.lr.ph21.i.i.i.i ], [ %.pre, %.lr.ph25.i.i.i.i.preheader64 ]
  %.01723.i.i.i.i = phi i64 [ %22, %.lr.ph21.i.i.i.i ], [ %i.ae, %.lr.ph25.i.i.i.i.preheader64 ] ; 2 uses
  store double %10, ptr %i.al, align 8, !tbaa !40
  %i.cu = invoke fastcc noundef i64 @_ZN5faiss12_GLOBAL__N_118sample_from_cumsumERKSt6vectorIdSaIdEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(2504) %6)
          to label %._crit_edge22.i.i.i.i.loopexit unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split

._crit_edge22.i.i.i.i.loopexit:                   ; preds = %.lr.ph25.i.i.i.i
  %11 = load i64, ptr %0, align 8, !tbaa !18      ; 3 uses
  %12 = mul i64 %11, %.01723.i.i.i.i
  %13 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %12 ; 2 uses
  %14 = mul i64 %11, %i.cu
  %15 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %14
  %16 = shl i64 %11, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %15, i64 %16, i1 false)
  %17 = load i64, ptr %0, align 8, !tbaa !18
  %18 = invoke noundef float @_ZN5faiss10fvec_L2sqrILNS_9SIMDLevelE0EEEfPKfS3_m(ptr noundef %2, ptr noundef %13, i64 noundef %17)
          to label %.lr.ph21.i.i.i.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split

.lr.ph21.i.i.i.i:                                 ; preds = %._crit_edge22.i.i.i.i.loopexit
  %19 = fpext float %18 to double                 ; 2 uses
  %20 = load double, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %21 = fcmp ogt double %20, %19
  %.sroa.speculated.i.i.i.i = select i1 %21, double %19, double %20 ; 2 uses
  store double %.sroa.speculated.i.i.i.i, ptr %i.ab, align 8, !tbaa !40
  %22 = add nuw i64 %.01723.i.i.i.i, 1            ; 2 uses
  %23 = load i64, ptr %i.at, align 8, !tbaa !19
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %.lr.ph25.i.i.i.i, label %.loopexit, !llvm.loop !70

.loopexit:                                        ; preds = %._crit_edge22.i.i.i.i.loopexit.us, %.lr.ph21.i.i.i.i, %bb.j
  %.idx87 = shl nuw nsw i64 %1, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %.idx87) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.thread, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.not.i.i.i23 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIdSaIdEED2Ev.exit24, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = ptrtoint ptr %i.aa to i64
  %i.cw = ptrtoint ptr %i.ab to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.cx) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit24

_ZNSt6vectorIdSaIdEED2Ev.exit24:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.m:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split:   ; preds = %._crit_edge22.i.i.i.i.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit26

_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split: ; preds = %.lr.ph25.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit26

_ZNSt6vectorIdSaIdEED2Ev.exit26:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split.us, %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split, %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split, %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split.us ], [ %lpad.loopexit, %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split ], [ %lpad.loopexit.split-lp.us56, %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split.us ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split ]
  %.idx = shl nuw nsw i64 %1, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %.idx) #19
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit26, %bb.m
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIdSaIdEED2Ev.exit26 ], [ %i.cy, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.aj, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.not.i.i.i27 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIdSaIdEED2Ev.exit28, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = ptrtoint ptr %i.aa to i64
  %i.da = ptrtoint ptr %i.ab to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.db) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit28

_ZNSt6vectorIdSaIdEED2Ev.exit28:                  ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss24ClusteringInitialization11init_afkmc2EmPKfPfmS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(34) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %7 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %8 = alloca %"class.std::mersenne_twister_engine", align 8 ; 81 uses
  %9 = alloca %"class.std::unordered_set", align 8 ; 19 uses
  %10 = alloca %"class.std::vector.3", align 8    ; 10 uses
  %11 = alloca %"struct.faiss::(anonymous namespace)::InitDistancesResult", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #17
  br label %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit

_ZN5faiss12_GLOBAL__N_18get_seedEl.exit:          ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  store i64 %.0.i, ptr %8, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit
  %store_forwarded650 = phi i64 [ %.0.i, %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit ], [ %i.p, %bb.d ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit ], [ %i.q, %bb.d ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %8, i64 %.011.i.i
  %i.g = lshr i64 %store_forwarded650, 62
  %i.h = xor i64 %i.g, %store_forwarded650
  %i.i = mul i64 %i.h, 6364136223846793005
  %i.j = add i64 %i.i, %.011.i.i                  ; 3 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !32
  %i.k = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.k, 312
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr [8 x i8], ptr %8, i64 %i.k
  %i.m = lshr i64 %i.j, 62
  %i.n = xor i64 %i.m, %i.j
  %i.o = mul i64 %i.n, 6364136223846793005
  %i.p = add i64 %i.o, %i.k                       ; 2 uses
  store i64 %i.p, ptr %i.l, align 8, !tbaa !32
  %i.q = add nuw nsw i64 %.011.i.i, 2
  br label %bb.c

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 2496 ; 13 uses
  store i64 312, ptr %i.r, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %i.s, ptr %9, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i64 1, ptr %i.t, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.x = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.x, label %bb.e, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %bb.f

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.y = shl nuw nsw i64 %1, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #20
          to label %.noexc83 unwind label %bb.k   ; 6 uses

.noexc83:                                         ; preds = %bb.f
  store ptr %i.z, ptr %10, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %1 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !38
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !40
  %i.ac = getelementptr i8, ptr %i.z, i64 8       ; 3 uses
  %i.ad = add nsw i64 %1, -1                      ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc83
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ad, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc83, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.ag = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.aa, %.noexc83 ], [ %i.aa, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.ah = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.z, %.noexc83 ], [ %i.z, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 10 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.ac, %.noexc83 ], [ %i.af, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.aj = load i64, ptr %0, align 8, !tbaa !18
  invoke fastcc void @_ZN5faiss12_GLOBAL__N_130init_distances_for_d2_samplingEmmPKfPfmS2_RSt6vectorIdSaIdEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE(ptr dead_on_unwind noalias writable align 8 %11, i64 noundef %i.aj, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(2504) %8)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %11, align 8, !tbaa !43
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr %9, ptr %7, align 8, !tbaa !95
  %i.an = invoke { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %_ZNSt6vectorIdSaIdEED2Ev.exit104, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85

bb.k:                                             ; preds = %bb.f, %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit192

bb.l:                                             ; preds = %bb.i, %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit190

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85: ; preds = %bb.h, %bb.j
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85
  %i.at = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #20
          to label %.noexc92 unwind label %bb.q   ; 20 uses

.noexc92:                                         ; preds = %bb.m
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %1 ; 7 uses
  store double 0.000000e+00, ptr %i.au, align 8, !tbaa !40
  %i.aw = add nsw i64 %1, -1                      ; 8 uses
  %i.ax = icmp eq i64 %i.aw, 0                    ; 2 uses
  br i1 %i.ax, label %bb.n, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i87

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i87: ; preds = %.noexc92
  %i.ay = getelementptr i8, ptr %i.au, i64 8
  %.idx.i.i.i.i.i.i.i88 = shl nuw nsw i64 %i.aw, 3
end_hunk_0
