Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/array_solver?download=true
inline.NumInlined: 515
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN10union_findIN5array6solverEE5mergeEjj:bb.a
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !123
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !123
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !123
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !123
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !253, !nonnull !34, !align !35 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 noundef 24) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10union_findIN5array6solverEE11merge_trailE, i64 16), ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %0, ptr %i.aj, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 %.028, ptr %.sroa.6.8..sroa_idx, align 8
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !149 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.noexc5, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !123 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !123
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %.noexc5, label %bb.f

.noexc5:                                          ; preds = %bb.e, %.noexc
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ag)
  %.pre.i.i = load ptr, ptr %i.ag, align 8, !tbaa !149 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !123
  br label %bb.f

bb.f:                                             ; preds = %.noexc5, %bb.e
  %i.ar = phi i32 [ %.pre2.i.i, %.noexc5 ], [ %i.an, %bb.e ] ; 2 uses
  %i.as = phi ptr [ %.pre.i.i, %.noexc5 ], [ %i.ak, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.au = zext i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  store ptr %i.ai, ptr %i.av, align 8, !tbaa !151
  %i.aw = add i32 %i.ar, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !123
  br label %bb.g

bb.g:                                             ; preds = %_ZNK10union_findIN5array6solverEE4findEj.exit4, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5array6solver12new_diseq_ehERKN3euf5th_eqE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.array::solver::axiom_record", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !136
  %.not1.i = icmp eq i32 %i.b, 0
  br i1 %.not1.i, label %_ZN3euf13th_euf_solver10force_pushEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(108) %0), !inline_history !3
  %i.f = load i32, ptr %i.a, align 8, !tbaa !136
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !136
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN3euf13th_euf_solver10force_pushEv.exit, label %.lr.ph.i, !llvm.loop !4

_ZN3euf13th_euf_solver10force_pushEv.exit:        ; preds = %.lr.ph.i, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !145
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !120  ; 2 uses
  %i.l = zext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !143  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !146
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !143
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !162
  %i.u = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !165  ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNK5array6solver8is_arrayEPN3euf5enodeE.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i: ; preds = %_ZN3euf13th_euf_solver10force_pushEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load i32, ptr %i.y, align 8, !tbaa !166
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !170
  %i.ab = icmp eq i32 %i.aa, %i.z
  br i1 %i.ab, label %_ZNK5array6solver8is_arrayEPN3euf5enodeE.exit, label %_ZNK5array6solver8is_arrayEPN3euf5enodeE.exit.thread

_ZNK5array6solver8is_arrayEPN3euf5enodeE.exit:    ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !171
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %_ZNK5array6solver8is_arrayEPN3euf5enodeE.exit.thread

bb.b:                                             ; preds = %_ZNK5array6solver8is_arrayEPN3euf5enodeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 2, ptr %2, align 8, !tbaa !175, !alias.scope !256
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !176, !alias.scope !256
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.n, ptr %i.ag, align 8, !tbaa !177, !alias.scope !256
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.s, ptr %i.ah, align 8, !tbaa !178, !alias.scope !256
  call void @_ZN5array6solver10push_axiomERKNS0_12axiom_recordE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNK5array6solver8is_arrayEPN3euf5enodeE.exit.thread

_ZNK5array6solver8is_arrayEPN3euf5enodeE.exit.thread: ; preds = %_ZN3euf13th_euf_solver10force_pushEv.exit, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i, %bb.b, %_ZNK5array6solver8is_arrayEPN3euf5enodeE.exit
  ret void
}

declare void @_ZN5array6solver10push_axiomERKNS0_12axiom_recordE(ptr noundef nonnull align 8 dereferenceable(544), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN5array6solver14unit_propagateEv(ptr noundef nonnull align 8 dereferenceable(544) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !123
  br label %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit

_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.h = icmp eq i32 %i.b, %.0.i
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !136
  %.not1.i = icmp eq i32 %i.j, 0
  br i1 %.not1.i, label %_ZN3euf13th_euf_solver10force_pushEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 512
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(108) %0), !inline_history !3
  %i.n = load i32, ptr %i.i, align 8, !tbaa !136
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.i, align 8, !tbaa !136
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_ZN3euf13th_euf_solver10force_pushEv.exit.loopexit, label %.lr.ph.i, !llvm.loop !4

_ZN3euf13th_euf_solver10force_pushEv.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load i32, ptr %i.a, align 8, !tbaa !123
  br label %_ZN3euf13th_euf_solver10force_pushEv.exit

_ZN3euf13th_euf_solver10force_pushEv.exit:        ; preds = %_ZN3euf13th_euf_solver10force_pushEv.exit.loopexit, %bb.c
  %i.p = phi i32 [ %.pre, %_ZN3euf13th_euf_solver10force_pushEv.exit.loopexit ], [ %i.b, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !142, !nonnull !34, !align !35 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2184 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 2200
  %i.u = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef 24) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV11value_trailIjE, i64 16), ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.a, ptr %i.v, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %i.p, ptr %.sroa.6.8..sroa_idx, align 8
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !149  ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.noexc5, label %bb.d

bb.d:                                             ; preds = %_ZN3euf13th_euf_solver10force_pushEv.exit
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !123  ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !123
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %.noexc5, label %bb.e

.noexc5:                                          ; preds = %bb.d, %_ZN3euf13th_euf_solver10force_pushEv.exit
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s)
  %.pre.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !149 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !123
  br label %bb.e

bb.e:                                             ; preds = %.noexc5, %bb.d
  %i.ad = phi i32 [ %.pre2.i.i.i, %.noexc5 ], [ %i.z, %bb.d ] ; 2 uses
  %i.ae = phi ptr [ %.pre.i.i.i, %.noexc5 ], [ %i.w, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ag = zext i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  store ptr %i.u, ptr %i.ah, align 8, !tbaa !151
  %i.ai = add i32 %i.ad, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !123
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !121 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.critedge, label %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7.lr.ph

_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7.lr.ph: ; preds = %bb.e
  %.pre13 = load i32, ptr %i.a, align 8, !tbaa !258
  br label %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7

_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7: ; preds = %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7.lr.ph, %bb.g
  %i.al = phi i32 [ %i.aw, %bb.g ], [ %.pre13, %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7.lr.ph ] ; 2 uses
  %i.am = phi ptr [ %i.ax, %bb.g ], [ %i.aj, %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7.lr.ph ]
  %.049 = phi i1 [ %spec.select, %bb.g ], [ false, %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7.lr.ph ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !123
  %i.ap = icmp ult i32 %i.al, %i.ao
  br i1 %i.ap, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7
  %i.aq = load ptr, ptr %1, align 8, !tbaa !137
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3168
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !393, !range !140, !noundef !34
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = tail call noundef zeroext i1 @_ZN5array6solver15propagate_axiomEj(ptr noundef nonnull align 8 dereferenceable(544) %0, i32 noundef %i.al)
  %spec.select = select i1 %i.au, i1 true, i1 %.049 ; 2 uses
  %i.av = load i32, ptr %i.a, align 8, !tbaa !258
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !258
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !121 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.critedge, label %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7, !llvm.loop !257

.critedge:                                        ; preds = %bb.g, %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7, %bb.f, %bb.e, %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit
  %.0 = phi i1 [ false, %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit ], [ false, %bb.e ], [ %spec.select, %bb.g ], [ %.049, %_ZNK6vectorIN5array6solver12axiom_recordELb0EjE4sizeEv.exit7 ], [ %.049, %bb.f ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN5array6solver15propagate_axiomEj(ptr noundef nonnull align 8 dereferenceable(544), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5array6solver8merge_ehEiiii(ptr noundef nonnull align 8 dereferenceable(544) %0, i32 noundef %1, i32 noundef %2, i32 %3, i32 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.array::solver::axiom_record", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !143  ; 2 uses
  %i.f = zext i32 %2 to i64                       ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !162  ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !162  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134  ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.f
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134  ; 6 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !184, !range !140, !noundef !34
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = load i8, ptr %i.n, align 8, !tbaa !184, !range !140, !noundef !34
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5array6solver15set_prop_upwardEi(ptr noundef nonnull align 8 dereferenceable(544) %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !185, !range !140, !noundef !34
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %.thread67

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !185, !range !140, !noundef !34
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5array6solver18add_parent_defaultEi(ptr noundef nonnull align 8 dereferenceable(544) %0, i32 noundef %2)
  %.pre = load i8, ptr %i.u, align 1, !tbaa !185, !range !140
  %i.aa = trunc nuw i8 %.pre to i1
  br i1 %i.aa, label %.thread, label %.thread67

.thread67:                                        ; preds = %bb.d, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !185, !range !140, !noundef !34
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %.thread

bb.g:                                             ; preds = %.thread67
  tail call void @_ZN5array6solver18add_parent_defaultEi(ptr noundef nonnull align 8 dereferenceable(544) %0, i32 noundef %1)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %.thread67, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !120 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %._crit_edge, label %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit

_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit:        ; preds = %.thread
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !123 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %.not55 = icmp eq i32 %i.ai, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.thread, %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !120 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %._crit_edge60, label %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit51

_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit51:      ; preds = %._crit_edge
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !123 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %.not4857 = icmp eq i32 %i.aq, 0
  br i1 %.not4857, label %._crit_edge60, label %.lr.ph59

.lr.ph:                                           ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit, %.lr.ph
  %.04756 = phi ptr [ %i.av, %.lr.ph ], [ %i.af, %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit ] ; 2 uses
  %i.au = load ptr, ptr %.04756, align 8, !tbaa !143
  tail call void @_ZN5array6solver10add_lambdaEiPN3euf5enodeE(ptr noundef nonnull align 8 dereferenceable(544) %0, i32 noundef %1, ptr noundef %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %.04756, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.al
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge60:                                    ; preds = %.lr.ph59, %._crit_edge, %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit51
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !120 ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %._crit_edge64, label %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit53

_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit53:      ; preds = %._crit_edge60
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !123 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc
  %.not4961 = icmp eq i32 %i.ba, 0
  br i1 %.not4961, label %._crit_edge64, label %.lr.ph63

.lr.ph59:                                         ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit51, %.lr.ph59
  %.04658 = phi ptr [ %i.bf, %.lr.ph59 ], [ %i.an, %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit51 ] ; 2 uses
  %i.be = load ptr, ptr %.04658, align 8, !tbaa !143
  tail call void @_ZN5array6solver17add_parent_lambdaEiPN3euf5enodeE(ptr noundef nonnull align 8 dereferenceable(544) %0, i32 noundef %1, ptr noundef %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.04658, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %i.bf, %i.at
  br i1 %.not48, label %._crit_edge60, label %.lr.ph59

._crit_edge64:                                    ; preds = %.lr.ph63, %._crit_edge60, %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, 65535
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %_Z9is_lambdaPK3ast.exit, label %_Z9is_lambdaPK3ast.exit.thread

_Z9is_lambdaPK3ast.exit:                          ; preds = %._crit_edge64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !189
  %i.bm = icmp eq i32 %i.bl, 2
  br i1 %i.bm, label %bb.h, label %_Z9is_lambdaPK3ast.exit.thread

.lr.ph63:                                         ; preds = %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit53, %.lr.ph63
  %.062 = phi ptr [ %i.bo, %.lr.ph63 ], [ %i.ax, %_ZN6vectorIPN3euf5enodeELb0EjE3endEv.exit53 ] ; 2 uses
  %i.bn = load ptr, ptr %.062, align 8, !tbaa !143
  tail call void @_ZN5array6solver17add_parent_selectEiPN3euf5enodeE(ptr noundef nonnull align 8 dereferenceable(544) %0, i32 noundef %1, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %.062, i64 8 ; 2 uses
  %.not49 = icmp eq ptr %i.bo, %i.bd
  br i1 %.not49, label %._crit_edge64, label %.lr.ph63

_Z9is_lambdaPK3ast.exit.thread:                   ; preds = %._crit_edge64, %_Z9is_lambdaPK3ast.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %_Z9is_lambdaPK3ast.exit54, label %_Z9is_lambdaPK3ast.exit54.thread

_Z9is_lambdaPK3ast.exit54:                        ; preds = %_Z9is_lambdaPK3ast.exit.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !189
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %bb.h, label %_Z9is_lambdaPK3ast.exit54.thread

bb.h:                                             ; preds = %_Z9is_lambdaPK3ast.exit54, %_Z9is_lambdaPK3ast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i32 4, ptr %5, align 8, !tbaa !175, !alias.scope !396
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.bw, align 4, !tbaa !176, !alias.scope !396
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.e, ptr %i.bx, align 8, !tbaa !177, !alias.scope !396
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.h, ptr %i.by, align 8, !tbaa !178, !alias.scope !396
  call void @_ZN5array6solver10push_axiomERKNS0_12axiom_recordE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %_Z9is_lambdaPK3ast.exit54.thread

_Z9is_lambdaPK3ast.exit54.thread:                 ; preds = %_Z9is_lambdaPK3ast.exit.thread, %bb.h, %_Z9is_lambdaPK3ast.exit54
  ret void
end_hunk_0
