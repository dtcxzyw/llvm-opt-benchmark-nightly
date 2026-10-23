Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ClusteringInitialization?download=true
inline.NumInlined: 442
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK5faiss24ClusteringInitialization21init_kmeans_plus_plusEmPKfPfmS2_:bb.a

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
  call void @llvm.assume(i1 %lcmp.mod95)
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
          to label %.noexc21.us54 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
          to label %.noexc22.us unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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

.lr.ph25.i.i.i.i:                                 ; preds = %.lr.ph25.i.i.i.i.preheader.split, %._crit_edge22.i.i.i.i.loopexit
  %.01723.i.i.i.i = phi i64 [ %i.cz, %._crit_edge22.i.i.i.i.loopexit ], [ %i.ae, %.lr.ph25.i.i.i.i.preheader.split ] ; 2 uses
  %i.cu = load double, ptr %i.ab, align 8, !tbaa !40
  store double %i.cu, ptr %i.al, align 8, !tbaa !40
  %i.cv = invoke fastcc noundef i64 @_ZN5faiss12_GLOBAL__N_118sample_from_cumsumERKSt6vectorIdSaIdEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(2504) %6)
          to label %.lr.ph21.i.i.i.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge22.i.i.i.i.loopexit:                   ; preds = %.lr.ph21.i.i.i.i
  %i.cw = fpext float %i.dj to double             ; 2 uses
  %i.cx = load double, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.cy = fcmp ogt double %i.cx, %i.cw
  %.sroa.speculated.i.i.i.i = select i1 %i.cy, double %i.cw, double %i.cx
  store double %.sroa.speculated.i.i.i.i, ptr %i.ab, align 8, !tbaa !40
  %i.cz = add nuw i64 %.01723.i.i.i.i, 1          ; 2 uses
  %i.da = load i64, ptr %i.at, align 8, !tbaa !19
  %i.db = icmp ult i64 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph25.i.i.i.i, label %.loopexit, !llvm.loop !70

.lr.ph21.i.i.i.i:                                 ; preds = %.lr.ph25.i.i.i.i
  %i.dc = load i64, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.dd = mul i64 %i.dc, %.01723.i.i.i.i
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dd ; 2 uses
  %i.df = mul i64 %i.dc, %i.cv
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.df
  %i.dh = shl i64 %i.dc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.de, ptr align 4 %i.dg, i64 %i.dh, i1 false)
  %i.di = load i64, ptr %0, align 8, !tbaa !18
  %i.dj = invoke noundef float @_ZN5faiss10fvec_L2sqrILNS_9SIMDLevelE0EEEfPKfS3_m(ptr noundef %2, ptr noundef %i.de, i64 noundef %i.di)
          to label %._crit_edge22.i.i.i.i.loopexit unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %._crit_edge22.i.i.i.i.loopexit.us, %._crit_edge22.i.i.i.i.loopexit, %bb.j
  %.idx90 = shl nuw nsw i64 %1, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %.idx90) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.thread, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.not.i.i.i23 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIdSaIdEED2Ev.exit24, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dk = ptrtoint ptr %i.aa to i64
  %i.dl = ptrtoint ptr %i.ab to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.dm) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit24

_ZNSt6vectorIdSaIdEED2Ev.exit24:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.m:                                             ; preds = %bb.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph21.i.i.i.i, %.lr.ph25.i.i.i.i, %.lr.ph21.i.i.i.i.us, %._crit_edge.i.i.i.i.loopexit.us52
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %1, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %.idx) #19
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNSt6vectorIdSaIdEED2Ev.exit26.loopexit.split-lp.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dn, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.aj, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.not.i.i.i27 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIdSaIdEED2Ev.exit28, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = ptrtoint ptr %i.aa to i64
  %i.dp = ptrtoint ptr %i.ab to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.dq) #19
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
  %10 = alloca %"class.std::vector.3", align 8    ; 8 uses
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
  %store_forwarded657 = phi i64 [ %.0.i, %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit ], [ %i.p, %bb.d ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZN5faiss12_GLOBAL__N_18get_seedEl.exit ], [ %i.q, %bb.d ] ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %8, i64 %.011.i.i
  %i.g = lshr i64 %store_forwarded657, 62
  %i.h = xor i64 %i.g, %store_forwarded657
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
  %i.ag = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.aa, %.noexc83 ], [ %i.aa, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.ah = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.z, %.noexc83 ], [ %i.z, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 10 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.ac, %.noexc83 ], [ %i.af, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.aj = load i64, ptr %0, align 8, !tbaa !18
  invoke fastcc void @_ZN5faiss12_GLOBAL__N_130init_distances_for_d2_samplingEmmPKfPfmS2_RSt6vectorIdSaIdEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE(ptr dead_on_unwind noalias writable align 8 %11, i64 noundef %i.aj, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(2504) %8)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %11, align 8, !tbaa !43
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr %9, ptr %7, align 8, !tbaa !95
  %i.an = invoke { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.j unwind label %bb.p       ; 0 uses

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

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85: ; preds = %bb.h, %bb.j
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85
  %i.as = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #20
          to label %.noexc92 unwind label %bb.p   ; 20 uses

.noexc92:                                         ; preds = %bb.l
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %1 ; 7 uses
  store double 0.000000e+00, ptr %i.at, align 8, !tbaa !40
  %i.av = add nsw i64 %1, -1                      ; 8 uses
  %i.aw = icmp eq i64 %i.av, 0                    ; 2 uses
  br i1 %i.aw, label %bb.m, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i87

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i87: ; preds = %.noexc92
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  %.idx.i.i.i.i.i.i.i88 = shl nuw nsw i64 %i.av, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %.idx.i.i.i.i.i.i.i88, i1 false), !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %.noexc92, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i87
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #20
          to label %.noexc101 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit184.thread ; 21 uses

.noexc101:                                        ; preds = %bb.m
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %1 ; 6 uses
  store double 0.000000e+00, ptr %i.ay, align 8, !tbaa !40
  %i.ba = getelementptr i8, ptr %i.ay, i64 8      ; 3 uses
  br i1 %i.aw, label %.lr.ph, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i96

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i96: ; preds = %.noexc101
  %.idx.i.i.i.i.i.i.i97 = shl nuw nsw i64 %i.av, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %.idx.i.i.i.i.i.i.i97, i1 false), !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i97
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i96, %.noexc101
  %.0.i.i.i.i.i98.ph = phi ptr [ %i.ba, %.noexc101 ], [ %i.bb, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i96 ] ; 6 uses
  %i.bc = uitofp nneg i64 %1 to double
  %i.bd = fdiv double 5.000000e-01, %i.bc         ; 16 uses
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !54 ; 5 uses
  %i.bg = fcmp ogt double %i.bf, 0.000000e+00
  br i1 %i.bg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  store double %i.bd, ptr %i.at, align 8, !tbaa !40
  store double %i.bd, ptr %i.ay, align 8, !tbaa !40
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.split.peel.next.preheader

.lr.ph.split.peel.next.preheader:                 ; preds = %bb.n
  %load_initial654 = load double, ptr %i.ay, align 8 ; 2 uses
  %i.bh = add nsw i64 %1, -2
  %xtraiter = and i64 %i.av, 3                    ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 3
  br i1 %i.bi, label %.lr.ph.split.peel.next.epil.preheader, label %.lr.ph.split.peel.next.preheader.new

.lr.ph.split.peel.next.preheader.new:             ; preds = %.lr.ph.split.peel.next.preheader
  %unroll_iter = and i64 %i.av, -4
  br label %.lr.ph.split.peel.next

bb.o:                                             ; preds = %.lr.ph
  %i.bj = load double, ptr %i.ah, align 8, !tbaa !40
  %i.bk = fmul double %i.bj, 5.000000e-01
  %i.bl = fdiv double %i.bk, %i.bf
  %i.bm = fadd double %i.bd, %i.bl                ; 2 uses
  store double %i.bm, ptr %i.at, align 8, !tbaa !40
  store double %i.bm, ptr %i.ay, align 8, !tbaa !40
  %exitcond412.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond412.peel.not, label %._crit_edge, label %.lr.ph.split.us.peel.next.preheader

.lr.ph.split.us.peel.next.preheader:              ; preds = %bb.o
  %load_initial = load double, ptr %i.ay, align 8 ; 2 uses
  %xtraiter684 = and i64 %i.av, 1
  %i.bn = icmp eq i64 %1, 2
  br i1 %i.bn, label %.lr.ph.split.us.peel.next.epil.preheader, label %.lr.ph.split.us.peel.next.preheader.new

.lr.ph.split.us.peel.next.preheader.new:          ; preds = %.lr.ph.split.us.peel.next.preheader
  %unroll_iter688 = and i64 %i.av, -2
  br label %.lr.ph.split.us.peel.next

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us.peel.next.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph.split.us.peel.next.preheader.new ], [ %i.cd, %.lr.ph.split.us.peel.next ]
  %.070381.us = phi i64 [ 1, %.lr.ph.split.us.peel.next.preheader.new ], [ %i.cf, %.lr.ph.split.us.peel.next ] ; 5 uses
  %niter689 = phi i64 [ 0, %.lr.ph.split.us.peel.next.preheader.new ], [ %niter689.next.1, %.lr.ph.split.us.peel.next ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.070381.us
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !40
  %i.bq = fmul double %i.bp, 5.000000e-01
  %i.br = fdiv double %i.bq, %i.bf
  %i.bs = fadd double %i.bd, %i.br                ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.070381.us
  store double %i.bs, ptr %i.bt, align 8, !tbaa !40
  %i.bu = fadd double %i.bs, %store_forwarded     ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.070381.us
  store double %i.bu, ptr %i.bv, align 8, !tbaa !40
  %i.bw = add nuw nsw i64 %.070381.us, 1          ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !40
  %i.bz = fmul double %i.by, 5.000000e-01
  %i.ca = fdiv double %i.bz, %i.bf
  %i.cb = fadd double %i.bd, %i.ca                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  store double %i.cb, ptr %i.cc, align 8, !tbaa !40
  %i.cd = fadd double %i.cb, %i.bu                ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bw
  store double %i.cd, ptr %i.ce, align 8, !tbaa !40
  %i.cf = add nuw nsw i64 %.070381.us, 2          ; 2 uses
  %niter689.next.1 = add nuw i64 %niter689, 2     ; 2 uses
  %niter689.ncmp.1 = icmp eq i64 %niter689.next.1, %unroll_iter688
  br i1 %niter689.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us.peel.next, !llvm.loop !71

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us.peel.next
  %lcmp.mod686.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod686.not, label %._crit_edge, label %.lr.ph.split.us.peel.next.epil.preheader

.lr.ph.split.us.peel.next.epil.preheader:         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.peel.next.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.split.us.peel.next.preheader ], [ %i.cd, %._crit_edge.loopexit.unr-lcssa ]
  %.070381.us.epil.init = phi i64 [ 1, %.lr.ph.split.us.peel.next.preheader ], [ %i.cf, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod687 = trunc i64 %i.av to i1
  call void @llvm.assume(i1 %lcmp.mod687)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.070381.us.epil.init
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !40
  %i.ci = fmul double %i.ch, 5.000000e-01
  %i.cj = fdiv double %i.ci, %i.bf
  %i.ck = fadd double %i.bd, %i.cj                ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.070381.us.epil.init
  store double %i.ck, ptr %i.cl, align 8, !tbaa !40
  %i.cm = fadd double %i.ck, %store_forwarded.epil.init
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.070381.us.epil.init
  store double %i.cm, ptr %i.cn, align 8, !tbaa !40
  br label %._crit_edge

._crit_edge.loopexit682.unr-lcssa:                ; preds = %.lr.ph.split.peel.next
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.peel.next.epil.preheader

.lr.ph.split.peel.next.epil.preheader:            ; preds = %._crit_edge.loopexit682.unr-lcssa, %.lr.ph.split.peel.next.preheader
  %store_forwarded655.epil.init = phi double [ %load_initial654, %.lr.ph.split.peel.next.preheader ], [ %i.ez, %._crit_edge.loopexit682.unr-lcssa ]
  %.070381.epil.init = phi i64 [ 1, %.lr.ph.split.peel.next.preheader ], [ %i.fb, %._crit_edge.loopexit682.unr-lcssa ]
  %lcmp.mod683 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod683)
  br label %.lr.ph.split.peel.next.epil

.lr.ph.split.peel.next.epil:                      ; preds = %.lr.ph.split.peel.next.epil, %.lr.ph.split.peel.next.epil.preheader
  %store_forwarded655.epil = phi double [ %store_forwarded655.epil.init, %.lr.ph.split.peel.next.epil.preheader ], [ %i.cp, %.lr.ph.split.peel.next.epil ]
  %.070381.epil = phi i64 [ %.070381.epil.init, %.lr.ph.split.peel.next.epil.preheader ], [ %i.cr, %.lr.ph.split.peel.next.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.split.peel.next.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.peel.next.epil ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.070381.epil
  store double %i.bd, ptr %i.co, align 8, !tbaa !40
  %i.cp = fadd double %i.bd, %store_forwarded655.epil ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.070381.epil
  store double %i.cp, ptr %i.cq, align 8, !tbaa !40
  %i.cr = add nuw nsw i64 %.070381.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.peel.next.epil, !llvm.loop !72

._crit_edge:                                      ; preds = %._crit_edge.loopexit682.unr-lcssa, %.lr.ph.split.peel.next.epil, %.lr.ph.split.us.peel.next.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85, %bb.n, %bb.o
  %.0.i.i.i.i.i98476 = phi ptr [ %.0.i.i.i.i.i98.ph, %bb.o ], [ %.0.i.i.i.i.i98.ph, %.lr.ph.split.us.peel.next.epil.preheader ], [ %.0.i.i.i.i.i98.ph, %bb.n ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85 ], [ %.0.i.i.i.i.i98.ph, %._crit_edge.loopexit.unr-lcssa ], [ %.0.i.i.i.i.i98.ph, %.lr.ph.split.peel.next.epil ], [ %.0.i.i.i.i.i98.ph, %._crit_edge.loopexit682.unr-lcssa ] ; 2 uses
  %.sroa.19.0474 = phi ptr [ %i.az, %bb.o ], [ %i.az, %.lr.ph.split.us.peel.next.epil.preheader ], [ %i.az, %bb.n ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85 ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ], [ %i.az, %.lr.ph.split.peel.next.epil ], [ %i.az, %._crit_edge.loopexit682.unr-lcssa ] ; 2 uses
  %.sroa.0283.0472 = phi ptr [ %i.ay, %bb.o ], [ %i.ay, %.lr.ph.split.us.peel.next.epil.preheader ], [ %i.ay, %bb.n ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85 ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.ay, %.lr.ph.split.peel.next.epil ], [ %i.ay, %._crit_edge.loopexit682.unr-lcssa ] ; 10 uses
  %.sroa.13.0308470 = phi ptr [ %i.au, %bb.o ], [ %i.au, %.lr.ph.split.us.peel.next.epil.preheader ], [ %i.au, %bb.n ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85 ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ], [ %i.au, %.lr.ph.split.peel.next.epil ], [ %i.au, %._crit_edge.loopexit682.unr-lcssa ] ; 2 uses
  %.sroa.0296.0311468 = phi ptr [ %i.at, %bb.o ], [ %i.at, %.lr.ph.split.us.peel.next.epil.preheader ], [ %i.at, %bb.n ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i85 ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ], [ %i.at, %.lr.ph.split.peel.next.epil ], [ %i.at, %._crit_edge.loopexit682.unr-lcssa ] ; 7 uses
  %i.cs = load i64, ptr %11, align 8, !tbaa !43   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !19
end_hunk_0
begin_hunk_1_@_ZNK5faiss24ClusteringInitialization11init_afkmc2EmPKfPfmS2_:bb.a
  %i.abc = icmp eq <2 x i64> %i.abb, zeroinitializer
  %i.abd = select <2 x i1> %i.abc, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.abe = xor <2 x i64> %i.aba, %i.abd
  store <2 x i64> %i.abe, ptr %i.aar, align 8, !tbaa !32
  %index.next526 = add nuw i64 %index521, 2       ; 2 uses
  %i.abf = icmp eq i64 %index.next526, 156
  br i1 %i.abf, label %vector.ph, label %vector.body520, !llvm.loop !89

vector.ph:                                        ; preds = %vector.body520
  %.pre24.i.i271 = load i64, ptr %.phi.trans.insert.i.i214, align 8, !tbaa !32
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i271, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 1248
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %index
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 1256
  %wide.load = load <2 x i64>, ptr %i.abj, align 8, !tbaa !32 ; 5 uses
  %i.abk = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.abl = and <2 x i64> %i.abk, splat (i64 -2147483648)
  %i.abm = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.abn = or disjoint <2 x i64> %i.abm, %i.abl
  %wide.load517 = load <2 x i64>, ptr %i.abg, align 8, !tbaa !32
  %i.abo = lshr exact <2 x i64> %i.abn, splat (i64 1)
  %i.abp = xor <2 x i64> %i.abo, %wide.load517
  %i.abq = and <2 x i64> %wide.load, splat (i64 1)
  %i.abr = icmp eq <2 x i64> %i.abq, zeroinitializer
  %i.abs = select <2 x i1> %i.abr, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.abt = xor <2 x i64> %i.abp, %i.abs
  store <2 x i64> %i.abt, ptr %i.abh, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.abu = icmp eq i64 %index.next, 154
  br i1 %i.abu, label %.preheader.i.i272, label %vector.body, !llvm.loop !90

.preheader.i.i272:                                ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.abv = and i64 %vector.recur.extract, -2147483648
  %i.abw = load i64, ptr %i.ei, align 8, !tbaa !32 ; 2 uses
  %i.abx = and i64 %i.abw, 2147483646
  %i.aby = or disjoint i64 %i.abx, %i.abv
  %i.abz = load i64, ptr %i.ej, align 8, !tbaa !32
  %i.aca = lshr exact i64 %i.aby, 1
  %i.acb = xor i64 %i.aca, %i.abz
  %i.acc = and i64 %i.abw, 1
  %.not19.i.i274 = icmp eq i64 %i.acc, 0
  %i.acd = select i1 %.not19.i.i274, i64 0, i64 -5403634167711393303
  %i.ace = xor i64 %i.acb, %i.acd
  store i64 %i.ace, ptr %i.eh, align 8, !tbaa !32
  %i.acf = load i64, ptr %i.de, align 8, !tbaa !32
  %i.acg = and i64 %i.acf, -2147483648
  %i.ach = load i64, ptr %8, align 8, !tbaa !32   ; 2 uses
  %i.aci = and i64 %i.ach, 2147483646
  %i.acj = or disjoint i64 %i.aci, %i.acg
  %i.ack = load i64, ptr %i.df, align 8, !tbaa !32
  %i.acl = lshr exact i64 %i.acj, 1
  %i.acm = xor i64 %i.acl, %i.ack
  %i.acn = and i64 %i.ach, 1
  %.not.i.i277 = icmp eq i64 %i.acn, 0
  %i.aco = select i1 %.not.i.i277, i64 0, i64 -5403634167711393303
  %i.acp = xor i64 %i.acm, %i.aco
  store i64 %i.acp, ptr %i.de, align 8, !tbaa !32
  br label %.noexc182

.noexc182:                                        ; preds = %.preheader.i.i272, %select.unfold.i.i.i.i
  %i.acq = phi i64 [ 0, %.preheader.i.i272 ], [ %i.aap, %select.unfold.i.i.i.i ] ; 2 uses
  %i.acr = add nuw nsw i64 %i.acq, 1              ; 2 uses
  store i64 %i.acr, ptr %i.r, align 8, !tbaa !34
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.acq
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !32 ; 2 uses
  %i.acu = lshr i64 %i.act, 29
  %i.acv = and i64 %i.acu, 22906492245
  %i.acw = xor i64 %i.acv, %i.act                 ; 2 uses
  %i.acx = shl i64 %i.acw, 17
  %i.acy = and i64 %i.acx, 8202884508482404352
  %i.acz = xor i64 %i.acy, %i.acw                 ; 2 uses
  %i.ada = shl i64 %i.acz, 37
  %i.adb = and i64 %i.ada, -2270628950310912
  %i.adc = xor i64 %i.adb, %i.acz                 ; 2 uses
  %i.add = lshr i64 %i.adc, 43
  %i.ade = xor i64 %i.add, %i.adc
  %i.adf = uitofp i64 %i.ade to double
  %i.adg = call double @llvm.fmuladd.f64(double %i.adf, double %.01422.i.i.i.i, double %.01521.i.i.i.i) ; 2 uses
  %i.adh = fpext double %.01422.i.i.i.i to x86_fp80
  %i.adi = fmul x86_fp80 %i.adh, f0x403F8000000000000000
  %i.adj = fptrunc x86_fp80 %i.adi to double      ; 2 uses
  %i.adk = add i64 %.023.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i181 = icmp eq i64 %i.adk, 0
  br i1 %.not.i.i.i.i181, label %bb.au, label %select.unfold.i.i.i.i, !llvm.loop !1

bb.av:                                            ; preds = %bb.au
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.016.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.av ], [ %i.aan, %bb.au ]
  %i.adl = fcmp olt double %.016.i.i.i.i, %.061
  br i1 %i.adl, label %bb.ax, label %.loopexit335

bb.ax:                                            ; preds = %bb.aw
  store i64 %.1.i120, ptr %i.a, align 8, !tbaa !32
  br label %.loopexit335

.loopexit335:                                     ; preds = %bb.ap, %bb.am, %bb.ao, %bb.aw, %bb.ax
  %.268 = phi double [ %.066386, %bb.aw ], [ %i.aad, %bb.ax ], [ %.066386, %bb.am ], [ %.066386, %bb.ao ], [ %.066386, %bb.ap ]
  %.265 = phi double [ %.063387, %bb.aw ], [ %i.aaf, %bb.ax ], [ %.063387, %bb.am ], [ %.063387, %bb.ao ], [ %.063387, %bb.ap ]
  %i.adm = add nuw nsw i64 %.062388, 1            ; 2 uses
  %i.adn = load i16, ptr %i.do, align 8, !tbaa !22
  %i.ado = zext i16 %i.adn to i64
  %i.adp = icmp samesign ult i64 %i.adm, %i.ado
  br i1 %i.adp, label %bb.af, label %._crit_edge390, !llvm.loop !91

bb.ay:                                            ; preds = %._crit_edge390
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.adq = load i64, ptr %0, align 8, !tbaa !18   ; 3 uses
  %i.adr = mul i64 %i.adq, %.069391
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adr
  %i.adt = load i64, ptr %i.a, align 8, !tbaa !32
  %i.adu = mul i64 %i.adt, %i.adq
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adu
  %i.adw = shl i64 %i.adq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ads, ptr align 4 %i.adv, i64 %i.adw, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.adx = add nuw i64 %.069391, 1                ; 2 uses
  %i.ady = load i64, ptr %i.ct, align 8, !tbaa !19
  %i.adz = icmp ult i64 %i.adx, %i.ady
  br i1 %i.adz, label %bb.s, label %._crit_edge394, !llvm.loop !92

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph14.i.i.i.i.i, %.lr.ph.i.i.i.i.i164, %.lr.ph14.i.i.i.i.i172, %.lr.ph.i.i.i.i.i110, %._crit_edge390
  %lpad.loopexit.split-lp668 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not.i.i.i183 = icmp eq ptr %.sroa.0283.0472, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIdSaIdEED2Ev.exit184, label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aea = ptrtoint ptr %.sroa.19.0474 to i64
  %i.aeb = sub i64 %i.aea, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0283.0472, i64 noundef %i.aeb) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit184

_ZNSt6vectorIdSaIdEED2Ev.exit104:                 ; preds = %bb.r, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %.not.i.i.i185 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i185, label %_ZNSt6vectorIdSaIdEED2Ev.exit186, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit104
  %i.aec = ptrtoint ptr %i.ag to i64
  %i.aed = ptrtoint ptr %i.ah to i64
  %i.aee = sub i64 %i.aec, %i.aed
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.aee) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit186

_ZNSt6vectorIdSaIdEED2Ev.exit186:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit104, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.aef = load ptr, ptr %i.u, align 8, !tbaa !61 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.aef, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i187

.lr.ph.i.i.i.i187:                                ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit186, %.lr.ph.i.i.i.i187
  %.06.i.i.i.i = phi ptr [ %i.aeg, %.lr.ph.i.i.i.i187 ], [ %i.aef, %_ZNSt6vectorIdSaIdEED2Ev.exit186 ] ; 2 uses
  %i.aeg = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !59 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #19
  %.not.i.i.i.i188 = icmp eq ptr %i.aeg, null
  br i1 %.not.i.i.i.i188, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i187, !llvm.loop !4

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i187, %_ZNSt6vectorIdSaIdEED2Ev.exit186
  %i.aeh = load ptr, ptr %9, align 8, !tbaa !52
  %i.aei = load i64, ptr %i.t, align 8, !tbaa !53
  %i.aej = shl i64 %i.aei, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aeh, i8 0, i64 %i.aej, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.aek = load ptr, ptr %9, align 8, !tbaa !52   ; 2 uses
  %i.ael = icmp eq ptr %i.aek, %i.s
  br i1 %i.ael, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.aem = load i64, ptr %i.t, align 8, !tbaa !53
  %i.aen = shl i64 %i.aem, 3
  call void @_ZdlPvm(ptr noundef %i.aek, i64 noundef %i.aen) #19
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit184:                 ; preds = %bb.az, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.not.i.i.i189 = icmp eq ptr %.sroa.0296.0311468, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIdSaIdEED2Ev.exit190, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit184.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit184
  %.pn.pn.pn.pn.pn.pn329 = phi { ptr, i32 } [ %i.el, %_ZNSt6vectorIdSaIdEED2Ev.exit184.thread ], [ %lpad.loopexit.split-lp668, %_ZNSt6vectorIdSaIdEED2Ev.exit184 ]
  %.sroa.13.0307328 = phi ptr [ %i.au, %_ZNSt6vectorIdSaIdEED2Ev.exit184.thread ], [ %.sroa.13.0308470, %_ZNSt6vectorIdSaIdEED2Ev.exit184 ]
  %.sroa.0296.0310327 = phi ptr [ %i.at, %_ZNSt6vectorIdSaIdEED2Ev.exit184.thread ], [ %.sroa.0296.0311468, %_ZNSt6vectorIdSaIdEED2Ev.exit184 ] ; 2 uses
  %i.aeo = ptrtoint ptr %.sroa.13.0307328 to i64
  %i.aep = ptrtoint ptr %.sroa.0296.0310327 to i64
  %i.aeq = sub i64 %i.aeo, %i.aep
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0296.0310327, i64 noundef %i.aeq) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit190

_ZNSt6vectorIdSaIdEED2Ev.exit190:                 ; preds = %bb.p, %_ZNSt6vectorIdSaIdEED2Ev.exit184, %bb.bc
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn329, %bb.bc ], [ %i.ek, %bb.p ], [ %lpad.loopexit.split-lp668, %_ZNSt6vectorIdSaIdEED2Ev.exit184 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %.not.i.i.i191 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i191, label %_ZNSt6vectorIdSaIdEED2Ev.exit192, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit190
  %i.aer = ptrtoint ptr %i.ag to i64
  %i.aes = ptrtoint ptr %i.ah to i64
  %i.aet = sub i64 %i.aer, %i.aes
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.aet) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit192

_ZNSt6vectorIdSaIdEED2Ev.exit192:                 ; preds = %bb.bd, %_ZNSt6vectorIdSaIdEED2Ev.exit190, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit190 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !62

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !30
  store i64 %i.c, ptr %i.a, align 8, !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.j, ptr %i.i, align 1, !tbaa !29
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !29
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !62

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #20 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !29
  store i8 %i.u, ptr %i.s, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !29
  store i8 %i.y, ptr %i.x, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !30    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

end_hunk_1
