Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-hyperscsi?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct.true_false_string = type { ptr, ptr }

@proto_register_hyperscsi.hf = internal global [6 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_hs_res, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hs_tagno, %struct._header_field_info { ptr @.str.2, ptr @.str.3, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hs_lastfrag, %struct._header_field_info { ptr @.str.4, ptr @.str.5, i32 2, i32 8, ptr @tfs_lastfrag, i64 4, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hs_fragno, %struct._header_field_info { ptr @.str.6, ptr @.str.7, i32 5, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hs_ver, %struct._header_field_info { ptr @.str.8, ptr @.str.9, i32 4, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_hs_cmd, %struct._header_field_info { ptr @.str.10, ptr @.str.11, i32 4, i32 1, ptr @hscsi_opcodes, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_hs_res = internal global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"hyperscsi.reserved\00", align 1
@hf_hs_tagno = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Tag No\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"hyperscsi.tagno\00", align 1
@hf_hs_lastfrag = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Last Fragment\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"hyperscsi.lastfrag\00", align 1
@tfs_lastfrag = internal constant %struct.true_false_string { ptr @.str.4, ptr @.str.15 }, align 8
@hf_hs_fragno = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"Fragment No\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"hyperscsi.fragno\00", align 1
@hf_hs_ver = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"HyperSCSI Version\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"hyperscsi.version\00", align 1
@hf_hs_cmd = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"HyperSCSI Command\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"hyperscsi.cmd\00", align 1
@proto_register_hyperscsi.ett = internal global [3 x ptr] [ptr @ett_hyperscsi, ptr @ett_hs_hdr, ptr @ett_hs_pdu], align 16
@ett_hyperscsi = internal global i32 0, align 4
@ett_hs_hdr = internal global i32 0, align 4
@ett_hs_pdu = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"HyperSCSI\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"hyperscsi\00", align 1
@proto_hyperscsi = internal unnamed_addr global i32 0, align 4
@hs_handle = internal unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"ethertype\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Not Last Fragment\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Command Block Encap Request\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Command Block Encap Reply\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Device Discovery Reply\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Auth/Device Neg Request\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Auth/Device Neg Reply\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Disconnect Request\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Flow Control Setup/Ack Request\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Flow Control Ack Reply\00", align 1
@hscsi_opcodes = internal constant [9 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.16 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.17 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.18 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.19 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.20 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.22 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.23 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [17 x i8] c"HyperSCSI Header\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"Unknown HyperSCSI Request or Response (%u)\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"HyperSCSI PDU\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_hyperscsi() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) ; 2 uses
  store i32 %i.a, ptr @proto_hyperscsi, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_hyperscsi.hf, i32 noundef 6)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_hyperscsi.ett, i32 noundef 3)
  %i.b = load i32, ptr @proto_hyperscsi, align 4
  %i.c = tail call ptr @register_dissector(ptr noundef nonnull @.str.13, ptr noundef nonnull @dissect_hyperscsi, i32 noundef %i.b)
  store ptr %i.c, ptr @hs_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_hyperscsi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.12)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = load i32, ptr @proto_hyperscsi, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.f = load i32, ptr @ett_hyperscsi, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 2 uses
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = zext i8 %i.i to i32                      ; 2 uses
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = and i32 %i.l, 768
  %4 = zext i8 %i.j to i32
  %5 = or disjoint i32 %i.m, %4
  %i.n = and i8 %i.h, 15
  %i.o = zext nneg i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 5
  %6 = lshr i32 %i.k, 3
  %i.q = or disjoint i32 %i.p, %6
  %i.r = lshr i8 %i.h, 4
  %i.s = load i32, ptr @ett_hs_hdr, align 4
  %i.t = tail call ptr @proto_tree_add_subtree(ptr noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef %i.s, ptr noundef null, ptr noundef nonnull @.str.25) ; 4 uses
  %i.u = load i32, ptr @hf_hs_res, align 4
  %i.v = zext nneg i8 %i.r to i32
  %i.w = tail call ptr @proto_tree_add_uint(ptr noundef %i.t, i32 noundef %i.u, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.v) ; 0 uses
  %i.x = load i32, ptr @hf_hs_tagno, align 4
  %i.y = tail call ptr @proto_tree_add_uint(ptr noundef %i.t, i32 noundef %i.x, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef %i.q) ; 0 uses
  %i.z = load i32, ptr @hf_hs_lastfrag, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.z, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ab = load i32, ptr @hf_hs_fragno, align 4
  %i.ac = tail call ptr @proto_tree_add_uint(ptr noundef %i.t, i32 noundef %i.ab, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef %5) ; 0 uses
  %i.ad = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.ae = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.af = and i8 %i.ae, 127
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = getelementptr i8, ptr %1, i64 416
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = zext nneg i8 %i.af to i32               ; 2 uses
  %i.ak = tail call ptr @val_to_str(ptr noundef %i.ai, i32 noundef %i.aj, ptr noundef nonnull @hscsi_opcodes, ptr noundef nonnull @.str.26)
  tail call void @col_append_str(ptr noundef %i.ag, i32 noundef 25, ptr noundef %i.ak)
  %i.al = load i32, ptr @ett_hs_pdu, align 4
  %i.am = tail call ptr @proto_tree_add_subtree(ptr noundef %i.g, ptr noundef %0, i32 noundef 3, i32 noundef -1, i32 noundef %i.al, ptr noundef null, ptr noundef nonnull @.str.27) ; 2 uses
  %i.an = load i32, ptr @hf_hs_ver, align 4
  %i.ao = zext i8 %i.ad to i32
  %i.ap = tail call ptr @proto_tree_add_uint(ptr noundef %i.am, i32 noundef %i.an, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef %i.ao) ; 0 uses
  %i.aq = load i32, ptr @hf_hs_cmd, align 4
  %i.ar = tail call ptr @proto_tree_add_uint(ptr noundef %i.am, i32 noundef %i.aq, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef %i.aj) ; 0 uses
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.as = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 0 uses
  %i.at = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.au = and i8 %i.at, 127
  %i.av = load ptr, ptr %i.a, align 8
  %i.aw = getelementptr i8, ptr %1, i64 416
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = zext nneg i8 %i.au to i32
  %i.az = tail call ptr @val_to_str(ptr noundef %i.ax, i32 noundef %i.ay, ptr noundef nonnull @hscsi_opcodes, ptr noundef nonnull @.str.26)
  tail call void @col_append_str(ptr noundef %i.av, i32 noundef 25, ptr noundef %i.az)
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.ba = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.ba
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_hyperscsi() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @hs_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.14, i32 noundef 34970, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
end_hunk_0
