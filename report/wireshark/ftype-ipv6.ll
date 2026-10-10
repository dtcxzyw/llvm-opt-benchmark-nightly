Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ftype-ipv6?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct.e_in6_addr = type { [16 x i8] }

@ftype_register_ipv6.ipv6_type = internal constant %struct._ftype_t { i32 33, i32 16, ptr null, ptr null, ptr null, ptr @ipv6_from_literal, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipv6_to_repr, ptr null, ptr null, ptr null, %union.anon { ptr @ipv6_set }, %union.anon.0 { ptr @ipv6_get }, ptr @cmp_order, ptr null, ptr null, ptr @ipv6_hash, ptr @is_zero, ptr null, ptr null, ptr @len, ptr @slice, ptr @bitwise_and, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@ftype_register_pseudofields_ipv6.hf_ft_ipv6 = internal global i32 0, align 4
@ftype_register_pseudofields_ipv6.hf_ftypes = internal global [1 x %struct.hf_register_info] [%struct.hf_register_info { ptr @ftype_register_pseudofields_ipv6.hf_ft_ipv6, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 33, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@.str = private unnamed_addr constant [8 x i8] c"FT_IPv6\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"_ws.ftypes.ipv6\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\22%s\22 is not a valid hostname or IPv6 address.\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s in not a valid mask\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Prefix in a IPv6 address should be <= 128, not %u\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%u\00", align 1
@bitmasks = internal unnamed_addr constant [9 x i8] c"\00\80\C0\E0\F0\F8\FC\FE\FF", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @ftype_register_ipv6() local_unnamed_addr #0 {
bb.a:
  tail call void @ftype_register(i32 noundef 33, ptr noundef nonnull @ftype_register_ipv6.ipv6_type)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @ipv6_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = tail call ptr @strchr(ptr noundef %1, i32 noundef 47) #11 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call noalias ptr @wmem_strndup(ptr noundef null, ptr noundef %1, i64 noundef %i.f) ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = tail call zeroext i1 @get_host_ipaddr6(ptr noundef %i.g, ptr noundef %i.h)
  br i1 %i.i, label %bb.g, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = tail call zeroext i1 @get_host_ipaddr6(ptr noundef %1, ptr noundef %i.j)
  br i1 %i.k, label %bb.q, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.042 = phi ptr [ null, %.thread ], [ %i.g, %bb.b ] ; 2 uses
  %.not33 = icmp eq ptr %3, null
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %1)
  store ptr %i.l, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not34 = icmp eq ptr %.042, null
  br i1 %.not34, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @wmem_free(ptr noundef null, ptr noundef nonnull %.042)
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  %.not35 = icmp eq ptr %i.g, null
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @wmem_free(ptr noundef null, ptr noundef nonnull %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr i8, ptr %i.c, i64 1        ; 2 uses
  %i.n = call zeroext i1 @ws_strtou32(ptr noundef %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = load i8, ptr %i.o, align 1
  %.not36 = icmp eq i8 %i.p, 0
  br i1 %.not36, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not38 = icmp eq ptr %3, null
  br i1 %.not38, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef %i.m)
  store ptr %i.q, ptr %3, align 8
  br label %bb.r

bb.m:                                             ; preds = %bb.j
  %i.r = load i32, ptr %i.a, align 4              ; 3 uses
  %i.s = icmp ugt i32 %i.r, 128
  br i1 %i.s, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not37 = icmp eq ptr %3, null
  br i1 %.not37, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %i.r)
  store ptr %i.t, ptr %3, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.u = getelementptr i8, ptr %0, i64 24
  store i32 %i.r, ptr %i.u, align 8
  br label %bb.r

bb.q:                                             ; preds = %.thread
  %i.v = getelementptr i8, ptr %0, i64 24
  store i32 128, ptr %i.v, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n, %bb.o, %bb.k, %bb.l, %bb.e, %bb.f
  %.027 = phi i1 [ false, %bb.e ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.f ], [ false, %bb.l ], [ false, %bb.o ], [ true, %bb.q ], [ true, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.027
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noalias ptr @ipv6_to_repr(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3) #0 {
bb.a:
  %i.a = alloca [46 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr i8, ptr %1, i64 8
  call void @ip6_to_str_buf(ptr noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 46)
  %i.c = getelementptr i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  switch i32 %i.d, label %bb.b [
    i32 0, label %bb.c
    i32 128, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, i32 noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.f = call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @ipv6_set(ptr nofree noundef writeonly captures(none) initializes((8, 28)) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(20) %i.a, ptr noundef align 4 dereferenceable(20) %1, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef ptr @ipv6_get(ptr nofree noundef readnone captures(ret: address, provenance) %0) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define internal noundef i32 @cmp_order(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 4
  %. = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.f) ; 2 uses
  %i.g = tail call i32 @llvm.umin.i32(i32 %., i32 128) ; 2 uses
  %i.h = icmp ugt i32 %., 7
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.03855 = phi i32 [ %i.p, %bb.b ], [ %i.g, %bb.a ]
  %i.i = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = getelementptr i8, ptr %i.b, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %.not49 = icmp eq i8 %i.j, %i.l
  br i1 %.not49, label %bb.b, label %.thread

.thread:                                          ; preds = %.lr.ph
  %i.m = zext i8 %i.l to i32
  %i.n = zext i8 %i.j to i32
  %i.o = sub nsw i32 %i.n, %i.m
  br label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.p = add i32 %.03855, -8                      ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = icmp ugt i32 %i.p, 7
  br i1 %i.q, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.038.lcssa = phi i32 [ %i.g, %bb.a ], [ %i.p, %bb.b ] ; 2 uses
  %.036.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.not = icmp eq i32 %.038.lcssa, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.r = getelementptr i8, ptr %i.a, i64 %.036.lcssa
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext nneg i32 %.038.lcssa to i64
  %i.u = getelementptr i8, ptr @bitmasks, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = and i8 %i.v, %i.s                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.b, i64 %.036.lcssa
  %i.y = load i8, ptr %i.x, align 1
  %i.z = and i8 %i.y, %i.v                        ; 2 uses
  %.not48 = icmp eq i8 %i.w, %i.z
  br i1 %.not48, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = zext i8 %i.z to i32
  %i.ab = zext i8 %i.w to i32
  %i.ac = sub nsw i32 %i.ab, %i.aa
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %bb.c, %.thread, %bb.d
  %.sink = phi i32 [ %i.o, %.thread ], [ %i.ac, %bb.d ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  store i32 %.sink, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @ipv6_hash(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  store i64 %i.e, ptr %i.a, align 8
  %i.f = tail call i32 @g_int64_hash(ptr noundef %i.b)
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = tail call i32 @g_int64_hash(ptr noundef %i.g)
  %i.i = xor i32 %i.h, %i.f
  %i.j = call i32 @g_int64_hash(ptr noundef nonnull %i.a)
  %i.k = xor i32 %i.i, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @is_zero(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %1 = alloca %struct.e_in6_addr, align 1         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i128, ptr %i.a, align 1
  %i.c = load i128, ptr %1, align 1
  %i.d = icmp ne i128 %i.b, %i.c
  %i.e = zext i1 %i.d to i32
  %i.f = icmp eq i32 %i.e, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef i32 @len(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret i32 16
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @slice(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b
  %i.d = tail call ptr @g_byte_array_append(ptr noundef %1, ptr noundef %i.c, i32 noundef %3) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define internal noundef i32 @bitwise_and(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.e = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr i8, ptr %2, i64 24
  %i.i = load i32, ptr %i.h, align 4
  %. = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.i) ; 2 uses
  %i.j = tail call i32 @llvm.umin.i32(i32 %., i32 128) ; 6 uses
  %i.k = icmp ugt i32 %., 7
  br i1 %i.k, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.m = sub nsw i32 7, %i.j
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.m, i32 -8)
  %i.o = add nsw i32 %i.n, %i.j                   ; 2 uses
  %i.p = lshr i32 %i.o, 3
  %narrow = add nuw nsw i32 %i.p, 1
  %i.q = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp ult i32 %i.o, 24
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.r = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.r, -32
  %i.s = sub i64 %i.a, %i.c
  %diff.check32 = icmp ugt i64 %i.s, -32
  %conflict.rdx = or i1 %diff.check, %diff.check32
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph.a

vec.epilog.ph.a:                                  ; preds = %vector.memcheck
  %n.vec36 = and i64 %i.q, 1073741820             ; 7 uses
  %i.t = trunc nuw nsw i64 %n.vec36 to i32
  %i.u = shl i32 %i.t, 3
  %i.v = sub i32 %i.j, %i.u                       ; 2 uses
  %wide.load38 = load <4 x i8>, ptr %i.d, align 4
  %wide.load39 = load <4 x i8>, ptr %i.e, align 4
  %4 = and <4 x i8> %wide.load39, %wide.load38
  store <4 x i8> %4, ptr %i.l, align 1
  %i.w = icmp eq i64 %n.vec36, 4
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph.a
  %5 = getelementptr i8, ptr %1, i64 12
  %wide.load38.1 = load <4 x i8>, ptr %5, align 4
  %6 = getelementptr i8, ptr %2, i64 12
  %wide.load39.1 = load <4 x i8>, ptr %6, align 4
  %7 = and <4 x i8> %wide.load39.1, %wide.load38.1
  %8 = getelementptr i8, ptr %0, i64 12
  store <4 x i8> %7, ptr %8, align 1
  %i.x = icmp eq i64 %n.vec36, 8
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %9 = getelementptr i8, ptr %1, i64 16
  %wide.load38.2 = load <4 x i8>, ptr %9, align 4
  %10 = getelementptr i8, ptr %2, i64 16
  %wide.load39.2 = load <4 x i8>, ptr %10, align 4
  %11 = and <4 x i8> %wide.load39.2, %wide.load38.2
  %12 = getelementptr i8, ptr %0, i64 16
  store <4 x i8> %11, ptr %12, align 1
  %13 = icmp eq i64 %n.vec36, 12
  br i1 %13, label %vec.epilog.middle.block, label %vec.epilog.vector.body.3

vec.epilog.vector.body.3:                         ; preds = %vec.epilog.vector.body.2
  %i.y = getelementptr i8, ptr %1, i64 20
  %wide.load38.3 = load <4 x i8>, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %2, i64 20
  %wide.load39.3 = load <4 x i8>, ptr %i.z, align 4
  %i.aa = and <4 x i8> %wide.load39.3, %wide.load38.3
  %i.ab = getelementptr i8, ptr %0, i64 20
  store <4 x i8> %i.aa, ptr %i.ab, align 1
  br label %vec.epilog.middle.block

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.3, %vec.epilog.vector.body.2, %vec.epilog.vector.body.1, %vec.epilog.ph.a
  %cmp.n41 = icmp eq i64 %n.vec36, %i.q
  br i1 %cmp.n41, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec36, %vec.epilog.middle.block ]
  %.02427.ph = phi i32 [ %i.j, %vector.memcheck ], [ %i.j, %iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.02427 = phi i32 [ %i.ai, %vec.epilog.scalar.ph ], [ %.02427.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ac = getelementptr i8, ptr %i.d, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = getelementptr i8, ptr %i.e, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, %i.ad
  %i.ah = getelementptr i8, ptr %i.l, i64 %indvars.iv
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = add i32 %.02427, -8                     ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, 7
  br i1 %i.aj, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %bb.a
  %.024.lcssa = phi i32 [ %i.j, %bb.a ], [ %i.v, %vec.epilog.middle.block ], [ %i.ai, %vec.epilog.scalar.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %n.vec36, %vec.epilog.middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ] ; 3 uses
  %.not = icmp eq i32 %.024.lcssa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ak = getelementptr i8, ptr %i.d, i64 %.0.lcssa
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = getelementptr i8, ptr %i.e, i64 %.0.lcssa
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = and i8 %i.an, %i.al
  %i.ap = zext nneg i32 %.024.lcssa to i64
  %i.aq = getelementptr i8, ptr @bitmasks, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = and i8 %i.ao, %i.ar
  %i.at = getelementptr i8, ptr %0, i64 8
  %i.au = getelementptr i8, ptr %i.at, i64 %.0.lcssa
  store i8 %i.as, ptr %i.au, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare void @ftype_register(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @ftype_register_pseudofields_ipv6(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef nonnull @ftype_register_pseudofields_ipv6.hf_ftypes, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strndup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @get_host_ipaddr6(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: null_pointer_is_valid
declare void @ip6_to_str_buf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare i32 @g_int64_hash(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_0
