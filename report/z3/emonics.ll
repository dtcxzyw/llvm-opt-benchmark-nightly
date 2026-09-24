Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/emonics?download=true
inline.NumInlined: 1229
inline.NumDeleted: 533
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK3nla7emonics11do_canonizeERNS_5monicE:bb.a
_ZN6vectorIjLb0EjE3endEv.exit.i:                  ; preds = %_ZN3nla5monic9push_rvarENS_10signed_varE.exit, %._crit_edge
  %i.o = phi ptr [ %i.c, %._crit_edge ], [ %i.au, %_ZN3nla5monic9push_rvarENS_10signed_varE.exit ] ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN3nla5monic10sort_rvarsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorIjLb0EjE3endEv.exit.i
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s ; 2 uses
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = xor i64 %i.v, 126
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.t, i64 noundef %i.w)
  tail call void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.t)
  br label %_ZN3nla5monic10sort_rvarsEv.exit

_ZN3nla5monic10sort_rvarsEv.exit:                 ; preds = %._crit_edge, %_ZN6vectorIjLb0EjE3endEv.exit.i, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN3nla5monic9push_rvarENS_10signed_varE.exit
  %i.x = phi ptr [ %i.c, %.lr.ph ], [ %i.au, %_ZN3nla5monic9push_rvarENS_10signed_varE.exit ] ; 4 uses
  %.014 = phi ptr [ %i.f, %.lr.ph ], [ %i.bb, %_ZN3nla5monic9push_rvarENS_10signed_varE.exit ] ; 2 uses
  %i.y = load i32, ptr %.014, align 4, !tbaa !59
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.aa = shl i32 %i.y, 1                         ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit, label %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i

_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !59
  %.not.i.i11 = icmp ult i32 %i.aa, %i.af
  br i1 %.not.i.i11, label %.preheader.i.i, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit

.preheader.i.i:                                   ; preds = %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i, %.preheader.i.i
  %.07.i.i.i = phi i32 [ %i.ai, %.preheader.i.i ], [ %i.aa, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i ] ; 3 uses
  %i.ag = zext i32 %.07.i.i.i to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59 ; 2 uses
  %.not.i.i.i12 = icmp eq i32 %i.ai, %.07.i.i.i
  br i1 %.not.i.i.i12, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit, label %.preheader.i.i

_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit:       ; preds = %.preheader.i.i, %bb.d, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i
  %.sroa.03.0.i.i = phi i32 [ %i.aa, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i ], [ %i.aa, %bb.d ], [ %.07.i.i.i, %.preheader.i.i ] ; 2 uses
  %i.aj = trunc i32 %.sroa.03.0.i.i to i8
  %i.ak = load i8, ptr %i.a, align 8, !tbaa !96, !range !97, !noundef !67
  %i.al = and i8 %i.aj, 1
  %i.am = icmp ne i8 %i.ak, %i.al
  %i.an = zext i1 %i.am to i8
  store i8 %i.an, ptr %i.a, align 8, !tbaa !96
  %i.ao = icmp eq ptr %i.x, null
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit
  %i.ap = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !59
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.f, label %_ZN3nla5monic9push_rvarENS_10signed_varE.exit

bb.f:                                             ; preds = %bb.e, %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !65 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !59
  br label %_ZN3nla5monic9push_rvarENS_10signed_varE.exit

_ZN3nla5monic9push_rvarENS_10signed_varE.exit:    ; preds = %bb.e, %bb.f
  %i.au = phi ptr [ %.pre.i.i, %bb.f ], [ %i.x, %bb.e ] ; 4 uses
  %i.av = phi i32 [ %.pre2.i.i, %bb.f ], [ %i.aq, %bb.e ] ; 2 uses
  %i.aw = lshr i32 %.sroa.03.0.i.i, 1
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ay = zext i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ay
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !59
  %i.ba = add i32 %i.av, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !59
  %i.bb = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.l
  br i1 %.not, label %_ZN6vectorIjLb0EjE3endEv.exit.i, label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3nla7emonics11remove_cellERNS0_9head_tailE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(216) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 3 uses
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.b, ptr %1, align 8, !tbaa !77
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  store ptr %i.b, ptr %i.e, align 8, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3nla7emonics3popEj(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE6shrinkEj.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE6shrinkEj.exit.i
  %.03 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %_ZN6vectorIjLb0EjE6shrinkEj.exit.i ]
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !67, !align !68
  tail call void @_ZN3nla7var_eqsINS_7emonicsEE3popEj(ptr noundef nonnull align 8 dereferenceable(184) %i.d, i32 noundef 1)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !65   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = add i32 %i.h, -1
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.i, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.j = zext i32 %.0.i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59   ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !64     ; 5 uses
  %i.n = zext i32 %i.l to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = icmp eq ptr %i.m, null
  br i1 %i.p, label %_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !59
  %i.s = zext i32 %i.r to i64
  br label %_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i

_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i:          ; preds = %bb.d, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %.0.i.i.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  %.not8.i.i = icmp samesign eq i64 %.0.i.i.i.i, %i.n
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0.i.i.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.09.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.t, %.lr.ph.preheader.i.i ]
  %i.u = getelementptr inbounds i8, ptr %.09.i.i, i64 -8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !84   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v), !inline_history !0
  %.not.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i
  %i.z = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.m, %_ZN6vectorIP5trailLb0EjE3endEv.exit.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_Z16undo_trail_stackR10ptr_vectorI5trailEj.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  store i32 %i.l, ptr %i.aa, align 4, !tbaa !59
  br label %_Z16undo_trail_stackR10ptr_vectorI5trailEj.exit.i

_Z16undo_trail_stackR10ptr_vectorI5trailEj.exit.i: ; preds = %bb.e, %._crit_edge.i.i
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !65  ; 2 uses
  %.not.i7.i = icmp eq ptr %i.ab, null
  br i1 %.not.i7.i, label %_ZN6vectorIjLb0EjE6shrinkEj.exit.i, label %bb.f

bb.f:                                             ; preds = %_Z16undo_trail_stackR10ptr_vectorI5trailEj.exit.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  store i32 %.0.i.i, ptr %i.ac, align 4, !tbaa !59
  br label %_ZN6vectorIjLb0EjE6shrinkEj.exit.i

_ZN6vectorIjLb0EjE6shrinkEj.exit.i:               ; preds = %_Z16undo_trail_stackR10ptr_vectorI5trailEj.exit.i, %bb.f
  tail call void @_ZN6region9pop_scopeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  %i.ad = add nuw i32 %.03, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !168
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3nla7emonics11insert_cellERNS0_9head_tailEj(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef 16) ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.d, ptr %i.c, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %2, ptr %i.e, align 8, !tbaa !98
  store ptr %i.c, ptr %1, align 8, !tbaa !77
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.a ]
  store ptr %i.c, ptr %i.g, align 8, !tbaa !79
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3nla7emonics11merge_cellsERNS0_9head_tailES2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(216) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !100    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !77
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %1, align 8, !tbaa !77
  store ptr %i.e, ptr %i.b, align 8, !tbaa !77
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !77
  store ptr %i.c, ptr %i.h, align 8, !tbaa !79
  %i.i = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.i, ptr %i.e, align 8, !tbaa !79
  store ptr %i.c, ptr %1, align 8, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3nla7emonics13unmerge_cellsERNS0_9head_tailES2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(216) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 3 uses
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !79   ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !77
  store ptr %i.i, ptr %i.g, align 8, !tbaa !79
  store ptr %i.b, ptr %i.d, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK3nla7emonics4headEj(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !67, !align !68
  %i.c = shl i32 %1, 1                            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit, label %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i

_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %.not.i.i = icmp ult i32 %i.c, %i.h
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit

.preheader.i.i:                                   ; preds = %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i, %.preheader.i.i
  %.07.i.i.i = phi i32 [ %i.k, %.preheader.i.i ], [ %i.c, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i ] ; 3 uses
  %i.i = zext i32 %.07.i.i.i to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, %.07.i.i.i
  br i1 %.not.i.i.i, label %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit, label %.preheader.i.i

_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit:       ; preds = %.preheader.i.i, %bb.a, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i
  %.sroa.03.0.i.i = phi i32 [ %i.c, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i ], [ %i.c, %bb.a ], [ %.07.i.i.i, %.preheader.i.i ]
  %i.l = lshr i32 %.sroa.03.0.i.i, 1              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.n = add nuw i32 %i.l, 1                      ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !75   ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.i.i.preheader, label %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.thread.i: ; preds = %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !59   ; 2 uses
  %.not = icmp ult i32 %i.l, %i.r
  br i1 %.not, label %_ZN6vectorIN3nla7emonics9head_tailELb0EjE7reserveEj.exit, label %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.i.i.preheader: ; preds = %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit, %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.o, %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit ]
  %.0.i16.i.i.ph = phi i32 [ %i.r, %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK3nla7var_eqsINS_7emonicsEE4findEj.exit ] ; 2 uses
  br label %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.i.i: ; preds = %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.i.i.preheader, %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE8capacityEv.exit.thread.i.i
  %i.s = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.i.i.preheader ] ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE8capacityEv.exit.i.i

_ZNK6vectorIN3nla7emonics9head_tailELb0EjE8capacityEv.exit.i.i: ; preds = %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.i.i
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !59
  %.not3 = icmp ult i32 %i.l, %i.v
  br i1 %.not3, label %bb.b, label %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE8capacityEv.exit.thread.i.i

_ZNK6vectorIN3nla7emonics9head_tailELb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE8capacityEv.exit.i.i, %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.i.i
  tail call void @_ZN6vectorIN3nla7emonics9head_tailELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %.pr.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !75
  br label %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.i.i, !llvm.loop !2

bb.b:                                             ; preds = %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE8capacityEv.exit.i.i
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i32 %i.n, ptr %i.w, align 4, !tbaa !59
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.n
  br i1 %.not1218.i.i, label %_ZN6vectorIN3nla7emonics9head_tailELb0EjE7reserveEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.x = zext i32 %i.n to i64
  %i.y = zext nneg i32 %.0.i16.i.i.ph to i64      ; 2 uses
  %i.z = getelementptr [16 x i8], ptr %i.s, i64 %i.y
  %i.aa = sub nsw i64 %i.x, %i.y
  %i.ab = shl nsw i64 %i.aa, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !75
  br label %_ZN6vectorIN3nla7emonics9head_tailELb0EjE7reserveEj.exit

_ZN6vectorIN3nla7emonics9head_tailELb0EjE7reserveEj.exit: ; preds = %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.thread.i, %bb.b, %.lr.ph.preheader.i.i
  %i.ac = phi ptr [ %i.o, %_ZNK6vectorIN3nla7emonics9head_tailELb0EjE4sizeEv.exit.thread.i ], [ %i.s, %bb.b ], [ %.pre, %.lr.ph.preheader.i.i ]
  %i.ad = zext nneg i32 %i.l to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  ret ptr %i.af
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK3nla7emonics14find_canonicalERK7svectorIjjE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(8) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct._key_data, align 8          ; 7 uses
  %3 = alloca %struct._key_data, align 8          ; 7 uses
  %4 = alloca %struct._key_data, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.b = icmp eq ptr %i.a, %1
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !65 ; 3 uses
  %i.c = icmp eq ptr %.pr.pre, null               ; 2 uses
  br i1 %i.b, label %_ZN7svectorIjjEaSERKS0_.exit, label %bb.b

end_hunk_0
