inline.NumInlined: 797
inline.NumDeleted: 120
begin_hunk_0_@inf_BackwardSortResolution:bb.a
  %i.ag = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.ah = call ptr @st_GetUnifier(ptr noundef %i.af, ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull %.0.i163165) #12 ; 2 uses
  %.not169183 = icmp eq ptr %i.ah, null
  br i1 %.not169183, label %clause_LiteralIsSort.exit.thread, label %.lr.ph187.preheader

.lr.ph187.preheader:                              ; preds = %bb.d
  %6 = insertelement <2 x ptr> <ptr null, ptr poison>, ptr %i.q, i64 1
  br label %.lr.ph187

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %term_IsAtom.exit.thread
  %.1185 = phi ptr [ %.5, %term_IsAtom.exit.thread ], [ %.0191, %.lr.ph187.preheader ] ; 5 uses
  %.070184 = phi ptr [ %.val.i158, %term_IsAtom.exit.thread ], [ %i.ah, %.lr.ph187.preheader ] ; 4 uses
  %i.ai = getelementptr i8, ptr %.070184, i64 8
  %.070.val92 = load ptr, ptr %i.ai, align 8      ; 3 uses
  %.val102 = load i32, ptr %.070.val92, align 8   ; 2 uses
end_hunk_0
begin_hunk_1_@inf_BackwardSortResolution:bb.a
  %i.cb = call ptr @clause_Copy(ptr noundef %0) #12 ; 3 uses
  %i.cc = getelementptr i8, ptr %.val104, i64 52
  %.val110 = load i32, ptr %i.cc, align 4
  %i.cd = call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  store <2 x ptr> %6, ptr %i.cd, align 8
  call void @clause_RenameVarsBiggerThan(ptr noundef %i.cb, i32 noundef %.val110) #12
  %i.ce = getelementptr i8, ptr %i.cb, i64 56
  %.val109 = load ptr, ptr %i.ce, align 8
end_hunk_1
begin_hunk_2_@inf_BackwardEmptySort:bb.a
  %i.ag = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.ah = call ptr @st_GetUnifier(ptr noundef %i.af, ptr noundef %1, ptr noundef %i.ag, ptr noundef nonnull %.0.i196198) #12 ; 2 uses
  %.not202221 = icmp eq ptr %i.ah, null
  br i1 %.not202221, label %clause_LiteralIsSort.exit.thread, label %.lr.ph225.preheader

.lr.ph225.preheader:                              ; preds = %bb.d
  %6 = insertelement <2 x ptr> <ptr null, ptr poison>, ptr %i.q, i64 1
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %term_IsAtom.exit.thread
  %.1223 = phi ptr [ %.6, %term_IsAtom.exit.thread ], [ %.0229, %.lr.ph225.preheader ] ; 5 uses
  %.084222 = phi ptr [ %.val.i191, %term_IsAtom.exit.thread ], [ %i.ah, %.lr.ph225.preheader ] ; 4 uses
  %i.ai = getelementptr i8, ptr %.084222, i64 8
  %.084.val112 = load ptr, ptr %i.ai, align 8     ; 3 uses
  %.val123 = load i32, ptr %.084.val112, align 8  ; 2 uses
end_hunk_2
begin_hunk_3_@inf_BackwardEmptySort:bb.a
  %i.cu = call ptr @clause_Copy(ptr noundef %0) #12 ; 3 uses
  %i.cv = getelementptr i8, ptr %.val125, i64 52
  %.val133 = load i32, ptr %i.cv, align 4
  %i.cw = call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  store <2 x ptr> %6, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @clause_RenameVarsBiggerThan(ptr noundef %i.cu, i32 noundef %.val133) #12
end_hunk_3
