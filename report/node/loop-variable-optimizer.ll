inline.NumInlined: 769
inline.NumDeleted: 382
begin_hunk_0_@_ZN2v88internal8compiler21LoopVariableOptimizer3RunEv:bb.a
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.cy = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.cz = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64               ; 3 uses
  %i.db = sub i64 %i.cz, %i.da
  %.not.i.i18 = icmp ugt i64 %i.db, %i.cw
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler21LoopVariableOptimizer3RunEv:bb.a
bb.o:                                             ; preds = %bb.n
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIbE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %i.dd)
  %.pre.i.i.i = load ptr, ptr %i.aa, align 8      ; 2 uses
  %.pre.i.i = load ptr, ptr %i.z, align 8         ; 2 uses
  %.pre10.i.i = ptrtoint ptr %.pre.i.i.i to i64
  %.pre11.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %_ZN2v88internal10ZoneVectorIbE14EnsureCapacityEm.exit.i.i.i

_ZN2v88internal10ZoneVectorIbE14EnsureCapacityEm.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.pre-phi12.i.i = phi i64 [ %.pre11.i.i, %bb.o ], [ %i.cz, %bb.n ]
  %.pre-phi.i.i = phi i64 [ %.pre10.i.i, %bb.o ], [ %i.da, %bb.n ]
  %3 = phi ptr [ %.pre.i.i, %bb.o ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dh = phi ptr [ %.pre.i.i.i, %bb.o ], [ %i.cy, %bb.n ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dd ; 2 uses
  %i.dj = icmp ult ptr %3, %i.di
  br i1 %i.dj, label %.lr.ph.i.preheader.i.i, label %_ZN2v88internal10ZoneVectorIbE6resizeEmRKb.exit.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN2v88internal10ZoneVectorIbE14EnsureCapacityEm.exit.i.i.i
  %4 = sub i64 %i.dd, %.pre-phi12.i.i
  %i.dk = add i64 %4, %.pre-phi.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.dk, i1 false)
  %.pre8.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v88internal10ZoneVectorIbE6resizeEmRKb.exit.i.i

end_hunk_1
