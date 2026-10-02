Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/emitterutils?download=true
inline.NumInlined: 375
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4YAML3Exp5AlphaEv:bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML5RegExD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.g, %bb.j ], [ %i.f, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @_ZN4YAML5RegExD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.e, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4YAML3Exp5AlphaEvE1e) #14
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp5DigitEv() local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4YAML3Exp5DigitEvE1e acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4YAML3Exp5DigitEvE1e) #14
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4YAML5RegExC1Ecc(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4YAML3Exp5DigitEvE1e, i8 noundef signext 48, i8 noundef signext 57)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4YAML5RegExD2Ev, ptr nonnull @_ZZN4YAML3Exp5DigitEvE1e, ptr nonnull @__dso_handle) #14 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4YAML3Exp5DigitEvE1e) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN4YAML3Exp5DigitEvE1e

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4YAML3Exp5DigitEvE1e) #14
  resume { ptr, i32 } %i.e
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.YAML::StringCharSource", align 8 ; 5 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !47
  switch i32 %i.a, label %common.ret79 [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %.preheader
    i32 5, label %bb.i
    i32 6, label %bb.k
  ]

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %.not20.i36.not = icmp eq ptr %i.d, %i.e
  br i1 %.not20.i36.not, label %common.ret79, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %.preheader
  %i.f = tail call noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !91 ; 3 uses
  %.not.i9.peel = icmp eq i32 %i.f, -1
  br i1 %.not.i9.peel, label %common.ret79, label %bb.b

bb.b:                                             ; preds = %.lr.ph39.preheader
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %.not20.i.peel = icmp ugt i64 %i.k, 32
  br i1 %.not20.i.peel, label %.lr.ph39, label %common.ret79

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16
  %.not.i = icmp ult i64 %i.m, %i.o
  %i.p = sext i1 %.not.i to i32
  br label %common.ret79

bb.d:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr i8, ptr %i.q, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i8, ptr %i.v, align 4, !tbaa !48
  %.not.i8 = icmp eq i8 %i.u, %i.w
  %..i = select i1 %.not.i8, i32 1, i32 -1
  br label %common.ret79

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !48
  %i.z = load ptr, ptr %1, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ac = getelementptr i8, ptr %i.z, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !18  ; 2 uses
  %i.ae = icmp sgt i8 %i.y, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp slt i8 %i.ag, %i.ad
  %i.ai = select i1 %i.ae, i1 true, i1 %i.ah
  %.0.i = select i1 %i.ai, i32 -1, i32 1
  br label %common.ret79

bb.f:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49 ; 2 uses
  %.not2643 = icmp eq ptr %i.ak, %i.am
  br i1 %.not2643, label %common.ret79, label %.lr.ph45

bb.g:                                             ; preds = %.lr.ph45
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.017.044, i64 32 ; 2 uses
  %.not26 = icmp eq ptr %i.an, %i.am
  br i1 %.not26, label %common.ret79, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.f, %bb.g
  %.sroa.017.044 = phi ptr [ %i.an, %bb.g ], [ %i.ak, %bb.f ] ; 2 uses
  %i.ao = tail call noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.044, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !92 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %common.ret79

.lr.ph39:                                         ; preds = %bb.b, %bb.h
  %i.aq = phi ptr [ %i.av, %bb.h ], [ %i.h, %bb.b ]
  %.012.i38 = phi i64 [ %i.at, %bb.h ], [ 1, %bb.b ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.012.i38
  %i.as = tail call noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !91
  %.not.i9 = icmp eq i32 %i.as, -1
  br i1 %.not.i9, label %common.ret79, label %bb.h

bb.h:                                             ; preds = %.lr.ph39
  %i.at = add nuw i64 %.012.i38, 1                ; 2 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !52  ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 5
  %.not20.i = icmp ult i64 %i.at, %i.az
  br i1 %.not20.i, label %.lr.ph39, label %common.ret79, !llvm.loop !88

bb.i:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !49 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49
  %i.be = icmp eq ptr %i.bb, %i.bd
  br i1 %i.be, label %common.ret79, label %bb.j

common.ret79:                                     ; preds = %bb.i, %bb.a, %bb.e, %bb.d, %bb.c, %bb.f, %.preheader, %bb.k, %bb.b, %.lr.ph39.preheader, %bb.g, %.lr.ph45, %bb.h, %.lr.ph39, %bb.m, %bb.l, %bb.j
  %common.ret79.op = phi i32 [ %..i12, %bb.j ], [ -1, %.lr.ph39 ], [ 0, %bb.k ], [ %i.p, %bb.c ], [ %..i, %bb.d ], [ %.0.i, %bb.e ], [ -1, %bb.a ], [ -1, %bb.i ], [ -1, %.preheader ], [ -1, %bb.f ], [ %i.f, %bb.b ], [ -1, %.lr.ph39.preheader ], [ -1, %bb.g ], [ %i.ao, %.lr.ph45 ], [ %i.f, %bb.h ], [ -1, %bb.l ], [ %i.bt, %bb.m ]
  ret i32 %common.ret79.op

bb.j:                                             ; preds = %bb.i
  %i.bf = tail call noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !93
  %i.bg = icmp sgt i32 %i.bf, -1
  %..i12 = select i1 %i.bg, i32 -1, i32 1
  br label %common.ret79

bb.k:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !49 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49 ; 2 uses
  %.not31 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not31, label %common.ret79, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.m
  %.015.i33 = phi i32 [ 0, %.lr.ph ], [ %i.bt, %bb.m ] ; 3 uses
  %.sroa.021.032 = phi ptr [ %i.bi, %.lr.ph ], [ %i.bu, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !17, !alias.scope !94 ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = add nsw i32 %.015.i33, %i.bn
  %i.bp = icmp sgt i32 %i.bo, -1
  %i.bq = sext i32 %.015.i33 to i64
  %i.br = add i64 %i.bm, %i.bq
  %storemerge.i = select i1 %i.bp, i64 %i.br, i64 0
  store i64 %storemerge.i, ptr %i.bl, align 8, !tbaa !17, !alias.scope !94
  %i.bs = call noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.032, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !95 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %.not.i16 = icmp eq i32 %i.bs, -1
  br i1 %.not.i16, label %common.ret79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = add nsw i32 %i.bs, %.015.i33            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.021.032, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bu, %i.bk
  br i1 %.not, label %common.ret79, label %bb.l
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4YAML5RegEx9MatchOpOrINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not19 = icmp eq ptr %i.b, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.014.020 = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = tail call noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.020, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %i.h = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %i.f, %.lr.ph ]
  ret i32 %i.h
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4YAML5RegEx10MatchOpAndINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not2022.not = icmp eq ptr %i.c, %i.d
  br i1 %.not2022.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 3 uses
  %.not.peel = icmp eq i32 %i.e, -1
  br i1 %.not.peel, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %.not20.peel = icmp ugt i64 %i.j, 32
  br i1 %.not20.peel, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.p, %bb.c ], [ %i.g, %bb.b ]
  %.01224 = phi i64 [ %i.n, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.01224
  %i.m = tail call noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = add nuw i64 %.01224, 1                   ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %.not20 = icmp ult i64 %i.n, %i.t
  br i1 %.not20, label %.lr.ph, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph, %bb.c, %.lr.ph.preheader, %bb.b, %bb.a
  %spec.select21 = phi i32 [ -1, %bb.a ], [ -1, %.lr.ph.preheader ], [ %i.e, %bb.b ], [ -1, %.lr.ph ], [ %i.e, %bb.c ]
  ret i32 %spec.select21
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4YAML5RegEx10MatchOpNotINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = icmp sgt i32 %i.f, -1
  %. = select i1 %i.g, i32 -1, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4YAML5RegEx10MatchOpSeqINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.YAML::StringCharSource", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not2425 = icmp eq ptr %i.b, %i.d
  br i1 %.not2425, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.01527 = phi i32 [ 0, %.lr.ph ], [ %i.am, %bb.k ] ; 3 uses
  %.sroa.021.026 = phi ptr [ %i.b, %.lr.ph ], [ %i.an, %bb.k ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !59
  %i.g = load i64, ptr %i.e, align 8, !tbaa !17, !alias.scope !98 ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = add nsw i32 %.01527, %i.h
  %i.j = icmp sgt i32 %i.i, -1
  %i.k = sext i32 %.01527 to i64
  %i.l = add i64 %i.g, %i.k
  %storemerge.i = select i1 %i.j, i64 %i.l, i64 0 ; 4 uses
  store i64 %storemerge.i, ptr %i.e, align 8, !tbaa !17, !alias.scope !98
  %i.m = load i32, ptr %.sroa.021.026, align 8, !tbaa !47 ; 2 uses
  %i.n = add i32 %i.m, -3
  %switch.i.i = icmp ult i32 %i.n, -2
  %i.o = load i64, ptr %i.f, align 8
  %i.p = icmp ult i64 %storemerge.i, %i.o         ; 2 uses
  %.0.i.i = select i1 %switch.i.i, i1 true, i1 %i.p
  br i1 %.0.i.i, label %bb.c, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread

bb.c:                                             ; preds = %bb.b
  switch i32 %i.m, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = sext i1 %i.p to i32
  br label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %2, align 8, !tbaa !15
  %i.s = getelementptr i8, ptr %i.r, i64 %storemerge.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !48
  %.not.i.i = icmp eq i8 %i.t, %i.v
  br i1 %.not.i.i, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread36, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !48
  %i.y = load ptr, ptr %2, align 8, !tbaa !15
  %i.z = getelementptr i8, ptr %i.y, i64 %storemerge.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18   ; 2 uses
  %i.ab = icmp sgt i8 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 5
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp slt i8 %i.ad, %i.aa
  %i.af = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %i.af, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread, label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread36

bb.g:                                             ; preds = %bb.c
  %i.ag = call noundef i32 @_ZNK4YAML5RegEx9MatchOpOrINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.026, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !56
  br label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit

bb.h:                                             ; preds = %bb.c
  %i.ah = call noundef i32 @_ZNK4YAML5RegEx10MatchOpAndINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.026, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !56
  br label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit

bb.i:                                             ; preds = %bb.c
  %i.ai = call noundef i32 @_ZNK4YAML5RegEx10MatchOpNotINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.026, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !56
  br label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit

bb.j:                                             ; preds = %bb.c
  %i.aj = call noundef i32 @_ZNK4YAML5RegEx10MatchOpSeqINS_16StringCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.026, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !56
  br label %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit

_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread: ; preds = %bb.b, %bb.e, %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %._crit_edge

_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread36: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.k

_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.i, %bb.j
  %i.ak = phi i32 [ %i.ai, %bb.i ], [ %i.aj, %bb.j ], [ %i.q, %bb.d ], [ %i.ag, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %.not = icmp eq i32 %i.ak, -1
  br i1 %.not, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread36, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit
  %i.al = phi i32 [ 1, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread36 ], [ %i.ak, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit ]
  %i.am = add nsw i32 %i.al, %.01527              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 32 ; 2 uses
  %.not24 = icmp eq ptr %i.an, %i.d
  br i1 %.not24, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit, %bb.k, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ -1, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit.thread ], [ -1, %_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_.exit ], [ %i.am, %bb.k ]
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { "function-inline-cost-multiplier"="4" }
attributes #17 = { "function-inline-cost-multiplier"="2" }
attributes #18 = { noreturn nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20, !54}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"_ZTSN4YAML16StringCharSourceE", !12, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !12, i64 0}
!16 = !{!14, !13, i64 8}
!17 = !{!14, !13, i64 16}
!18 = !{!7, !7, i64 0}
!19 = !{!"branch_weights", i32 1, i32 1048575}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIhSaIhEE", !23, i64 0}
!25 = !{!"_ZTSN4YAML6BinaryE", !24, i64 0, !12, i64 24, !13, i64 32}
!26 = !{!25, !12, i64 24}
!27 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!28 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !27, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !28, i64 0}
!30 = !{!"_ZTSSt6vectorIcSaIcEE", !29, i64 0}
!31 = !{!"p1 _ZTSSo", !11, i64 0}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"_ZTSN4YAML15ostream_wrapperE", !30, i64 0, !31, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !32, i64 56}
!34 = !{!33, !13, i64 48}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!36 = !{!35, !12, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !13, i64 8, !7, i64 16}
!38 = !{!37, !13, i64 8}
!39 = !{!37, !12, i64 0}
!40 = !{!"_ZTSN4YAML8REGEX_OPE", !7, i64 0}
!41 = !{!"p1 _ZTSN4YAML5RegExE", !11, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN4YAML5RegExESaIS1_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIN4YAML5RegExESaIS1_EE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIN4YAML5RegExESaIS1_EE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorIN4YAML5RegExESaIS1_EE", !44, i64 0}
!46 = !{!"_ZTSN4YAML5RegExE", !40, i64 0, !7, i64 4, !7, i64 5, !45, i64 8}
!47 = !{!46, !40, i64 0}
!48 = !{!46, !7, i64 4}
!49 = !{!41, !41, i64 0}
!50 = !{ptr @_ZNK4YAML5RegEx9MatchOpOrINS_16StringCharSourceEEEiRKT_, ptr @_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_, ptr @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_}
!51 = !{!42, !41, i64 8}
!52 = !{!42, !41, i64 0}
!53 = !{ptr @_ZNK4YAML5RegEx10MatchOpAndINS_16StringCharSourceEEEiRKT_, ptr @_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_, ptr @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_}
!54 = !{!"llvm.loop.peeled.count", i32 1}
!55 = !{ptr @_ZNK4YAML5RegEx10MatchOpNotINS_16StringCharSourceEEEiRKT_, ptr @_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_, ptr @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_}
!56 = !{ptr @_ZNK4YAML5RegEx5MatchINS_16StringCharSourceEEEiRKT_, ptr @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_}
!57 = !{!12, !12, i64 0}
!58 = !{!13, !13, i64 0}
!59 = !{i64 0, i64 8, !57, i64 8, i64 8, !58, i64 16, i64 8, !58}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = !{ptr @_ZN4YAML5Utils12_GLOBAL__N_130WriteDoubleQuoteEscapeSequenceERNS_15ostream_wrapperEiNS_14StringEscaping5valueE}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = !{!33, !32, i64 56}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !20}
!73 = !{ptr @_ZNK4YAML5RegEx14MatchUncheckedINS_16StringCharSourceEEEiRKT_}
!74 = distinct !{!74, !20}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !20}
!78 = distinct !{!78, !20}
!79 = distinct !{null}
!80 = distinct !{null}
!81 = distinct !{null, null, null, null, null}
!82 = distinct !{!82, !20}
!83 = distinct !{null, null, null}
!84 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!85 = !{!42, !41, i64 16}
!86 = distinct !{null, null, ptr @_ZN4YAML5RegExD2Ev, null}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20, !54}
!89 = distinct !{!89, i1 false, !"_ZNK4YAML16StringCharSourceplEi"}
!90 = distinct !{!90, !89, !"_ZNK4YAML16StringCharSourceplEi: argument 0"}
!91 = !{ptr @_ZNK4YAML5RegEx10MatchOpAndINS_16StringCharSourceEEEiRKT_}
!92 = !{ptr @_ZNK4YAML5RegEx9MatchOpOrINS_16StringCharSourceEEEiRKT_}
!93 = !{ptr @_ZNK4YAML5RegEx10MatchOpNotINS_16StringCharSourceEEEiRKT_}
!94 = !{!90}
!95 = !{ptr @_ZNK4YAML5RegEx10MatchOpSeqINS_16StringCharSourceEEEiRKT_}
!96 = distinct !{!96, i1 false, !"_ZNK4YAML16StringCharSourceplEi"}
!97 = distinct !{!97, !96, !"_ZNK4YAML16StringCharSourceplEi: argument 0"}
!98 = !{!97}
end_hunk_0
