inline.NumInlined: 1500
inline.NumDeleted: 204
begin_hunk_0_@io_initialize
define internal fastcc noundef i64 @io_initialize(i64 noundef returned %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.rb_io_encoding, align 8     ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
end_hunk_0
begin_hunk_1_@io_initialize:bb.a
  unreachable

bb.e:                                             ; preds = %rb_num2int_inline.exit
  %i.l = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 3) #28 ; 6 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.g

end_hunk_1
begin_hunk_2_@io_initialize:bb.a
  %i.w = cmpxchg volatile ptr @max_file_descriptor, i32 %.013.i, i32 %i.i seq_cst seq_cst, align 4
  %i.x = extractvalue { i32, i1 } %i.w, 0         ; 2 uses
  %i.y = icmp ult i32 %i.x, %i.i
  br i1 %i.y, label %.lr.ph.i, label %rb_update_max_fd.exit, !llvm.loop !11

rb_update_max_fd.exit:                            ; preds = %.lr.ph.i, %bb.g
  %i.z = and i32 %i.l, 3
  %i.aa = zext nneg i32 %i.z to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.aa
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
end_hunk_2
begin_hunk_3_@io_initialize:bb.a
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rb_update_max_fd.exit
  %i.ad = shl i32 %i.l, 2
  %i.ae = and i32 %i.ad, 2048
  %i.af = lshr i32 %i.l, 4
  %i.ag = and i32 %i.af, 64
  %spec.select.i = or disjoint i32 %i.ae, %i.ag
  %i.ah = shl i32 %i.l, 1
  %i.ai = and i32 %i.ah, 128
  %.2.i = or disjoint i32 %spec.select.i, %i.ai
  %i.aj = shl i32 %i.l, 3
  %i.ak = and i32 %i.aj, 1024
  %.3.i = or disjoint i32 %.2.i, %i.ak
  %.4.i = or disjoint i32 %.3.i, %switch.load
end_hunk_3
