inline.NumInlined: 27
inline.NumDeleted: 8
begin_hunk_0_@luaD_poscall:bb.a
  br i1 %.not29, label %._crit_edge.loopexit73, label %.lr.ph, !llvm.loop !91

.critedge:                                        ; preds = %.lr.ph
  %indvar.lcssa = phi i32 [ %indvar, %.lr.ph ]
  %.02532.lcssa = phi ptr [ %.02532, %.lr.ph ]    ; 3 uses
  %.02731.lcssa = phi i32 [ %.02731, %.lr.ph ]    ; 3 uses
end_hunk_0
begin_hunk_1_@luaD_poscall:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol.preheader

.lr.ph40.prol.preheader:                          ; preds = %.lr.ph40.preheader
  %i.dy = zext i3 %lsr.iv81 to i32
  %i.dz = mul nsw i32 %i.dy, -1
  br label %.lr.ph40.prol

end_hunk_1
begin_hunk_2_@luaD_poscall:bb.a
  store i32 0, ptr %i.eb, align 8, !tbaa !21
  %lsr.iv.next = add nsw i32 %lsr.iv, -1          ; 3 uses
  %prol.iter.cmp.not = icmp eq i32 %i.dz, %lsr.iv.next
  %i.ec = add i32 %.02731, %lsr.iv.next
  br i1 %prol.iter.cmp.not, label %.lr.ph40.prol.loopexit.loopexit, label %.lr.ph40.prol, !llvm.loop !92

.lr.ph40.prol.loopexit.loopexit:                  ; preds = %.lr.ph40.prol
end_hunk_2
