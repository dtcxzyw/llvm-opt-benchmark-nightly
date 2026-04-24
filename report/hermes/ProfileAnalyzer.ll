inline.NumInlined: 3091
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEv:bb.a
  br i1 %i.rq, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rr = icmp ult i16 %i.rm, 10000               ; 2 uses
  %. = select i1 %i.rr, i64 4, i64 5
  %..a = select i1 %i.rr, i32 3, i32 4
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.cy, %bb.cx, %.lr.ph.i.i67, %_ZNSt7__cxx119to_stringEm.exit64
  %.0.i.i68 = phi i64 [ %., %bb.cy ], [ 3, %bb.cx ], [ 2, %.lr.ph.i.i67 ], [ 1, %_ZNSt7__cxx119to_stringEm.exit64 ]
  %25 = phi i32 [ %..a, %bb.cy ], [ 2, %bb.cx ], [ 1, %.lr.ph.i.i67 ], [ 0, %_ZNSt7__cxx119to_stringEm.exit64 ]
  store ptr %i.kx, ptr %20, align 8, !tbaa !107, !alias.scope !539
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %.0.i.i68, i8 noundef signext 45) #22
  %i.rs = load ptr, ptr %20, align 8, !tbaa !50, !alias.scope !539 ; 4 uses
  %i.rt = icmp ugt i16 %i.rm, 99
  br i1 %i.rt, label %.lr.ph.i11.i, label %._crit_edge.i.i69

.lr.ph.i11.i:                                     ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %.lr.ph.i11.i
  %.020.i.i73 = phi i32 [ %i.rw, %.lr.ph.i11.i ], [ %i.rn, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ] ; 3 uses
  %.01819.i.i74 = phi i32 [ %i.sh, %.lr.ph.i11.i ], [ %25, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ] ; 3 uses
  %i.ru = urem i32 %.020.i.i73, 100
  %i.rv = shl nuw nsw i32 %i.ru, 1
  %i.rw = udiv i32 %.020.i.i73, 100               ; 2 uses
end_hunk_0
