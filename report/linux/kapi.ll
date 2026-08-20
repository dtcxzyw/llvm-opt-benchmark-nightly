inline.NumInlined: 7
inline.NumDeleted: 6
begin_hunk_0

@.str = private unnamed_addr constant [48 x i8] c"\013pps_core: %s: unsupported default parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\013pps_core: %s: unspecified time format\0A\00", align 1
@pps_register_source.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"&pps->queue\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\013pps_core: %s: unable to create char device\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\013pps_core: %s: unable to register source\0A\00", align 1
@__UNIQUE_ID_addressable_pps_register_source_446 = internal global ptr @pps_register_source, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_pps_unregister_source_447 = internal global ptr @pps_unregister_source, section ".discard.addressable", align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"drivers/pps/kapi.c\00", align 1
@__UNIQUE_ID_addressable_pps_event_449 = internal global ptr @pps_event, section ".discard.addressable", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"echo %s %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_addressable_pps_event_449, ptr @__UNIQUE_ID_addressable_pps_register_source_446, ptr @__UNIQUE_ID_addressable_pps_unregister_source_447], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @pps_register_source(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, %1
  %.not = icmp eq i32 %i.c, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #7 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 12288
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #7 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.i = tail call noalias noundef align 8 dereferenceable_or_null(1008) ptr @__kmalloc_cache_noprof(ptr noundef %i.h, i32 noundef 3520, i64 noundef 1008) #8 ; 10 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.i, i64 96
  store i32 1, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.i, i64 100
  store i32 %1, ptr %i.l, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef align 8 dereferenceable(96) %0, i64 96, i1 false)
  %i.m = getelementptr i8, ptr %i.i, i64 64
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 192
  %.not34 = icmp eq i32 %i.o, 0
  br i1 %.not34, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.i, i64 72       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @pps_echo_client_default, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.s = getelementptr i8, ptr %i.i, i64 192
  tail call void @__init_waitqueue_head(ptr noundef %i.s, ptr noundef nonnull @.str.2, ptr noundef nonnull @pps_register_source.__key) #9
  %i.t = getelementptr i8, ptr %i.i, i64 1000
  store i32 0, ptr %i.t, align 8
  %i.u = tail call i32 @pps_register_cdev(ptr noundef nonnull %i.i) #9 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0) #7 ; 0 uses
  %i.x = sext i32 %i.u to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.b, %bb.d, %bb.j
  %.030 = phi i64 [ -22, %bb.b ], [ -22, %bb.d ], [ %i.x, %bb.j ], [ -12, %bb.e ]
  %i.y = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %0) #7 ; 0 uses
  %i.z = inttoptr i64 %.030 to ptr
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.0 = phi ptr [ %i.z, %bb.k ], [ %i.i, %bb.i ]
  ret ptr %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pps_echo_client_default(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 232
  %i.b = and i32 %1, 1
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @.str.5, ptr @.str.9
  %i.d = and i32 %1, 2
  %.not2 = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not2, ptr @.str.5, ptr @.str.10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.a, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #7
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pps_register_cdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @pps_unregister_source(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @pps_unregister_cdev(ptr noundef %0) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pps_unregister_cdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @pps_event(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %2, 3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "448: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 448b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 448) #10, !srcloc !11
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.6, i32 164, i32 0, i64 16) #10, !srcloc !12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 1000       ; 2 uses
  %i.h = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.g) #9
  %i.i = getelementptr i8, ptr %0, i64 100        ; 2 uses
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = and i32 %i.j, 192
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef %0, i32 noundef %2, ptr noundef %3) #9
  %.pre = load i32, ptr %i.i, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 176
  store i32 %i.n, ptr %i.o, align 8
  %i.p = and i32 %i.n, %2                         ; 3 uses
  %i.q = and i32 %i.p, 1
  %.not30 = icmp eq i32 %i.q, 0
  br i1 %.not30, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i32 %i.n, 16
  %.not31 = icmp eq i32 %i.r, 0
  br i1 %.not31, label %.thread72, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 104
  %i.t = getelementptr i8, ptr %0, i64 112
  %i.u = load i32, ptr %i.t, align 8
  %i.v = add i32 %i.u, %i.f
  %.fr.i = freeze i32 %i.v                        ; 9 uses
  %i.w = icmp sgt i32 %.fr.i, 999999999
  br i1 %i.w, label %thread-pre-split.i.thread, label %thread-pre-split.i

thread-pre-split.i.thread:                        ; preds = %bb.g
  %i.x = add nsw i32 %.fr.i, -1000000000
  %.cmp61 = icmp samesign ult i32 %.fr.i, 2000000000
  %.neg.i = select i1 %.cmp61, i32 0, i32 -1000000000
  %i.y = add nsw i32 %i.x, %.neg.i
  %.cmp62 = icmp samesign ugt i32 %.fr.i, 1999999999
  %i.z = zext i1 %.cmp62 to i64
  %i.aa = add i64 %i.c, 1
  %i.ab = add i64 %i.aa, %i.z
  br label %pps_add_offset.exit

thread-pre-split.i:                               ; preds = %bb.g
  %i.ac = icmp slt i32 %.fr.i, 0
  br i1 %i.ac, label %.lr.ph12.i, label %pps_add_offset.exit

.lr.ph12.i:                                       ; preds = %thread-pre-split.i
  %i.ad = icmp samesign ult i32 %.fr.i, -1000000000 ; 2 uses
  %umin.i.neg66 = sext i1 %i.ad to i32
  %umin.i = zext i1 %i.ad to i32
  %.neg = tail call i32 @llvm.usub.sat.i32(i32 -1000000000, i32 %.fr.i)
  %i.ae = add nsw i32 %.neg, %umin.i.neg66
  %i.af = udiv i32 %i.ae, 1000000000
  %i.ag = add nuw nsw i32 %i.af, %umin.i          ; 2 uses
  %i.ah = mul i32 %i.ag, 1000000000
  %i.ai = add nsw i32 %.fr.i, 1000000000
  %i.aj = add i32 %i.ai, %i.ah
  %4 = xor i32 %i.ag, -1
  %5 = sext i32 %4 to i64
  %i.ak = add i64 %i.c, %5
  br label %pps_add_offset.exit

pps_add_offset.exit:                              ; preds = %thread-pre-split.i.thread, %thread-pre-split.i, %.lr.ph12.i
  %.sroa.14.4 = phi i32 [ %i.aj, %.lr.ph12.i ], [ %.fr.i, %thread-pre-split.i ], [ %i.y, %thread-pre-split.i.thread ]
  %i.al = phi i64 [ %i.ak, %.lr.ph12.i ], [ %i.c, %thread-pre-split.i ], [ %i.ab, %thread-pre-split.i.thread ]
  %i.am = load i64, ptr %i.s, align 8
  %i.an = add i64 %i.am, %i.al
  br label %.thread72

bb.h:                                             ; preds = %bb.e
  %i.ao = and i32 %i.p, 2
  %.not32 = icmp eq i32 %i.ao, 0
  br i1 %.not32, label %bb.k, label %bb.i

.thread72:                                        ; preds = %bb.f, %pps_add_offset.exit
  %.sroa.0.0 = phi i64 [ %i.c, %bb.f ], [ %i.an, %pps_add_offset.exit ] ; 2 uses
  %.sroa.14.0 = phi i32 [ %i.f, %bb.f ], [ %.sroa.14.4, %pps_add_offset.exit ] ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 144
  store i64 %.sroa.0.0, ptr %i.ap, align 8
  %.sroa.14.0..sroa_idx = getelementptr i8, ptr %0, i64 152
  store i32 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr i8, ptr %0, i64 156
  store i32 0, ptr %.sroa.23.0..sroa_idx, align 4
  %i.aq = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8
  %i.at = and i32 %i.p, 2
  %.not3275 = icmp eq i32 %i.at, 0
  br i1 %.not3275, label %.thread78, label %bb.i

bb.i:                                             ; preds = %.thread72, %bb.h
  %.sroa.14.177 = phi i32 [ %.sroa.14.0, %.thread72 ], [ %i.f, %bb.h ] ; 2 uses
  %.sroa.0.176 = phi i64 [ %.sroa.0.0, %.thread72 ], [ %i.c, %bb.h ] ; 4 uses
  %i.au = and i32 %i.n, 32
  %.not33 = icmp eq i32 %i.au, 0
  br i1 %.not33, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr i8, ptr %0, i64 120
  %i.aw = getelementptr i8, ptr %0, i64 128
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = add i32 %i.ax, %.sroa.14.177
  %.fr.i35 = freeze i32 %i.ay                     ; 9 uses
  %i.az = icmp sgt i32 %.fr.i35, 999999999
  br i1 %i.az, label %thread-pre-split.i37.thread, label %thread-pre-split.i37

thread-pre-split.i37.thread:                      ; preds = %bb.j
  %i.ba = add nsw i32 %.fr.i35, -1000000000
  %.cmp = icmp samesign ult i32 %.fr.i35, 2000000000
  %.neg.i43 = select i1 %.cmp, i32 0, i32 -1000000000
  %i.bb = add nsw i32 %i.ba, %.neg.i43
  %.cmp59 = icmp samesign ugt i32 %.fr.i35, 1999999999
  %i.bc = zext i1 %.cmp59 to i64
  %i.bd = add i64 %.sroa.0.176, 1
  %i.be = add i64 %i.bd, %i.bc
  br label %pps_add_offset.exit44

thread-pre-split.i37:                             ; preds = %bb.j
  %i.bf = icmp slt i32 %.fr.i35, 0
  br i1 %i.bf, label %.lr.ph12.i40, label %pps_add_offset.exit44

.lr.ph12.i40:                                     ; preds = %thread-pre-split.i37
  %i.bg = icmp samesign ult i32 %.fr.i35, -1000000000 ; 2 uses
  %umin.i41.neg67 = sext i1 %i.bg to i32
  %umin.i41 = zext i1 %i.bg to i32
  %.neg65 = tail call i32 @llvm.usub.sat.i32(i32 -1000000000, i32 %.fr.i35)
  %i.bh = add nsw i32 %.neg65, %umin.i41.neg67
  %i.bi = udiv i32 %i.bh, 1000000000
  %i.bj = add nuw nsw i32 %i.bi, %umin.i41        ; 2 uses
  %i.bk = mul i32 %i.bj, 1000000000
  %i.bl = add nsw i32 %.fr.i35, 1000000000
  %i.bm = add i32 %i.bl, %i.bk
  %6 = xor i32 %i.bj, -1
  %7 = sext i32 %6 to i64
  %i.bn = add i64 %.sroa.0.176, %7
  br label %pps_add_offset.exit44

pps_add_offset.exit44:                            ; preds = %thread-pre-split.i37.thread, %thread-pre-split.i37, %.lr.ph12.i40
  %.sroa.14.6 = phi i32 [ %i.bm, %.lr.ph12.i40 ], [ %.fr.i35, %thread-pre-split.i37 ], [ %i.bb, %thread-pre-split.i37.thread ]
  %i.bo = phi i64 [ %i.bn, %.lr.ph12.i40 ], [ %.sroa.0.176, %thread-pre-split.i37 ], [ %i.be, %thread-pre-split.i37.thread ]
  %i.bp = load i64, ptr %i.av, align 8
  %i.bq = add i64 %i.bp, %i.bo
  br label %.thread

.thread:                                          ; preds = %bb.i, %pps_add_offset.exit44
  %.sroa.0.2 = phi i64 [ %.sroa.0.176, %bb.i ], [ %i.bq, %pps_add_offset.exit44 ]
  %.sroa.14.2 = phi i32 [ %.sroa.14.177, %bb.i ], [ %.sroa.14.6, %pps_add_offset.exit44 ]
  %i.br = getelementptr i8, ptr %0, i64 160
  store i64 %.sroa.0.2, ptr %i.br, align 8
  %.sroa.14.0..sroa_idx46 = getelementptr i8, ptr %0, i64 168
  store i32 %.sroa.14.2, ptr %.sroa.14.0..sroa_idx46, align 8
  %.sroa.23.0..sroa_idx49 = getelementptr i8, ptr %0, i64 172
  store i32 0, ptr %.sroa.23.0..sroa_idx49, align 4
  %i.bs = getelementptr i8, ptr %0, i64 140       ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4
  br label %.thread78

.thread78:                                        ; preds = %.thread72, %.thread
  %i.bv = getelementptr i8, ptr %0, i64 180       ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4
  %i.by = getelementptr i8, ptr %0, i64 192
  %i.bz = tail call i32 @__wake_up(ptr noundef %i.by, i32 noundef 1, i32 noundef 0, ptr noundef null) #9 ; 0 uses
  %i.ca = getelementptr i8, ptr %0, i64 992
  tail call void @kill_fasync(ptr noundef %i.ca, i32 noundef 29, i32 noundef 1) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %.thread78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.g, i64 noundef %i.h) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{i64 2155306481, i64 2155306356}
!12 = !{i64 2155307004, i64 2155307480, i64 2155307513, i64 2155307548, i64 2155307564, i64 2155308405, i64 2155308463, i64 2155308512, i64 2155308322, i64 2155307623, i64 2155307655}
end_hunk_0
