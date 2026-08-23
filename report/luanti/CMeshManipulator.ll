Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CMeshManipulator?download=true
inline.NumInlined: 1427
inline.NumDeleted: 509
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK5scene5SMesh15needsHwSkinningEv:bb.a
bb.a:
  ret i1 false
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene5SMeshD1Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not9.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZNK17IReferenceCounted4dropEv.exit.i.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #21, !inline_history !112
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.b, %._crit_edge.i.i
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i5.i.i, label %_ZN5scene5SMeshD1Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #21, !inline_history !112
  br label %_ZN5scene5SMeshD1Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit.i.i
  %.sroa.06.010.i.i = phi ptr [ %i.ah, %_ZNK17IReferenceCounted4dropEv.exit.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.06.010.i.i, align 8, !tbaa !90 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #18, !inline_history !112
  unreachable

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !35
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZNK17IReferenceCounted4dropEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(12) %i.z) #19, !inline_history !113
  br label %_ZNK17IReferenceCounted4dropEv.exit.i.i

_ZNK17IReferenceCounted4dropEv.exit.i.i:          ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.h
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZN5scene5SMeshD1Ev.exit:                         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene5SMeshD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZN5scene5SMeshD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.d) #19
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5video9SMaterialneERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !115
  %i.h = load i32, ptr %i.e, align 4, !tbaa !115
  %.not50 = icmp eq i32 %i.g, %i.h
  br i1 %.not50, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load float, ptr %i.i, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load float, ptr %i.k, align 8, !tbaa !116
  %i.m = fcmp une float %i.j, %i.l
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.o = load float, ptr %i.n, align 4, !tbaa !117
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.q = load float, ptr %i.p, align 4, !tbaa !117
  %i.r = fcmp une float %i.o, %i.q
  br i1 %i.r, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.t = load i8, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.v = load i8, ptr %i.u, align 2
  %i.w = xor i8 %i.v, %i.t                        ; 3 uses
  %i.x = and i8 %i.w, 3
  %or.cond44 = icmp eq i8 %i.x, 0
  br i1 %or.cond44, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.z = load i16, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = and i8 %i.w, 124
  %i.ad = icmp eq i8 %i.ac, 0
  %or.cond = icmp eq i16 %i.z, %i.ab
  %or.cond51 = and i1 %i.ad, %or.cond
  br i1 %or.cond51, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load float, ptr %i.ae, align 8, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !118
  %i.ai = fcmp une float %i.af, %i.ah
  br i1 %i.ai, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !119
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.am = load float, ptr %i.al, align 4, !tbaa !119
  %i.an = fcmp une float %i.ak, %i.am
  br i1 %i.an, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !120
  %i.as = fcmp une float %i.ap, %i.ar
  %i.at = icmp slt i8 %i.w, 0
  %or.cond43 = or i1 %i.at, %i.as
  br i1 %or.cond43, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.au = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.au, label %.critedge, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
  br i1 %i.ax, label %.critedge, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az)
  br i1 %i.ba, label %.critedge, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = tail call noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
  br i1 %i.bd, label %.critedge, label %2

2:                                                ; preds = %.preheader.3
  br label %.critedge

.critedge:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %2, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.i ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.g ], [ true, %.preheader.preheader ], [ false, %2 ], [ true, %.preheader.1 ], [ true, %.preheader.3 ], [ true, %.preheader.2 ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5video14SMaterialLayerneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70
  %i.b = load ptr, ptr %1, align 8, !tbaa !70
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i16, ptr %i.e, align 8
  %i.g = xor i16 %i.f, %i.d
  %i.h = and i16 %i.g, 4095
  %or.cond28 = icmp eq i16 %i.h, 0
  br i1 %or.cond28, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = load i8, ptr %i.k, align 2, !tbaa !121
  %.not21 = icmp eq i8 %i.j, %i.l
  br i1 %.not21, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !122
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !122
  %.not22 = icmp eq i8 %i.n, %i.p
  br i1 %.not22, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i8, ptr %i.q, align 4, !tbaa !123
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !123
  %.not23 = icmp eq i8 %i.r, %i.t
  br i1 %.not23, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.v = load i8, ptr %i.u, align 1, !tbaa !124
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.x = load i8, ptr %i.w, align 1, !tbaa !124
  %.not29 = icmp eq i8 %i.v, %i.x
  br i1 %.not29, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83 ; 3 uses
  %.not24 = icmp eq ptr %i.z, %i.ab
  br i1 %.not24, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not25 = icmp eq ptr %i.z, null
  %.not26 = icmp eq ptr %i.ab, null
  %or.cond = or i1 %.not25, %.not26
  br i1 %or.cond, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call noundef zeroext i1 @_ZNK4core8CMatrix4IfEeqERKS1_(ptr noundef nonnull align 4 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(64) %i.ab)
  %i.ad = xor i1 %i.ac, true
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g, %bb.i, %bb.h, %bb.f
  %.0 = phi i1 [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.g ], [ %i.ad, %bb.i ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4core8CMatrix4IfEeqERKS1_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !18
  %i.b = load float, ptr %1, align 4, !tbaa !18
  %i.c = fcmp oeq float %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !18
  %i.h = fcmp oeq float %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !18
  %i.m = fcmp oeq float %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !18
  %i.r = fcmp oeq float %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !18
  %i.w = fcmp oeq float %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !18
  %i.ab = fcmp oeq float %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ag = fcmp oeq float %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !18
  %i.al = fcmp oeq float %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18
  %i.aq = fcmp oeq float %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = load float, ptr %i.ar, align 4, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.au = load float, ptr %i.at, align 4, !tbaa !18
  %i.av = fcmp oeq float %i.as, %i.au
  br i1 %i.av, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load float, ptr %i.ay, align 4, !tbaa !18
  %i.ba = fcmp oeq float %i.ax, %i.az
  br i1 %i.ba, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.be = load float, ptr %i.bd, align 4, !tbaa !18
  %i.bf = fcmp oeq float %i.bc, %i.be
  br i1 %i.bf, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !18
  %i.bk = fcmp oeq float %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !18
  %i.bp = fcmp oeq float %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load float, ptr %i.bq, align 4, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !18
  %i.bu = fcmp oeq float %i.br, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !18
end_hunk_0
