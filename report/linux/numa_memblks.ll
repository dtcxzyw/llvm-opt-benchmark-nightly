Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/numa_memblks?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0_@numa_alloc_distance:bb.a
  %i.m = shl nsw i64 -2, %.022.in29
  %i.n = and i64 %i.m, %i.i                       ; 2 uses
  %.not.i26 = icmp eq i64 %i.n, 0
  br i1 %.not.i26, label %._crit_edge.loopexit, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.e
  %i.o = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.n) #15, !srcloc !19 ; 2 uses
  %i.p = call i64 @llvm.umin.i64(i64 %i.o, i64 64)
  %i.q = icmp ult i64 %i.o, 64
  br i1 %i.q, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %bb.e, %.lr.ph, %find_next_bit.exit
  %.02230.le = trunc nuw nsw i64 %.022.in29 to i32
  %i.r = add nuw nsw i32 %.02230.le, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %numa_nodemask_from_meminfo.exit, %._crit_edge.loopexit, %find_first_bit.exit
  %.020.lcssa = phi i32 [ 1, %find_first_bit.exit ], [ %i.r, %._crit_edge.loopexit ], [ 1, %numa_nodemask_from_meminfo.exit ] ; 5 uses
  %i.s = mul nuw nsw i32 %.020.lcssa, %.020.lcssa
  %i.t = zext nneg i32 %i.s to i64
  %i.u = call ptr @memblock_alloc_try_nid(i64 noundef range(i64 -2147483648, 2147483648) %i.t, i64 noundef 4096, i64 noundef 0, i64 noundef 0, i32 noundef -1) #11 ; 3 uses
  store ptr %i.u, ptr @numa_distance, align 8
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.v = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13 ; 0 uses
  store ptr inttoptr (i64 1 to ptr), ptr @numa_distance, align 8
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge
  store i32 %.020.lcssa, ptr @numa_distance_cnt, align 4
  %i.w = zext nneg i32 %.020.lcssa to i64
  %wide.trip.count37 = zext nneg i32 %.020.lcssa to i64 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.g, %bb.i
  %indvars.iv34 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next35, %bb.i ] ; 3 uses
  %i.x = mul nuw nsw i64 %indvars.iv34, %i.w
  %invariant.gep = getelementptr i8, ptr %i.u, i64 %i.x
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.y = icmp eq i64 %indvars.iv34, %indvars.iv
  %i.z = select i1 %i.y, i8 10, i8 20
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %i.z, ptr %gep, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count37
  br i1 %exitcond.not, label %bb.i, label %bb.h, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %.loopexit, label %.preheader, !llvm.loop !18

.loopexit:                                        ; preds = %bb.i, %bb.f
  %.0 = phi i32 [ -12, %bb.f ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  ret i32 %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 256) i32 @__node_distance(i32 noundef %0, i32 noundef %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @numa_distance_cnt, align 4 ; 3 uses
  %.not = icmp slt i32 %0, %i.a
  %.not10 = icmp slt i32 %1, %i.a
  %or.cond = and i1 %.not, %.not10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, %1
  %i.c = select i1 %i.b, i32 10, i32 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @numa_distance, align 8
  %i.e = mul i32 %i.a, %0
  %i.f = add i32 %i.e, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(argmem: readwrite)
define dso_local void @numa_remove_memblk_from(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = add i32 %i.a, -1                         ; 2 uses
  store i32 %i.b, ptr %1, align 8
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr [24 x i8], ptr %i.c, i64 %i.d
  %i.f = add i32 %0, 1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [24 x i8], ptr %i.c, i64 %i.g
  %i.i = sub i32 %i.b, %0
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.e, ptr align 8 %i.h, i64 %i.k, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local range(i32 -22, 1) i32 @numa_add_memblk(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @numa_add_memblk_to(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull @numa_meminfo) #12, !srcloc !20
  ret i32 %i.a
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 -22, 1) i32 @numa_add_memblk_to(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i64 %1, %2
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, %2
  %i.c = icmp ugt i32 %0, 63
  %or.cond3 = or i1 %i.c, %i.b
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add i64 %2, -1
  %i.e = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %0, i64 noundef %1, i64 noundef %i.d) #13 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = load i32, ptr %3, align 8                ; 2 uses
  %i.g = icmp sgt i32 %i.f, 127
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %3, i64 8          ; 3 uses
  %i.j = sext i32 %i.f to i64
  %i.k = getelementptr [24 x i8], ptr %i.i, i64 %i.j
  store i64 %1, ptr %i.k, align 8
  %i.l = load i32, ptr %3, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [24 x i8], ptr %i.i, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store i64 %2, ptr %i.o, align 8
  %i.p = load i32, ptr %3, align 8
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [24 x i8], ptr %i.i, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 16
  store i32 %0, ptr %i.s, align 8
  %i.t = load i32, ptr %3, align 8
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %3, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.c ], [ -22, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local range(i32 -22, 1) i32 @numa_add_reserved_memblk(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @numa_add_memblk_to(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull @numa_reserved_meminfo) #12, !srcloc !21
  ret i32 %i.a
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local range(i32 -22, 1) i32 @numa_cleanup_meminfo(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @memblock_start_of_DRAM() #11
  %i.b = tail call i64 @memblock_end_of_DRAM() #11 ; 4 uses
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8
  br label %bb.b

.preheader146:                                    ; preds = %bb.i
  %i.f = icmp sgt i32 %i.af, 0
  br i1 %i.f, label %.lr.ph161, label %.preheader

.lr.ph161:                                        ; preds = %.preheader146
  %i.g = getelementptr i8, ptr %0, i64 8          ; 4 uses
  br label %bb.j

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.0111154 = phi i32 [ 0, %.lr.ph ], [ %.2113, %bb.i ] ; 6 uses
  %i.h = sext i32 %.0111154 to i64
  %i.i = getelementptr [24 x i8], ptr %i.e, i64 %i.h ; 8 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 8        ; 3 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = sub i64 %i.l, %i.j
  %i.n = tail call zeroext i1 @memblock_overlaps_region(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), i64 noundef %i.j, i64 noundef %i.m) #11
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @numa_move_tail_memblk(i32 noundef %.0111154, ptr noundef %0) #12
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.i, align 8
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.a) ; 2 uses
  store i64 %i.p, ptr %i.i, align 8
  %i.q = load i64, ptr %i.k, align 8              ; 3 uses
  %i.r = icmp ugt i64 %i.q, %i.b
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.i, i64 16
  %i.t = load i32, ptr %i.s, align 8
  %i.u = tail call fastcc i32 @numa_add_memblk_to(i32 noundef %i.t, i64 noundef %i.b, i64 noundef %i.q, ptr noundef nonnull @numa_reserved_meminfo) #12, !srcloc !27 ; 0 uses
  store i64 %i.b, ptr %i.k, align 8
  %.pre = load i64, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi i64 [ %i.b, %bb.e ], [ %i.q, %bb.d ]
  %i.w = phi i64 [ %.pre, %bb.e ], [ %i.p, %bb.d ]
  %.not134 = icmp ult i64 %i.w, %i.v
  br i1 %.not134, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add i32 %.0111154, -1
  %i.y = load i32, ptr %0, align 8
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %0, align 8
  %i.aa = getelementptr i8, ptr %i.i, i64 24
  %i.ab = sub i32 %i.z, %.0111154
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1112 = phi i32 [ %i.x, %bb.g ], [ %.0111154, %bb.f ]
  %i.ae = add i32 %.1112, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.2113 = phi i32 [ %i.ae, %bb.h ], [ %.0111154, %bb.c ] ; 2 uses
  %i.af = load i32, ptr %0, align 8               ; 4 uses
  %i.ag = icmp slt i32 %.2113, %i.af
  br i1 %i.ag, label %bb.b, label %.preheader146, !llvm.loop !22

.loopexit145:                                     ; preds = %.thread136
  %.pre187 = sext i32 %.pre181185 to i64
  %i.ah = icmp slt i64 %indvars.iv.next174, %.pre187
  br i1 %i.ah, label %bb.j, label %.preheader, !llvm.loop !23

.preheader:                                       ; preds = %bb.j, %.loopexit145, %bb.a, %.preheader146
  %.lcssa152 = phi i32 [ %i.af, %.preheader146 ], [ %i.c, %bb.a ], [ %.pre181185, %.loopexit145 ], [ %.pre181182, %bb.j ] ; 2 uses
  %i.ai = icmp ult i32 %.lcssa152, 128
  br i1 %i.ai, label %.lr.ph163, label %.loopexit

.lr.ph163:                                        ; preds = %.preheader
  %i.aj = getelementptr i8, ptr %0, i64 8
  %i.ak = zext nneg i32 %.lcssa152 to i64
  br label %bb.t

bb.j:                                             ; preds = %.lr.ph161, %.loopexit145
  %.pre181182 = phi i32 [ %i.af, %.lr.ph161 ], [ %.pre181185, %.loopexit145 ] ; 3 uses
  %indvars.iv173 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next174, %.loopexit145 ] ; 2 uses
  %i.al = getelementptr [24 x i8], ptr %i.g, i64 %indvars.iv173 ; 5 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 4 uses
  %i.am = sext i32 %.pre181182 to i64
  %i.an = icmp slt i64 %indvars.iv.next174, %i.am
  br i1 %i.an, label %.lr.ph159, label %.preheader

.lr.ph159:                                        ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %i.al, i64 8      ; 3 uses
  %i.ap = getelementptr i8, ptr %i.al, i64 16     ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv.next174 to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph159, %.thread136
  %.pre181184 = phi i32 [ %.pre181182, %.lr.ph159 ], [ %.pre181185, %.thread136 ] ; 2 uses
  %.0116157 = phi i32 [ %i.aq, %.lr.ph159 ], [ %i.cl, %.thread136 ] ; 6 uses
  %i.ar = sext i32 %.0116157 to i64
  %i.as = getelementptr [24 x i8], ptr %i.g, i64 %i.ar ; 7 uses
  %i.at = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.au = load i64, ptr %i.as, align 8            ; 3 uses
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aw = load i64, ptr %i.al, align 8            ; 3 uses
  %i.ax = getelementptr i8, ptr %i.as, i64 8
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp ult i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ba = load i32, ptr %i.ap, align 8            ; 3 uses
  %i.bb = getelementptr i8, ptr %i.as, i64 16
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %.not = icmp eq i32 %i.ba, %i.bc
  %i.bd = add i64 %i.at, -1                       ; 2 uses
  %i.be = add i64 %i.ay, -1                       ; 2 uses
  br i1 %.not, label %bb.n, label %.thread142

bb.n:                                             ; preds = %bb.m
  %i.bf = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %i.ba, i64 noundef %i.aw, i64 noundef %i.bd, i64 noundef %i.au, i64 noundef %i.be) #13 ; 0 uses
  %.pre181.pre = load i32, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k
  %.pre181 = phi i32 [ %.pre181.pre, %bb.n ], [ %.pre181184, %bb.l ], [ %.pre181184, %bb.k ] ; 4 uses
  %i.bg = load i32, ptr %i.ap, align 8            ; 3 uses
  %i.bh = getelementptr i8, ptr %i.as, i64 16
  %i.bi = load i32, ptr %i.bh, align 8
  %.not133 = icmp eq i32 %i.bg, %i.bi
  br i1 %.not133, label %bb.p, label %.thread136

bb.p:                                             ; preds = %bb.o
  %i.bj = load i64, ptr %i.al, align 8            ; 2 uses
  %i.bk = load i64, ptr %i.as, align 8            ; 2 uses
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bk) ; 3 uses
  %i.bm = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.bn = getelementptr i8, ptr %i.as, i64 8
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.bo) ; 3 uses
  %i.bq = icmp sgt i32 %.pre181, 0
  br i1 %i.bq, label %.lr.ph156.preheader, label %._crit_edge

.lr.ph156.preheader:                              ; preds = %bb.p
  %wide.trip.count = zext nneg i32 %.pre181 to i64
  br label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph156.preheader ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.br = getelementptr [24 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = icmp eq i32 %i.bg, %i.bt
  br i1 %i.bu, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph156
  %i.bv = getelementptr i8, ptr %i.br, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = icmp ult i64 %i.bl, %i.bw
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = load i64, ptr %i.br, align 8
  %i.bz = icmp ugt i64 %i.bp, %i.by
  br i1 %i.bz, label %.thread136, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %.lr.ph156
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph156, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.s, %bb.p
  %i.ca = add i64 %i.bm, -1
  %i.cb = add i64 %i.bo, -1
  %i.cc = add i64 %i.bp, -1
  %i.cd = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %i.bg, i64 noundef %i.bj, i64 noundef %i.ca, i64 noundef %i.bk, i64 noundef %i.cb, i64 noundef %i.bl, i64 noundef %i.cc) #13 ; 0 uses
  store i64 %i.bl, ptr %i.al, align 8
  store i64 %i.bp, ptr %i.ao, align 8
  %i.ce = add i32 %.0116157, -1
  %i.cf = load i32, ptr %0, align 8
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %0, align 8
  %1 = add i32 %.0116157, 1
  %2 = sext i32 %1 to i64
  %3 = getelementptr [24 x i8], ptr %i.g, i64 %2
  %i.ch = sub i32 %i.cg, %.0116157
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul nsw i64 %i.ci, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.as, ptr align 8 %3, i64 %i.cj, i1 false)
  %.pre180 = load i32, ptr %0, align 8
  br label %.thread136

.thread142:                                       ; preds = %bb.m
  %i.ck = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %i.ba, i64 noundef %i.aw, i64 noundef %i.bd, i32 noundef %i.bc, i64 noundef %i.au, i64 noundef %i.be) #13 ; 0 uses
  br label %.loopexit

.thread136:                                       ; preds = %bb.r, %._crit_edge, %bb.o
  %.pre181185 = phi i32 [ %.pre180, %._crit_edge ], [ %.pre181, %bb.o ], [ %.pre181, %bb.r ] ; 5 uses
  %.1117.ph = phi i32 [ %i.ce, %._crit_edge ], [ %.0116157, %bb.o ], [ %.0116157, %bb.r ]
  %i.cl = add i32 %.1117.ph, 1                    ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %.pre181185
  br i1 %i.cm, label %bb.k, label %.loopexit145, !llvm.loop !25

bb.t:                                             ; preds = %.lr.ph163, %bb.t
  %indvars.iv176 = phi i64 [ %i.ak, %.lr.ph163 ], [ %indvars.iv.next177, %bb.t ] ; 2 uses
  %i.cn = getelementptr [24 x i8], ptr %i.aj, i64 %indvars.iv176 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.co, align 8
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %i.cp = and i64 %indvars.iv.next177, 4294967295
  %exitcond179.not = icmp eq i64 %i.cp, 128
  br i1 %exitcond179.not, label %.loopexit, label %bb.t, !llvm.loop !26

.loopexit:                                        ; preds = %bb.t, %.preheader, %.thread142
  %.4 = phi i32 [ -22, %.thread142 ], [ 0, %.preheader ], [ 0, %bb.t ]
  ret i32 %.4
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @memblock_start_of_DRAM() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @memblock_end_of_DRAM() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @memblock_overlaps_region(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @numa_move_tail_memblk(i32 noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #6 section ".init.text" align 16 {
bb.a:
  %i.a = load i32, ptr @numa_reserved_meminfo, align 8 ; 2 uses
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr @numa_reserved_meminfo, align 8
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @numa_reserved_meminfo, i64 8), i64 %i.c
  %i.e = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.f = sext i32 %0 to i64
  %i.g = getelementptr [24 x i8], ptr %i.e, i64 %i.f ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.d, ptr noundef align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.h = load i32, ptr %1, align 8
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %1, align 8
  %i.j = add i32 %0, 1
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [24 x i8], ptr %i.e, i64 %i.k
  %i.m = sub i32 %i.i, %0
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.g, ptr align 8 %i.l, i64 %i.o, i1 false)
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local range(i32 -2147483648, 1) i32 @numa_memblks_init(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  store i64 0, ptr @numa_nodes_parsed, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @node_states, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3080) @numa_meminfo, i8 0, i64 3080, i1 false)
  %i.a = tail call i32 @memblock_set_node(i64 noundef 0, i64 noundef -1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), i32 noundef -1) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "486: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 486b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 486) #14, !srcloc !28
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.7, i32 455, i32 2305, i64 16) #14, !srcloc !29
  tail call void asm sideeffect "487: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 487b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 487) #14, !srcloc !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call i32 @memblock_set_node(i64 noundef 0, i64 noundef -1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 56), i32 noundef -1) #11
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %bb.e, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "488: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 488b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 488) #14, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.7, i32 457, i32 2305, i64 16) #14, !srcloc !32
  tail call void asm sideeffect "489: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 489b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 489) #14, !srcloc !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = tail call i32 @memblock_clear_hotplug(i64 noundef 0, i64 noundef -1) #11
  %.not21 = icmp eq i32 %i.c, 0
  br i1 %.not21, label %bb.g, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "490: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 490b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 490) #14, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.7, i32 459, i32 2305, i64 16) #14, !srcloc !35
  tail call void asm sideeffect "491: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 491b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 491) #14, !srcloc !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @numa_reset_distance() #12
  %i.d = tail call i32 %0() #11                   ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr @memblock, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.f = tail call i32 @numa_cleanup_meminfo(ptr noundef nonnull @numa_meminfo) #12 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.h = tail call fastcc i32 @numa_register_meminfo() #12
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.g, %bb.k
  %.0 = phi i32 [ %i.h, %bb.k ], [ %i.d, %bb.g ], [ %i.f, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @memblock_set_node(i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @memblock_clear_hotplug(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 -22, 1) i32 @numa_register_meminfo() unnamed_addr #0 section ".init.text" align 16 {
bb.a:
  %i.a = load i64, ptr @numa_nodes_parsed, align 8
  store i64 %i.a, ptr @node_states, align 16
  br label %bb.b

bb.b:                                             ; preds = %arch_set_bit.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %arch_set_bit.exit.i ] ; 2 uses
  %i.b = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @numa_meminfo, i64 8), i64 %indvars.iv.i ; 3 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.not.i15 = icmp eq i64 %i.c, %i.e
  br i1 %.not.i15, label %arch_set_bit.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not12.i = icmp eq i32 %i.g, -1
  br i1 %.not12.i, label %arch_set_bit.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %i.g to i64
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @node_states, i64 range(i64 -2147483648, 2147483648) %i.h) #14, !srcloc !12
  br label %arch_set_bit.exit.i

arch_set_bit.exit.i:                              ; preds = %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 128
  br i1 %exitcond.not.i, label %numa_nodemask_from_meminfo.exit, label %bb.b, !llvm.loop !0

numa_nodemask_from_meminfo.exit:                  ; preds = %arch_set_bit.exit.i
  %i.i = load i64, ptr @node_states, align 16
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.e, label %.critedge.preheader, !prof !14

.critedge.preheader:                              ; preds = %numa_nodemask_from_meminfo.exit
  %i.j = load i32, ptr @numa_meminfo, align 8
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.critedge, label %.critedge._crit_edge

bb.e:                                             ; preds = %numa_nodemask_from_meminfo.exit
  tail call void asm sideeffect "484: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 484b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 484) #14, !srcloc !38
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.7, i32 405, i32 2305, i64 16) #14, !srcloc !39
  tail call void asm sideeffect "485: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 485b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 485) #14, !srcloc !40
  br label %bb.f

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.l = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @numa_meminfo, i64 8), i64 %indvars.iv ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = sub i64 %i.o, %i.m
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %i.r = load i32, ptr %i.q, align 8
  %i.s = tail call i32 @memblock_set_node(i64 noundef %i.m, i64 noundef %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @memblock, i64 16), i32 noundef %i.r) #11 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr @numa_meminfo, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
end_hunk_0
