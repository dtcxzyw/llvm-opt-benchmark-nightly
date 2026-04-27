inline.NumInlined: 7
begin_hunk_0_@hypre_CSRMatrixRead:bb.a
  br label %hypre_CSRMatrixInitialize.exit

hypre_CSRMatrixInitialize.exit:                   ; preds = %.thread, %bb.d
  %i.ae = phi ptr [ %i.ab, %.thread ], [ %i.ad, %bb.d ]
  %i.af = icmp sgt i32 %i.o, 0
  br i1 %i.af, label %.lr.ph51.preheader, label %._crit_edge52

end_hunk_0
begin_hunk_1_@hypre_CSRMatrixClone:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %or.cond3.i = and i1 %i.w, %i.l
  br i1 %or.cond3.i, label %bb.e, label %hypre_CSRMatrixInitialize.exit

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@hypre_CSRMatrixUnion:bb.a
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !20 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, null
  %or.cond3.i = and i1 %i.hn, %i.hc
  br i1 %or.cond3.i, label %bb.o, label %hypre_CSRMatrixInitialize.exit

bb.o:                                             ; preds = %bb.n
end_hunk_2
