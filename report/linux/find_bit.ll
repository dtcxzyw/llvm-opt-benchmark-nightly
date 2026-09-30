Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/find_bit?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
begin_hunk_0_@_find_next_andnot_bit:bb.a
  %i.b = shl nsw i64 -1, %i.a
  %i.c = lshr i64 %3, 6                           ; 3 uses
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.g = load i64, ptr %i.f, align 8
  %i.h = xor i64 %i.g, -1
  %i.i = and i64 %i.e, %i.b
  %i.j = and i64 %i.i, %i.h                       ; 2 uses
  %.not3438 = icmp eq i64 %i.j, 0
  br i1 %.not3438, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = and i64 %3, -64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.039 = phi i64 [ %i.k, %bb.c ], [ %i.c, %bb.b ]
  %i.k = add i64 %.039, 1                         ; 4 uses
  %i.l = shl i64 %i.k, 6                          ; 2 uses
  %.not35 = icmp ult i64 %i.l, %2
  br i1 %.not35, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr [8 x i8], ptr %0, i64 %i.k
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr [8 x i8], ptr %1, i64 %i.k
  %i.p = load i64, ptr %i.o, align 8
  %i.q = xor i64 %i.p, -1
  %i.r = and i64 %i.n, %i.q                       ; 2 uses
  %.not34 = icmp eq i64 %i.r, 0
  br i1 %.not34, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.c, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.l, %bb.c ]
  %.030.lcssa = phi i64 [ %i.j, %.._crit_edge_crit_edge ], [ %i.r, %bb.c ]
  %i.s = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.030.lcssa) #7, !srcloc !16
  %i.t = add i64 %i.s, %.pre-phi
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %2)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %._crit_edge
  %.031 = phi i64 [ %2, %bb.a ], [ %i.u, %._crit_edge ], [ %2, %.lr.ph ]
  ret i64 %.031
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local i64 @_find_next_or_bit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i64 %3, %2
  br i1 %.not, label %bb.b, label %.loopexit, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %3, 63
  %i.b = shl nsw i64 -1, %i.a
  %i.c = lshr i64 %3, 6                           ; 3 uses
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.g = load i64, ptr %i.f, align 8
  %i.h = or i64 %i.g, %i.e
  %i.i = and i64 %i.h, %i.b                       ; 2 uses
  %.not3438 = icmp eq i64 %i.i, 0
  br i1 %.not3438, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = and i64 %3, -64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.039 = phi i64 [ %i.j, %bb.c ], [ %i.c, %bb.b ]
  %i.j = add i64 %.039, 1                         ; 4 uses
  %i.k = shl i64 %i.j, 6                          ; 2 uses
  %.not35 = icmp ult i64 %i.k, %2
  br i1 %.not35, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr [8 x i8], ptr %0, i64 %i.j
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr [8 x i8], ptr %1, i64 %i.j
  %i.o = load i64, ptr %i.n, align 8
  %i.p = or i64 %i.o, %i.m                        ; 2 uses
  %.not34 = icmp eq i64 %i.p, 0
  br i1 %.not34, label %.lr.ph, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.c, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.k, %bb.c ]
  %.030.lcssa = phi i64 [ %i.i, %.._crit_edge_crit_edge ], [ %i.p, %bb.c ]
  %i.q = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.030.lcssa) #7, !srcloc !16
  %i.r = add i64 %i.q, %.pre-phi
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %2)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %._crit_edge
  %.031 = phi i64 [ %2, %bb.a ], [ %i.s, %._crit_edge ], [ %2, %.lr.ph ]
  ret i64 %.031
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local i64 @_find_next_zero_bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i64 %2, %1
  br i1 %.not, label %bb.b, label %.loopexit, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %2, 63
  %i.b = shl nsw i64 -1, %i.a
  %i.c = lshr i64 %2, 6                           ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = xor i64 %i.e, -1
  %i.g = and i64 %i.b, %i.f                       ; 2 uses
  %.not3034 = icmp eq i64 %i.g, 0
  br i1 %.not3034, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = and i64 %2, -64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.035 = phi i64 [ %i.h, %bb.c ], [ %i.c, %bb.b ]
  %i.h = add i64 %.035, 1                         ; 3 uses
  %i.i = shl i64 %i.h, 6                          ; 2 uses
  %.not31 = icmp ult i64 %i.i, %1
  br i1 %.not31, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr [8 x i8], ptr %0, i64 %i.h
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.not30 = icmp eq i64 %i.k, -1
  br i1 %.not30, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.l = xor i64 %i.k, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.i, %._crit_edge.loopexit ]
  %.026.lcssa = phi i64 [ %i.g, %.._crit_edge_crit_edge ], [ %i.l, %._crit_edge.loopexit ]
  %i.m = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.026.lcssa) #7, !srcloc !16
  %i.n = add i64 %i.m, %.pre-phi
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %._crit_edge
  %.027 = phi i64 [ %1, %bb.a ], [ %i.o, %._crit_edge ], [ %1, %.lr.ph ]
  ret i64 %.027
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define dso_local i64 @_find_last_bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.thread, label %.peel.begin

.peel.begin:                                      ; preds = %bb.a
  %i.a = sub i64 0, %1
  %i.b = and i64 %i.a, 63
  %i.c = lshr i64 -1, %i.b
  %i.d = add i64 %1, -1
  %i.e = lshr i64 %i.d, 6                         ; 4 uses
  %i.f = getelementptr [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, %i.c                       ; 2 uses
  %.not17.not.peel = icmp eq i64 %i.h, 0
  br i1 %.not17.not.peel, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.peel.begin
  %.not18.peel = icmp eq i64 %i.e, 0
  br i1 %.not18.peel, label %.thread, label %.peel.next

.peel.next:                                       ; preds = %bb.b, %bb.c
  %.012.in = phi i64 [ %.012, %bb.c ], [ %i.e, %bb.b ]
  %.012 = add nsw i64 %.012.in, -1                ; 4 uses
  %i.i = getelementptr [8 x i8], ptr %0, i64 %.012
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not17.not = icmp eq i64 %i.j, 0
  br i1 %.not17.not, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.peel.begin
  %.012.lcssa = phi i64 [ %i.e, %.peel.begin ], [ %.012, %.peel.next ]
  %.lcssa = phi i64 [ %i.h, %.peel.begin ], [ %i.j, %.peel.next ]
  %i.k = shl i64 %.012.lcssa, 6
  %i.l = tail call i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %.lcssa) #7, !srcloc !30
  %i.m = add i64 %i.l, %i.k
  br label %.thread

bb.c:                                             ; preds = %.peel.next
  %.not18 = icmp eq i64 %.012, 0
  br i1 %.not18, label %.thread, label %.peel.next, !llvm.loop !29

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a, %.loopexit
  %.1 = phi i64 [ %i.m, %.loopexit ], [ 0, %bb.a ], [ %1, %bb.b ], [ %1, %bb.c ]
  ret i64 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define dso_local i64 @find_next_clump8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %.not.i = icmp ult i64 %3, %2
  br i1 %.not.i, label %bb.b, label %find_next_bit.exit.thread, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %3, 63
  %i.b = shl nsw i64 -1, %i.a
  %i.c = lshr i64 %3, 6                           ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, %i.b                       ; 2 uses
  %.not3034.i = icmp eq i64 %i.f, 0
  br i1 %.not3034.i, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.b
  %.pre.i = and i64 %3, -64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi i64 [ %i.g, %bb.c ], [ %i.c, %bb.b ]
  %i.g = add i64 %.035.i, 1                       ; 3 uses
  %i.h = shl i64 %i.g, 6                          ; 2 uses
  %.not31.i = icmp ult i64 %i.h, %2
  br i1 %.not31.i, label %bb.c, label %find_next_bit.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr [8 x i8], ptr %1, i64 %i.g
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not30.i = icmp eq i64 %i.j, 0
  br i1 %.not30.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.c, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.h, %bb.c ]
  %.026.lcssa.i = phi i64 [ %i.f, %.._crit_edge_crit_edge.i ], [ %i.j, %bb.c ]
  %i.k = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.026.lcssa.i) #7, !srcloc !16 ; 2 uses
  %i.l = add i64 %i.k, %.pre-phi.i                ; 3 uses
  %.not = icmp ugt i64 %2, %i.l
  br i1 %.not, label %bitmap_read.exit, label %find_next_bit.exit.thread

bitmap_read.exit:                                 ; preds = %._crit_edge.i
  %i.m = and i64 %i.l, -8
  %i.n = lshr i64 %i.l, 6
  %i.o = and i64 %i.k, 56
  %i.p = getelementptr [8 x i8], ptr %1, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, %i.o
  %i.s = and i64 %i.r, 255
  store i64 %i.s, ptr %0, align 8
  br label %find_next_bit.exit.thread

find_next_bit.exit.thread:                        ; preds = %.lr.ph.i, %bb.a, %._crit_edge.i, %bitmap_read.exit
  %.0 = phi i64 [ %i.m, %bitmap_read.exit ], [ %2, %._crit_edge.i ], [ %2, %bb.a ], [ %2, %.lr.ph.i ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @find_random_bit(ptr noundef %0, i64 noundef %1) #1 align 16 prefalign(16) {
bitmap_weight.exit:
  %i.a = trunc i64 %1 to i32
  %i.b = tail call i32 @__bitmap_weight(ptr noundef %0, i32 noundef %i.a) #8 ; 2 uses
  switch i32 %i.b, label %get_random_u32_below.exit [
    i32 0, label %find_first_bit.exit
    i32 1, label %bb.a
  ]

bb.a:                                             ; preds = %bitmap_weight.exit
  %.not25.i = icmp eq i64 %1, 0
  br i1 %.not25.i, label %find_first_bit.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %.not.i1347 = icmp eq i64 %i.c, 0
  br i1 %.not.i1347, label %.lr.ph, label %.lr.ph.i._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.024.i48 = phi i64 [ %i.d, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add i64 %.024.i48, 1                     ; 3 uses
  %i.e = shl i64 %i.d, 6                          ; 2 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph.i, label %find_first_bit.exit, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not.i13 = icmp eq i64 %i.h, 0
  br i1 %.not.i13, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !0

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa45 = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i ]
  %.lcssa43 = phi i64 [ %i.c, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i ]
  %i.i = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.lcssa43) #7, !srcloc !16
  %i.j = add i64 %i.i, %.lcssa45
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %1)
  br label %find_first_bit.exit

get_random_u32_below.exit:                        ; preds = %bitmap_weight.exit
  %i.l = tail call i32 @__get_random_u32_below(i32 noundef %i.b) #8
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %.not.i11 = icmp ugt i64 %1, %i.m
  br i1 %.not.i11, label %bb.b, label %find_first_bit.exit

bb.b:                                             ; preds = %get_random_u32_below.exit
  %.not40.i = icmp ult i64 %1, 64
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.b, %bb.c
  %i.n = phi i64 [ %i.y, %bb.c ], [ 1, %bb.b ]    ; 3 uses
  %.02442.i = phi i64 [ %i.n, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.02541.i = phi i64 [ %i.x, %bb.c ], [ %i.m, %bb.b ] ; 4 uses
  %i.o = shl i64 %.02442.i, 6
  %i.p = add i64 %i.o, %.02541.i
  %.not29.i = icmp ult i64 %i.p, %1
  br i1 %.not29.i, label %hweight_long.exit.i21, label %find_first_bit.exit

hweight_long.exit.i21:                            ; preds = %.lr.ph.i19
  %i.q = getelementptr [8 x i8], ptr %0, i64 %.02442.i
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.t = tail call { i64, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight64\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntq $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.r, i64 %i.s) #7, !srcloc !18 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.t, 1
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.v)
  %i.w = icmp ugt i64 %i.u, %.02541.i
  br i1 %i.w, label %.loopexit30.i, label %bb.c

bb.c:                                             ; preds = %hweight_long.exit.i21
  %i.x = sub nuw nsw i64 %.02541.i, %i.u          ; 2 uses
  %i.y = add i64 %i.n, 1                          ; 2 uses
  %i.z = shl i64 %i.y, 6
  %.not.i22 = icmp ugt i64 %i.z, %1
  br i1 %.not.i22, label %._crit_edge.i, label %.lr.ph.i19, !llvm.loop !2

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %.025.lcssa.i = phi i64 [ %i.m, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %.024.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %.023.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.c ]
  %i.aa = and i64 %1, 63
  %.not28.i = icmp eq i64 %i.aa, 0
  br i1 %.not28.i, label %.loopexit30.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.ab = getelementptr [8 x i8], ptr %0, i64 %.024.lcssa.i
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = sub i64 0, %1
  %i.ae = and i64 %i.ad, 63
  %i.af = lshr i64 -1, %i.ae
  %i.ag = and i64 %i.ac, %i.af
  br label %.loopexit30.i

.loopexit30.i:                                    ; preds = %hweight_long.exit.i21, %bb.d, %._crit_edge.i
  %.02538.i = phi i64 [ %.025.lcssa.i, %._crit_edge.i ], [ %.025.lcssa.i, %bb.d ], [ %.02541.i, %hweight_long.exit.i21 ] ; 2 uses
  %.02435.i = phi i64 [ %.024.lcssa.i, %._crit_edge.i ], [ %.024.lcssa.i, %bb.d ], [ %.02442.i, %hweight_long.exit.i21 ]
  %.1.i = phi i64 [ %.023.lcssa.i, %._crit_edge.i ], [ %i.ag, %bb.d ], [ %i.r, %hweight_long.exit.i21 ] ; 3 uses
  %i.ah = shl i64 %.02435.i, 6
  %.not10.i.i = icmp eq i64 %.1.i, 0              ; 2 uses
  %.not911.i.i = icmp eq i64 %.02538.i, 0
  %or.cond12.i.i = or i1 %.not911.i.i, %.not10.i.i
  br i1 %or.cond12.i.i, label %.critedge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.loopexit30.i
  %i.ai = trunc nuw i64 %.02538.i to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.014.i.i = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %i.ai, %.lr.ph.i.i.preheader ]
  %.0813.i.i = phi i64 [ %i.al, %.lr.ph.i.i ], [ %.1.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.aj = add i32 %.014.i.i, -1                   ; 2 uses
  %i.ak = add i64 %.0813.i.i, -1
  %i.al = and i64 %i.ak, %.0813.i.i               ; 3 uses
  %.not.i.i = icmp eq i64 %i.al, 0                ; 2 uses
  %.not9.i.i = icmp eq i32 %i.aj, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not9.i.i
  br i1 %or.cond.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !3

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %.loopexit30.i
  %.08.lcssa.i.i = phi i64 [ %.1.i, %.loopexit30.i ], [ %i.al, %.lr.ph.i.i ]
  %.not.lcssa.i.i = phi i1 [ %.not10.i.i, %.loopexit30.i ], [ %.not.i.i, %.lr.ph.i.i ]
  br i1 %.not.lcssa.i.i, label %fns.exit.i, label %bb.e

bb.e:                                             ; preds = %.critedge.i.i
  %i.am = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.08.lcssa.i.i) #7, !srcloc !16
  %i.an = and i64 %i.am, 4294967295
  br label %fns.exit.i

fns.exit.i:                                       ; preds = %bb.e, %.critedge.i.i
  %i.ao = phi i64 [ %i.an, %bb.e ], [ 64, %.critedge.i.i ]
  %i.ap = add i64 %i.ao, %i.ah
  br label %find_first_bit.exit

find_first_bit.exit:                              ; preds = %.lr.ph, %.lr.ph.i19, %get_random_u32_below.exit, %fns.exit.i, %bb.a, %.lr.ph.i._crit_edge, %bitmap_weight.exit
  %.0 = phi i64 [ 0, %bb.a ], [ %1, %bitmap_weight.exit ], [ %1, %.lr.ph.i19 ], [ %1, %get_random_u32_below.exit ], [ %i.ap, %fns.exit.i ], [ %i.k, %.lr.ph.i._crit_edge ], [ %1, %.lr.ph ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__get_random_u32_below(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { nocallback nounwind }
attributes #5 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind memory(none) }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = distinct !{!3, !15}
!4 = !{!"rsp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 8, !"cf-protection-branch", i32 1}
!7 = !{i32 4, !"function_return_thunk_extern", i32 1}
!8 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!9 = !{i32 1, !"Code Model", i32 2}
!10 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!11 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!12 = !{i32 1, !"override-stack-alignment", i32 8}
!13 = !{i32 4, !"SkipRaxSetup", i32 1}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{i64 480683}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{i64 2148034198, i64 2148034227, i64 2148034233, i64 2148034249, i64 2148034265, i64 2148034292, i64 2148034392, i64 2148034471, i64 2148034585, i64 2148034633, i64 2148034681, i64 2148034745, i64 2148034802, i64 2148034854, i64 2148034980, i64 2148035217, i64 2148035066, i64 2148035097, i64 2148035103, i64 2148035119, i64 2148035135}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15, !31}
!30 = !{i64 481749}
!31 = !{!"llvm.loop.peeled.count", i32 1}
!32 = !{!"branch_weights", i32 4000, i32 2}
end_hunk_0
