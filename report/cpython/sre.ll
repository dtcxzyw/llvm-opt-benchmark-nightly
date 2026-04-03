begin_hunk_0
define internal fastcc ptr @pattern_subx(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef range(i64 0, 2) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.SRE_STATE, align 8          ; 26 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.Py_buffer, align 8          ; 6 uses
end_hunk_0
begin_hunk_1
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #14
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.s, %bb.r, %_Py_NewRef.exit163, %bb.m, %bb.l, %bb.c, %bb.b, %bb.o
  %.293 = phi ptr [ %2, %bb.m ], [ %i.t, %bb.o ], [ %2, %bb.c ], [ %2, %bb.b ], [ %2, %bb.l ], [ %i.x, %_Py_NewRef.exit163 ], [ %i.x, %bb.r ], [ %i.x, %bb.s ] ; 18 uses
  %.not113 = phi i1 [ true, %bb.m ], [ false, %bb.o ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.l ], [ true, %_Py_NewRef.exit163 ], [ true, %bb.r ], [ true, %bb.s ]
  %i.ae = phi i1 [ false, %bb.m ], [ true, %bb.o ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.l ], [ false, %_Py_NewRef.exit163 ], [ false, %bb.r ], [ false, %bb.s ]
  %i.af = call fastcc ptr @state_init(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %3, i64 noundef 0, i64 noundef 9223372036854775807)
  %.not108 = icmp eq ptr %i.af, null
  br i1 %.not108, label %bb.t, label %bb.w
end_hunk_1
begin_hunk_2
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.bf
  %8 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.bf ]
  %.081194 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %bb.bf ] ; 6 uses
  store i32 -1, ptr %i.ao, align 4, !tbaa !85
  store i32 -1, ptr %i.ap, align 8, !tbaa !86
end_hunk_2
begin_hunk_3

bb.bf:                                            ; preds = %Py_DECREF.exit137, %_Py_NewRef.exit165
  %i.da = load i64, ptr %i.a, align 8, !tbaa !70
  %i.db = add i64 %i.da, 1                        ; 4 uses
  store i64 %i.db, ptr %i.a, align 8, !tbaa !70
  %i.dc = load ptr, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.dd = load ptr, ptr %i.at, align 8, !tbaa !78
end_hunk_3
begin_hunk_4

.loopexit:                                        ; preds = %bb.bf, %bb.aa, %bb.ae
  %.081191 = phi i64 [ %.081194, %bb.ae ], [ 0, %bb.aa ], [ %i.bu, %bb.bf ] ; 5 uses
  %9 = phi i64 [ %8, %bb.ae ], [ 0, %bb.aa ], [ %i.db, %bb.bf ]
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !97 ; 4 uses
  %i.dk = icmp slt i64 %.081191, %i.dj
end_hunk_4
begin_hunk_5
  br i1 %.not121, label %.critedge, label %bb.cm

bb.cm:                                            ; preds = %Py_DECREF.exit129
  %i.fn = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.73, ptr noundef nonnull %.3, i64 noundef %9) #14
  br label %.critedge

pattern_error.exit:                               ; preds = %Py_DECREF.exit137, %Py_DECREF.exit139, %bb.at, %Py_DECREF.exit141, %getslice.exit, %state_reset.exit, %bb.ae, %bb.ah, %bb.ag, %bb.af, %Py_DECREF.exit135, %getslice.exit171
end_hunk_5
