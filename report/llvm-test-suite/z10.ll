inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@CrossExpand:bb.a
bb.j:                                             ; preds = %bb.i
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(10) @.str.8) #10
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(13) @.str.9) #10
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.aa, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(10) @.str.10) #10
end_hunk_0
begin_hunk_1_@CrossExpand:bb.a
  call void @AttachEnv(ptr noundef %1, ptr noundef %i.bs) #9
  br label %bb.bd

bb.aa:                                            ; preds = %bb.k, %bb.j, %bb.l
  %trunc166 = phi i8 [ 127, %bb.l ], [ -128, %bb.k ], [ -122, %bb.j ]
  %5 = phi i64 [ 127, %bb.l ], [ 128, %bb.k ], [ 134, %bb.j ]
  %6 = phi i32 [ 127, %bb.l ], [ 128, %bb.k ], [ 134, %bb.j ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 41
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = and i16 %i.by, 2
end_hunk_1
begin_hunk_2_@CrossExpand:bb.a
  %i.cu = call ptr @StringInt(i32 noundef %i.cn) #9
  %i.cv = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.cu) #9 ; 0 uses
  %i.cw = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ag) #9
  %i.cx = call ptr @CrossMake(ptr noundef nonnull %i.af, ptr noundef %i.cw, i32 noundef %6) ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %5
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8   ; 2 uses
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  store i32 %i.da, ptr @zz_size, align 4, !tbaa !4
end_hunk_2
