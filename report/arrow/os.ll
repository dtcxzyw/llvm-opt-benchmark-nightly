begin_hunk_0
  %i.cs = icmp eq ptr %.2.i, null
  br i1 %i.cs, label %mi_os_prim_alloc_aligned.exit.thread, label %mi_os_prim_alloc_aligned.exit.thread27

mi_os_prim_alloc_aligned.exit.thread27:           ; preds = %bb.am, %bb.q, %mi_os_prim_alloc_aligned.exit
  %.2.i31 = phi ptr [ %.2.i, %mi_os_prim_alloc_aligned.exit ], [ %i.bt, %bb.am ], [ %i.an, %bb.q ] ; 2 uses
  %.02330 = phi ptr [ %.023, %mi_os_prim_alloc_aligned.exit ], [ %i.bt, %bb.am ], [ %i.an, %bb.q ] ; 2 uses
  %i.ct = load i8, ptr %i.b, align 1, !tbaa !23, !range !11, !noundef !12
  %i.cu = load i8, ptr %i.a, align 1, !tbaa !23, !range !11, !noundef !12
  %.sroa.5.21.insert.insert = select i1 %2, i64 1099511627780, i64 4
end_hunk_0
begin_hunk_1
  store i64 %i.cy, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  br label %mi_os_prim_alloc_aligned.exit.thread

mi_os_prim_alloc_aligned.exit.thread:             ; preds = %bb.w, %bb.z, %bb.y, %.thread117.i, %_mi_align_up.exit, %mi_os_prim_alloc_aligned.exit, %mi_os_prim_alloc_aligned.exit.thread27
  %.0 = phi ptr [ %.2.i31, %mi_os_prim_alloc_aligned.exit.thread27 ], [ null, %mi_os_prim_alloc_aligned.exit ], [ null, %_mi_align_up.exit ], [ null, %.thread117.i ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.an
end_hunk_1
