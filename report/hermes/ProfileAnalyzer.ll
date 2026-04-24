inline.NumInlined: 3091
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6hermes15ProfileAnalyzer19dumpBasicBlockStatsEv:bb.a
  br i1 %i.rq, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rr = icmp ult i16 %i.rm, 10000
  %..a = select i1 %i.rr, i32 4, i32 5
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.cy, %bb.cx, %.lr.ph.i.i67, %_ZNSt7__cxx119to_stringEm.exit64
  %.0.i.i68 = phi i32 [ %..a, %bb.cy ], [ 3, %bb.cx ], [ 2, %.lr.ph.i.i67 ], [ 1, %_ZNSt7__cxx119to_stringEm.exit64 ] ; 2 uses
  %25 = zext nneg i32 %.0.i.i68 to i64
  store ptr %i.kx, ptr %20, align 8, !tbaa !107, !alias.scope !539
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %25, i8 noundef signext 45) #22
  %i.rs = load ptr, ptr %20, align 8, !tbaa !50, !alias.scope !539 ; 4 uses
  %i.rt = icmp ugt i16 %i.rm, 99
  br i1 %i.rt, label %.lr.ph.preheader.i.i72, label %._crit_edge.i.i69

.lr.ph.preheader.i.i72:                           ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %26 = add nsw i32 %.0.i.i68, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i72
  %.020.i.i73 = phi i32 [ %i.rw, %.lr.ph.i11.i ], [ %i.rn, %.lr.ph.preheader.i.i72 ] ; 3 uses
  %.01819.i.i74 = phi i32 [ %i.sh, %.lr.ph.i11.i ], [ %26, %.lr.ph.preheader.i.i72 ] ; 3 uses
  %i.ru = urem i32 %.020.i.i73, 100
  %i.rv = shl nuw nsw i32 %i.ru, 1
  %i.rw = udiv i32 %.020.i.i73, 100               ; 2 uses
end_hunk_0
