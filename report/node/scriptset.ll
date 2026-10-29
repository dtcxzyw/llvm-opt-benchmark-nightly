Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/scriptset?download=true
inline.NumInlined: 57
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6icu_789ScriptSet9intersectERKS0_:bb.a
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !7

.rtvec:                                           ; preds = %bb.a
  %i.e = load <4 x i32>, ptr %1, align 4
  %i.f = load <4 x i32>, ptr %0, align 4
  %i.g = and <4 x i32> %i.f, %i.e
  store <4 x i32> %i.g, ptr %0, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.h, align 4
  %i.k = load <2 x i32>, ptr %i.i, align 4
  %i.l = and <2 x i32> %i.k, %i.j
  store <2 x i32> %i.l, ptr %i.i, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, %i.n
  store i32 %i.q, ptr %i.o, align 4
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.r = load i32, ptr %1, align 4
  %i.s = load i32, ptr %0, align 4
  %i.t = and i32 %i.s, %i.r
  store i32 %i.t, ptr %0, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, %i.v
  store i32 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ag, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, %i.ak
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i32, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet9intersectE11UScriptCodeR10UErrorCode(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::ScriptSet", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %1, 223
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.c = lshr i32 %1, 5
  %i.d = and i32 %1, 31
  %i.e = shl nuw i32 1, %i.d
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = or i32 %i.h, %i.e
  store i32 %i.i, ptr %i.g, align 4
  %i.j = load <4 x i32>, ptr %3, align 16
  %i.k = load <4 x i32>, ptr %0, align 4
  %i.l = and <4 x i32> %i.k, %i.j
  store <4 x i32> %i.l, ptr %0, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load <2 x i32>, ptr %i.m, align 16
  %i.p = load <2 x i32>, ptr %i.n, align 4
  %i.q = and <2 x i32> %i.p, %i.o
  store <2 x i32> %i.q, ptr %i.n, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, %i.s
  store i32 %i.v, ptr %i.t, align 4
  br label %_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread

_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread: ; preds = %bb.c, %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_789ScriptSet10intersectsERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = and i32 %i.b, %i.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, %i.e
  %.not.1 = icmp eq i32 %i.h, 0
  br i1 %.not.1, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, %i.j
  %.not.2 = icmp eq i32 %i.m, 0
  br i1 %.not.2, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, %i.o
  %.not.3 = icmp eq i32 %i.r, 0
  br i1 %.not.3, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, %i.t
  %.not.4 = icmp eq i32 %i.w, 0
  br i1 %.not.4, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, %i.y
  %.not.5 = icmp eq i32 %i.ab, 0
  br i1 %.not.5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, %i.ad
  %.not.6 = icmp ne i32 %i.ag, 0
  %spec.select = zext i1 %.not.6 to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ah = phi i8 [ 1, %bb.a ], [ 1, %bb.f ], [ 1, %bb.b ], [ %spec.select, %bb.g ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.d ]
  ret i8 %i.ah
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_789ScriptSet8containsERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <4 x i32>, ptr %0, align 4
  %i.c = load <4 x i32>, ptr %1, align 4          ; 2 uses
  %i.d = and <4 x i32> %i.c, %i.b
  %i.e = icmp eq <4 x i32> %i.d, %i.c
  %i.f = load <2 x i32>, ptr %.sroa.15.0..sroa_idx, align 4
  %i.g = load <2 x i32>, ptr %i.a, align 4        ; 2 uses
  %i.h = and <2 x i32> %i.g, %i.f
  %i.i = icmp eq <2 x i32> %i.h, %i.g             ; 2 uses
  %i.j = freeze <4 x i1> %i.e
  %i.k = bitcast <4 x i1> %i.j to i4
  %i.l = icmp eq i4 %i.k, -1
  %i.m = extractelement <2 x i1> %i.i, i64 0
  %op.rdx = select i1 %i.l, i1 %i.m, i1 false
  %i.n = extractelement <2 x i1> %i.i, i64 1
  %op.rdx14 = select i1 %op.rdx, i1 %i.n, i1 false
  br i1 %op.rdx14, label %bb.b, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = and i32 %i.p, %.sroa.21.0.copyload
  %.not.6.i = icmp eq i32 %i.q, %i.p
  %i.r = zext i1 %.not.6.i to i8
  br label %_ZNK6icu_789ScriptSeteqERKS0_.exit

_ZNK6icu_789ScriptSeteqERKS0_.exit:               ; preds = %bb.a, %bb.b
  %.not.lcssa.i = phi i8 [ 0, %bb.a ], [ %i.r, %bb.b ]
  ret i8 %.not.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet6setAllEv(ptr nofree noundef nonnull returned writeonly align 4 captures(ret: address, provenance) dereferenceable(28) initializes((0, 28)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 -1, i64 28, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet8resetAllEv(ptr nofree noundef nonnull returned writeonly align 4 captures(ret: address, provenance) dereferenceable(28) initializes((0, 28)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK6icu_789ScriptSet12countMembersEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %.not10 = icmp eq i32 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi i32 [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.111 = phi i32 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %i.b = add nuw nsw i32 %.111, 1                 ; 2 uses
  %i.c = add i32 %.012, -1
  %i.d = and i32 %i.c, %.012                      ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.1.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not10.1 = icmp eq i32 %i.f, 0
  br i1 %.not10.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %.012.1 = phi i32 [ %i.i, %.lr.ph.1 ], [ %i.f, %._crit_edge ] ; 2 uses
  %.111.1 = phi i32 [ %i.g, %.lr.ph.1 ], [ %.1.lcssa, %._crit_edge ]
  %i.g = add nsw i32 %.111.1, 1                   ; 2 uses
  %i.h = add i32 %.012.1, -1
  %i.i = and i32 %i.h, %.012.1                    ; 2 uses
  %.not.1 = icmp eq i32 %i.i, 0
  br i1 %.not.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !0

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %i.g, %.lr.ph.1 ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not10.2 = icmp eq i32 %i.k, 0
  br i1 %.not10.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1, %.lr.ph.2
  %.012.2 = phi i32 [ %i.n, %.lr.ph.2 ], [ %i.k, %._crit_edge.1 ] ; 2 uses
  %.111.2 = phi i32 [ %i.l, %.lr.ph.2 ], [ %.1.lcssa.1, %._crit_edge.1 ]
  %i.l = add nsw i32 %.111.2, 1                   ; 2 uses
  %i.m = add i32 %.012.2, -1
  %i.n = and i32 %i.m, %.012.2                    ; 2 uses
  %.not.2 = icmp eq i32 %i.n, 0
  br i1 %.not.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !0

._crit_edge.2:                                    ; preds = %.lr.ph.2, %._crit_edge.1
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %._crit_edge.1 ], [ %i.l, %.lr.ph.2 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not10.3 = icmp eq i32 %i.p, 0
  br i1 %.not10.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2, %.lr.ph.3
  %.012.3 = phi i32 [ %i.s, %.lr.ph.3 ], [ %i.p, %._crit_edge.2 ] ; 2 uses
  %.111.3 = phi i32 [ %i.q, %.lr.ph.3 ], [ %.1.lcssa.2, %._crit_edge.2 ]
  %i.q = add nsw i32 %.111.3, 1                   ; 2 uses
  %i.r = add i32 %.012.3, -1
  %i.s = and i32 %i.r, %.012.3                    ; 2 uses
  %.not.3 = icmp eq i32 %i.s, 0
  br i1 %.not.3, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !0

._crit_edge.3:                                    ; preds = %.lr.ph.3, %._crit_edge.2
  %.1.lcssa.3 = phi i32 [ %.1.lcssa.2, %._crit_edge.2 ], [ %i.q, %.lr.ph.3 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not10.4 = icmp eq i32 %i.u, 0
  br i1 %.not10.4, label %._crit_edge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %._crit_edge.3, %.lr.ph.4
  %.012.4 = phi i32 [ %i.x, %.lr.ph.4 ], [ %i.u, %._crit_edge.3 ] ; 2 uses
  %.111.4 = phi i32 [ %i.v, %.lr.ph.4 ], [ %.1.lcssa.3, %._crit_edge.3 ]
  %i.v = add nsw i32 %.111.4, 1                   ; 2 uses
  %i.w = add i32 %.012.4, -1
  %i.x = and i32 %i.w, %.012.4                    ; 2 uses
  %.not.4 = icmp eq i32 %i.x, 0
  br i1 %.not.4, label %._crit_edge.4, label %.lr.ph.4, !llvm.loop !0

._crit_edge.4:                                    ; preds = %.lr.ph.4, %._crit_edge.3
  %.1.lcssa.4 = phi i32 [ %.1.lcssa.3, %._crit_edge.3 ], [ %i.v, %.lr.ph.4 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %.not10.5 = icmp eq i32 %i.z, 0
  br i1 %.not10.5, label %._crit_edge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %._crit_edge.4, %.lr.ph.5
  %.012.5 = phi i32 [ %i.ac, %.lr.ph.5 ], [ %i.z, %._crit_edge.4 ] ; 2 uses
  %.111.5 = phi i32 [ %i.aa, %.lr.ph.5 ], [ %.1.lcssa.4, %._crit_edge.4 ]
  %i.aa = add nsw i32 %.111.5, 1                  ; 2 uses
  %i.ab = add i32 %.012.5, -1
  %i.ac = and i32 %i.ab, %.012.5                  ; 2 uses
  %.not.5 = icmp eq i32 %i.ac, 0
  br i1 %.not.5, label %._crit_edge.5, label %.lr.ph.5, !llvm.loop !0

._crit_edge.5:                                    ; preds = %.lr.ph.5, %._crit_edge.4
  %.1.lcssa.5 = phi i32 [ %.1.lcssa.4, %._crit_edge.4 ], [ %i.aa, %.lr.ph.5 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %.not10.6 = icmp eq i32 %i.ae, 0
  br i1 %.not10.6, label %._crit_edge.6, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %._crit_edge.5, %.lr.ph.6
  %.012.6 = phi i32 [ %i.ah, %.lr.ph.6 ], [ %i.ae, %._crit_edge.5 ] ; 2 uses
  %.111.6 = phi i32 [ %i.af, %.lr.ph.6 ], [ %.1.lcssa.5, %._crit_edge.5 ]
  %i.af = add nsw i32 %.111.6, 1                  ; 2 uses
  %i.ag = add i32 %.012.6, -1
  %i.ah = and i32 %i.ag, %.012.6                  ; 2 uses
  %.not.6 = icmp eq i32 %i.ah, 0
  br i1 %.not.6, label %._crit_edge.6, label %.lr.ph.6, !llvm.loop !0

._crit_edge.6:                                    ; preds = %.lr.ph.6, %._crit_edge.5
  %.1.lcssa.6 = phi i32 [ %.1.lcssa.5, %._crit_edge.5 ], [ %i.af, %.lr.ph.6 ]
  ret i32 %.1.lcssa.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK6icu_789ScriptSet8hashCodeEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 4
  %i.h = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %i.a)
  %op.rdx = xor i32 %i.h, %i.c
  %op.rdx9 = xor i32 %i.e, %i.g
  %op.rdx10 = xor i32 %op.rdx, %op.rdx9
  ret i32 %op.rdx10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -1, 224) i32 @_ZNK6icu_789ScriptSet10nextSetBitEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 223
  br i1 %or.cond, label %.loopexit, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit: ; preds = %bb.a, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread
  %.0816 = phi i32 [ %i.h, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread ], [ %1, %bb.a ] ; 4 uses
  %i.a = lshr i32 %.0816, 5
  %i.b = and i32 %.0816, 31
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = shl nuw i32 1, %i.b
  %i.g = and i32 %i.e, %i.f
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread, label %.loopexit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit
  %i.h = add nuw nsw i32 %.0816, 1                ; 2 uses
  %exitcond = icmp eq i32 %i.h, 224
  br i1 %exitcond, label %.loopexit, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit, !llvm.loop !1

.loopexit:                                        ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ %.0816, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit ], [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_789ScriptSet7isEmptyEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4
  %.fr = freeze <4 x i32> %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 4
  %.not.4 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %.not.5 = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 4
  %.not.6 = icmp eq i32 %i.g, 0
  %i.h = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.i = bitcast <4 x i1> %i.h to i4
  %i.j = icmp eq i4 %i.i, 0
  %op.rdx = select i1 %i.j, i1 %.not.4, i1 false
  %1 = select i1 %op.rdx, i1 %.not.5, i1 false
  %op.rdx22 = select i1 %1, i1 %.not.6, i1 false
  %i.k = zext i1 %op.rdx22 to i8
  ret i8 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_789ScriptSet14displayScriptsERNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  br label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, %bb.a
  %.0816.i = phi i32 [ 0, %bb.a ], [ %i.m, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1 ] ; 5 uses
  %i.b = lshr i32 %.0816.i, 5
  %i.c = and i32 %.0816.i, 30
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = shl nuw nsw i32 1, %i.c
  %i.h = and i32 %i.g, %i.f
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i, label %.lr.ph

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i
  %i.i = or disjoint i32 %.0816.i, 1              ; 2 uses
  %i.j = and i32 %i.i, 31
  %i.k = shl nuw i32 1, %i.j
  %i.l = and i32 %i.k, %i.f
  %.not.i.1 = icmp eq i32 %i.l, 0
  br i1 %.not.i.1, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, label %.lr.ph

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i
  %i.m = add nuw nsw i32 %.0816.i, 2              ; 2 uses
  %exitcond.i.1 = icmp eq i32 %i.m, 224
  br i1 %exitcond.i.1, label %._crit_edge, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i, !llvm.loop !1

.lr.ph:                                           ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i
  %.0816.i.lcssa = phi i32 [ %.0816.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i ], [ %i.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit15

._crit_edge:                                      ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, %bb.c, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i13
  ret ptr %1

_ZNK6icu_789ScriptSet10nextSetBitEi.exit15:       ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i9, %.lr.ph
  %.not17 = phi i1 [ false, %.lr.ph ], [ true, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i9 ]
  %.0816 = phi i32 [ %.0816.i.lcssa, %.lr.ph ], [ %.0816.i10, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i9 ] ; 3 uses
  br i1 %.not17, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK6icu_789ScriptSet10nextSetBitEi.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 32, ptr %i.a, align 2
  %i.p = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit15
  %i.q = call ptr @uscript_getShortName_78(i32 noundef %.0816) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.q, i32 noundef -1, i32 noundef 0) #11
  %i.r = load i16, ptr %i.n, align 8              ; 2 uses
  %i.s = icmp slt i16 %i.r, 0
  %i.t = ashr i16 %i.r, 5
  %i.u = sext i16 %i.t to i32
  %i.v = load i32, ptr %i.o, align 4
  %i.w = select i1 %i.s, i32 %i.v, i32 %i.u
  %i.x = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef %i.w) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %or.cond.i = icmp ugt i32 %.0816, 222
  br i1 %or.cond.i, label %._crit_edge, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i9.preheader

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i9.preheader: ; preds = %bb.c
  %i.y = add nuw nsw i32 %.0816, 1
  br label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i9

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i9: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i9.preheader, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i13
  %.0816.i10 = phi i32 [ %i.ag, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i13 ], [ %i.y, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i9.preheader ] ; 4 uses
  %i.z = lshr i32 %.0816.i10, 5
  %i.aa = and i32 %.0816.i10, 31
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = shl nuw i32 1, %i.aa
  %i.af = and i32 %i.ae, %i.ad
  %.not.i11 = icmp eq i32 %i.af, 0
  br i1 %.not.i11, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i13, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit15

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i13: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i9
  %i.ag = add nuw nsw i32 %.0816.i10, 1           ; 2 uses
  %exitcond.i14 = icmp eq i32 %i.ag, 224
  br i1 %exitcond.i14, label %._crit_edge, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i9, !llvm.loop !1
}

declare ptr @uscript_getShortName_78(i32 noundef) local_unnamed_addr #7

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet12parseScriptsERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) initializes((0, 28)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.g = load i16, ptr %i.e, align 8              ; 2 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = load i32, ptr %i.f, align 4
  %i.l = select i1 %i.h, i32 %i.k, i32 %i.j
  %.not2835 = icmp sgt i32 %i.l, 0
  br i1 %.not2835, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.02136 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.i ] ; 2 uses
  %i.o = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.02136) #11 ; 2 uses
  %i.p = call noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.02136, i32 noundef 1) #11 ; 3 uses
  %i.q = call signext i8 @u_isUWhiteSpace_78(i32 noundef %i.o) #11
  %.not26 = icmp eq i8 %i.q, 0
  br i1 %.not26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.o) #11 ; 0 uses
  %i.s = load i16, ptr %i.e, align 8              ; 2 uses
  %i.t = icmp slt i16 %i.s, 0
  %i.u = ashr i16 %i.s, 5
  %i.v = sext i16 %i.u to i32
  %i.w = load i32, ptr %i.f, align 4
  %i.x = select i1 %i.t, i32 %i.w, i32 %i.v
  %i.y = icmp slt i32 %i.p, %i.x
  br i1 %i.y, label %bb.i, label %bb.e, !llvm.loop !9

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = load i16, ptr %i.d, align 8              ; 2 uses
  %i.aa = icmp slt i16 %i.z, 0
  %i.ab = ashr i16 %i.z, 5
  %i.ac = sext i16 %i.ab to i32
  %i.ad = load i32, ptr %i.m, align 4
  %i.ae = select i1 %i.aa, i32 %i.ad, i32 %i.ac   ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ag = call noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0, i32 noundef %i.ae, ptr noundef nonnull %i.a, i32 noundef 39, i32 noundef 0) #11 ; 0 uses
  store i8 0, ptr %i.n, align 1
  %i.ah = call i32 @u_getPropertyValueEnum_78(i32 noundef 4106, ptr noundef nonnull %i.a) #11 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %2, align 4
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %or.cond.i = icmp ugt i32 %i.ah, 223
  br i1 %or.cond.i, label %.thread.sink.split, label %_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit

_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit: ; preds = %bb.h
  %i.al = lshr i32 %i.ah, 5
  %i.am = and i32 %i.ah, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = zext nneg i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = or i32 %i.aq, %i.an
  store i32 %i.ar, ptr %i.ap, align 4
  %.pre = load i32, ptr %2, align 4
  %i.as = icmp slt i32 %.pre, 1
  br i1 %i.as, label %select.unfold, label %.thread

.thread.sink.split:                               ; preds = %bb.h, %bb.f
  store i32 1, ptr %2, align 4
  br label %.thread

.thread:                                          ; preds = %bb.g, %_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit, %.thread.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

end_hunk_0
