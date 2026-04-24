inline.NumInlined: 1739
inline.NumDeleted: 636
begin_hunk_0_@_ZN6hermes3hbc12_GLOBAL__N_111SLPToStringB5cxx11EhPKhPi:._crit_edge.i.i
  %i.f = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.0.copyload.i = load i8, ptr %i.h, align 1     ; 7 uses
  %i.i = add nsw i32 %i.f, 1
  store i32 %i.i, ptr %3, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc12_GLOBAL__N_111SLPToStringB5cxx11EhPKhPi:._crit_edge.i.i
  store i8 0, ptr %i.l, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.m = icmp ult i8 %.0.copyload.i, 10
  %20 = icmp ugt i8 %.0.copyload.i, 99            ; 2 uses
  %. = select i1 %20, i64 3, i64 2
  %i.n = select i1 %i.m, i64 1, i64 %.
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !83, !alias.scope !84
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.n, i8 noundef signext 45) #19
  %i.p = load ptr, ptr %7, align 8, !tbaa !21, !alias.scope !84 ; 4 uses
  br i1 %20, label %._crit_edge.i.i22.thread, label %._crit_edge.i.i22

._crit_edge.i.i22.thread:                         ; preds = %._crit_edge.i.i20
  %i.q = urem i8 %.0.copyload.i, 100
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc12_GLOBAL__N_111SLPToStringB5cxx11EhPKhPi:._crit_edge.i.i
  %i.u = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7, !noalias !84
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !7
  %i.y = load i8, ptr %i.u, align 2, !tbaa !7, !noalias !84
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !7
  br label %bb.b

end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc12_GLOBAL__N_111SLPToStringB5cxx11EhPKhPi:._crit_edge.i.i
  br i1 %i.dr, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i39, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ds = icmp ult i16 %.0.copyload.i33, 10000    ; 2 uses
  %.206 = select i1 %i.ds, i64 4, i64 5
  %.204 = select i1 %i.ds, i32 3, i32 4
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i39

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i39:  ; preds = %bb.m, %bb.l, %.lr.ph.i.i36, %._crit_edge.i.i34
  %.0.i.i40 = phi i64 [ %.206, %bb.m ], [ 3, %bb.l ], [ 2, %.lr.ph.i.i36 ], [ 1, %._crit_edge.i.i34 ]
  %21 = phi i32 [ %.204, %bb.m ], [ 2, %bb.l ], [ 1, %.lr.ph.i.i36 ], [ 0, %._crit_edge.i.i34 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.dt, ptr %10, align 8, !tbaa !83, !alias.scope !93
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %.0.i.i40, i8 noundef signext 45) #19
  %i.du = load ptr, ptr %10, align 8, !tbaa !21, !alias.scope !93 ; 4 uses
  %i.dv = icmp ugt i16 %.0.copyload.i33, 99
  br i1 %i.dv, label %.lr.ph.i11.i46, label %._crit_edge.i.i42

.lr.ph.i11.i46:                                   ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i39, %.lr.ph.i11.i46
  %.020.i.i47 = phi i32 [ %i.dy, %.lr.ph.i11.i46 ], [ %i.do, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i39 ] ; 3 uses
  %.01819.i.i48 = phi i32 [ %i.ej, %.lr.ph.i11.i46 ], [ %21, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i39 ] ; 3 uses
  %i.dw = urem i32 %.020.i.i47, 100
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = udiv i32 %.020.i.i47, 100               ; 2 uses
end_hunk_3
