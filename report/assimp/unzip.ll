begin_hunk_0
unzStringFileNameCompare.exit:                    ; preds = %bb.f, %bb.g
  %.0.i31 = phi i32 [ %i.x, %bb.f ], [ %i.ag, %bb.g ]
  %i.aj = icmp eq i32 %.0.i31, 0
  br i1 %i.aj, label %.critedge, label %unzStringFileNameCompare.exit.thread

unzStringFileNameCompare.exit.thread:             ; preds = %bb.h, %unzStringFileNameCompare.exit
  %i.ak = load i64, ptr %i.e, align 8
end_hunk_0
begin_hunk_1
  store i64 %.sroa.0.0.copyload, ptr %i.k, align 8
  br label %bb.j

.critedge:                                        ; preds = %unzStringFileNameCompare.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.c, %bb.b, %bb.a, %._crit_edge
  %.2 = phi i32 [ -102, %bb.b ], [ -102, %bb.a ], [ 0, %.critedge ], [ %.025.lcssa, %._crit_edge ], [ -100, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %.2
}
end_hunk_1
