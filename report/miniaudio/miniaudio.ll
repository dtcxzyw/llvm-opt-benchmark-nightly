Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_slot_allocator_init_preallocated:bb.a
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 4
  %i.o = and i64 %i.n, 34359738360
  %i.p = add nuw nsw i64 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %1, ptr %i.q, align 8, !tbaa !158
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.p, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !160
  %i.t = load i32, ptr %0, align 4, !tbaa !156
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.t, ptr %i.u, align 4, !tbaa !161
  br label %ma_slot_allocator_get_heap_layout.exit.thread

ma_slot_allocator_get_heap_layout.exit.thread:    ; preds = %bb.b, %ma_zero_memory_default.exit19, %bb.a, %ma_zero_memory_default.exit
  %.0 = phi i32 [ 0, %ma_zero_memory_default.exit ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit19 ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_slot_allocator_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !156    ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %i.b, 5
  %i.e = and i32 %i.b, 31
  %.not.i.i.i = icmp ne i32 %i.e, 0
  %i.f = zext i1 %.not.i.i.i to i32
  %spec.select.i.i.i = add nuw nsw i32 %i.d, %i.f
  %i.g = shl nuw nsw i32 %spec.select.i.i.i, 2
  %narrow.i.i = add nuw nsw i32 %i.g, 4
  %i.h = and i32 %narrow.i.i, 2147483640
  %i.i = zext nneg i32 %i.h to i64
  %i.j = zext i32 %i.b to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 4
  %i.m = and i64 %i.l, 34359738360
  %i.n = add nuw nsw i64 %i.m, %i.i               ; 2 uses
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %.not8.i = icmp eq ptr %i.p, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %1, align 8, !tbaa !126
  %i.r = tail call ptr %i.p(i64 noundef %i.n, ptr noundef %i.q) #55, !inline_history !127
  br label %ma_malloc.exit

bb.f:                                             ; preds = %bb.c
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef %i.n) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.e, %bb.f
  %.0.i20 = phi ptr [ %i.r, %bb.e ], [ %i.s, %bb.f ] ; 7 uses
  %i.t = icmp eq ptr %.0.i20, null
  br i1 %i.t, label %ma_free.exit, label %bb.g

bb.g:                                             ; preds = %ma_malloc.exit
  %i.u = icmp eq ptr %2, null
  br i1 %i.u, label %.thread, label %ma_zero_memory_default.exit19.i

ma_zero_memory_default.exit19.i:                  ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.v = load i32, ptr %0, align 4, !tbaa !156    ; 4 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.g, %ma_zero_memory_default.exit19.i
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !132  ; 2 uses
  %.not9.i = icmp eq ptr %i.y, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %1, align 8, !tbaa !126
  tail call void %i.y(ptr noundef nonnull %.0.i20, ptr noundef %i.z) #55, !inline_history !133
  br label %ma_free.exit

bb.j:                                             ; preds = %.thread
  tail call void @free(ptr noundef nonnull %.0.i20) #55
  br label %ma_free.exit

bb.k:                                             ; preds = %ma_zero_memory_default.exit19.i
  %i.aa = lshr i32 %i.v, 5
  %i.ab = and i32 %i.v, 31
  %.not.i.i.i21 = icmp ne i32 %i.ab, 0
  %i.ac = zext i1 %.not.i.i.i21 to i32
  %spec.select.i.i.i22 = add nuw nsw i32 %i.aa, %i.ac
  %i.ad = shl nuw nsw i32 %spec.select.i.i.i22, 2
  %narrow.i.i23 = add nuw nsw i32 %i.ad, 4
  %i.ae = and i32 %narrow.i.i23, 2147483640
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = zext i32 %i.v to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 4
  %i.aj = and i64 %i.ai, 34359738360
  %i.ak = add nuw nsw i64 %i.aj, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.0.i20, ptr %i.al, align 8, !tbaa !158
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i20, i8 0, i64 %i.ak, i1 false)
  store ptr %.0.i20, ptr %2, align 8, !tbaa !159
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i20, i64 %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !160
  %i.ao = load i32, ptr %0, align 4, !tbaa !156
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !161
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.aq, align 8, !tbaa !162
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.d, %bb.a, %bb.b, %bb.j, %bb.i, %bb.h, %ma_malloc.exit, %bb.k
  %.013 = phi i32 [ 0, %bb.k ], [ -2, %bb.j ], [ -2, %bb.a ], [ -4, %ma_malloc.exit ], [ -4, %bb.d ], [ -2, %bb.h ], [ -2, %bb.i ], [ -2, %bb.b ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define void @ma_slot_allocator_uninit(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !162
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132  ; 2 uses
  %.not9.i = icmp eq ptr %i.h, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %1, align 8, !tbaa !126
  tail call void %i.h(ptr noundef nonnull %i.e, ptr noundef %i.i) #55, !inline_history !133
  br label %ma_free.exit

bb.g:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.e) #55
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_slot_allocator_alloc(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread55, label %.preheader60

.preheader60:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !161
  %.not69 = icmp eq i32 %i.e, 0
  br i1 %.not69, label %.thread55, label %.preheader

.preheader:                                       ; preds = %.preheader60, %bb.ai
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ai ], [ 0, %.preheader60 ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %ma_ffs_32.exit
  %i.f = load ptr, ptr %0, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4 ; 34 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = xor i32 %i.h, -1
  %i.j = and i32 %i.h, 1
  %.not.i46.not = icmp eq i32 %i.j, 0
  br i1 %.not.i46.not, label %ma_ffs_32.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.h, 2
  %.not.1.i.not = icmp eq i32 %i.k, 0
  br i1 %.not.1.i.not, label %ma_ffs_32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %i.h, 4
  %.not.2.i.not = icmp eq i32 %i.l, 0
  br i1 %.not.2.i.not, label %ma_ffs_32.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = and i32 %i.h, 8
  %.not.3.i.not = icmp eq i32 %i.m, 0
  br i1 %.not.3.i.not, label %ma_ffs_32.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = and i32 %i.h, 16
  %.not.4.i.not = icmp eq i32 %i.n, 0
  br i1 %.not.4.i.not, label %ma_ffs_32.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = and i32 %i.h, 32
  %.not.5.i.not = icmp eq i32 %i.o, 0
  br i1 %.not.5.i.not, label %ma_ffs_32.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = and i32 %i.h, 64
  %.not.6.i.not = icmp eq i32 %i.p, 0
  br i1 %.not.6.i.not, label %ma_ffs_32.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = and i32 %i.h, 128
  %.not.7.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.7.i.not, label %ma_ffs_32.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = and i32 %i.h, 256
  %.not.8.i.not = icmp eq i32 %i.r, 0
  br i1 %.not.8.i.not, label %ma_ffs_32.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = and i32 %i.h, 512
  %.not.9.i.not = icmp eq i32 %i.s, 0
  br i1 %.not.9.i.not, label %ma_ffs_32.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = and i32 %i.h, 1024
  %.not.10.i.not = icmp eq i32 %i.t, 0
  br i1 %.not.10.i.not, label %ma_ffs_32.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = and i32 %i.h, 2048
  %.not.11.i.not = icmp eq i32 %i.u, 0
  br i1 %.not.11.i.not, label %ma_ffs_32.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = and i32 %i.h, 4096
  %.not.12.i.not = icmp eq i32 %i.v, 0
  br i1 %.not.12.i.not, label %ma_ffs_32.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = and i32 %i.h, 8192
  %.not.13.i.not = icmp eq i32 %i.w, 0
  br i1 %.not.13.i.not, label %ma_ffs_32.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = and i32 %i.h, 16384
  %.not.14.i.not = icmp eq i32 %i.x, 0
  br i1 %.not.14.i.not, label %ma_ffs_32.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = and i32 %i.h, 32768
  %.not.15.i.not = icmp eq i32 %i.y, 0
  br i1 %.not.15.i.not, label %ma_ffs_32.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = and i32 %i.h, 65536
  %.not.16.i.not = icmp eq i32 %i.z, 0
  br i1 %.not.16.i.not, label %ma_ffs_32.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aa = and i32 %i.h, 131072
  %.not.17.i.not = icmp eq i32 %i.aa, 0
  br i1 %.not.17.i.not, label %ma_ffs_32.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ab = and i32 %i.h, 262144
  %.not.18.i.not = icmp eq i32 %i.ab, 0
  br i1 %.not.18.i.not, label %ma_ffs_32.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ac = and i32 %i.h, 524288
  %.not.19.i.not = icmp eq i32 %i.ac, 0
  br i1 %.not.19.i.not, label %ma_ffs_32.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ad = and i32 %i.h, 1048576
  %.not.20.i.not = icmp eq i32 %i.ad, 0
  br i1 %.not.20.i.not, label %ma_ffs_32.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ae = and i32 %i.h, 2097152
  %.not.21.i.not = icmp eq i32 %i.ae, 0
  br i1 %.not.21.i.not, label %ma_ffs_32.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.af = and i32 %i.h, 4194304
  %.not.22.i.not = icmp eq i32 %i.af, 0
  br i1 %.not.22.i.not, label %ma_ffs_32.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ag = and i32 %i.h, 8388608
  %.not.23.i.not = icmp eq i32 %i.ag, 0
  br i1 %.not.23.i.not, label %ma_ffs_32.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ah = and i32 %i.h, 16777216
  %.not.24.i.not = icmp eq i32 %i.ah, 0
  br i1 %.not.24.i.not, label %ma_ffs_32.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ai = and i32 %i.h, 33554432
  %.not.25.i.not = icmp eq i32 %i.ai, 0
  br i1 %.not.25.i.not, label %ma_ffs_32.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aj = and i32 %i.h, 67108864
  %.not.26.i.not = icmp eq i32 %i.aj, 0
  br i1 %.not.26.i.not, label %ma_ffs_32.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ak = and i32 %i.h, 134217728
  %.not.27.i.not = icmp eq i32 %i.ak, 0
  br i1 %.not.27.i.not, label %ma_ffs_32.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.al = and i32 %i.h, 268435456
  %.not.28.i.not = icmp eq i32 %i.al, 0
  br i1 %.not.28.i.not, label %ma_ffs_32.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.am = and i32 %i.h, 536870912
  %.not.29.i.not = icmp eq i32 %i.am, 0
  br i1 %.not.29.i.not, label %ma_ffs_32.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %3 = lshr exact i32 %2, 30
  %4 = and i32 %3, 1
  %spec.select.i47 = xor i32 %4, 31
  br label %ma_ffs_32.exit

ma_ffs_32.exit:                                   ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %.0.lcssa.i = phi i32 [ 16, %bb.s ], [ 0, %bb.c ], [ 1, %bb.d ], [ 24, %bb.aa ], [ 2, %bb.e ], [ 20, %bb.w ], [ 3, %bb.f ], [ %spec.select.i47, %bb.ag ], [ 4, %bb.g ], [ 17, %bb.t ], [ 5, %bb.h ], [ 29, %bb.af ], [ 6, %bb.i ], [ 23, %bb.z ], [ 7, %bb.j ], [ 28, %bb.ae ], [ 8, %bb.k ], [ 18, %bb.u ], [ 9, %bb.l ], [ 27, %bb.ad ], [ 10, %bb.m ], [ 21, %bb.x ], [ 11, %bb.n ], [ 26, %bb.ac ], [ 12, %bb.o ], [ 19, %bb.v ], [ 13, %bb.p ], [ 25, %bb.ab ], [ 14, %bb.q ], [ 22, %bb.y ], [ 15, %bb.r ] ; 2 uses
  %i.an = shl nuw i32 1, %.0.lcssa.i
  %i.ao = or i32 %i.an, %i.h
  %i.ap = load ptr, ptr %0, align 8, !tbaa !159
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = cmpxchg volatile ptr %i.aq, i32 %i.h, i32 %i.ao seq_cst seq_cst, align 4
  %i.as = extractvalue { i32, i1 } %i.ar, 1
  br i1 %i.as, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %ma_ffs_32.exit, %ma_ffs_32.exit.1
  %.03767.lcssa.wide = phi i64 [ %indvars.iv.1, %ma_ffs_32.exit.1 ], [ %indvars.iv, %ma_ffs_32.exit ]
  %.0.lcssa.i.lcssa = phi i32 [ %.0.lcssa.i.1, %ma_ffs_32.exit.1 ], [ %.0.lcssa.i, %ma_ffs_32.exit ]
  %i.at = trunc nuw nsw i64 %.03767.lcssa.wide to i32
  %i.au = atomicrmw add ptr %i.d, i32 1 seq_cst, align 8 ; 0 uses
  %i.av = shl i32 %i.at, 5
  %5 = add nuw i32 %.0.lcssa.i.lcssa, %i.av       ; 2 uses
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !161
  %.not = icmp ult i32 %5, %i.aw
  br i1 %.not, label %bb.ah, label %.thread55

bb.ah:                                            ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !160
  %i.az = zext i32 %5 to i64                      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !118
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !118
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw i64 %i.bd, 32
  %i.bf = or disjoint i64 %i.be, %i.az
  store i64 %i.bf, ptr %1, align 8, !tbaa !164
  br label %.thread55

bb.ai:                                            ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load i32, ptr %i.c, align 4, !tbaa !161 ; 3 uses
  %i.bh = lshr i32 %i.bg, 5
  %i.bi = and i32 %i.bg, 31
  %.not.i = icmp ne i32 %i.bi, 0
  %i.bj = zext i1 %.not.i to i32
  %spec.select.i45 = add nuw nsw i32 %i.bh, %i.bj
  %i.bk = zext nneg i32 %spec.select.i45 to i64
  %i.bl = icmp samesign ult i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %.preheader, label %._crit_edge, !llvm.loop !1220

._crit_edge:                                      ; preds = %bb.ai
  %i.bm = load i32, ptr %i.d, align 8, !tbaa !1221
  %i.bn = icmp ult i32 %i.bm, %i.bg
  br i1 %i.bn, label %.preheader59.1, label %.thread55

.preheader59.1:                                   ; preds = %._crit_edge
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.bo = load i32, ptr %i.c, align 4, !tbaa !161
  %.not69.1 = icmp eq i32 %i.bo, 0
  br i1 %.not69.1, label %.thread55, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader59.1, %bb.bp
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %bb.bp ], [ 0, %.preheader59.1 ] ; 4 uses
  br label %bb.aj

bb.aj:                                            ; preds = %ma_ffs_32.exit.1, %.preheader.1
  %i.bp = load ptr, ptr %0, align 8, !tbaa !159
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.1
  %i.br = load atomic i32, ptr %i.bq seq_cst, align 4 ; 34 uses
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.bp, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %6 = xor i32 %i.br, -1
  %i.bt = and i32 %i.br, 1
  %.not.i46.not.1 = icmp eq i32 %i.bt, 0
  br i1 %.not.i46.not.1, label %ma_ffs_32.exit.1, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bu = and i32 %i.br, 2
  %.not.1.i.not.1 = icmp eq i32 %i.bu, 0
  br i1 %.not.1.i.not.1, label %ma_ffs_32.exit.1, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bv = and i32 %i.br, 4
  %.not.2.i.not.1 = icmp eq i32 %i.bv, 0
  br i1 %.not.2.i.not.1, label %ma_ffs_32.exit.1, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bw = and i32 %i.br, 8
  %.not.3.i.not.1 = icmp eq i32 %i.bw, 0
  br i1 %.not.3.i.not.1, label %ma_ffs_32.exit.1, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bx = and i32 %i.br, 16
  %.not.4.i.not.1 = icmp eq i32 %i.bx, 0
  br i1 %.not.4.i.not.1, label %ma_ffs_32.exit.1, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.by = and i32 %i.br, 32
  %.not.5.i.not.1 = icmp eq i32 %i.by, 0
  br i1 %.not.5.i.not.1, label %ma_ffs_32.exit.1, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bz = and i32 %i.br, 64
  %.not.6.i.not.1 = icmp eq i32 %i.bz, 0
  br i1 %.not.6.i.not.1, label %ma_ffs_32.exit.1, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ca = and i32 %i.br, 128
  %.not.7.i.not.1 = icmp eq i32 %i.ca, 0
  br i1 %.not.7.i.not.1, label %ma_ffs_32.exit.1, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cb = and i32 %i.br, 256
  %.not.8.i.not.1 = icmp eq i32 %i.cb, 0
  br i1 %.not.8.i.not.1, label %ma_ffs_32.exit.1, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cc = and i32 %i.br, 512
  %.not.9.i.not.1 = icmp eq i32 %i.cc, 0
  br i1 %.not.9.i.not.1, label %ma_ffs_32.exit.1, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cd = and i32 %i.br, 1024
  %.not.10.i.not.1 = icmp eq i32 %i.cd, 0
  br i1 %.not.10.i.not.1, label %ma_ffs_32.exit.1, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ce = and i32 %i.br, 2048
  %.not.11.i.not.1 = icmp eq i32 %i.ce, 0
  br i1 %.not.11.i.not.1, label %ma_ffs_32.exit.1, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cf = and i32 %i.br, 4096
  %.not.12.i.not.1 = icmp eq i32 %i.cf, 0
  br i1 %.not.12.i.not.1, label %ma_ffs_32.exit.1, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cg = and i32 %i.br, 8192
  %.not.13.i.not.1 = icmp eq i32 %i.cg, 0
  br i1 %.not.13.i.not.1, label %ma_ffs_32.exit.1, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ch = and i32 %i.br, 16384
  %.not.14.i.not.1 = icmp eq i32 %i.ch, 0
  br i1 %.not.14.i.not.1, label %ma_ffs_32.exit.1, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ci = and i32 %i.br, 32768
  %.not.15.i.not.1 = icmp eq i32 %i.ci, 0
  br i1 %.not.15.i.not.1, label %ma_ffs_32.exit.1, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cj = and i32 %i.br, 65536
  %.not.16.i.not.1 = icmp eq i32 %i.cj, 0
  br i1 %.not.16.i.not.1, label %ma_ffs_32.exit.1, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ck = and i32 %i.br, 131072
  %.not.17.i.not.1 = icmp eq i32 %i.ck, 0
  br i1 %.not.17.i.not.1, label %ma_ffs_32.exit.1, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cl = and i32 %i.br, 262144
  %.not.18.i.not.1 = icmp eq i32 %i.cl, 0
  br i1 %.not.18.i.not.1, label %ma_ffs_32.exit.1, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cm = and i32 %i.br, 524288
  %.not.19.i.not.1 = icmp eq i32 %i.cm, 0
  br i1 %.not.19.i.not.1, label %ma_ffs_32.exit.1, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cn = and i32 %i.br, 1048576
  %.not.20.i.not.1 = icmp eq i32 %i.cn, 0
  br i1 %.not.20.i.not.1, label %ma_ffs_32.exit.1, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.co = and i32 %i.br, 2097152
  %.not.21.i.not.1 = icmp eq i32 %i.co, 0
  br i1 %.not.21.i.not.1, label %ma_ffs_32.exit.1, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cp = and i32 %i.br, 4194304
  %.not.22.i.not.1 = icmp eq i32 %i.cp, 0
  br i1 %.not.22.i.not.1, label %ma_ffs_32.exit.1, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cq = and i32 %i.br, 8388608
  %.not.23.i.not.1 = icmp eq i32 %i.cq, 0
  br i1 %.not.23.i.not.1, label %ma_ffs_32.exit.1, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cr = and i32 %i.br, 16777216
  %.not.24.i.not.1 = icmp eq i32 %i.cr, 0
  br i1 %.not.24.i.not.1, label %ma_ffs_32.exit.1, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cs = and i32 %i.br, 33554432
  %.not.25.i.not.1 = icmp eq i32 %i.cs, 0
  br i1 %.not.25.i.not.1, label %ma_ffs_32.exit.1, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ct = and i32 %i.br, 67108864
  %.not.26.i.not.1 = icmp eq i32 %i.ct, 0
  br i1 %.not.26.i.not.1, label %ma_ffs_32.exit.1, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cu = and i32 %i.br, 134217728
  %.not.27.i.not.1 = icmp eq i32 %i.cu, 0
  br i1 %.not.27.i.not.1, label %ma_ffs_32.exit.1, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cv = and i32 %i.br, 268435456
  %.not.28.i.not.1 = icmp eq i32 %i.cv, 0
  br i1 %.not.28.i.not.1, label %ma_ffs_32.exit.1, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cw = and i32 %i.br, 536870912
  %.not.29.i.not.1 = icmp eq i32 %i.cw, 0
  br i1 %.not.29.i.not.1, label %ma_ffs_32.exit.1, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %7 = lshr exact i32 %6, 30
  %8 = and i32 %7, 1
  %spec.select.i47.1 = xor i32 %8, 31
  br label %ma_ffs_32.exit.1

ma_ffs_32.exit.1:                                 ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.0.lcssa.i.1 = phi i32 [ 16, %bb.ba ], [ 0, %bb.ak ], [ 1, %bb.al ], [ 24, %bb.bi ], [ 2, %bb.am ], [ 20, %bb.be ], [ 3, %bb.an ], [ %spec.select.i47.1, %bb.bo ], [ 4, %bb.ao ], [ 17, %bb.bb ], [ 5, %bb.ap ], [ 29, %bb.bn ], [ 6, %bb.aq ], [ 23, %bb.bh ], [ 7, %bb.ar ], [ 28, %bb.bm ], [ 8, %bb.as ], [ 18, %bb.bc ], [ 9, %bb.at ], [ 27, %bb.bl ], [ 10, %bb.au ], [ 21, %bb.bf ], [ 11, %bb.av ], [ 26, %bb.bk ], [ 12, %bb.aw ], [ 19, %bb.bd ], [ 13, %bb.ax ], [ 25, %bb.bj ], [ 14, %bb.ay ], [ 22, %bb.bg ], [ 15, %bb.az ] ; 2 uses
  %i.cx = shl nuw i32 1, %.0.lcssa.i.1
  %i.cy = or i32 %i.cx, %i.br
  %i.cz = load ptr, ptr %0, align 8, !tbaa !159
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.1
  %i.db = cmpxchg volatile ptr %i.da, i32 %i.br, i32 %i.cy seq_cst seq_cst, align 4
  %i.dc = extractvalue { i32, i1 } %i.db, 1
  br i1 %i.dc, label %.loopexit, label %bb.aj

bb.bp:                                            ; preds = %bb.aj
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !161 ; 3 uses
  %i.de = lshr i32 %i.dd, 5
  %i.df = and i32 %i.dd, 31
  %.not.i.1 = icmp ne i32 %i.df, 0
  %i.dg = zext i1 %.not.i.1 to i32
  %spec.select.i45.1 = add nuw nsw i32 %i.de, %i.dg
  %i.dh = zext nneg i32 %spec.select.i45.1 to i64
  %i.di = icmp samesign ult i64 %indvars.iv.next.1, %i.dh
  br i1 %i.di, label %.preheader.1, label %._crit_edge.1, !llvm.loop !1220

._crit_edge.1:                                    ; preds = %bb.bp
  %i.dj = load i32, ptr %i.d, align 8, !tbaa !1221
  %i.dk = icmp ult i32 %i.dj, %i.dd
  br i1 %i.dk, label %bb.bq, label %.thread55

bb.bq:                                            ; preds = %._crit_edge.1
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  br label %.thread55

.thread55:                                        ; preds = %.preheader59.1, %.preheader60, %._crit_edge, %._crit_edge.1, %bb.bq, %.loopexit, %bb.ah, %bb.a
  %.6 = phi i32 [ -2, %bb.a ], [ 0, %bb.ah ], [ -4, %.loopexit ], [ -4, %.preheader60 ], [ -4, %._crit_edge ], [ -4, %bb.bq ], [ -4, %._crit_edge.1 ], [ -4, %.preheader59.1 ]
  ret i32 %.6
}

; Function Attrs: norecurse nounwind uwtable
define range(i32 -3, 1) i32 @ma_slot_allocator_free(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = lshr i32 %i.b, 5                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !161  ; 2 uses
  %i.f = lshr i32 %i.e, 5
  %i.g = and i32 %i.e, 31
  %.not.i = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not.i to i32
  %spec.select.i24 = add nuw nsw i32 %i.f, %i.h
  %.not = icmp samesign ult i32 %i.c, %spec.select.i24
  br i1 %.not, label %.critedge.preheader, label %.loopexit

.critedge.preheader:                              ; preds = %bb.b
  %i.i = and i32 %i.b, 31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = zext nneg i32 %i.c to i64                ; 2 uses
  %i.l = shl nuw i32 1, %i.i
  %i.m = xor i32 %i.l, -1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %bb.c
  %i.n = load atomic i32, ptr %i.j seq_cst, align 8
  %.not22 = icmp eq i32 %i.n, 0
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.o = load ptr, ptr %0, align 8, !tbaa !159
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.k
  %i.q = load atomic i32, ptr %i.p seq_cst, align 4 ; 2 uses
  %i.r = and i32 %i.q, %i.m
  %i.s = load ptr, ptr %0, align 8, !tbaa !159
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.k
  %i.u = cmpxchg volatile ptr %i.t, i32 %i.q, i32 %i.r seq_cst seq_cst, align 4
  %.not23 = extractvalue { i32, i1 } %i.u, 1
  br i1 %.not23, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.v = atomicrmw sub ptr %i.j, i32 1 seq_cst, align 8 ; 0 uses
  br label %.loopexit, !llvm.loop !4

.loopexit:                                        ; preds = %.critedge, %bb.d, %bb.b, %bb.a
  %.2 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ 0, %bb.d ], [ -3, %.critedge ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_job_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_job) align 8 captures(address_is_null) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i16 %1, ptr %0, align 8, !tbaa !119
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 -1, ptr %i.a, align 2, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.b, align 8, !tbaa !166
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ma_job_process(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !119    ; 2 uses
  %i.c = icmp ugt i16 %i.b, 11
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i16 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @g_jobVTable, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #55
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ -2, %bb.a ], [ -3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @ma_job_queue_config_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.sroa.2.0.insert.ext = zext i32 %1 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_job_queue_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !154
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !168  ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = lshr i32 %i.d, 5
  %i.g = and i32 %i.d, 31
  %.not.i.i.i.i = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not.i.i.i.i to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %i.f, %i.h
  %i.i = shl nuw nsw i32 %spec.select.i.i.i.i, 2
  %narrow.i.i.i = add nuw nsw i32 %i.i, 4
  %i.j = and i32 %narrow.i.i.i, 2147483640
  %i.k = zext nneg i32 %i.j to i64
  %i.l = zext i32 %i.d to i64                     ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 4
  %i.o = and i64 %i.n, 34359738360
  %i.p = mul nuw nsw i64 %i.l, 104
  %i.q = add nuw nsw i64 %i.o, %i.p
  %i.r = add nuw nsw i64 %i.q, %i.k
  store i64 %i.r, ptr %1, align 8, !tbaa !154
  br label %ma_job_queue_get_heap_layout.exit.thread

ma_job_queue_get_heap_layout.exit.thread:         ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ma_job_queue_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_job_queue_get_heap_layout.exit.thread, label %ma_zero_memory_default.exit32

ma_zero_memory_default.exit32:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %2, i8 0, i64 192, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !168  ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_job_queue_get_heap_layout.exit.thread, label %bb.c
end_hunk_0
