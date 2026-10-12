Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/swnode?download=true
inline.NumInlined: 122
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_is_software_node: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad is_software_node ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_to_software_node: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad to_software_node ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_fwnode: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad software_node_fwnode ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_property_entries_dup: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad property_entries_dup ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_property_entries_free: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad property_entries_free ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_find_by_name: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad software_node_find_by_name ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_register_node_group: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad software_node_register_node_group ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_unregister_node_group: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad software_node_unregister_node_group ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_register: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad software_node_register ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_unregister: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad software_node_unregister ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fwnode_create_software_node: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad fwnode_create_software_node ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fwnode_remove_software_node: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad fwnode_remove_software_node ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_device_add_software_node: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad device_add_software_node ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_device_remove_software_node: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad device_remove_software_node ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_device_create_managed_software_node: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad device_create_managed_software_node ; .previous"

%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }

@software_node_ops = internal constant %struct.fwnode_operations { ptr @software_node_get, ptr @software_node_put, ptr null, ptr null, ptr null, ptr null, ptr @software_node_property_present, ptr @software_node_property_present, ptr @software_node_read_int_array, ptr @software_node_read_string_array, ptr @software_node_get_name, ptr @software_node_get_name_prefix, ptr @software_node_get_parent, ptr @software_node_get_next_child, ptr @software_node_get_named_child_node, ptr @software_node_get_reference_args, ptr @software_node_graph_get_next_endpoint, ptr @software_node_graph_get_remote_endpoint, ptr @software_node_graph_get_port_parent, ptr @software_node_graph_parse_endpoint, ptr null, ptr null, ptr null }, align 8
@__UNIQUE_ID_addressable_is_software_node_448 = internal global ptr @is_software_node, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_to_software_node_449 = internal global ptr @to_software_node, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_software_node_fwnode_450 = internal global ptr @software_node_fwnode, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_property_entries_dup_453 = internal global ptr @property_entries_dup, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_property_entries_free_454 = internal global ptr @property_entries_free, section ".discard.addressable", align 8
@swnode_kset = internal unnamed_addr global ptr null, align 8
@__UNIQUE_ID_addressable_software_node_find_by_name_455 = internal global ptr @software_node_find_by_name, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_software_node_register_node_group_456 = internal global ptr @software_node_register_node_group, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_software_node_unregister_node_group_457 = internal global ptr @software_node_unregister_node_group, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_software_node_register_458 = internal global ptr @software_node_register, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_software_node_unregister_459 = internal global ptr @software_node_unregister, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_fwnode_create_software_node_460 = internal global ptr @fwnode_create_software_node, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_fwnode_remove_software_node_461 = internal global ptr @fwnode_remove_software_node, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_device_add_software_node_462 = internal global ptr @device_add_software_node, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_device_remove_software_node_463 = internal global ptr @device_remove_software_node, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_device_create_managed_software_node_464 = internal global ptr @device_create_managed_software_node, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [14 x i8] c"software_node\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"software_nodes\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"\013failed to register software nodes\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"port@\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@swnode_root_ids = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 8
@software_node_type = internal constant %struct.kobj_type { ptr @software_node_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"node%d\00", align 1
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 8
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_addressable_device_add_software_node_462, ptr @__UNIQUE_ID_addressable_device_create_managed_software_node_464, ptr @__UNIQUE_ID_addressable_device_remove_software_node_463, ptr @__UNIQUE_ID_addressable_fwnode_create_software_node_460, ptr @__UNIQUE_ID_addressable_fwnode_remove_software_node_461, ptr @__UNIQUE_ID_addressable_is_software_node_448, ptr @__UNIQUE_ID_addressable_property_entries_dup_453, ptr @__UNIQUE_ID_addressable_property_entries_free_454, ptr @__UNIQUE_ID_addressable_software_node_find_by_name_455, ptr @__UNIQUE_ID_addressable_software_node_fwnode_450, ptr @__UNIQUE_ID_addressable_software_node_register_458, ptr @__UNIQUE_ID_addressable_software_node_register_node_group_456, ptr @__UNIQUE_ID_addressable_software_node_unregister_459, ptr @__UNIQUE_ID_addressable_software_node_unregister_node_group_457, ptr @__UNIQUE_ID_addressable_to_software_node_449], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @is_software_node(ptr nofree noundef readonly captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %.not.i = icmp eq ptr %0, null
  %i.a = icmp ugt ptr %0, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.a
  br i1 %spec.select.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, @software_node_ops
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  ret i1 %i.e
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local ptr @to_software_node(ptr nofree noundef readonly captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  %i.a = icmp ugt ptr %0, inttoptr (i64 -4096 to ptr)
  %spec.select.i.i = or i1 %.not.i.i, %i.a
  br i1 %spec.select.i.i, label %.thread, label %is_software_node.exit

is_software_node.exit:                            ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %.fr = freeze ptr %i.c
  %i.d = icmp ne ptr %.fr, @software_node_ops
  %i.e = getelementptr i8, ptr %0, i64 -64
  %.not = icmp eq ptr %i.e, null
  %or.cond = or i1 %.not, %i.d
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %is_software_node.exit
  %i.f = getelementptr i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  br label %.thread

.thread:                                          ; preds = %bb.a, %is_software_node.exit, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ], [ null, %is_software_node.exit ]
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @software_node_fwnode(ptr nofree noundef readnone captures(address) %0) #2 align 16 prefalign(16) {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %software_node_to_swnode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @swnode_kset, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 16
  tail call void @_raw_spin_lock(ptr noundef %i.b) #14
  %i.c = load ptr, ptr @swnode_kset, align 8      ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.pn.in.i = phi ptr [ %i.c, %bb.b ], [ %.pn.i, %bb.d ]
  %.pn.i = load ptr, ptr %.pn.in.i, align 8       ; 4 uses
  %.not18.i = icmp eq ptr %.pn.i, %i.c
  br i1 %.not18.i, label %.split.loop.exit19.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %.pn.i, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %.split.loop.exit.i, label %bb.c, !llvm.loop !0

.split.loop.exit.i:                               ; preds = %bb.d
  %.015.le.i = getelementptr i8, ptr %.pn.i, i64 -8
  br label %.split.loop.exit19.i

.split.loop.exit19.i:                             ; preds = %bb.c, %.split.loop.exit.i
  %.1.i = phi ptr [ %.015.le.i, %.split.loop.exit.i ], [ null, %bb.c ]
  %i.g = getelementptr i8, ptr %i.c, i64 16
  tail call void @_raw_spin_unlock(ptr noundef %i.g) #14
  br label %software_node_to_swnode.exit

software_node_to_swnode.exit:                     ; preds = %bb.a, %.split.loop.exit19.i
  %.0.i = phi ptr [ %.1.i, %.split.loop.exit19.i ], [ null, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  %i.h = getelementptr i8, ptr %.0.i, i64 64
  %i.i = select i1 %.not, ptr null, ptr %i.h
  ret ptr %i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @property_entries_dup(ptr nofree noundef readonly captures(address_is_null) %0) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader42

.preheader42:                                     ; preds = %bb.a, %.preheader42
  %.028 = phi i32 [ %i.d, %.preheader42 ], [ 0, %bb.a ] ; 4 uses
  %i.a = sext i32 %.028 to i64
  %i.b = getelementptr [32 x i8], ptr %0, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8
  %.not30 = icmp eq ptr %i.c, null
  %i.d = add i32 %.028, 1                         ; 3 uses
  br i1 %.not30, label %_kzalloc_noprof.exit, label %.preheader42, !llvm.loop !22

_kzalloc_noprof.exit:                             ; preds = %.preheader42
  %i.e = icmp slt i32 %i.d, 0
  %i.f = sext i32 %i.d to i64
  %i.g = shl nsw i64 %i.f, 5
  %.0.i = select i1 %i.e, i64 -1, i64 %i.g
  %i.h = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -446676598784, 446676598577) %.0.i, i32 noundef 3520) #15 ; 6 uses
  %.not31 = icmp eq ptr %i.h, null
  br i1 %.not31, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_kzalloc_noprof.exit
  %i.i = icmp sgt i32 %.028, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.028 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.u ] ; 6 uses
  %i.j = getelementptr [32 x i8], ptr %i.h, i64 %indvars.iv ; 16 uses
  %i.k = getelementptr [32 x i8], ptr %0, i64 %indvars.iv ; 6 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8        ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %.not.i40.i = icmp eq i64 %i.m, 0
  %i.n = getelementptr i8, ptr %i.k, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !18, !noundef !19
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  br i1 %.not.i40.i, label %property_get_pointer.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr i8, ptr %i.k, i64 24       ; 2 uses
  br i1 %i.p, label %property_get_pointer.exit.i, label %property_get_pointer.exit.thread60.i

property_get_pointer.exit.thread60.i:             ; preds = %bb.b
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.k, i64 20
  br label %bb.c

property_get_pointer.exit.thread.i:               ; preds = %.lr.ph
  br i1 %i.p, label %property_get_pointer.exit.i, label %property_entry_copy_data.exit.loopexit

property_get_pointer.exit.i:                      ; preds = %property_get_pointer.exit.thread.i, %bb.b
  %.0.i4147.i = phi ptr [ null, %property_get_pointer.exit.thread.i ], [ %i.q, %bb.b ]
  %i.t = getelementptr i8, ptr %i.k, i64 20       ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, 5
  br i1 %i.v, label %property_entry_copy_data.exit.loopexit, label %bb.c

bb.c:                                             ; preds = %property_get_pointer.exit.i, %property_get_pointer.exit.thread60.i
  %i.w = phi ptr [ %i.s, %property_get_pointer.exit.thread60.i ], [ %i.t, %property_get_pointer.exit.i ] ; 2 uses
  %.0.i414763.i = phi ptr [ %i.r, %property_get_pointer.exit.thread60.i ], [ %.0.i4147.i, %property_get_pointer.exit.i ] ; 2 uses
  %i.x = icmp ult i64 %i.m, 9
  br i1 %i.x, label %bb.d, label %_kmalloc_noprof.exit.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.j, i64 24
  %i.z = getelementptr i8, ptr %i.j, i64 16
  store i8 1, ptr %i.z, align 8
  br label %bb.f

_kmalloc_noprof.exit.i:                           ; preds = %bb.c
  %i.aa = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.m, i32 noundef 3264) #15 ; 3 uses
  %.not36.i = icmp eq ptr %i.aa, null
  br i1 %.not36.i, label %property_entry_copy_data.exit.loopexit, label %bb.e

bb.e:                                             ; preds = %_kmalloc_noprof.exit.i
  %i.ab = getelementptr i8, ptr %i.j, i64 24
  store ptr %i.aa, ptr %i.ab, align 8
  %.pre = load i64, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi i64 [ %i.m, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %.035.i = phi ptr [ %i.y, %bb.d ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ad = load i32, ptr %i.w, align 4
  %i.ae = icmp eq i32 %i.ad, 4
  br i1 %i.ae, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.af = lshr i64 %i.ac, 3                       ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %property_copy_string_array.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.i
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %bb.i ], [ -1, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %i.at, %bb.i ], [ 0, %bb.g ]  ; 2 uses
  %.021.i.i = phi i32 [ %i.as, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %.0.i414763.i, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noalias ptr @kstrdup(ptr noundef %i.aj, i32 noundef 3264) #14 ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %.035.i, i64 %i.ah
  store ptr %i.ak, ptr %i.al, align 8
  %.not.i42.i = icmp eq ptr %i.ak, null
  br i1 %.not.i42.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.am = load ptr, ptr %i.ai, align 8
  %.not17.i.i = icmp eq ptr %i.am, null
  br i1 %.not17.i.i, label %bb.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h
  %1 = trunc nuw nsw i64 %indvars.iv to i32       ; 2 uses
  %i.an = add i32 %.021.i.i, -1
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %.lr.ph22.preheader.i.i, label %property_copy_string_array.exit.i

.lr.ph22.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.ap = zext i32 %indvars.iv.i.i to i64
  br label %.lr.ph22.i.i

.lr.ph22.i.i:                                     ; preds = %.lr.ph22.i.i, %.lr.ph22.preheader.i.i
  %indvars.iv27.i.i = phi i64 [ %i.ap, %.lr.ph22.preheader.i.i ], [ %indvars.iv.next28.i.i, %.lr.ph22.i.i ] ; 3 uses
  %i.aq = getelementptr [8 x i8], ptr %.035.i, i64 %indvars.iv27.i.i
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void @kfree(ptr noundef %i.ar) #14
  %indvars.iv.next28.i.i = add nsw i64 %indvars.iv27.i.i, -1
  %.not34.i.i = icmp eq i64 %indvars.iv27.i.i, 0
  br i1 %.not34.i.i, label %property_copy_string_array.exit.i, label %.lr.ph22.i.i, !llvm.loop !23

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.as = add i32 %.021.i.i, 1                    ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %.not23.i.i = icmp ugt i64 %i.af, %i.at
  %indvars.iv.next.i.i = add i32 %indvars.iv.i.i, 1
  br i1 %.not23.i.i, label %.lr.ph.i.i, label %property_copy_string_array.exit.thread.i, !llvm.loop !24

property_copy_string_array.exit.i:                ; preds = %.lr.ph22.i.i, %.preheader.i.i
  %i.au = getelementptr i8, ptr %i.j, i64 16
  %i.av = load i8, ptr %i.au, align 8, !range !18, !noundef !19
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %property_entry_copy_data.exit, label %bb.j

bb.j:                                             ; preds = %property_copy_string_array.exit.i
  %i.ax = getelementptr i8, ptr %i.j, i64 24
  br label %.thread.sink.split.i

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.035.i, ptr align 1 %.0.i414763.i, i64 %i.ac, i1 false)
  br label %property_copy_string_array.exit.thread.i

property_copy_string_array.exit.thread.i:         ; preds = %bb.i, %bb.k, %bb.g
  %i.ay = load i64, ptr %i.l, align 8
  %i.az = getelementptr i8, ptr %i.j, i64 8
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = load i32, ptr %i.w, align 4
  %i.bb = getelementptr i8, ptr %i.j, i64 20
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.k, align 8
  %i.bd = tail call noalias ptr @kstrdup(ptr noundef %i.bc, i32 noundef 3264) #14 ; 2 uses
  store ptr %i.bd, ptr %i.j, align 8
  %.not37.i = icmp eq ptr %i.bd, null
  br i1 %.not37.i, label %bb.l, label %bb.u

bb.l:                                             ; preds = %property_copy_string_array.exit.thread.i
  %2 = trunc nuw nsw i64 %indvars.iv to i32       ; 2 uses
  %i.be = getelementptr i8, ptr %i.j, i64 20
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = icmp eq i32 %i.bf, 4
  br i1 %i.bg, label %bb.m, label %.loopexit.i.i

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr i8, ptr %i.j, i64 8
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %i.j, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !range !18, !noundef !19
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = getelementptr i8, ptr %i.j, i64 24      ; 2 uses
  br i1 %i.bl, label %property_get_pointer.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %i.bm, align 8
  br label %property_get_pointer.exit.i.i

property_get_pointer.exit.i.i:                    ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi ptr [ %i.bm, %bb.n ], [ %i.bn, %bb.o ]
  %i.bo = lshr i64 %i.bi, 3                       ; 2 uses
  %.not.i43.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i43.i, label %.loopexit.i.i, label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %property_get_pointer.exit.i.i, %.lr.ph.i44.i
  %.010.i.i = phi i64 [ %i.br, %.lr.ph.i44.i ], [ 0, %property_get_pointer.exit.i.i ] ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %.010.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void @kfree(ptr noundef %i.bq) #14
  %i.br = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.br, %i.bo
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i44.i, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %.lr.ph.i44.i, %property_get_pointer.exit.i.i, %bb.m, %bb.l
  %i.bs = getelementptr i8, ptr %i.j, i64 16
  %i.bt = load i8, ptr %i.bs, align 8, !range !18, !noundef !19
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %.thread.sink.split.i, label %bb.p

bb.p:                                             ; preds = %.loopexit.i.i
  %i.bv = getelementptr i8, ptr %i.j, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void @kfree(ptr noundef %i.bw) #14
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %.loopexit.i.i, %bb.p, %bb.j
  %3 = phi i32 [ %1, %bb.j ], [ %2, %bb.p ], [ %2, %.loopexit.i.i ]
  %.sink.in.i = phi ptr [ %i.ax, %bb.j ], [ %i.j, %bb.p ], [ %i.j, %.loopexit.i.i ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8
  tail call void @kfree(ptr noundef %.sink.i) #14
  br label %property_entry_copy_data.exit

property_entry_copy_data.exit.loopexit:           ; preds = %_kmalloc_noprof.exit.i, %property_get_pointer.exit.i, %property_get_pointer.exit.thread.i
  %.0.i34.ph = phi i64 [ -22, %property_get_pointer.exit.i ], [ -12, %_kmalloc_noprof.exit.i ], [ -61, %property_get_pointer.exit.thread.i ]
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  br label %property_entry_copy_data.exit

property_entry_copy_data.exit:                    ; preds = %property_entry_copy_data.exit.loopexit, %property_copy_string_array.exit.i, %.thread.sink.split.i
  %5 = phi i32 [ %3, %.thread.sink.split.i ], [ %1, %property_copy_string_array.exit.i ], [ %4, %property_entry_copy_data.exit.loopexit ]
  %.0.i34 = phi i64 [ -12, %.thread.sink.split.i ], [ -12, %property_copy_string_array.exit.i ], [ %.0.i34.ph, %property_entry_copy_data.exit.loopexit ]
  %6 = add i32 %5, -1                             ; 2 uses
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %.lr.ph57.preheader, label %._crit_edge

.lr.ph57.preheader:                               ; preds = %property_entry_copy_data.exit
  %8 = zext nneg i32 %6 to i64
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %property_entry_free_data.exit
  %indvars.iv72 = phi i64 [ %8, %.lr.ph57.preheader ], [ %indvars.iv.next73, %property_entry_free_data.exit ] ; 3 uses
  %i.bx = getelementptr [32 x i8], ptr %i.h, i64 %indvars.iv72 ; 7 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 20
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp eq i32 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.lr.ph57
  %i.cb = getelementptr i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8            ; 2 uses
  %.not.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr i8, ptr %i.bx, i64 16
  %i.ce = load i8, ptr %i.cd, align 8, !range !18, !noundef !19
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr i8, ptr %i.bx, i64 24     ; 2 uses
  br i1 %i.cf, label %property_get_pointer.exit.i38, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %i.cg, align 8
  br label %property_get_pointer.exit.i38

property_get_pointer.exit.i38:                    ; preds = %bb.s, %bb.r
  %.0.i.i39 = phi ptr [ %i.cg, %bb.r ], [ %i.ch, %bb.s ]
  %i.ci = lshr i64 %i.cc, 3                       ; 2 uses
  %.not.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %property_get_pointer.exit.i38, %.lr.ph.i
  %.010.i = phi i64 [ %i.cl, %.lr.ph.i ], [ 0, %property_get_pointer.exit.i38 ] ; 2 uses
  %i.cj = getelementptr [8 x i8], ptr %.0.i.i39, i64 %.010.i
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void @kfree(ptr noundef %i.ck) #14
  %i.cl = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cl, %i.ci
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %.lr.ph.i, %property_get_pointer.exit.i38, %bb.q, %.lr.ph57
  %i.cm = getelementptr i8, ptr %i.bx, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !range !18, !noundef !19
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %property_entry_free_data.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit.i
  %i.cp = getelementptr i8, ptr %i.bx, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void @kfree(ptr noundef %i.cq) #14
  br label %property_entry_free_data.exit

property_entry_free_data.exit:                    ; preds = %.loopexit.i, %bb.t
  %i.cr = load ptr, ptr %i.bx, align 8
  tail call void @kfree(ptr noundef %i.cr) #14
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1
  %i.cs = icmp sgt i64 %indvars.iv72, 0
  br i1 %i.cs, label %.lr.ph57, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %property_entry_free_data.exit, %property_entry_copy_data.exit
  tail call void @kfree(ptr noundef nonnull %i.h) #14
  %i.ct = inttoptr i64 %.0.i34 to ptr
  br label %.loopexit

bb.u:                                             ; preds = %property_copy_string_array.exit.thread.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !26

.loopexit:                                        ; preds = %bb.u, %.preheader, %_kzalloc_noprof.exit, %bb.a, %._crit_edge
  %.0 = phi ptr [ %i.ct, %._crit_edge ], [ null, %bb.a ], [ inttoptr (i64 -12 to ptr), %_kzalloc_noprof.exit ], [ %i.h, %.preheader ], [ %i.h, %bb.u ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @property_entries_free(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  %.not78 = icmp eq ptr %i.a, null
  br i1 %.not78, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %property_entry_free_data.exit
  %.09 = phi ptr [ %i.v, %property_entry_free_data.exit ], [ %0, %.preheader ] ; 8 uses
  %i.b = getelementptr i8, ptr %.09, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr i8, ptr %.09, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.09, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !18, !noundef !19
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr i8, ptr %.09, i64 24       ; 2 uses
  br i1 %i.i, label %property_get_pointer.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8
  br label %property_get_pointer.exit.i

property_get_pointer.exit.i:                      ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  %i.l = lshr i64 %i.f, 3                         ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %property_get_pointer.exit.i, %.lr.ph.i
  %.010.i = phi i64 [ %i.o, %.lr.ph.i ], [ 0, %property_get_pointer.exit.i ] ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %.0.i.i, i64 %.010.i
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @kfree(ptr noundef %i.n) #14
  %i.o = add nuw nsw i64 %.010.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.l
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !1

.loopexit.i:                                      ; preds = %.lr.ph.i, %property_get_pointer.exit.i, %bb.b, %.lr.ph
  %i.p = getelementptr i8, ptr %.09, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !18, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %property_entry_free_data.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit.i
  %i.s = getelementptr i8, ptr %.09, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @kfree(ptr noundef %i.t) #14
  br label %property_entry_free_data.exit

property_entry_free_data.exit:                    ; preds = %.loopexit.i, %bb.e
  %i.u = load ptr, ptr %.09, align 8
  tail call void @kfree(ptr noundef %i.u) #14
  %i.v = getelementptr i8, ptr %.09, i64 32       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not7 = icmp eq ptr %i.w, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %property_entry_free_data.exit, %.preheader
  tail call void @kfree(ptr noundef nonnull %0) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @software_node_find_by_name(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @swnode_kset, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 16
  tail call void @_raw_spin_lock(ptr noundef %i.b) #14
  %i.c = load ptr, ptr @swnode_kset, align 8      ; 4 uses
  %.pn32 = load ptr, ptr %i.c, align 8            ; 2 uses
  %.not2933 = icmp eq ptr %.pn32, %i.c
  br i1 %.not2933, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.e, %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 16
  tail call void @_raw_spin_unlock(ptr noundef %i.d) #14
  br label %bb.h

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.pn34 = phi ptr [ %.pn, %bb.e ], [ %.pn32, %bb.b ] ; 4 uses
  %i.e = getelementptr i8, ptr %.pn34, i64 120
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %0, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not24 = icmp eq ptr %i.j, null
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.j) #14
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %.pn = load ptr, ptr %.pn34, align 8            ; 2 uses
  %.not29 = icmp eq ptr %.pn, %i.c
  br i1 %.not29, label %.thread, label %.lr.ph, !llvm.loop !27

bb.f:                                             ; preds = %bb.d
  %.020.le = getelementptr i8, ptr %.pn34, i64 -8 ; 2 uses
  %i.l = tail call ptr @kobject_get(ptr noundef %.020.le) #14 ; 0 uses
end_hunk_0
