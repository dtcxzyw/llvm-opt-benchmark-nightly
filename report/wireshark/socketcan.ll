Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/socketcan?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_frame = type { i32, i8, i8, i8, i8, [8 x i8] }

@.str = private unnamed_addr constant [62 x i8] c"%s: File has %u-byte CAN FD packet, bigger than maximum of %u\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"%s: File has %u-byte CAN packet, bigger than maximum of %u\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @wtap_socketcan_get_private_data(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @wtap_set_as_socketcan(ptr nofree noundef writeonly captures(none) initializes((20, 24), (120, 128), (160, 176)) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #8 ; 4 uses
  %i.b = tail call ptr @g_hash_table_new(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 24
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 16
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 20
  store i32 %1, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %0, i64 168
  store i32 125, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 172
  store i32 %2, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 160
  store ptr @wtap_socketcan_close, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 120
  store ptr %i.a, ptr %i.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @g_str_hash(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare i32 @g_str_equal(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @wtap_socketcan_close(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.d(ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = tail call i32 @g_hash_table_foreach_remove(ptr noundef %i.g, ptr noundef nonnull @destroy_if_name, ptr noundef null) ; 0 uses
  %i.i = load ptr, ptr %i.b, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.i)
  tail call void @g_free(ptr noundef %i.b)
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @wtap_socketcan_gen_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((280, 296)) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.canfd_frame, align 4        ; 9 uses
  %7 = alloca %struct.can_frame, align 4          ; 8 uses
  %i.a = getelementptr i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.k [
    i32 6, label %bb.f
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.g
    i32 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.k

bb.g:                                             ; preds = %bb.a, %bb.e
  %.075 = phi i1 [ true, %bb.e ], [ false, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 280        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.d, i8 0, i64 68, i1 false)
  %i.e = getelementptr i8, ptr %2, i64 25         ; 2 uses
  %i.f = load i8, ptr %i.e, align 1               ; 3 uses
  %i.g = icmp ult i8 %i.f, 65
  br i1 %i.g, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 -13, ptr %4, align 4
  %.not76 = icmp eq ptr %5, null
  br i1 %.not76, label %.thread89, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = load i8, ptr %i.e, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str, ptr noundef %3, i32 noundef %i.i, i32 noundef 64)
  store ptr %i.j, ptr %5, align 8
  br label %.thread89

bb.j:                                             ; preds = %bb.g
  %i.k = getelementptr i8, ptr %1, i64 264
  %i.l = getelementptr i8, ptr %2, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = select i1 %.075, i32 536870911, i32 2047
  %i.o = and i32 %i.m, %i.n
  %i.p = select i1 %.075, i32 -2147483648, i32 0
  %i.q = or disjoint i32 %i.o, %i.p
  %i.r = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #10, !srcloc !6
  store i32 %i.r, ptr %6, align 4
  %i.s = getelementptr i8, ptr %2, i64 24
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 4
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 5
  store i8 %i.u, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 %i.f, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr i8, ptr %2, i64 26
  %i.z = zext nneg i8 %i.f to i64
  %i.aa = call ptr @__memcpy_chk(ptr noundef nonnull %i.x, ptr noundef %i.y, i64 noundef %i.z, i64 noundef 64) #9, !alias.scope !7 ; 0 uses
  call void @ws_buffer_append(ptr noundef %i.k, ptr noundef nonnull %6, i64 noundef 72)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.o

.thread89:                                        ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.q

bb.k:                                             ; preds = %bb.a, %bb.f, %bb.b, %bb.c, %bb.d
  %.074.ph = phi i32 [ 1073741824, %bb.d ], [ 1073741824, %bb.c ], [ 0, %bb.b ], [ 536870912, %bb.f ], [ 0, %bb.a ]
  %.070.ph = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ true, %bb.b ], [ false, %bb.f ], [ false, %bb.a ] ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 280       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, i8 0, i64 12, i1 false)
  %i.ad = getelementptr i8, ptr %2, i64 25        ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 3 uses
  %i.af = icmp ult i8 %i.ae, 9
  br i1 %i.af, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 -13, ptr %4, align 4
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %.thread91, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load i8, ptr %i.ad, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %i.ah, i32 noundef 8)
  store ptr %i.ai, ptr %5, align 8
  br label %.thread91

bb.n:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %1, i64 264
  %i.ak = select i1 %.070.ph, i32 -2147483648, i32 0
  %i.al = or disjoint i32 %.074.ph, %i.ak
  %i.am = getelementptr i8, ptr %2, i64 16
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = select i1 %.070.ph, i32 536870911, i32 2047
  %i.ap = and i32 %i.an, %i.ao
  %i.aq = or disjoint i32 %i.al, %i.ap
  %i.ar = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.aq) #10, !srcloc !11
  store i32 %i.ar, ptr %7, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 %i.ae, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = getelementptr i8, ptr %2, i64 26
  %i.av = zext nneg i8 %i.ae to i64
  %i.aw = call ptr @__memcpy_chk(ptr noundef nonnull %i.at, ptr noundef %i.au, i64 noundef %i.av, i64 noundef 8) #9, !alias.scope !12 ; 0 uses
  call void @ws_buffer_append(ptr noundef %i.aj, ptr noundef nonnull %7, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.o

.thread91:                                        ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ax = phi ptr [ %i.ab, %bb.n ], [ %i.c, %bb.j ]
  %i.ay = getelementptr i8, ptr %0, i64 168
  %i.az = load i32, ptr %i.ay, align 8
  call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.az)
  %i.ba = call ptr @wtap_block_create(i32 noundef 5)
  %i.bb = getelementptr i8, ptr %1, i64 216
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %1, i64 4         ; 2 uses
  store i32 1, ptr %i.bc, align 4
  %i.bd = getelementptr i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bd, ptr noundef align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.be = getelementptr i8, ptr %0, i64 172
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = getelementptr i8, ptr %1, i64 32
  store i32 %i.bf, ptr %i.bg, align 8
  %.val79 = load i64, ptr %i.ax, align 8
  %i.bh = getelementptr i8, ptr %1, i64 288
  %.val80 = load i64, ptr %i.bh, align 8
  %i.bi = sub i64 %.val80, %.val79
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %i.bk = getelementptr i8, ptr %1, i64 48
  store i32 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %1, i64 52
  store i32 %i.bj, ptr %i.bl, align 4
  %i.bm = getelementptr i8, ptr %2, i64 92        ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %.not77 = icmp eq i32 %i.bn, -1
  br i1 %.not77, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 5, ptr %i.bc, align 4
  %i.bo = load i32, ptr %i.bm, align 4
  %i.bp = getelementptr i8, ptr %1, i64 60
  store i32 %i.bo, ptr %i.bp, align 4
  br label %bb.q

bb.q:                                             ; preds = %.thread91, %.thread89, %bb.o, %bb.p
  %.2 = phi i1 [ false, %.thread91 ], [ false, %.thread89 ], [ true, %bb.p ], [ true, %bb.o ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_append(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_packet_rec(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_create(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @wtap_socketcan_find_or_create_new_interface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i32 @g_hash_table_lookup_extended(ptr noundef %i.d, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %add_new_if_name.exit, label %bb.b

add_new_if_name.exit:                             ; preds = %bb.a
  %i.f = call noalias ptr @g_strdup(ptr noundef %1)
  %i.g = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = call i32 @g_hash_table_insert(ptr noundef %i.k, ptr noundef %i.f, ptr noundef %i.j) ; 0 uses
  %i.m = load i32, ptr %i.g, align 8
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.g, align 8
  %i.o = call ptr @wtap_block_create(i32 noundef 1) ; 4 uses
  %i.p = call ptr @wtap_block_get_mandatory_data(ptr noundef %i.o) ; 6 uses
  store i32 125, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store i32 6, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.p, i64 8
  store i64 1000000, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.p, i64 20
  store i32 262144, ptr %i.s, align 4
  %i.t = call i32 @wtap_block_add_uint8_option(ptr noundef %i.o, i32 noundef 9, i8 noundef zeroext 6) ; 0 uses
  %i.u = getelementptr i8, ptr %i.p, i64 24
  store i8 0, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 32
  store ptr null, ptr %i.v, align 8
  %i.w = call i64 @strlen(ptr noundef %1) #11
  %i.x = call i32 @wtap_block_set_string_option_value(ptr noundef %i.o, i32 noundef 2, ptr noundef %1, i64 noundef %i.w) ; 0 uses
  call void @wtap_add_idb(ptr noundef %0, ptr noundef %i.o)
  br label %bb.b

bb.b:                                             ; preds = %add_new_if_name.exit, %bb.a
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = trunc i64 %i.z to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.aa
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_lookup_extended(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_get_mandatory_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_uint8_option(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_set_string_option_value(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @wtap_add_idb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_foreach_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @destroy_if_name(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  tail call void @g_free(ptr noundef %0)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i64 2151550498}
!7 = !{!8, !10}
!8 = distinct !{!8, !9, !"memcpy.inline: argument 0"}
!9 = distinct !{!9, !"memcpy.inline"}
!10 = distinct !{!10, !9, !"memcpy.inline: argument 1"}
end_hunk_0
