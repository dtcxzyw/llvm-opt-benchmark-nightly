Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mysqlx?download=true
begin_hunk_0
@.str.17 = private unnamed_addr constant [44 x i8] c"message,Mysqlx.Session.AuthenticateContinue\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"message,Mysqlx.Session.Reset\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"message,Mysqlx.Session.Close\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"message,Mysqlx.Sql.StmtExecute\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"message,Mysqlx.Crud.Find\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"message,Mysqlx.Crud.Insert\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"message,Mysqlx.Crud.Update\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"message,Mysqlx.Crud.Delete\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"message,Mysqlx.Expect.Open\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"message,Mysqlx.Expect.Close\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"message,Mysqlx.Crud.CreateView\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"message,Mysqlx.Crud.ModifyView\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"message,Mysqlx.Crud.DropView\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"message,Mysqlx.Prepare.Prepare\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"message,Mysqlx.Prepare.Execute\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"message,Mysqlx.Prepare.Deallocate\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"message,Mysqlx.Cursor.Open\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"message,Mysqlx.Cursor.Close\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"message,Mysqlx.Cursor.Fetch\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"message,Mysqlx.Connection.Compression\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"message,Mysqlx.Ok\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"message,Mysqlx.Error\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"message,Mysqlx.Connection.Capabilities\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"message,Mysqlx.Session.AuthenticateOk\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"message,Mysqlx.Notice.Frame\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"message,Mysqlx.Resultset.ColumnMetaData\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"message,Mysqlx.Resultset.Row\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"message,Mysqlx.Resultset.FetchDone\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"message,Mysqlx.Resultset.FetchSuspended\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"message,Mysqlx.Resultset.FetchDoneMoreResultsets\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"message,Mysqlx.Sql.StmtExecuteOk\00", align 1
@.str.48 = private unnamed_addr constant [48 x i8] c"message,Mysqlx.Resultset.FetchDoneMoreOutParams\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"can not link message type %d to a message\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"Mysqlx.Connection.CapabilitiesGet\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"Mysqlx.Connection.CapabilitiesSet\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"Mysqlx.Connection.Close\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"Mysqlx.Session.AuthenticateStart\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"Mysqlx.Session.AuthenticateContinue\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"Mysqlx.Session.Reset\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"Mysqlx.Session.Close\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"Mysqlx.Sql.StmtExecute\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"Mysqlx.Crud.Find\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"Mysqlx.Crud.Insert\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"Mysqlx.Crud.Update\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"Mysqlx.Crud.Delete\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"Mysqlx.Expect.Open\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"Mysqlx.Expect.Close\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"Mysqlx.Crud.CreateView\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"Mysqlx.Crud.ModifyView\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"Mysqlx.Crud.DropView\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"Mysqlx.Prepare.Prepare\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"Mysqlx.Prepare.Execute\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"Mysqlx.Prepare.Deallocate\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"Mysqlx.Cursor.Open\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"Mysqlx.Cursor.Close\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"Mysqlx.Cursor.Fetch\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"Mysqlx.Connection.Compression\00", align 1
@message_type_vals_client = internal constant [25 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.50 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.51 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.52 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.53 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.54 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.55 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.56 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.57 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.58 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.59 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.60 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.61 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.62 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.63 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.64 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.65 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.66 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.67 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.68 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.69 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.70 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.71 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.72 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.73 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [10 x i8] c"Mysqlx.Ok\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"Mysqlx.Error\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"Mysqlx.Connection.Capabilities\00", align 1
@.str.78 = private unnamed_addr constant [30 x i8] c"Mysqlx.Session.AuthenticateOk\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"Mysqlx.Notice.Frame\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"Mysqlx.Resultset.ColumnMetaData\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"Mysqlx.Resultset.Row\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"Mysqlx.Resultset.FetchDone\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"Mysqlx.Resultset.FetchSuspended\00", align 1
@.str.84 = private unnamed_addr constant [41 x i8] c"Mysqlx.Resultset.FetchDoneMoreResultsets\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"Mysqlx.Sql.StmtExecuteOk\00", align 1
@.str.86 = private unnamed_addr constant [40 x i8] c"Mysqlx.Resultset.FetchDoneMoreOutParams\00", align 1
@message_type_vals_server = internal constant [15 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.75 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.76 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.77 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.54 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.78 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.79 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.80 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.81 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.82 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.83 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.84 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.85 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.73 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@switch.table.dissect_mysqlx_pdu = private unnamed_addr constant [46 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.20, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr poison, ptr poison, ptr poison, ptr @.str.25, ptr @.str.26, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], align 8
@switch.table.dissect_mysqlx_pdu.1 = private unnamed_addr constant [20 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.17, ptr @.str.40, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.36], align 8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_mysqlx() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.6, ptr noundef @.str.7, ptr noundef @.str.8) ; 2 uses
  store i32 %i.a, ptr @proto_mysqlx, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_mysqlx.hf, i32 noundef 2)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_mysqlx.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_mysqlx, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef @proto_register_mysqlx.ei, i32 noundef 1)
  %i.d = load i32, ptr @proto_mysqlx, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef @.str.8, ptr noundef @dissect_mysqlx, i32 noundef %i.d)
  store ptr %i.e, ptr @mysqlx_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_mysqlx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.b, i32 noundef 25)
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, i32 noundef 5, ptr noundef @get_mysqlx_pdu_len, ptr noundef @dissect_mysqlx_pdu, ptr noundef %3)
  %i.c = tail call i32 @tvb_reported_length(ptr noundef %0)
  ret i32 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_mysqlx() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_mysqlx, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.9, i32 noundef %i.a)
  store ptr %i.b, ptr @mysqlx_protobuf_handle, align 8
  %i.c = load ptr, ptr @mysqlx_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef @.str.10, i32 noundef 33060, ptr noundef %i.c)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @get_mysqlx_pdu_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_get_uint32(ptr noundef %1, i32 noundef %2, i32 noundef -2147483648)
  %i.b = add i32 %i.a, 4
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_mysqlx_pdu(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef @.str.8)
  %i.d = load i32, ptr @proto_mysqlx, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.f = load i32, ptr @ett_mysqlx, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 4 uses
  %i.h = load i32, ptr @hf_mysqlx_packet_length, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.j = load i32, ptr @hf_mysqlx_message_type, align 4
  %i.k = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.l = getelementptr i8, ptr %1, i64 292
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr i8, ptr %1, i64 296
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.m, %i.o
  %i.q = getelementptr i8, ptr %1, i64 416
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = load i8, ptr %i.a, align 1
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = call ptr @val_to_str(ptr noundef %i.r, i32 noundef %i.t, ptr noundef @message_type_vals_client, ptr noundef @.str.12)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.e, ptr noundef @.str.11, ptr noundef %i.u)
  %i.v = load i8, ptr %i.a, align 1               ; 3 uses
  %switch.tableidx = add i8 %i.v, -1              ; 3 uses
  %i.w = icmp ult i8 %switch.tableidx, 46
  br i1 %i.w, label %switch.hole_check, label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.x = call ptr @val_to_str(ptr noundef %i.r, i32 noundef %i.t, ptr noundef @message_type_vals_server, ptr noundef @.str.12)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.e, ptr noundef @.str.11, ptr noundef %i.x)
  %i.y = load i8, ptr %i.a, align 1               ; 4 uses
  %i.z = icmp ult i8 %i.y, 20
  %switch.maskindex36 = zext nneg i8 %i.y to i32
  %switch.shifted37 = lshr i32 1046559, %switch.maskindex36
  %switch.lobit38 = trunc i32 %switch.shifted37 to i1
  %or.cond = select i1 %i.z, i1 %switch.lobit38, i1 false
  br i1 %or.cond, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.c, %switch.hole_check, %bb.b
  %i.aa = phi i8 [ %i.y, %bb.c ], [ %i.v, %bb.b ], [ %i.v, %switch.hole_check ]
  %i.ab = zext i8 %i.aa to i32
  %i.ac = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.g, ptr noundef @ei_mysqlx_unknown_message_type, ptr noundef @.str.49, i32 noundef %i.ab) ; 0 uses
  br label %bb.e

switch.hole_check:                                ; preds = %bb.b
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 69822772611199, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c, %switch.hole_check
  %.sink41 = phi i8 [ %switch.tableidx, %switch.hole_check ], [ %i.y, %bb.c ]
  %.0.in = phi ptr [ @switch.table.dissect_mysqlx_pdu, %switch.hole_check ], [ @switch.table.dissect_mysqlx_pdu.1, %bb.c ]
  %4 = zext nneg i8 %.sink41 to i64
  %switch.gep39 = getelementptr inbounds nuw [8 x i8], ptr %.0.in, i64 %4
  %.0 = load ptr, ptr %switch.gep39, align 8
  %i.ad = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 5)
  %i.ae = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 5, i32 noundef %i.ad)
  %i.af = load ptr, ptr @mysqlx_protobuf_handle, align 8
  %i.ag = call i32 @call_dissector_with_data(ptr noundef %i.af, ptr noundef %i.ae, ptr noundef %1, ptr noundef %i.g, ptr noundef nonnull %.0)
  %i.ah = add i32 %i.ag, 5
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %.032 = phi i32 [ 5, %.critedge ], [ %i.ah, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.032
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_with_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
end_hunk_0
