inline.NumInlined: 223
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB7_7set_val9SetValZSTE10init_frontB1O_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 56
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 56
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 56
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 56
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 56
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 56
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 56
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtNtB1O_3dfa5accel5AccelE10init_frontB1O_(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !313, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 144
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !464

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 144
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 144
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 144
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 144
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 144
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 144
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 144
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 144
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBb_3vec3VecNtB1K_9PatternIDEE10init_frontB1O_(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !313, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 320
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !465

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 320
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 320
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 320
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 320
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 320
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 320
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 320
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 320
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs98D8VPWzHuM_14regex_automata3dfa8remapper7onepassNtNtB6_7onepass3DFANtB4_10Remappable11swap_states(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(376) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !466, !noundef !3
  %i.d = and i64 %i.c, 63                         ; 3 uses
  %i.e = shl i64 %i.a, %i.d                       ; 5 uses
  %i.f = zext i32 %2 to i64
  %i.g = shl i64 %i.f, %i.d                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !466, !nonnull !3, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !466, !noundef !3 ; 5 uses
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.e)
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.g)
  %exitcond.not.i21.not = icmp ugt i64 %i.k, %i.e
  br i1 %exitcond.not.i21.not, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.s, 1
  %i.o = add nuw i64 %i.s, %i.e                   ; 2 uses
  %i.p = add nuw i64 %i.s, %i.g
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.q = phi i64 [ %i.p, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.r = phi i64 [ %i.o, %bb.b ], [ %i.e, %bb.a ]
  %i.s = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]    ; 6 uses
  %.sroa.01.013.i22 = phi i64 [ %i.s, %bb.b ], [ 0, %bb.a ]
  %exitcond20.not.i = icmp eq i64 %.sroa.01.013.i22, %i.m
  br i1 %exitcond20.not.i, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa18 = phi i64 [ %i.e, %bb.a ], [ %i.o, %bb.b ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa18, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #26, !noalias !466
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.q ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.t, align 8, !noalias !466
  %i.v = load i64, ptr %i.u, align 8, !noalias !466
  store i64 %i.v, ptr %i.t, align 8, !noalias !466
  store i64 %.sroa.03.0.copyload.i, ptr %i.u, align 8, !noalias !466
  %.sroa.01.0.highbits.i = lshr i64 %i.s, %i.d
  %i.w = icmp eq i64 %.sroa.01.0.highbits.i, 0
  br i1 %i.w, label %bb.b, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA11swap_states.exit

bb.d:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #26, !noalias !466
  unreachable

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA11swap_states.exit: ; preds = %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_7LookSetNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = load i32, ptr %0, align 4, !noundef !3   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.a, label %.preheader

.preheader:                                       ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !align !395
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i

bb.a:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit
  %i.h = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !395, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !3, !nonnull !3
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 3)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i, %switch.lookup, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ %i.m, %bb.a ], [ false, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i ], [ false, %bb.b ], [ true, %switch.lookup ]
  ret i1 %.sroa.0.0

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i: ; preds = %.preheader, %bb.b
  %.sroa.0.03438 = phi i32 [ %i.c, %.preheader ], [ %i.u, %bb.b ] ; 2 uses
  %i.n = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.03438, i1 true) ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 18
  br i1 %i.o, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i
  %i.p = zext nneg i32 %i.n to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvXs0_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_7LookSetNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.p
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 131073) %switch.load, i1 true)
  %i.r = zext nneg i32 %i.q to i64
  %switch.gep41 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvXs0_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_7LookSetNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.37, i64 %i.r
  %switch.load42 = load i32, ptr %switch.gep41, align 4
  store i32 %switch.load42, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  %i.s = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @80, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.s, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  %i.t = xor i32 %switch.load, -1
  %i.u = and i32 %.sroa.0.03438, %i.t             ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB5_12StartByteMapNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !395, !noundef !3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !3, !nonnull !3 ; 3 uses
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13)
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %.sroa.6.077 = phi i8 [ 0, %.preheader ], [ %.sroa.6.1.ph74, %bb.f ] ; 5 uses
  %i.k = icmp eq i8 %.sroa.6.077, -1              ; 2 uses
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i8 %.sroa.6.077, 1
  %.not = icmp eq i8 %.sroa.6.077, 0
  br i1 %.not, label %bb.e, label %.thread

bb.d:                                             ; preds = %bb.f
  %i.m = call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.thread, %bb.d, %bb.a
  %.sroa.0.0 = phi i1 [ %i.m, %bb.d ], [ true, %bb.a ], [ true, %.thread ], [ true, %bb.e ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %.thread, %bb.c
  %.sroa.6.1.ph74 = phi i8 [ %.sroa.6.1.ph73, %.thread ], [ 1, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = zext i8 %.sroa.6.077 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !range !469, !noundef !3
  store i8 %i.p, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.sroa.6.077, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXNtNtCs98D8VPWzHuM_14regex_automata4util6escapeNtB2_9DebugByteNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.433.0..sroa_idx, align 8
  store ptr %i.c, ptr %i.j, align 8
  store ptr @_RNvXs8_NtNtCs98D8VPWzHuM_14regex_automata4util5startNtB5_5StartNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  %i.q = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @76, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.q, label %.loopexit, label %bb.f

.thread:                                          ; preds = %bb.b, %bb.c
  %.sroa.6.1.ph73 = phi i8 [ %i.l, %bb.c ], [ -1, %bb.b ]
  %i.r = call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 2)
  br i1 %i.r, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.e
  br i1 %i.k, label %bb.d, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1K_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_12StateIDErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs98D8VPWzHuM_14regex_automata6hybrid2idNtB5_16LazyStateIDErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i64, ptr %0, align 8, !noundef !3
  store i64 %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsX_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @85, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !align !395, !noundef !3
  %i.h = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @86, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.h
}

end_hunk_0
begin_hunk_1_@_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_7Display3fmtCs98D8VPWzHuM_14regex_automata:bb.a
  %i.b = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_7Display3fmtCs98D8VPWzHuM_14regex_automata(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !480, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCs98D8VPWzHuM_14regex_automata(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #10 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !3
  %.val1 = load i64, ptr %2, align 8, !noundef !3
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeEIBX_NtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8Utf8NodeEEINtB5_7ZipImplBW_B28_E3newB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8Utf8NodeENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBQ_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(376) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 19 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !3, !align !395, !noundef !3 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !3, !nonnull !3 ; 10 uses
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 14)
  br i1 %i.ac, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !3 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 1152921504606846976
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !3
  %i.ai = and i64 %i.ah, 63                       ; 2 uses
  %i.aj = lshr i64 %i.ae, %i.ai                   ; 3 uses
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !3 ; 2 uses
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ai
  %.sroa.032.0273 = phi i64 [ 0, %.lr.ph ], [ %i.at, %bb.ai ] ; 5 uses
  %i.at = add nuw nsw i64 %.sroa.032.0273, 1      ; 2 uses
  %exitcond = icmp eq i64 %.sroa.032.0273, 2147483647
  br i1 %exitcond, label %bb.j, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtBJ_12StateIDErrorE6expectBN_.exit

._crit_edge:                                      ; preds = %bb.ai, %bb.b
  %i.au = call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 1)
  br i1 %i.au, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !3 ; 3 uses
  %.idx = shl nuw nsw i64 %i.ay, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %._crit_edge278, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bc = load i32, ptr %i.aw, align 4, !noundef !3
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.bd = zext i32 %i.bc to i64
  store i64 %i.bd, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4145.0..sroa_idx, align 8
  %i.be = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @96, ptr noundef nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.be, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = icmp eq i64 %i.ay, 1
  br i1 %i.bf, label %._crit_edge278, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  br label %.peel.next

._crit_edge278:                                   ; preds = %bb.i, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.aj, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  %.sroa.4181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4181.0..sroa_idx, align 8
  %i.bh = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @93, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.bh, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %._crit_edge278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !3, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 360
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !3 ; 2 uses
  store i64 %i.bl, ptr %i.l, align 8
  %i.bm = icmp ult i64 %i.bl, 2305843009213693952
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4197.0..sroa_idx, align 8
  %i.bn = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @94, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.bn, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 2)
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %bb.e, %bb.g, %._crit_edge278, %bb.h, %._crit_edge, %bb.a, %_RNvNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB7_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt23debug_state_transitions.exit.thread
  %.sroa.0.0 = phi i1 [ %i.bo, %bb.h ], [ true, %_RNvNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB7_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt23debug_state_transitions.exit.thread ], [ true, %bb.a ], [ true, %._crit_edge ], [ true, %bb.g ], [ true, %._crit_edge278 ], [ true, %bb.e ], [ true, %.peel.next ]
  ret i1 %.sroa.0.0

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.i
  %.sroa.0.0228275 = phi ptr [ %i.bs, %bb.i ], [ %i.bg, %.peel.next.preheader ] ; 2 uses
  %i.bp = load i32, ptr %.sroa.0.0228275, align 4, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 -1, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bq = zext i32 %i.bp to i64
  store i64 %i.bq, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.q, ptr %i.o, align 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4161.0..sroa_idx, align 8
  store ptr %i.p, ptr %i.bb, align 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.4165.0..sroa_idx, align 8
  %i.br = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @97, ptr noundef nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.br, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.peel.next
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0228275, i64 4 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.az
  br i1 %i.bt, label %._crit_edge278, label %.peel.next, !llvm.loop !533

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !535
  store i64 2147483647, ptr %i.j, align 8, !noalias !535
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 21, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26, !noalias !535
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtBJ_12StateIDErrorE6expectBN_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.bu = shl i64 %.sroa.032.0273, %i.ai          ; 5 uses
  %i.bv = add i64 %i.al, %i.bu                    ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.ae
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtBJ_12StateIDErrorE6expectBN_.exit
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bv
  %i.by = load i64, ptr %i.bx, align 8, !noundef !3 ; 3 uses
  store i64 %i.by, ptr %i.w, align 8
  %i.bz = icmp eq i64 %.sroa.032.0273, 0
  br i1 %i.bz, label %bb.n, label %bb.m

bb.l:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtBJ_12StateIDErrorE6expectBN_.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ca = icmp ugt i64 %i.by, -4398046511105
  br i1 %i.ca, label %bb.p, label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.cb = call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 2)
  br i1 %i.cb, label %_RNvNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB7_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt23debug_state_transitions.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %.sroa.032.0273, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.v, ptr %i.u, align 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.477.0..sroa_idx, align 8
  %i.cc = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @101, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br i1 %i.cc, label %_RNvNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB7_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt23debug_state_transitions.exit.thread, label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.cd = call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 2)
  br i1 %i.cd, label %_RNvNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB7_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt23debug_state_transitions.exit.thread, label %bb.o

bb.q:                                             ; preds = %bb.m
  %i.ce = call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 2)
  br i1 %i.ce, label %_RNvNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB7_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt23debug_state_transitions.exit.thread, label %bb.o

bb.r:                                             ; preds = %bb.o
  %or.cond = icmp eq i64 %i.by, -4398046511104
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.w, ptr %i.t, align 8
  store ptr @_RNvXsb_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_15PatternEpsilonsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.493.0..sroa_idx, align 8
  %i.cf = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @78, ptr noundef nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %i.cf, label %_RNvNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB7_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt23debug_state_transitions.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cg = call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 2)
  br i1 %i.cg, label %_RNvNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB7_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt23debug_state_transitions.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = add i64 %i.ap, %i.bu                    ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.bu
  %.not.i.i = icmp ugt i64 %i.ch, %i.ae
  %or.cond.i.i = or i1 %i.ci, %.not.i.i
  br i1 %or.cond.i.i, label %bb.v, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions.exit.i, !prof !214

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.bu, i64 noundef %i.ch, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !538
  unreachable

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions.exit.i: ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bu ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ap ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %.backedge, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions.exit.i
  %.sroa.38.0.i = phi i64 [ 0, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions.exit.i ], [ %i.di, %.backedge ] ; 2 uses
  %.sroa.34.0.i = phi i64 [ 0, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions.exit.i ], [ %.sroa.34.2.i, %.backedge ] ; 3 uses
  %.sroa.28.0.i = phi ptr [ %i.cj, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions.exit.i ], [ %.sroa.28.2.i, %.backedge ] ; 3 uses
  %.sroa.23.0.i = phi i64 [ undef, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions.exit.i ], [ %.sroa.23.7.i, %.backedge ] ; 6 uses
  %.sroa.15.0.i = phi i8 [ undef, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions.exit.i ], [ %.sroa.15.6.i, %.backedge ] ; 2 uses
  %.sroa.9.0.i = phi i8 [ undef, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions.exit.i ], [ %.sroa.9.7.i, %.backedge ] ; 4 uses
  %.sroa.02.0.i = phi i1 [ false, %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_3DFA18sparse_transitions.exit.i ], [ %.sroa.02.2.i, %.backedge ] ; 2 uses
  %i.cl = icmp eq ptr %.sroa.28.0.i, %i.ck
  br i1 %i.cl, label %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.28.0.i, i64 8 ; 3 uses
  %i.cn = add i64 %.sroa.34.0.i, 1                ; 3 uses
  %i.co = load i64, ptr %.sroa.28.0.i, align 8, !noalias !544, !noundef !3 ; 4 uses
  %i.cp = trunc i64 %.sroa.34.0.i to i8           ; 6 uses
  br i1 %.sroa.02.0.i, label %bb.x, label %.backedge.peel.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.cq = icmp eq i64 %.sroa.23.0.i, %i.co
  br i1 %i.cq, label %.backedge.peel.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = icmp ugt i64 %.sroa.23.0.i, 8796093022207
  br i1 %i.cr, label %.loopexit.i, label %.backedge.peel.i.i.i

.backedge.peel.i.i.i:                             ; preds = %bb.y, %bb.x, %.lr.ph.i.i.i
  %.sroa.23.1.i = phi i64 [ %i.co, %.lr.ph.i.i.i ], [ %i.co, %bb.y ], [ %.sroa.23.0.i, %bb.x ] ; 4 uses
  %.sroa.9.1.i = phi i8 [ %i.cp, %.lr.ph.i.i.i ], [ %i.cp, %bb.y ], [ %.sroa.9.0.i, %bb.x ] ; 4 uses
  %i.cs = icmp eq ptr %i.cm, %i.ck
  br i1 %i.cs, label %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %.backedge.peel.i.i.i, %.backedge.i.i.i
  %.sroa.23.3.i = phi i64 [ %.sroa.23.4.i, %.backedge.i.i.i ], [ %.sroa.23.1.i, %.backedge.peel.i.i.i ]
  %.sroa.9.3.i = phi i8 [ %.sroa.9.4.i, %.backedge.i.i.i ], [ %.sroa.9.1.i, %.backedge.peel.i.i.i ]
  %i.ct = phi i64 [ %i.dd, %.backedge.i.i.i ], [ %.sroa.23.1.i, %.backedge.peel.i.i.i ] ; 4 uses
  %i.cu = phi i8 [ %i.db, %.backedge.i.i.i ], [ %i.cp, %.backedge.peel.i.i.i ]
  %i.cv = phi i8 [ %i.de, %.backedge.i.i.i ], [ %.sroa.9.1.i, %.backedge.peel.i.i.i ] ; 2 uses
  %i.cw = phi i64 [ %i.cz, %.backedge.i.i.i ], [ %i.cn, %.backedge.peel.i.i.i ] ; 2 uses
  %i.cx = phi ptr [ %i.cy, %.backedge.i.i.i ], [ %i.cm, %.backedge.peel.i.i.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.cz = add i64 %i.cw, 1                        ; 3 uses
  %i.da = load i64, ptr %i.cx, align 8, !noalias !544, !noundef !3 ; 4 uses
  %i.db = trunc i64 %i.cw to i8                   ; 6 uses
  %i.dc = icmp eq i64 %i.ct, %i.da
  br i1 %i.dc, label %.backedge.i.i.i, label %bb.z

.backedge.i.i.i:                                  ; preds = %bb.z, %.peel.next.i.i.i
  %.sroa.23.4.i = phi i64 [ %i.da, %bb.z ], [ %.sroa.23.3.i, %.peel.next.i.i.i ] ; 2 uses
  %.sroa.9.4.i = phi i8 [ %i.db, %bb.z ], [ %.sroa.9.3.i, %.peel.next.i.i.i ] ; 2 uses
  %i.dd = phi i64 [ %i.da, %bb.z ], [ %i.ct, %.peel.next.i.i.i ] ; 2 uses
  %i.de = phi i8 [ %i.db, %bb.z ], [ %i.cv, %.peel.next.i.i.i ] ; 2 uses
  %i.df = icmp eq ptr %i.cy, %i.ck
  br i1 %i.df, label %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %.peel.next.i.i.i, !llvm.loop !551

bb.z:                                             ; preds = %.peel.next.i.i.i
  %i.dg = icmp ugt i64 %i.ct, 8796093022207
  br i1 %i.dg, label %.loopexit.i, label %.backedge.i.i.i

_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %.backedge.i.i.i, %.backedge.peel.i.i.i, %bb.w
  %.sroa.34.1.i = phi i64 [ %.sroa.34.0.i, %bb.w ], [ %i.cn, %.backedge.peel.i.i.i ], [ %i.cz, %.backedge.i.i.i ]
  %.sroa.23.6.i = phi i64 [ %.sroa.23.0.i, %bb.w ], [ %.sroa.23.1.i, %.backedge.peel.i.i.i ], [ %.sroa.23.4.i, %.backedge.i.i.i ]
  %.sroa.15.5.i = phi i8 [ %.sroa.15.0.i, %bb.w ], [ %i.cp, %.backedge.peel.i.i.i ], [ %i.db, %.backedge.i.i.i ] ; 2 uses
  %.sroa.9.6.i = phi i8 [ %.sroa.9.0.i, %bb.w ], [ %.sroa.9.1.i, %.backedge.peel.i.i.i ], [ %.sroa.9.4.i, %.backedge.i.i.i ]
  %.sroa.104.0.copyload.i.i = phi i64 [ %.sroa.23.0.i, %bb.w ], [ %.sroa.23.1.i, %.backedge.peel.i.i.i ], [ %i.dd, %.backedge.i.i.i ] ; 2 uses
  %.sroa.7.0.copyload.i.i = phi i8 [ %.sroa.9.0.i, %bb.w ], [ %.sroa.9.1.i, %.backedge.peel.i.i.i ], [ %i.de, %.backedge.i.i.i ]
  %.sroa.0.0.copyload.i.i = phi i1 [ %.sroa.02.0.i, %bb.w ], [ true, %.backedge.peel.i.i.i ], [ true, %.backedge.i.i.i ]
  %i.dh = icmp ugt i64 %.sroa.104.0.copyload.i.i, 8796093022207
  %or.cond.i.i.i = select i1 %.sroa.0.0.copyload.i.i, i1 %i.dh, i1 false
  br i1 %or.cond.i.i.i, label %.loopexit.i, label %_RNvNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB7_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt23debug_state_transitions.exit

.loopexit.i:                                      ; preds = %bb.z, %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i, %bb.y
  %.sroa.34.2.i = phi i64 [ %.sroa.34.1.i, %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i ], [ %i.cn, %bb.y ], [ %i.cz, %bb.z ]
  %.sroa.28.2.i = phi ptr [ %i.ck, %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i ], [ %i.cm, %bb.y ], [ %i.cy, %bb.z ]
  %.sroa.23.7.i = phi i64 [ %.sroa.23.6.i, %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i ], [ %i.co, %bb.y ], [ %i.da, %bb.z ]
  %.sroa.15.6.i = phi i8 [ %.sroa.15.5.i, %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i ], [ %i.cp, %bb.y ], [ %i.db, %bb.z ]
  %.sroa.9.7.i = phi i8 [ %.sroa.9.6.i, %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i ], [ %i.cp, %bb.y ], [ %i.db, %bb.z ]
  %.sroa.02.2.i = phi i1 [ false, %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i ], [ true, %bb.y ], [ true, %bb.z ]
  %.sroa.7.024.i.i = phi i8 [ %.sroa.7.0.copyload.i.i, %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i ], [ %.sroa.9.0.i, %bb.y ], [ %i.cv, %bb.z ] ; 3 uses
  %.sroa.9.023.i.i = phi i8 [ %.sroa.15.5.i, %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i ], [ %.sroa.15.0.i, %bb.y ], [ %i.cu, %bb.z ] ; 2 uses
  %.sroa.104.022.i.i = phi i64 [ %.sroa.104.0.copyload.i.i, %_RNvXs6_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB5_20SparseTransitionIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i.i ], [ %.sroa.23.0.i, %bb.y ], [ %i.ct, %bb.z ] ; 3 uses
  %i.di = add i64 %.sroa.38.0.i, 1
  %i.dj = lshr i64 %.sroa.104.022.i.i, 43         ; 2 uses
  %.not.i = icmp eq i64 %.sroa.38.0.i, 0
  br i1 %.not.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %.loopexit.i
  %i.dk = icmp eq i8 %.sroa.7.024.i.i, %.sroa.9.023.i.i
  br i1 %i.dk, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %.loopexit.i
  %i.dl = call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 2), !noalias !552, !inline_history !553
  br i1 %i.dl, label %_RNvNvXs5_NtNtCs98D8VPWzHuM_14regex_automata3dfa7onepassNtB7_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt23debug_state_transitions.exit.thread, label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !552
  store i8 %.sroa.7.024.i.i, ptr %i.f, align 1, !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !552
  store i8 %.sroa.9.023.i.i, ptr %i.e, align 1, !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !552
  store i64 %i.dj, ptr %i.d, align 8, !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !552
  store ptr %i.f, ptr %i.c, align 8, !noalias !552
  store ptr @_RNvXNtNtCs98D8VPWzHuM_14regex_automata4util6escapeNtB2_9DebugByteNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !552
  store ptr %i.e, ptr %i.aq, align 8, !noalias !552
  store ptr @_RNvXNtNtCs98D8VPWzHuM_14regex_automata4util6escapeNtB2_9DebugByteNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !552
  store ptr %i.d, ptr %i.ar, align 8, !noalias !552
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !552
  %i.dm = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noundef nonnull @75, ptr noundef nonnull %i.c), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !552
end_hunk_1
