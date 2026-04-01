begin_hunk_0
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !164
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %22, align 8
  %i.be = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #26
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %bb.c
  store ptr %i.be, ptr %19, align 8, !tbaa !165
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !167
end_hunk_0
begin_hunk_1
  store double 0.000000e+00, ptr %i.cp, align 8, !tbaa !156
  %i.cs = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !164
  %44 = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %44, align 8
  %i.ct = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #26
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.ct, ptr %34, align 8, !tbaa !165
  %i.cu = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 11 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cw = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !167
end_hunk_1
