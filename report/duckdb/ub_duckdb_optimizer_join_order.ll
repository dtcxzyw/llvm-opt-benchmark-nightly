Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer_join_order?download=true
inline.NumInlined: 7873
inline.NumDeleted: 3418
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6duckdb22JoinRelationSetManager15GetJoinRelationEm:bb.a
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %2, align 8, !tbaa !104    ; 2 uses
  %.not.i7 = icmp eq ptr %i.f, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit12, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #27
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit12

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit12: ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationERKSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !169  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.b, 2305843009213693951
  %i.e = shl nuw i64 %i.b, 3
  %i.f = select i1 %i.d, i64 -1, i64 %i.e         ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #30, !noalias !802 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.f, i1 false), !noalias !802
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.027.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.024.036 = load ptr, ptr %i.h, align 8, !tbaa !95 ; 2 uses
  %.not37 = icmp eq ptr %.sroa.024.036, null
  br i1 %.not37, label %_ZSt4sortIPmEvT_S1_.exit, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.idx = shl nuw nsw i64 %i.o, 3
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.027.0, i64 %.idx ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %_ZSt4sortIPmEvT_S1_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  invoke void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.sroa.027.0, ptr noundef nonnull %i.i, i64 noundef %i.l)
          to label %.noexc unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22

.noexc:                                           ; preds = %bb.d
  invoke void @_ZSt22__final_insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %.sroa.027.0, ptr noundef nonnull %i.i)
          to label %_ZSt4sortIPmEvT_S1_.exit unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.024.039 = phi ptr [ %.sroa.024.0, %.lr.ph ], [ %.sroa.024.036, %bb.c ] ; 2 uses
  %.01238 = phi i64 [ %i.o, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.024.039, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !88
  %i.o = add i64 %.01238, 1                       ; 5 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.027.0, i64 %.01238
  store i64 %i.n, ptr %i.p, align 8, !tbaa !88
  %.sroa.024.0 = load ptr, ptr %.sroa.024.039, align 8, !tbaa !95 ; 2 uses
  %.not = icmp eq ptr %.sroa.024.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZSt4sortIPmEvT_S1_.exit:                         ; preds = %bb.c, %._crit_edge, %.noexc
  %.012.lcssa45 = phi i64 [ %i.o, %.noexc ], [ 0, %._crit_edge ], [ 0, %bb.c ]
  %i.q = ptrtoint ptr %.sroa.027.0 to i64
  store i64 %i.q, ptr %2, align 8, !tbaa !104
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %2, i64 noundef %.012.lcssa45)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZSt4sortIPmEvT_S1_.exit
  %i.s = load ptr, ptr %2, align 8, !tbaa !104    ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit17, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #27
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit17

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit17: ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.e
  ret ptr %i.r

bb.f:                                             ; preds = %_ZSt4sortIPmEvT_S1_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !104    ; 2 uses
  %.not.i18 = icmp eq ptr %i.u, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22: ; preds = %.noexc, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split: ; preds = %bb.f, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22
  %.sink = phi ptr [ %.sroa.027.0, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22 ], [ %i.u, %bb.f ]
  %.pn35.ph = phi { ptr, i32 } [ %i.v, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22 ], [ %i.t, %bb.f ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sink) #27
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23: ; preds = %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split, %bb.f
  %.pn35 = phi { ptr, i32 } [ %i.t, %bb.f ], [ %.pn35.ph, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split ]
  resume { ptr, i32 } %.pn35
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !118
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2305843009213693951
  %i.g = shl nuw i64 %i.e, 3
  %i.h = select i1 %i.f, i64 -1, i64 %i.g         ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #30, !noalias !810 ; 13 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false), !noalias !810
  %i.k = load i64, ptr %i.a, align 8, !tbaa !118  ; 6 uses
  %i.l = icmp eq i64 %i.k, 0
  %.pre = load i64, ptr %i.c, align 8, !tbaa !118 ; 4 uses
  br i1 %i.l, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.g, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ %.247, %bb.g ] ; 8 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.3, %bb.g ] ; 7 uses
  %i.m = icmp ult i64 %.045.lcssa, %.pre
  br i1 %i.m, label %.lr.ph79, label %.loopexit

.lr.ph79:                                         ; preds = %.preheader
  %i.n = load ptr, ptr %2, align 8, !tbaa !104    ; 3 uses
  %i.o = add i64 %.0.lcssa, %.pre
  %i.p = sub i64 %i.o, %.045.lcssa                ; 3 uses
  %i.q = sub nuw i64 %.pre, %.045.lcssa           ; 3 uses
  %min.iters.check114 = icmp ult i64 %i.q, 14
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.memcheck111

vector.memcheck111:                               ; preds = %.lr.ph79
  %i.r = ptrtoaddr ptr %i.n to i64
  %i.s = shl i64 %.0.lcssa, 3
  %i.t = add i64 %i.s, %i.j
  %i.u = shl i64 %.045.lcssa, 3
  %i.v = add i64 %i.u, %i.r
  %i.w = sub i64 %i.v, %i.t
  %diff.check112 = icmp ugt i64 %i.w, -32
  br i1 %diff.check112, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck111
  %n.vec116 = and i64 %i.q, -4                    ; 4 uses
  %i.x = add i64 %.0.lcssa, %n.vec116
  %i.y = add i64 %.045.lcssa, %n.vec116
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.045.lcssa
  %i.aa = getelementptr [8 x i8], ptr %i.i, i64 %.0.lcssa
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next121, %vector.body117 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index118 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load119 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !88
  %wide.load120 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !88
  %i.ad = getelementptr [8 x i8], ptr %i.aa, i64 %index118 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> %wide.load119, ptr %i.ad, align 8, !tbaa !88
  store <2 x i64> %wide.load120, ptr %i.ae, align 8, !tbaa !88
  %index.next121 = add nuw i64 %index118, 4       ; 2 uses
  %i.af = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.af, label %middle.block122, label %vector.body117, !llvm.loop !805

middle.block122:                                  ; preds = %vector.body117
  %cmp.n123 = icmp eq i64 %i.q, %n.vec116
  br i1 %cmp.n123, label %.loopexit, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %vector.memcheck111, %.lr.ph79, %middle.block122
  %.178.ph = phi i64 [ %.0.lcssa, %vector.memcheck111 ], [ %.0.lcssa, %.lr.ph79 ], [ %i.x, %middle.block122 ]
  %.14677.ph = phi i64 [ %.045.lcssa, %vector.memcheck111 ], [ %.045.lcssa, %.lr.ph79 ], [ %i.y, %middle.block122 ]
  br label %scalar.ph113

scalar.ph113:                                     ; preds = %scalar.ph113.preheader, %scalar.ph113
  %.178 = phi i64 [ %i.ai, %scalar.ph113 ], [ %.178.ph, %scalar.ph113.preheader ] ; 2 uses
  %.14677 = phi i64 [ %i.ak, %scalar.ph113 ], [ %.14677.ph, %scalar.ph113.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.14677
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !88
  %i.ai = add i64 %.178, 1                        ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.178
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !88
  %i.ak = add nuw i64 %.14677, 1
  %exitcond94.not = icmp eq i64 %i.ai, %i.p
  br i1 %exitcond94.not, label %.loopexit, label %scalar.ph113, !llvm.loop !806

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ %i.k, %bb.a ] ; 3 uses
  %.071 = phi i64 [ %.3, %bb.g ], [ 0, %bb.a ]    ; 10 uses
  %.04270 = phi i64 [ %.244, %bb.g ], [ 0, %bb.a ] ; 14 uses
  %.04569 = phi i64 [ %.247, %bb.g ], [ 0, %bb.a ] ; 5 uses
  %i.al = icmp eq i64 %.04569, %.pre
  br i1 %i.al, label %.preheader63, label %bb.b

.preheader63:                                     ; preds = %.lr.ph
  %i.am = icmp ult i64 %.04270, %i.k
  br i1 %i.am, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %.preheader63
  %i.an = load ptr, ptr %1, align 8, !tbaa !104   ; 7 uses
  %i.ao = sub i64 %indvars.iv, %.04270            ; 4 uses
  %i.ap = sub nuw i64 %i.k, %.04270               ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph75
  %i.aq = ptrtoaddr ptr %i.an to i64
  %i.ar = shl i64 %.071, 3
  %i.as = add i64 %i.ar, %i.j
  %i.at = shl i64 %.04270, 3
  %i.au = add i64 %i.at, %i.aq
  %i.av = sub i64 %i.au, %i.as
  %diff.check = icmp ugt i64 %i.av, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, -4                      ; 4 uses
  %i.aw = add i64 %.071, %n.vec
  %i.ax = add i64 %.04270, %n.vec
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04270
  %i.az = getelementptr [8 x i8], ptr %i.i, i64 %.071
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <2 x i64>, ptr %i.ba, align 8, !tbaa !88
  %wide.load109 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !88
  %i.bc = getelementptr [8 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x i64> %wide.load, ptr %i.bc, align 8, !tbaa !88
  store <2 x i64> %wide.load109, ptr %i.bd, align 8, !tbaa !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !807

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph75, %middle.block
  %.274.ph = phi i64 [ %.071, %vector.memcheck ], [ %.071, %.lr.ph75 ], [ %i.aw, %middle.block ] ; 4 uses
  %.14373.ph = phi i64 [ %.04270, %vector.memcheck ], [ %.04270, %.lr.ph75 ], [ %i.ax, %middle.block ] ; 2 uses
  %4 = add i64 %.274.ph, %.04270
  %i.bf = sub i64 %indvars.iv, %4
  %i.bg = add i64 %i.k, -1
  %i.bh = add i64 %.071, %i.bg
  %i.bi = add i64 %.274.ph, %.04270
  %i.bj = sub i64 %i.bh, %i.bi
  %xtraiter = and i64 %i.bf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.274.prol = phi i64 [ %i.bm, %scalar.ph.prol ], [ %.274.ph, %scalar.ph.preheader ] ; 2 uses
  %.14373.prol = phi i64 [ %i.bo, %scalar.ph.prol ], [ %.14373.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.14373.prol
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !88
  %i.bm = add i64 %.274.prol, 1                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.274.prol
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !88
  %i.bo = add nuw i64 %.14373.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !808

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.274.unr = phi i64 [ %.274.ph, %scalar.ph.preheader ], [ %i.bm, %scalar.ph.prol ]
  %.14373.unr = phi i64 [ %.14373.ph, %scalar.ph.preheader ], [ %i.bo, %scalar.ph.prol ]
  %i.bp = icmp ult i64 %i.bj, 3
  br i1 %i.bp, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.274 = phi i64 [ %i.cg, %scalar.ph ], [ %.274.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.14373 = phi i64 [ %i.cj, %scalar.ph ], [ %.14373.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.14373
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !88
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.274
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !88
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.14373
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !88
  %i.bw = getelementptr [8 x i8], ptr %i.i, i64 %.274
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !88
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.14373
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !88
  %i.cb = getelementptr [8 x i8], ptr %i.i, i64 %.274
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !88
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.14373
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !88
  %i.cg = add i64 %.274, 4                        ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.i, i64 %.274
  %i.ci = getelementptr i8, ptr %i.ch, i64 24
  store i64 %i.cf, ptr %i.ci, align 8, !tbaa !88
  %i.cj = add nuw i64 %.14373, 4
  %exitcond.not.3 = icmp eq i64 %i.cg, %i.ao
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !809

bb.b:                                             ; preds = %.lr.ph
  %i.ck = load ptr, ptr %1, align 8, !tbaa !104
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.04270
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !88 ; 4 uses
  %i.cn = load ptr, ptr %2, align 8, !tbaa !104
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.04569
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !88 ; 3 uses
  %i.cq = icmp ult i64 %i.cm, %i.cp
  br i1 %i.cq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.071
  store i64 %i.cm, ptr %i.cr, align 8, !tbaa !88
  %i.cs = add i64 %.04270, 1
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.ct = icmp ugt i64 %i.cm, %i.cp
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.071 ; 2 uses
  br i1 %i.ct, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.cp, ptr %i.cu, align 8, !tbaa !88
  %i.cv = add i64 %.04569, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.cm, ptr %i.cu, align 8, !tbaa !88
  %i.cw = add i64 %.04270, 1
  %i.cx = add i64 %.04569, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.247 = phi i64 [ %.04569, %bb.c ], [ %i.cv, %bb.e ], [ %i.cx, %bb.f ] ; 2 uses
  %.244 = phi i64 [ %i.cs, %bb.c ], [ %.04270, %bb.e ], [ %i.cw, %bb.f ] ; 2 uses
  %.3 = add i64 %.071, 1                          ; 2 uses
  %i.cy = icmp eq i64 %.244, %i.k
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %i.cy, label %.preheader, label %.lr.ph, !llvm.loop !14

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph113, %middle.block, %middle.block122, %.preheader63, %.preheader
  %.4 = phi i64 [ %i.p, %middle.block122 ], [ %.0.lcssa, %.preheader ], [ %.071, %.preheader63 ], [ %i.ao, %middle.block ], [ %i.p, %scalar.ph113 ], [ %i.ao, %scalar.ph ], [ %i.ao, %scalar.ph.prol.loopexit ]
  %i.cz = ptrtoint ptr %i.i to i64
  store i64 %i.cz, ptr %3, align 8, !tbaa !104
  %i.da = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %3, i64 noundef %.4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.db = load ptr, ptr %3, align 8, !tbaa !104   ; 2 uses
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit50, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.db) #27
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit50

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit50: ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.h
  ret ptr %i.da

bb.i:                                             ; preds = %.loopexit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %3, align 8, !tbaa !104   ; 2 uses
  %.not.i51 = icmp eq ptr %i.dd, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit56, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52: ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.dd) #27
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit56

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit56: ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52, %bb.i
  resume { ptr, i32 } %i.dc
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb22JoinRelationSetManager8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN6duckdbL28JoinRelationTreeNodeToStringB5cxx11EPKNS_22JoinRelationSetManager20JoinRelationTreeNodeE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL28JoinRelationTreeNodeToStringB5cxx11EPKNS_22JoinRelationSetManager20JoinRelationTreeNodeE(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !85
  store i8 0, ptr %i.a, align 8, !tbaa !86
  %i.c = load ptr, ptr %1, align 8, !tbaa !144    ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNK6duckdb15JoinRelationSet8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !85, !noalias !813
  %i.f = icmp eq i64 %i.e, 4611686018427387903
  br i1 %i.f, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #29
          to label %.noexc19 unwind label %bb.h

.noexc19:                                         ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.29, i64 noundef 1)
          to label %.noexc20 unwind label %bb.h   ; 6 uses

.noexc20:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !82, !alias.scope !813
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !90   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %.noexc20
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !85   ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc20
  store ptr %i.i, ptr %2, align 8, !tbaa !90, !alias.scope !813
  %i.p = load i64, ptr %i.j, align 8, !tbaa !86
  store i64 %i.p, ptr %i.h, align 8, !tbaa !86, !alias.scope !813
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
end_hunk_0
begin_hunk_1_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
  store i64 %i.lp, ptr %.09.lcssa.i.i21.i581, align 8, !tbaa !88
  %.pre.i22.i582 = load i64, ptr %.sroa.027.0.i159, align 8, !tbaa !88
  br label %bb.ce

bb.ce:                                            ; preds = %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i20.i580, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i29.i589
  %i.mf = phi i64 [ %i.lp, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i29.i589 ], [ %.pre.i22.i582, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i20.i580 ]
  %.0.i23.i583 = getelementptr inbounds nuw i8, ptr %.019.i18.i578, i64 8 ; 2 uses
  %.not.i24.i584 = icmp eq ptr %.0.i23.i583, %i.jy
  br i1 %.not.i24.i584, label %_ZSt4sortIPmEvT_S1_.exit.i177, label %bb.by, !llvm.loop !52

.lr.ph.i162:                                      ; preds = %bb.bp, %.lr.ph.i162
  %.sroa.024.039.i163 = phi ptr [ %.sroa.024.0.i165, %.lr.ph.i162 ], [ %.sroa.024.036.i160, %bb.bp ] ; 2 uses
  %.01238.i164 = phi i64 [ %i.mi, %.lr.ph.i162 ], [ 0, %bb.bp ] ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.024.039.i163, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !88
  %i.mi = add i64 %.01238.i164, 1                 ; 8 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.027.0.i159, i64 %.01238.i164
  store i64 %i.mh, ptr %i.mj, align 8, !tbaa !88
  %.sroa.024.0.i165 = load ptr, ptr %.sroa.024.039.i163, align 8, !tbaa !95 ; 2 uses
  %.not.i166 = icmp eq ptr %.sroa.024.0.i165, null
  br i1 %.not.i166, label %._crit_edge.i167, label %.lr.ph.i162

_ZSt4sortIPmEvT_S1_.exit.i177:                    ; preds = %bb.ce, %.lr.ph.i.i602.prol.loopexit, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8.i605.1, %.preheader.i.i573, %._crit_edge.i167, %bb.bp
  %.012.lcssa45.i178 = phi i64 [ 0, %bb.bp ], [ 0, %._crit_edge.i167 ], [ 1, %.preheader.i.i573 ], [ %i.mi, %.lr.ph.i.i602.prol.loopexit ], [ %i.mi, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8.i605.1 ], [ %i.mi, %bb.ce ]
  %i.mk = ptrtoint ptr %.sroa.027.0.i159 to i64
  store i64 %i.mk, ptr %20, align 8, !tbaa !104
  %i.ml = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %20, i64 noundef %.012.lcssa45.i178)
          to label %bb.cf unwind label %bb.cg     ; 3 uses

bb.cf:                                            ; preds = %_ZSt4sortIPmEvT_S1_.exit.i177
  %i.mm = load ptr, ptr %20, align 8, !tbaa !104  ; 2 uses
  %.not.i.i180 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i180, label %bb.ch, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i181

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i181: ; preds = %bb.cf
  call void @_ZdaPv(ptr noundef nonnull %i.mm) #27
  br label %bb.ch

bb.cg:                                            ; preds = %_ZSt4sortIPmEvT_S1_.exit.i177
  %i.mn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mo = load ptr, ptr %20, align 8, !tbaa !104  ; 2 uses
  %.not.i18.i179 = icmp eq ptr %i.mo, null
  br i1 %.not.i18.i179, label %.body142, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i171

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i170: ; preds = %bb.bq
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i171

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i171: ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i170, %bb.cg
  %.sink.i172 = phi ptr [ %.sroa.027.0.i159, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i170 ], [ %i.mo, %bb.cg ]
  %.pn35.ph.i173 = phi { ptr, i32 } [ %i.mp, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i170 ], [ %i.mn, %bb.cg ]
  call void @_ZdaPv(ptr noundef nonnull %.sink.i172) #27
  br label %.body142

bb.ch:                                            ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i181, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.mq = load ptr, ptr %32, align 8, !tbaa !98   ; 4 uses
  %.not.i618 = icmp eq ptr %i.mq, null
  br i1 %.not.i618, label %bb.ci, label %_ZN6duckdb12optional_ptrINS_15JoinRelationSetELb1EEdeEv.exit187

bb.ci:                                            ; preds = %bb.ch
  %i.mr = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.cj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i619

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mr, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  invoke void @__cxa_throw(ptr nonnull %i.mr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.cn unwind label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i619: ; preds = %bb.ci
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.0.i622 = phi i1 [ false, %bb.ck ], [ true, %bb.cj ] ; 2 uses
  %i.mt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mu = load ptr, ptr %7, align 8, !tbaa !90    ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i624, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i623

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i623: ; preds = %bb.cl
  call void @_ZdlPv(ptr noundef %i.mu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %.0.i622, label %bb.cm, label %.body142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i624: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %.0.i622, label %bb.cm, label %.body142

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i624, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i623, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i619
  %.pn9.i620 = phi { ptr, i32 } [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i619 ], [ %i.mt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i624 ], [ %i.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i623 ]
  call void @__cxa_free_exception(ptr %i.mr) #28
  br label %.body142

bb.cn:                                            ; preds = %bb.ck
  unreachable

_ZN6duckdb12optional_ptrINS_15JoinRelationSetELb1EEdeEv.exit187: ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ml, i64 8 ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !118
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !118
  %i.nb = add i64 %i.na, %i.my                    ; 2 uses
  %i.nc = icmp ugt i64 %i.nb, 2305843009213693951
  %i.nd = shl nuw i64 %i.nb, 3
  %i.ne = select i1 %i.nc, i64 -1, i64 %i.nd      ; 2 uses
  %i.nf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ne) #30
          to label %.noexc191 unwind label %bb.cx ; 13 uses

.noexc191:                                        ; preds = %_ZN6duckdb12optional_ptrINS_15JoinRelationSetELb1EEdeEv.exit187
  %i.ng = ptrtoaddr ptr %i.nf to i64              ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.nf, i8 0, i64 %i.ne, i1 false), !noalias !1280
  %i.nh = load i64, ptr %i.mx, align 8, !tbaa !118 ; 6 uses
  %i.ni = icmp eq i64 %i.nh, 0
  %.pre.i = load i64, ptr %i.mz, align 8, !tbaa !118 ; 3 uses
  br i1 %i.ni, label %.preheader.i, label %.lr.ph.i188

.preheader.i:                                     ; preds = %bb.ct, %.noexc191
  %.045.lcssa.i = phi i64 [ 0, %.noexc191 ], [ %.247.i, %bb.ct ] ; 7 uses
  %.0.lcssa.i = phi i64 [ 0, %.noexc191 ], [ %.3.i, %bb.ct ] ; 7 uses
  %i.nj = icmp ult i64 %.045.lcssa.i, %.pre.i
  br i1 %i.nj, label %.lr.ph79.i, label %.loopexit.i

.lr.ph79.i:                                       ; preds = %.preheader.i
  %i.nk = load ptr, ptr %i.mq, align 8, !tbaa !104 ; 3 uses
  %i.nl = sub nuw i64 %.pre.i, %.045.lcssa.i      ; 4 uses
  %i.nm = add i64 %i.nl, %.0.lcssa.i              ; 3 uses
  %min.iters.check1756 = icmp ult i64 %i.nl, 6
  br i1 %min.iters.check1756, label %scalar.ph1755.preheader, label %vector.memcheck1753

vector.memcheck1753:                              ; preds = %.lr.ph79.i
  %i.nn = ptrtoaddr ptr %i.nk to i64
  %i.no = shl i64 %.0.lcssa.i, 3
  %i.np = add i64 %i.no, %i.ng
  %i.nq = shl i64 %.045.lcssa.i, 3
  %i.nr = add i64 %i.nq, %i.nn
  %i.ns = sub i64 %i.nr, %i.np
  %diff.check1754 = icmp ugt i64 %i.ns, -32
  br i1 %diff.check1754, label %scalar.ph1755.preheader, label %vector.ph1757

vector.ph1757:                                    ; preds = %vector.memcheck1753
  %n.vec1758 = and i64 %i.nl, -4                  ; 4 uses
  %i.nt = add i64 %.0.lcssa.i, %n.vec1758
  %i.nu = add i64 %.045.lcssa.i, %n.vec1758
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %.045.lcssa.i
  %i.nw = getelementptr [8 x i8], ptr %i.nf, i64 %.0.lcssa.i
  br label %vector.body1759

vector.body1759:                                  ; preds = %vector.body1759, %vector.ph1757
  %index1760 = phi i64 [ 0, %vector.ph1757 ], [ %index.next1763, %vector.body1759 ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %index1760 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %wide.load1761 = load <2 x i64>, ptr %i.nx, align 8, !tbaa !88
  %wide.load1762 = load <2 x i64>, ptr %i.ny, align 8, !tbaa !88
  %i.nz = getelementptr [8 x i8], ptr %i.nw, i64 %index1760 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store <2 x i64> %wide.load1761, ptr %i.nz, align 8, !tbaa !88
  store <2 x i64> %wide.load1762, ptr %i.oa, align 8, !tbaa !88
  %index.next1763 = add nuw i64 %index1760, 4     ; 2 uses
  %i.ob = icmp eq i64 %index.next1763, %n.vec1758
  br i1 %i.ob, label %middle.block1764, label %vector.body1759, !llvm.loop !1199

middle.block1764:                                 ; preds = %vector.body1759
  %cmp.n1765 = icmp eq i64 %i.nl, %n.vec1758
  br i1 %cmp.n1765, label %.loopexit.i, label %scalar.ph1755.preheader

scalar.ph1755.preheader:                          ; preds = %vector.memcheck1753, %.lr.ph79.i, %middle.block1764
  %.178.i.ph = phi i64 [ %.0.lcssa.i, %vector.memcheck1753 ], [ %.0.lcssa.i, %.lr.ph79.i ], [ %i.nt, %middle.block1764 ]
  %.14677.i.ph = phi i64 [ %.045.lcssa.i, %vector.memcheck1753 ], [ %.045.lcssa.i, %.lr.ph79.i ], [ %i.nu, %middle.block1764 ]
  br label %scalar.ph1755

scalar.ph1755:                                    ; preds = %scalar.ph1755.preheader, %scalar.ph1755
  %.178.i = phi i64 [ %i.oe, %scalar.ph1755 ], [ %.178.i.ph, %scalar.ph1755.preheader ] ; 2 uses
  %.14677.i = phi i64 [ %i.og, %scalar.ph1755 ], [ %.14677.i.ph, %scalar.ph1755.preheader ] ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %.14677.i
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !88
  %i.oe = add i64 %.178.i, 1                      ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %.178.i
  store i64 %i.od, ptr %i.of, align 8, !tbaa !88
  %i.og = add nuw i64 %.14677.i, 1
  %exitcond94.not.i = icmp eq i64 %i.oe, %i.nm
  br i1 %exitcond94.not.i, label %.loopexit.i, label %scalar.ph1755, !llvm.loop !1200

.lr.ph.i188:                                      ; preds = %.noexc191, %bb.ct
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ct ], [ %i.nh, %.noexc191 ] ; 3 uses
  %.071.i = phi i64 [ %.3.i, %bb.ct ], [ 0, %.noexc191 ] ; 10 uses
  %.04270.i = phi i64 [ %.244.i, %bb.ct ], [ 0, %.noexc191 ] ; 14 uses
  %.04569.i = phi i64 [ %.247.i, %bb.ct ], [ 0, %.noexc191 ] ; 5 uses
  %i.oh = icmp eq i64 %.04569.i, %.pre.i
  br i1 %i.oh, label %.preheader63.i, label %bb.co

.preheader63.i:                                   ; preds = %.lr.ph.i188
  %i.oi = icmp ult i64 %.04270.i, %i.nh
  br i1 %i.oi, label %.lr.ph75.i, label %.loopexit.i

.lr.ph75.i:                                       ; preds = %.preheader63.i
  %i.oj = load ptr, ptr %i.ml, align 8, !tbaa !104 ; 7 uses
  %i.ok = sub i64 %indvars.iv.i, %.04270.i        ; 4 uses
  %i.ol = sub nuw i64 %i.nh, %.04270.i            ; 3 uses
  %min.iters.check1771 = icmp ult i64 %i.ol, 8
  br i1 %min.iters.check1771, label %scalar.ph1770.preheader, label %vector.memcheck1768

vector.memcheck1768:                              ; preds = %.lr.ph75.i
  %i.om = ptrtoaddr ptr %i.oj to i64
  %i.on = shl i64 %.071.i, 3
  %i.oo = add i64 %i.on, %i.ng
  %i.op = shl i64 %.04270.i, 3
  %i.oq = add i64 %i.op, %i.om
  %i.or = sub i64 %i.oq, %i.oo
  %diff.check1769 = icmp ugt i64 %i.or, -32
  br i1 %diff.check1769, label %scalar.ph1770.preheader, label %vector.ph1772

vector.ph1772:                                    ; preds = %vector.memcheck1768
  %n.vec1773 = and i64 %i.ol, -4                  ; 4 uses
  %i.os = add i64 %.071.i, %n.vec1773
  %i.ot = add i64 %.04270.i, %n.vec1773
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.04270.i
  %i.ov = getelementptr [8 x i8], ptr %i.nf, i64 %.071.i
  br label %vector.body1774

vector.body1774:                                  ; preds = %vector.body1774, %vector.ph1772
  %index1775 = phi i64 [ 0, %vector.ph1772 ], [ %index.next1778, %vector.body1774 ] ; 3 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %index1775 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %wide.load1776 = load <2 x i64>, ptr %i.ow, align 8, !tbaa !88
  %wide.load1777 = load <2 x i64>, ptr %i.ox, align 8, !tbaa !88
  %i.oy = getelementptr [8 x i8], ptr %i.ov, i64 %index1775 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store <2 x i64> %wide.load1776, ptr %i.oy, align 8, !tbaa !88
  store <2 x i64> %wide.load1777, ptr %i.oz, align 8, !tbaa !88
  %index.next1778 = add nuw i64 %index1775, 4     ; 2 uses
  %i.pa = icmp eq i64 %index.next1778, %n.vec1773
  br i1 %i.pa, label %middle.block1779, label %vector.body1774, !llvm.loop !1201

middle.block1779:                                 ; preds = %vector.body1774
  %cmp.n1780 = icmp eq i64 %i.ol, %n.vec1773
  br i1 %cmp.n1780, label %.loopexit.i, label %scalar.ph1770.preheader

scalar.ph1770.preheader:                          ; preds = %vector.memcheck1768, %.lr.ph75.i, %middle.block1779
  %.274.i.ph = phi i64 [ %.071.i, %vector.memcheck1768 ], [ %.071.i, %.lr.ph75.i ], [ %i.os, %middle.block1779 ] ; 4 uses
  %.14373.i.ph = phi i64 [ %.04270.i, %vector.memcheck1768 ], [ %.04270.i, %.lr.ph75.i ], [ %i.ot, %middle.block1779 ] ; 2 uses
  %43 = add i64 %.274.i.ph, %.04270.i
  %i.pb = sub i64 %indvars.iv.i, %43
  %i.pc = add i64 %i.nh, -1
  %i.pd = add i64 %.071.i, %i.pc
  %i.pe = add i64 %.274.i.ph, %.04270.i
  %i.pf = sub i64 %i.pd, %i.pe
  %xtraiter1956 = and i64 %i.pb, 3                ; 2 uses
  %lcmp.mod1957.not = icmp eq i64 %xtraiter1956, 0
  br i1 %lcmp.mod1957.not, label %scalar.ph1770.prol.loopexit, label %scalar.ph1770.prol

scalar.ph1770.prol:                               ; preds = %scalar.ph1770.preheader, %scalar.ph1770.prol
  %.274.i.prol = phi i64 [ %i.pi, %scalar.ph1770.prol ], [ %.274.i.ph, %scalar.ph1770.preheader ] ; 2 uses
  %.14373.i.prol = phi i64 [ %i.pk, %scalar.ph1770.prol ], [ %.14373.i.ph, %scalar.ph1770.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1770.prol ], [ 0, %scalar.ph1770.preheader ]
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.14373.i.prol
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !88
  %i.pi = add i64 %.274.i.prol, 1                 ; 2 uses
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %.274.i.prol
  store i64 %i.ph, ptr %i.pj, align 8, !tbaa !88
  %i.pk = add nuw i64 %.14373.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1956
  br i1 %prol.iter.cmp.not, label %scalar.ph1770.prol.loopexit, label %scalar.ph1770.prol, !llvm.loop !1202

scalar.ph1770.prol.loopexit:                      ; preds = %scalar.ph1770.prol, %scalar.ph1770.preheader
  %.274.i.unr = phi i64 [ %.274.i.ph, %scalar.ph1770.preheader ], [ %i.pi, %scalar.ph1770.prol ]
  %.14373.i.unr = phi i64 [ %.14373.i.ph, %scalar.ph1770.preheader ], [ %i.pk, %scalar.ph1770.prol ]
  %i.pl = icmp ult i64 %i.pf, 3
  br i1 %i.pl, label %.loopexit.i, label %scalar.ph1770

scalar.ph1770:                                    ; preds = %scalar.ph1770.prol.loopexit, %scalar.ph1770
  %.274.i = phi i64 [ %i.qc, %scalar.ph1770 ], [ %.274.i.unr, %scalar.ph1770.prol.loopexit ] ; 5 uses
  %.14373.i = phi i64 [ %i.qf, %scalar.ph1770 ], [ %.14373.i.unr, %scalar.ph1770.prol.loopexit ] ; 5 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.14373.i
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !88
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %.274.i
  store i64 %i.pn, ptr %i.po, align 8, !tbaa !88
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.14373.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !88
  %i.ps = getelementptr [8 x i8], ptr %i.nf, i64 %.274.i
  %i.pt = getelementptr i8, ptr %i.ps, i64 8
  store i64 %i.pr, ptr %i.pt, align 8, !tbaa !88
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.14373.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !88
  %i.px = getelementptr [8 x i8], ptr %i.nf, i64 %.274.i
  %i.py = getelementptr i8, ptr %i.px, i64 16
  store i64 %i.pw, ptr %i.py, align 8, !tbaa !88
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.14373.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !88
  %i.qc = add i64 %.274.i, 4                      ; 2 uses
  %i.qd = getelementptr [8 x i8], ptr %i.nf, i64 %.274.i
  %i.qe = getelementptr i8, ptr %i.qd, i64 24
  store i64 %i.qb, ptr %i.qe, align 8, !tbaa !88
  %i.qf = add nuw i64 %.14373.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.qc, %i.ok
  br i1 %exitcond.not.i.3, label %.loopexit.i, label %scalar.ph1770, !llvm.loop !1203

bb.co:                                            ; preds = %.lr.ph.i188
  %i.qg = load ptr, ptr %i.ml, align 8, !tbaa !104
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %.04270.i
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !88 ; 4 uses
  %i.qj = load ptr, ptr %i.mq, align 8, !tbaa !104
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %.04569.i
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !88 ; 3 uses
  %i.qm = icmp ult i64 %i.qi, %i.ql
  br i1 %i.qm, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %.071.i
  store i64 %i.qi, ptr %i.qn, align 8, !tbaa !88
  %i.qo = add i64 %.04270.i, 1
  br label %bb.ct

bb.cq:                                            ; preds = %bb.co
  %i.qp = icmp ugt i64 %i.qi, %i.ql
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %.071.i ; 2 uses
  br i1 %i.qp, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i64 %i.ql, ptr %i.qq, align 8, !tbaa !88
  %i.qr = add i64 %.04569.i, 1
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  store i64 %i.qi, ptr %i.qq, align 8, !tbaa !88
  %i.qs = add i64 %.04270.i, 1
  %i.qt = add i64 %.04569.i, 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cp
  %.247.i = phi i64 [ %.04569.i, %bb.cp ], [ %i.qr, %bb.cr ], [ %i.qt, %bb.cs ] ; 2 uses
  %.244.i = phi i64 [ %i.qo, %bb.cp ], [ %.04270.i, %bb.cr ], [ %i.qs, %bb.cs ] ; 2 uses
  %.3.i = add i64 %.071.i, 1                      ; 2 uses
  %i.qu = icmp eq i64 %.244.i, %i.nh
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %i.qu, label %.preheader.i, label %.lr.ph.i188, !llvm.loop !14

.loopexit.i:                                      ; preds = %scalar.ph1770.prol.loopexit, %scalar.ph1770, %scalar.ph1755, %middle.block1779, %middle.block1764, %.preheader63.i, %.preheader.i
  %.4.i = phi i64 [ %i.nm, %middle.block1764 ], [ %.0.lcssa.i, %.preheader.i ], [ %.071.i, %.preheader63.i ], [ %i.ok, %middle.block1779 ], [ %i.nm, %scalar.ph1755 ], [ %i.ok, %scalar.ph1770 ], [ %i.ok, %scalar.ph1770.prol.loopexit ]
  %i.qv = ptrtoint ptr %i.nf to i64
  store i64 %i.qv, ptr %19, align 8, !tbaa !104
  %i.qw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %19, i64 noundef %.4.i)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %.loopexit.i
  %i.qx = load ptr, ptr %19, align 8, !tbaa !104  ; 2 uses
  %.not.i.i189 = icmp eq ptr %i.qx, null
  br i1 %.not.i.i189, label %bb.cw, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i190

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i190: ; preds = %bb.cu
  call void @_ZdaPv(ptr noundef nonnull %i.qx) #27
  br label %bb.cw

bb.cv:                                            ; preds = %.loopexit.i
  %i.qy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qz = load ptr, ptr %19, align 8, !tbaa !104  ; 2 uses
  %.not.i51.i = icmp eq ptr %i.qz, null
  br i1 %.not.i51.i, label %.body142, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i: ; preds = %bb.cv
  call void @_ZdaPv(ptr noundef nonnull %i.qz) #27
  br label %.body142

bb.cw:                                            ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i190, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %bb.cy

bb.cx:                                            ; preds = %_ZN6duckdb12optional_ptrINS_15JoinRelationSetELb1EEdeEv.exit187, %bb.bo
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %.body142

bb.cy:                                            ; preds = %bb.cw, %bb.bk
  %storemerge.in = phi ptr [ %i.jl, %bb.bk ], [ %i.qw, %bb.cw ]
  %storemerge = ptrtoint ptr %storemerge.in to i64
  store i64 %storemerge, ptr %32, align 8, !tbaa !144
  %i.rb = load ptr, ptr %33, align 8, !tbaa !98
  %.not941 = icmp eq ptr %i.rb, null
  br i1 %.not941, label %bb.cz, label %bb.dv

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.rc = load i64, ptr %i.aj, align 8, !tbaa !169 ; 3 uses
  %i.rd = icmp eq i64 %i.rc, 0
  br i1 %i.rd, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.re = icmp ugt i64 %i.rc, 2305843009213693951
  %i.rf = shl nuw i64 %i.rc, 3
  %i.rg = select i1 %i.re, i64 -1, i64 %i.rf      ; 2 uses
  %i.rh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rg) #30
          to label %.noexc217 unwind label %bb.du ; 2 uses

.noexc217:                                        ; preds = %bb.da
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.rh, i8 0, i64 %i.rg, i1 false), !noalias !1281
  br label %bb.db

bb.db:                                            ; preds = %.noexc217, %bb.cz
  %.sroa.027.0.i194 = phi ptr [ %i.rh, %.noexc217 ], [ null, %bb.cz ] ; 22 uses
  %.sroa.024.036.i195 = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 2 uses
  %.not37.i196 = icmp eq ptr %.sroa.024.036.i195, null
  br i1 %.not37.i196, label %_ZSt4sortIPmEvT_S1_.exit.i212, label %.lr.ph.i197

._crit_edge.i202:                                 ; preds = %.lr.ph.i197
  %.idx.i203 = shl nuw nsw i64 %i.ts, 3
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i194, i64 %.idx.i203 ; 3 uses
  %.not.i.i.i204 = icmp eq i64 %i.ts, 0
  br i1 %.not.i.i.i204, label %_ZSt4sortIPmEvT_S1_.exit.i212, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge.i202
  %i.rj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ts, i1 true)
  %i.rk = shl nuw nsw i64 %i.rj, 1
  %i.rl = xor i64 %i.rk, 126
  invoke void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.sroa.027.0.i194, ptr noundef nonnull %i.ri, i64 noundef %i.rl)
          to label %.noexc.i211 unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i205

.noexc.i211:                                      ; preds = %bb.dc
  %i.rm = ptrtoint ptr %.sroa.027.0.i194 to i64
  %i.rn = icmp ugt i64 %i.ts, 16
  br i1 %i.rn, label %bb.dd, label %.preheader.i.i627

bb.dd:                                            ; preds = %.noexc.i211
  %.pre21.i.i644 = load i64, ptr %.sroa.027.0.i194, align 8, !tbaa !88
  %scevgep.i645 = getelementptr i8, ptr %.sroa.027.0.i194, i64 8
  br label %bb.de

bb.de:                                            ; preds = %bb.dj, %bb.dd
  %i.ro = phi i64 [ %.pre21.i.i644, %bb.dd ], [ %i.ry, %bb.dj ] ; 2 uses
  %.019.i.idx.i646 = phi i64 [ 8, %bb.dd ], [ %.019.i.add.i652, %bb.dj ] ; 4 uses
  %.pn18.i.i647 = phi ptr [ %.sroa.027.0.i194, %bb.dd ], [ %.019.i.ptr.i648, %bb.dj ] ; 3 uses
  %.019.i.ptr.i648 = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i194, i64 %.019.i.idx.i646 ; 4 uses
  %i.rp = load i64, ptr %.019.i.ptr.i648, align 8, !tbaa !88 ; 6 uses
  %i.rq = icmp ult i64 %i.rp, %i.ro
  br i1 %i.rq, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.rr = icmp samesign ugt i64 %.019.i.idx.i646, 8
  br i1 %i.rr, label %bb.dg, label %bb.dh, !prof !105
end_hunk_1
begin_hunk_2_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
  store i64 %i.vy, ptr %.09.lcssa.i.i21.i680, align 8, !tbaa !88
  %.pre.i22.i681 = load i64, ptr %.sroa.027.0.i221, align 8, !tbaa !88
  br label %bb.em

bb.em:                                            ; preds = %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i20.i679, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i29.i688
  %i.wo = phi i64 [ %i.vy, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i29.i688 ], [ %.pre.i22.i681, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i20.i679 ]
  %.0.i23.i682 = getelementptr inbounds nuw i8, ptr %.019.i18.i677, i64 8 ; 2 uses
  %.not.i24.i683 = icmp eq ptr %.0.i23.i682, %i.uh
  br i1 %.not.i24.i683, label %_ZSt4sortIPmEvT_S1_.exit.i239, label %bb.eg, !llvm.loop !52

.lr.ph.i224:                                      ; preds = %bb.dx, %.lr.ph.i224
  %.sroa.024.039.i225 = phi ptr [ %.sroa.024.0.i227, %.lr.ph.i224 ], [ %.sroa.024.036.i222, %bb.dx ] ; 2 uses
  %.01238.i226 = phi i64 [ %i.wr, %.lr.ph.i224 ], [ 0, %bb.dx ] ; 5 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.024.039.i225, i64 8
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !88
  %i.wr = add i64 %.01238.i226, 1                 ; 8 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %.sroa.027.0.i221, i64 %.01238.i226
  store i64 %i.wq, ptr %i.ws, align 8, !tbaa !88
  %.sroa.024.0.i227 = load ptr, ptr %.sroa.024.039.i225, align 8, !tbaa !95 ; 2 uses
  %.not.i228 = icmp eq ptr %.sroa.024.0.i227, null
  br i1 %.not.i228, label %._crit_edge.i229, label %.lr.ph.i224

_ZSt4sortIPmEvT_S1_.exit.i239:                    ; preds = %bb.em, %.lr.ph.i.i701.prol.loopexit, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8.i704.1, %.preheader.i.i672, %._crit_edge.i229, %bb.dx
  %.012.lcssa45.i240 = phi i64 [ 0, %bb.dx ], [ 0, %._crit_edge.i229 ], [ 1, %.preheader.i.i672 ], [ %i.wr, %.lr.ph.i.i701.prol.loopexit ], [ %i.wr, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8.i704.1 ], [ %i.wr, %bb.em ]
  %i.wt = ptrtoint ptr %.sroa.027.0.i221 to i64
  store i64 %i.wt, ptr %17, align 8, !tbaa !104
  %i.wu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %17, i64 noundef %.012.lcssa45.i240)
          to label %bb.en unwind label %bb.eo     ; 3 uses

bb.en:                                            ; preds = %_ZSt4sortIPmEvT_S1_.exit.i239
  %i.wv = load ptr, ptr %17, align 8, !tbaa !104  ; 2 uses
  %.not.i.i242 = icmp eq ptr %i.wv, null
  br i1 %.not.i.i242, label %bb.ep, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i243

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i243: ; preds = %bb.en
  call void @_ZdaPv(ptr noundef nonnull %i.wv) #27
  br label %bb.ep

bb.eo:                                            ; preds = %_ZSt4sortIPmEvT_S1_.exit.i239
  %i.ww = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wx = load ptr, ptr %17, align 8, !tbaa !104  ; 2 uses
  %.not.i18.i241 = icmp eq ptr %i.wx, null
  br i1 %.not.i18.i241, label %.body142, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i233

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i232: ; preds = %bb.dy
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i233

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i233: ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i232, %bb.eo
  %.sink.i234 = phi ptr [ %.sroa.027.0.i221, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i232 ], [ %i.wx, %bb.eo ]
  %.pn35.ph.i235 = phi { ptr, i32 } [ %i.wy, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i232 ], [ %i.ww, %bb.eo ]
  call void @_ZdaPv(ptr noundef nonnull %.sink.i234) #27
  br label %.body142

bb.ep:                                            ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i243, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.wz = load ptr, ptr %33, align 8, !tbaa !98   ; 4 uses
  %.not.i717 = icmp eq ptr %i.wz, null
  br i1 %.not.i717, label %bb.eq, label %_ZN6duckdb12optional_ptrINS_15JoinRelationSetELb1EEdeEv.exit249

bb.eq:                                            ; preds = %bb.ep
  %i.xa = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.er unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i718

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.xa, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.es unwind label %bb.et

bb.es:                                            ; preds = %bb.er
  invoke void @__cxa_throw(ptr nonnull %i.xa, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ev unwind label %bb.et

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i718: ; preds = %bb.eq
  %i.xb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.eu

bb.et:                                            ; preds = %bb.es, %bb.er
  %.0.i721 = phi i1 [ false, %bb.es ], [ true, %bb.er ] ; 2 uses
  %i.xc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xd = load ptr, ptr %5, align 8, !tbaa !90    ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.xf = icmp eq ptr %i.xd, %i.xe
  br i1 %i.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i723, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i722

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i722: ; preds = %bb.et
  call void @_ZdlPv(ptr noundef %i.xd) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i721, label %bb.eu, label %.body142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i723: ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i721, label %bb.eu, label %.body142

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i723, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i718
  %.pn9.i719 = phi { ptr, i32 } [ %i.xb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i718 ], [ %i.xc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i723 ], [ %i.xc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i722 ]
  call void @__cxa_free_exception(ptr %i.xa) #28
  br label %.body142

bb.ev:                                            ; preds = %bb.es
  unreachable

_ZN6duckdb12optional_ptrINS_15JoinRelationSetELb1EEdeEv.exit249: ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wu, i64 8 ; 2 uses
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !118
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wz, i64 8 ; 2 uses
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !118
  %i.xk = add i64 %i.xj, %i.xh                    ; 2 uses
  %i.xl = icmp ugt i64 %i.xk, 2305843009213693951
  %i.xm = shl nuw i64 %i.xk, 3
  %i.xn = select i1 %i.xl, i64 -1, i64 %i.xm      ; 2 uses
  %i.xo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xn) #30
          to label %.noexc279 unwind label %bb.ff ; 13 uses

.noexc279:                                        ; preds = %_ZN6duckdb12optional_ptrINS_15JoinRelationSetELb1EEdeEv.exit249
  %i.xp = ptrtoaddr ptr %i.xo to i64              ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.xo, i8 0, i64 %i.xn, i1 false), !noalias !1283
  %i.xq = load i64, ptr %i.xg, align 8, !tbaa !118 ; 6 uses
  %i.xr = icmp eq i64 %i.xq, 0
  %.pre.i250 = load i64, ptr %i.xi, align 8, !tbaa !118 ; 3 uses
  br i1 %i.xr, label %.preheader.i260, label %.lr.ph.i251

.preheader.i260:                                  ; preds = %bb.fb, %.noexc279
  %.045.lcssa.i261 = phi i64 [ 0, %.noexc279 ], [ %.247.i256, %bb.fb ] ; 7 uses
  %.0.lcssa.i262 = phi i64 [ 0, %.noexc279 ], [ %.3.i258, %bb.fb ] ; 7 uses
  %i.xs = icmp ult i64 %.045.lcssa.i261, %.pre.i250
  br i1 %i.xs, label %.lr.ph79.i270, label %.loopexit.i263

.lr.ph79.i270:                                    ; preds = %.preheader.i260
  %i.xt = load ptr, ptr %i.wz, align 8, !tbaa !104 ; 3 uses
  %i.xu = sub nuw i64 %.pre.i250, %.045.lcssa.i261 ; 4 uses
  %i.xv = add i64 %i.xu, %.0.lcssa.i262           ; 3 uses
  %min.iters.check1722 = icmp ult i64 %i.xu, 6
  br i1 %min.iters.check1722, label %scalar.ph1721.preheader, label %vector.memcheck1720

vector.memcheck1720:                              ; preds = %.lr.ph79.i270
  %i.xw = ptrtoaddr ptr %i.xt to i64
  %i.xx = shl i64 %.0.lcssa.i262, 3
  %i.xy = add i64 %i.xx, %i.xp
  %i.xz = shl i64 %.045.lcssa.i261, 3
  %i.ya = add i64 %i.xz, %i.xw
  %i.yb = sub i64 %i.ya, %i.xy
  %diff.check = icmp ugt i64 %i.yb, -32
  br i1 %diff.check, label %scalar.ph1721.preheader, label %vector.ph1723

vector.ph1723:                                    ; preds = %vector.memcheck1720
  %n.vec1724 = and i64 %i.xu, -4                  ; 4 uses
  %i.yc = add i64 %.0.lcssa.i262, %n.vec1724
  %i.yd = add i64 %.045.lcssa.i261, %n.vec1724
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.xt, i64 %.045.lcssa.i261
  %i.yf = getelementptr [8 x i8], ptr %i.xo, i64 %.0.lcssa.i262
  br label %vector.body1725

vector.body1725:                                  ; preds = %vector.body1725, %vector.ph1723
  %index1726 = phi i64 [ 0, %vector.ph1723 ], [ %index.next1729, %vector.body1725 ] ; 3 uses
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %index1726 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  %wide.load1727 = load <2 x i64>, ptr %i.yg, align 8, !tbaa !88
  %wide.load1728 = load <2 x i64>, ptr %i.yh, align 8, !tbaa !88
  %i.yi = getelementptr [8 x i8], ptr %i.yf, i64 %index1726 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  store <2 x i64> %wide.load1727, ptr %i.yi, align 8, !tbaa !88
  store <2 x i64> %wide.load1728, ptr %i.yj, align 8, !tbaa !88
  %index.next1729 = add nuw i64 %index1726, 4     ; 2 uses
  %i.yk = icmp eq i64 %index.next1729, %n.vec1724
  br i1 %i.yk, label %middle.block1730, label %vector.body1725, !llvm.loop !1210

middle.block1730:                                 ; preds = %vector.body1725
  %cmp.n1731 = icmp eq i64 %i.xu, %n.vec1724
  br i1 %cmp.n1731, label %.loopexit.i263, label %scalar.ph1721.preheader

scalar.ph1721.preheader:                          ; preds = %vector.memcheck1720, %.lr.ph79.i270, %middle.block1730
  %.178.i271.ph = phi i64 [ %.0.lcssa.i262, %vector.memcheck1720 ], [ %.0.lcssa.i262, %.lr.ph79.i270 ], [ %i.yc, %middle.block1730 ]
  %.14677.i272.ph = phi i64 [ %.045.lcssa.i261, %vector.memcheck1720 ], [ %.045.lcssa.i261, %.lr.ph79.i270 ], [ %i.yd, %middle.block1730 ]
  br label %scalar.ph1721

scalar.ph1721:                                    ; preds = %scalar.ph1721.preheader, %scalar.ph1721
  %.178.i271 = phi i64 [ %i.yn, %scalar.ph1721 ], [ %.178.i271.ph, %scalar.ph1721.preheader ] ; 2 uses
  %.14677.i272 = phi i64 [ %i.yp, %scalar.ph1721 ], [ %.14677.i272.ph, %scalar.ph1721.preheader ] ; 2 uses
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.xt, i64 %.14677.i272
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !88
  %i.yn = add i64 %.178.i271, 1                   ; 2 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.178.i271
  store i64 %i.ym, ptr %i.yo, align 8, !tbaa !88
  %i.yp = add nuw i64 %.14677.i272, 1
  %exitcond94.not.i273 = icmp eq i64 %i.yn, %i.xv
  br i1 %exitcond94.not.i273, label %.loopexit.i263, label %scalar.ph1721, !llvm.loop !1211

.lr.ph.i251:                                      ; preds = %.noexc279, %bb.fb
  %indvars.iv.i252 = phi i64 [ %indvars.iv.next.i259, %bb.fb ], [ %i.xq, %.noexc279 ] ; 3 uses
  %.071.i253 = phi i64 [ %.3.i258, %bb.fb ], [ 0, %.noexc279 ] ; 10 uses
  %.04270.i254 = phi i64 [ %.244.i257, %bb.fb ], [ 0, %.noexc279 ] ; 14 uses
  %.04569.i255 = phi i64 [ %.247.i256, %bb.fb ], [ 0, %.noexc279 ] ; 5 uses
  %i.yq = icmp eq i64 %.04569.i255, %.pre.i250
  br i1 %i.yq, label %.preheader63.i274, label %bb.ew

.preheader63.i274:                                ; preds = %.lr.ph.i251
  %i.yr = icmp ult i64 %.04270.i254, %i.xq
  br i1 %i.yr, label %.lr.ph75.i275, label %.loopexit.i263

.lr.ph75.i275:                                    ; preds = %.preheader63.i274
  %i.ys = load ptr, ptr %i.wu, align 8, !tbaa !104 ; 7 uses
  %i.yt = sub i64 %indvars.iv.i252, %.04270.i254  ; 4 uses
  %i.yu = sub nuw i64 %i.xq, %.04270.i254         ; 3 uses
  %min.iters.check1737 = icmp ult i64 %i.yu, 8
  br i1 %min.iters.check1737, label %scalar.ph1736.preheader, label %vector.memcheck1734

vector.memcheck1734:                              ; preds = %.lr.ph75.i275
  %i.yv = ptrtoaddr ptr %i.ys to i64
  %i.yw = shl i64 %.071.i253, 3
  %i.yx = add i64 %i.yw, %i.xp
  %i.yy = shl i64 %.04270.i254, 3
  %i.yz = add i64 %i.yy, %i.yv
  %i.za = sub i64 %i.yz, %i.yx
  %diff.check1735 = icmp ugt i64 %i.za, -32
  br i1 %diff.check1735, label %scalar.ph1736.preheader, label %vector.ph1738

vector.ph1738:                                    ; preds = %vector.memcheck1734
  %n.vec1739 = and i64 %i.yu, -4                  ; 4 uses
  %i.zb = add i64 %.071.i253, %n.vec1739
  %i.zc = add i64 %.04270.i254, %n.vec1739
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.ys, i64 %.04270.i254
  %i.ze = getelementptr [8 x i8], ptr %i.xo, i64 %.071.i253
  br label %vector.body1740

vector.body1740:                                  ; preds = %vector.body1740, %vector.ph1738
  %index1741 = phi i64 [ 0, %vector.ph1738 ], [ %index.next1744, %vector.body1740 ] ; 3 uses
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %index1741 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %wide.load1742 = load <2 x i64>, ptr %i.zf, align 8, !tbaa !88
  %wide.load1743 = load <2 x i64>, ptr %i.zg, align 8, !tbaa !88
  %i.zh = getelementptr [8 x i8], ptr %i.ze, i64 %index1741 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  store <2 x i64> %wide.load1742, ptr %i.zh, align 8, !tbaa !88
  store <2 x i64> %wide.load1743, ptr %i.zi, align 8, !tbaa !88
  %index.next1744 = add nuw i64 %index1741, 4     ; 2 uses
  %i.zj = icmp eq i64 %index.next1744, %n.vec1739
  br i1 %i.zj, label %middle.block1745, label %vector.body1740, !llvm.loop !1212

middle.block1745:                                 ; preds = %vector.body1740
  %cmp.n1746 = icmp eq i64 %i.yu, %n.vec1739
  br i1 %cmp.n1746, label %.loopexit.i263, label %scalar.ph1736.preheader

scalar.ph1736.preheader:                          ; preds = %vector.memcheck1734, %.lr.ph75.i275, %middle.block1745
  %.274.i276.ph = phi i64 [ %.071.i253, %vector.memcheck1734 ], [ %.071.i253, %.lr.ph75.i275 ], [ %i.zb, %middle.block1745 ] ; 4 uses
  %.14373.i277.ph = phi i64 [ %.04270.i254, %vector.memcheck1734 ], [ %.04270.i254, %.lr.ph75.i275 ], [ %i.zc, %middle.block1745 ] ; 2 uses
  %44 = add i64 %.274.i276.ph, %.04270.i254
  %i.zk = sub i64 %indvars.iv.i252, %44
  %i.zl = add i64 %i.xq, -1
  %i.zm = add i64 %.071.i253, %i.zl
  %i.zn = add i64 %.274.i276.ph, %.04270.i254
  %i.zo = sub i64 %i.zm, %i.zn
  %xtraiter1968 = and i64 %i.zk, 3                ; 2 uses
  %lcmp.mod1969.not = icmp eq i64 %xtraiter1968, 0
  br i1 %lcmp.mod1969.not, label %scalar.ph1736.prol.loopexit, label %scalar.ph1736.prol

scalar.ph1736.prol:                               ; preds = %scalar.ph1736.preheader, %scalar.ph1736.prol
  %.274.i276.prol = phi i64 [ %i.zr, %scalar.ph1736.prol ], [ %.274.i276.ph, %scalar.ph1736.preheader ] ; 2 uses
  %.14373.i277.prol = phi i64 [ %i.zt, %scalar.ph1736.prol ], [ %.14373.i277.ph, %scalar.ph1736.preheader ] ; 2 uses
  %prol.iter1970 = phi i64 [ %prol.iter1970.next, %scalar.ph1736.prol ], [ 0, %scalar.ph1736.preheader ]
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.ys, i64 %.14373.i277.prol
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !88
  %i.zr = add i64 %.274.i276.prol, 1              ; 2 uses
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.274.i276.prol
  store i64 %i.zq, ptr %i.zs, align 8, !tbaa !88
  %i.zt = add nuw i64 %.14373.i277.prol, 1        ; 2 uses
  %prol.iter1970.next = add i64 %prol.iter1970, 1 ; 2 uses
  %prol.iter1970.cmp.not = icmp eq i64 %prol.iter1970.next, %xtraiter1968
  br i1 %prol.iter1970.cmp.not, label %scalar.ph1736.prol.loopexit, label %scalar.ph1736.prol, !llvm.loop !1213

scalar.ph1736.prol.loopexit:                      ; preds = %scalar.ph1736.prol, %scalar.ph1736.preheader
  %.274.i276.unr = phi i64 [ %.274.i276.ph, %scalar.ph1736.preheader ], [ %i.zr, %scalar.ph1736.prol ]
  %.14373.i277.unr = phi i64 [ %.14373.i277.ph, %scalar.ph1736.preheader ], [ %i.zt, %scalar.ph1736.prol ]
  %i.zu = icmp ult i64 %i.zo, 3
  br i1 %i.zu, label %.loopexit.i263, label %scalar.ph1736

scalar.ph1736:                                    ; preds = %scalar.ph1736.prol.loopexit, %scalar.ph1736
  %.274.i276 = phi i64 [ %i.aal, %scalar.ph1736 ], [ %.274.i276.unr, %scalar.ph1736.prol.loopexit ] ; 5 uses
  %.14373.i277 = phi i64 [ %i.aao, %scalar.ph1736 ], [ %.14373.i277.unr, %scalar.ph1736.prol.loopexit ] ; 5 uses
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.ys, i64 %.14373.i277
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !88
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.274.i276
  store i64 %i.zw, ptr %i.zx, align 8, !tbaa !88
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.ys, i64 %.14373.i277
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !88
  %i.aab = getelementptr [8 x i8], ptr %i.xo, i64 %.274.i276
  %i.aac = getelementptr i8, ptr %i.aab, i64 8
  store i64 %i.aaa, ptr %i.aac, align 8, !tbaa !88
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.ys, i64 %.14373.i277
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !88
  %i.aag = getelementptr [8 x i8], ptr %i.xo, i64 %.274.i276
  %i.aah = getelementptr i8, ptr %i.aag, i64 16
  store i64 %i.aaf, ptr %i.aah, align 8, !tbaa !88
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.ys, i64 %.14373.i277
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 24
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !88
  %i.aal = add i64 %.274.i276, 4                  ; 2 uses
  %i.aam = getelementptr [8 x i8], ptr %i.xo, i64 %.274.i276
  %i.aan = getelementptr i8, ptr %i.aam, i64 24
  store i64 %i.aak, ptr %i.aan, align 8, !tbaa !88
  %i.aao = add nuw i64 %.14373.i277, 4
  %exitcond.not.i278.3 = icmp eq i64 %i.aal, %i.yt
  br i1 %exitcond.not.i278.3, label %.loopexit.i263, label %scalar.ph1736, !llvm.loop !1214

bb.ew:                                            ; preds = %.lr.ph.i251
  %i.aap = load ptr, ptr %i.wu, align 8, !tbaa !104
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %.04270.i254
  %i.aar = load i64, ptr %i.aaq, align 8, !tbaa !88 ; 4 uses
  %i.aas = load ptr, ptr %i.wz, align 8, !tbaa !104
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.aas, i64 %.04569.i255
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !88 ; 3 uses
  %i.aav = icmp ult i64 %i.aar, %i.aau
  br i1 %i.aav, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.071.i253
  store i64 %i.aar, ptr %i.aaw, align 8, !tbaa !88
  %i.aax = add i64 %.04270.i254, 1
  br label %bb.fb

bb.ey:                                            ; preds = %bb.ew
  %i.aay = icmp ugt i64 %i.aar, %i.aau
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.071.i253 ; 2 uses
  br i1 %i.aay, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i64 %i.aau, ptr %i.aaz, align 8, !tbaa !88
  %i.aba = add i64 %.04569.i255, 1
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  store i64 %i.aar, ptr %i.aaz, align 8, !tbaa !88
  %i.abb = add i64 %.04270.i254, 1
  %i.abc = add i64 %.04569.i255, 1
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez, %bb.ex
  %.247.i256 = phi i64 [ %.04569.i255, %bb.ex ], [ %i.aba, %bb.ez ], [ %i.abc, %bb.fa ] ; 2 uses
  %.244.i257 = phi i64 [ %i.aax, %bb.ex ], [ %.04270.i254, %bb.ez ], [ %i.abb, %bb.fa ] ; 2 uses
  %.3.i258 = add i64 %.071.i253, 1                ; 2 uses
  %i.abd = icmp eq i64 %.244.i257, %i.xq
  %indvars.iv.next.i259 = add i64 %indvars.iv.i252, 1
  br i1 %i.abd, label %.preheader.i260, label %.lr.ph.i251, !llvm.loop !14

.loopexit.i263:                                   ; preds = %scalar.ph1736.prol.loopexit, %scalar.ph1736, %scalar.ph1721, %middle.block1745, %middle.block1730, %.preheader63.i274, %.preheader.i260
  %.4.i264 = phi i64 [ %i.xv, %middle.block1730 ], [ %.0.lcssa.i262, %.preheader.i260 ], [ %.071.i253, %.preheader63.i274 ], [ %i.yt, %middle.block1745 ], [ %i.xv, %scalar.ph1721 ], [ %i.yt, %scalar.ph1736 ], [ %i.yt, %scalar.ph1736.prol.loopexit ]
  %i.abe = ptrtoint ptr %i.xo to i64
  store i64 %i.abe, ptr %16, align 8, !tbaa !104
  %i.abf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %16, i64 noundef %.4.i264)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %.loopexit.i263
  %i.abg = load ptr, ptr %16, align 8, !tbaa !104 ; 2 uses
  %.not.i.i268 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i268, label %bb.fe, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i269

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i269: ; preds = %bb.fc
  call void @_ZdaPv(ptr noundef nonnull %i.abg) #27
  br label %bb.fe

bb.fd:                                            ; preds = %.loopexit.i263
  %i.abh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abi = load ptr, ptr %16, align 8, !tbaa !104 ; 2 uses
  %.not.i51.i265 = icmp eq ptr %i.abi, null
  br i1 %.not.i51.i265, label %.body142, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i266

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i266: ; preds = %bb.fd
  call void @_ZdaPv(ptr noundef nonnull %i.abi) #27
  br label %.body142

bb.fe:                                            ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i269, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.fg

bb.ff:                                            ; preds = %_ZN6duckdb12optional_ptrINS_15JoinRelationSetELb1EEdeEv.exit249, %bb.dw
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %.body142

bb.fg:                                            ; preds = %bb.fe, %bb.dt
  %storemerge942.in = phi ptr [ %i.tv, %bb.dt ], [ %i.abf, %bb.fe ]
  %storemerge942 = ptrtoint ptr %storemerge942.in to i64
  store i64 %storemerge942, ptr %33, align 8, !tbaa !144
  %i.abk = load ptr, ptr %i.af, align 8, !tbaa !156 ; 2 uses
  %.not5.i.i.i.i283 = icmp eq ptr %i.abk, null
  br i1 %.not5.i.i.i.i283, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i284

.lr.ph.i.i.i.i284:                                ; preds = %bb.fg, %.lr.ph.i.i.i.i284
  %.06.i.i.i.i285 = phi ptr [ %i.abl, %.lr.ph.i.i.i.i284 ], [ %i.abk, %bb.fg ] ; 2 uses
  %i.abl = load ptr, ptr %.06.i.i.i.i285, align 8, !tbaa !95 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i285) #27
  %.not.i.i.i.i286 = icmp eq ptr %i.abl, null
  br i1 %.not.i.i.i.i286, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i284, !llvm.loop !10

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i284, %bb.fg
  %i.abm = load ptr, ptr %36, align 8, !tbaa !152
  %i.abn = load i64, ptr %i.ae, align 8, !tbaa !153
  %i.abo = shl i64 %i.abn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.abm, i8 0, i64 %i.abo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.abp = load ptr, ptr %36, align 8, !tbaa !152 ; 2 uses
  %i.abq = icmp eq ptr %i.abp, %i.ad
  br i1 %i.abq, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.abp) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  %i.abr = load ptr, ptr %i.aa, align 8, !tbaa !156 ; 2 uses
  %.not5.i.i.i.i287 = icmp eq ptr %i.abr, null
  br i1 %.not5.i.i.i.i287, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i291, label %.lr.ph.i.i.i.i288

.lr.ph.i.i.i.i288:                                ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, %.lr.ph.i.i.i.i288
  %.06.i.i.i.i289 = phi ptr [ %i.abs, %.lr.ph.i.i.i.i288 ], [ %i.abr, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit ] ; 2 uses
  %i.abs = load ptr, ptr %.06.i.i.i.i289, align 8, !tbaa !95 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i289) #27
  %.not.i.i.i.i290 = icmp eq ptr %i.abs, null
  br i1 %.not.i.i.i.i290, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i291, label %.lr.ph.i.i.i.i288, !llvm.loop !10

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i291: ; preds = %.lr.ph.i.i.i.i288, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %i.abt = load ptr, ptr %35, align 8, !tbaa !152
  %i.abu = load i64, ptr %i.z, align 8, !tbaa !153
  %i.abv = shl i64 %i.abu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.abt, i8 0, i64 %i.abv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.abw = load ptr, ptr %35, align 8, !tbaa !152 ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.y
  br i1 %i.abx, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit292, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i291
  call void @_ZdlPv(ptr noundef %i.abw) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit292

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit292: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i291, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.0872.01102, i64 8 ; 2 uses
  %.not939 = icmp eq ptr %i.aby, %i.ew
  br i1 %.not939, label %._crit_edge1105, label %.lr.ph1104

.body142:                                         ; preds = %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i233, %bb.eo, %bb.ff, %bb.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i723, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i722, %bb.fd, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i266, %bb.du, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i206, %bb.ds, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i171, %bb.cg, %bb.cx, %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i624, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i623, %bb.cv, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i, %bb.bm, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i, %bb.bj, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i150, %bb.an, %bb.bl
  %.pn93 = phi { ptr, i32 } [ %.pn35.ph.i208, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i206 ], [ %i.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i623 ], [ %.pn35.ph.i, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i ], [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149 ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i140 ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i141 ], [ %.pn9.i.i137, %bb.ai ], [ %i.jq, %bb.bl ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i150 ], [ %.pn9.i.i146, %bb.an ], [ %i.jr, %bb.bm ], [ %i.jn, %bb.bj ], [ %.pn35.ph.i173, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i171 ], [ %i.mn, %bb.cg ], [ %i.qy, %bb.cv ], [ %i.qy, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i ], [ %i.ra, %bb.cx ], [ %i.mt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i624 ], [ %.pn9.i620, %bb.cm ], [ %i.ua, %bb.du ], [ %i.tx, %bb.ds ], [ %.pn35.ph.i235, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i233 ], [ %i.ww, %bb.eo ], [ %i.abh, %bb.fd ], [ %i.abh, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i266 ], [ %i.abj, %bb.ff ], [ %i.xc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i723 ], [ %.pn9.i719, %bb.eu ], [ %i.xc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i722 ]
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
end_hunk_2
