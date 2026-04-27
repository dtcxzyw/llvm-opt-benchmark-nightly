inline.NumInlined: 960
inline.NumDeleted: 496
begin_hunk_0_@_ZN6hermes2vm26hermesInternalGetEpiloguesEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.q = phi i64 [ 0, %.lr.ph ], [ %i.bx, %.critedge ] ; 2 uses
  %.02548 = phi i32 [ 0, %.lr.ph ], [ %i.bw, %.critedge ] ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 3 uses
  %.not = icmp eq i64 %i.u, 0
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm26hermesInternalGetEpiloguesEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = load ptr, ptr %3, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.q
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.aq, i64 %i.u, i1 false)
  %.sroa.0.0.copyload.i.i.i32 = load i64, ptr %i.w, align 8, !tbaa !16
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br label %_ZN6hermes2vmL27getCJSModuleModeDescriptionERNS0_7RuntimeE.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.016.025.i = phi ptr [ %.sroa.016.0.i, %.lr.ph.i ], [ %.sroa.016.021.i, %bb.l ] ; 2 uses
  %.01024.i = phi i1 [ %spec.select.i, %.lr.ph.i ], [ false, %bb.l ]
  %.01123.i = phi i1 [ %.112.i, %.lr.ph.i ], [ false, %bb.l ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !344 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 200
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br i1 %.not.i135, label %._crit_edge.i, label %.lr.ph.i

_ZN6hermes2vmL27getCJSModuleModeDescriptionERNS0_7RuntimeE.exit: ; preds = %._crit_edge.i, %bb.l
  %i.da = phi ptr [ @.str.40, %bb.l ], [ %spec.select, %._crit_edge.i ]
  %i.db = call { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef nonnull %i.da) #16 ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.db, 0      ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.db, 1      ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej:bb.a
  store i8 0, ptr %i.b, align 8, !tbaa !25
  %i.d = zext i32 %2 to i64
  %i.e = load ptr, ptr %1, align 8, !tbaa !419
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !422  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_4
