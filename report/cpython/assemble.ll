inline.NumInlined: 78
inline.NumDeleted: 37
begin_hunk_0_@_PyAssemble_MakeCodeObject:bb.a
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %i.i = alloca ptr, align 8                      ; 9 uses
  %9 = alloca %struct._PyCodeConstructor, align 8 ; 22 uses
  %10 = alloca %struct.assembler, align 8         ; 24 uses
  %i.j = tail call i32 @_PyInstructionSequence_ApplyLabelMap(ptr noundef %4) #5
end_hunk_0
begin_hunk_1_@_PyAssemble_MakeCodeObject:bb.a
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !65
  %i.nb = trunc i64 %i.na to i32
  %i.nc = sext i32 %5 to i64                      ; 2 uses
  %i.nd = call ptr @PyTuple_New(i64 noundef %i.nc) #5 ; 2 uses
  store ptr %i.nd, ptr %i.i, align 8, !tbaa !55
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %bb.cg, label %bb.bn
end_hunk_1
begin_hunk_2_@_PyAssemble_MakeCodeObject:bb.a
  br i1 %i.ng, label %bb.cg, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %11 = load ptr, ptr %i.i, align 8, !tbaa !55    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
end_hunk_2
begin_hunk_3_@_PyAssemble_MakeCodeObject:bb.a
  %i.pa = or i8 %spec.select77.i.i, 64
  %spec.select78.i.i = select i1 %.not71.i.i, i8 %spec.select77.i.i, i8 %i.pa
  %i.pb = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.oo, ptr noundef %i.pb, i8 noundef zeroext %spec.select78.i.i, ptr noundef %11, ptr noundef nonnull %i.nf) #5
  %i.pc = load i64, ptr %i.c, align 8, !tbaa !57
  %i.pd = icmp slt i64 %i.pc, %i.oh
  br i1 %i.pd, label %bb.bq, label %.critedge.i36.i, !llvm.loop !72
end_hunk_3
begin_hunk_4_@_PyAssemble_MakeCodeObject:bb.a
  %i.ps = add i32 %.053.neg94.i.i, %i.pg
  %i.pt = add i32 %i.ps, %i.pp
  %i.pu = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.pt, ptr noundef %i.pu, i8 noundef zeroext 64, ptr noundef %11, ptr noundef nonnull %i.nf) #5
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
end_hunk_4
begin_hunk_5_@_PyAssemble_MakeCodeObject:bb.a
.critedge83.i.i:                                  ; preds = %bb.cd, %bb.cc
  %i.qf = add i32 %i.qa, %i.qc
  %i.qg = load ptr, ptr %i.a, align 8, !tbaa !55
  call void @_Py_set_localsplus_info(i32 noundef %i.qf, ptr noundef %i.qg, i8 noundef zeroext -128, ptr noundef %11, ptr noundef nonnull %i.nf) #5
  %i.qh = load ptr, ptr %i.px, align 8, !tbaa !75
  %i.qi = call i32 @PyDict_Next(ptr noundef %i.qh, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not73.i.i = icmp eq i32 %i.qi, 0
end_hunk_5
begin_hunk_6_@_PyAssemble_MakeCodeObject:bb.a
  %i.ra = load ptr, ptr %i.g, align 8, !tbaa !55
  store ptr %i.ra, ptr %i.qz, align 8, !tbaa !88
  %i.rb = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %12 = load ptr, ptr %i.i, align 8, !tbaa !55
  store ptr %12, ptr %i.rb, align 8, !tbaa !89
  %i.rc = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %i.nf, ptr %i.rc, align 8, !tbaa !90
  %i.rd = getelementptr inbounds nuw i8, ptr %9, i64 88
end_hunk_6
