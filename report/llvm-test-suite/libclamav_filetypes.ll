begin_hunk_0
@.str.2 = private unnamed_addr constant [52 x i8] c"cli_filetype2: Error initializing entity converter\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Recognized old fashioned tar file\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Recognized POSIX tar file\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"CD001\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Recognized ISO 9660 CD-ROM data\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"CDROM\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Recognized High Sierra CD-ROM data\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"cli_addtypesigs: Need to allocate AC trie in engine->root[0]\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"cli_addtypesigs: Can't initialise AC pattern matcher\0A\00", align 1
end_hunk_0
begin_hunk_1
  br label %.thread109.sink.split

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 32769
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.bv, ptr noundef nonnull dereferenceable(5) @.str.5, i64 5)
  %.not88 = icmp eq i32 %bcmp, 0
  br i1 %.not88, label %.thread109.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 37633
  %bcmp89 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.bw, ptr noundef nonnull dereferenceable(5) @.str.5, i64 5)
  %.not90 = icmp eq i32 %bcmp89, 0
  br i1 %.not90, label %.thread109.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32776
  %bcmp91 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.bx, ptr noundef nonnull dereferenceable(5) @.str.7, i64 5)
  %.not92 = icmp eq i32 %bcmp91, 0
  br i1 %.not92, label %.thread109.sink.split, label %.thread109

.thread109.sink.split:                            ; preds = %bb.z, %bb.x, %bb.y, %bb.v, %bb.w
end_hunk_1
